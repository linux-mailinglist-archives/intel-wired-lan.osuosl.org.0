Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1DE92B8BA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 13:45:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 936C881A23;
	Tue,  9 Jul 2024 11:45:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0oL7NUXuRLcm; Tue,  9 Jul 2024 11:45:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 085FB81A73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720525531;
	bh=jm3ODG3ZXhRnMAq9LfETPFFzkvRZPci9BvJaLbrhC+o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=szEQ8X13wEtbxtjxajzWe468t4upwO4MJww5RoqCmkJImSy5yB7a0+0cNJ1Um7akW
	 8buBfajJH62vUvdugu+BRChB8NyPJnZxVvEgc+sYB1Ur4GAG/aZy5hMfEXAf6nd6ma
	 da3Vcn9LD7NpDBzkzCPQc6NrwkzKdAWgOksbYeCbjgkKeto45rs5y02AoyxFbnmW3Q
	 RT/EWgnW9a/dR09+T3xqKB1oVlErpf5JFPsy65POtT2MOWCzbF8I7IDfdNL/DzcRYK
	 Ssp3A58eoHNk1YUspW5vaZjC0BWbPTdi/utqcGiVYvitH/eEl4pr+kfgT9EnKOrzJr
	 3PdB1gtCsbRfw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 085FB81A73;
	Tue,  9 Jul 2024 11:45:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F24301BF59A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 11:45:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DEB3860AFD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 11:45:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j1sIAulAKESb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 11:45:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7684F60A65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7684F60A65
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7684F60A65
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 11:45:27 +0000 (UTC)
X-CSE-ConnectionGUID: K2AkzmmgR8WLEiKPy1Kh4Q==
X-CSE-MsgGUID: GAj/vGG4S6+GvI4dSqZugw==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="35209370"
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="35209370"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 04:45:26 -0700
X-CSE-ConnectionGUID: 6sy9HhjcQl20TaXh+bEzJA==
X-CSE-MsgGUID: D/60cqQ/QfyXehjOzrecZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="48553564"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 09 Jul 2024 04:45:26 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sR9Hf-000WdB-04
 for intel-wired-lan@lists.osuosl.org; Tue, 09 Jul 2024 11:45:23 +0000
Date: Tue, 09 Jul 2024 19:44:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407091923.M0Lpoq8x-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720525527; x=1752061527;
 h=date:from:to:subject:message-id;
 bh=iIDeV64rIIlfqaRJNjF4UbxErrDpUt5dGj0kO5LpKYk=;
 b=Ko9C68aQLtzfGfiMhJY/nOWunxr3+31iYAqerczL/Z8i5i1izxiuZHKH
 mZp//5znwz1ipWgohgXQfW0M3dSI6tMT9aOuabvYpkod0seJhBLYQiGGV
 e52AdunuVaPhK3Ozq6AxJsr18BxKvWgNa1Lvzul61PFOhxClbh6/lxktg
 0sjNZil+lWQojCMr6iUf2qMhuXo3bzVX6xsG1mJi/XV2qRQULZ+fjv+O8
 RVd6oYxFtsye7ZRN7P0IdJ7OViY4n2ky6RnP+2XF9K1fa3EmmRrnvm6p9
 xf1IjmAlU8KmqtUjKQnynB+QXZzZryeRoblOV0P5nUH1s17LFB1TePut1
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ko9C68aQ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 0a0291597afb4ed573416c3ccb743f43040af6db
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
branch HEAD: 0a0291597afb4ed573416c3ccb743f43040af6db  ice: Fix recipe read procedure

elapsed time: 1188m

configs tested: 193
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240709   gcc-13.2.0
arc                   randconfig-002-20240709   gcc-13.2.0
arc                           tb10x_defconfig   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                                 defconfig   gcc-13.2.0
arm                      integrator_defconfig   gcc-13.2.0
arm                          ixp4xx_defconfig   gcc-13.2.0
arm                         nhk8815_defconfig   gcc-13.2.0
arm                   randconfig-001-20240709   gcc-13.2.0
arm                   randconfig-002-20240709   gcc-13.2.0
arm                   randconfig-003-20240709   gcc-13.2.0
arm                   randconfig-004-20240709   gcc-13.2.0
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240709   gcc-13.2.0
arm64                 randconfig-002-20240709   gcc-13.2.0
arm64                 randconfig-003-20240709   gcc-13.2.0
arm64                 randconfig-004-20240709   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240709   gcc-13.2.0
csky                  randconfig-002-20240709   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                          allyesconfig   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240709   gcc-11
i386         buildonly-randconfig-002-20240709   gcc-11
i386         buildonly-randconfig-003-20240709   gcc-11
i386         buildonly-randconfig-004-20240709   gcc-11
i386         buildonly-randconfig-005-20240709   gcc-11
i386         buildonly-randconfig-006-20240709   gcc-11
i386                                defconfig   clang-18
i386                  randconfig-001-20240709   gcc-11
i386                  randconfig-002-20240709   gcc-11
i386                  randconfig-003-20240709   gcc-11
i386                  randconfig-004-20240709   gcc-11
i386                  randconfig-005-20240709   gcc-11
i386                  randconfig-006-20240709   gcc-11
i386                  randconfig-011-20240709   gcc-11
i386                  randconfig-012-20240709   gcc-11
i386                  randconfig-013-20240709   gcc-11
i386                  randconfig-014-20240709   gcc-11
i386                  randconfig-015-20240709   gcc-11
i386                  randconfig-016-20240709   gcc-11
loongarch                        allmodconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240709   gcc-13.2.0
loongarch             randconfig-002-20240709   gcc-13.2.0
m68k                             allmodconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.2.0
m68k                       bvme6000_defconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                         cobalt_defconfig   gcc-13.2.0
mips                           jazz_defconfig   gcc-13.2.0
mips                      malta_kvm_defconfig   gcc-13.2.0
mips                    maltaup_xpa_defconfig   gcc-13.2.0
nios2                         3c120_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240709   gcc-13.2.0
nios2                 randconfig-002-20240709   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                         allyesconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
openrisc                    or1ksim_defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                           allyesconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240709   gcc-13.2.0
parisc                randconfig-002-20240709   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                          allyesconfig   clang-19
powerpc                          allyesconfig   gcc-13.2.0
powerpc                   lite5200b_defconfig   gcc-13.2.0
powerpc                      mgcoge_defconfig   gcc-13.2.0
powerpc                    mvme5100_defconfig   gcc-13.2.0
powerpc                      pcm030_defconfig   gcc-13.2.0
powerpc                     powernv_defconfig   gcc-13.2.0
powerpc                      ppc44x_defconfig   gcc-13.2.0
powerpc                         ps3_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240709   gcc-13.2.0
powerpc               randconfig-002-20240709   gcc-13.2.0
powerpc               randconfig-003-20240709   gcc-13.2.0
powerpc                     redwood_defconfig   gcc-13.2.0
powerpc                      tqm8xx_defconfig   gcc-13.2.0
powerpc64             randconfig-001-20240709   gcc-13.2.0
powerpc64             randconfig-002-20240709   gcc-13.2.0
powerpc64             randconfig-003-20240709   gcc-13.2.0
riscv                            allmodconfig   clang-19
riscv                            allmodconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                            allyesconfig   clang-19
riscv                            allyesconfig   gcc-13.2.0
riscv                               defconfig   gcc-13.2.0
riscv                 randconfig-001-20240709   gcc-13.2.0
riscv                 randconfig-002-20240709   gcc-13.2.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-13.2.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   gcc-13.2.0
s390                  randconfig-001-20240709   gcc-13.2.0
s390                  randconfig-002-20240709   gcc-13.2.0
sh                               allmodconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                        dreamcast_defconfig   gcc-13.2.0
sh                ecovec24-romimage_defconfig   gcc-13.2.0
sh                        edosk7760_defconfig   gcc-13.2.0
sh                            hp6xx_defconfig   gcc-13.2.0
sh                    randconfig-001-20240709   gcc-13.2.0
sh                    randconfig-002-20240709   gcc-13.2.0
sh                          rsk7203_defconfig   gcc-13.2.0
sh                          rsk7269_defconfig   gcc-13.2.0
sh                           se7206_defconfig   gcc-13.2.0
sh                           se7619_defconfig   gcc-13.2.0
sh                             shx3_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-13.2.0
sparc64                          alldefconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240709   gcc-13.2.0
sparc64               randconfig-002-20240709   gcc-13.2.0
um                               allmodconfig   gcc-13.2.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-13.2.0
um                               allyesconfig   gcc-13.2.0
um                                  defconfig   gcc-13.2.0
um                             i386_defconfig   gcc-13.2.0
um                    randconfig-001-20240709   gcc-13.2.0
um                    randconfig-002-20240709   gcc-13.2.0
um                           x86_64_defconfig   gcc-13.2.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240709   gcc-11
x86_64       buildonly-randconfig-002-20240709   gcc-11
x86_64       buildonly-randconfig-003-20240709   gcc-11
x86_64       buildonly-randconfig-004-20240709   gcc-11
x86_64       buildonly-randconfig-005-20240709   gcc-11
x86_64       buildonly-randconfig-006-20240709   gcc-11
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240709   gcc-11
x86_64                randconfig-002-20240709   gcc-11
x86_64                randconfig-003-20240709   gcc-11
x86_64                randconfig-004-20240709   gcc-11
x86_64                randconfig-005-20240709   gcc-11
x86_64                randconfig-006-20240709   gcc-11
x86_64                randconfig-011-20240709   gcc-11
x86_64                randconfig-012-20240709   gcc-11
x86_64                randconfig-013-20240709   gcc-11
x86_64                randconfig-014-20240709   gcc-11
x86_64                randconfig-015-20240709   gcc-11
x86_64                randconfig-016-20240709   gcc-11
x86_64                randconfig-071-20240709   gcc-11
x86_64                randconfig-072-20240709   gcc-11
x86_64                randconfig-073-20240709   gcc-11
x86_64                randconfig-074-20240709   gcc-11
x86_64                randconfig-075-20240709   gcc-11
x86_64                randconfig-076-20240709   gcc-11
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240709   gcc-13.2.0
xtensa                randconfig-002-20240709   gcc-13.2.0
xtensa                    xip_kc705_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
