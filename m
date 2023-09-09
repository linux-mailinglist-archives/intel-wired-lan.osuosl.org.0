Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A5D7997C0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Sep 2023 13:56:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5419F81F46;
	Sat,  9 Sep 2023 11:56:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5419F81F46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694260587;
	bh=GfuNG1vhrfLt76NrPPQvmpPgFD5iW+jMtpbVURudMgI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oqx9Ip+R6IxjyUuAnoWX3He9+Oy94gffTajaYWevVAVDj0SVCYUhDGcRGNrfS3aHw
	 kyDD9nOraHYdTbL3WZ+FS6LDDHu801AtPEh6Al53Sq8JakYJ5atwV/XtowIYf88ZF0
	 0J/wiUWpjvO/IzLxc6Z21YtIkd8mj77qhZwxZNTmEU4yhN/jZ2QvAZo8pshRvfdc2N
	 8GBTbHjq80QCwBlRSwojusIfCcBLzK30LmrY/+XyWYuGFXn9npnt6Cq4sir+KtngIW
	 9Tqtw44czKHoMQYvg+tRn+1+xA1qyTwJi/uIALqHJSnxYhlQcd43Cm1VlSFOAbEtc6
	 aauu8fI3t1Wzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MpgIouuNlKHT; Sat,  9 Sep 2023 11:56:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03B8581E9A;
	Sat,  9 Sep 2023 11:56:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03B8581E9A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B678D1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Sep 2023 11:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9BE6481EA8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Sep 2023 11:56:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BE6481EA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZaDrCeA4vz_L for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Sep 2023 11:56:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43C2F81E9A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Sep 2023 11:56:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43C2F81E9A
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="376724901"
X-IronPort-AV: E=Sophos;i="6.02,239,1688454000"; d="scan'208";a="376724901"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2023 04:56:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="745884773"
X-IronPort-AV: E=Sophos;i="6.02,239,1688454000"; d="scan'208";a="745884773"
Received: from lkp-server01.sh.intel.com (HELO 59b3c6e06877) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 09 Sep 2023 04:56:16 -0700
Received: from kbuild by 59b3c6e06877 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qewZS-0003ST-2J
 for intel-wired-lan@lists.osuosl.org; Sat, 09 Sep 2023 11:56:14 +0000
Date: Sat, 09 Sep 2023 19:55:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309091922.9169frEa-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694260579; x=1725796579;
 h=date:from:to:subject:message-id;
 bh=ho5wevi/30Ysw/CTN4HlLhX1TBJXiODgm0846KmvhkM=;
 b=Kg9exIz6NQQXildNMbj+XEKzt/dI7jQnwTY39yja8+bdRgW/7nbazVrW
 X5AdzkrX+i11H1bXzNbmbcVhb1S61PVTirMDDKWlIhgsT7nzxZSpvecaN
 /j3tOZirmJWg4VQx3jlFrsMVlGdPDSMmWvDYTs57Jlcck+G2WGKc97tJu
 uht00MAja4jQQykSJF783ERFRC/6q4PtK5EA26+LCJ20XgPmoLZCi0VlH
 A8Ac95cXCq2A8ZK6vI76VwhyfOKjk1stVqIoXR1WXzTjRxl3D1TkpfNZi
 /cgPY8T026GjiyDss+rrDYp1vCDRYMWtCLPfdYhoCmegdXesBIbhOvJFo
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kg9exIz6
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 fd31b9485f17ebbaaec6d7b88eb282306ebd4ef0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: fd31b9485f17ebbaaec6d7b88eb282306ebd4ef0  ice: check netlist before enabling ICE_F_GNSS

elapsed time: 720m

configs tested: 206
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                   randconfig-001-20230909   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                           h3600_defconfig   gcc  
arm                   milbeaut_m10v_defconfig   clang
arm                   randconfig-001-20230909   clang
arm                  randconfig-r015-20230909   clang
arm                        shmobile_defconfig   gcc  
arm                        spear3xx_defconfig   clang
arm                           spitz_defconfig   clang
arm                         vf610m4_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r034-20230909   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230909   gcc  
csky                 randconfig-r011-20230909   gcc  
csky                 randconfig-r035-20230909   gcc  
hexagon               randconfig-001-20230909   clang
hexagon               randconfig-002-20230909   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230909   clang
i386         buildonly-randconfig-002-20230909   clang
i386         buildonly-randconfig-003-20230909   clang
i386         buildonly-randconfig-004-20230909   clang
i386         buildonly-randconfig-005-20230909   clang
i386         buildonly-randconfig-006-20230909   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230909   clang
i386                  randconfig-002-20230909   clang
i386                  randconfig-003-20230909   clang
i386                  randconfig-004-20230909   clang
i386                  randconfig-005-20230909   clang
i386                  randconfig-006-20230909   clang
i386                  randconfig-011-20230909   gcc  
i386                  randconfig-012-20230909   gcc  
i386                  randconfig-013-20230909   gcc  
i386                  randconfig-014-20230909   gcc  
i386                  randconfig-015-20230909   gcc  
i386                  randconfig-016-20230909   gcc  
i386                 randconfig-r021-20230909   gcc  
i386                 randconfig-r025-20230909   gcc  
i386                 randconfig-r026-20230909   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230909   gcc  
loongarch            randconfig-r002-20230909   gcc  
loongarch            randconfig-r005-20230909   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230909   gcc  
m68k                 randconfig-r006-20230909   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r003-20230909   gcc  
microblaze           randconfig-r012-20230909   gcc  
microblaze           randconfig-r014-20230909   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                        omega2p_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230909   gcc  
nios2                randconfig-r023-20230909   gcc  
nios2                randconfig-r031-20230909   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc             randconfig-r014-20230909   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                    mvme5100_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
powerpc                      ppc44x_defconfig   clang
powerpc              randconfig-r024-20230909   gcc  
powerpc              randconfig-r036-20230909   clang
powerpc                  storcenter_defconfig   gcc  
powerpc                     tqm8555_defconfig   gcc  
powerpc64            randconfig-r036-20230909   clang
riscv                            alldefconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230909   clang
riscv                randconfig-r004-20230909   clang
riscv                randconfig-r022-20230909   gcc  
riscv                randconfig-r023-20230909   gcc  
riscv                          rv32_defconfig   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230909   gcc  
s390                 randconfig-r013-20230909   gcc  
s390                 randconfig-r032-20230909   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                   randconfig-r002-20230909   gcc  
sh                   randconfig-r003-20230909   gcc  
sh                   randconfig-r013-20230909   gcc  
sh                   randconfig-r032-20230909   gcc  
sh                   randconfig-r033-20230909   gcc  
sh                           se7619_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230909   gcc  
sparc                randconfig-r016-20230909   gcc  
sparc                randconfig-r022-20230909   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r012-20230909   gcc  
sparc64              randconfig-r021-20230909   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r025-20230909   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230909   clang
x86_64       buildonly-randconfig-002-20230909   clang
x86_64       buildonly-randconfig-003-20230909   clang
x86_64       buildonly-randconfig-004-20230909   clang
x86_64       buildonly-randconfig-005-20230909   clang
x86_64       buildonly-randconfig-006-20230909   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20230909   gcc  
x86_64                randconfig-002-20230909   gcc  
x86_64                randconfig-003-20230909   gcc  
x86_64                randconfig-004-20230909   gcc  
x86_64                randconfig-005-20230909   gcc  
x86_64                randconfig-006-20230909   gcc  
x86_64                randconfig-011-20230909   clang
x86_64                randconfig-012-20230909   clang
x86_64                randconfig-013-20230909   clang
x86_64                randconfig-014-20230909   clang
x86_64                randconfig-015-20230909   clang
x86_64                randconfig-016-20230909   clang
x86_64                randconfig-071-20230909   clang
x86_64                randconfig-072-20230909   clang
x86_64                randconfig-073-20230909   clang
x86_64                randconfig-074-20230909   clang
x86_64                randconfig-075-20230909   clang
x86_64                randconfig-076-20230909   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                           alldefconfig   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa               randconfig-r015-20230909   gcc  
xtensa               randconfig-r016-20230909   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
