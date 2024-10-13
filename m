Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E019B99BC58
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Oct 2024 23:54:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FA066066D;
	Sun, 13 Oct 2024 21:54:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gkaHeUCBrSNW; Sun, 13 Oct 2024 21:54:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D67F60687
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728856453;
	bh=B3dq3WceQOsyslLdpMkak74q+HoMSYwBtoFzXGofpbs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=krIxcv+WDskoD3NqWiSRRi+z0d6hhZ45wgrGDhmyFGKj1SwBWoV/YPIDJvEGRci1x
	 gt6DaMNF1oywakYtDBQ6/nZjpFZFK0DvH/776rJMj/KybOLEUXLgb/s4khz9xk1/oR
	 Uh3ZGmdLJiVfZmL0CmO/vM+I88aq1PkN3RNCQfbz86pu53t62cI5/Ct7TQLRU5dwt1
	 7MWV+TOY4379kecpuRBhTDOMLanYwo4zKrb4gX4ySPZMLJiMBs+NIr+2+k1MRBnCV7
	 z94XGqVT30w2JAb2/NzwHM2FZ6ZmZPKFQyM913wguXE/1+82m1BG21g5vNuxmnzZoT
	 x8vt9v2YQj3VA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D67F60687;
	Sun, 13 Oct 2024 21:54:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B71F1BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Oct 2024 21:54:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78B1540131
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Oct 2024 21:54:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CLXUYITfFjnP for <intel-wired-lan@lists.osuosl.org>;
 Sun, 13 Oct 2024 21:54:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B9426400A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9426400A6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B9426400A6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Oct 2024 21:54:08 +0000 (UTC)
X-CSE-ConnectionGUID: kgzCEz0GShmwQVd5zQsNyw==
X-CSE-MsgGUID: BKa7pHRLQburLlm/odBpNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="50726649"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="50726649"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2024 14:54:08 -0700
X-CSE-ConnectionGUID: grXukkhySC69SWlOfPSKyA==
X-CSE-MsgGUID: Z3sk3tMiRSKGzE6YqyRgBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="81969765"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 13 Oct 2024 14:54:06 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t06XM-000Eih-1r
 for intel-wired-lan@lists.osuosl.org; Sun, 13 Oct 2024 21:54:04 +0000
Date: Mon, 14 Oct 2024 05:54:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410140558.WEnAKsmP-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728856449; x=1760392449;
 h=date:from:to:subject:message-id;
 bh=AtOwNlhqv5tvIGZZgqxDbfKkhKJmPPJgBfoAL4MEIQU=;
 b=RGk6TqByp+I3wPajwUInh9wvCXUd3tPr+w8gutbMVRWPlhIRdpHCVJUK
 rJa8DqEKxmwrG1JcXexutqPMrz9HxVpQOFhnwJZlMuF6Zq1HFY6U+yly+
 HhuRSdum1FiwOAGJaV9XvYTHJPHb5JvXoTY3p/q+oQ2G8ez1myeYxQ9jB
 NxbkYusapCtolObSZvzLgn83Y1Vt3fwmHK8fk904r7XNthuGZWkKTb1N8
 wMgQJekIQ4S8zkSAeHZQ7L1L1AqAubudPSxka4zTYJ8tZkNxB16det5Fr
 LCxtM31uhKsMgMP7szOBW1OSL2LQ2869B7ka62pMXTIoRCl3c9zItW3mZ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RGk6TqBy
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 acf375d055c40541a93750688b893db939eddfd6
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: acf375d055c40541a93750688b893db939eddfd6  ice: Fix use after free during unload with ports in bridge

elapsed time: 2926m

configs tested: 102
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              alldefconfig    clang-20
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arc                        nsimosci_defconfig    clang-20
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm                          ixp4xx_defconfig    clang-20
arm                          pxa3xx_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-18
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-18
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241013    clang-18
i386        buildonly-randconfig-002-20241013    gcc-12
i386        buildonly-randconfig-003-20241013    clang-18
i386        buildonly-randconfig-004-20241013    gcc-12
i386        buildonly-randconfig-005-20241013    clang-18
i386        buildonly-randconfig-006-20241013    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20241013    clang-18
i386                  randconfig-002-20241013    gcc-12
i386                  randconfig-003-20241013    gcc-12
i386                  randconfig-004-20241013    gcc-11
i386                  randconfig-005-20241013    clang-18
i386                  randconfig-006-20241013    clang-18
i386                  randconfig-011-20241013    clang-18
i386                  randconfig-012-20241013    gcc-12
i386                  randconfig-013-20241013    clang-18
i386                  randconfig-014-20241013    gcc-12
i386                  randconfig-015-20241013    clang-18
i386                  randconfig-016-20241013    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                          ath79_defconfig    clang-20
mips                           ip32_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                            allnoconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc64                            defconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                       eiger_defconfig    clang-20
powerpc                       holly_defconfig    clang-20
powerpc                      tqm8xx_defconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
s390                              allnoconfig    clang-20
s390                                defconfig    gcc-12
sh                                allnoconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                ecovec24-romimage_defconfig    clang-20
sh                          polaris_defconfig    clang-20
sh                           se7619_defconfig    clang-20
sh                   sh7724_generic_defconfig    clang-20
sh                            titan_defconfig    clang-20
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                       common_defconfig    clang-20
xtensa                    smp_lx200_defconfig    clang-20

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
