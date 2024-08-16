Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A738D9541FE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 08:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B93B404E9;
	Fri, 16 Aug 2024 06:46:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lHnZjksNm_2n; Fri, 16 Aug 2024 06:46:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06BE040156
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723790812;
	bh=/sTxz9KMImGQemHuSB+lHiHrvqOPiGYYN4RgSjW1JHk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eZeqEnW1nBXClU1Y4MmzmedUfbrtQkEYXu/TmB19HchSFZzZ2/GLr3iIgZV5TPk4G
	 0bhdDXvwEt2h85sbc+B5Jto9KoqHn14SlkfHRD9Dp7mNFRVJMTYXOcuQFQReNsKTul
	 DRQkRIssw0BpqpoRGZCXwN0CRWJOkn1S29GpEBIVY1qxLj8UTaQ1XCItH6Gt68h+8h
	 MUhGcSIiQrn4KMOyZigNLWJDtsQ2xiQhz9Q6R41dBvQF7UEjcVYITB2+6Hdmkhckl5
	 aQ8z4L0IuB+iZIABCl+PpL4nFyg0/a3ExNVrqWyR6ul7lwTzwbiHxaLvQjGks44H43
	 l70vdOVT/vMYA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06BE040156;
	Fri, 16 Aug 2024 06:46:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE1281BF40F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 06:46:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C36596073A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 06:46:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iwQYs06Kzl4G for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 06:46:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9CCB760739
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CCB760739
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9CCB760739
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 06:46:49 +0000 (UTC)
X-CSE-ConnectionGUID: 7DHYRnepTUOTF02iuc3o3Q==
X-CSE-MsgGUID: hJe6JEsPSUa0nzWjPgPVrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="21957074"
X-IronPort-AV: E=Sophos;i="6.10,150,1719903600"; d="scan'208";a="21957074"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 23:46:49 -0700
X-CSE-ConnectionGUID: c2nzQBEFRR+wCdonlV5Zig==
X-CSE-MsgGUID: xv1S29pzQqWDXdyGtJmkfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,150,1719903600"; d="scan'208";a="64264856"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 15 Aug 2024 23:46:48 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1seqjW-000652-0G
 for intel-wired-lan@lists.osuosl.org; Fri, 16 Aug 2024 06:46:46 +0000
Date: Fri, 16 Aug 2024 14:46:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408161437.0iRQbg1X-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723790810; x=1755326810;
 h=date:from:to:subject:message-id;
 bh=tzbg7HQN6PSfttnFPd91lmbh5ZkFopGmCoS9DYF5ApE=;
 b=SpwMbn+/NLA2g+3dzbMsN5RqdcAoj0kH6TXOXQf3kXTq19mhUt1n/eL4
 mhoqCTR4DJs9xxXGuMnM1k69Jxzh8I/NNNsTEAH7bbx+5tjnAHjDT2kvt
 PiU/Brsi6o4OMXYH6oOAIhGDzKvYQ319JIc+bGstZ5sGH+2Gq2Bj1+aEK
 V6hF9Tj55Dl0AGbNspmua4Rp9mF6OvuMchxbMpZczk419WOcivOW2AEfy
 I/IRo4FpWtQDvZK7zQafN/1Tp5jfQi5Sh7Z69dDmZspga+d0qRcc9AzlT
 4RjNf85jSq3SO57gJDvPf11D2hgwKHyMLw6aTG4dHRfze0zErw+w/FE8F
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SpwMbn+/
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 9c5af2d7dfe18e3a36f85fad8204cd2442ecd82b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 9c5af2d7dfe18e3a36f85fad8204cd2442ecd82b  Merge tag 'nf-24-08-15' of git://git.kernel.org/pub/scm/linux/kernel/git/netfilter/nf

elapsed time: 1106m

configs tested: 110
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240816   gcc-13.2.0
arc                   randconfig-002-20240816   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                   randconfig-001-20240816   clang-20
arm                   randconfig-002-20240816   clang-20
arm                   randconfig-003-20240816   clang-20
arm                   randconfig-004-20240816   clang-20
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240816   clang-20
arm64                 randconfig-002-20240816   clang-20
arm64                 randconfig-003-20240816   clang-20
arm64                 randconfig-004-20240816   clang-20
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240816   gcc-14.1.0
csky                  randconfig-002-20240816   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240816   clang-20
hexagon               randconfig-002-20240816   clang-20
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240816   gcc-12
i386         buildonly-randconfig-002-20240816   clang-18
i386         buildonly-randconfig-003-20240816   clang-18
i386         buildonly-randconfig-004-20240816   clang-18
i386         buildonly-randconfig-005-20240816   gcc-11
i386         buildonly-randconfig-006-20240816   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240816   clang-18
i386                  randconfig-002-20240816   gcc-12
i386                  randconfig-003-20240816   gcc-11
i386                  randconfig-004-20240816   gcc-12
i386                  randconfig-005-20240816   clang-18
i386                  randconfig-006-20240816   gcc-11
i386                  randconfig-011-20240816   gcc-12
i386                  randconfig-012-20240816   clang-18
i386                  randconfig-013-20240816   clang-18
i386                  randconfig-014-20240816   gcc-12
i386                  randconfig-015-20240816   gcc-12
i386                  randconfig-016-20240816   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240816   gcc-14.1.0
loongarch             randconfig-002-20240816   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240816   gcc-14.1.0
nios2                 randconfig-002-20240816   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                randconfig-001-20240816   gcc-14.1.0
parisc                randconfig-002-20240816   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc               randconfig-001-20240816   gcc-14.1.0
powerpc               randconfig-002-20240816   clang-20
powerpc               randconfig-003-20240816   gcc-14.1.0
powerpc64             randconfig-001-20240816   gcc-14.1.0
powerpc64             randconfig-002-20240816   clang-20
powerpc64             randconfig-003-20240816   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                 randconfig-001-20240816   clang-20
riscv                 randconfig-002-20240816   clang-20
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                  randconfig-001-20240816   gcc-14.1.0
s390                  randconfig-002-20240816   clang-20
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                    randconfig-001-20240816   gcc-14.1.0
sh                    randconfig-002-20240816   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64               randconfig-001-20240816   gcc-14.1.0
sparc64               randconfig-002-20240816   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                    randconfig-001-20240816   clang-20
um                    randconfig-002-20240816   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240816   gcc-14.1.0
xtensa                randconfig-002-20240816   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
