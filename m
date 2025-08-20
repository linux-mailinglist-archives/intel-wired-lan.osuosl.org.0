Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAA1B2E86A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 01:05:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2CF44148C;
	Wed, 20 Aug 2025 23:05:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RIYkzCDQgnX6; Wed, 20 Aug 2025 23:05:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57C0F41488
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755731122;
	bh=Ex+p9P/oJwjR1r7UHl3/DDQSsmFgRE26TIqD9aUinCM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MpZ2WNGN5mkPtGfuXXMaBne8clSJDIIeYfE+KbGd7LiPwSuXH4Atel1h/IijjfIGo
	 3qASxJGqTFdFNqCRSB2nb2mWhXplmxZtnWt5MNs6LqXpGIDyq+FczOrTnEkdoMdVtp
	 wpdL3cLtwxDrVe6n1G9vmxbsQScabVY4uNT/2SpoL9/o7TocopoMFBYdChuTbwcjiG
	 jQAGBsbIG0kIH/GKT7jla4w/UeidG8aTufKDOn7dtV8xHZ1pVSx/jT/CqPBi+zmWQd
	 3v+6hR7v7+5Im1LadMDGs7EKA2lw7S6heStgSPRlY3jKzLPtz5uWe+XUcAL0szUp3Y
	 15ZZ4smJQscKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57C0F41488;
	Wed, 20 Aug 2025 23:05:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DA40FD8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 23:05:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBF7C41485
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 23:05:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iHJWJYXiw1SV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 23:05:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F5854147E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F5854147E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F5854147E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 23:05:19 +0000 (UTC)
X-CSE-ConnectionGUID: pRanxtmrT6KEwPqskMH2Ow==
X-CSE-MsgGUID: 3+XGnoRpQfynM02oxuGZzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="60639069"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="60639069"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 16:05:19 -0700
X-CSE-ConnectionGUID: Le0cNy63RBqpkgREjo69Zw==
X-CSE-MsgGUID: ni0GHFaLSIyPvBFmgC/ElQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="173514764"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa004.fm.intel.com with ESMTP; 20 Aug 2025 16:05:18 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uorrl-000Jj9-04
 for intel-wired-lan@lists.osuosl.org; Wed, 20 Aug 2025 23:05:14 +0000
Date: Thu, 21 Aug 2025 07:04:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508210740.Hx04omlG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755731120; x=1787267120;
 h=date:from:to:subject:message-id;
 bh=7QW0hOgorrIhQA8LVkn/6D1IBitEoaHyCns38TFViAc=;
 b=av5Q/BtD1JAUG8+X5FLVlIkITb9z4rBht9Xwq/t3hT2y8xWV59WMEIuu
 oNN2P6SBT+pgF3c3A0iD9no91NklfcmmB0j5rZlEbr737zsbsQuNUV2hD
 Ww+nelFz/OCbe/KDKinXGQ4QpgaJNYsYOcwk9J3fgrnmCDA0/22RaIxKX
 2CyrKP9/7sKlzgHlH5MYVp6VucxuL06Ez+d/QLQc8WoT+5JUDe281R4PS
 n+0XH+nV+bh1OcNCA+eNvTpL2U+Xg2wh2f1t9oDJBtAM3WEZPKTJjwFPC
 /RLoI9ch+u9/Rx0GQDjS8fNjQeEDpRcDcsxBkVYRoAfVcbn0PplyjhsxJ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=av5Q/BtD
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 823aaa10d37aac273eeb91f357ba763ada23ff82
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 823aaa10d37aac273eeb91f357ba763ada23ff82  igc: fix disabling L1.2 PCI-E link substate on I226 on init

elapsed time: 1441m

configs tested: 221
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20250820    gcc-14.3.0
arc                   randconfig-001-20250820    gcc-8.5.0
arc                   randconfig-002-20250820    gcc-11.5.0
arc                   randconfig-002-20250820    gcc-14.3.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                     am200epdkit_defconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                   randconfig-001-20250820    gcc-14.3.0
arm                   randconfig-001-20250820    gcc-8.5.0
arm                   randconfig-002-20250820    gcc-14.3.0
arm                   randconfig-002-20250820    gcc-15.1.0
arm                   randconfig-003-20250820    gcc-13.4.0
arm                   randconfig-003-20250820    gcc-14.3.0
arm                   randconfig-004-20250820    clang-22
arm                   randconfig-004-20250820    gcc-14.3.0
arm                           sama7_defconfig    gcc-15.1.0
arm                       spear13xx_defconfig    gcc-15.1.0
arm                           spitz_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250820    gcc-14.3.0
arm64                 randconfig-002-20250820    gcc-14.3.0
arm64                 randconfig-003-20250820    gcc-14.3.0
arm64                 randconfig-003-20250820    gcc-8.5.0
arm64                 randconfig-004-20250820    gcc-14.3.0
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250820    clang-22
csky                  randconfig-001-20250820    gcc-15.1.0
csky                  randconfig-002-20250820    clang-22
csky                  randconfig-002-20250820    gcc-9.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250820    clang-22
hexagon               randconfig-002-20250820    clang-22
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250820    clang-20
i386        buildonly-randconfig-002-20250820    gcc-12
i386        buildonly-randconfig-003-20250820    gcc-12
i386        buildonly-randconfig-004-20250820    clang-20
i386        buildonly-randconfig-005-20250820    gcc-12
i386        buildonly-randconfig-006-20250820    gcc-11
i386                                defconfig    clang-20
i386                  randconfig-001-20250820    gcc-12
i386                  randconfig-002-20250820    gcc-12
i386                  randconfig-003-20250820    gcc-12
i386                  randconfig-004-20250820    gcc-12
i386                  randconfig-005-20250820    gcc-12
i386                  randconfig-006-20250820    gcc-12
i386                  randconfig-007-20250820    gcc-12
i386                  randconfig-011-20250821    gcc-12
i386                  randconfig-012-20250821    gcc-12
i386                  randconfig-013-20250821    gcc-12
i386                  randconfig-014-20250821    gcc-12
i386                  randconfig-015-20250821    gcc-12
i386                  randconfig-016-20250821    gcc-12
i386                  randconfig-017-20250821    gcc-12
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250820    clang-18
loongarch             randconfig-001-20250820    clang-22
loongarch             randconfig-002-20250820    clang-22
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250820    clang-22
nios2                 randconfig-001-20250820    gcc-11.5.0
nios2                 randconfig-002-20250820    clang-22
nios2                 randconfig-002-20250820    gcc-10.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250820    clang-22
parisc                randconfig-001-20250820    gcc-8.5.0
parisc                randconfig-002-20250820    clang-22
parisc                randconfig-002-20250820    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc                 mpc8315_rdb_defconfig    gcc-15.1.0
powerpc                      ppc6xx_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250820    clang-22
powerpc               randconfig-001-20250820    gcc-12.5.0
powerpc               randconfig-002-20250820    clang-22
powerpc               randconfig-002-20250820    gcc-8.5.0
powerpc               randconfig-003-20250820    clang-22
powerpc               randconfig-003-20250820    gcc-13.4.0
powerpc64             randconfig-001-20250820    clang-22
powerpc64             randconfig-002-20250820    clang-22
powerpc64             randconfig-003-20250820    clang-22
powerpc64             randconfig-003-20250820    gcc-15.1.0
riscv                            allmodconfig    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250820    clang-20
riscv                 randconfig-002-20250820    clang-22
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250820    clang-18
s390                  randconfig-002-20250820    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                         apsh4a3a_defconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250820    gcc-15.1.0
sh                    randconfig-002-20250820    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250820    gcc-8.5.0
sparc                 randconfig-002-20250820    gcc-12.5.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250820    clang-22
sparc64               randconfig-002-20250820    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250820    gcc-12
um                    randconfig-002-20250820    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250820    clang-20
x86_64      buildonly-randconfig-002-20250820    gcc-11
x86_64      buildonly-randconfig-003-20250820    clang-20
x86_64      buildonly-randconfig-004-20250820    gcc-12
x86_64      buildonly-randconfig-005-20250820    clang-20
x86_64      buildonly-randconfig-006-20250820    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250820    gcc-12
x86_64                randconfig-002-20250820    gcc-12
x86_64                randconfig-003-20250820    gcc-12
x86_64                randconfig-004-20250820    gcc-12
x86_64                randconfig-005-20250820    gcc-12
x86_64                randconfig-006-20250820    gcc-12
x86_64                randconfig-007-20250820    gcc-12
x86_64                randconfig-008-20250820    gcc-12
x86_64                randconfig-071-20250821    clang-20
x86_64                randconfig-072-20250821    clang-20
x86_64                randconfig-073-20250821    clang-20
x86_64                randconfig-074-20250821    clang-20
x86_64                randconfig-075-20250821    clang-20
x86_64                randconfig-076-20250821    clang-20
x86_64                randconfig-077-20250821    clang-20
x86_64                randconfig-078-20250821    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250820    gcc-8.5.0
xtensa                randconfig-002-20250820    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
