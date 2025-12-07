Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 880C1CAB0FD
	for <lists+intel-wired-lan@lfdr.de>; Sun, 07 Dec 2025 04:58:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E35A760B78;
	Sun,  7 Dec 2025 03:58:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nimU9OdQNb3v; Sun,  7 Dec 2025 03:58:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13F2260B71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765079905;
	bh=Dgj5a3y3W4WB4oDFUbDpur36Q4b2wFgbrY5LANPq5P4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=q1eFTL9RFBJy7f2rMbOo0xPYtB1D4Gh4jC7itg99JFravZfPVSVyjL8nORKgVKxf7
	 Im8xHF/rFizNgyK3YftnklddPr4WIZqVQ0tVwOwLBVCu7NqHF+yAGn2dpeUgdqnSQI
	 0CXhhlMafVe/8EJhJ0yp6KNw90w6eCeR2pdT/uGZzLU8TmNNS+r50p6Ijay+xcEdbt
	 0S9ZIkVxGRbyYYAJuPDGprjhLxhmAhn80uHcd1NZWWc+3LskO87mulmVL/vsOTnzHT
	 Uml26+BEVQr+6V9JrpHyjHvHkL16w204QNGVw1lAT3CFKJvrWtoNBly/3+N3rukgFL
	 frj/ehmn7TdHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13F2260B71;
	Sun,  7 Dec 2025 03:58:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0AA88151
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Dec 2025 03:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4B4B60AAF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Dec 2025 03:58:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zRrwnc2PeoCE for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Dec 2025 03:58:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A2BBB60905
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2BBB60905
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2BBB60905
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Dec 2025 03:58:21 +0000 (UTC)
X-CSE-ConnectionGUID: B1+fm4uIT1GLsCCZArWcOg==
X-CSE-MsgGUID: 5wGafb37Rqm2UaJ+xzyVQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11634"; a="66062183"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="66062183"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2025 19:58:21 -0800
X-CSE-ConnectionGUID: k6K6vPfKTHOnmuayhTvEhA==
X-CSE-MsgGUID: g7MFZU1vRMec1yfy5IHQ/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="196390509"
Received: from lkp-server01.sh.intel.com (HELO 4664bbef4914) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 06 Dec 2025 19:58:20 -0800
Received: from kbuild by 4664bbef4914 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vS5uc-00000000Iz5-1LBu
 for intel-wired-lan@lists.osuosl.org; Sun, 07 Dec 2025 03:58:18 +0000
Date: Sun, 07 Dec 2025 11:57:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202512071132.j9qGU80D-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765079902; x=1796615902;
 h=date:from:to:subject:message-id;
 bh=t9Hq2OFKeUieXJ53SVjz1+YPtrAYeoGMj5vu0HRvUKE=;
 b=OA1eO+rMw5XRYru8s3BAFCSyAf+fFjdDTq0atI6OeZZx+vVhqzNnivnG
 jeSfh5JUMKQm0tI3Jxt7CsePvTEyQ4cd2hVNSn4FPc0e6WgZsT/g8rJ+F
 O9gL8BcVQy/7CXAm0ybGWTRUbCdFj8WcxAY0WgFStWvveSzpHxHniBpCE
 oIFMYGld+iFmzYpUMu4P1D3Z4oSnxbtmhZjz7D60xSfayl1G3cYzo2vrd
 NJ4ci5Fg4NwFAUVdvBL6T35llY+tXOYpU+i4D4BcQveyze4ojddOAJNni
 VR1a2G7a0hGXN8BOcMToRfN9ZN+LeEAAAS0wPGRJZVPM+dTYx/n/NyQYu
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OA1eO+rM
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 46d70bcb23af8692e49fc05766d3de4dce06c46c
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
branch HEAD: 46d70bcb23af8692e49fc05766d3de4dce06c46c  ice: stop counting UDP csum mismatch as rx_errors

elapsed time: 1779m

configs tested: 115
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                               defconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20251207    gcc-13.4.0
arc                   randconfig-002-20251207    gcc-8.5.0
arm                                 defconfig    clang-22
arm                             mxs_defconfig    clang-22
arm                          pxa168_defconfig    clang-19
arm                   randconfig-001-20251207    gcc-15.1.0
arm                   randconfig-002-20251207    clang-22
arm                   randconfig-003-20251207    gcc-8.5.0
arm                   randconfig-004-20251207    gcc-12.5.0
arm                         s3c6400_defconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20251207    clang-22
arm64                 randconfig-002-20251207    gcc-10.5.0
arm64                 randconfig-003-20251207    clang-18
arm64                 randconfig-004-20251207    gcc-13.4.0
csky                             allmodconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251207    gcc-15.1.0
csky                  randconfig-002-20251207    gcc-14.3.0
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20251207    clang-22
hexagon               randconfig-002-20251207    clang-22
i386                             allmodconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251207    clang-20
i386        buildonly-randconfig-002-20251207    gcc-14
i386        buildonly-randconfig-003-20251207    gcc-14
i386        buildonly-randconfig-004-20251207    gcc-12
i386        buildonly-randconfig-005-20251207    clang-20
i386        buildonly-randconfig-006-20251207    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-011-20251207    gcc-13
i386                  randconfig-012-20251207    clang-20
i386                  randconfig-013-20251207    clang-20
i386                  randconfig-014-20251207    gcc-14
i386                  randconfig-015-20251207    clang-20
i386                  randconfig-016-20251207    clang-20
i386                  randconfig-017-20251207    gcc-14
loongarch             randconfig-001-20251207    gcc-14.3.0
loongarch             randconfig-002-20251207    clang-18
m68k                             allmodconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251207    gcc-11.5.0
nios2                 randconfig-002-20251207    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251207    gcc-8.5.0
parisc                randconfig-002-20251207    gcc-12.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                      arches_defconfig    gcc-15.1.0
powerpc                    ge_imp3a_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251207    gcc-13.4.0
powerpc               randconfig-002-20251207    gcc-10.5.0
powerpc64             randconfig-001-20251207    clang-19
powerpc64             randconfig-002-20251207    gcc-10.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20251207    gcc-13.4.0
riscv                 randconfig-002-20251207    gcc-12.5.0
s390                              allnoconfig    clang-22
s390                  randconfig-001-20251207    clang-22
s390                  randconfig-002-20251207    clang-22
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251207    gcc-14.3.0
sh                    randconfig-002-20251207    gcc-14.3.0
sh                           se7712_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20251207    gcc-13.4.0
sparc                 randconfig-002-20251207    gcc-15.1.0
sparc64                          alldefconfig    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251207    gcc-10.5.0
sparc64               randconfig-002-20251207    clang-22
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251207    clang-22
um                    randconfig-002-20251207    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251207    gcc-14
x86_64      buildonly-randconfig-002-20251207    gcc-14
x86_64      buildonly-randconfig-003-20251207    gcc-14
x86_64      buildonly-randconfig-004-20251207    clang-20
x86_64      buildonly-randconfig-005-20251207    clang-20
x86_64      buildonly-randconfig-006-20251207    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251207    clang-20
x86_64                randconfig-002-20251207    gcc-14
x86_64                randconfig-003-20251207    gcc-14
x86_64                randconfig-004-20251207    gcc-14
x86_64                randconfig-005-20251207    clang-20
x86_64                randconfig-006-20251207    clang-20
x86_64                randconfig-071-20251207    clang-20
x86_64                randconfig-072-20251207    gcc-14
x86_64                randconfig-073-20251207    clang-20
x86_64                randconfig-074-20251207    gcc-14
x86_64                randconfig-075-20251207    gcc-14
x86_64                randconfig-076-20251207    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251207    gcc-8.5.0
xtensa                randconfig-002-20251207    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
