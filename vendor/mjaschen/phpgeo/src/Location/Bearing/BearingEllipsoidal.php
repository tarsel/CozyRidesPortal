<?php
/**
 * Calculation of bearing between two points using a
 * ellipsoidal model of the earth
 *
 * This class is based on the awesome work Chris Veness
 * has done. For more information visit the following URL.
 *
 * @see http://www.movable-type.co.uk/scripts/latlong-vincenty.html
 *
 * @author   Marcus Jaschen <mjaschen@gmail.com>
 * @license  https://opensource.org/licenses/GPL-3.0 GPL
 * @link     https://github.com/mjaschen/phpgeo
 */

namespace Location\Bearing;

use Location\Coordinate;
use Location\Exception\NotConvergingException;

/**
 * Calculation of bearing between two points using a
 * ellipsoidal model of the earth
 *
 * @author   Marcus Jaschen <mjaschen@gmail.com>
 * @license  https://opensource.org/licenses/GPL-3.0 GPL
 * @link     https://github.com/mjaschen/phpgeo
 */
class BearingEllipsoidal implements BearingInterface
{
    /**
     * This method calculates the initial bearing between the
     * two points.
     *
     * @param \Location\Coordinate $point1
     * @param \Location\Coordinate $point2
     *
     * @return float Bearing Angle
     */
    public function calculateBearing(Coordinate $point1, Coordinate $point2)
    {
        return $this->inverseVincenty($point1, $point2)['bearing_initial'];
    }

    /**
     * Calculates the final bearing between the two points.
     *
     * @param \Location\Coordinate $point1
     * @param \Location\Coordinate $point2
     *
     * @return float
     */
    public function calculateFinalBearing(Coordinate $point1, Coordinate $point2)
    {
        return $this->inverseVincenty($point1, $point2)['bearing_final'];
    }

    /**
     * Calculates a destination point for the given point, bearing angle,
     * and distance.
     *
     * @param \Location\Coordinate $point
     * @param float $bearing the bearing angle between 0 and 360 degrees
     * @param float $distance the distance to the destination point in meters
     *
     * @return Coordinate
     */
    public function calculateDestination(Coordinate $point, $bearing, $distance)
    {
        return $this->directVincenty($point, $bearing, $distance)['destination'];
    }

    /**
     * Calculates the final bearing angle for a destination point.
     * The method expects a starting point point, the bearing angle,
     * and the distance to destination.
     *
     * @param \Location\Coordinate $point
     * @param float $bearing
     * @param float $distance
     *
     * @return float
     */
    public function calculateDestinationFinalBearing(Coordinate $point, $bearing, $distance)
    {
        return $this->directVincenty($point, $bearing, $distance)['bearing_final'];
    }

    private function directVincenty(Coordinate $point, $bearing, $distance)
    {
        $??1 = deg2rad($point->getLat());
        $??1 = deg2rad($point->getLng());
        $??1 = deg2rad($bearing);

        $a = $point->getEllipsoid()->getA();
        $b = $point->getEllipsoid()->getB();
        $f = 1 / $point->getEllipsoid()->getF();

        $sin??1 = sin($??1);
        $cos??1 = cos($??1);

        $tanU1  = (1 - $f) * tan($??1);
        $cosU1  = 1 / sqrt(1 + $tanU1 * $tanU1);
        $sinU1  = $tanU1 * $cosU1;
        $??1     = atan2($tanU1, $cos??1);
        $sin??   = $cosU1 * $sin??1;
        $cosSq?? = 1 - $sin?? * $sin??;
        $uSq    = $cosSq?? * ($a * $a - $b * $b) / ($b * $b);
        $A      = 1 + $uSq / 16384 * (4096 + $uSq * (- 768 + $uSq * (320 - 175 * $uSq)));
        $B      = $uSq / 1024 * (256 + $uSq * (- 128 + $uSq * (74 - 47 * $uSq)));

        $??          = $distance / ($b * $A);
        $iterations = 0;

        do {
            $cos2??m = cos(2 * $??1 + $??);
            $sin??   = sin($??);
            $cos??   = cos($??);
            $????     = $B * $sin?? * ($cos2??m + $B / 4 * ($cos?? * (- 1 + 2 * $cos2??m * $cos2??m) - $B / 6 * $cos2??m * (- 3 + 4 * $sin?? * $sin??) * (- 3 + 4 * $cos2??m * $cos2??m)));
            $??s     = $??;
            $??      = $distance / ($b * $A) + $????;
        } while (abs($?? - $??s) > 1e-12 && ++ $iterations < 200);

        if ($iterations >= 200) {
            throw new NotConvergingException('Inverse Vincenty Formula did not converge');
        }

        $tmp = $sinU1 * $sin?? - $cosU1 * $cos?? * $cos??1;
        $??2  = atan2($sinU1 * $cos?? + $cosU1 * $sin?? * $cos??1, (1 - $f) * sqrt($sin?? * $sin?? + $tmp * $tmp));
        $??   = atan2($sin?? * $sin??1, $cosU1 * $cos?? - $sinU1 * $sin?? * $cos??1);
        $C   = $f / 16 * $cosSq?? * (4 + $f * (4 - 3 * $cosSq??));
        $L   = $?? - (1 - $C) * $f * $sin?? * ($?? + $C * $sin?? * ($cos2??m + $C * $cos?? * (- 1 + 2 * $cos2??m * $cos2??m)));
        $??2  = fmod($??1 + $L + 3 * M_PI, 2 * M_PI) - M_PI;

        $??2 = atan2($sin??, - $tmp);
        $??2 = fmod($??2 + 2 * M_PI, 2 * M_PI);

        return [
            'destination'   => new Coordinate(rad2deg($??2), rad2deg($??2), $point->getEllipsoid()),
            'bearing_final' => rad2deg($??2),
        ];
    }

    private function inverseVincenty(Coordinate $point1, Coordinate $point2)
    {
        $??1 = deg2rad($point1->getLat());
        $??2 = deg2rad($point2->getLat());
        $??1 = deg2rad($point1->getLng());
        $??2 = deg2rad($point2->getLng());

        $a = $point1->getEllipsoid()->getA();
        $b = $point1->getEllipsoid()->getB();
        $f = 1 / $point1->getEllipsoid()->getF();

        $L = $??2 - $??1;

        $tanU1 = (1 - $f) * tan($??1);
        $cosU1 = 1 / sqrt(1 + $tanU1 * $tanU1);
        $sinU1 = $tanU1 * $cosU1;
        $tanU2 = (1 - $f) * tan($??2);
        $cosU2 = 1 / sqrt(1 + $tanU2 * $tanU2);
        $sinU2 = $tanU2 * $cosU2;

        $?? = $L;

        $iterations = 0;

        do {
            $sin??   = sin($??);
            $cos??   = cos($??);
            $sinSq?? = ($cosU2 * $sin??) * ($cosU2 * $sin??)
                      + ($cosU1 * $sinU2 - $sinU1 * $cosU2 * $cos??) * ($cosU1 * $sinU2 - $sinU1 * $cosU2 * $cos??);
            $sin??   = sqrt($sinSq??);

            if ($sin?? == 0) {
                return 0;
            }

            $cos??   = $sinU1 * $sinU2 + $cosU1 * $cosU2 * $cos??;
            $??      = atan2($sin??, $cos??);
            $sin??   = $cosU1 * $cosU2 * $sin?? / $sin??;
            $cosSq?? = 1 - $sin?? * $sin??;

            $cos2??M = 0;
            if ($cosSq?? !== 0.0) {
                $cos2??M = $cos?? - 2 * $sinU1 * $sinU2 / $cosSq??;
            }

            $C  = $f / 16 * $cosSq?? * (4 + $f * (4 - 3 * $cosSq??));
            $??p = $??;
            $??  = $L + (1 - $C) * $f * $sin?? * ($?? + $C * $sin?? * ($cos2??M + $C * $cos?? * (- 1 + 2 * $cos2??M * $cos2??M)));
        } while (abs($?? - $??p) > 1e-12 && ++ $iterations < 200);

        if ($iterations >= 200) {
            throw new NotConvergingException('Inverse Vincenty Formula did not converge');
        }

        $uSq = $cosSq?? * ($a * $a - $b * $b) / ($b * $b);
        $A   = 1 + $uSq / 16384 * (4096 + $uSq * (- 768 + $uSq * (320 - 175 * $uSq)));
        $B   = $uSq / 1024 * (256 + $uSq * (- 128 + $uSq * (74 - 47 * $uSq)));
        $????  = $B * $sin?? * ($cos2??M + $B / 4 * ($cos?? * (- 1 + 2 * $cos2??M * $cos2??M) - $B / 6 * $cos2??M * (- 3 + 4 * $sin?? * $sin??) * (- 3 + 4 * $cos2??M * $cos2??M)));

        $s = $b * $A * ($?? - $????);

        $??1 = atan2($cosU2 * $sin??, $cosU1 * $sinU2 - $sinU1 * $cosU2 * $cos??);
        $??2 = atan2($cosU1 * $sin??, - $sinU1 * $cosU2 + $cosU1 * $sinU2 * $cos??);

        $??1 = fmod($??1 + 2 * M_PI, 2 * M_PI);
        $??2 = fmod($??2 + 2 * M_PI, 2 * M_PI);

        $s = round($s, 3);

        return [
            'distance'        => $s,
            'bearing_initial' => rad2deg($??1),
            'bearing_final'   => rad2deg($??2),
        ];
    }
}
