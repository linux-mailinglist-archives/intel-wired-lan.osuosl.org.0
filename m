Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE55B741FD0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 07:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 746C460E48;
	Thu, 29 Jun 2023 05:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 746C460E48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688016147;
	bh=/RZ9h/wrDAx2ygjSUfbNi1JpSTeHDNo/XGekX6VSvXA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IUmEYvSAMdsecYHbk4CCwq3TUU2i+JHtNsw0S4KG2qMRYz5XDRZKcvVxxUzO9vmXY
	 4ljpndyU1Lz46j+pg4ljXGeLmBaD4e5e3cVvZqvnJX+j/7pfu7TCO50XuBMAgG3SzB
	 Td7XOIHgKYzLjBvQTdYCB4PNG/tViiYHp/agu34s2J2eH0wJmjJFBRuvxqAG70UoJK
	 FZVteQS9/51TZGGqe3SEEBv4uDBjNbr6KT3x5XoAyTetmWdnmDB+cKFwOOvUqRhukU
	 BT2T9k67RFsfwJEsG6NcSbHqz1XmnOHO3H6afhIh3N+LGFCHSo5Y0t//D6/CYBzsJw
	 3tlsrnGRDCg0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gitZNje4QkmR; Thu, 29 Jun 2023 05:22:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06B2460E25;
	Thu, 29 Jun 2023 05:22:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06B2460E25
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AFB021BF39D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 05:22:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87AA040516
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 05:22:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87AA040516
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LSf5C8Qnzn8a for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 05:22:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6857840135
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6857840135
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 05:22:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="448410422"
X-IronPort-AV: E=Sophos;i="6.01,167,1684825200"; d="scan'208";a="448410422"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 22:22:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="752526660"
X-IronPort-AV: E=Sophos;i="6.01,167,1684825200"; d="scan'208";a="752526660"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 28 Jun 2023 22:22:11 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qEk6d-000Dqy-0E
 for intel-wired-lan@lists.osuosl.org; Thu, 29 Jun 2023 05:22:11 +0000
Date: Thu, 29 Jun 2023 13:22:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306291303.w8MaMDpo-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688016139; x=1719552139;
 h=date:from:to:subject:message-id;
 bh=Ljmnqfh7obOFoURQ3caLVH/0+BO8xUnp5et4HlCfHdU=;
 b=kK6zyD3xjP6xcVQZn/jAA9/Vw2l2pEgn2VJ1Z9rYce6PAsdKANW8YY1X
 36/rPPXSGzG686rwIQlhuucSEEZxUd993iZfzidhQYOgHQkBDybc8vYfG
 Whw36MEzO2prZRCkEOJmfyrDY/Z/WOQ0Ph7qo7WZtc5ppAVSN/tOqbjuZ
 /UTg4aUsW4SphGgnRnKndX0AxfV00Oyps1bspwwo+xMq4vgHFTAD8Deqz
 bbEKs5fH5b3gZWOB0xwiXLyToibjFbaY++merfhHAT0QLXqAkMgGNrCsW
 Sgzdc8Ako+XLJIxqSJ6Mp/bJ8dsFJ6tylBg9jrU9qn62M9gx+XeB2gtYD
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kK6zyD3x
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 ae230642190a51b85656d6da2df744d534d59544
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: ae230642190a51b85656d6da2df744d534d59544  Merge branch 'af_unix-followup-fixes-for-so_passpidfd'

elapsed time: 2044m

configs tested: 206
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230628   gcc  
alpha                randconfig-r006-20230628   gcc  
alpha                randconfig-r012-20230628   gcc  
alpha                randconfig-r013-20230627   gcc  
alpha                randconfig-r014-20230627   gcc  
alpha                randconfig-r031-20230627   gcc  
alpha                randconfig-r032-20230628   gcc  
alpha                randconfig-r035-20230627   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                  randconfig-r006-20230628   gcc  
arc                  randconfig-r036-20230627   gcc  
arc                  randconfig-r043-20230627   gcc  
arc                  randconfig-r043-20230628   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                       imx_v6_v7_defconfig   gcc  
arm                         mv78xx0_defconfig   clang
arm                  randconfig-r002-20230628   gcc  
arm                  randconfig-r013-20230627   gcc  
arm                  randconfig-r015-20230627   gcc  
arm                  randconfig-r016-20230627   gcc  
arm                  randconfig-r046-20230627   gcc  
arm                  randconfig-r046-20230628   clang
arm                    vt8500_v6_v7_defconfig   clang
arm                         wpcm450_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230628   clang
arm64                randconfig-r011-20230628   gcc  
arm64                randconfig-r016-20230628   gcc  
arm64                randconfig-r023-20230627   clang
csky                                defconfig   gcc  
csky                 randconfig-r006-20230627   gcc  
csky                 randconfig-r016-20230627   gcc  
csky                 randconfig-r031-20230627   gcc  
hexagon              randconfig-r001-20230627   clang
hexagon              randconfig-r003-20230627   clang
hexagon              randconfig-r004-20230627   clang
hexagon              randconfig-r022-20230628   clang
hexagon              randconfig-r041-20230627   clang
hexagon              randconfig-r041-20230628   clang
hexagon              randconfig-r045-20230627   clang
hexagon              randconfig-r045-20230628   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230628   clang
i386         buildonly-randconfig-r005-20230628   clang
i386         buildonly-randconfig-r006-20230628   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230628   clang
i386                 randconfig-i002-20230628   clang
i386                 randconfig-i003-20230628   clang
i386                 randconfig-i004-20230628   clang
i386                 randconfig-i005-20230628   clang
i386                 randconfig-i006-20230628   clang
i386                 randconfig-i011-20230628   gcc  
i386                 randconfig-i012-20230628   gcc  
i386                 randconfig-i013-20230628   gcc  
i386                 randconfig-i014-20230628   gcc  
i386                 randconfig-i015-20230628   gcc  
i386                 randconfig-i016-20230628   gcc  
i386                 randconfig-r004-20230627   gcc  
i386                 randconfig-r005-20230628   clang
i386                 randconfig-r024-20230628   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230628   gcc  
loongarch            randconfig-r025-20230627   gcc  
loongarch            randconfig-r025-20230628   gcc  
loongarch            randconfig-r034-20230627   gcc  
loongarch            randconfig-r034-20230628   gcc  
loongarch            randconfig-r035-20230628   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
m68k                 randconfig-r001-20230628   gcc  
m68k                 randconfig-r002-20230627   gcc  
m68k                 randconfig-r012-20230627   gcc  
m68k                 randconfig-r031-20230628   gcc  
microblaze           randconfig-r001-20230628   gcc  
microblaze           randconfig-r002-20230627   gcc  
microblaze           randconfig-r005-20230627   gcc  
microblaze           randconfig-r024-20230627   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
mips                     loongson2k_defconfig   clang
mips                 randconfig-r011-20230628   clang
mips                 randconfig-r012-20230627   gcc  
mips                 randconfig-r025-20230627   gcc  
mips                 randconfig-r026-20230628   clang
mips                 randconfig-r033-20230627   clang
mips                 randconfig-r036-20230628   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230627   gcc  
nios2                randconfig-r021-20230627   gcc  
nios2                randconfig-r022-20230627   gcc  
nios2                randconfig-r034-20230627   gcc  
nios2                randconfig-r035-20230627   gcc  
openrisc             randconfig-r004-20230628   gcc  
openrisc             randconfig-r021-20230628   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230628   gcc  
parisc               randconfig-r005-20230627   gcc  
parisc               randconfig-r023-20230628   gcc  
parisc               randconfig-r026-20230627   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     kilauea_defconfig   clang
powerpc                       maple_defconfig   gcc  
powerpc                      ppc44x_defconfig   clang
powerpc              randconfig-r026-20230628   gcc  
powerpc              randconfig-r035-20230628   clang
powerpc                     redwood_defconfig   gcc  
powerpc                  storcenter_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230628   clang
riscv                randconfig-r011-20230627   clang
riscv                randconfig-r042-20230627   clang
riscv                randconfig-r042-20230628   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230627   clang
s390                 randconfig-r033-20230627   gcc  
s390                 randconfig-r033-20230628   clang
s390                 randconfig-r044-20230627   clang
s390                 randconfig-r044-20230628   gcc  
sh                               allmodconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                   randconfig-r003-20230628   gcc  
sh                   randconfig-r011-20230628   gcc  
sh                   randconfig-r024-20230627   gcc  
sh                   randconfig-r024-20230628   gcc  
sh                           se7722_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r013-20230628   gcc  
sparc                randconfig-r034-20230628   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r002-20230628   gcc  
sparc64              randconfig-r016-20230628   gcc  
sparc64              randconfig-r025-20230628   gcc  
sparc64              randconfig-r031-20230628   gcc  
sparc64              randconfig-r032-20230627   gcc  
sparc64              randconfig-r033-20230628   gcc  
um                               alldefconfig   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r023-20230628   clang
um                   randconfig-r032-20230627   clang
um                   randconfig-r036-20230627   clang
um                   randconfig-r036-20230628   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230628   clang
x86_64       buildonly-randconfig-r002-20230628   clang
x86_64       buildonly-randconfig-r003-20230628   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r014-20230628   gcc  
x86_64               randconfig-r021-20230628   gcc  
x86_64               randconfig-x001-20230628   gcc  
x86_64               randconfig-x002-20230628   gcc  
x86_64               randconfig-x003-20230628   gcc  
x86_64               randconfig-x004-20230628   gcc  
x86_64               randconfig-x005-20230628   gcc  
x86_64               randconfig-x006-20230628   gcc  
x86_64               randconfig-x011-20230628   clang
x86_64               randconfig-x012-20230628   clang
x86_64               randconfig-x013-20230628   clang
x86_64               randconfig-x014-20230628   clang
x86_64               randconfig-x015-20230628   clang
x86_64               randconfig-x016-20230628   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r004-20230628   gcc  
xtensa               randconfig-r013-20230628   gcc  
xtensa               randconfig-r015-20230627   gcc  
xtensa               randconfig-r022-20230627   gcc  
xtensa               randconfig-r023-20230627   gcc  
xtensa               randconfig-r032-20230628   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
