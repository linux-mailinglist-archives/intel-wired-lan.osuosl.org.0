Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BD8A4A096
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 18:37:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65ECB84838;
	Fri, 28 Feb 2025 17:37:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VcsI6qvYZnXF; Fri, 28 Feb 2025 17:37:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BB2E8473D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740764248;
	bh=kLIigJXepvpU6dsJF9+Oxmo1uec2lh1t1XEOu8YfUPo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rzTk51La8bQ6g7WYLRNITVjyxMpZV9sEzDDVEVze4jWEyzjByjDW8wah5EZraMXsg
	 hqzqQXfIOKySKaxiSijFxwavRJbYDqkXcO70C69ELTygItHTMC4tj8NiAnQJXR5/TH
	 o2zj0zsja+9Cim45RfUOAgB070bTpvSl1RnxlJ3MKvTuS6jOAjBRbvxZFJaOuBqPk7
	 1vBf9hp88S8Etp6Iz2MEEz727UklWoQpYpgVvVGXAZ9YCK0CLhxX1vXN5HMzH7NYGJ
	 lo9+MRSLOdPB4GBF15vMKuM5gj499MwIqZsjfxcR5pM8Twaw+aVEbCz4x9Yz7PkJgN
	 rWk14xm5pCOqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BB2E8473D;
	Fri, 28 Feb 2025 17:37:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 08745711
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:37:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE39F414C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:37:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 85fTsq8NQEB6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 17:37:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 76BCC4149F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76BCC4149F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76BCC4149F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:37:24 +0000 (UTC)
X-CSE-ConnectionGUID: aKJNwCAgTp+LVJ7YV3c2Kw==
X-CSE-MsgGUID: S4wnj+4sRgiD74t7s5t7Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="40876127"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="40876127"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 09:37:24 -0800
X-CSE-ConnectionGUID: oi33SbOVS/KEg1IH70W+yw==
X-CSE-MsgGUID: F3/bIE98SfGxOFUKKD1RCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="122009491"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by fmviesa005.fm.intel.com with ESMTP; 28 Feb 2025 09:37:23 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1to4Hh-000FIA-1P
 for intel-wired-lan@lists.osuosl.org; Fri, 28 Feb 2025 17:36:37 +0000
Date: Sat, 01 Mar 2025 01:36:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503010115.wZOfu7Nh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740764245; x=1772300245;
 h=date:from:to:subject:message-id;
 bh=jMW4OxVBmFJ6MOgUQpXqCUZdL+wAfZsXZNH6/ocXfio=;
 b=LEtr5lD7zhq1Zz7FxdzZYYdtaR1THx321Q80Jw7rUAZJ6xM61qZ7WK7i
 PmDFGHIwBjW+9rKFAsfR3oZzTcu/ljWkdTXc72yA4sYzCpC4Yqf8kgS6M
 bBAMsPilFVkqGG4VfoybrknY+I/e0KUYvXTZNTyklD2IYYbB6qHBEzkqb
 ZKIt3iUmz+IMgaGmFVbtqVE9LfYk4Z2IUrN5On8KS6ik5iKRna0jIBIQm
 D0xVFBnkm4sFyes4QRpHx3RMEzg3pPRBpLlWo/QyVlZy9rAzbbcWYDIr3
 SdXlKoLty/OQtsV+4/XEm9Jz+Yl25YfFE4wL3UROK+ucW2sL6Lq51ucik
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LEtr5lD7
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 54e1b4becf5e220be03db4e1be773c1310e8cbbd
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 54e1b4becf5e220be03db4e1be773c1310e8cbbd  net: ti: icss-iep: Reject perout generation request

elapsed time: 1517m

configs tested: 67
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                           allyesconfig    gcc-14.2.0
arc                             allmodconfig    gcc-13.2.0
arc                             allyesconfig    gcc-13.2.0
arc                  randconfig-001-20250228    gcc-13.2.0
arc                  randconfig-002-20250228    gcc-13.2.0
arm                             allmodconfig    gcc-14.2.0
arm                             allyesconfig    gcc-14.2.0
arm                  randconfig-001-20250228    clang-21
arm                  randconfig-002-20250228    gcc-14.2.0
arm                  randconfig-003-20250228    gcc-14.2.0
arm                  randconfig-004-20250228    gcc-14.2.0
arm64                           allmodconfig    clang-18
arm64                randconfig-001-20250228    gcc-14.2.0
arm64                randconfig-002-20250228    clang-21
arm64                randconfig-003-20250228    clang-16
arm64                randconfig-004-20250228    gcc-14.2.0
csky                 randconfig-001-20250228    gcc-14.2.0
csky                 randconfig-002-20250228    gcc-14.2.0
hexagon                         allmodconfig    clang-21
hexagon                         allyesconfig    clang-18
hexagon              randconfig-001-20250228    clang-19
hexagon              randconfig-002-20250228    clang-21
i386       buildonly-randconfig-001-20250228    clang-19
i386       buildonly-randconfig-002-20250228    clang-19
i386       buildonly-randconfig-003-20250228    gcc-12
i386       buildonly-randconfig-004-20250228    clang-19
i386       buildonly-randconfig-005-20250228    clang-19
i386       buildonly-randconfig-006-20250228    clang-19
loongarch            randconfig-001-20250228    gcc-14.2.0
loongarch            randconfig-002-20250228    gcc-14.2.0
nios2                randconfig-001-20250228    gcc-14.2.0
nios2                randconfig-002-20250228    gcc-14.2.0
parisc               randconfig-001-20250228    gcc-14.2.0
parisc               randconfig-002-20250228    gcc-14.2.0
powerpc              randconfig-001-20250228    gcc-14.2.0
powerpc              randconfig-002-20250228    clang-16
powerpc              randconfig-003-20250228    clang-18
powerpc64            randconfig-001-20250228    clang-16
powerpc64            randconfig-002-20250228    clang-18
powerpc64            randconfig-003-20250228    gcc-14.2.0
riscv                randconfig-001-20250228    gcc-14.2.0
riscv                randconfig-002-20250228    gcc-14.2.0
s390                            allmodconfig    clang-19
s390                            allyesconfig    gcc-14.2.0
s390                 randconfig-001-20250228    gcc-14.2.0
s390                 randconfig-002-20250228    clang-17
sh                              allmodconfig    gcc-14.2.0
sh                              allyesconfig    gcc-14.2.0
sh                   randconfig-001-20250228    gcc-14.2.0
sh                   randconfig-002-20250228    gcc-14.2.0
sparc                           allmodconfig    gcc-14.2.0
sparc                randconfig-001-20250228    gcc-14.2.0
sparc                randconfig-002-20250228    gcc-14.2.0
sparc64              randconfig-001-20250228    gcc-14.2.0
sparc64              randconfig-002-20250228    gcc-14.2.0
um                              allmodconfig    clang-21
um                              allyesconfig    gcc-12
um                   randconfig-001-20250228    clang-21
um                   randconfig-002-20250228    clang-21
x86_64     buildonly-randconfig-001-20250228    clang-19
x86_64     buildonly-randconfig-002-20250228    clang-19
x86_64     buildonly-randconfig-003-20250228    gcc-12
x86_64     buildonly-randconfig-004-20250228    clang-19
x86_64     buildonly-randconfig-005-20250228    gcc-12
x86_64     buildonly-randconfig-006-20250228    gcc-12
xtensa               randconfig-001-20250228    gcc-14.2.0
xtensa               randconfig-002-20250228    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
