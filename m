Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5738399D6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 20:45:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74F14405D8;
	Tue, 23 Jan 2024 19:45:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74F14405D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706039157;
	bh=8NWuFJ1LoUZhQ3wTAj9Z0KFCOa1dXtTkomzMb64q608=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fK1LNNneL7A4H5eTfcWQrtes5WioRsgJD4zRv9oydiTX0SatQWwL64ZC7yXbzibhJ
	 DFouSGX4VbSxlVkBuvJq/0LvuOjEOOcp2cOJOXFC59hGoyVOPjDfyo9VnKZpy+/rjS
	 raZUbAwBU5LsKj5FTQy6FNMh++OTgoMtyZpQhsrDD7SzLAv/V/AZAinKBo5KaUASpc
	 CATHXuacO1D6TMg33HFBzLOkQ1WFQG9Y7cuiPiwf9S+qy2qGveXKe376KCUtaKxPjs
	 hoXWcqlIdusd2C3b7I3w4XnWww1NFPptlr1fyM8tb4o7SqfnQWhssPAATs2TqlWszX
	 8GQWlEnihknKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IM0eyFGFglP0; Tue, 23 Jan 2024 19:45:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DA6440510;
	Tue, 23 Jan 2024 19:45:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DA6440510
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 260931BF852
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 19:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 08D9C60BBB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 19:45:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08D9C60BBB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dzyZOCNrpGtj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 19:45:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B9A9460B9F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 19:45:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9A9460B9F
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="8998658"
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; 
   d="scan'208";a="8998658"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 11:45:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; d="scan'208";a="27863376"
Received: from lkp-server01.sh.intel.com (HELO 961aaaa5b03c) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 23 Jan 2024 11:45:34 -0800
Received: from kbuild by 961aaaa5b03c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rSMiB-0007dV-1H
 for intel-wired-lan@lists.osuosl.org; Tue, 23 Jan 2024 19:45:31 +0000
Date: Wed, 24 Jan 2024 03:45:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401240316.JpP3W5WA-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706039150; x=1737575150;
 h=date:from:to:subject:message-id;
 bh=QixSpddTLfIfDkA1pSyJpXKRtcWDTJbv6ZLChWtDdg0=;
 b=C/1vFSouoVd1VSwFeIc+44ssjr0VukfOQfeMU+pkBHS+zcOMVQo9tFwM
 0cTKCqAYk9CivKXuHgPDFEyLi0ef1SGnQEnGw6cd5ZPK+PD80x1FilAnT
 A3x9xRbbnK79UxKjiF+eCl544theVRQ5S3HgrmVec+RvlTokyznS0oWFB
 kZG0x3iKF6604yzhvVG7mOhTOgTZJSiGZJQsT/CABhlV+Zrj1ApNT24zR
 YT/bTpsytSvhpfqaDw/NqtyB0WbbHQhCCLCWtSH+NuUD+aW4Jrfpz7V7R
 MCTzItF2N8oRxszsb7lrHeYJ7ejMliiMeSwQQcieEINvsYNgZGNgW2kx3
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C/1vFSou
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 96c6412de8e2a1a47f034027f0522592008ba3ea
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 96c6412de8e2a1a47f034027f0522592008ba3ea  ice: Add check for lport extraction to LAG init

elapsed time: 1460m

configs tested: 118
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240123   gcc  
arc                   randconfig-002-20240123   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240123   gcc  
arm                   randconfig-002-20240123   gcc  
arm                   randconfig-003-20240123   gcc  
arm                   randconfig-004-20240123   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240123   gcc  
arm64                 randconfig-002-20240123   gcc  
arm64                 randconfig-003-20240123   gcc  
arm64                 randconfig-004-20240123   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240123   gcc  
csky                  randconfig-002-20240123   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240123   clang
hexagon               randconfig-002-20240123   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240123   gcc  
i386         buildonly-randconfig-002-20240123   gcc  
i386         buildonly-randconfig-003-20240123   gcc  
i386         buildonly-randconfig-004-20240123   gcc  
i386         buildonly-randconfig-005-20240123   gcc  
i386         buildonly-randconfig-006-20240123   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20240123   gcc  
i386                  randconfig-002-20240123   gcc  
i386                  randconfig-003-20240123   gcc  
i386                  randconfig-004-20240123   gcc  
i386                  randconfig-005-20240123   gcc  
i386                  randconfig-006-20240123   gcc  
i386                  randconfig-011-20240123   clang
i386                  randconfig-012-20240123   clang
i386                  randconfig-013-20240123   clang
i386                  randconfig-014-20240123   clang
i386                  randconfig-015-20240123   clang
i386                  randconfig-016-20240123   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240123   gcc  
loongarch             randconfig-002-20240123   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240123   gcc  
nios2                 randconfig-002-20240123   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240123   gcc  
parisc                randconfig-002-20240123   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240123   gcc  
powerpc               randconfig-002-20240123   gcc  
powerpc               randconfig-003-20240123   gcc  
powerpc64             randconfig-001-20240123   gcc  
powerpc64             randconfig-002-20240123   gcc  
powerpc64             randconfig-003-20240123   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240123   gcc  
riscv                 randconfig-002-20240123   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                  randconfig-001-20240123   clang
s390                  randconfig-002-20240123   clang
sh                               allmodconfig   gcc  
sh                               allyesconfig   gcc  
sh                    randconfig-001-20240123   gcc  
sh                    randconfig-002-20240123   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64               randconfig-001-20240123   gcc  
sparc64               randconfig-002-20240123   gcc  
um                               allmodconfig   clang
um                               allyesconfig   clang
um                    randconfig-001-20240123   gcc  
um                    randconfig-002-20240123   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                randconfig-001-20240123   gcc  
xtensa                randconfig-002-20240123   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
