Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B35A0A53C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jan 2025 19:24:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FEBF611AF;
	Sat, 11 Jan 2025 18:24:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qf-EopL8ANev; Sat, 11 Jan 2025 18:24:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FB896119F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736619874;
	bh=DShztfX+qbufJYrdD7IUH+8xW6mwWKHn7hcJLb5nYrk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PMqTyRFKUALv8rITKR8T93hLSibDxRfBcCEIFasRawE1yRZg3gtaGMzw5nDA8jbSc
	 wDJ+3pKhpA+FAQo1N82Wx3K1FQEosXEpTjz4nJRUvfE0ugywU7Kmg6MN4qfSXz33dj
	 RPnS7CbbBthIWMBlXv0vGL1sEhCSyDeurKP0j35NcCMdc/CxDxo/KASyRb7L9bJPCv
	 qug/g5mcTw4bU/WRmhpGzw8QXbMueH92eik2/mQRKYi/5cGFSihno+L8InpS5Xscm3
	 G8lurogHFHELDIRUVyN1zmpLN3DACecfOUXxey3hPFTtBpHGpsohodlHiejAfn4L83
	 8iOEedzdTyjCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FB896119F;
	Sat, 11 Jan 2025 18:24:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 74B59940
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jan 2025 18:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6287783C3F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jan 2025 18:24:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FQS5nSJ3Khtu for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Jan 2025 18:24:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1026683C3D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1026683C3D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1026683C3D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jan 2025 18:24:30 +0000 (UTC)
X-CSE-ConnectionGUID: KsgKnS39Qj611A1JQNmBNQ==
X-CSE-MsgGUID: RiJIg//HS3Gg4wByLKw89Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11312"; a="48312383"
X-IronPort-AV: E=Sophos;i="6.12,307,1728975600"; d="scan'208";a="48312383"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2025 10:24:29 -0800
X-CSE-ConnectionGUID: H/5Z/7ZhTrqgxM3/sqL6/A==
X-CSE-MsgGUID: 9pD2T3mCT6yAlEEJ9t0s1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="109063563"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 11 Jan 2025 10:24:28 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tWg9q-000L5R-11
 for intel-wired-lan@lists.osuosl.org; Sat, 11 Jan 2025 18:24:26 +0000
Date: Sun, 12 Jan 2025 02:23:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501120230.yqZwBXgh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736619871; x=1768155871;
 h=date:from:to:subject:message-id;
 bh=1f4ec+xvyWL+8dsYpeT5q/wob0V8usj1z+YN9eUhPdU=;
 b=kXe+NyomqnqFeFx+FwM4EMzpHI9TAj3PaF89wDs6+jtHqzlnaPcTJ1sk
 nUtA/ICBh2Ijm5/L8etXLouV6CkGuR2QyWXKo9G2oo5pJ23nLL950S4QF
 12Mjs48hze2686XoB/4wbGhJIq3hGGOJoGissOZTAY0Of/yCe0yUhkB4a
 +1e8ugtuMPBL7MuNJrEVaNf4p/wj+yQivY67zXmhnonAYWMszhOGjzV25
 Oq5rVy2K0kVAgEFBOQlz+PbytOggF4oCIMv5zH2Q5zWLW334NWjhSOE39
 VNKfCncRE9AXQ5EEC6ER8q/JoFTSDf804xusl63ym3csXUxVbEgojwbVk
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kXe+Nyom
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 351ce14c4563d2bd56e755c558fad6948354f840
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
branch HEAD: 351ce14c4563d2bd56e755c558fad6948354f840  e1000e: Fix real-time violations on link up

elapsed time: 1449m

configs tested: 82
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
arc                               allnoconfig    gcc-13.2.0
arc                   randconfig-001-20250111    gcc-13.2.0
arc                   randconfig-002-20250111    gcc-13.2.0
arm                               allnoconfig    clang-17
arm                          moxart_defconfig    gcc-14.2.0
arm                   randconfig-001-20250111    clang-16
arm                   randconfig-002-20250111    gcc-14.2.0
arm                   randconfig-003-20250111    clang-20
arm                   randconfig-004-20250111    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250111    gcc-14.2.0
arm64                 randconfig-002-20250111    clang-20
arm64                 randconfig-003-20250111    clang-18
arm64                 randconfig-004-20250111    clang-16
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250111    gcc-14.2.0
csky                  randconfig-002-20250111    gcc-14.2.0
hexagon                           allnoconfig    clang-20
hexagon               randconfig-001-20250111    clang-20
hexagon               randconfig-002-20250111    clang-15
i386        buildonly-randconfig-001-20250111    gcc-12
i386        buildonly-randconfig-002-20250111    gcc-11
i386        buildonly-randconfig-003-20250111    gcc-12
i386        buildonly-randconfig-004-20250111    gcc-12
i386        buildonly-randconfig-005-20250111    gcc-12
i386        buildonly-randconfig-006-20250111    clang-19
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250111    gcc-14.2.0
loongarch             randconfig-002-20250111    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                          amiga_defconfig    gcc-14.2.0
m68k                        stmark2_defconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        bcm63xx_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250111    gcc-14.2.0
nios2                 randconfig-002-20250111    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250111    gcc-14.2.0
parisc                randconfig-002-20250111    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc               randconfig-001-20250111    gcc-14.2.0
powerpc               randconfig-002-20250111    gcc-14.2.0
powerpc               randconfig-003-20250111    gcc-14.2.0
powerpc64             randconfig-001-20250111    gcc-14.2.0
powerpc64             randconfig-002-20250111    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250111    clang-18
riscv                 randconfig-002-20250111    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250111    clang-20
s390                  randconfig-002-20250111    clang-19
s390                       zfcpdump_defconfig    clang-19
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250111    gcc-14.2.0
sh                    randconfig-002-20250111    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250111    gcc-14.2.0
sparc                 randconfig-002-20250111    gcc-14.2.0
sparc64               randconfig-001-20250111    gcc-14.2.0
sparc64               randconfig-002-20250111    gcc-14.2.0
um                                allnoconfig    clang-18
um                    randconfig-001-20250111    clang-18
um                    randconfig-002-20250111    clang-20
x86_64      buildonly-randconfig-001-20250111    clang-19
x86_64      buildonly-randconfig-002-20250111    gcc-12
x86_64      buildonly-randconfig-003-20250111    gcc-12
x86_64      buildonly-randconfig-004-20250111    clang-19
x86_64      buildonly-randconfig-005-20250111    gcc-12
x86_64      buildonly-randconfig-006-20250111    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250111    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
