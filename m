Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E53BBCB1442
	for <lists+intel-wired-lan@lfdr.de>; Tue, 09 Dec 2025 23:04:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A330848C5;
	Tue,  9 Dec 2025 22:04:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bz3hoc15GIvL; Tue,  9 Dec 2025 22:04:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FA36846EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765317857;
	bh=NqVlrtTwpO+gWgsU4DlLydy3r6fKzKYC04ejPyisz+Y=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AYLvR/3D7EHmoth8pJ0zEGiTGZ2Ua2XdM0fNOzq8NX8DrYi6gzb0ucv0K2X3ZFFjF
	 J88sWAvUzE1f+I8Htjpot1KypUR9WaIQwMA2O0UrlJxMG/JICW4UtlAoN1VZbktxGX
	 q9Igfsrv5xu8nwNFPMGvrD0DwdbADoLGJ61CPdLh8kSFG8Gsi2bFOfyUD44MbSavsw
	 gfgqSlYI668cqEcj1auws0GPSMGrmyOjrJ3Xlls1eSSF5nqy+wS1UUC3j7rm1odRz3
	 u+Ka2ITN+k1lauw3bjSG5ebzaLXx/TKl8028oluBxIQGlUttoB1aZCs9hAfdb5iMSd
	 61/uFMBdStl6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FA36846EB;
	Tue,  9 Dec 2025 22:04:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A7304E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 22:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9972C846E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 22:04:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYuO_Xj5X_n2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Dec 2025 22:04:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 123A3846E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 123A3846E3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 123A3846E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 22:04:14 +0000 (UTC)
X-CSE-ConnectionGUID: v7rUfIbhSjC2nBgbaMv75A==
X-CSE-MsgGUID: jVNQpfaKSAeVlF6eM9Ix8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67172087"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="67172087"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 14:04:15 -0800
X-CSE-ConnectionGUID: Tg4/g+oUS5aGoogZzYgO9A==
X-CSE-MsgGUID: IjTaEz8RQq6eudWyeyX/oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="197120101"
Received: from lkp-server01.sh.intel.com (HELO d335e3c6db51) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 09 Dec 2025 14:04:13 -0800
Received: from kbuild by d335e3c6db51 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vT5oZ-000000002J9-1YMz
 for intel-wired-lan@lists.osuosl.org; Tue, 09 Dec 2025 22:04:11 +0000
Date: Wed, 10 Dec 2025 06:04:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202512100656.pYDKvf9B-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765317856; x=1796853856;
 h=date:from:to:subject:message-id;
 bh=8xDqFwxUdbghhBVDg+IBpYSJl1WuQ6REvI7SH8c0eF0=;
 b=davfz/nLZx9vl8E519LrzOVEKviU21ru6R+xeDLxma8M8V1FJzK/5bsJ
 +vc7fmuIQfymidY2XLVsVfQFdk8CsoNNGDuzkkmwkYqFSU9ftyHgb4Rv6
 vvPXwBH/2d1fAKHgDMhmtQB5u2j7ztxfhjmDPNY/hVqq4eTLNORrzHSgS
 92DNEEtdeNBE2awb0vNB6to1aoGS4tQz93i5qJ7P7By1nQfbbEKICSTlj
 fDa3Z/vMBOf2nqCi7vJd25N5EJYPnORhrEg0uP3p/5xSGF+fcPK9c9G04
 sitfBZcmM2HKaY8I6XGfkiCVaTfpCHDZ78huZeFWZUedapTFBmQUi9WFO
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=davfz/nL
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 680efd304435327232099d51780f0b8d43e87b85
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
branch HEAD: 680efd304435327232099d51780f0b8d43e87b85  idpf: Fix error handling in idpf_vport_open()

elapsed time: 1447m

configs tested: 151
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20251209    gcc-13.4.0
arc                   randconfig-002-20251209    gcc-9.5.0
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-22
arm                            qcom_defconfig    clang-22
arm                   randconfig-001-20251209    clang-19
arm                   randconfig-002-20251209    clang-20
arm                   randconfig-003-20251209    clang-22
arm                   randconfig-004-20251209    clang-22
arm                        shmobile_defconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20251209    gcc-8.5.0
arm64                 randconfig-002-20251209    gcc-9.5.0
arm64                 randconfig-003-20251209    clang-22
arm64                 randconfig-004-20251209    gcc-11.5.0
csky                             allmodconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251209    gcc-15.1.0
csky                  randconfig-002-20251209    gcc-15.1.0
hexagon                          alldefconfig    clang-22
hexagon                          allmodconfig    clang-17
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20251209    clang-22
hexagon               randconfig-002-20251209    clang-22
i386                             allmodconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251209    clang-20
i386        buildonly-randconfig-002-20251209    clang-20
i386        buildonly-randconfig-003-20251209    gcc-14
i386        buildonly-randconfig-004-20251209    gcc-14
i386        buildonly-randconfig-005-20251209    gcc-14
i386        buildonly-randconfig-006-20251209    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20251209    gcc-14
i386                  randconfig-002-20251209    clang-20
i386                  randconfig-003-20251209    clang-20
i386                  randconfig-004-20251209    gcc-14
i386                  randconfig-005-20251209    gcc-14
i386                  randconfig-006-20251209    clang-20
i386                  randconfig-007-20251209    gcc-14
i386                  randconfig-011-20251209    clang-20
i386                  randconfig-012-20251209    clang-20
i386                  randconfig-013-20251209    clang-20
i386                  randconfig-014-20251209    clang-20
i386                  randconfig-015-20251209    clang-20
i386                  randconfig-016-20251209    clang-20
i386                  randconfig-017-20251209    gcc-14
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251209    clang-22
loongarch             randconfig-002-20251209    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                             allmodconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251209    gcc-8.5.0
nios2                 randconfig-002-20251209    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251209    gcc-8.5.0
parisc                randconfig-002-20251209    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                      arches_defconfig    gcc-15.1.0
powerpc                          g5_defconfig    gcc-15.1.0
powerpc                     mpc512x_defconfig    clang-22
powerpc               randconfig-001-20251209    gcc-14.3.0
powerpc               randconfig-002-20251209    clang-22
powerpc64             randconfig-001-20251209    gcc-14.3.0
powerpc64             randconfig-002-20251209    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251209    clang-22
riscv                 randconfig-002-20251209    clang-18
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251209    gcc-12.5.0
s390                  randconfig-002-20251209    gcc-12.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                         apsh4a3a_defconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251209    gcc-14.3.0
sh                    randconfig-002-20251209    gcc-13.4.0
sh                        sh7785lcr_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251209    gcc-11.5.0
sparc                 randconfig-002-20251209    gcc-15.1.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251209    clang-22
sparc64               randconfig-002-20251209    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251209    gcc-14
um                    randconfig-002-20251209    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251209    clang-20
x86_64      buildonly-randconfig-002-20251209    gcc-14
x86_64      buildonly-randconfig-003-20251209    gcc-14
x86_64      buildonly-randconfig-004-20251209    clang-20
x86_64      buildonly-randconfig-005-20251209    clang-20
x86_64      buildonly-randconfig-006-20251209    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251209    clang-20
x86_64                randconfig-002-20251209    clang-20
x86_64                randconfig-003-20251209    clang-20
x86_64                randconfig-004-20251209    gcc-14
x86_64                randconfig-005-20251209    gcc-14
x86_64                randconfig-006-20251209    gcc-14
x86_64                randconfig-011-20251209    gcc-14
x86_64                randconfig-012-20251209    clang-20
x86_64                randconfig-013-20251209    gcc-14
x86_64                randconfig-014-20251209    clang-20
x86_64                randconfig-015-20251209    clang-20
x86_64                randconfig-016-20251209    clang-20
x86_64                randconfig-071-20251209    clang-20
x86_64                randconfig-072-20251209    gcc-14
x86_64                randconfig-073-20251209    gcc-14
x86_64                randconfig-074-20251209    gcc-14
x86_64                randconfig-075-20251209    gcc-14
x86_64                randconfig-076-20251209    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251209    gcc-13.4.0
xtensa                randconfig-002-20251209    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
