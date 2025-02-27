Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6694A4859A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 17:48:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30D48414E4;
	Thu, 27 Feb 2025 16:48:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YULXUxUnNBHt; Thu, 27 Feb 2025 16:48:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B8BE414BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740674896;
	bh=Bm5PUBpZo0l2y5zG4X/WY6G3S1pYGmvS6c/LdCRbZis=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HzRHfKGyZpy9bBjQveVLok2QSdEoLkJwExtU3DyQ+bgl/svATQnc4IBLfwJIt+iPN
	 UbCkyc0vrdGEbWNhIGlqzFuxLuTDPcDyJv9BYt9Dx58jVVZDF0rwy3vO3J+iBrhbpZ
	 ekIUJjxz+P0JbiHhnztBqAcoyYeqcQCe1XoOKVczW3SNjHG2/vfXs7nA8uiJt0otBV
	 lWBFg+0YKGMyr9D6zgmrngYYu+AXYHCysyaWWHfMtP7mLLO34uPR0EGCqO+lYmyNqN
	 ikC68BzYvW1/BHbLFUG/4E8lyMhSjXGlykenMzIQAyQ8kPqxUcav+ABtzYMb+Pdc5P
	 i9YjpPjf1C60Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B8BE414BB;
	Thu, 27 Feb 2025 16:48:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D92F0711
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 16:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD22C61096
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 16:48:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id saFXDoLCHPDb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 16:48:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DC96B60BBF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC96B60BBF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC96B60BBF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 16:48:12 +0000 (UTC)
X-CSE-ConnectionGUID: lxBNtnsdTRCMZnLsFAKSsQ==
X-CSE-MsgGUID: GC8jJKkUR7mSKPDUEIRtkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="45227539"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="45227539"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 08:48:05 -0800
X-CSE-ConnectionGUID: mFTf6qbKRvqPiHjI+PQgzQ==
X-CSE-MsgGUID: Nr8hfhLuRT+BlyH2e+4M9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="116841797"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by orviesa009.jf.intel.com with ESMTP; 27 Feb 2025 08:48:04 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tnh3J-000Dj6-1h
 for intel-wired-lan@lists.osuosl.org; Thu, 27 Feb 2025 16:48:01 +0000
Date: Fri, 28 Feb 2025 00:47:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502280032.JnQsLEgE-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740674893; x=1772210893;
 h=date:from:to:subject:message-id;
 bh=KoijCBvVP1udc3/eWnYM99RuTvFsF4vxONp6f+V2pRY=;
 b=gATBLA54yQSLS3ahOxPKI/5venQQG4+nzio5l8c5uIifNQ0aA6cuLkFN
 gz0c0pbrfb1doH/qcJRyC1JaqfLcWxw+LBS1KyoEB+/yCbpONImLO7N8/
 uRZDA3nA+9m1sHJ0J089+Ng4doJYbQMkJ5tYaY0+2dDjgz83rVLCscmsG
 ZNAd17kwCTu0Xb88RwePZuW2UOjQ+N2+ldEmggP0uTxD7jlBcjlYiRS1O
 hqaDFjX0+CEte9rjGnJx9ds/xLArRqoFrVJLX2DP2LbghFaMgiHkXWXJj
 hsiSXMochHEgrGMZb7vusGrbrCCHxSjboe0AoEh+5UFUtl14BQpnr5c3i
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gATBLA54
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e6cd82a32d9c0db0face9ba3e7781828ca5e78da
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
branch HEAD: e6cd82a32d9c0db0face9ba3e7781828ca5e78da  ixgbe: fix media type detection for E610 device

elapsed time: 1448m

configs tested: 68
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                           allyesconfig    gcc-14.2.0
arc                  randconfig-001-20250227    gcc-13.2.0
arc                  randconfig-002-20250227    gcc-13.2.0
arm                  randconfig-001-20250227    gcc-14.2.0
arm                  randconfig-002-20250227    clang-17
arm                  randconfig-003-20250227    gcc-14.2.0
arm                  randconfig-004-20250227    clang-21
arm64                randconfig-001-20250227    gcc-14.2.0
arm64                randconfig-002-20250227    clang-19
arm64                randconfig-003-20250227    gcc-14.2.0
arm64                randconfig-004-20250227    gcc-14.2.0
csky                 randconfig-001-20250227    gcc-14.2.0
csky                 randconfig-002-20250227    gcc-14.2.0
hexagon                         allmodconfig    clang-21
hexagon                         allyesconfig    clang-18
hexagon              randconfig-001-20250227    clang-14
hexagon              randconfig-002-20250227    clang-16
i386       buildonly-randconfig-001-20250227    gcc-12
i386       buildonly-randconfig-002-20250227    gcc-11
i386       buildonly-randconfig-003-20250227    clang-19
i386       buildonly-randconfig-004-20250227    gcc-12
i386       buildonly-randconfig-005-20250227    gcc-11
i386       buildonly-randconfig-006-20250227    clang-19
loongarch            randconfig-001-20250227    gcc-14.2.0
loongarch            randconfig-002-20250227    gcc-14.2.0
nios2                randconfig-001-20250227    gcc-14.2.0
nios2                randconfig-002-20250227    gcc-14.2.0
openrisc                         allnoconfig    gcc-14.2.0
parisc                           allnoconfig    gcc-14.2.0
parisc               randconfig-001-20250227    gcc-14.2.0
parisc               randconfig-002-20250227    gcc-14.2.0
powerpc                          allnoconfig    gcc-14.2.0
powerpc              randconfig-001-20250227    clang-19
powerpc              randconfig-002-20250227    gcc-14.2.0
powerpc              randconfig-003-20250227    clang-19
powerpc64            randconfig-001-20250227    clang-17
powerpc64            randconfig-002-20250227    clang-21
powerpc64            randconfig-003-20250227    gcc-14.2.0
riscv                            allnoconfig    gcc-14.2.0
riscv                randconfig-001-20250227    gcc-14.2.0
riscv                randconfig-002-20250227    gcc-14.2.0
s390                            allmodconfig    clang-19
s390                             allnoconfig    clang-15
s390                            allyesconfig    gcc-14.2.0
s390                 randconfig-001-20250227    clang-18
s390                 randconfig-002-20250227    gcc-14.2.0
sh                              allmodconfig    gcc-14.2.0
sh                              allyesconfig    gcc-14.2.0
sh                   randconfig-001-20250227    gcc-14.2.0
sh                   randconfig-002-20250227    gcc-14.2.0
sparc                           allmodconfig    gcc-14.2.0
sparc                randconfig-001-20250227    gcc-14.2.0
sparc                randconfig-002-20250227    gcc-14.2.0
sparc64              randconfig-001-20250227    gcc-14.2.0
sparc64              randconfig-002-20250227    gcc-14.2.0
um                              allmodconfig    clang-21
um                               allnoconfig    clang-18
um                              allyesconfig    gcc-12
um                   randconfig-001-20250227    clang-17
um                   randconfig-002-20250227    gcc-12
x86_64     buildonly-randconfig-001-20250227    clang-19
x86_64     buildonly-randconfig-002-20250227    clang-19
x86_64     buildonly-randconfig-003-20250227    gcc-12
x86_64     buildonly-randconfig-004-20250227    gcc-12
x86_64     buildonly-randconfig-005-20250227    clang-19
x86_64     buildonly-randconfig-006-20250227    gcc-12
xtensa               randconfig-001-20250227    gcc-14.2.0
xtensa               randconfig-002-20250227    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
