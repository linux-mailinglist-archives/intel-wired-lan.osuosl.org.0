Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9015B33AC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Sep 2022 11:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09F9C607D1;
	Fri,  9 Sep 2022 09:24:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09F9C607D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662715462;
	bh=ptIMHbjT22/OAAtr/RFtw2d1Q5Y+5fw3wuTRlfFuy7c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rSG6zSnMJ+LFsRB9T7E/N90FAjsFfHy5ljPGvHyH0x3RgJYjjX5th5gs0n21SKGsu
	 G/z86ZvM6uWa7wnOETYqjUHeoX+tJ32kgR1vwEr6ToAKYfsMq0p08VmKEbhaY3nxzi
	 BfjSXheKgNMVkdlQ0JFiZCnK0ath30al5hQav63rUsAOBWvGRC3NaUuZctWxkyK5IN
	 Os2UoFSXPommWK+3rRusHEa05SDosp7vuTlOkL6vdc/s5uNFbrxFC6aDrMdGBqz4ZU
	 UbgqgrCJkq0TmpFaWhGsgv/lEjXNFNr5t16VaOdE3x5p90Xli3qXtboJAP1O/CtYGD
	 O44TPQyYJ6wvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jecsm1Eh9CNX; Fri,  9 Sep 2022 09:24:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D65F86074C;
	Fri,  9 Sep 2022 09:24:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D65F86074C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C9D481BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 09:24:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF286410C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 09:24:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF286410C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xTtBuX4fTuPf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Sep 2022 09:24:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71CD6410B0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71CD6410B0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 09:24:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="383730472"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="383730472"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 02:24:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="592545011"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 09 Sep 2022 02:24:04 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWaF1-0000zJ-2V;
 Fri, 09 Sep 2022 09:24:03 +0000
Date: Fri, 09 Sep 2022 17:23:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <631b0620.ZgTo1AXcV2m5NzgB%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662715454; x=1694251454;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Jv6no4/pOfFR7QYrEexjcj1ob9ELzjpqDpYnUStzlwM=;
 b=aDzEm5NBQHqVq5Cfa0X5qtalh/d/SCZWSenNgYwAy57B65+WZaqrSK++
 UnI+nkroVgyCgSUZgt/Yc0fmeiUxmD6w3C+I404hQ4Y06+YgoWLZylD/o
 dPWLeWHTFLdeETPtnulDyVQcS311ddwy5FfiNLBQpgnoDKDTTUxIUnaY/
 9uqEmi3j3LRSNLI077OoYPYQMzVggXxr5p7aUzO7pCNAze+jg4l5e3G3O
 rswPUJfqzwZaZYFc+6ylzxRPZb0w5Gnaa19FvAf63lXCKFasl5X17V6vI
 QFGVmdFVQCOjX6vgLHqpZQJ/O+hCrbjKYQXO939ykQ40qBVSaPbtyw3hL
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aDzEm5NB
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 75554fe00f941c3c3d9344e88708093a14d2b4b8
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 75554fe00f941c3c3d9344e88708093a14d2b4b8  net: sparx5: fix function return type to match actual type

elapsed time: 1146m

configs tested: 65
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20220907
i386                             allyesconfig
i386                                defconfig
um                           x86_64_defconfig
um                             i386_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
arm                                 defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
powerpc                           allnoconfig
x86_64                           rhel-8.3-kvm
powerpc                          allmodconfig
sh                               allmodconfig
mips                             allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm64                            allyesconfig
arm                              allyesconfig
mips                     decstation_defconfig
powerpc                     stx_gp3_defconfig
sh                          sdk7780_defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-c001
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm                      footbridge_defconfig
arm                        realview_defconfig
m68k                       m5275evb_defconfig
loongarch                         allnoconfig
arm                             pxa_defconfig
arc                              alldefconfig
arm                           u8500_defconfig
arc                    vdk_hs38_smp_defconfig
sh                         microdev_defconfig
mips                           xway_defconfig
loongarch                           defconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220907
hexagon              randconfig-r045-20220907
s390                 randconfig-r044-20220907
riscv                randconfig-r042-20220907
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-k001
mips                           mtx1_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
