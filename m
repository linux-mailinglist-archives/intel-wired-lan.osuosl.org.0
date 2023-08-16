Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A112977D8FB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 05:22:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E292D41C48;
	Wed, 16 Aug 2023 03:22:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E292D41C48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692156170;
	bh=qVkESWYcZpaq6W79BN2jLSsCYtq+VN91zB8nM/tauyc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=t2HGZn2Pn19n2CkzHnr9uheeU3I4Vs2tn54y7MUwfGLU/eCQRbz9p6g6ESo5YWqRs
	 ShCUKVFPyQbU9kv4gUY4vf1kSPcgr5/hXCv6nfmWNq3JAf6w6K3W0BPBVcrHyTaaL4
	 /ZXDkl85TQ9CKoq8HwRxXFFz0LQo624WvkcBdB1WoZ2xpmiMsYFdVTVsA//SkMWGmf
	 e3V247TVLX+QjtPXGm42aocCshzr+ljxARCuhg/dv05C8HaiNKqxsjtExbXeX+Uhoe
	 8kgmyKuciyTcj1+kLlSqk3X4+a+UpqyWhzz/tSWYVZcsqrhnG5kgSbYn7ziBN8UxwW
	 W2tMp8ryWo8dA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YObHXbODCoIm; Wed, 16 Aug 2023 03:22:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7C1241B68;
	Wed, 16 Aug 2023 03:22:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7C1241B68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B7AA31BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 03:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D1D28216F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 03:22:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D1D28216F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C3CExi9PUgbI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 03:22:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8F9908216E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 03:22:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F9908216E
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="357405895"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="357405895"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 20:22:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="857650262"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="857650262"
Received: from lkp-server02.sh.intel.com (HELO b5fb8d9e1ffc) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 15 Aug 2023 20:22:37 -0700
Received: from kbuild by b5fb8d9e1ffc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qW77F-0001Rr-0a
 for intel-wired-lan@lists.osuosl.org; Wed, 16 Aug 2023 03:22:37 +0000
Date: Wed, 16 Aug 2023 11:22:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308161113.2Q9drzYG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692156160; x=1723692160;
 h=date:from:to:subject:message-id;
 bh=vo2bOqwpbW63X85jOzN9NnASHG2cbwTb5ll1K1syNXc=;
 b=RfNIIGtcdATFyyArvmeMPcl+cWrYBCBS7O5z0Dshh0RHGoYDnc0P6YAX
 pC162nrH+sI13ofk/7DqDVSIuoNaedPIkxiuWljjBth1X+2SCq+lZZUa6
 dYA2G37OvLLi6GkMnuBEST06cMGdRFwbDj77ZIO+KXUhMVUj+DRt4jSHQ
 sEVcr8T8V+L8dKfEL/lzXb0R3YJ8zrjquHaE7hhxb37Hlq2RkrLiLp03N
 /bAPiaChwFhFPACK2GCWYYmRWQi0YhqWVYg4A5oj5JzPEqhG9On/EF2pr
 0cDE8Aw+FH6PxUrtMEtoVxeJSontQhiVXHHlKRgPgtoGt8OYKCU3NFCLF
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RfNIIGtc
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 8a519a572598b7c0c07b02f69bf5b4e8dd4b2d7d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 8a519a572598b7c0c07b02f69bf5b4e8dd4b2d7d  net: veth: Page pool creation error handling for existing pools only

elapsed time: 1467m

configs tested: 294
configs skipped: 25

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r021-20230815   gcc  
alpha                randconfig-r022-20230815   gcc  
alpha                randconfig-r031-20230815   gcc  
alpha                randconfig-r033-20230815   gcc  
alpha                randconfig-r033-20230816   gcc  
alpha                randconfig-r035-20230815   gcc  
alpha                randconfig-r036-20230815   gcc  
arc                              alldefconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                  randconfig-r001-20230815   gcc  
arc                  randconfig-r002-20230815   gcc  
arc                  randconfig-r011-20230815   gcc  
arc                  randconfig-r021-20230816   gcc  
arc                  randconfig-r024-20230815   gcc  
arc                  randconfig-r031-20230815   gcc  
arc                  randconfig-r035-20230815   gcc  
arc                  randconfig-r035-20230816   gcc  
arc                  randconfig-r043-20230815   gcc  
arm                              alldefconfig   clang
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   clang
arm                                 defconfig   clang
arm                                 defconfig   gcc  
arm                           imxrt_defconfig   gcc  
arm                            mmp2_defconfig   clang
arm                       multi_v4t_defconfig   gcc  
arm                         mv78xx0_defconfig   gcc  
arm                          pxa168_defconfig   clang
arm                  randconfig-r004-20230815   gcc  
arm                  randconfig-r011-20230815   clang
arm                  randconfig-r024-20230815   clang
arm                  randconfig-r025-20230815   clang
arm                  randconfig-r031-20230815   gcc  
arm                  randconfig-r032-20230815   gcc  
arm                  randconfig-r033-20230816   clang
arm                  randconfig-r046-20230815   clang
arm                           sama7_defconfig   clang
arm                         socfpga_defconfig   clang
arm                        spear6xx_defconfig   gcc  
arm                           tegra_defconfig   gcc  
arm                        vexpress_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230816   gcc  
csky                 randconfig-r025-20230816   gcc  
csky                 randconfig-r026-20230816   gcc  
csky                 randconfig-r032-20230816   gcc  
hexagon              randconfig-r016-20230816   clang
hexagon              randconfig-r026-20230815   clang
hexagon              randconfig-r034-20230816   clang
hexagon              randconfig-r041-20230815   clang
hexagon              randconfig-r041-20230816   clang
hexagon              randconfig-r045-20230815   clang
hexagon              randconfig-r045-20230816   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230815   clang
i386         buildonly-randconfig-r004-20230816   gcc  
i386         buildonly-randconfig-r005-20230815   clang
i386         buildonly-randconfig-r005-20230816   gcc  
i386         buildonly-randconfig-r006-20230815   clang
i386         buildonly-randconfig-r006-20230816   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230815   clang
i386                 randconfig-i001-20230816   gcc  
i386                 randconfig-i002-20230815   clang
i386                 randconfig-i002-20230816   gcc  
i386                 randconfig-i003-20230815   clang
i386                 randconfig-i003-20230816   gcc  
i386                 randconfig-i004-20230815   clang
i386                 randconfig-i004-20230816   gcc  
i386                 randconfig-i005-20230815   clang
i386                 randconfig-i005-20230816   gcc  
i386                 randconfig-i006-20230815   clang
i386                 randconfig-i006-20230816   gcc  
i386                 randconfig-i011-20230815   gcc  
i386                 randconfig-i011-20230816   clang
i386                 randconfig-i012-20230815   gcc  
i386                 randconfig-i012-20230816   clang
i386                 randconfig-i013-20230815   gcc  
i386                 randconfig-i013-20230816   clang
i386                 randconfig-i014-20230815   gcc  
i386                 randconfig-i014-20230816   clang
i386                 randconfig-i015-20230815   gcc  
i386                 randconfig-i015-20230816   clang
i386                 randconfig-i016-20230815   gcc  
i386                 randconfig-i016-20230816   clang
i386                 randconfig-r002-20230816   gcc  
i386                 randconfig-r003-20230815   clang
i386                 randconfig-r014-20230815   gcc  
i386                 randconfig-r016-20230815   gcc  
i386                 randconfig-r024-20230815   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r023-20230815   gcc  
loongarch            randconfig-r035-20230815   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          atari_defconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230815   gcc  
m68k                 randconfig-r005-20230815   gcc  
m68k                 randconfig-r006-20230815   gcc  
m68k                 randconfig-r015-20230815   gcc  
m68k                 randconfig-r021-20230816   gcc  
m68k                 randconfig-r025-20230815   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze           randconfig-r006-20230815   gcc  
microblaze           randconfig-r022-20230816   gcc  
microblaze           randconfig-r034-20230816   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                  cavium_octeon_defconfig   clang
mips                  cavium_octeon_defconfig   gcc  
mips                           ci20_defconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                     cu1000-neo_defconfig   clang
mips                           ip22_defconfig   clang
mips                           jazz_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                        qi_lb60_defconfig   clang
mips                        qi_lb60_defconfig   gcc  
mips                 randconfig-r004-20230816   clang
mips                         rt305x_defconfig   gcc  
nios2                         3c120_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230815   gcc  
nios2                randconfig-r012-20230815   gcc  
nios2                randconfig-r026-20230816   gcc  
nios2                randconfig-r031-20230816   gcc  
nios2                randconfig-r032-20230816   gcc  
nios2                randconfig-r036-20230816   gcc  
openrisc                    or1ksim_defconfig   gcc  
openrisc             randconfig-r006-20230815   gcc  
openrisc             randconfig-r014-20230815   gcc  
openrisc             randconfig-r035-20230815   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc               randconfig-r006-20230816   gcc  
parisc               randconfig-r016-20230815   gcc  
parisc               randconfig-r022-20230815   gcc  
parisc               randconfig-r023-20230816   gcc  
parisc               randconfig-r024-20230815   gcc  
parisc               randconfig-r024-20230816   gcc  
parisc               randconfig-r026-20230815   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   bluestone_defconfig   clang
powerpc                    klondike_defconfig   gcc  
powerpc                     ksi8560_defconfig   clang
powerpc                       maple_defconfig   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc                    mvme5100_defconfig   gcc  
powerpc                      pmac32_defconfig   clang
powerpc                     powernv_defconfig   clang
powerpc              randconfig-r015-20230815   gcc  
powerpc                    sam440ep_defconfig   gcc  
powerpc                  storcenter_defconfig   gcc  
powerpc                     tqm8540_defconfig   clang
powerpc                      tqm8xx_defconfig   gcc  
powerpc                 xes_mpc85xx_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230815   clang
riscv                randconfig-r012-20230816   clang
riscv                randconfig-r014-20230816   clang
riscv                randconfig-r025-20230815   gcc  
riscv                randconfig-r042-20230815   gcc  
riscv                randconfig-r042-20230816   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230815   clang
s390                 randconfig-r013-20230815   gcc  
s390                 randconfig-r015-20230816   clang
s390                 randconfig-r034-20230815   clang
s390                 randconfig-r044-20230815   gcc  
s390                 randconfig-r044-20230816   clang
s390                       zfcpdump_defconfig   gcc  
sh                               allmodconfig   gcc  
sh                             espt_defconfig   gcc  
sh                               j2_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                   randconfig-r002-20230815   gcc  
sh                   randconfig-r012-20230815   gcc  
sh                   randconfig-r021-20230816   gcc  
sh                   randconfig-r022-20230815   gcc  
sh                   randconfig-r025-20230815   gcc  
sh                   randconfig-r025-20230816   gcc  
sh                   randconfig-r031-20230816   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sh                          sdk7780_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sh                            titan_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230815   gcc  
sparc                randconfig-r004-20230816   gcc  
sparc                randconfig-r021-20230815   gcc  
sparc                randconfig-r022-20230815   gcc  
sparc                randconfig-r023-20230815   gcc  
sparc                randconfig-r023-20230816   gcc  
sparc                randconfig-r024-20230816   gcc  
sparc                randconfig-r026-20230815   gcc  
sparc                randconfig-r031-20230815   gcc  
sparc                randconfig-r036-20230815   gcc  
sparc64              randconfig-r003-20230815   gcc  
sparc64              randconfig-r005-20230815   gcc  
sparc64              randconfig-r011-20230815   gcc  
sparc64              randconfig-r021-20230815   gcc  
sparc64              randconfig-r024-20230816   gcc  
sparc64              randconfig-r034-20230815   gcc  
sparc64              randconfig-r034-20230816   gcc  
sparc64              randconfig-r035-20230816   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r001-20230815   gcc  
um                   randconfig-r001-20230816   clang
um                   randconfig-r003-20230815   gcc  
um                   randconfig-r005-20230815   gcc  
um                   randconfig-r014-20230815   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230815   clang
x86_64       buildonly-randconfig-r001-20230816   gcc  
x86_64       buildonly-randconfig-r002-20230815   clang
x86_64       buildonly-randconfig-r002-20230816   gcc  
x86_64       buildonly-randconfig-r003-20230815   clang
x86_64       buildonly-randconfig-r003-20230816   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r016-20230815   gcc  
x86_64               randconfig-r032-20230815   clang
x86_64               randconfig-r035-20230816   gcc  
x86_64               randconfig-r036-20230815   clang
x86_64               randconfig-x001-20230815   gcc  
x86_64               randconfig-x001-20230816   clang
x86_64               randconfig-x002-20230815   gcc  
x86_64               randconfig-x002-20230816   clang
x86_64               randconfig-x003-20230815   gcc  
x86_64               randconfig-x003-20230816   clang
x86_64               randconfig-x004-20230815   gcc  
x86_64               randconfig-x004-20230816   clang
x86_64               randconfig-x005-20230815   gcc  
x86_64               randconfig-x005-20230816   clang
x86_64               randconfig-x006-20230815   gcc  
x86_64               randconfig-x006-20230816   clang
x86_64               randconfig-x011-20230815   clang
x86_64               randconfig-x011-20230816   gcc  
x86_64               randconfig-x012-20230815   clang
x86_64               randconfig-x012-20230816   gcc  
x86_64               randconfig-x013-20230815   clang
x86_64               randconfig-x013-20230816   gcc  
x86_64               randconfig-x014-20230815   clang
x86_64               randconfig-x014-20230816   gcc  
x86_64               randconfig-x015-20230815   clang
x86_64               randconfig-x015-20230816   gcc  
x86_64               randconfig-x016-20230815   clang
x86_64               randconfig-x016-20230816   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                       common_defconfig   gcc  
xtensa               randconfig-r001-20230816   gcc  
xtensa               randconfig-r005-20230816   gcc  
xtensa               randconfig-r015-20230815   gcc  
xtensa               randconfig-r026-20230815   gcc  
xtensa               randconfig-r036-20230815   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
