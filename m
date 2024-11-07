Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A29A9C012F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 10:33:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C7B861020;
	Thu,  7 Nov 2024 09:33:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QOfFH2HPctBU; Thu,  7 Nov 2024 09:33:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C47B460F6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730971990;
	bh=hXJ+vDdQMbKMbezoEBo0i9KH2gqHeRYHhtiG8HZ33ks=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=10taoiZCTvNLBYV1ORQp36vWiHcWcIAz7+j2U2Cnnk96rdnOx2etmSUOs5d+gOscE
	 fcVWPuvD7qJW8jfjJOfvB/i8+IUP95XaGJtpFaiM2mcmG/n8wWZUmR0LZVNvOb7hvx
	 tx2LP6yNjAs1U6XKVHSsOezDenYz3PkuO6yARjwQfXwOqJk0muDBmxgJpx7SvfUk0l
	 Ukl2WWlhCeiGtQlHfZ8n0W5koHbMvdTeIk8ZasQLKWNJqtABgtFYIwscxKuQ9T/soK
	 faDU7vWyyRVFX1o2xS66eGYT+MfPuaQvcUod2P6M5EygCPSV24huWpBG1hQAbItdNe
	 U31mF58zg77gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C47B460F6F;
	Thu,  7 Nov 2024 09:33:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AED35C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 09:33:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9BC3F408D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 09:33:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QuAWUqrVAsJa for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2024 09:33:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AC337408C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC337408C8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC337408C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 09:33:06 +0000 (UTC)
X-CSE-ConnectionGUID: o9v+Cd3KR2aSwcwvClr2Hg==
X-CSE-MsgGUID: m+cpmHA9Q7qRgvt1xLp0gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41907777"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41907777"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:33:06 -0800
X-CSE-ConnectionGUID: YUhBISifQzi8hLYSIqo4DA==
X-CSE-MsgGUID: zrIm6EWSRyuw2X610BPNPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="84560638"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 07 Nov 2024 01:33:05 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t8ysw-000q3S-1a
 for intel-wired-lan@lists.osuosl.org; Thu, 07 Nov 2024 09:33:02 +0000
Date: Thu, 07 Nov 2024 17:32:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411071737.FY4drZrT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730971987; x=1762507987;
 h=date:from:to:subject:message-id;
 bh=+cDYKbyfKDMfjIKEcxBQxu5TzDbKnLuqDo8pjf7REcA=;
 b=IU9W84kCMesA5mDQ4jhS3Ce2HafbD8fCZzJbBlWDw3/4Ek0KVeQFzh/n
 xbm3m2Br3VJx0bZ/tKHTPdD66xd06LNDi0BqDI5Eio76LNIgwo+bg2B47
 sneX4OdnBlH1pylFVlnfIaLSCU8eytl7qs88TzYQybdlDKXw2iUBYryYj
 +CrMnKEsNMzBYiscW+pTWrnQwsGva55/08iipimf8WwbbUEJV2qxiPpi7
 0fmJwYpLtHHeBejVuQhp8o4vnfqKxTERwlVZCrYP1ipqAX+m0MU0IRQ06
 iPTkwmmi7ZoTD1CjKT3UVcXDG517kZuuTh6/pDt4UugfvzK4+Xd1N+eu4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IU9W84kC
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 772bd0dd95979496bc73b02060af3ff7be88dafc
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 772bd0dd95979496bc73b02060af3ff7be88dafc  ixgbe: downgrade logging of unsupported VF API version to debug

elapsed time: 1008m

configs tested: 230
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                              allyesconfig    gcc-13.2.0
arc                          axs103_defconfig    gcc-14.2.0
arc                                 defconfig    gcc-14.2.0
arc                     haps_hs_smp_defconfig    clang-20
arc                        nsimosci_defconfig    clang-20
arc                   randconfig-001-20241107    gcc-14.2.0
arc                   randconfig-002-20241107    gcc-14.2.0
arm                              allmodconfig    clang-20
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    gcc-14.2.0
arm                          gemini_defconfig    gcc-14.2.0
arm                           h3600_defconfig    gcc-14.2.0
arm                            hisi_defconfig    clang-20
arm                           imxrt_defconfig    gcc-14.2.0
arm                        multi_v7_defconfig    clang-20
arm                             mxs_defconfig    clang-20
arm                         nhk8815_defconfig    clang-20
arm                         orion5x_defconfig    clang-20
arm                            qcom_defconfig    clang-20
arm                   randconfig-001-20241107    gcc-14.2.0
arm                   randconfig-002-20241107    gcc-14.2.0
arm                   randconfig-003-20241107    gcc-14.2.0
arm                   randconfig-004-20241107    gcc-14.2.0
arm                             rpc_defconfig    clang-20
arm                             rpc_defconfig    gcc-14.2.0
arm                       spear13xx_defconfig    clang-20
arm                       versatile_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    clang-20
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20241107    gcc-14.2.0
arm64                 randconfig-002-20241107    gcc-14.2.0
arm64                 randconfig-003-20241107    gcc-14.2.0
arm64                 randconfig-004-20241107    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20241107    gcc-14.2.0
csky                  randconfig-002-20241107    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20241107    gcc-14.2.0
hexagon               randconfig-002-20241107    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241107    clang-19
i386        buildonly-randconfig-002-20241107    clang-19
i386        buildonly-randconfig-003-20241107    clang-19
i386        buildonly-randconfig-004-20241107    clang-19
i386        buildonly-randconfig-005-20241107    clang-19
i386        buildonly-randconfig-006-20241107    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241107    clang-19
i386                  randconfig-002-20241107    clang-19
i386                  randconfig-003-20241107    clang-19
i386                  randconfig-004-20241107    clang-19
i386                  randconfig-005-20241107    clang-19
i386                  randconfig-006-20241107    clang-19
i386                  randconfig-011-20241107    clang-19
i386                  randconfig-012-20241107    clang-19
i386                  randconfig-013-20241107    clang-19
i386                  randconfig-014-20241107    clang-19
i386                  randconfig-015-20241107    clang-19
i386                  randconfig-016-20241107    clang-19
loongarch                        alldefconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20241107    gcc-14.2.0
loongarch             randconfig-002-20241107    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                         amcore_defconfig    clang-20
m68k                          amiga_defconfig    clang-20
m68k                          atari_defconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                        m5307c3_defconfig    clang-20
m68k                          multi_defconfig    gcc-14.2.0
m68k                           sun3_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        bcm47xx_defconfig    clang-20
mips                         bigsur_defconfig    clang-20
mips                         db1xxx_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20241107    gcc-14.2.0
nios2                 randconfig-002-20241107    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
openrisc                  or1klitex_defconfig    clang-20
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                generic-32bit_defconfig    clang-20
parisc                randconfig-001-20241107    gcc-14.2.0
parisc                randconfig-002-20241107    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-20
powerpc                          allyesconfig    gcc-14.2.0
powerpc                        cell_defconfig    clang-20
powerpc                      chrp32_defconfig    clang-20
powerpc                   currituck_defconfig    clang-20
powerpc                        icon_defconfig    clang-20
powerpc                   motionpro_defconfig    clang-20
powerpc                     mpc5200_defconfig    clang-20
powerpc                 mpc834x_itx_defconfig    clang-20
powerpc                  mpc885_ads_defconfig    clang-20
powerpc                      pasemi_defconfig    clang-20
powerpc                      pcm030_defconfig    clang-20
powerpc                      pcm030_defconfig    gcc-14.2.0
powerpc                      ppc64e_defconfig    clang-20
powerpc               randconfig-001-20241107    gcc-14.2.0
powerpc               randconfig-002-20241107    gcc-14.2.0
powerpc               randconfig-003-20241107    gcc-14.2.0
powerpc                     sequoia_defconfig    gcc-14.2.0
powerpc                     tqm8541_defconfig    gcc-14.2.0
powerpc                     tqm8555_defconfig    clang-20
powerpc64             randconfig-003-20241107    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    clang-20
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20241107    gcc-14.2.0
riscv                 randconfig-002-20241107    gcc-14.2.0
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241107    gcc-14.2.0
s390                  randconfig-002-20241107    gcc-14.2.0
s390                       zfcpdump_defconfig    clang-20
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         apsh4a3a_defconfig    clang-20
sh                                  defconfig    gcc-12
sh                         ecovec24_defconfig    clang-20
sh                        edosk7760_defconfig    clang-20
sh                          lboxre2_defconfig    gcc-14.2.0
sh                     magicpanelr2_defconfig    clang-20
sh                            migor_defconfig    gcc-14.2.0
sh                    randconfig-001-20241107    gcc-14.2.0
sh                    randconfig-002-20241107    gcc-14.2.0
sh                           se7712_defconfig    clang-20
sh                           se7721_defconfig    clang-20
sh                           sh2007_defconfig    clang-20
sparc                            allmodconfig    gcc-14.2.0
sparc                       sparc32_defconfig    gcc-14.2.0
sparc                       sparc64_defconfig    clang-20
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241107    gcc-14.2.0
sparc64               randconfig-002-20241107    gcc-14.2.0
um                               alldefconfig    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241107    gcc-14.2.0
um                    randconfig-002-20241107    gcc-14.2.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241107    clang-19
x86_64      buildonly-randconfig-002-20241107    clang-19
x86_64      buildonly-randconfig-003-20241107    clang-19
x86_64      buildonly-randconfig-004-20241107    clang-19
x86_64      buildonly-randconfig-005-20241107    clang-19
x86_64      buildonly-randconfig-006-20241107    clang-19
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241107    clang-19
x86_64                randconfig-002-20241107    clang-19
x86_64                randconfig-003-20241107    clang-19
x86_64                randconfig-004-20241107    clang-19
x86_64                randconfig-005-20241107    clang-19
x86_64                randconfig-006-20241107    clang-19
x86_64                randconfig-011-20241107    clang-19
x86_64                randconfig-012-20241107    clang-19
x86_64                randconfig-013-20241107    clang-19
x86_64                randconfig-014-20241107    clang-19
x86_64                randconfig-015-20241107    clang-19
x86_64                randconfig-016-20241107    clang-19
x86_64                randconfig-071-20241107    clang-19
x86_64                randconfig-072-20241107    clang-19
x86_64                randconfig-073-20241107    clang-19
x86_64                randconfig-074-20241107    clang-19
x86_64                randconfig-075-20241107    clang-19
x86_64                randconfig-076-20241107    clang-19
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241107    gcc-14.2.0
xtensa                randconfig-002-20241107    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
