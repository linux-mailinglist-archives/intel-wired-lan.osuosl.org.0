Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADCB9BCA9C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 11:38:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3B5C4065A;
	Tue,  5 Nov 2024 10:38:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IdAx3sfDPLgt; Tue,  5 Nov 2024 10:38:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7AF3A4064B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730803107;
	bh=aDvHkEajnIxu1Idolo6FFAQTW13kt+CbdnjSsrddJiE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=76siYGncchD64giTAVOecEqqdce1P6wWkv7KXsOUIsAiYTVPHOlK5EcsUxgyidisP
	 dM7ARajws9tDzxUoWJgN13ADOQfXGrWy1b0lC2WolCFmc3564fojriwSZyqE/byYP4
	 mZnUQ+j/vpHEbJXlI0gYFooMgB0ok9OAWpl7xkcU20YPJ0VCL4pfR3T5NEl8kK+uIR
	 +gmBPCjnQsTZ89jUWiQSMY8nStump0CZHbIFnL7Hi20dXrENPLDhOCnnuPJmWejlVA
	 Q90L4eMqrWRv+LcEd0/dxJRbxgesj2OZZmXfUx9p12sksOE06J6pc/AVEXuzrIFRlR
	 if+bD9FG7IOXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AF3A4064B;
	Tue,  5 Nov 2024 10:38:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A9BEB723
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 10:38:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A35F409D3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 10:38:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R6x3EnJEYpAM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 10:38:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E85FE409B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E85FE409B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E85FE409B7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 10:38:23 +0000 (UTC)
X-CSE-ConnectionGUID: YEEXAuWAQxWXcfC0EQzQUw==
X-CSE-MsgGUID: SvoJ4W1QTvuBIbr/73+GoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="29964596"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="29964596"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 02:38:23 -0800
X-CSE-ConnectionGUID: mMyBA/77TGaAIn6T8G5keg==
X-CSE-MsgGUID: FINy/lHcSwOyES+kEyO+vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="84299072"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 05 Nov 2024 02:38:22 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t8Gx2-000luz-1G
 for intel-wired-lan@lists.osuosl.org; Tue, 05 Nov 2024 10:38:20 +0000
Date: Tue, 05 Nov 2024 18:37:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411051839.KeAWe9om-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730803104; x=1762339104;
 h=date:from:to:subject:message-id;
 bh=zKdyNjC1fETKHp/U9AofU8Jkgbkd76jyxS3VXGs/7sw=;
 b=kRplhHEZbJEX8clqvo5N7atmCxQQGXJxYT7LY9s8kOSPgpmladsPIl/n
 LBtz6Ku75xHe52Ha5EnVo1oXDxdG2nhmDKALwA74GwudvTapg9f5V1DVL
 J9NnFfkKdcIxM2/zWxmaZDtaU5R/c0qZTCyWQrF+chdjPKb3EhK+nCfkk
 AFiflpeVESq7kbTe0IcC8ykJm7vzNq8JqphjmutZ1bQaxKaje+T4rVBZu
 LdWtJ/hBPko+Wc2UgFKqUr+JzMH96qoeBDkbae9hV4loi2XmfgPFVeR4p
 /ep117hKSOdDhgvYeLB9NvNkek7eUaqaSf49AUS7feKP3KmxbhgSlPCTf
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kRplhHEZ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 278dfaa171a0061a341f6b5d44c2c9913a2b7fa8
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
branch HEAD: 278dfaa171a0061a341f6b5d44c2c9913a2b7fa8  ice: change q_index variable type to s16 to store -1 value

elapsed time: 1054m

configs tested: 167
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                    allnoconfig    gcc-13.3.0
alpha                    allnoconfig    gcc-14.1.0
alpha                   allyesconfig    clang-20
alpha                   allyesconfig    gcc-13.3.0
alpha                      defconfig    gcc-14.1.0
arc                     allmodconfig    clang-20
arc                     allmodconfig    gcc-13.2.0
arc                      allnoconfig    gcc-13.2.0
arc                      allnoconfig    gcc-14.1.0
arc                     allyesconfig    clang-20
arc                     allyesconfig    gcc-13.2.0
arc                        defconfig    gcc-14.1.0
arc               nsim_700_defconfig    gcc-14.1.0
arc          randconfig-001-20241105    gcc-13.2.0
arc          randconfig-002-20241105    gcc-13.2.0
arc           vdk_hs38_smp_defconfig    gcc-14.1.0
arm                     allmodconfig    clang-20
arm                     allmodconfig    gcc-14.1.0
arm                      allnoconfig    clang-20
arm                      allnoconfig    gcc-14.1.0
arm                     allyesconfig    clang-20
arm                     allyesconfig    gcc-14.1.0
arm              aspeed_g5_defconfig    gcc-14.1.0
arm               clps711x_defconfig    gcc-14.1.0
arm                        defconfig    gcc-14.1.0
arm             footbridge_defconfig    gcc-14.1.0
arm              imx_v4_v5_defconfig    gcc-14.1.0
arm                  imxrt_defconfig    gcc-14.1.0
arm          randconfig-001-20241105    gcc-14.1.0
arm          randconfig-002-20241105    clang-20
arm          randconfig-003-20241105    gcc-14.1.0
arm          randconfig-004-20241105    clang-16
arm               shmobile_defconfig    gcc-14.1.0
arm                wpcm450_defconfig    gcc-14.1.0
arm64                   allmodconfig    clang-20
arm64                    allnoconfig    gcc-14.1.0
arm64                      defconfig    gcc-14.1.0
arm64        randconfig-001-20241105    gcc-14.1.0
arm64        randconfig-002-20241105    gcc-14.1.0
arm64        randconfig-003-20241105    gcc-14.1.0
arm64        randconfig-004-20241105    gcc-14.1.0
csky                     allnoconfig    gcc-14.1.0
csky                       defconfig    gcc-14.1.0
csky         randconfig-001-20241105    gcc-14.1.0
csky         randconfig-002-20241105    gcc-14.1.0
hexagon                 allmodconfig    clang-20
hexagon                  allnoconfig    clang-20
hexagon                  allnoconfig    gcc-14.1.0
hexagon                 allyesconfig    clang-20
hexagon                    defconfig    gcc-14.1.0
hexagon      randconfig-001-20241105    clang-20
hexagon      randconfig-002-20241105    clang-20
i386                    allmodconfig    clang-19
i386                    allmodconfig    gcc-12
i386                     allnoconfig    clang-19
i386                     allnoconfig    gcc-12
i386                    allyesconfig    clang-19
i386                    allyesconfig    gcc-12
i386                       defconfig    clang-19
loongarch               allmodconfig    gcc-14.1.0
loongarch                allnoconfig    gcc-14.1.0
loongarch                  defconfig    gcc-14.1.0
loongarch    randconfig-001-20241105    gcc-14.1.0
loongarch    randconfig-002-20241105    gcc-14.1.0
m68k                    allmodconfig    gcc-14.1.0
m68k                     allnoconfig    gcc-14.1.0
m68k                    allyesconfig    gcc-14.1.0
m68k                       defconfig    gcc-14.1.0
m68k                 sun3x_defconfig    gcc-14.1.0
microblaze              allmodconfig    gcc-14.1.0
microblaze               allnoconfig    gcc-14.1.0
microblaze              allyesconfig    gcc-14.1.0
microblaze                 defconfig    gcc-14.1.0
microblaze             mmu_defconfig    gcc-14.1.0
mips                     allnoconfig    gcc-14.1.0
mips                 ath79_defconfig    gcc-14.1.0
mips                bigsur_defconfig    gcc-14.1.0
mips                  ip27_defconfig    gcc-14.1.0
mips            loongson1b_defconfig    gcc-14.1.0
nios2                    allnoconfig    gcc-14.1.0
nios2                      defconfig    gcc-14.1.0
nios2        randconfig-001-20241105    gcc-14.1.0
nios2        randconfig-002-20241105    gcc-14.1.0
openrisc                 allnoconfig    clang-20
openrisc                 allnoconfig    gcc-14.1.0
openrisc                allyesconfig    gcc-14.1.0
openrisc                   defconfig    gcc-12
parisc                  allmodconfig    gcc-14.1.0
parisc                   allnoconfig    clang-20
parisc                   allnoconfig    gcc-14.1.0
parisc                  allyesconfig    gcc-14.1.0
parisc                     defconfig    gcc-12
parisc       randconfig-001-20241105    gcc-14.1.0
parisc       randconfig-002-20241105    gcc-14.1.0
parisc64                   defconfig    gcc-14.1.0
powerpc                 allmodconfig    gcc-14.1.0
powerpc                  allnoconfig    clang-20
powerpc                  allnoconfig    gcc-14.1.0
powerpc                 allyesconfig    clang-20
powerpc                 allyesconfig    gcc-14.1.0
powerpc           ge_imp3a_defconfig    gcc-14.1.0
powerpc             mgcoge_defconfig    gcc-14.1.0
powerpc        mpc834x_itx_defconfig    gcc-14.1.0
powerpc      randconfig-001-20241105    gcc-14.1.0
powerpc      randconfig-002-20241105    gcc-14.1.0
powerpc      randconfig-003-20241105    gcc-14.1.0
powerpc         storcenter_defconfig    gcc-14.1.0
powerpc64    randconfig-001-20241105    gcc-14.1.0
powerpc64    randconfig-002-20241105    clang-14
powerpc64    randconfig-003-20241105    gcc-14.1.0
riscv                   allmodconfig    clang-20
riscv                   allmodconfig    gcc-14.1.0
riscv                    allnoconfig    clang-20
riscv                    allnoconfig    gcc-14.1.0
riscv                   allyesconfig    clang-20
riscv                   allyesconfig    gcc-14.1.0
riscv                      defconfig    gcc-12
riscv        randconfig-001-20241105    gcc-14.1.0
riscv        randconfig-002-20241105    clang-20
s390                    allmodconfig    clang-20
s390                    allmodconfig    gcc-14.1.0
s390                     allnoconfig    clang-20
s390                    allyesconfig    gcc-14.1.0
s390                       defconfig    gcc-12
s390         randconfig-001-20241105    clang-20
s390         randconfig-002-20241105    clang-20
sh                      allmodconfig    gcc-14.1.0
sh                       allnoconfig    gcc-14.1.0
sh                      allyesconfig    gcc-14.1.0
sh                ap325rxa_defconfig    gcc-14.1.0
sh                         defconfig    gcc-12
sh                    espt_defconfig    gcc-14.1.0
sh           randconfig-001-20241105    gcc-14.1.0
sh           randconfig-002-20241105    gcc-14.1.0
sh             rts7751r2d1_defconfig    gcc-14.1.0
sh                 sdk7786_defconfig    gcc-14.1.0
sh                  se7712_defconfig    gcc-14.1.0
sh                  se7722_defconfig    gcc-14.1.0
sh                  se7724_defconfig    gcc-14.1.0
sh          secureedge5410_defconfig    gcc-14.1.0
sh                  sh2007_defconfig    gcc-14.1.0
sparc                   allmodconfig    gcc-14.1.0
sparc64                    defconfig    gcc-12
sparc64      randconfig-001-20241105    gcc-14.1.0
sparc64      randconfig-002-20241105    gcc-14.1.0
um                      allmodconfig    clang-20
um                       allnoconfig    clang-17
um                       allnoconfig    clang-20
um                      allyesconfig    clang-20
um                      allyesconfig    gcc-12
um                         defconfig    gcc-12
um                    i386_defconfig    gcc-12
um                    i386_defconfig    gcc-14.1.0
um           randconfig-001-20241105    gcc-12
um           randconfig-002-20241105    gcc-12
um                  x86_64_defconfig    gcc-12
x86_64                   allnoconfig    clang-19
x86_64                  allyesconfig    clang-19
x86_64                     defconfig    clang-19
x86_64                     defconfig    gcc-11
x86_64                         kexec    clang-19
x86_64                         kexec    gcc-12
x86_64                      rhel-8.3    gcc-12
xtensa                   allnoconfig    gcc-14.1.0
xtensa       generic_kc705_defconfig    gcc-14.1.0
xtensa       randconfig-001-20241105    gcc-14.1.0
xtensa       randconfig-002-20241105    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
