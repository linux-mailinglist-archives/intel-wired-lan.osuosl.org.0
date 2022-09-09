Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDE85B36F5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Sep 2022 14:09:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D806940FCB;
	Fri,  9 Sep 2022 12:09:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D806940FCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662725366;
	bh=HeOHN0QM0rYUqdh6Sw6HLrwSlKKVpVW7/bx5faX6YjY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vkMPmEMvKmOYI4VMehBFpS12DpKUaKfgHlf4Qe30TD/yMVvO6z5xb0HTrcW6W50WF
	 O+riEF+CyLd3R/A7FPRrRsTtppS6C6wxUJxjbc3YqkrOfbCfxVmNM8Pms7Rqr7iil2
	 fMUm+nhNJHK4eH39kgr+WkYo28feo7Uo2lPPeG02BYWWU4jIHCO0ruNBq1d5NITjbf
	 6u+aHxu0R51Y4J7KretGMK4SDLung3lEsKkdxiOMP28pJiEkLjo+rEKfXGvn2JJ3Lj
	 SftPoJPdVZ9SU7PrEKaTdPba1QRgsdmvQpfQy/4fhAgKijdak2OsCBm/rFWivNBSkw
	 y5yWf4bCnf0dg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w4KFJku5xtYG; Fri,  9 Sep 2022 12:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB80140FC4;
	Fri,  9 Sep 2022 12:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB80140FC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 118F41BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 12:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFDC4610A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 12:09:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFDC4610A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id igZx6scwNKZD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Sep 2022 12:09:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE3AE61095
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE3AE61095
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 12:09:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="298262897"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="298262897"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 05:09:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="645513870"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 09 Sep 2022 05:09:17 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWcou-00019F-2L;
 Fri, 09 Sep 2022 12:09:16 +0000
Date: Fri, 09 Sep 2022 20:08:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <631b2cbd.7UvdvHPmCj43nbdZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662725358; x=1694261358;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=IebPoczRccRlp/jqIl+YqgZ1SwfF3TxswRKeFZ6BL/s=;
 b=DEzA1Gi9zx4rVlcyF52X5dqq6JIRYDS0XGjsDR/D25XJzQHSi+hpN0zu
 C8eWfftac43fLWKVwpM2vrVMWJVaqZNO+Aikg+rOrY1K77/XXq8t5aUGD
 fOnvyGtRR2k+0dIqtrNwn67ebXnexr9Vw+t2GldS64MbS4xIDHedqgvmd
 vRr4ZgCihju2ttfsKHdCLHLTm09GM2fUiekjXkRFdx2tfqd7jr5mxDsxP
 hcC4tpnbDFmWNZMU6x5AazEVOoCSrDbRfzkcr8bt+yGaMc2OLROi7Qo/I
 ySIiQHscJ6ayfyLnAhyUmX8mAZQ1kxNbng/3yyiBXt8RsPMixKvmZhiNT
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DEzA1Gi9
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 f5efed95c9516efb5f70059d5a01c539945d6427
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: f5efed95c9516efb5f70059d5a01c539945d6427  ice: Add L2TPv3 hardware offload support

elapsed time: 1087m

configs tested: 81
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
i386                                defconfig
x86_64                           allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
x86_64                          rhel-8.3-func
x86_64                        randconfig-a004
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a002
powerpc                           allnoconfig
x86_64                    rhel-8.3-kselftests
mips                             allyesconfig
x86_64                           rhel-8.3-syz
powerpc                          allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a006
i386                             allyesconfig
sh                               allmodconfig
i386                          randconfig-a014
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220908
riscv                randconfig-r042-20220908
arm                                 defconfig
arc                  randconfig-r043-20220907
s390                 randconfig-r044-20220908
arm64                            allyesconfig
arm                              allyesconfig
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
i386                          randconfig-c001
arc                    vdk_hs38_smp_defconfig
sh                         microdev_defconfig
mips                           xway_defconfig
loongarch                           defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
i386                          randconfig-a002
i386                          randconfig-a004
s390                 randconfig-r044-20220907
hexagon              randconfig-r041-20220907
i386                          randconfig-a006
hexagon              randconfig-r041-20220908
riscv                randconfig-r042-20220907
hexagon              randconfig-r045-20220908
hexagon              randconfig-r045-20220907
x86_64                        randconfig-k001
mips                           mtx1_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
