Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E93FBB5C8C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Oct 2025 04:01:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C34AE60667;
	Fri,  3 Oct 2025 02:01:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HRQ5Z_xyqjvC; Fri,  3 Oct 2025 02:01:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 320E560DAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759456882;
	bh=Si7fexrbzc+Gq/a4uzxKkCXVAYp3+c1SMn7T4NBOCKQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=keHwtbuLhiEINvESsy3oy6HHA3zd4+ZWW21qOOR7dUz5ypBGdDBYJ/Ez6O8aGJ6Zp
	 ZHnQJfUJhN8OSi6hnSYP/KhW4BGzvLFEumft+RFLh43VHpn9RSzQ3kiUJlwJwqgoJV
	 4dXtJ70f+tJ5OEesULfyS8tl9cM5GlOPpWQvQA0s1zvcNlnfuWtcE4BUHh5P57pSZ4
	 Bu77uw8vCgCrYQhAjJvp5Nk623tGDHLBKf2lowErEG09/CMD5nTktDF/d14eClnbAC
	 gIpzzZ2sutuAPRo10UGSzRCSlMTh3yxgLoa4X0XZSXkd1Z/TO66BcXsLqiXd7K5FqW
	 BPP1szU8jUr0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 320E560DAD;
	Fri,  3 Oct 2025 02:01:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CE67113D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Oct 2025 02:01:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B47C740515
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Oct 2025 02:01:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MHfFMv5-33Tl for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Oct 2025 02:01:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CA6C14038C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA6C14038C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA6C14038C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Oct 2025 02:01:14 +0000 (UTC)
X-CSE-ConnectionGUID: zCtDeUtiTYKr/LRa54x5UA==
X-CSE-MsgGUID: AXm+C4DlR7axwxaJrikBUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="61908860"
X-IronPort-AV: E=Sophos;i="6.18,311,1751266800"; d="scan'208";a="61908860"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 19:01:14 -0700
X-CSE-ConnectionGUID: WGA6U2gmQCS+sub9eyNRow==
X-CSE-MsgGUID: 2v1u8UBQT7CAO9Ls0y6esw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,311,1751266800"; d="scan'208";a="179600159"
Received: from lkp-server01.sh.intel.com (HELO 2f2a1232a4e4) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 02 Oct 2025 19:01:13 -0700
Received: from kbuild by 2f2a1232a4e4 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v4V6c-0004Ed-35
 for intel-wired-lan@lists.osuosl.org; Fri, 03 Oct 2025 02:01:10 +0000
Date: Fri, 03 Oct 2025 10:00:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510031039.HcwdRqQ6-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759456876; x=1790992876;
 h=date:from:to:subject:message-id;
 bh=0zILcn1Nf42RTvphk8Pykiye5dXEgzI2m2F9OR0Eexo=;
 b=KOKAHOPolK05R+u6nRTS8ovn8P65hwspmwTZEY/5u+IqQFBH7HQeeNpq
 6YI1dPGrL4i2u1yP5IHFwTfqxA6tNfXFjwTRiNIbTWaVudILg3lDuNflt
 GRxIvb9xdcGeKb2Z+c7j4Voqb+MIVHCpTZT686VU0wptzRjq9UFX0qzWH
 kHPK6O1EMVioFwPPKtcOTl0g0WfYnT9w3tbYwBkUUBKaTn8tOeFvh0SYC
 AXno3v9nRIS21+u65f1W8ueSMRBsdmF4A70uPrzw1hxUvRbHwP5M+TsCm
 cG9L3Mn7EQCzgbu8wj/KUVvu90Mf8A+IYurM26wsCRRtrl3XEQ+G/RWps
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KOKAHOPo
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 06d79d51cf51b27766fec621911f5b8ebdfecd62
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
branch HEAD: 06d79d51cf51b27766fec621911f5b8ebdfecd62  ice: switch to Page Pool

elapsed time: 1507m

configs tested: 102
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                            hsdk_defconfig    gcc-15.1.0
arc                   randconfig-001-20251002    gcc-12.5.0
arc                   randconfig-002-20251002    gcc-12.5.0
arm                               allnoconfig    clang-22
arm                   randconfig-001-20251002    gcc-12.5.0
arm                   randconfig-002-20251002    clang-22
arm                   randconfig-003-20251002    clang-22
arm                   randconfig-004-20251002    clang-20
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251002    gcc-8.5.0
arm64                 randconfig-002-20251002    clang-22
arm64                 randconfig-003-20251002    clang-22
arm64                 randconfig-004-20251002    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251002    gcc-15.1.0
csky                  randconfig-002-20251002    gcc-9.5.0
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251002    clang-22
hexagon               randconfig-002-20251002    clang-16
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251002    clang-20
i386        buildonly-randconfig-002-20251002    gcc-14
i386        buildonly-randconfig-003-20251002    clang-20
i386        buildonly-randconfig-004-20251002    clang-20
i386        buildonly-randconfig-005-20251002    gcc-14
i386        buildonly-randconfig-006-20251002    clang-20
i386                                defconfig    clang-20
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251002    gcc-15.1.0
loongarch             randconfig-002-20251002    clang-18
m68k                              allnoconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                            gpr_defconfig    clang-18
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251002    gcc-11.5.0
nios2                 randconfig-002-20251002    gcc-10.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251002    gcc-9.5.0
parisc                randconfig-002-20251002    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                      katmai_defconfig    clang-22
powerpc               randconfig-001-20251002    gcc-8.5.0
powerpc               randconfig-002-20251002    gcc-9.5.0
powerpc               randconfig-003-20251002    clang-22
powerpc                      tqm8xx_defconfig    clang-19
powerpc64                        alldefconfig    clang-22
powerpc64             randconfig-001-20251002    clang-22
powerpc64             randconfig-002-20251002    clang-22
powerpc64             randconfig-003-20251002    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20251002    clang-22
riscv                 randconfig-002-20251002    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20251002    gcc-14.3.0
s390                  randconfig-002-20251002    gcc-11.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251002    gcc-13.4.0
sh                    randconfig-002-20251002    gcc-15.1.0
sh                          rsk7201_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251002    gcc-8.5.0
sparc                 randconfig-002-20251002    gcc-15.1.0
sparc64               randconfig-001-20251002    clang-22
sparc64               randconfig-002-20251002    gcc-8.5.0
um                                allnoconfig    clang-22
um                    randconfig-001-20251002    clang-22
um                    randconfig-002-20251002    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251002    gcc-13
x86_64      buildonly-randconfig-002-20251002    clang-20
x86_64      buildonly-randconfig-003-20251002    clang-20
x86_64      buildonly-randconfig-004-20251002    clang-20
x86_64      buildonly-randconfig-005-20251002    gcc-14
x86_64      buildonly-randconfig-006-20251002    gcc-14
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251002    gcc-8.5.0
xtensa                randconfig-002-20251002    gcc-12.5.0
xtensa                         virt_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
