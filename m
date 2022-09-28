Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 262015ED44E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Sep 2022 07:45:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D98860BA8;
	Wed, 28 Sep 2022 05:45:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D98860BA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664343927;
	bh=tpKfqKTCxqDTY9yB99miThI0/1qJNz74nroFYy5dB8Q=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9GKSGpqAiQH5vukR10mlNND9Iw7eExTQ+/hhSbZTwnI2LE58Nmonzz/rSaRzO5i+D
	 8WFfhxNNDU8fjiiKPIogROgjgOBaImi6tNOG1X6x8+55pmRCQWJvbwqRP6dihuTO/b
	 xJInOflFYWJkbMFeZbr8ilEmEPB7CpZdAMR3tM7qqVdmh1Is/OgQi4Yf+uDtGo5cQR
	 o77kb0rrvJt902cJNReMNQv+Ucsjj8kKYe/RtXLmp3UuvAhqSJqx2bcwIv2Sk8HDEy
	 j+0K0BKpk8ekyPvR/VN7TRpYv+wDhD76ahbyZkc5DPIYfsBXsdSxRbO2LRUdHmZeB+
	 776bwC4Gzr7SQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SVdAVp8V6Ku1; Wed, 28 Sep 2022 05:45:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5418607F4;
	Wed, 28 Sep 2022 05:45:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5418607F4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBEE21BF909
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 05:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5FDE404E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 05:45:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5FDE404E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I9e3WyIItZLT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Sep 2022 05:45:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D188402FE
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D188402FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 05:45:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="288668084"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="288668084"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 22:45:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="950563503"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="950563503"
Received: from lkp-server02.sh.intel.com (HELO dfa2c9fcd321) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 27 Sep 2022 22:45:09 -0700
Received: from kbuild by dfa2c9fcd321 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1odPsb-00023N-0f;
 Wed, 28 Sep 2022 05:45:09 +0000
Date: Wed, 28 Sep 2022 13:44:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6333df48.3c0NOPyIP4SAZ1R8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664343919; x=1695879919;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=1g1MKm0sxHOF0Ql45dNkdf3U9+wDI8iEGtFihshuFnE=;
 b=QKHeXwP0m0h8+PVsmdnoRPI9Dux74tej21zUVrCgelt3IpXb82HZ+ZAB
 lauqleeM2hubbBzJCRuez5jSNoKtPHLJdcKBeexENVkrIes18+HpP2+up
 KkTP+kYwVL1oNRFSYHZ9exBr+576bHCfXHX4Mzd+87vi7K2hG0nHqQeaC
 NGn2D7pcOp2QlFB+XV/SB6UpaPXaZY3rx+RMcr9hohqjBUPSCw2EngHIu
 ZF/Ta3kmjtPbSpcW/1IkLToF/Osq90c3/o6Pq8pbziSJrglPzeoRO2/Tv
 /HSVAnuREqNMr4dD4VolvclDCVhKX1f8RCUf8isx1jTtSW1lGktuu5SbD
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QKHeXwP0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 7bcd9683e51575c72c9289c05213150245d1c186
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
branch HEAD: 7bcd9683e51575c72c9289c05213150245d1c186  selftests/net: enable io_uring sendzc testing

elapsed time: 871m

configs tested: 117
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64               randconfig-a002-20220926
x86_64               randconfig-a001-20220926
x86_64               randconfig-a003-20220926
x86_64               randconfig-a005-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a006-20220926
arc                  randconfig-r043-20220925
riscv                randconfig-r042-20220925
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                                defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                             allyesconfig
ia64                             allmodconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sh                        sh7763rdp_defconfig
ia64                             alldefconfig
powerpc                     asp8347_defconfig
i386                 randconfig-a003-20220926
i386                 randconfig-a001-20220926
i386                 randconfig-a006-20220926
i386                 randconfig-a004-20220926
i386                 randconfig-a005-20220926
i386                 randconfig-a002-20220926
s390                       zfcpdump_defconfig
powerpc                      tqm8xx_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220925
i386                          randconfig-c001
sh                           se7750_defconfig
powerpc                      mgcoge_defconfig
riscv                            allyesconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
i386                             alldefconfig
mips                        bcm47xx_defconfig
sh                          urquell_defconfig
arc                      axs103_smp_defconfig
sparc                             allnoconfig
sparc64                             defconfig
arm                           h3600_defconfig
nios2                            alldefconfig
arm                         s3c6400_defconfig
m68k                        m5272c3_defconfig
arm                           stm32_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002

clang tested configs:
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926
x86_64                        randconfig-k001
i386                 randconfig-a011-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a014-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a016-20220926
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a016-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
x86_64               randconfig-a015-20220926
powerpc                 mpc8560_ads_defconfig
powerpc                    ge_imp3a_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                         lpc32xx_defconfig
arm                       imx_v4_v5_defconfig
riscv                    nommu_virt_defconfig
arm                  colibri_pxa270_defconfig
arm                       versatile_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
