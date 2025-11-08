Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFCAC43474
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 21:17:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68FA560711;
	Sat,  8 Nov 2025 20:17:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kt8XIdddg8KB; Sat,  8 Nov 2025 20:17:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 968BF60718
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762633065;
	bh=uD5N6PdTvqPN5fyg5nm/4Jy/Ix3HJI4UpezPsm/GvCk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oAhmdgV4rU4E9lFkvPA78bG4MctDcayBa0m96Bcy1CskJO6aqfjxN42iQsKNl9ftV
	 BM3FupdoaEyhK71RWjMYvJgL1AQsCGG6u84RyUEmrg33A64pG6RVIU/iLi/0hZbkvM
	 tgMnwHh5r4kMh7o5pPOtF4xOEZCuu7iY2XWHtPXdR6kQWyJLEvtzHZK666Yw5pE9Gk
	 K//g9p0nASPa4XpZg5QVBtxw6YisbDEFMVzAM1DohMzahrwXfRO0E46GMTEgffURXv
	 oBh1WbXPqqP/r1d/HWN7eY6Zp7YR5GQMpNIOLAGj/UaLM2mzkS9JvAMtDRs874pk3p
	 iuNyurwxXXa/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 968BF60718;
	Sat,  8 Nov 2025 20:17:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D39502CD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 20:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9C4581154
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 20:17:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e_ApASlQ9-1Q for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Nov 2025 20:17:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BBF9C81151
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBF9C81151
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BBF9C81151
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 20:17:42 +0000 (UTC)
X-CSE-ConnectionGUID: urz9jdtfSSG1baY6AEl3NA==
X-CSE-MsgGUID: 5wlXlQCdTf2m7ESn1z3pvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11607"; a="75039224"
X-IronPort-AV: E=Sophos;i="6.19,290,1754982000"; d="scan'208";a="75039224"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2025 12:17:42 -0800
X-CSE-ConnectionGUID: hmWILqrnRAGy+sJO4UBIig==
X-CSE-MsgGUID: j+xJa/iARDmQu9cXo2DfJw==
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO 6ef82f2de774) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 08 Nov 2025 12:17:41 -0800
Received: from kbuild by 6ef82f2de774 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vHpNS-0001PH-2d
 for intel-wired-lan@lists.osuosl.org; Sat, 08 Nov 2025 20:17:38 +0000
Date: Sun, 09 Nov 2025 04:17:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511090433.HXJq8a5i-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762633063; x=1794169063;
 h=date:from:to:subject:message-id;
 bh=fKG9cDUiTKjOhiSN3jHXFt5pvTMDLsVjKx+G8JFtaOs=;
 b=Y0zMZuvaLL6Kl8vJK+w4ecL+AG8UEkPjEbcpVnN09VSwRd6ZxjNcXWLQ
 ToTc1FDfQMBYk4LFsx2Ef3E6/5nsDeJQ8+WepUt6mYxRVnVS3F7Aw+ntc
 3u4a/m+cPSK6oN3hrrFcePHZVwkP2kjOMRhiZV6WqsLROiy1lneBcEAky
 v/DB2D6fQmE36FpIt4Gv92pbKvSAN8uUDIk8rJswvQxuv3S+LTzow5LD4
 qTjd5kuxmU8sXJSOU3A1keA3JjllbsgZgcgkGl4XtDY1IAqtCWu2FJsxL
 y//kaD3CJGpxMpNoaYDnyuP5mxyKGBfdICR8JzqfrKCnVwZyEFRrqxJ/b
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y0zMZuva
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 74d4432421a3e2669fbccc08c0f4fc2980bf0e39
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 74d4432421a3e2669fbccc08c0f4fc2980bf0e39  docs: netlink: Couple of intro-specs documentation fixes

elapsed time: 2675m

configs tested: 123
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                          axs101_defconfig    gcc-15.1.0
arc                     nsimosci_hs_defconfig    gcc-15.1.0
arc                   randconfig-001-20251108    gcc-12.5.0
arc                   randconfig-002-20251108    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                       imx_v4_v5_defconfig    clang-22
arm                         lpc32xx_defconfig    clang-17
arm                         nhk8815_defconfig    clang-22
arm                       omap2plus_defconfig    gcc-15.1.0
arm                             pxa_defconfig    gcc-15.1.0
arm                   randconfig-001-20251108    gcc-14.3.0
arm                   randconfig-002-20251108    gcc-15.1.0
arm                   randconfig-003-20251108    clang-22
arm                   randconfig-004-20251108    gcc-10.5.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251108    gcc-8.5.0
arm64                 randconfig-001-20251109    gcc-15.1.0
arm64                 randconfig-002-20251108    clang-22
arm64                 randconfig-002-20251109    gcc-12.5.0
arm64                 randconfig-003-20251108    clang-22
arm64                 randconfig-003-20251109    clang-19
arm64                 randconfig-004-20251108    clang-22
arm64                 randconfig-004-20251109    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251108    gcc-15.1.0
csky                  randconfig-001-20251109    gcc-14.3.0
csky                  randconfig-002-20251108    gcc-15.1.0
csky                  randconfig-002-20251109    gcc-11.5.0
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20251108    clang-22
hexagon               randconfig-002-20251108    clang-22
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251109    gcc-14
i386        buildonly-randconfig-002-20251109    gcc-13
i386        buildonly-randconfig-003-20251109    clang-20
i386        buildonly-randconfig-004-20251109    clang-20
i386        buildonly-randconfig-005-20251109    clang-20
i386        buildonly-randconfig-006-20251109    clang-20
i386                  randconfig-011-20251109    clang-20
i386                  randconfig-012-20251109    clang-20
i386                  randconfig-013-20251109    gcc-14
i386                  randconfig-014-20251109    gcc-14
i386                  randconfig-015-20251109    gcc-12
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251108    gcc-12.5.0
loongarch             randconfig-002-20251108    gcc-12.5.0
m68k                              allnoconfig    gcc-15.1.0
m68k                         amcore_defconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           ip28_defconfig    gcc-15.1.0
mips                      maltaaprp_defconfig    clang-22
nios2                            alldefconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251108    gcc-8.5.0
nios2                 randconfig-002-20251108    gcc-9.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20251108    gcc-8.5.0
parisc                randconfig-002-20251108    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                     ksi8560_defconfig    gcc-15.1.0
powerpc                    mvme5100_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251108    gcc-8.5.0
powerpc               randconfig-002-20251108    gcc-9.5.0
powerpc                     redwood_defconfig    clang-22
powerpc                    socrates_defconfig    gcc-15.1.0
powerpc                     tqm8541_defconfig    clang-22
powerpc                         wii_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251108    gcc-8.5.0
powerpc64             randconfig-002-20251108    gcc-8.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                    nommu_virt_defconfig    clang-22
riscv                 randconfig-001-20251108    clang-19
riscv                 randconfig-002-20251108    gcc-12.5.0
s390                              allnoconfig    clang-22
s390                  randconfig-001-20251108    clang-22
s390                  randconfig-002-20251108    gcc-8.5.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                            hp6xx_defconfig    gcc-15.1.0
sh                 kfr2r09-romimage_defconfig    gcc-15.1.0
sh                          r7785rp_defconfig    gcc-15.1.0
sh                    randconfig-001-20251108    gcc-15.1.0
sh                    randconfig-002-20251108    gcc-13.4.0
sh                           se7712_defconfig    gcc-15.1.0
sh                             sh03_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20251108    gcc-14.3.0
sparc                 randconfig-002-20251108    gcc-8.5.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251108    clang-20
sparc64               randconfig-002-20251108    clang-20
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251108    gcc-14
um                    randconfig-002-20251108    clang-22
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251109    clang-20
x86_64      buildonly-randconfig-002-20251109    gcc-14
x86_64      buildonly-randconfig-003-20251109    clang-20
x86_64      buildonly-randconfig-004-20251109    clang-20
x86_64      buildonly-randconfig-005-20251109    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-011-20251109    gcc-14
x86_64                randconfig-012-20251109    clang-20
x86_64                randconfig-013-20251109    gcc-14
x86_64                randconfig-014-20251109    clang-20
x86_64                randconfig-015-20251109    clang-20
x86_64                randconfig-016-20251109    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251108    gcc-8.5.0
xtensa                randconfig-002-20251108    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
