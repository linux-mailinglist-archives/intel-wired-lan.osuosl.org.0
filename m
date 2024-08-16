Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B15954C66
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 16:34:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B06674014E;
	Fri, 16 Aug 2024 14:34:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3r9s9h-U8b4c; Fri, 16 Aug 2024 14:34:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C5174105B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723818843;
	bh=NpcQ9JlcXQMrsAIR077jsiMMvUx/MzsNEvjsvav1F+M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nJ/w69GnaxBltHwpyXkvhoQWbhQcP7V9clHVfYvg+szIV4h+HquDlQ5q+S63V9KM9
	 qOWpz6MnvH4IJh2bGgSVDRFYBlzxFleuPs8z/EDOaJDt+i+y9OX0xScZ09UgkCYKUe
	 jxbAGdurNs3YFNTkQ2J95VFoO6tzs2zorNDRgRBUadigMHQeYxr7ZVSO12MrbKd228
	 URnpPT6qrlOlbj64uROSjKfLiDMNXe4NA32L31XqwwsTA1b5Eh/Mr09jZdJv9W/uBu
	 WonO2WMUZ1Qrlm1pOTuXVvzzeKuhg1DV2btoIzU1KNje3PhOBl8ScelhRp3SGBAz7l
	 AhYCXWrp6gXSg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C5174105B;
	Fri, 16 Aug 2024 14:34:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 030C61BF420
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 14:34:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E467660677
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 14:34:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jG7wPoyDLSbf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 14:34:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AF9D46066C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF9D46066C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF9D46066C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 14:33:59 +0000 (UTC)
X-CSE-ConnectionGUID: pnvsywtWSv2yti9YTHoM5w==
X-CSE-MsgGUID: pf+7m+8MR/m0Rz+91pXwiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11166"; a="21749077"
X-IronPort-AV: E=Sophos;i="6.10,152,1719903600"; d="scan'208";a="21749077"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2024 07:33:59 -0700
X-CSE-ConnectionGUID: VgOkoffUSNyhzQo5CGuqNQ==
X-CSE-MsgGUID: BJ08cHPoSK2HcofDu1EKcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,152,1719903600"; d="scan'208";a="90464673"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 16 Aug 2024 07:33:58 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sey1c-0006W2-0Y
 for intel-wired-lan@lists.osuosl.org; Fri, 16 Aug 2024 14:33:56 +0000
Date: Fri, 16 Aug 2024 22:33:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408162242.rsxiwFTh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723818840; x=1755354840;
 h=date:from:to:subject:message-id;
 bh=ypfoY0omvOa+qmV111ofNRvRW6hmlghaYbyIgpJUPWk=;
 b=MUD4OJ3XCfWTiOE5kU558eDjMve2lDj9uMZox1YAf91BPWRdKwhuVE1z
 qOzQW5iZZMIhR4HSZAwD8r/coMVyd06bRmsxh3hyDDtDzsMZutqn8Nvvq
 hxkZn+1kSUXazOxY4Q3fVTfYCR6PqV/hYctZbVjICdqkVnuSLY9SLioG9
 JLod/48EmcKXL4auXZVa/OHCenCgA8elyw4XEPid9PDBj7DqQr7o+uCdV
 YmOm6z34+ZYRhicbEgVykmaaNnQZWeja2aA7xe4X/rWSfVHJRayXdz+F+
 3aniG47e0L5gaONS4srzZ4YC/KPCkf8BF/icyuMBG0Wkg6ieKyxJyW6Xh
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MUD4OJ3X
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9f6517a0930f644e14f3eef6787a686d0ff48ac3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 9f6517a0930f644e14f3eef6787a686d0ff48ac3  e1000e: avoid failing the system during pm_suspend

elapsed time: 1353m

configs tested: 141
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240816   gcc-13.2.0
arc                   randconfig-002-20240816   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                         bcm2835_defconfig   clang-20
arm                   randconfig-001-20240816   clang-20
arm                   randconfig-002-20240816   clang-20
arm                   randconfig-003-20240816   clang-20
arm                   randconfig-004-20240816   clang-20
arm                        realview_defconfig   clang-20
arm                          sp7021_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240816   clang-20
arm64                 randconfig-002-20240816   clang-20
arm64                 randconfig-003-20240816   clang-20
arm64                 randconfig-004-20240816   clang-20
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240816   gcc-14.1.0
csky                  randconfig-002-20240816   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240816   clang-20
hexagon               randconfig-002-20240816   clang-20
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240816   gcc-12
i386         buildonly-randconfig-002-20240816   clang-18
i386         buildonly-randconfig-003-20240816   clang-18
i386         buildonly-randconfig-004-20240816   clang-18
i386         buildonly-randconfig-005-20240816   gcc-11
i386         buildonly-randconfig-006-20240816   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240816   clang-18
i386                  randconfig-002-20240816   gcc-12
i386                  randconfig-003-20240816   gcc-11
i386                  randconfig-004-20240816   gcc-12
i386                  randconfig-005-20240816   clang-18
i386                  randconfig-006-20240816   gcc-11
i386                  randconfig-011-20240816   gcc-12
i386                  randconfig-012-20240816   clang-18
i386                  randconfig-013-20240816   clang-18
i386                  randconfig-014-20240816   gcc-12
i386                  randconfig-015-20240816   gcc-12
i386                  randconfig-016-20240816   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240816   gcc-14.1.0
loongarch             randconfig-002-20240816   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240816   gcc-14.1.0
nios2                 randconfig-002-20240816   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240816   gcc-14.1.0
parisc                randconfig-002-20240816   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc64             randconfig-001-20240816   gcc-14.1.0
powerpc64             randconfig-003-20240816   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                               defconfig   clang-20
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240816   gcc-14.1.0
s390                  randconfig-002-20240816   clang-20
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240816   gcc-14.1.0
sh                    randconfig-002-20240816   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240816   gcc-14.1.0
sparc64               randconfig-002-20240816   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240816   clang-20
um                    randconfig-002-20240816   gcc-12
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240816   clang-18
x86_64       buildonly-randconfig-002-20240816   gcc-12
x86_64       buildonly-randconfig-003-20240816   gcc-12
x86_64       buildonly-randconfig-004-20240816   clang-18
x86_64       buildonly-randconfig-005-20240816   clang-18
x86_64       buildonly-randconfig-006-20240816   gcc-12
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240816   gcc-12
x86_64                randconfig-002-20240816   clang-18
x86_64                randconfig-003-20240816   clang-18
x86_64                randconfig-004-20240816   clang-18
x86_64                          rhel-8.3-rust   clang-18
x86_64       sof-customedconfig-amd-defconfig   clang-18
x86_64       sof-customedconfig-atom-defconfig   gcc-12
x86_64       sof-customedconfig-avs-defconfig   clang-18
x86_64       sof-customedconfig-bpf-defconfig   gcc-12
x86_64       sof-customedconfig-compile-test-defconfig   gcc-12
x86_64       sof-customedconfig-debug-defconfig   clang-18
x86_64       sof-customedconfig-edison-defconfig   gcc-12
x86_64       sof-customedconfig-fuzz-defconfig   gcc-12
x86_64       sof-customedconfig-hdaudio-codecs-defconfig   gcc-11
x86_64       sof-customedconfig-igb-tsn-defconfig   gcc-12
x86_64       sof-customedconfig-lock-stall-defconfig   clang-18
x86_64       sof-customedconfig-mach-driver-defconfig   gcc-12
x86_64       sof-customedconfig-memory-debug-defconfig   clang-18
x86_64       sof-customedconfig-minimize-defconfig   gcc-12
x86_64       sof-customedconfig-nocodec-defconfig   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240816   gcc-14.1.0
xtensa                randconfig-002-20240816   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
