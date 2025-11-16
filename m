Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7C8C619F6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Nov 2025 18:49:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D12DC80B14;
	Sun, 16 Nov 2025 17:49:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UVHak0RLZOLf; Sun, 16 Nov 2025 17:49:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BC6A80A68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763315372;
	bh=HkQtp/sj5eFReTA5cXG+xCfC3SAwdV0Php1dYiq8eRM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Lrr4GbT7wRd3+M2qmi6GaGLbD0NZ9VTOGvYJrJsXYCuMwmh9Ss/5wr5GbP783R7D+
	 PrkrzVkEDrryiSnCIKai1uN3e2faoqnekzICJ77EcWv6dFY9xVEViHr/criFTc5266
	 MMCddm3Q892OWlWlvfuLKPbkvjYj1zJWvmmU1TxcYw4dmkzMrbT40XEuT8TGVm1OgS
	 RdaIbTdAMwy2MgyMX2chNE0mpPG+R40O1C7t4IzIygxBuyGBsvCXlRqiVQeKeP36Q3
	 r3ZK4g5PtgJrjeIacyXod+G+Kf1hmguL9Ozs5KfYOwrjI+HnXSeVMGRtxAvIDqUyKm
	 W2QviMgcjD/lg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BC6A80A68;
	Sun, 16 Nov 2025 17:49:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 76C41158
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 17:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6890F80854
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 17:49:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nu7_mlhQeXQi for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Nov 2025 17:49:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 84F1680850
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84F1680850
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 84F1680850
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 17:49:28 +0000 (UTC)
X-CSE-ConnectionGUID: ib+dH/jSQnup5KkakM8apg==
X-CSE-MsgGUID: sj+Gw4noReqqvGvLH7OiTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="64532483"
X-IronPort-AV: E=Sophos;i="6.19,310,1754982000"; d="scan'208";a="64532483"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 09:49:28 -0800
X-CSE-ConnectionGUID: pmaRxDOhR6O4lVEUkqXJqQ==
X-CSE-MsgGUID: TA689sGsSvGxcphJdZ8c0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,310,1754982000"; d="scan'208";a="190281987"
Received: from lkp-server01.sh.intel.com (HELO 7b01c990427b) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 16 Nov 2025 09:49:27 -0800
Received: from kbuild by 7b01c990427b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vKgsO-0008yV-27
 for intel-wired-lan@lists.osuosl.org; Sun, 16 Nov 2025 17:49:24 +0000
Date: Mon, 17 Nov 2025 01:48:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511170114.KoFhWtxe-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763315370; x=1794851370;
 h=date:from:to:subject:message-id;
 bh=2n4pKXRGJ1YQV0wUhRHVfID/QQ4RfMvSbTpTFYRy9eo=;
 b=jw3KYNvwF5DzUTShELdwrWP5JuE7Z/bPre8vOw56SHHjriilzfB5LT7X
 ZyeXq5EgHVjHUGlh/I+RF8OW8kiWS2kFRTMigWxHCIP5k7HpDN+bqNOTg
 iWjkJze8lOLUS8yO7qddVYnXpGRGybkPXbf3c8QgyrYGkanTRiI05r0Dm
 LNxDupkO19b8Wsiv4SS3RqrP8hco4eunsLdqq0ba+YBCblnutcetKNw1Q
 nDdQTWs9RqT2gWXmue0QwjmOG76dQHZs3y/7O28vntzKXxJj8x172mZPY
 jCDtU8u4VGW36I+Py9QvgONFZflwaOiTBiBoZguB86bJc+THY0zlJuCPe
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jw3KYNvw
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 a219e106350cb59f457c323688a9038e563e3e64
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: a219e106350cb59f457c323688a9038e563e3e64  e1000e: Remove unneeded checks

elapsed time: 2261m

configs tested: 102
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20251115    gcc-13.4.0
arc                   randconfig-002-20251115    gcc-11.5.0
arm                               allnoconfig    clang-22
arm                                 defconfig    clang-22
arm                   randconfig-001-20251115    clang-22
arm                   randconfig-002-20251115    gcc-8.5.0
arm                   randconfig-003-20251115    gcc-10.5.0
arm                   randconfig-004-20251115    clang-22
arm                        spear3xx_defconfig    clang-17
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20251116    gcc-12.5.0
arm64                 randconfig-002-20251116    gcc-10.5.0
arm64                 randconfig-003-20251116    clang-22
arm64                 randconfig-004-20251116    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251116    gcc-12.5.0
csky                  randconfig-002-20251116    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon                             defconfig    clang-22
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251116    clang-20
i386        buildonly-randconfig-002-20251116    clang-20
i386        buildonly-randconfig-003-20251116    clang-20
i386        buildonly-randconfig-004-20251116    gcc-14
i386        buildonly-randconfig-005-20251116    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20251116    gcc-14
i386                  randconfig-002-20251116    clang-20
i386                  randconfig-003-20251116    gcc-14
i386                  randconfig-004-20251116    gcc-14
i386                  randconfig-005-20251116    clang-20
i386                  randconfig-006-20251116    clang-20
i386                  randconfig-007-20251116    clang-20
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
m68k                              allnoconfig    gcc-15.1.0
m68k                          atari_defconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        omega2p_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                       ppc64_defconfig    clang-22
powerpc                     redwood_defconfig    clang-22
powerpc                  storcenter_defconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251116    clang-20
riscv                 randconfig-002-20251116    gcc-10.5.0
s390                              allnoconfig    clang-22
s390                                defconfig    clang-22
s390                  randconfig-001-20251116    clang-22
s390                  randconfig-002-20251116    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251116    gcc-13.4.0
sh                    randconfig-002-20251116    gcc-15.1.0
sh                           se7780_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251116    gcc-8.5.0
sparc                 randconfig-002-20251116    gcc-8.5.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251116    gcc-15.1.0
sparc64               randconfig-002-20251116    clang-22
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251116    clang-17
um                    randconfig-002-20251116    gcc-13
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251116    clang-20
x86_64      buildonly-randconfig-002-20251116    clang-20
x86_64      buildonly-randconfig-003-20251116    clang-20
x86_64      buildonly-randconfig-004-20251116    gcc-13
x86_64      buildonly-randconfig-005-20251116    clang-20
x86_64      buildonly-randconfig-006-20251116    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251116    gcc-14
x86_64                randconfig-002-20251116    gcc-14
x86_64                randconfig-003-20251116    clang-20
x86_64                randconfig-004-20251116    clang-20
x86_64                randconfig-005-20251116    gcc-12
x86_64                randconfig-006-20251116    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251116    gcc-8.5.0
xtensa                randconfig-002-20251116    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
