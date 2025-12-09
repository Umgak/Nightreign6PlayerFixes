// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 19002590);
    if (IsMapVariation(0)) {
        $InitializeCommonEvent(0, 90075900, 19000800);
        $InitializeCommonEvent(0, 90075901, 19000800, 750000, 907500000);
        $InitializeCommonEvent(0, 90075902, 19000800, 19005801, 0);
        $InitializeCommonEvent(0, 90015012, 19000800, 7511);
        $InitializeCommonEvent(1, 90015012, 19005801, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 90075000, 19000800, 19005801);
        $InitializeCommonEvent(0, 90075001, 19000800, 19005801);
        $InitializeCommonEvent(0, 90075002, 19000800, 19000801, 19000802);
        $InitializeCommonEvent(0, 90075005, 19000800, 19000801, 72, 5900);
        $InitializeCommonEvent(0, 90075005, 19000800, 19000802, 2, 5901);
        $InitializeCommonEvent(0, 90075006, 19000800, 19000801);
        $InitializeCommonEvent(0, 90075006, 19000800, 19000802);
        $InitializeCommonEvent(0, 90015008, 7511, 7512, 750000, 19000800, 5105, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006800, 19000800, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006801, 19000800, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006802, 19000800, 5108, 0);
        $InitializeCommonEvent(0, 90075008, 7511, 7512, 0, 19000800, 5108, 0);
        $InitializeCommonEvent(0, 90065920, 19000800, 7320);
        $InitializeCommonEvent(0, 90065920, 19005801, 7320);
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90075100, 19000810);
        $InitializeCommonEvent(0, 90075101, 19000810);
        $InitializeCommonEvent(0, 90075102, 19000810);
        $InitializeCommonEvent(0, 90075900, 19000810);
        $InitializeCommonEvent(0, 90075901, 19000810, 751000, 907510000);
        $InitializeCommonEvent(0, 90075902, 19000810, 0, 0);
        $InitializeCommonEvent(0, 90015012, 19000810, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 90015008, 7511, 7512, 751000, 19000810, 5105, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006810, 19000810, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006811, 19000810, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006812, 19000810, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006813, 19000810, 5108, 0);
        $InitializeCommonEvent(0, 90075150, 7511, 7512, 0, 19000810, 5108, 0);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90075900, 19005821);
        $InitializeCommonEvent(0, 90075901, 19000827, 752000, 907520000);
        $InitializeCommonEvent(0, 90075902, 19005821, 0, 0);
        $InitializeCommonEvent(0, 90015012, 19005821, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 90075200, 19005821, 19000827);
        $InitializeCommonEvent(0, 90075201, 19005821, 19000821, 19000820, 19000825, 19000826, 19000827, 19000220, 19000221, 19000222);
        $InitializeCommonEvent(0, 90075202, 19000827, 19000821, 19000820, 19000825, 19000826, 19000222);
        $InitializeCommonEvent(0, 99075205, 19000821, 19000820);
        $InitializeCommonEvent(0, 90075220, 19000825, 19000222);
        $InitializeCommonEvent(0, 90075210, 19000827, 19000820, 19000220);
        $InitializeCommonEvent(0, 90075211, 19000821, 19000820, 19000221);
        $InitializeCommonEvent(0, 90075212, 19000821, 19000825, 19000826, 19000220, 19000221, 19000222, 0);
        if (IsPlayerNo(1)) {
            $InitializeCommonEvent(0, 90075230, 19000822, 10002, 1);
            $InitializeCommonEvent(0, 90075230, 19000823, 10003, 0);
            $InitializeCommonEvent(0, 90075230, 19000824, 10004, 0);
            $InitializeCommonEvent(0, 90075230, 19000832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19000833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19000834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19000822);
            $InitializeCommonEvent(0, 90075232, 19000822);
            $InitializeCommonEvent(0, 90075233, 19000822);
            $InitializeCommonEvent(0, 90075234, 19000822);
        }
        if (IsPlayerNo(2)) {
            $InitializeCommonEvent(0, 90075230, 19000822, 10002, 0);
            $InitializeCommonEvent(0, 90075230, 19000823, 10003, 1);
            $InitializeCommonEvent(0, 90075230, 19000824, 10004, 0);
            $InitializeCommonEvent(0, 90075230, 19000832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19000833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19000834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19000823);
            $InitializeCommonEvent(0, 90075232, 19000823);
            $InitializeCommonEvent(0, 90075233, 19000823);
            $InitializeCommonEvent(0, 90075234, 19000823);
        }
        if (IsPlayerNo(3)) {
            $InitializeCommonEvent(0, 90075230, 19000822, 10002, 0);
            $InitializeCommonEvent(0, 90075230, 19000823, 10003, 0);
            $InitializeCommonEvent(0, 90075230, 19000824, 10004, 1);
            $InitializeCommonEvent(0, 90075230, 19000832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19000833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19000834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19000824);
            $InitializeCommonEvent(0, 90075232, 19000824);
            $InitializeCommonEvent(0, 90075233, 19000824);
            $InitializeCommonEvent(0, 90075234, 19000824);
        }
        // why did they do it like this, this is terrible
        // Gnoster balls
        if (IsPlayerNo(1)) {
            $InitializeCommonEvent(0, 90075230, 19000822, 10002, 1);
            $InitializeCommonEvent(0, 90075230, 19000823, 10003, 0);
            $InitializeCommonEvent(0, 90075230, 19000824, 10004, 0);
            $InitializeCommonEvent(0, 90075230, 19000832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19000833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19000834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19000822);
            $InitializeCommonEvent(0, 90075232, 19000822);
            $InitializeCommonEvent(0, 90075233, 19000822);
            $InitializeCommonEvent(0, 90075234, 19000822);
        }
        if (IsPlayerNo(2)) {
            $InitializeCommonEvent(0, 90075230, 19000822, 10002, 0);
            $InitializeCommonEvent(0, 90075230, 19000823, 10003, 1);
            $InitializeCommonEvent(0, 90075230, 19000824, 10004, 0);
            $InitializeCommonEvent(0, 90075230, 19000832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19000833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19000834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19000823);
            $InitializeCommonEvent(0, 90075232, 19000823);
            $InitializeCommonEvent(0, 90075233, 19000823);
            $InitializeCommonEvent(0, 90075234, 19000823);
        }
        if (IsPlayerNo(3)) {
            $InitializeCommonEvent(0, 90075230, 19000822, 10002, 0);
            $InitializeCommonEvent(0, 90075230, 19000823, 10003, 0);
            $InitializeCommonEvent(0, 90075230, 19000824, 10004, 1);
            $InitializeCommonEvent(0, 90075230, 19000832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19000833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19000834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19000824);
            $InitializeCommonEvent(0, 90075232, 19000824);
            $InitializeCommonEvent(0, 90075233, 19000824);
            $InitializeCommonEvent(0, 90075234, 19000824);
        }
        if (IsPlayerNo(4)) {
            $InitializeCommonEvent(0, 90075230, 19000822, 10002, 0);
            $InitializeCommonEvent(0, 90075230, 19000823, 10003, 0);
            $InitializeCommonEvent(0, 90075230, 19000824, 10004, 0);
            $InitializeCommonEvent(0, 90075230, 19000832, 10005, 1);
            $InitializeCommonEvent(0, 90075230, 19000833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19000834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19000832);
            $InitializeCommonEvent(0, 90075232, 19000832);
            $InitializeCommonEvent(0, 90075233, 19000832);
            $InitializeCommonEvent(0, 90075234, 19000832);
        }
        if (IsPlayerNo(5)) {
            $InitializeCommonEvent(0, 90075230, 19000822, 10002, 0);
            $InitializeCommonEvent(0, 90075230, 19000823, 10003, 0);
            $InitializeCommonEvent(0, 90075230, 19000824, 10004, 0);
            $InitializeCommonEvent(0, 90075230, 19000832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19000833, 10006, 1);
            $InitializeCommonEvent(0, 90075230, 19000834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19000833);
            $InitializeCommonEvent(0, 90075232, 19000833);
            $InitializeCommonEvent(0, 90075233, 19000833);
            $InitializeCommonEvent(0, 90075234, 19000833);
        }
        if (IsPlayerNo(6)) {
            $InitializeCommonEvent(0, 90075230, 19000822, 10002, 0);
            $InitializeCommonEvent(0, 90075230, 19000823, 10003, 0);
            $InitializeCommonEvent(0, 90075230, 19000824, 10004, 0);
            $InitializeCommonEvent(0, 90075230, 19000832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19000833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19000834, 10007, 1);
            $InitializeCommonEvent(0, 90075231, 19000834);
            $InitializeCommonEvent(0, 90075232, 19000834);
            $InitializeCommonEvent(0, 90075233, 19000834);
            $InitializeCommonEvent(0, 90075234, 19000834);
        }
        $InitializeCommonEvent(0, 90015008, 7511, 7512, 752000, 19005821, 5105, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006821, 19005821, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006822, 19005821, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006823, 19005821, 5108, 0);
        $InitializeCommonEvent(0, 90075240, 7511, 7512, 0, 19005821, 5108, 0);
    }
    if (IsMapVariation(3)) {
        $InitializeCommonEvent(0, 90075900, 19000830);
        $InitializeCommonEvent(0, 90075901, 19000830, 754000, 907540000);
        $InitializeCommonEvent(0, 90075902, 19000830, 0, 0);
        $InitializeCommonEvent(0, 90015012, 19000830, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 90075300, 19000830, 19000220, 19000221);
        $InitializeCommonEvent(0, 90075301, 19000830, 19005835, 19005836);
        $InitializeCommonEvent(0, 90075310, 19000830, 19000200, 19000201, 19000202, 19000203, 19000204, 19000205, 19000206, 19000207, 19000208, 19000209, 19000210, 19000211, 19000212, 19000213, 19000214, 19000215, 19000216, 19000217, 19000218, 19000219);
        $InitializeCommonEvent(0, 90075311, 19000830, 19000200, 19000201, 19000202, 19000203, 19000204, 19000205, 19000206, 19000207, 19000208, 19000209, 19000210, 19000211, 19000212, 19000213, 19000214, 19000215, 19000216, 19000217, 19000218, 19000219);
        $InitializeCommonEvent(0, 90075312, 19000830, 19000200, 19000201, 19000202, 19000203, 19000204, 19000205, 19000206, 19000207, 19000208, 19000209, 19000210, 19000211, 19000212, 19000213, 19000214, 19000215, 19000216, 19000217);
        $InitializeCommonEvent(0, 90075313, 19000830, 19000220, 19000221, 19000222);
        $InitializeCommonEvent(0, 90075320, 19000830, 19005836);
        $InitializeCommonEvent(0, 90075330, 19000830);
        $InitializeCommonEvent(0, 90015008, 7511, 7512, 754000, 19000830, 5105, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006830, 19000830, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006831, 19000830, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006832, 19000830, 5108, 0);
        $InitializeCommonEvent(0, 90075340, 7511, 7512, 0, 19000830, 5108, 0);
    }
    if (IsMapVariation(3)) {
        $InitializeCommonEvent(0, 90075302, 19000830, 19000200);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000201);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000202);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000203);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000204);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000205);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000206);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000207);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000208);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000209);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000210);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000211);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000212);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000213);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000214);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000215);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000216);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000217);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000218);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000219);
    }
    if (IsMapVariation(3)) {
        $InitializeCommonEvent(0, 90075302, 19000830, 19000220);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000221);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000222);
    }
    if (IsMapVariation(3)) {
        $InitializeCommonEvent(0, 90075302, 19000830, 19000230);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000231);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000232);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000233);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000234);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000235);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000236);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000237);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000238);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000239);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000240);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000241);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000242);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000243);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000244);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000245);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000246);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000247);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000248);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000249);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000250);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000251);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000252);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000253);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000254);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000255);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000256);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000257);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000258);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000259);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000260);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000261);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000262);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000263);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000264);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000265);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000266);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000267);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000268);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000269);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000270);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000271);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000272);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000273);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000274);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000275);
        $InitializeCommonEvent(0, 90075302, 19000830, 19000276);
    }
    if (IsMapVariation(4)) {
        $InitializeCommonEvent(0, 90075400, 19000840, 19000849, 19000440, 19000441, 19000442, 19000443, 19000444, 19000445, 19000446, 19000447);
        $InitializeCommonEvent(0, 90075401, 19000849, 19000240, 19000241, 19000242);
        $InitializeCommonEvent(0, 90075402, 19000849, 19000840, 19000240, 19000241, 19000242);
        $InitializeCommonEvent(0, 90075403, 19000849, 19004740, 19004741, 19004742, 19000240, 19000242);
        if (IsPlayerNo(1)) {
            $InitializeCommonEvent(0, 90075404, 19000240, 19004743, 19000243, 19004744, 19000246);
        }
        if (IsPlayerNo(2)) {
            $InitializeCommonEvent(0, 90075404, 19000240, 19004743, 19000244, 19004744, 19000247);
        }
        if (IsPlayerNo(3)) {
            $InitializeCommonEvent(0, 90075404, 19000240, 19004743, 19000245, 19004744, 19000248);
        }
        // Maris
        // Added flags with +100 for other players
        if (IsPlayerNo(4)) {
            $InitializeCommonEvent(0, 90075404, 19000240, 19004743, 19000343, 19004744, 19000346);
        }
        if (IsPlayerNo(5)) {
            $InitializeCommonEvent(0, 90075404, 19000240, 19004743, 19000344, 19004744, 19000347);
        }
        if (IsPlayerNo(6)) {
            $InitializeCommonEvent(0, 90075404, 19000240, 19004743, 19000345, 19004744, 19000348);
        }
        $InitializeCommonEvent(0, 90075405, 19000240, 19000241, 19000246, 19000247, 19000248, 19000346, 19000347, 19000348); // NR6PF: Pass new player flags to call
        $InitializeCommonEvent(0, 99075406, 19000849, 19000240, 19000701, 19000241);
        $InitializeCommonEvent(0, 99075410, 19000840);
        $InitializeCommonEvent(0, 99075420, 19000840);
        $InitializeCommonEvent(0, 99075421, 19000840);
        $InitializeCommonEvent(0, 99075422, 19000840, 19002740, 19002741, 19002742, 19002743, 19002744, 19002745, 19002746, 19002747, 19000440, 19000441, 19000442, 19000443, 19000444, 19000445, 19000446, 19000447);
        $InitializeCommonEvent(0, 90075901, 19000840, 756000, 907550000);
        $InitializeCommonEvent(0, 90075902, 19005840, 0, 0);
        $InitializeCommonEvent(0, 90015012, 19005840, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 99075430, 19000840);
        $InitializeCommonEvent(0, 90015018, 7511, 7512, 756000, 19000840, 45889, 1);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006840, 19000840, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006841, 19000840, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006842, 19000840, 5108, 0);
        $InitializeCommonEvent(0, 99075440, 7511, 7512, 0, 19000840, 5108, 0);
    }
    if (IsMapVariation(5)) {
        $InitializeCommonEvent(0, 90075900, 19000850);
        $InitializeCommonEvent(0, 90075901, 19000850, 760000, 907610000);
        $InitializeCommonEvent(0, 90075902, 19000850, 0, 0);
        $InitializeCommonEvent(0, 90075500, 19000850);
        $InitializeCommonEvent(0, 90075501, 19000850);
        $InitializeCommonEvent(0, 90075510, 19000850);
        $InitializeCommonEvent(0, 90015012, 19000850, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 90015008, 7511, 7512, 760000, 19000850, 5105, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006850, 19000850, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006851, 19000850, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006852, 19000850, 5108, 0);
        $InitializeCommonEvent(0, 90075520, 7511, 7512, 0, 19000850, 5108, 0);
    }
    if (IsMapVariation(6)) {
        $InitializeCommonEvent(0, 90075900, 19000860);
        $InitializeCommonEvent(0, 90075901, 19000860, 490000, 907620000);
        $InitializeCommonEvent(0, 90075902, 19000860, 0, 0);
        $InitializeCommonEvent(0, 90075600, 19000860, 19002860);
        $InitializeCommonEvent(0, 90075601, 19000860);
        $InitializeCommonEvent(0, 90015012, 19000860, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 90075610, 19000860);
        $InitializeCommonEvent(0, 90015008, 7511, 7512, 490000, 19000860, 5105, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006860, 19000860, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006861, 19000860, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006862, 19000860, 5108, 0);
        $InitializeCommonEvent(0, 99075620, 7511, 7512, 0, 19000860, 5108, 0);
        $InitializeCommonEvent(0, 90075602, 19000860);
    }
    if (IsMapVariation(10)) {
        $InitializeCommonEvent(0, 90075900, 19010800);
        $InitializeCommonEvent(0, 90075901, 19010800, 750000, 907500000);
        $InitializeCommonEvent(0, 90075902, 19010800, 19015801, 0);
        $InitializeCommonEvent(0, 90015012, 19010800, 7511);
        $InitializeCommonEvent(1, 90015012, 19015801, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 90075000, 19010800, 19015801);
        $InitializeCommonEvent(0, 90075051, 19010800, 19015801, 19010801, 19010802);
        $InitializeCommonEvent(0, 90075002, 19010800, 19010801, 19010802);
        $InitializeCommonEvent(0, 90075005, 19010800, 19010801, 72, 5900);
        $InitializeCommonEvent(0, 90075005, 19010800, 19010802, 2, 5901);
        $InitializeCommonEvent(0, 90075006, 19010800, 19010801);
        $InitializeCommonEvent(0, 90075006, 19010800, 19010802);
        $InitializeCommonEvent(0, 90075060, 19010800, 19010801);
        $InitializeCommonEvent(0, 90075060, 19010800, 19010802);
        $InitializeCommonEvent(0, 90075070, 19010800, 19010801, 72, 5908, 51320);
        $InitializeCommonEvent(0, 90075070, 19010800, 19010802, 72, 5909, 51321);
        $InitializeCommonEvent(0, 90075950, 750000, 19010800, 5106, 0);
        $InitializeCommonEvent(0, 90075910, 6001, 7512, 19006800, 19010800, 0, 1);
        $InitializeCommonEvent(0, 90075910, 6001, 7512, 19006801, 19010800, 0, 1);
        $InitializeCommonEvent(0, 90075910, 6001, 7512, 19006802, 19010800, 0, 1);
        $InitializeCommonEvent(0, 90075008, 6001, 7512, 0, 19010800, 0, 1);
    }
    if (IsMapVariation(11)) {
        $InitializeCommonEvent(0, 90075161, 19010810);
        $InitializeCommonEvent(0, 90075102, 19010810);
        $InitializeCommonEvent(0, 90075900, 19010810);
        $InitializeCommonEvent(0, 90075901, 19010810, 751000, 907510000);
        $InitializeCommonEvent(0, 90075902, 19010810, 0, 0);
        $InitializeCommonEvent(0, 90075950, 751000, 19010810, 5106, 0);
        $InitializeCommonEvent(0, 90015012, 19010810, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006810, 19010810, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006811, 19010810, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006812, 19010810, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006813, 19010810, 5108, 0);
        $InitializeCommonEvent(0, 90075150, 7511, 7512, 0, 19010810, 5108, 0);
        $InitializeCommonEvent(0, 90075160, 19010810, 19010811, 19010812);
        $InitializeCommonEvent(0, 90075162, 19010810, 19010811);
        $InitializeCommonEvent(0, 90075163, 19010810, 19010811);
        $InitializeCommonEvent(0, 90075164);
        $InitializeCommonEvent(0, 90075165, 19010810);
    }
    if (IsMapVariation(12)) {
        $InitializeCommonEvent(0, 90075900, 19015821);
        $InitializeCommonEvent(0, 90075901, 19010828, 752000, 907520002);
        $InitializeCommonEvent(0, 90075903, 19, 19015821, 19010827, 0);
        $InitializeCommonEvent(0, 90015012, 19015821, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 90075950, 752000, 19010828, 5106, 0);
        $InitializeCommonEvent(0, 90075250, 19015821, 19010825, 19010826, 19010827);
        $InitializeCommonEvent(0, 90075251, 19015821, 19010825, 19010826, 19010827, 19010828, 19002820, 19000220, 19000221, 19000222, 19000322);
        $InitializeCommonEvent(0, 90075257, 19010827, 19010828, 19010825, 19010826);
        $InitializeCommonEvent(0, 90075220, 19010825, 19000222);
        $InitializeCommonEvent(0, 90075212, 19010827, 19010825, 19010826, 19000220, 19000221, 19000222, 1);
        $InitializeCommonEvent(0, 90075266, 19010825, 1);
        $InitializeCommonEvent(0, 90075266, 19010826, 0);
    }
    if (IsMapVariation(12)) {
        // ED Gnoster balls
        // why did they do it like this, this is terrible
        if (IsPlayerNo(1)) {
            $InitializeCommonEvent(0, 90075230, 19010822, 10002, 1);
            $InitializeCommonEvent(0, 90075230, 19010823, 10003, 0);
            $InitializeCommonEvent(0, 90075230, 19010824, 10004, 0);
            $InitializeCommonEvent(0, 90075230, 19010832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19010833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19010834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19010822);
            $InitializeCommonEvent(0, 90075232, 19010822);
            $InitializeCommonEvent(0, 90075233, 19010822);
            $InitializeCommonEvent(0, 90075234, 19010822);
        }
        if (IsPlayerNo(2)) {
            $InitializeCommonEvent(0, 90075230, 19010822, 10002, 0);
            $InitializeCommonEvent(0, 90075230, 19010823, 10003, 1);
            $InitializeCommonEvent(0, 90075230, 19010824, 10004, 0);
            $InitializeCommonEvent(0, 90075230, 19010832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19010833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19010834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19010823);
            $InitializeCommonEvent(0, 90075232, 19010823);
            $InitializeCommonEvent(0, 90075233, 19010823);
            $InitializeCommonEvent(0, 90075234, 19010823);
        }
        if (IsPlayerNo(3)) {
            $InitializeCommonEvent(0, 90075230, 19010822, 10002, 0);
            $InitializeCommonEvent(0, 90075230, 19010823, 10003, 0);
            $InitializeCommonEvent(0, 90075230, 19010824, 10004, 1);
            $InitializeCommonEvent(0, 90075230, 19010832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19010833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19010834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19010824);
            $InitializeCommonEvent(0, 90075232, 19010824);
            $InitializeCommonEvent(0, 90075233, 19010824);
            $InitializeCommonEvent(0, 90075234, 19010824);
        }
        if (IsPlayerNo(4)) {
            $InitializeCommonEvent(0, 90075230, 19010822, 10002, 0);
            $InitializeCommonEvent(0, 90075230, 19010823, 10003, 0);
            $InitializeCommonEvent(0, 90075230, 19010824, 10004, 0);
            $InitializeCommonEvent(0, 90075230, 19010832, 10005, 1);
            $InitializeCommonEvent(0, 90075230, 19010833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19010834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19010832);
            $InitializeCommonEvent(0, 90075232, 19010832);
            $InitializeCommonEvent(0, 90075233, 19010832);
            $InitializeCommonEvent(0, 90075234, 19010832);
        }
        if (IsPlayerNo(5)) {
            $InitializeCommonEvent(0, 90075230, 19010822, 10002, 0);
            $InitializeCommonEvent(0, 90075230, 19010823, 10003, 0);
            $InitializeCommonEvent(0, 90075230, 19010824, 10004, 0);
            $InitializeCommonEvent(0, 90075230, 19010832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19010833, 10006, 1);
            $InitializeCommonEvent(0, 90075230, 19010834, 10007, 0);
            $InitializeCommonEvent(0, 90075231, 19010833);
            $InitializeCommonEvent(0, 90075232, 19010833);
            $InitializeCommonEvent(0, 90075233, 19010833);
            $InitializeCommonEvent(0, 90075234, 19010833);
        }
        if (IsPlayerNo(6)) {
            $InitializeCommonEvent(0, 90075230, 19010822, 10002, 0);
            $InitializeCommonEvent(0, 90075230, 19010823, 10003, 0);
            $InitializeCommonEvent(0, 90075230, 19010824, 10004, 0);
            $InitializeCommonEvent(0, 90075230, 19010832, 10005, 0);
            $InitializeCommonEvent(0, 90075230, 19010833, 10006, 0);
            $InitializeCommonEvent(0, 90075230, 19010834, 10007, 1);
            $InitializeCommonEvent(0, 90075231, 19010834);
            $InitializeCommonEvent(0, 90075232, 19010834);
            $InitializeCommonEvent(0, 90075233, 19010834);
            $InitializeCommonEvent(0, 90075234, 19010834);
        }
    }
    if (IsMapVariation(12)) {
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006821, 19015821, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006822, 19015821, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006823, 19015821, 5108, 0);
        $InitializeCommonEvent(0, 90075240, 7511, 7512, 0, 19015821, 5108, 0);
        $InitializeCommonEvent(0, 90075255, 19010825, 19010826, 19010828, 19010827, 19002820, 19000322);
        $InitializeCommonEvent(0, 90075256, 19010825, 19010826, 19010828, 19010827, 19000322);
        $InitializeCommonEvent(0, 90075263, 19010828);
        $InitializeCommonEvent(0, 90075267, 19010825, 19010826, 19010828, 19000322, 19000323);
        $InitializeCommonEvent(0, 90075260, 19010825, 19010828, 47150, 47152, 19000322);
        $InitializeCommonEvent(0, 90075261, 19010825, 19010828, 47170, 47190, 19000322, 19000323);
        $InitializeCommonEvent(0, 90075262, 19010825, 19010828, 19010827, 47111, 47190, 19000322, 19000323);
        $InitializeCommonEvent(0, 90075264, 19010825, 19010828, 19000322);
        $InitializeCommonEvent(0, 90075265, 19010825, 19010828, 47111, 19000322);
        $InitializeCommonEvent(0, 90075260, 19010826, 19010828, 47151, 47153, 19000322);
        $InitializeCommonEvent(0, 90075261, 19010826, 19010828, 47171, 47191, 19000322, 19000323);
        $InitializeCommonEvent(0, 90075262, 19010826, 19010828, 19010827, 47116, 47191, 19000322, 19000323);
        $InitializeCommonEvent(0, 90075264, 19010826, 19010828, 19000322);
        $InitializeCommonEvent(0, 90075265, 19010826, 19010828, 47116, 19000322);
    }
    if (IsMapVariation(13)) {
        $InitializeCommonEvent(0, 90075900, 19010830);
        $InitializeCommonEvent(0, 90075901, 19010831, 754000, 907540000);
        $InitializeCommonEvent(0, 90075902, 19010830, 19010831, 0);
        $InitializeCommonEvent(0, 90015012, 19010830, 7511);
        $InitializeCommonEvent(0, 90015012, 19010831, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 90075350, 19010830, 19010831, 19010220, 19010221);
        $InitializeCommonEvent(0, 90075351, 19010830, 19015835, 19015836, 19000230);
        $InitializeCommonEvent(0, 90075352, 19010830, 19010831, 19000230);
        $InitializeCommonEvent(0, 90075330, 19010830);
        $InitializeCommonEvent(0, 90075950, 754000, 19010831, 5106, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006830, 19010830, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006831, 19010830, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006832, 19010830, 5108, 0);
        $InitializeCommonEvent(0, 90075340, 7511, 7512, 0, 19010831, 5108, 0);
        $InitializeCommonEvent(0, 90075360, 19010831, 45720, 10, NPCPartType.Part10, 1, 223, 12, 45721, 45740, 45725, 45730);
        $InitializeCommonEvent(0, 90075360, 19010831, 45720, 11, NPCPartType.Part11, 1, 224, 13, 45721, 45741, 45725, 45731);
        $InitializeCommonEvent(0, 90075360, 19010831, 45720, 12, NPCPartType.Part12, 1, 225, 14, 45721, 45742, 45725, 45732);
        $InitializeCommonEvent(0, 90075360, 19010831, 45720, 13, NPCPartType.Part13, 1, 226, 10, 45721, 45743, 45725, 45733);
        $InitializeCommonEvent(0, 90075360, 19010831, 45720, 14, NPCPartType.Part14, 1, 227, 11, 45721, 45744, 45725, 45734);
    }
    if (IsMapVariation(13)) {
        $InitializeCommonEvent(0, 90075310, 19010830, 19010200, 19010201, 19010202, 19010203, 19010204, 19010205, 19010206, 19010207, 19010208, 19010209, 19010210, 19010211, 19010212, 19010213, 19010214, 19010215, 19010216, 19010217, 19010218, 19010219);
        $InitializeCommonEvent(0, 90075311, 19010830, 19010200, 19010201, 19010202, 19010203, 19010204, 19010205, 19010206, 19010207, 19010208, 19010209, 19010210, 19010211, 19010212, 19010213, 19010214, 19010215, 19010216, 19010217, 19010218, 19010219);
        $InitializeCommonEvent(0, 90075312, 19010830, 19010200, 19010201, 19010202, 19010203, 19010204, 19010205, 19010206, 19010207, 19010208, 19010209, 19010210, 19010211, 19010212, 19010213, 19010214, 19010215, 19010216, 19010217);
        $InitializeCommonEvent(0, 90075313, 19010830, 19010220, 19010221, 19010222);
        $InitializeCommonEvent(0, 90075320, 19010830, 19015836);
    }
    if (IsMapVariation(13)) {
        $InitializeCommonEvent(0, 90075302, 19010830, 19010200);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010201);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010202);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010203);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010204);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010205);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010206);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010207);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010208);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010209);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010210);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010211);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010212);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010213);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010214);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010215);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010216);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010217);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010218);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010219);
    }
    if (IsMapVariation(13)) {
        $InitializeCommonEvent(0, 90075302, 19010830, 19010220);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010221);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010222);
    }
    if (IsMapVariation(13)) {
        $InitializeCommonEvent(0, 90075302, 19010830, 19010230);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010231);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010232);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010233);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010234);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010235);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010236);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010237);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010238);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010239);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010240);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010241);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010242);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010243);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010244);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010245);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010246);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010247);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010248);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010249);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010250);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010251);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010252);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010253);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010254);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010255);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010256);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010257);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010258);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010259);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010260);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010261);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010262);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010263);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010264);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010265);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010266);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010267);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010268);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010269);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010270);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010271);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010272);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010273);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010274);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010275);
        $InitializeCommonEvent(0, 90075302, 19010830, 19010276);
    }
    if (IsMapVariation(14)) {
        $InitializeCommonEvent(0, 90075450, 19010840, 19010849, 19010440, 19010441, 19010442, 19010443, 19010444, 19010445, 19010446, 19010447, 19015842, 19015843, 19015844);
        $InitializeCommonEvent(0, 90075401, 19010849, 19000240, 19000241, 19000242);
        $InitializeCommonEvent(0, 90075452, 19010849, 19010840, 19000240, 19000241, 19000242);
        $InitializeCommonEvent(0, 90075403, 19010849, 19004740, 19004741, 19004742, 19000240, 19000242);
        if (IsPlayerNo(1)) {
            $InitializeCommonEvent(0, 90075404, 19000240, 19004743, 19000243, 19004744, 19000246);
        }
        if (IsPlayerNo(2)) {
            $InitializeCommonEvent(0, 90075404, 19000240, 19004743, 19000244, 19004744, 19000247);
        }
        if (IsPlayerNo(3)) {
            $InitializeCommonEvent(0, 90075404, 19000240, 19004743, 19000245, 19004744, 19000248);
        }
        // ED Maris
        // Added flags with +100 for other players
        if (IsPlayerNo(4)) {
            $InitializeCommonEvent(0, 90075404, 19000240, 19004743, 19000343, 19004744, 19000346);
        }
        if (IsPlayerNo(5)) {
            $InitializeCommonEvent(0, 90075404, 19000240, 19004743, 19000344, 19004744, 19000347);
        }
        if (IsPlayerNo(6)) {
            $InitializeCommonEvent(0, 90075404, 19000240, 19004743, 19000345, 19004744, 19000348);
        }
        $InitializeCommonEvent(0, 90075405, 19000240, 19000241, 19000246, 19000247, 19000248, 19000346, 19000347, 19000348); // NR6PF: Pass new flags to call
        $InitializeCommonEvent(0, 99075406, 19010849, 19000240, 19000701, 19000241);
        $InitializeCommonEvent(0, 99075410, 19010840);
        $InitializeCommonEvent(0, 99075420, 19010840);
        $InitializeCommonEvent(0, 99075421, 19010840);
        $InitializeCommonEvent(0, 99075422, 19010840, 19002740, 19002741, 19002742, 19002743, 19002744, 19002745, 19002746, 19002747, 19010440, 19010441, 19010442, 19010443, 19010444, 19010445, 19010446, 19010447);
        $InitializeCommonEvent(0, 90075901, 19010840, 756000, 907550000);
        $InitializeCommonEvent(0, 90075902, 19015840, 0, 0);
        $InitializeCommonEvent(0, 90075902, 19015842, 19015843, 19015844);
        $InitializeCommonEvent(0, 90015012, 19015840, 7511);
        $InitializeCommonEvent(0, 90015022, 19015842, 7511);
        $InitializeCommonEvent(0, 90015022, 19015843, 7511);
        $InitializeCommonEvent(0, 90015022, 19015844, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 99075485, 19010840, 19000270);
        $InitializeCommonEvent(0, 99075486, 19010840);
        $InitializeCommonEvent(0, 90075950, 756000, 19010840, 5106, 0.5);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006840, 19010840, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006841, 19010840, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006842, 19010840, 5108, 0);
        $InitializeCommonEvent(0, 99075440, 7511, 7512, 0, 19010840, 5108, 0);
    }
    if (IsMapVariation(14)) {
        // More ED Libra
        // Why did I think I would be done with the clones, that other thing in common was just the initializer
        // This is generators for them
        // P1
        $InitializeCommonEvent(0, 90015012, 19015842, 7511); // not sure - used by other boss too? Entity ID isn't something I can find any references to
        $InitializeCommonEvent(0, 99075466, 19010840, 10002, 19010450, 110, 19011250, 19000250, 19000260); // clone generator
        $InitializeCommonEvent(0, 99075468, 19010840, 19010453, 113, 19011253, 19000250, 19000263); // Alt clone generator
        $InitializeCommonEvent(0, 99075467, 19010840, 19010450, 19000260); // clone tracker
        $InitializeCommonEvent(0, 99075467, 19010840, 19010453, 19000253); // alt clone tracker
        // P2
        $InitializeCommonEvent(0, 90015012, 19015843, 7511);
        $InitializeCommonEvent(0, 99075466, 19010840, 10003, 19010451, 111, 19011251, 19000251, 19000261);
        $InitializeCommonEvent(0, 99075468, 19010840, 19010454, 114, 19011254, 19000251, 19000264);
        $InitializeCommonEvent(0, 99075467, 19010840, 19010451, 19000261);
        $InitializeCommonEvent(0, 99075467, 19010840, 19010454, 19000254);
        // P3
        $InitializeCommonEvent(0, 90015012, 19015844, 7511);
        $InitializeCommonEvent(0, 99075466, 19010840, 10004, 19010452, 112, 19011252, 19000252, 19000262);
        $InitializeCommonEvent(0, 99075468, 19010840, 19010455, 115, 19011255, 19000252, 19000265);
        $InitializeCommonEvent(0, 99075467, 19010840, 19010452, 19000262);
        $InitializeCommonEvent(0, 99075467, 19010840, 19010455, 19000255);
        // NR6PF: Clone spawners, with new flags & emitters
        // P4
        $InitializeCommonEvent(0, 90015012, 19015845, 7511);
        $InitializeCommonEvent(0, 99075466, 19010840, 10005, 19010460, 116, 19011350, 19000350, 19000360);
        $InitializeCommonEvent(0, 99075468, 19010840, 19010463, 119, 19011353, 19000350, 19000363);
        $InitializeCommonEvent(0, 99075467, 19010840, 19010460, 19000360);
        $InitializeCommonEvent(0, 99075467, 19010840, 19010463, 19000353);
        // P5
        $InitializeCommonEvent(0, 90015012, 19015846, 7511);
        $InitializeCommonEvent(0, 99075466, 19010840, 10006, 19010461, 117, 19011351, 19000351, 19000361);
        $InitializeCommonEvent(0, 99075468, 19010840, 19010464, 120, 19011354, 19000351, 19000364);
        $InitializeCommonEvent(0, 99075467, 19010840, 19010461, 19000361);
        $InitializeCommonEvent(0, 99075467, 19010840, 19010464, 19000354);
        // P6
        $InitializeCommonEvent(0, 90015012, 19015847, 7511);
        $InitializeCommonEvent(0, 99075466, 19010840, 10007, 19010462, 118, 19011352, 19000352, 19000362);
        $InitializeCommonEvent(0, 99075468, 19010840, 19010465, 121, 19011355, 19000352, 19000365);
        $InitializeCommonEvent(0, 99075467, 19010840, 19010462, 19000362);
        $InitializeCommonEvent(0, 99075467, 19010840, 19010465, 19000355);
        // End
        $InitializeCommonEvent(0, 99075471, 19010840, 19000250, 19000260, 19000251, 19000261, 19000252, 19000262, 19000350, 19000360, 19000351, 19000361, 19000352, 19000362); // NR6PF: Set up new clone flags
        $InitializeCommonEvent(0, 99075470, 19010840, 49691, 8002);
    }
    if (IsMapVariation(14)) {
        $InitializeCommonEvent(0, 99075480, 19010840, 20000, 49690, 49702, 0, 49703, 1);
        $InitializeCommonEvent(0, 99075480, 19010840, 20000, 49690, 446, 0, 447, 1);
        if (!IsPlayerNo(1)) {
            $InitializeCommonEvent(0, 99075481, 19010840, 10002);
        }
        if (!IsPlayerNo(2)) {
            $InitializeCommonEvent(0, 99075481, 19010840, 10003);
        }
        if (!IsPlayerNo(3)) {
            $InitializeCommonEvent(0, 99075481, 19010840, 10004);
        }
        // Surprise! It's ED Libra again!
        if (!IsPlayerNo(4)) {
            $InitializeCommonEvent(0, 99075481, 19010840, 10005);
        }
        if (!IsPlayerNo(5)) {
            $InitializeCommonEvent(0, 99075481, 19010840, 10006);
        }
        if (!IsPlayerNo(6)) {
            $InitializeCommonEvent(0, 99075481, 19010840, 10007);
        }
        $InitializeCommonEvent(0, 99075470, 19010840, 49690, 8001);
    }
    if (IsMapVariation(14)) {
        $InitializeCommonEvent(0, 99075480, 19010840, 20000, 49692, 49720, 49721, 0, 0);
        $InitializeCommonEvent(0, 99075480, 19010840, 20000, 49692, 49723, 0, 49724, 1);
        $InitializeCommonEvent(0, 99075470, 19010840, 49692, 8003);
    }
    if (IsMapVariation(14)) {
        $InitializeCommonEvent(0, 99075480, 19010840, 20000, 49693, 49731, 0, 49733, 1);
        $InitializeCommonEvent(0, 99075480, 19010840, 19010450, 49693, 49731, 0, 49733, 1);
        $InitializeCommonEvent(0, 99075480, 19010840, 19010451, 49693, 49731, 0, 49733, 1);
        $InitializeCommonEvent(0, 99075480, 19010840, 19010452, 49693, 49731, 0, 49733, 1);
        $InitializeCommonEvent(0, 99075470, 19010840, 49693, 8004);
    }
    if (IsMapVariation(14)) {
        $InitializeCommonEvent(0, 99075480, 19010840, 20000, 49694, 49742, 0, 49747, 1);
        $InitializeCommonEvent(0, 99075480, 19010840, 20000, 49694, 49746, 0, 49748, 1);
        $InitializeCommonEvent(0, 99075480, 19010840, 19010450, 49694, 49741, 0, 49749, 1);
        $InitializeCommonEvent(0, 99075480, 19010840, 19010451, 49694, 49741, 0, 49749, 1);
        $InitializeCommonEvent(0, 99075480, 19010840, 19010452, 49694, 49741, 0, 49749, 1);
        $InitializeCommonEvent(0, 99075470, 19010840, 49694, 8005);
    }
    if (IsMapVariation(14)) {
        $InitializeCommonEvent(0, 99075483, 19010840);
        $InitializeCommonEvent(0, 99075470, 19010840, 49695, 8006);
        $InitializeCommonEvent(0, 99075482, 19010840);
    }
    if (IsMapVariation(15)) {
        $InitializeCommonEvent(0, 90075900, 19010850);
        $InitializeCommonEvent(0, 90075901, 19010850, 760000, 907610000);
        $InitializeCommonEvent(0, 90075902, 19010850, 0, 0);
        $InitializeCommonEvent(0, 90075500, 19010850);
        $InitializeCommonEvent(0, 90075950, 760000, 19010850, 5106, 0);
        $InitializeCommonEvent(0, 90075551, 19010850);
        $InitializeCommonEvent(0, 90075510, 19010850);
        $InitializeCommonEvent(0, 90015012, 19010850, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006850, 19010850, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006851, 19010850, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006852, 19010850, 5108, 0);
        $InitializeCommonEvent(0, 90075520, 7511, 7512, 0, 19010850, 5108, 0);
    }
    if (IsMapVariation(16)) {
        $InitializeCommonEvent(0, 90075900, 19010860);
        $InitializeCommonEvent(0, 90075901, 19010860, 490000, 907620000);
        $InitializeCommonEvent(0, 90075902, 19010860, 0, 0);
        $InitializeCommonEvent(0, 90075600, 19010860, 19002860);
        $InitializeCommonEvent(0, 90075651, 19010860);
        $InitializeCommonEvent(0, 90015012, 19010860, 7511);
        $InitializeCommonEvent(0, 90015020, 7511, 7512);
        $InitializeCommonEvent(0, 90075610, 19010860);
        $InitializeCommonEvent(0, 90075660, 19010860, 51001, 51002, 51030, 15, 120, 10, NPCPartType.Part1, 11, NPCPartType.Part6, 0, NPCPartType.Part1, 0, NPCPartType.Part1, 0, NPCPartType.Part1);
        $InitializeCommonEvent(0, 90075660, 19010860, 51003, 51004, 51031, 16, 130, 20, NPCPartType.Part2, 21, NPCPartType.Part3, 22, NPCPartType.Part4, 23, NPCPartType.Part5, 24, NPCPartType.Part8);
        $InitializeCommonEvent(0, 90075660, 19010860, 51005, 51006, 51032, 17, 60, 30, NPCPartType.Part9, 31, NPCPartType.Part10, 32, NPCPartType.Part11, 33, NPCPartType.Part12, 0, NPCPartType.Part1);
        $InitializeCommonEvent(0, 90075660, 19010860, 51007, 51008, 51033, 18, 120, 40, NPCPartType.Part7, 0, NPCPartType.Part1, 0, NPCPartType.Part1, 0, NPCPartType.Part1, 0, NPCPartType.Part1);
        $InitializeCommonEvent(0, 90075652, 19010860, 5105, 5106);
        $InitializeCommonEvent(0, 90075950, 490000, 19010860, 5106, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006860, 19010860, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006861, 19010860, 5108, 0);
        $InitializeCommonEvent(0, 90075910, 7511, 7512, 19006862, 19010860, 5108, 0);
        $InitializeCommonEvent(0, 99075620, 7511, 7512, 0, 19010860, 5108, 0);
        $InitializeCommonEvent(0, 90075602, 19010860);
    }
    if (IsMapVariation(2)) {
        $InitializeEvent(0, 19002890);
        $InitializeEvent(0, 19002891);
        $InitializeEvent(0, 19002892);
    }
    $InitializeEvent(0, 19002500);
    $InitializeEvent(0, 19002501);
    $InitializeEvent(0, 19002550);
    $InitializeEvent(0, 19002502);
    RegisterBonfire(19001500, 0, 5);
    RegisterBonfire(19001501, 0, 5);
    $InitializeCommonEvent(0, 90075920, 0, 150, 9070);
    $InitializeCommonEvent(1, 90075920, 1, 151, 9071);
    $InitializeCommonEvent(2, 90075920, 2, 152, 9072);
    $InitializeCommonEvent(3, 90075920, 3, 153, 9073);
    $InitializeCommonEvent(4, 90075920, 4, 154, 9074);
    $InitializeCommonEvent(5, 90075920, 5, 155, 9075);
    $InitializeCommonEvent(6, 90075920, 6, 156, 9076);
    $InitializeCommonEvent(0, 90075931);
    $InitializeCommonEvent(0, 90015200, 9307, 0);
    $InitializeCommonEvent(0, 90015200, 9308, 1);
    $InitializeCommonEvent(0, 90015200, 9309, 2);
    $InitializeCommonEvent(0, 90015200, 9310, 3);
    $InitializeCommonEvent(0, 90015200, 9311, 4);
    $InitializeCommonEvent(0, 90015200, 9312, 5);
    $InitializeCommonEvent(0, 90015200, 9313, 6);
    $InitializeCommonEvent(0, 90015200, 9307, 10);
    $InitializeCommonEvent(0, 90015200, 9308, 11);
    $InitializeCommonEvent(0, 90015200, 9309, 12);
    $InitializeCommonEvent(0, 90015200, 9310, 13);
    $InitializeCommonEvent(0, 90015200, 9311, 14);
    $InitializeCommonEvent(0, 90015200, 9312, 15);
    $InitializeCommonEvent(0, 90015200, 9313, 16);
    $InitializeCommonEvent(0, 90015201, 9315, 0, 150);
    $InitializeCommonEvent(0, 90015201, 9315, 1, 151);
    $InitializeCommonEvent(0, 90015201, 9315, 2, 152);
    $InitializeCommonEvent(0, 90015201, 9315, 3, 153);
    $InitializeCommonEvent(0, 90015201, 9315, 4, 154);
    $InitializeCommonEvent(0, 90015201, 9315, 5, 155);
    $InitializeCommonEvent(0, 90015201, 9315, 6, 156);
    $InitializeCommonEvent(0, 90015201, 9315, 10, 150);
    $InitializeCommonEvent(0, 90015201, 9315, 11, 151);
    $InitializeCommonEvent(0, 90015201, 9315, 12, 152);
    $InitializeCommonEvent(0, 90015201, 9315, 13, 153);
    $InitializeCommonEvent(0, 90015201, 9315, 14, 154);
    $InitializeCommonEvent(0, 90015201, 9315, 15, 155);
    $InitializeCommonEvent(0, 90015201, 9315, 16, 156);
    $InitializeCommonEvent(0, 90085027, 203, 4, 9200, Hero.Guardian);
    $InitializeCommonEvent(0, 90085027, 303, 5, 9211, Hero.Ironeye);
    $InitializeCommonEvent(0, 90085027, 601, 0, 9214, Hero.Revenant);
    $InitializeCommonEvent(0, 90085027, 601, 5, 9214, Hero.Revenant);
    $InitializeCommonEvent(0, 90085027, 203, 14, 9200, Hero.Guardian);
    $InitializeCommonEvent(0, 90085027, 303, 15, 9211, Hero.Ironeye);
    $InitializeCommonEvent(0, 90085027, 601, 10, 9214, Hero.Revenant);
    $InitializeCommonEvent(0, 90085027, 601, 15, 9214, Hero.Revenant);
});

$Event(50, Default, function() {
    $InitializeEvent(0, 19004500, 150, 19000800);
    $InitializeEvent(1, 19004500, 151, 19000810);
    $InitializeEvent(2, 19004500, 152, 19000827);
    $InitializeEvent(3, 19004500, 153, 19000830);
    $InitializeEvent(4, 19004500, 154, 19000840);
    $InitializeEvent(5, 19004500, 155, 19000850);
    $InitializeEvent(6, 19004500, 156, 19000860);
    $InitializeEvent(0, 19002470);
});

$Event(19002470, Restart, function() {
    DisableNetworkSync();
    EndIf(EventFlag(19002470));
    WaitFor(EventFlag(7510) && PlayerInMap(19, 0, 0, 0));
    FadeToBlack(1, 0, true, -1);
    WaitFixedTimeSeconds(2);
    FadeToBlack(0, 0.5, false, -1);
    EndEvent();
});

$Event(19002590, Default, function() {
    WaitFor(EventFlag(7512));
    DisplayTextEffectId(4000);
    WaitFixedTimeSeconds(15);
    SetEventFlagID(7000, ON);
});

$Event(19002500, Default, function() {
    WaitFor(EventFlag(1900));
    SetSpEffect(19000800, 41110);
});

$Event(19002501, Default, function() {
    WaitFor(EventFlag(1901));
    WaitFor(cond);
    SetSpEffect(19000800, 41100);
    SetNetworkconnectedEventFlagID(19002501, ON);
});

$Event(19002502, Default, function() {
    DisableCharacter(19000400);
    DisableCharacter(19000501);
    DisableAsset(19001501);
    WaitFor(EventFlag(1902));
    EnableCharacter(19000501);
    EnableAsset(19001501);
    WaitFor(EventFlag(19008501));
    SpawnOneshotSFX(TargetEntityType.Character, 19002501, -1, 600940);
    WaitFixedTimeSeconds(1.5);
    EnableCharacter(19000400);
    EndEvent();
});

$Event(19002550, Default, function() {
    DisableCharacter(19000500);
    DisableAsset(19001500);
    DisableObjAct(19001500, 90035);
    WaitFor(EventFlag(1902));
    SpawnOneshotSFX(TargetEntityType.Asset, 19001500, 200, 1000);
    SpawnOneshotSFX(TargetEntityType.Character, 19000800, -1, 1000);
    SetSpEffect(19000800, 41105);
});

$Event(19002800, Default, function(chrEntityId) {
    EndIf(EventFlag(19000800));
    WaitFor(HPRatio(chrEntityId) <= 0);
    if (CharacterHasSpEffect(19000801, 42035)) {
        DisableCharacter(19000801);
    }
L2:
    ForceCharacterDeath(19000801, false);
    if (CharacterHasSpEffect(19000802, 42035)) {
        DisableCharacter(19000802);
    }
L3:
    ForceCharacterDeath(19000802, false);
    WaitFixedTimeSeconds(5);
    SetEventFlagID(19000800, ON);
});

$Event(19002801, Restart, function(chrEntityId, nameId) {
    if (EventFlag(19000800)) {
        DisableCharacter(chrEntityId);
        DisableCharacterCollision(chrEntityId);
        DisableCharacter(19000801);
        DisableCharacterCollision(19000801);
        DisableCharacter(19000802);
        DisableCharacterCollision(19000802);
        EndEvent();
    }
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    EnableCharacter(19000801);
    EnableCharacterCollision(19000801);
    EnableCharacter(19000802);
    EnableCharacterCollision(19000802);
    DisableCharacterAI(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 30029, true, false, false);
    DisableCharacterAI(19000801);
    ForceAnimationPlayback(19000801, 30000, true, false, false);
    DisableCharacterAI(19000802);
    ForceAnimationPlayback(19000802, 30000, true, false, false);
    WaitFor(
        InArea(10000, 19002801)
            || HasDamageType(chrEntityId, 0, DamageType.Any)
            || CharacterHasStateInfo(chrEntityId, 436)
            || CharacterHasStateInfo(chrEntityId, 2)
            || CharacterHasStateInfo(chrEntityId, 5)
            || CharacterHasStateInfo(chrEntityId, 6)
            || CharacterHasStateInfo(chrEntityId, 260));
    ForceAnimationPlayback(chrEntityId, 20029, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
    DisableCharacterHPBarDisplay(19000801);
    DisableCharacterHPBarDisplay(19000802);
    DisableCharacterHPBarDisplay(19000803);
    CreateReferredDamagePair(19000801, chrEntityId);
    CreateReferredDamagePair(19000802, chrEntityId);
    EnableCharacterAI(19000801);
    EnableCharacterAI(19000802);
    WaitFor(HPRatio(chrEntityId) <= 0.5 || EventFlag(19000999));
    ChangeWeather(Weather.Type85, -1, false);
    ForceAnimationPlayback(19006901, 100, false, false, false);
    WaitFor(ElapsedSeconds(0.7));
    ForceAnimationPlayback(19006902, 100, false, false, false);
    WaitFor(ElapsedSeconds(0.7));
    ForceAnimationPlayback(19006903, 100, false, false, false);
    ForceAnimationPlayback(19001510, 100, false, true, false);
    ForceAnimationPlayback(19001510, 110, true, false, false);
});

$Event(19002803, Restart, function(chrEntityId, spEffectId, dummypolyId) {
    WaitFor(CharacterHasSpEffect(19000800, 42030));
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Character, 19000800, dummypolyId, 19000800);
    SetSpEffect(chrEntityId, spEffectId);
    WaitFixedTimeSeconds(5);
    RestartEvent();
});

$Event(19002806, Restart, function(chrEntityId) {
    WaitFor(CharacterHasSpEffect(19000800, 42031));
    SetSpEffect(chrEntityId, 42039);
    WaitFixedTimeSeconds(1);
    SetSpEffect(chrEntityId, 5950);
    WaitFixedTimeSeconds(5);
    RestartEvent();
});

$Event(19002810, Default, function(chrEntityId) {
    EndIf(EventFlag(19000810));
    WaitFor(HPRatio(chrEntityId) <= 0);
    WaitFixedTimeSeconds(5);
    SetEventFlagID(19000810, ON);
});

$Event(19002811, Restart, function(chrEntityId, nameId) {
    if (EventFlag(19000810)) {
        DisableCharacter(chrEntityId);
        DisableCharacterCollision(chrEntityId);
        EndEvent();
    }
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    DisableCharacterAI(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 30029, true, false, false);
    WaitFor(
        InArea(10000, 19002801)
            || HasDamageType(chrEntityId, 0, DamageType.Any)
            || CharacterHasStateInfo(chrEntityId, 436)
            || CharacterHasStateInfo(chrEntityId, 2)
            || CharacterHasStateInfo(chrEntityId, 5)
            || CharacterHasStateInfo(chrEntityId, 6)
            || CharacterHasStateInfo(chrEntityId, 260));
    SetBossBGM(751000, BossBGMState.Start);
    ForceAnimationPlayback(chrEntityId, 20029, false, true, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});

$Event(19002812, Restart, function(eventFlagId, eventFlagId2, spEffectId, chrEntityId, spEffectId2, targetAmount) {
    if (!EventFlag(9999)) {
        EndIf(EventFlag(eventFlagId2));
        if (eventFlagId != 0) {
            WaitFor(EventFlag(eventFlagId));
        }
        if (Signed(0) != spEffectId2) {
            WaitFor(CharacterHasSpEffect(chrEntityId, spEffectId2, GreaterOrEqual, 1));
        } else {
            WaitFor(CharacterRatioHPRatio(chrEntityId, NotEqual, 0) <= targetAmount);
        }
    }
    SpawnMapSFX(19012400);
    SpawnMapSFX(19012401);
    SpawnMapSFX(19012402);
    SpawnMapSFX(19012403);
    SpawnMapSFX(19012404);
    SpawnMapSFX(19012405);
    SpawnMapSFX(19012406);
    SetSpEffect(0, spEffectId);
});

$Event(19002830, Default, function(chrEntityId) {
    EndIf(EventFlag(19000830));
    WaitFor(HPRatio(chrEntityId) <= 0);
    DisableGenerator(19001230);
    ForceCharacterDeath(19005830, false);
    SetEventFlagID(19000830, ON);
});

$Event(19002831, Restart, function(chrEntityId, nameId) {
    if (EventFlag(19000830)) {
        DisableCharacter(chrEntityId);
        DisableCharacterCollision(chrEntityId);
        DisableCharacter(19005830);
        DisableCharacterCollision(19005830);
        EndEvent();
    }
    PlaySE(chrEntityId, SoundType.CharacterMotion, 754009500);
    DisableCharacter(chrEntityId);
    DisableCharacterCollision(chrEntityId);
    DisableCharacterAI(chrEntityId);
    DisableCharacter(19005836);
    DisableCharacterCollision(19005836);
    DisableCharacterAI(19005836);
    ForceAnimationPlayback(chrEntityId, 30029, true, false, false);
    ForceAnimationPlayback(19005835, 30005, true, false, false);
    ForceAnimationPlayback(19005836, 30005, true, false, false);
    WaitFor(
        InArea(10000, 19002801)
            || HasDamageType(chrEntityId, 0, DamageType.Any)
            || CharacterHasStateInfo(chrEntityId, 436)
            || CharacterHasStateInfo(chrEntityId, 2)
            || CharacterHasStateInfo(chrEntityId, 5)
            || CharacterHasStateInfo(chrEntityId, 6)
            || CharacterHasStateInfo(chrEntityId, 260));
    SetBossBGM(754000, BossBGMState.Start);
    ForceAnimationPlayback(chrEntityId, 20029, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
    EnableCharacter(19005836);
    EnableCharacterCollision(19005836);
    EnableCharacterAI(19005836);
    WaitFixedTimeSeconds(6.5);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});

$Event(19002832, Restart, function(chrEntityId) {
    WaitFor(CharacterHasSpEffect(chrEntityId, 45610));
    if (CharacterHasSpEffect(19000200, 45685)) {
        WarpCharacterAndCopyFloor(19000200, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000200, 5906);
    } else if (CharacterHasSpEffect(19000201, 45685)) {
        WarpCharacterAndCopyFloor(19000201, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000201, 5906);
    } else if (CharacterHasSpEffect(19000202, 45685)) {
        WarpCharacterAndCopyFloor(19000202, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000202, 5906);
    } else if (CharacterHasSpEffect(19000203, 45685)) {
        WarpCharacterAndCopyFloor(19000203, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000203, 5906);
    } else if (CharacterHasSpEffect(19000204, 45685)) {
        WarpCharacterAndCopyFloor(19000204, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000204, 5906);
    } else if (CharacterHasSpEffect(19000205, 45685)) {
        WarpCharacterAndCopyFloor(19000205, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000205, 5906);
    } else if (CharacterHasSpEffect(19000206, 45685)) {
        WarpCharacterAndCopyFloor(19000206, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000206, 5906);
    } else if (CharacterHasSpEffect(19000207, 45685)) {
        WarpCharacterAndCopyFloor(19000207, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000207, 5906);
    } else if (CharacterHasSpEffect(19000208, 45685)) {
        WarpCharacterAndCopyFloor(19000208, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000208, 5906);
    } else if (CharacterHasSpEffect(19000209, 45685)) {
        WarpCharacterAndCopyFloor(19000209, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000209, 5906);
    } else if (CharacterHasSpEffect(19000210, 45685)) {
        WarpCharacterAndCopyFloor(19000210, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000210, 5906);
    } else if (CharacterHasSpEffect(19000211, 45685)) {
        WarpCharacterAndCopyFloor(19000211, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000211, 5906);
    } else if (CharacterHasSpEffect(19000212, 45685)) {
        WarpCharacterAndCopyFloor(19000212, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000212, 5906);
    } else if (CharacterHasSpEffect(19000213, 45685)) {
        WarpCharacterAndCopyFloor(19000213, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000213, 5906);
    } else if (CharacterHasSpEffect(19000214, 45685)) {
        WarpCharacterAndCopyFloor(19000214, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000214, 5906);
    } else if (CharacterHasSpEffect(19000215, 45685)) {
        WarpCharacterAndCopyFloor(19000215, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000215, 5906);
    } else if (CharacterHasSpEffect(19000216, 45685)) {
        WarpCharacterAndCopyFloor(19000216, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000216, 5906);
    } else if (CharacterHasSpEffect(19000217, 45685)) {
        WarpCharacterAndCopyFloor(19000217, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000217, 5906);
    } else if (CharacterHasSpEffect(19000218, 45685)) {
        WarpCharacterAndCopyFloor(19000218, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000218, 5906);
    } else if (CharacterHasSpEffect(19000219, 45685)) {
        WarpCharacterAndCopyFloor(19000219, TargetEntityType.Character, chrEntityId, 23, chrEntityId);
        SetSpEffect(19000219, 5906);
        Goto(L0);
    }
L0:
    WaitFixedTimeSeconds(0.1);
    RestartEvent();
});

$Event(19002833, Restart, function(chrEntityId) {
    WaitFor(CharacterHasSpEffect(chrEntityId, 45612));
    if (CharacterHasSpEffect(19000200, 45685)) {
        WarpCharacterAndCopyFloor(19000200, TargetEntityType.Character, chrEntityId, 30, chrEntityId);
        SetSpEffect(19000200, 5906);
    } else if (CharacterHasSpEffect(19000205, 45685)) {
        WarpCharacterAndCopyFloor(19000205, TargetEntityType.Character, chrEntityId, 30, chrEntityId);
        SetSpEffect(19000205, 5906);
    } else if (CharacterHasSpEffect(19000210, 45685)) {
        WarpCharacterAndCopyFloor(19000210, TargetEntityType.Character, chrEntityId, 30, chrEntityId);
        SetSpEffect(19000210, 5906);
        Goto(L0);
    }
L0:
    if (CharacterHasSpEffect(19000201, 45685)) {
        WarpCharacterAndCopyFloor(19000201, TargetEntityType.Character, chrEntityId, 31, chrEntityId);
        SetSpEffect(19000201, 5906);
    } else if (CharacterHasSpEffect(19000206, 45685)) {
        WarpCharacterAndCopyFloor(19000201, TargetEntityType.Character, chrEntityId, 31, chrEntityId);
        SetSpEffect(19000206, 5906);
    } else if (CharacterHasSpEffect(19000211, 45685)) {
        WarpCharacterAndCopyFloor(19000211, TargetEntityType.Character, chrEntityId, 31, chrEntityId);
        SetSpEffect(19000211, 5906);
        Goto(L1);
    }
L1:
    if (CharacterHasSpEffect(19000202, 45685)) {
        WarpCharacterAndCopyFloor(19000202, TargetEntityType.Character, chrEntityId, 32, chrEntityId);
        SetSpEffect(19000202, 5906);
    } else if (CharacterHasSpEffect(19000207, 45685)) {
        WarpCharacterAndCopyFloor(19000207, TargetEntityType.Character, chrEntityId, 32, chrEntityId);
        SetSpEffect(19000207, 5906);
    } else if (CharacterHasSpEffect(19000212, 45685)) {
        WarpCharacterAndCopyFloor(19000212, TargetEntityType.Character, chrEntityId, 32, chrEntityId);
        SetSpEffect(19000212, 5906);
        Goto(L2);
    }
L2:
    if (CharacterHasSpEffect(19000203, 45685)) {
        WarpCharacterAndCopyFloor(19000203, TargetEntityType.Character, chrEntityId, 34, chrEntityId);
        SetSpEffect(19000203, 5906);
    } else if (CharacterHasSpEffect(19000208, 45685)) {
        WarpCharacterAndCopyFloor(19000208, TargetEntityType.Character, chrEntityId, 34, chrEntityId);
        SetSpEffect(19000208, 5906);
    } else if (CharacterHasSpEffect(19000213, 45685)) {
        WarpCharacterAndCopyFloor(19000213, TargetEntityType.Character, chrEntityId, 34, chrEntityId);
        SetSpEffect(19000213, 5906);
        Goto(L3);
    }
L3:
    if (CharacterHasSpEffect(19000204, 45685)) {
        WarpCharacterAndCopyFloor(19000204, TargetEntityType.Character, chrEntityId, 35, chrEntityId);
        SetSpEffect(19000204, 5906);
    } else if (CharacterHasSpEffect(19000209, 45685)) {
        WarpCharacterAndCopyFloor(19000209, TargetEntityType.Character, chrEntityId, 35, chrEntityId);
        SetSpEffect(19000209, 5906);
    } else if (CharacterHasSpEffect(19000214, 45685)) {
        WarpCharacterAndCopyFloor(19000214, TargetEntityType.Character, chrEntityId, 35, chrEntityId);
        SetSpEffect(19000214, 5906);
        Goto(L4);
    }
L4:
    if (CharacterHasSpEffect(19000205, 45685)) {
        WarpCharacterAndCopyFloor(19000205, TargetEntityType.Character, chrEntityId, 36, chrEntityId);
        SetSpEffect(19000205, 5906);
    } else if (CharacterHasSpEffect(19000210, 45685)) {
        WarpCharacterAndCopyFloor(19000208, TargetEntityType.Character, chrEntityId, 36, chrEntityId);
        SetSpEffect(19000210, 5906);
    } else if (CharacterHasSpEffect(19000215, 45685)) {
        WarpCharacterAndCopyFloor(19000215, TargetEntityType.Character, chrEntityId, 36, chrEntityId);
        SetSpEffect(19000215, 5906);
        Goto(L5);
    }
L5:
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(19002834, Restart, function(chrEntityId) {
    WaitFor(CharacterHasSpEffect(chrEntityId, 45613));
    if (CharacterHasSpEffect(19000200, 45685)) {
        WarpCharacterAndCopyFloor(19000200, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000200, 5905);
    } else if (CharacterHasSpEffect(19000201, 45685)) {
        WarpCharacterAndCopyFloor(19000201, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000201, 5905);
    } else if (CharacterHasSpEffect(19000202, 45685)) {
        WarpCharacterAndCopyFloor(19000202, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000202, 5905);
    } else if (CharacterHasSpEffect(19000203, 45685)) {
        WarpCharacterAndCopyFloor(19000203, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000203, 5905);
    } else if (CharacterHasSpEffect(19000204, 45685)) {
        WarpCharacterAndCopyFloor(19000204, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000204, 5905);
    } else if (CharacterHasSpEffect(19000205, 45685)) {
        WarpCharacterAndCopyFloor(19000205, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000205, 5905);
    } else if (CharacterHasSpEffect(19000206, 45685)) {
        WarpCharacterAndCopyFloor(19000206, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000206, 5905);
    } else if (CharacterHasSpEffect(19000207, 45685)) {
        WarpCharacterAndCopyFloor(19000207, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000207, 5905);
    } else if (CharacterHasSpEffect(19000208, 45685)) {
        WarpCharacterAndCopyFloor(19000208, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000208, 5905);
    } else if (CharacterHasSpEffect(19000209, 45685)) {
        WarpCharacterAndCopyFloor(19000209, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000209, 5905);
    } else if (CharacterHasSpEffect(19000210, 45685)) {
        WarpCharacterAndCopyFloor(19000210, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000210, 5905);
    } else if (CharacterHasSpEffect(19000211, 45685)) {
        WarpCharacterAndCopyFloor(19000211, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000211, 5905);
    } else if (CharacterHasSpEffect(19000212, 45685)) {
        WarpCharacterAndCopyFloor(19000212, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000212, 5905);
    } else if (CharacterHasSpEffect(19000213, 45685)) {
        WarpCharacterAndCopyFloor(19000213, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000213, 5905);
    } else if (CharacterHasSpEffect(19000214, 45685)) {
        WarpCharacterAndCopyFloor(19000214, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000214, 5905);
    } else if (CharacterHasSpEffect(19000215, 45685)) {
        WarpCharacterAndCopyFloor(19000215, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000215, 5905);
    } else if (CharacterHasSpEffect(19000216, 45685)) {
        WarpCharacterAndCopyFloor(19000216, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000216, 5905);
    } else if (CharacterHasSpEffect(19000217, 45685)) {
        WarpCharacterAndCopyFloor(19000217, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000217, 5905);
    } else if (CharacterHasSpEffect(19000218, 45685)) {
        WarpCharacterAndCopyFloor(19000218, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000218, 5905);
    } else if (CharacterHasSpEffect(19000219, 45685)) {
        WarpCharacterAndCopyFloor(19000219, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(19000219, 5905);
        Goto(L0);
    }
L0:
    WaitFixedTimeSeconds(0.1);
    RestartEvent();
});

$Event(19002835, Restart, function(chrEntityId) {
    WaitFor(CharacterHasSpEffect(chrEntityId, 45614));
    if (CharacterHasSpEffect(19000220, 45685)) {
        WarpCharacterAndCopyFloor(19000220, TargetEntityType.Character, chrEntityId, 248, chrEntityId);
        SetSpEffect(19000220, 5907);
    } else if (CharacterHasSpEffect(19000220, 45685)) {
        WarpCharacterAndCopyFloor(19000220, TargetEntityType.Character, chrEntityId, 248, chrEntityId);
        SetSpEffect(19000220, 5907);
    } else if (CharacterHasSpEffect(19000220, 45685)) {
        WarpCharacterAndCopyFloor(19000220, TargetEntityType.Character, chrEntityId, 248, chrEntityId);
        SetSpEffect(19000220, 5907);
        Goto(L0);
    }
L0:
    WaitFixedTimeSeconds(0.1);
    RestartEvent();
});

$Event(19002840, Restart, function(chrEntityId) {
    WaitFor(CharacterHasSpEffect(chrEntityId, 45611));
    SetSpEffect(19005836, 5900);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(19002841, Restart, function() {
    DisableNetworkSync();
    WaitFor(EventFlag(7510) || PlayerInMap(19, 0, 0, 0));
    ChangeCamera(7549);
});

$Event(19002850, Default, function(chrEntityId) {
    EndIf(EventFlag(19000840));
    WaitFor(HPRatio(chrEntityId) <= 0);
    WaitFixedTimeSeconds(5);
    Unknown2003115(chrEntityId, 1010);
    SetEventFlagID(19000840, ON);
});

$Event(19002851, Restart, function(chrEntityId, nameId) {
    if (EventFlag(19000840)) {
        DisableCharacter(chrEntityId);
        DisableCharacterCollision(chrEntityId);
        EndEvent();
    }
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    DisableCharacterAI(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 20000, true, false, false);
    WaitFor(
        InArea(10000, 19002801)
            || HasDamageType(chrEntityId, 0, DamageType.Any)
            || CharacterHasStateInfo(chrEntityId, 436)
            || CharacterHasStateInfo(chrEntityId, 2)
            || CharacterHasStateInfo(chrEntityId, 5)
            || CharacterHasStateInfo(chrEntityId, 6)
            || CharacterHasStateInfo(chrEntityId, 260));
    ForceAnimationPlayback(chrEntityId, 20005, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});

$Event(19002860, Default, function(chrEntityId) {
    EndIf(EventFlag(19000850));
    WaitFor(HPRatio(chrEntityId) <= 0);
    WaitFixedTimeSeconds(5);
    SetEventFlagID(19000850, ON);
});

$Event(19002861, Restart, function(chrEntityId, nameId) {
    if (EventFlag(19000850)) {
        DisableCharacter(chrEntityId);
        DisableCharacterCollision(chrEntityId);
        EndEvent();
    }
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    DisableCharacterAI(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 30029, true, false, false);
    WaitFor(
        InArea(10000, 19002801)
            || HasDamageType(chrEntityId, 0, DamageType.Any)
            || CharacterHasStateInfo(chrEntityId, 436)
            || CharacterHasStateInfo(chrEntityId, 2)
            || CharacterHasStateInfo(chrEntityId, 5)
            || CharacterHasStateInfo(chrEntityId, 6)
            || CharacterHasStateInfo(chrEntityId, 260));
    SetBossBGM(760000, BossBGMState.Start);
    ForceAnimationPlayback(chrEntityId, 20029, false, true, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});

$Event(19002862, Restart, function() {
    DisableNetworkSync();
    if (IsPlayerNo(1)) {
        SetSpEffect(20000, 46330);
    }
    if (IsPlayerNo(2)) {
        SetSpEffect(20000, 46331);
    }
    if (IsPlayerNo(3)) {
        SetSpEffect(20000, 46332);
    }
    // TODO: Fulghor
    // SpEffects referenced in AI scripts
});

$Event(19002870, Default, function(chrEntityId) {
    EndIf(EventFlag(19000860));
    WaitFor(HPRatio(chrEntityId) <= 0);
    WaitFixedTimeSeconds(5);
    SetEventFlagID(19000860, ON);
    SetNetworkconnectedEventFlagID(7512, ON);
});

$Event(19002871, Restart, function(chrEntityId, nameId) {
    if (EventFlag(19000860)) {
        DisableCharacter(chrEntityId);
        DisableCharacterCollision(chrEntityId);
        EndEvent();
    }
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    DisableCharacterAI(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 30029, true, false, false);
    SetEventPoint(19000860, 19002860, 0);
    WaitFor(
        InArea(10000, 19002801)
            || HasDamageType(chrEntityId, 0, DamageType.Any)
            || CharacterHasStateInfo(chrEntityId, 436)
            || CharacterHasStateInfo(chrEntityId, 2)
            || CharacterHasStateInfo(chrEntityId, 5)
            || CharacterHasStateInfo(chrEntityId, 6)
            || CharacterHasStateInfo(chrEntityId, 260));
    SetBossBGM(490000, BossBGMState.Start);
    ForceAnimationPlayback(chrEntityId, 20029, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
    SetEventPoint(19000860, 19002860, 0);
    SetNetworkconnectedEventFlagID(7511, ON);
});

$Event(19002880, Restart, function(eventFlagId, bgmBossConvParamId, eventFlagId2, eventFlagId3, value, value2) {
    DisableNetworkSync();
    if (EventFlag(eventFlagId)) {
        EndEvent();
    }
L0:
    WaitFor(EventFlag(eventFlagId2));
    WaitFixedTimeFrames(1);
    if (!EventFlag(eventFlagId3)) {
        SetBossBGM(bgmBossConvParamId, BossBGMState.Start);
    }
    WaitFor(EventFlag(eventFlagId3) || EventFlag(eventFlagId));
    if (!EventFlag(eventFlagId)) {
        WaitFixedTimeFrames(1);
        if (Signed(value) != 0) {
        }
        SetBossBGM(bgmBossConvParamId, BossBGMState.HeatUp);
        WaitFor(EventFlag(eventFlagId));
    }
L1:
    if (Signed(value2) != 1) {
        SetBossBGM(bgmBossConvParamId, BossBGMState.Stop2);
        EndEvent();
    }
    SetBossBGM(bgmBossConvParamId, BossBGMState.Stop1);
});

$Event(19002890, Restart, function() {
    WaitFor(EventFlag(19002895));
    DisableCharacterAI(19000820);
    DisableCharacterAI(19000821);
    ForceAnimationPlayback(19000820, 20035, false, false, false);
    ForceAnimationPlayback(19000821, 20035, false, true, false);
    ForceAnimationPlayback(19000820, 30015, true, false, false);
    ForceAnimationPlayback(19000821, 30015, true, false, false);
    WaitFor(ElapsedSeconds(4));
    SetCharacterBackreadState(19000828, false);
    WarpCharacterAndCopyFloorUnknown200489(19000828, TargetEntityType.Character, 19000821, 220, 0, -1, -1);
    WaitFor(ElapsedFrames(1));
    ForceAnimationPlayback(19000828, 20010, true, true, false);
    WaitFor(ElapsedSeconds(12));
    ForceAnimationPlayback(19000820, 20036, false, false, false);
    ForceAnimationPlayback(19000821, 20036, false, false, false);
    EnableCharacterAI(19000820);
    EnableCharacterAI(19000821);
});

$Event(19002891, Restart, function() {
    WaitFor(EventFlag(19002896));
    DisableCharacterAI(19000820);
    DisableCharacterAI(19000821);
    ForceAnimationPlayback(19000820, 20035, false, false, false);
    ForceAnimationPlayback(19000821, 20035, false, true, false);
    ForceAnimationPlayback(19000820, 30015, true, false, false);
    ForceAnimationPlayback(19000821, 30015, true, false, false);
    ForceAnimationPlayback(19000828, 20011, false, true, false);
    SetCharacterBackreadState(19000828, false);
    WarpCharacterAndCopyFloorUnknown200489(19000828, TargetEntityType.Character, 19000821, 220, 0, -1, -1);
    WaitFor(ElapsedFrames(1));
    ForceAnimationPlayback(19000828, 20012, false, true, false);
    WarpCharacterAndCopyFloorUnknown200489(19000828, TargetEntityType.Character, 19000821, 220, 0, -1, -1);
    WaitFor(ElapsedFrames(1));
    ForceAnimationPlayback(19000828, 20013, false, true, false);
    ForceAnimationPlayback(19000828, 20013, true, false, false);
    ForceAnimationPlayback(19000821, 30015, true, false, false);
    WaitFor(ElapsedSeconds(8));
    ForceAnimationPlayback(19000828, 20015, false, false, false);
    ForceAnimationPlayback(19000821, 20036, false, false, false);
    EnableCharacterAI(19000820);
    EnableCharacterAI(19000821);
});

$Event(19002892, Restart, function() {
    WaitFor(EventFlag(19002897));
    DisableCharacterAI(19000820);
    DisableCharacterAI(19000821);
    ForceAnimationPlayback(19000820, 20035, false, false, false);
    ForceAnimationPlayback(19000821, 20035, false, true, false);
    ForceAnimationPlayback(19000820, 30015, true, false, false);
    ForceAnimationPlayback(19000821, 30015, true, false, false);
    ForceAnimationPlayback(19000828, 20011, false, true, false);
    SetCharacterBackreadState(19000828, false);
    WarpCharacterAndCopyFloorUnknown200489(19000828, TargetEntityType.Character, 19000820, 220, 0, -1, -1);
    WaitFor(ElapsedFrames(1));
    ForceAnimationPlayback(19000828, 20012, false, true, false);
    WarpCharacterAndCopyFloorUnknown200489(19000828, TargetEntityType.Character, 19000820, 220, 0, -1, -1);
    WaitFor(ElapsedFrames(1));
    ForceAnimationPlayback(19000828, 20013, false, true, false);
    ForceAnimationPlayback(19000828, 20013, true, false, false);
    ForceAnimationPlayback(19000820, 30015, true, false, false);
    WaitFor(ElapsedSeconds(8));
    ForceAnimationPlayback(19000828, 20015, false, false, false);
    ForceAnimationPlayback(19000820, 20036, false, false, false);
    EnableCharacterAI(19000820);
    EnableCharacterAI(19000821);
});

$Event(19004500, Restart, function(eventFlagId, chrEntityId) {
    DisableNetworkSync();
    WaitFor(
        !CharacterHasSpEffect(20000, 9731)
            && !EventFlag(115)
            && !EventFlag(eventFlagId)
            && CharacterDead(chrEntityId));
    WaitFixedTimeSeconds(10);
    DisplayNetworkconnectedPermanentBuffPopup(131);
    SetSpEffect(20000, 9731);
});

