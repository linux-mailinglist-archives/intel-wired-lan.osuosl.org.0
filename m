Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2304B0B0FC
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Jul 2025 18:59:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A048C81B04;
	Sat, 19 Jul 2025 16:59:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 58rsGrZiyMKy; Sat, 19 Jul 2025 16:59:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FBCC8194A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752944383;
	bh=XOmzSVOGt0yGPbsyglLxmizaaJyjsLwFw9B5LxsRvTE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2gWt9iJGAuIlt2G7YAEtTW9pcjmmrMIt+WTAtZT+sn2PqZhAd1GfOkX20g7OVMJlr
	 2sb8qK9Go+Lx14umIGA2Jt8KtwNM6gF4KjdWfxHM/+uc6h07oh6UTZ5ZYYtL2KRVop
	 CprQMVeul8fCPnnmIiwe8A5TNFiHHjoP69HCIlhuMVDmcNZIvlSk4XAf1lglRsUOvW
	 00af0ChRpoaaHU4X0xyqzFq+l4G/GPOkrJ2dUh6ZD7ZK/AZUPa1xBi2UlxRpeYJOxY
	 2FUDElXDoQV2QSzKk2DxiGg7qRBhVfBmnzr1Fp3cfkW2rQtpptisa8mxwBfYktIPU9
	 Gtf8VFd9pOHMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FBCC8194A;
	Sat, 19 Jul 2025 16:59:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 74AEF117
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 16:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A21581768
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 16:59:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JI2yVVPq4FWf for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Jul 2025 16:59:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6682C81772
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6682C81772
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6682C81772
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 16:59:41 +0000 (UTC)
X-CSE-ConnectionGUID: 4WbULml+TIKlDsLXhnq72w==
X-CSE-MsgGUID: aa14ukX8Qr+oKMBx+cGS/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11497"; a="55152836"
X-IronPort-AV: E=Sophos;i="6.16,324,1744095600"; d="scan'208";a="55152836"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2025 09:59:40 -0700
X-CSE-ConnectionGUID: myrnBhenQkSXfDo+4o0s+Q==
X-CSE-MsgGUID: FneUhoYDRCG7RbByb54dNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,324,1744095600"; d="scan'208";a="157791228"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 19 Jul 2025 09:59:39 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1udAuP-000FeB-0R
 for intel-wired-lan@lists.osuosl.org; Sat, 19 Jul 2025 16:59:37 +0000
Date: Sun, 20 Jul 2025 00:59:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507200024.9RQ7WTjV-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752944381; x=1784480381;
 h=date:from:to:subject:message-id;
 bh=oh0S6MydX9+q3a2t5/KXhN3iCUaaMhuVma0EHqQ4Mzc=;
 b=S6c/dFKU2LSP4F2GKPtOS20uhz3Cjpx4WCivejxtnZBvKgM64jfsOePr
 WDEFWZBiLSgmk/QpUf/+H9ciDjKWXwqkba4kqhiimEeOqHhG8J5NXutqJ
 TApe+j8RS7CxYehxvPcEAnEMHtVPVNAevRtFRrnz+66SR9dALbwtQsPRS
 D7ylpuy4GM/yl/XEVhlfQFyCqMxW2ifgrSjJbH8UpGLuOzHOJ3Vbygm70
 HoRZlqtP2ZIZlIio0+UoqCZKtQHczi3KPAox6/SNpil8dhc6nR5GCF7uz
 jnDzFCM9C3cxnrH6frq2otx4WBm1rhz8DZ5972EtgsrV1p6CxQCppXFXx
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S6c/dFKU
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 310a87d011510f4a12edb5e81ec96062a497410f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 310a87d011510f4a12edb5e81ec96062a497410f  ixgbevf: remove unused fields from struct ixgbevf_adapter

elapsed time: 1446m

configs tested: 103
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250719    gcc-14.3.0
arc                   randconfig-002-20250719    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250719    gcc-14.3.0
arm                   randconfig-002-20250719    clang-21
arm                   randconfig-003-20250719    clang-21
arm                   randconfig-004-20250719    clang-16
arm                    vt8500_v6_v7_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250719    clang-20
arm64                 randconfig-002-20250719    clang-18
arm64                 randconfig-003-20250719    gcc-15.1.0
arm64                 randconfig-004-20250719    clang-20
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250719    gcc-15.1.0
csky                  randconfig-002-20250719    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250719    clang-21
hexagon               randconfig-002-20250719    clang-21
i386        buildonly-randconfig-001-20250719    clang-20
i386        buildonly-randconfig-002-20250719    gcc-12
i386        buildonly-randconfig-003-20250719    gcc-12
i386        buildonly-randconfig-004-20250719    clang-20
i386        buildonly-randconfig-005-20250719    clang-20
i386        buildonly-randconfig-006-20250719    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-21
loongarch             randconfig-001-20250719    clang-18
loongarch             randconfig-002-20250719    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                       rbtx49xx_defconfig    gcc-15.1.0
mips                         rt305x_defconfig    clang-21
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250719    gcc-11.5.0
nios2                 randconfig-002-20250719    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250719    gcc-8.5.0
parisc                randconfig-002-20250719    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250719    clang-19
powerpc               randconfig-002-20250719    gcc-10.5.0
powerpc               randconfig-003-20250719    gcc-12.5.0
powerpc64             randconfig-001-20250719    gcc-8.5.0
powerpc64             randconfig-002-20250719    clang-21
powerpc64             randconfig-003-20250719    gcc-10.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250719    clang-21
riscv                 randconfig-002-20250719    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250719    gcc-9.5.0
s390                  randconfig-002-20250719    gcc-9.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250719    gcc-13.4.0
sh                    randconfig-002-20250719    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250719    gcc-15.1.0
sparc                 randconfig-002-20250719    gcc-15.1.0
sparc64               randconfig-001-20250719    gcc-9.5.0
sparc64               randconfig-002-20250719    gcc-9.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250719    clang-16
um                    randconfig-002-20250719    clang-21
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20250719    clang-20
x86_64      buildonly-randconfig-002-20250719    clang-20
x86_64      buildonly-randconfig-003-20250719    clang-20
x86_64      buildonly-randconfig-004-20250719    gcc-12
x86_64      buildonly-randconfig-005-20250719    clang-20
x86_64      buildonly-randconfig-006-20250719    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250719    gcc-14.3.0
xtensa                randconfig-002-20250719    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
