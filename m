Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAF0BB17BB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Oct 2025 20:24:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6EBF80ECE;
	Wed,  1 Oct 2025 18:24:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W_G9Edst1aSw; Wed,  1 Oct 2025 18:24:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCDD180E24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759343084;
	bh=yKaU4+qVTHn1oO6IQXhmaYvGcZifYgKiH6bWYBmYlnI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tL8uBUpp75bmbZ1vFR65qh6XK1kb2vGlpmpIWe3w20/iB2LeVsx5cTdwAcYC8rMWr
	 cf0fcszl2a/K0rNsfAWA6mvfDPXq6M03lzlDOVVYh5z/gjJNL+F6eN7Vv8EMc2aa9o
	 XFda9zeufClnr5p4guk6UT6PieJ3FruoGelf40ZLEus8WgjZsZWL7JkGEerzMvwJxz
	 ld7wR21sXht1fXMxnGz3+3YWxsOAhgKJYWdbFEkVpVQY5pdUUZXFUHrMej/fPYJILX
	 kfFv8eDKznPOBxrslqmY8zzJW4CHRkmpFdeJdOwiAqtFf4LnNJ7q26dWaeYqifnbqC
	 0j9lMNh8cxdMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCDD180E24;
	Wed,  1 Oct 2025 18:24:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E3C41CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 18:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 401C580DA1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 18:24:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1py6E6yxQflt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Oct 2025 18:24:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1194380D1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1194380D1B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1194380D1B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 18:24:37 +0000 (UTC)
X-CSE-ConnectionGUID: GdADIlhbRya1QV7EDCc0dg==
X-CSE-MsgGUID: wG3rikNnQve8YOR9QZhH4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="72729727"
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="72729727"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 11:24:37 -0700
X-CSE-ConnectionGUID: JJZnywofRZewxeoHa5FoCQ==
X-CSE-MsgGUID: V5/rUKWySNmY4aVGh8IlPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="202579555"
Received: from lkp-server01.sh.intel.com (HELO 2f2a1232a4e4) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 01 Oct 2025 11:24:33 -0700
Received: from kbuild by 2f2a1232a4e4 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v41V7-0003GJ-2p
 for intel-wired-lan@lists.osuosl.org; Wed, 01 Oct 2025 18:24:29 +0000
Date: Thu, 02 Oct 2025 02:23:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510020228.zR0vWC15-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759343082; x=1790879082;
 h=date:from:to:subject:message-id;
 bh=Fig+Zl7tfcKiPlD/G3ZglTAFwqJ2uaoA9bODm6XFn/A=;
 b=XolE6zHmmocs+CvkamBBxJySSA20UXFyqmdXXTxda+yUrajuy+FwideS
 QQLtml35YlTJUU01W3YQSkkU3SnamK2L4WF8Srfm9dqUoToSD+OB3DjfT
 /We88xR6exyZ3D5R5mFXUD8QI3JHitJEZuSJLZe/51ZHFcvUboe5oRlO5
 3XS53ZQa5DVm2ogzJiWXSlV4Pk2NdJOrd5153NERJh7mmTw+xjNuL9nyj
 gdjRTsQ3u4Z84mui24uY+psmeDBNaMFOy8JuJchW72fSSrI2Z6fe3T5Dn
 jJUl7FtMvkrOhoAa5SIr52sgEvkdRtaDP2XapbBy7aWt/DKRohQtOGIFo
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XolE6zHm
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 03faea8466713f04a522c52c386124755be960bc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 03faea8466713f04a522c52c386124755be960bc  selftests/net: add tcp_port_share to .gitignore

elapsed time: 1584m

configs tested: 114
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-15.1.0
arc                   randconfig-001-20251001    gcc-8.5.0
arc                   randconfig-002-20251001    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                        clps711x_defconfig    clang-22
arm                   randconfig-001-20251001    gcc-14.3.0
arm                   randconfig-002-20251001    clang-22
arm                   randconfig-003-20251001    gcc-12.5.0
arm                   randconfig-004-20251001    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251001    clang-22
arm64                 randconfig-002-20251001    gcc-9.5.0
arm64                 randconfig-003-20251001    gcc-8.5.0
arm64                 randconfig-004-20251001    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251001    gcc-13.4.0
csky                  randconfig-002-20251001    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251001    clang-22
hexagon               randconfig-002-20251001    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251001    clang-20
i386        buildonly-randconfig-002-20251001    clang-20
i386        buildonly-randconfig-003-20251001    gcc-14
i386        buildonly-randconfig-004-20251001    clang-20
i386        buildonly-randconfig-005-20251001    clang-20
i386        buildonly-randconfig-006-20251001    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251001    gcc-13.4.0
loongarch             randconfig-002-20251001    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251001    gcc-11.5.0
nios2                 randconfig-002-20251001    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251001    gcc-8.5.0
parisc                randconfig-002-20251001    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20251001    gcc-8.5.0
powerpc               randconfig-002-20251001    clang-22
powerpc               randconfig-003-20251001    clang-22
powerpc64             randconfig-001-20251001    gcc-8.5.0
powerpc64             randconfig-002-20251001    clang-22
powerpc64             randconfig-003-20251001    gcc-13.4.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20251001    clang-22
riscv                 randconfig-002-20251001    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20251001    clang-22
s390                  randconfig-002-20251001    gcc-12.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20251001    gcc-13.4.0
sh                    randconfig-002-20251001    gcc-11.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251001    gcc-15.1.0
sparc                 randconfig-002-20251001    gcc-8.5.0
sparc64               randconfig-001-20251001    gcc-8.5.0
sparc64               randconfig-002-20251001    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20251001    gcc-14
um                    randconfig-002-20251001    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251001    clang-20
x86_64      buildonly-randconfig-002-20251001    clang-20
x86_64      buildonly-randconfig-003-20251001    clang-20
x86_64      buildonly-randconfig-004-20251001    clang-20
x86_64      buildonly-randconfig-005-20251001    clang-20
x86_64      buildonly-randconfig-006-20251001    clang-20
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251001    gcc-15.1.0
xtensa                randconfig-002-20251001    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
