Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAC092EEB6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2024 20:20:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CAA6410FE;
	Thu, 11 Jul 2024 18:20:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R223oOmqfmfW; Thu, 11 Jul 2024 18:20:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48BEE41103
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720722020;
	bh=pNNgLeZ1OrFlOjL5FHi0shdAE/0xlM53JS58pTLqXhc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MQFpl6DYpogYQmqUE7ZZRgq6sU9TuW6buMsb9WEc1Bn3bM+M2QeoY0l63/mCCcs4+
	 9DCWq7UHxLVoioImOc7tAwuQawtF8ojd11xWGXJwUMRrDynyYl+WVEmvAXE4j9rsIq
	 NtfOEjlKi1cBHpbcGqIHOHUBJIEwf27FeW+4m+h98jVWYtnDSlg88L5Bf0ixm3CE8v
	 bL/u69ebddGYzpY0rj1yxEUXTj/MLnyC1kRBRVdpgO+vNZa427hsfUUgLzwCyCZOqX
	 d3FAEH/k9PqSOeQfckCouo/HvxA58RIAuwSQ1r0QyA71pFJc+v1YTkHOi3k+Khq0J/
	 zoVRMkhLPPy/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 48BEE41103;
	Thu, 11 Jul 2024 18:20:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 996501BF59E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 18:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 919FD410F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 18:20:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c1Y-7o6lb0ch for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2024 18:20:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DF805410C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF805410C5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF805410C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 18:20:15 +0000 (UTC)
X-CSE-ConnectionGUID: Hz49+jgjT86l6eVvoRFW1w==
X-CSE-MsgGUID: wKW7Q61USGCCrP3Ujc/sqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="18334576"
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="18334576"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 11:19:40 -0700
X-CSE-ConnectionGUID: DlG9tgGjQOG/yafFK4rBeg==
X-CSE-MsgGUID: okAKWVqtR4uB5JpHgXvkJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="48743945"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 11 Jul 2024 11:19:39 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sRyOF-000Zdq-32
 for intel-wired-lan@lists.osuosl.org; Thu, 11 Jul 2024 18:19:35 +0000
Date: Fri, 12 Jul 2024 02:19:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407120227.u46QIwEv-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720722016; x=1752258016;
 h=date:from:to:subject:message-id;
 bh=GIoXeL2wNK6vMiUImnlES4JZ8+vbAgHBCWmV/EZ995E=;
 b=LztmTzkN2NuzW+t5tth1AoAshC+Njc1Tw0M/U2Kf0DYOFDSa7cjY32Gt
 yuo4f91Mr4dJ2vQREuDQM4qvFR2EmJYCZMzA9+rCIblXLya7BNbM23V5H
 /LXZ3g+TIqSF9X+uTqwui5F5xbWRUhlAbOuqZFkoEZ1E+ETqtaJpf4HgB
 0rHHq1hQGrDp7pwb25T3pquYtizGOt4aLLETOqbRu4N4WtLFYhvG7bHK6
 U5zJyq7ufipGsDrNKrSTkVzShSCCb1qWYQ7BWVce81TTAzAqBbhN8o7oX
 qQpg/ENz0tEEe7pkbiQ+uwa99OhlrEPpIeo9j3UtYC12XXSyj8KBQ4W5k
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LztmTzkN
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 74d1412ac8f3719bc8dd08b5775276dd1cbc3997
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 74d1412ac8f3719bc8dd08b5775276dd1cbc3997  idpf: use libeth Rx buffer management for payload buffer

elapsed time: 1314m

configs tested: 228
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240711   gcc-13.2.0
arc                   randconfig-002-20240711   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                            mps2_defconfig   clang-19
arm                   randconfig-001-20240711   clang-19
arm                   randconfig-002-20240711   gcc-13.3.0
arm                   randconfig-003-20240711   clang-19
arm                   randconfig-004-20240711   gcc-13.3.0
arm                           sama7_defconfig   clang-19
arm                       spear13xx_defconfig   clang-19
arm                        spear6xx_defconfig   clang-19
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.3.0
arm64                            allyesconfig   clang-19
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240711   clang-19
arm64                 randconfig-002-20240711   gcc-13.3.0
arm64                 randconfig-003-20240711   gcc-13.3.0
arm64                 randconfig-004-20240711   gcc-13.3.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.3.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240711   gcc-13.3.0
csky                  randconfig-002-20240711   gcc-13.3.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240711   clang-19
hexagon               randconfig-002-20240711   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240711   gcc-13
i386         buildonly-randconfig-002-20240711   gcc-10
i386         buildonly-randconfig-003-20240711   gcc-13
i386         buildonly-randconfig-004-20240711   gcc-8
i386         buildonly-randconfig-005-20240711   gcc-10
i386         buildonly-randconfig-006-20240711   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240711   gcc-13
i386                  randconfig-002-20240711   gcc-10
i386                  randconfig-003-20240711   gcc-8
i386                  randconfig-004-20240711   gcc-13
i386                  randconfig-005-20240711   clang-18
i386                  randconfig-006-20240711   gcc-13
i386                  randconfig-011-20240711   gcc-9
i386                  randconfig-012-20240711   clang-18
i386                  randconfig-013-20240711   gcc-13
i386                  randconfig-014-20240711   clang-18
i386                  randconfig-015-20240711   clang-18
i386                  randconfig-016-20240711   gcc-9
loongarch                        allmodconfig   gcc-13.3.0
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-13.3.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240711   gcc-13.3.0
loongarch             randconfig-002-20240711   gcc-13.3.0
m68k                             allmodconfig   gcc-13.3.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.3.0
m68k                             allyesconfig   gcc-13.3.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                             allmodconfig   clang-19
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.3.0
mips                             allyesconfig   clang-19
mips                       bmips_be_defconfig   clang-19
mips                      malta_kvm_defconfig   clang-19
mips                          rb532_defconfig   clang-19
nios2                            allmodconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.3.0
nios2                            allyesconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240711   gcc-13.3.0
nios2                 randconfig-002-20240711   gcc-13.3.0
openrisc                         allmodconfig   gcc-14.1.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.3.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.3.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240711   gcc-13.3.0
parisc                randconfig-002-20240711   gcc-13.3.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.3.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                          allyesconfig   gcc-14.1.0
powerpc                   lite5200b_defconfig   clang-19
powerpc                 mpc836x_rdk_defconfig   clang-19
powerpc               randconfig-001-20240711   gcc-13.3.0
powerpc               randconfig-002-20240711   clang-19
powerpc               randconfig-003-20240711   clang-19
powerpc64             randconfig-001-20240711   gcc-13.3.0
powerpc64             randconfig-002-20240711   clang-16
powerpc64             randconfig-003-20240711   gcc-13.3.0
riscv                            allmodconfig   clang-19
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.3.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240711   clang-14
riscv                 randconfig-002-20240711   gcc-13.3.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-13.2.0
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240711   clang-19
s390                  randconfig-002-20240711   gcc-13.2.0
sh                               allmodconfig   gcc-13.3.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.3.0
sh                               allyesconfig   gcc-13.3.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240711   gcc-13.3.0
sh                    randconfig-002-20240711   gcc-13.3.0
sparc                            allmodconfig   gcc-13.3.0
sparc                            allyesconfig   gcc-14.1.0
sparc64                          allmodconfig   gcc-14.1.0
sparc64                          allyesconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240711   gcc-14.1.0
sparc64               randconfig-002-20240711   gcc-14.1.0
um                               allmodconfig   clang-19
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-13.2.0
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240711   gcc-8
um                    randconfig-002-20240711   gcc-8
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240711   clang-18
x86_64       buildonly-randconfig-002-20240711   clang-18
x86_64       buildonly-randconfig-003-20240711   clang-18
x86_64       buildonly-randconfig-004-20240711   clang-18
x86_64       buildonly-randconfig-005-20240711   clang-18
x86_64       buildonly-randconfig-005-20240711   gcc-13
x86_64       buildonly-randconfig-006-20240711   clang-18
x86_64       buildonly-randconfig-006-20240711   gcc-13
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                                  kexec   clang-18
x86_64                randconfig-001-20240711   clang-18
x86_64                randconfig-001-20240711   gcc-13
x86_64                randconfig-002-20240711   clang-18
x86_64                randconfig-002-20240711   gcc-13
x86_64                randconfig-003-20240711   clang-18
x86_64                randconfig-003-20240711   gcc-11
x86_64                randconfig-004-20240711   clang-18
x86_64                randconfig-004-20240711   gcc-9
x86_64                randconfig-005-20240711   clang-18
x86_64                randconfig-006-20240711   clang-18
x86_64                randconfig-006-20240711   gcc-13
x86_64                randconfig-011-20240711   clang-18
x86_64                randconfig-011-20240711   gcc-13
x86_64                randconfig-012-20240711   clang-18
x86_64                randconfig-013-20240711   clang-18
x86_64                randconfig-013-20240711   gcc-13
x86_64                randconfig-014-20240711   clang-18
x86_64                randconfig-015-20240711   clang-18
x86_64                randconfig-016-20240711   clang-18
x86_64                randconfig-016-20240711   gcc-10
x86_64                randconfig-071-20240711   clang-18
x86_64                randconfig-071-20240711   gcc-13
x86_64                randconfig-072-20240711   clang-18
x86_64                randconfig-072-20240711   gcc-13
x86_64                randconfig-073-20240711   clang-18
x86_64                randconfig-074-20240711   clang-18
x86_64                randconfig-074-20240711   gcc-13
x86_64                randconfig-075-20240711   clang-18
x86_64                randconfig-076-20240711   clang-18
x86_64                randconfig-076-20240711   gcc-8
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-13.3.0
xtensa                           allyesconfig   gcc-14.1.0
xtensa                randconfig-001-20240711   gcc-14.1.0
xtensa                randconfig-002-20240711   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
