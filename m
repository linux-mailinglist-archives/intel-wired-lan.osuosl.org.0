Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E69979F6CF0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 19:13:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 769DC408C9;
	Wed, 18 Dec 2024 18:13:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mhzNNvfQajHa; Wed, 18 Dec 2024 18:13:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEF08408D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734545599;
	bh=6y+vYL54XB9cD88wd3+HiLtXb+66jPKzUvHrahT1rWw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZStFvgCPuO9FVrHi8wvAspEut+PPXeBToPpD3GBMF2/d0YcY/DTlaupd3rf5cBsNN
	 R91rJChJqaXaqwpefT6VHXruLGg4ZTipULNdUcm965SJEAjOS/CmstvkfjM2PsDgI+
	 oGrgphJkQtLPvei58uNaWm7pByfP85HlKMZ5iDKv1naro7V1ZJgJcXRjv/sDaQEtsL
	 /nnod5Vm4TeKO9oYO2jptQf3nxRVVx1sIdQ0LeAv2D3qzZF6JAVLPk8w+FqaVtePl1
	 BN00zoAAz5uhqHGvWsNqsy03VpeVhkRzEyzvi9sHJlnUyTz9NQIRLjcYz5YMd7thhI
	 tDkxvUUg5ewBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEF08408D3;
	Wed, 18 Dec 2024 18:13:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 905D9C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 18:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BF15419EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 18:13:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h1CzADwX5rDt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 18:13:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 18AD140124
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18AD140124
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 18AD140124
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 18:13:14 +0000 (UTC)
X-CSE-ConnectionGUID: hPvgb4XfTiu4QoufMOWS2Q==
X-CSE-MsgGUID: qm3c55AGSlOgUEB6mLZUxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46044856"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="46044856"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 10:13:14 -0800
X-CSE-ConnectionGUID: B+ZHb83mS1u2KZLIS0Lv8g==
X-CSE-MsgGUID: Qtx8+uYaSDyOWMTdwCM/cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121199712"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 18 Dec 2024 10:13:13 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tNyXn-000GXm-0J
 for intel-wired-lan@lists.osuosl.org; Wed, 18 Dec 2024 18:13:11 +0000
Date: Thu, 19 Dec 2024 02:13:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412190259.nc2Krr7O-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734545595; x=1766081595;
 h=date:from:to:subject:message-id;
 bh=Bk5dplcq4uiXZ6uGkYdpn7PcHIxK7dspPyQIV17iDUY=;
 b=KbN9ORgIZ68GAIxigJj8qiTFrpRHgDdE9ewUA7orH3UgKj7rw5HKzmXp
 rH8J5GEWzq0cwyV4wK70NvofheL5vGnFe7oImU2LTQxKE9Q82Lami75Hw
 aebldhwy3/Mz9a+mWgnZMpFfkO6UPFZfzBbK57GfxMI/0acNygHi/T7jL
 s1BFFXtoGhiXBW7GwsPA0iqFd2W1/0FqtJbJzym6ef8xi6QoFr939CM7Q
 AcMNlMlp+KambLaU6ZWArHpdBHj6ugdyw4cROkHOXEH6oF9ntnA8TV54b
 gsuW2Qhko4WmYfKpBbExeBO8dnLbC0rEMn3Vpg1CH+gNpXmimuwcDJ8/H
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KbN9ORgI
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 d22f955cc2cb9684dd45396f974101f288869485
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
branch HEAD: d22f955cc2cb9684dd45396f974101f288869485  rust: net::phy scope ThisModule usage in the module_phy_driver macro

elapsed time: 1734m

configs tested: 108
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241218    gcc-13.2.0
arc                   randconfig-002-20241218    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20241218    clang-20
arm                   randconfig-002-20241218    clang-19
arm                   randconfig-003-20241218    clang-17
arm                   randconfig-004-20241218    clang-19
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241218    clang-20
arm64                 randconfig-002-20241218    clang-20
arm64                 randconfig-003-20241218    gcc-14.2.0
arm64                 randconfig-004-20241218    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20241218    gcc-14.2.0
csky                  randconfig-002-20241218    gcc-14.2.0
hexagon                           allnoconfig    clang-20
hexagon               randconfig-001-20241218    clang-20
hexagon               randconfig-002-20241218    clang-18
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241218    clang-19
i386        buildonly-randconfig-002-20241218    clang-19
i386        buildonly-randconfig-003-20241218    gcc-12
i386        buildonly-randconfig-004-20241218    gcc-12
i386        buildonly-randconfig-005-20241218    clang-19
i386        buildonly-randconfig-006-20241218    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241218    clang-19
i386                  randconfig-002-20241218    clang-19
i386                  randconfig-003-20241218    clang-19
i386                  randconfig-004-20241218    gcc-12
i386                  randconfig-005-20241218    clang-19
i386                  randconfig-006-20241218    clang-19
i386                  randconfig-007-20241218    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20241218    gcc-14.2.0
loongarch             randconfig-002-20241218    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20241218    gcc-14.2.0
nios2                 randconfig-002-20241218    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20241218    gcc-14.2.0
parisc                randconfig-002-20241218    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc               randconfig-001-20241218    gcc-14.2.0
powerpc               randconfig-002-20241218    clang-15
powerpc               randconfig-003-20241218    clang-17
powerpc64             randconfig-001-20241218    gcc-14.2.0
powerpc64             randconfig-002-20241218    clang-20
powerpc64             randconfig-003-20241218    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20241218    gcc-14.2.0
riscv                 randconfig-002-20241218    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20241218    gcc-14.2.0
s390                  randconfig-002-20241218    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20241218    gcc-14.2.0
sh                    randconfig-002-20241218    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20241218    gcc-14.2.0
sparc                 randconfig-002-20241218    gcc-14.2.0
sparc64               randconfig-001-20241218    gcc-14.2.0
sparc64               randconfig-002-20241218    gcc-14.2.0
um                                allnoconfig    clang-18
um                    randconfig-001-20241218    gcc-12
um                    randconfig-002-20241218    clang-17
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241218    clang-19
x86_64      buildonly-randconfig-002-20241218    clang-19
x86_64      buildonly-randconfig-003-20241218    gcc-12
x86_64      buildonly-randconfig-004-20241218    gcc-12
x86_64      buildonly-randconfig-005-20241218    gcc-12
x86_64      buildonly-randconfig-006-20241218    gcc-11
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241218    gcc-14.2.0
xtensa                randconfig-002-20241218    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
