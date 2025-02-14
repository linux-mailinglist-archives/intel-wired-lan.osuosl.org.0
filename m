Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 502ABA364BA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 18:37:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC478608A0;
	Fri, 14 Feb 2025 17:37:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k_yKODCsFank; Fri, 14 Feb 2025 17:37:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7441608A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739554674;
	bh=QJwEJQVFOwYgtfkZGlI8rdvHAMedwwbQXkfqC+WqSRw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3pteNonQMsL2Xg+/M3OJirVN3zg5GcsOPE6ocA3RBdVlYu/u6k43ueSqVMxHbhMLB
	 7a0ULnEGv8R2lytpQxLz8ASLNPotLtNdJuh7CrIZ4uJ5zrfoBIm63jKISak3mcwDml
	 yopcXQXVAehZKCPcENm6avdiKfE5L7JBJceJTU6u6ubcoLxCfoMrJCqWTB/FgDcuI8
	 8kXOINEdvRzPQC8o3AwcaKSmNOSJ4DYertlgpSdzjGPX6M/kmSS/M3/ZudYF/Z9PJE
	 nDMIssU5uhaVwNix3x5FSrm0LfUhV0x7AK6U53MLpbTMTNN91+V+kSwqEfKN8iofhM
	 qRQFD7uQ1WLEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7441608A7;
	Fri, 14 Feb 2025 17:37:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B0381F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 17:37:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E07B40294
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 17:37:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wz-bJUHd-8Ne for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 17:37:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D483A4023C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D483A4023C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D483A4023C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 17:37:50 +0000 (UTC)
X-CSE-ConnectionGUID: g/OSuN2rSiG3OaIM2AED3w==
X-CSE-MsgGUID: /QuplR0wSmC3hDpAl4gVJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="50954968"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="50954968"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 09:37:50 -0800
X-CSE-ConnectionGUID: 9krKP9rkSjSxw3NseBNGBQ==
X-CSE-MsgGUID: 5V65iPWSQ9yIXr2JizrsXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="118439694"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 14 Feb 2025 09:37:49 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tizdL-0019x5-0W
 for intel-wired-lan@lists.osuosl.org; Fri, 14 Feb 2025 17:37:47 +0000
Date: Sat, 15 Feb 2025 01:37:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502150123.ueqBdQbS-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739554671; x=1771090671;
 h=date:from:to:subject:message-id;
 bh=UghmLpSpIe0iEKV4ISgD5U1yLL6JJYlt2m2uaOs/+6c=;
 b=QG6umWg6iKgDAhW8LVrzGlrzuyVL4247WWUMOMmw5qrv2/JqXVoQ/LDj
 9X/DZKYuQHev6QL6pcrgnVXYKF/m0QZ/cZb0mHM9x80tii3rJaRBuPsYO
 59pW++kQAq0svE7CJt08w2h7eQG1/3oeRy7movNfj3a+3xltVsr+YBjOZ
 F3hyGzZiiWIAoCPEznoZznYpQjcFfgKFpZodQcxmf9PHFyyAGeE646b/1
 iFrzmsTu/u8lUzGKKUJd1nyPW5r8OELM3gwOctn/A0M2ulSn2XhRblfqa
 +nhFYcCa0AwAJSyInlAcxe4lFMxsenCViznuhxxKV2RPMttUBBGq+EBgZ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QG6umWg6
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e062df9eb4466cfa7f8e86d1fc85be7e9f542580
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
branch HEAD: e062df9eb4466cfa7f8e86d1fc85be7e9f542580  ice: health.c: fix compilation on gcc 7.5

elapsed time: 1450m

configs tested: 109
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250214    gcc-13.2.0
arc                   randconfig-002-20250214    gcc-13.2.0
arm                              alldefconfig    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250214    clang-16
arm                   randconfig-002-20250214    gcc-14.2.0
arm                   randconfig-003-20250214    clang-21
arm                   randconfig-004-20250214    gcc-14.2.0
arm                        spear6xx_defconfig    clang-19
arm                       versatile_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250214    gcc-14.2.0
arm64                 randconfig-002-20250214    gcc-14.2.0
arm64                 randconfig-003-20250214    gcc-14.2.0
arm64                 randconfig-004-20250214    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250214    gcc-14.2.0
csky                  randconfig-002-20250214    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250214    clang-21
hexagon               randconfig-002-20250214    clang-15
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250214    gcc-12
i386        buildonly-randconfig-002-20250214    gcc-12
i386        buildonly-randconfig-003-20250214    clang-19
i386        buildonly-randconfig-004-20250214    gcc-12
i386        buildonly-randconfig-005-20250214    gcc-12
i386        buildonly-randconfig-006-20250214    gcc-12
i386                                defconfig    clang-19
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250214    gcc-14.2.0
loongarch             randconfig-002-20250214    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                          amiga_defconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                      bmips_stb_defconfig    clang-18
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250214    gcc-14.2.0
nios2                 randconfig-002-20250214    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250214    gcc-14.2.0
parisc                randconfig-002-20250214    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                        fsp2_defconfig    gcc-14.2.0
powerpc                    mvme5100_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250214    gcc-14.2.0
powerpc               randconfig-002-20250214    clang-18
powerpc               randconfig-003-20250214    clang-21
powerpc                     redwood_defconfig    clang-21
powerpc64             randconfig-001-20250214    clang-18
powerpc64             randconfig-002-20250214    gcc-14.2.0
powerpc64             randconfig-003-20250214    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250214    clang-18
riscv                 randconfig-002-20250214    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250214    gcc-14.2.0
s390                  randconfig-002-20250214    clang-19
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                               j2_defconfig    gcc-14.2.0
sh                          r7780mp_defconfig    gcc-14.2.0
sh                    randconfig-001-20250214    gcc-14.2.0
sh                    randconfig-002-20250214    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250214    gcc-14.2.0
sparc                 randconfig-002-20250214    gcc-14.2.0
sparc64               randconfig-001-20250214    gcc-14.2.0
sparc64               randconfig-002-20250214    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250214    gcc-12
um                    randconfig-002-20250214    clang-16
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250214    clang-19
x86_64      buildonly-randconfig-002-20250214    clang-19
x86_64      buildonly-randconfig-003-20250214    gcc-12
x86_64      buildonly-randconfig-004-20250214    clang-19
x86_64      buildonly-randconfig-005-20250214    gcc-12
x86_64      buildonly-randconfig-006-20250214    gcc-12
x86_64                              defconfig    gcc-11
xtensa                           alldefconfig    gcc-14.2.0
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250214    gcc-14.2.0
xtensa                randconfig-002-20250214    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
