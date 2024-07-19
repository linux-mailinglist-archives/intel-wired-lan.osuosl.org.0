Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2889937B16
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jul 2024 18:34:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A74F98207C;
	Fri, 19 Jul 2024 16:34:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7781-hUpweBb; Fri, 19 Jul 2024 16:34:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 297BD8207D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721406882;
	bh=EjhgKdlgBhSlfJ/HQ707n+g9/Cqo3M64tHxVXRiLU+U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4abRGoNcBqMezhnY1eYD4rjOGpVsQ5bEdrRRmC5hTIoeTYChjeYIUtdytiUHYGrQ4
	 SzSCOe1bx6oBHNPUxOJcwBJBkjehBOUXQUfnlh/R2Vj4ATYIHsjmJCBO/B0vGg5MFO
	 PHKW39oNe8rTJQ2wjcPgcHIJJpcTJWaTYtIRd7MAbuXaBxjIzMEtteJweOYFzrhg+h
	 LpFW6xO7xZPDCwn8eC6y1lUWdI1M20TvdMyLhQ1Cu/4z2Uk0ZxhH+kBcKS6J4VcUTQ
	 vJusB6yi25mQNKqVUkuBk3ujvlwvE3zbUL0ucklaTuAbQmzpqmTveWs7jqntwmV+sX
	 0p7QY9dthH1FA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 297BD8207D;
	Fri, 19 Jul 2024 16:34:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B2651BF313
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 16:34:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 686638207B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 16:34:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e5zhYxl5SxJx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jul 2024 16:34:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2ABCA82077
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2ABCA82077
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2ABCA82077
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 16:34:37 +0000 (UTC)
X-CSE-ConnectionGUID: wyLJUNvFTT+XkveEVmbdUQ==
X-CSE-MsgGUID: dQqd0BmKRweb/JYkxgD8cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11138"; a="19208351"
X-IronPort-AV: E=Sophos;i="6.09,221,1716274800"; d="scan'208";a="19208351"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2024 09:34:37 -0700
X-CSE-ConnectionGUID: g42WWNs8RNC8F0m1/eMdhA==
X-CSE-MsgGUID: YyKEzkYhQhKiaHt7+BjNNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,221,1716274800"; d="scan'208";a="88648996"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 19 Jul 2024 09:34:36 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sUqZ0-000iNy-06
 for intel-wired-lan@lists.osuosl.org; Fri, 19 Jul 2024 16:34:34 +0000
Date: Sat, 20 Jul 2024 00:34:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407200015.H7w2GQtQ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721406878; x=1752942878;
 h=date:from:to:subject:message-id;
 bh=5k7DoDBsfTRwtZEct53AfnDw1SAXsSjhXTsUNsic7+Q=;
 b=iXuhtuQYxC4siF1tlObT75IbjLGduFX6J8GsOehOxwqS2ym3oIJfUvdh
 CzDMPf6qsOtih+uaWIErrisbObyOUEm+CkRvPac1IqHfnsxHBH/Cvu8Br
 vQ/T67CZ6QmcpN0ZLGSKNcd2Z8i5Vx9u04fUwOyv3+4jvO0gtSyiuWtUl
 8ToT/1JeBHhhhZQP8jKkqxZuIqWqew5KnJqaWmpcNDWE9AZnjzwwM4ITQ
 vgK0ETafoMfivHrZId6qltUawVR7bMeHC2vmLJdwaB5VgoloO1vurHSqe
 cGjAVgTmtRj3GPPEURo8cQ8vYjdp8wfJjR+GhZ3dSzRsYrp4UYCzbEFgV
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iXuhtuQY
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d16e5edadbb55a2fa204770bdd0b23e15b0d5464
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
branch HEAD: d16e5edadbb55a2fa204770bdd0b23e15b0d5464  ice: Fix recipe read procedure

elapsed time: 1064m

configs tested: 207
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              alldefconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                          axs101_defconfig   gcc-13.2.0
arc                   randconfig-001-20240719   gcc-13.2.0
arc                   randconfig-002-20240719   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                   randconfig-001-20240719   clang-19
arm                   randconfig-002-20240719   gcc-14.1.0
arm                   randconfig-003-20240719   gcc-14.1.0
arm                   randconfig-004-20240719   clang-19
arm                         s3c6400_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240719   gcc-14.1.0
arm64                 randconfig-002-20240719   gcc-14.1.0
arm64                 randconfig-003-20240719   gcc-14.1.0
arm64                 randconfig-004-20240719   gcc-14.1.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240719   gcc-14.1.0
csky                  randconfig-002-20240719   gcc-14.1.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240719   clang-19
hexagon               randconfig-002-20240719   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240719   clang-18
i386         buildonly-randconfig-002-20240719   clang-18
i386         buildonly-randconfig-003-20240719   clang-18
i386         buildonly-randconfig-003-20240719   gcc-10
i386         buildonly-randconfig-004-20240719   clang-18
i386         buildonly-randconfig-005-20240719   clang-18
i386         buildonly-randconfig-005-20240719   gcc-10
i386         buildonly-randconfig-006-20240719   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240719   clang-18
i386                  randconfig-002-20240719   clang-18
i386                  randconfig-003-20240719   clang-18
i386                  randconfig-004-20240719   clang-18
i386                  randconfig-004-20240719   gcc-13
i386                  randconfig-005-20240719   clang-18
i386                  randconfig-006-20240719   clang-18
i386                  randconfig-011-20240719   clang-18
i386                  randconfig-012-20240719   clang-18
i386                  randconfig-013-20240719   clang-18
i386                  randconfig-014-20240719   clang-18
i386                  randconfig-015-20240719   clang-18
i386                  randconfig-015-20240719   gcc-13
i386                  randconfig-016-20240719   clang-18
i386                  randconfig-016-20240719   gcc-13
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240719   gcc-14.1.0
loongarch             randconfig-002-20240719   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                         amcore_defconfig   gcc-13.2.0
m68k                          sun3x_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                         bigsur_defconfig   gcc-13.2.0
mips                       bmips_be_defconfig   gcc-13.2.0
mips                      fuloong2e_defconfig   gcc-13.2.0
mips                           ip28_defconfig   gcc-13.2.0
mips                      maltaaprp_defconfig   gcc-13.2.0
mips                        maltaup_defconfig   gcc-13.2.0
mips                   sb1250_swarm_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240719   gcc-14.1.0
nios2                 randconfig-002-20240719   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                generic-32bit_defconfig   gcc-13.2.0
parisc                randconfig-001-20240719   gcc-14.1.0
parisc                randconfig-002-20240719   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                          allyesconfig   gcc-14.1.0
powerpc                    amigaone_defconfig   gcc-13.2.0
powerpc                    gamecube_defconfig   gcc-13.2.0
powerpc                   lite5200b_defconfig   gcc-13.2.0
powerpc                 mpc837x_rdb_defconfig   gcc-13.2.0
powerpc                     powernv_defconfig   gcc-13.2.0
powerpc                      ppc64e_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240719   gcc-14.1.0
powerpc               randconfig-002-20240719   gcc-14.1.0
powerpc               randconfig-003-20240719   gcc-14.1.0
powerpc64             randconfig-001-20240719   gcc-13.2.0
powerpc64             randconfig-002-20240719   gcc-14.1.0
powerpc64             randconfig-003-20240719   gcc-14.1.0
riscv                            allmodconfig   clang-19
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   clang-19
riscv                               defconfig   gcc-14.1.0
riscv             nommu_k210_sdcard_defconfig   gcc-13.2.0
riscv                 randconfig-001-20240719   clang-19
riscv                 randconfig-002-20240719   clang-19
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-19
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240719   clang-19
s390                  randconfig-002-20240719   clang-19
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                ecovec24-romimage_defconfig   gcc-13.2.0
sh                     magicpanelr2_defconfig   gcc-13.2.0
sh                          r7785rp_defconfig   gcc-13.2.0
sh                    randconfig-001-20240719   gcc-14.1.0
sh                    randconfig-002-20240719   gcc-14.1.0
sh                           se7705_defconfig   gcc-13.2.0
sh                           se7712_defconfig   gcc-13.2.0
sh                        sh7763rdp_defconfig   gcc-13.2.0
sh                   sh7770_generic_defconfig   gcc-13.2.0
sh                             shx3_defconfig   gcc-13.2.0
sh                              ul2_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240719   gcc-14.1.0
sparc64               randconfig-002-20240719   gcc-14.1.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-13
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240719   clang-19
um                    randconfig-002-20240719   gcc-13
um                           x86_64_defconfig   clang-15
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240719   gcc-13
x86_64       buildonly-randconfig-002-20240719   gcc-13
x86_64       buildonly-randconfig-003-20240719   gcc-13
x86_64       buildonly-randconfig-004-20240719   gcc-13
x86_64       buildonly-randconfig-005-20240719   gcc-13
x86_64       buildonly-randconfig-006-20240719   gcc-13
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240719   gcc-13
x86_64                randconfig-002-20240719   gcc-13
x86_64                randconfig-003-20240719   gcc-13
x86_64                randconfig-004-20240719   gcc-13
x86_64                randconfig-005-20240719   gcc-13
x86_64                randconfig-006-20240719   gcc-13
x86_64                randconfig-011-20240719   gcc-13
x86_64                randconfig-012-20240719   gcc-13
x86_64                randconfig-013-20240719   gcc-13
x86_64                randconfig-014-20240719   gcc-13
x86_64                randconfig-015-20240719   gcc-13
x86_64                randconfig-016-20240719   gcc-13
x86_64                randconfig-071-20240719   gcc-13
x86_64                randconfig-072-20240719   gcc-13
x86_64                randconfig-073-20240719   gcc-13
x86_64                randconfig-074-20240719   gcc-13
x86_64                randconfig-075-20240719   gcc-13
x86_64                randconfig-076-20240719   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240719   gcc-14.1.0
xtensa                randconfig-002-20240719   gcc-14.1.0
xtensa                         virt_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
