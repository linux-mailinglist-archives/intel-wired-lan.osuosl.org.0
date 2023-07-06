Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44862749793
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 10:37:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B224415FE;
	Thu,  6 Jul 2023 08:37:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B224415FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688632657;
	bh=UFVnYu3Z5SqbGGGI0RmcKrG62V1HeX1oGL83fyd/Z/U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xfSaKss8vPljs+H/cVyzrLFG1W+JBmsHIlpcNTQKhwcy7NDCGArpSrh4R3Ww9HhwS
	 XGY5Fnkw+s6ce/a4h711YnSqsWU37PLbEOM4iaeyGcLm/qPZ555kq1zyWNkNjBU/03
	 VmZLODKUiqMMFfMH8WL9Ef6Ubl9GIHuE+GRF9DT3OcJjdT1vaQqlAyudr42cGrd4Ke
	 6ESVfOnvz6Gk1HgZTwR7ArUVO18Tsh5YxA/o+A0FjFlyylrr599yDccuxz8g5oXasf
	 Fp4a3JDRcrj/cp2P45sRmNqyXUFFwxcCaXpIbuwV7e1FVmr18+sUJFAFJ8kId3yMjc
	 l4znae0oOVK5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yJ4tT_4snbZH; Thu,  6 Jul 2023 08:37:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3385405C4;
	Thu,  6 Jul 2023 08:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3385405C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 65FC61BF575
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 08:37:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 848F981F67
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 08:37:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 848F981F67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id khbN58M4Fwdf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 08:37:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A26CE81F56
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A26CE81F56
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 08:37:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="361016160"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="361016160"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:37:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="713482877"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="713482877"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 06 Jul 2023 01:37:21 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qHKUK-0001CE-1m
 for intel-wired-lan@lists.osuosl.org; Thu, 06 Jul 2023 08:37:20 +0000
Date: Thu, 06 Jul 2023 16:36:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307061624.JHlfcSjW-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688632644; x=1720168644;
 h=date:from:to:subject:message-id;
 bh=0CBTcktXgz1zRTz17K9ndnh09LW9m4TFwojK5k8LlPM=;
 b=STZkD1LLqEmRhW0QGIbJ5tSBZtvXOPOCdplIHIq0n5b2E00ey8GE71bk
 lybCttEyIj4VQPSAHzVYVRhMP9kpCjX6h7w6L32vZVvfeOqETyjLH63mb
 5nha274//3RI6UsNzRwQtVNhUownpsXYx4Zmc8QjGskNJo8ZqhFygmKQ0
 qPBUaIDZFgeMRAixmeWF9p2QKe9TVQAhAXghxWIWxF4FH7s8rPcRMAOsA
 yN5qU9q6K/8HSDYuffWE/1SW2JXYIu67fwtn2PLDzx7kvYPLIl2WxhYy7
 7B9iKBMjlVHxhD67mFkL9T2gewJJem4N2p+lrFdSCfSZqfw2+Ey9JebTu
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=STZkD1LL
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 84a192e46106355de1a314d709e657231d4b1026
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 84a192e46106355de1a314d709e657231d4b1026  igc: Handle PPS start time programming for past time values

elapsed time: 726m

configs tested: 128
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230706   gcc  
arc                  randconfig-r006-20230706   gcc  
arc                  randconfig-r043-20230706   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                      jornada720_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                  randconfig-r014-20230706   clang
arm                  randconfig-r022-20230706   clang
arm                  randconfig-r046-20230706   clang
arm                         socfpga_defconfig   clang
arm                           tegra_defconfig   gcc  
arm                    vt8500_v6_v7_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r024-20230706   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230706   gcc  
hexagon              randconfig-r023-20230706   clang
hexagon              randconfig-r041-20230706   clang
hexagon              randconfig-r045-20230706   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230706   clang
i386         buildonly-randconfig-r005-20230706   clang
i386         buildonly-randconfig-r006-20230706   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230706   clang
i386                 randconfig-i002-20230706   clang
i386                 randconfig-i003-20230706   clang
i386                 randconfig-i004-20230706   clang
i386                 randconfig-i005-20230706   clang
i386                 randconfig-i006-20230706   clang
i386                 randconfig-i011-20230706   gcc  
i386                 randconfig-i012-20230706   gcc  
i386                 randconfig-i013-20230706   gcc  
i386                 randconfig-i014-20230706   gcc  
i386                 randconfig-i015-20230706   gcc  
i386                 randconfig-i016-20230706   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r026-20230706   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                          multi_defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                           sun3_defconfig   gcc  
microblaze           randconfig-r025-20230706   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ci20_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230706   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r021-20230706   gcc  
parisc               randconfig-r032-20230705   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   currituck_defconfig   gcc  
powerpc              randconfig-r036-20230705   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230706   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230706   clang
s390                 randconfig-r031-20230705   gcc  
s390                 randconfig-r044-20230706   gcc  
sh                               allmodconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r012-20230706   gcc  
sparc                randconfig-r016-20230706   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64              randconfig-r011-20230706   gcc  
sparc64              randconfig-r035-20230705   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230706   clang
x86_64       buildonly-randconfig-r002-20230706   clang
x86_64       buildonly-randconfig-r003-20230706   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230706   gcc  
x86_64               randconfig-x002-20230706   gcc  
x86_64               randconfig-x003-20230706   gcc  
x86_64               randconfig-x004-20230706   gcc  
x86_64               randconfig-x005-20230706   gcc  
x86_64               randconfig-x006-20230706   gcc  
x86_64               randconfig-x011-20230706   clang
x86_64               randconfig-x012-20230706   clang
x86_64               randconfig-x013-20230706   clang
x86_64               randconfig-x014-20230706   clang
x86_64               randconfig-x015-20230706   clang
x86_64               randconfig-x016-20230706   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa               randconfig-r015-20230706   gcc  
xtensa               randconfig-r034-20230705   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
