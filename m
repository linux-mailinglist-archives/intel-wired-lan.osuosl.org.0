Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5B9926C80
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jul 2024 01:37:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA0A36107D;
	Wed,  3 Jul 2024 23:37:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mKcq-DUULroC; Wed,  3 Jul 2024 23:37:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF8BA6107E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720049847;
	bh=vbI1nOi0g5FAVAZZp2cmOVjLiVDwtX8ftTgcieA3Xj8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0PUaXksLcApBUIBit6tHBbrM44cbW35b8Ua7Dqtrd6PxRi4+sTmBFwq9FIxNtF1Zw
	 gdfYk1vVmyofFEX9eqfkkoZ17Yx5tdTYFjK5DHVYgeDkDJeX0FnQARZDWl+Ym9Sz5l
	 Z3j0SW/DOedb14aVh6rJEUAfoco2Mq2B+g2MiDze3pfxXSPUhdsBw383+GOlwW6/Ve
	 clcRF7edfeu+0fe4iP54SK7O8jaZVBPliSfRFtIOJqPkR7oKHzdUrLoYd/OYzobOcB
	 7k9Qt4EdaDlUtzu9yjR39FOK2NM2MSM0pKf8jGL0XjsOaz0bv91edxOaWTfXaumD4k
	 adQ5uLeRC9Rdw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF8BA6107E;
	Wed,  3 Jul 2024 23:37:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D0E4B1BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 23:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD2D36107D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 23:37:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 669ssgCyoVBu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 23:37:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 924A16107C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 924A16107C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 924A16107C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 23:37:23 +0000 (UTC)
X-CSE-ConnectionGUID: SZ1zNVAERdqxqrCac/7TiA==
X-CSE-MsgGUID: iR/IQD9YQXasjQTmPuqgMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="39824115"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="39824115"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 16:37:23 -0700
X-CSE-ConnectionGUID: ZNEHGCRiRHuKI4zzGgbm9g==
X-CSE-MsgGUID: xQZwX/xDQ9CpOlx/HCcHAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="51581965"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 03 Jul 2024 16:37:22 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sP9XM-000QLC-1r
 for intel-wired-lan@lists.osuosl.org; Wed, 03 Jul 2024 23:37:20 +0000
Date: Thu, 04 Jul 2024 07:36:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407040726.gBq5LBD0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720049844; x=1751585844;
 h=date:from:to:subject:message-id;
 bh=fmciJy0+kd7gEW0ernFZsFlqzrfUx1YshIOGDoFpp1A=;
 b=P2VCgXqqVwnrpuudveTfkaUkYlOmOpNpAmzPzEiUPG3PQVLb0ZzzKmyc
 nrUsryOY7nuU6jxSQMj1OfxDkcSvzkEAeKT2Vh5ROOmHeJMy1iNUdbmkg
 EG0ml3PvQTPJgnN5JLMcxVJnBUCOUBJethciMkPgz02cqaIwArPkjoTso
 MxjeOCBZ6urTUe6BxdwjG4ZBFk/ykUQJaipb5UP2Yn7NAgFvI5z2R2IjA
 Lh7rA4LuYdaU7R9Z+FdQTyMbxiJDstLvG9Ygi0gS/9SxoiKTiTtjz28sp
 uScUEv3wtiwb4bg7YBOTT8E7APmwHaEpDdzGPe8LW02ldnV09C7G473YM
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P2VCgXqq
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 e5d4098a3e9331df16999d088608c38738bb8c32
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: e5d4098a3e9331df16999d088608c38738bb8c32  ice: use proper macro for testing bit

elapsed time: 1725m

configs tested: 105
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                   randconfig-001-20240703   gcc-13.2.0
arc                   randconfig-002-20240703   gcc-13.2.0
arc                        vdk_hs38_defconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                             mxs_defconfig   clang-19
arm                         orion5x_defconfig   clang-19
arm                          pxa168_defconfig   clang-19
arm                   randconfig-001-20240703   clang-19
arm                   randconfig-002-20240703   gcc-13.2.0
arm                   randconfig-003-20240703   clang-19
arm                   randconfig-004-20240703   clang-19
arm64                             allnoconfig   gcc-13.2.0
arm64                 randconfig-001-20240703   clang-19
arm64                 randconfig-002-20240703   gcc-13.2.0
arm64                 randconfig-003-20240703   gcc-13.2.0
arm64                 randconfig-004-20240703   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240703   gcc-13.2.0
csky                  randconfig-002-20240703   gcc-13.2.0
hexagon                          alldefconfig   clang-15
hexagon                           allnoconfig   clang-19
hexagon               randconfig-001-20240703   clang-16
hexagon               randconfig-002-20240703   clang-19
i386         buildonly-randconfig-001-20240703   clang-18
i386         buildonly-randconfig-002-20240703   gcc-13
i386         buildonly-randconfig-003-20240703   gcc-13
i386         buildonly-randconfig-004-20240703   gcc-13
i386         buildonly-randconfig-005-20240703   clang-18
i386         buildonly-randconfig-006-20240703   gcc-13
i386                  randconfig-001-20240703   gcc-13
i386                  randconfig-002-20240703   clang-18
i386                  randconfig-003-20240703   gcc-13
i386                  randconfig-004-20240703   gcc-11
i386                  randconfig-005-20240703   clang-18
i386                  randconfig-006-20240703   gcc-7
i386                  randconfig-011-20240703   gcc-13
i386                  randconfig-012-20240703   gcc-13
i386                  randconfig-013-20240703   gcc-13
i386                  randconfig-014-20240703   gcc-13
i386                  randconfig-015-20240703   gcc-13
i386                  randconfig-016-20240703   clang-18
loongarch                         allnoconfig   gcc-13.2.0
loongarch             randconfig-001-20240703   gcc-13.2.0
loongarch             randconfig-002-20240703   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                         db1xxx_defconfig   clang-19
mips                           ip28_defconfig   gcc-13.2.0
nios2                         3c120_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                 randconfig-001-20240703   gcc-13.2.0
nios2                 randconfig-002-20240703   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                       virt_defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                randconfig-001-20240703   gcc-13.2.0
parisc                randconfig-002-20240703   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                     ksi8560_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240703   clang-19
powerpc               randconfig-002-20240703   gcc-13.2.0
powerpc               randconfig-003-20240703   clang-15
powerpc                    sam440ep_defconfig   gcc-13.2.0
powerpc                     sequoia_defconfig   clang-19
powerpc64             randconfig-001-20240703   gcc-13.2.0
powerpc64             randconfig-002-20240703   gcc-13.2.0
powerpc64             randconfig-003-20240703   clang-19
riscv                             allnoconfig   gcc-13.2.0
riscv                 randconfig-001-20240703   clang-19
riscv                 randconfig-002-20240703   gcc-13.2.0
s390                              allnoconfig   clang-19
s390                  randconfig-001-20240703   clang-15
s390                  randconfig-002-20240703   clang-19
sh                                allnoconfig   gcc-13.2.0
sh                    randconfig-001-20240703   gcc-13.2.0
sh                    randconfig-002-20240703   gcc-13.2.0
sparc64               randconfig-001-20240703   gcc-13.2.0
sparc64               randconfig-002-20240703   gcc-13.2.0
um                                allnoconfig   clang-17
um                    randconfig-001-20240703   clang-19
um                    randconfig-002-20240703   clang-19
x86_64       buildonly-randconfig-001-20240704   clang-18
x86_64       buildonly-randconfig-002-20240704   gcc-12
x86_64       buildonly-randconfig-003-20240704   clang-18
x86_64       buildonly-randconfig-004-20240704   gcc-13
x86_64       buildonly-randconfig-005-20240704   gcc-12
x86_64       buildonly-randconfig-006-20240704   gcc-13
x86_64                randconfig-001-20240704   clang-18
x86_64                randconfig-002-20240704   gcc-11
x86_64                randconfig-003-20240704   clang-18
x86_64                randconfig-004-20240704   clang-18
x86_64                randconfig-005-20240704   gcc-13
x86_64                randconfig-006-20240704   clang-18
x86_64                randconfig-011-20240704   gcc-13
x86_64                randconfig-012-20240704   gcc-10
x86_64                randconfig-013-20240704   gcc-13
xtensa                            allnoconfig   gcc-13.2.0
xtensa                  nommu_kc705_defconfig   gcc-13.2.0
xtensa                randconfig-001-20240703   gcc-13.2.0
xtensa                randconfig-002-20240703   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
