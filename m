Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B45FA694F3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 17:29:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B92640802;
	Wed, 19 Mar 2025 16:29:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PHd6vYLb4Usl; Wed, 19 Mar 2025 16:29:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CA91407FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742401777;
	bh=sfO2w9M27ySOyjX0Qcnjkz1X99iTLsxOISqjUwXGFmE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yM/tJNPvc79nNbip//vxPmvMtsPeYXlwmAibf91KufL8t4URWFd1GkhpkUarxgxKP
	 P+kOsLdsrWrxxP1r7set/CY8qzFDsqAoNbJ8a3n7/cONfaQegs5kN0d4Fharnmcjaz
	 dUhO2afVwgqsOGNeb/ePN0uz3G+yB92aHfEWsU4bXgygknbcvg1cxYBoFa2QFIgZnW
	 46nLZ8O0PgXgPw/cNbhPV3eTGZ6xxqpYn/CQ6wnXF84vZBWISflR54xSAbKPgGyyWh
	 6UtzL9ZMFEuVRG8jxJvAF8W7GrZ/rB+tkqQBb9qPctxWDQDU4IOfi8nXHvQCr03fqt
	 GEQEWv72qjX6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7CA91407FF;
	Wed, 19 Mar 2025 16:29:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6EE18CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 16:29:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5224E60794
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 16:29:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Z5YJvZQGsLG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 16:29:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3B2CA606B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B2CA606B6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B2CA606B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 16:29:34 +0000 (UTC)
X-CSE-ConnectionGUID: nV2T8CqJQKyiN/IUxJLLdQ==
X-CSE-MsgGUID: 9VL8HUIvQcypKvUtK+V3+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="54233695"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="54233695"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 09:29:33 -0700
X-CSE-ConnectionGUID: e/8UbevXQX+K7Re3YVK4pQ==
X-CSE-MsgGUID: rvqcNjhJQdGO1HsD3Pf64A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="123176279"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by fmviesa010.fm.intel.com with ESMTP; 19 Mar 2025 09:29:33 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tuwIM-000FWM-2H
 for intel-wired-lan@lists.osuosl.org; Wed, 19 Mar 2025 16:29:30 +0000
Date: Thu, 20 Mar 2025 00:28:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503200036.37yH36cS-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742401774; x=1773937774;
 h=date:from:to:subject:message-id;
 bh=1EO39JolYX6J0PojVqa/kABNhwkvefGxsS0GD1EncJM=;
 b=dgLqeRc6kpJdk3Xu5eFeDrtJVCJnrSfVXKs6OcxTfXVru1cHTf2kg3fL
 sEdTaDTVSxHY3XFKcEZwgBSFKYIAQxqmtQzvJcJzm6x4CF+dga/nxzkCY
 CUTSCVwSftmVIxfPsjMo3CvwEps3kxTdxRlyfNzQ1uerkrDXo3mVSSWZl
 qPN4UxQymQ8d8+4p/Zhih86eE7myyv5RU7nHKf+QDnzyWWhYRDmb/+UNb
 pYSL7+Z5rrSFxvLPWmwtNXwYjrPC/HhtVi2JWzIkZZmtC43zTLZ6nJmg/
 mCBvbFue6iqXkO97tqO+lWQ4vNf6wh2tF6AY2na0hvh7fdaV+aNl7JpXI
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dgLqeRc6
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 4a419cc58838435a41d16d67491d04fe06badcff
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 4a419cc58838435a41d16d67491d04fe06badcff  idpf: change the method for mailbox workqueue allocation

elapsed time: 1453m

configs tested: 116
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-6.5.0
alpha                            allyesconfig    gcc-9.3.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-8.5.0
arc                              allyesconfig    gcc-10.5.0
arc                   randconfig-001-20250319    gcc-14.2.0
arc                   randconfig-002-20250319    gcc-14.2.0
arm                              allmodconfig    gcc-13.3.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-6.5.0
arm                        multi_v5_defconfig    gcc-7.5.0
arm                   randconfig-001-20250319    clang-18
arm                   randconfig-002-20250319    clang-21
arm                   randconfig-003-20250319    clang-20
arm                   randconfig-004-20250319    clang-16
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-8.5.0
arm64                 randconfig-001-20250319    gcc-14.2.0
arm64                 randconfig-002-20250319    gcc-7.5.0
arm64                 randconfig-003-20250319    gcc-12.3.0
arm64                 randconfig-004-20250319    gcc-7.5.0
csky                              allnoconfig    gcc-9.3.0
csky                  randconfig-001-20250319    gcc-14.2.0
csky                  randconfig-002-20250319    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250319    clang-21
hexagon               randconfig-002-20250319    clang-16
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250319    gcc-12
i386        buildonly-randconfig-002-20250319    gcc-12
i386        buildonly-randconfig-003-20250319    gcc-12
i386        buildonly-randconfig-004-20250319    clang-20
i386        buildonly-randconfig-005-20250319    gcc-12
i386        buildonly-randconfig-006-20250319    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-13.3.0
loongarch             randconfig-001-20250319    gcc-14.2.0
loongarch             randconfig-002-20250319    gcc-14.2.0
m68k                             allmodconfig    gcc-8.5.0
m68k                              allnoconfig    gcc-5.5.0
m68k                             allyesconfig    gcc-6.5.0
m68k                        m5272c3_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-9.3.0
microblaze                        allnoconfig    gcc-11.5.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-10.5.0
mips                            gpr_defconfig    clang-18
mips                           ip22_defconfig    gcc-11.5.0
mips                           ip28_defconfig    gcc-11.5.0
mips                      pic32mzda_defconfig    gcc-5.5.0
mips                         rt305x_defconfig    clang-15
nios2                             allnoconfig    gcc-8.5.0
nios2                 randconfig-001-20250319    gcc-14.2.0
nios2                 randconfig-002-20250319    gcc-10.5.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-5.5.0
parisc                           allyesconfig    gcc-9.3.0
parisc                randconfig-001-20250319    gcc-10.5.0
parisc                randconfig-002-20250319    gcc-5.5.0
powerpc                          allmodconfig    gcc-10.5.0
powerpc                          allyesconfig    clang-21
powerpc                    amigaone_defconfig    gcc-8.5.0
powerpc                    gamecube_defconfig    clang-21
powerpc                   motionpro_defconfig    clang-15
powerpc                 mpc8315_rdb_defconfig    clang-21
powerpc               randconfig-001-20250319    gcc-9.3.0
powerpc               randconfig-002-20250319    clang-21
powerpc               randconfig-003-20250319    clang-21
powerpc                     taishan_defconfig    clang-17
powerpc                 xes_mpc85xx_defconfig    gcc-7.5.0
powerpc64             randconfig-001-20250319    clang-20
powerpc64             randconfig-002-20250319    gcc-5.5.0
powerpc64             randconfig-003-20250319    clang-21
riscv                            allmodconfig    clang-21
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250319    clang-20
riscv                 randconfig-002-20250319    clang-17
s390                             allmodconfig    clang-18
s390                             allyesconfig    gcc-13.2.0
s390                  randconfig-001-20250319    gcc-11.5.0
s390                  randconfig-002-20250319    gcc-8.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-10.5.0
sh                               allyesconfig    gcc-14.2.0
sh                          lboxre2_defconfig    gcc-14.2.0
sh                          polaris_defconfig    gcc-9.3.0
sh                    randconfig-001-20250319    gcc-11.5.0
sh                    randconfig-002-20250319    gcc-14.2.0
sh                   secureedge5410_defconfig    gcc-11.5.0
sparc                            allmodconfig    gcc-6.5.0
sparc                             allnoconfig    gcc-6.5.0
sparc                 randconfig-001-20250319    gcc-6.5.0
sparc                 randconfig-002-20250319    gcc-13.3.0
sparc64               randconfig-001-20250319    gcc-14.2.0
sparc64               randconfig-002-20250319    gcc-14.2.0
um                               allmodconfig    clang-19
um                               allyesconfig    gcc-12
um                    randconfig-001-20250319    gcc-12
um                    randconfig-002-20250319    gcc-11
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250319    clang-20
x86_64      buildonly-randconfig-002-20250319    clang-20
x86_64      buildonly-randconfig-003-20250319    gcc-12
x86_64      buildonly-randconfig-004-20250319    gcc-11
x86_64      buildonly-randconfig-005-20250319    clang-20
x86_64      buildonly-randconfig-006-20250319    clang-20
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250319    gcc-10.5.0
xtensa                randconfig-002-20250319    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
