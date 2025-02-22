Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9879FA40A80
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Feb 2025 18:04:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C24C810DC;
	Sat, 22 Feb 2025 17:04:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BbGVU_QbPl3R; Sat, 22 Feb 2025 17:04:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B42B810D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740243888;
	bh=ZTCvq+F78T1sYOmF11V9W4zxxG5mVzKIq/7Qlfg2gWE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tm/avO6xHC/vTzepN7sFqElVpOVee4JPeM9SE58ZkODPLQioXefaNaT69kv1mv6YY
	 HSj/cwLOEfIIpHsnImiBz49zyC/lv/mkYQJEZtMddkXJh7WHblZ+dNz1Y7AV2IrkxE
	 IqxxTxA/GS3/YifD7mtEUWWSkS2btbmL+9HdGbM32BWczhaYE3IVTS8OOenW8vaZrd
	 JKpS7JYStKOrOQX8/QPfKgi+sgzbU5Igjxu5nFazblmqn+4Q+YcgcLuUVFqNjN8t2c
	 0vwi1mzMh5cv98pbmmzBNINHcscHnoGjqXriANJMR64n1m0RKHhQI6De9u5uIiI/Ol
	 L6U/3EpSIT9sA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B42B810D3;
	Sat, 22 Feb 2025 17:04:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 67F08D92
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 17:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 445D840664
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 17:04:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PjjEjzikHi1N for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Feb 2025 17:04:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D0AA140634
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0AA140634
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D0AA140634
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 17:04:44 +0000 (UTC)
X-CSE-ConnectionGUID: rNO3il/SSwKxyepyW2VRrA==
X-CSE-MsgGUID: gXgbjYkUR86B8RgpwbWkeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11353"; a="58461545"
X-IronPort-AV: E=Sophos;i="6.13,308,1732608000"; d="scan'208";a="58461545"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2025 09:04:44 -0800
X-CSE-ConnectionGUID: J9mYz/YmTw281SppTCwNyw==
X-CSE-MsgGUID: 3+mDH8GITUOg7Tp/HMDZdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="152842532"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 22 Feb 2025 09:04:44 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tlsvh-0006k5-0f
 for intel-wired-lan@lists.osuosl.org; Sat, 22 Feb 2025 17:04:41 +0000
Date: Sun, 23 Feb 2025 01:04:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502230133.fOutKo57-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740243885; x=1771779885;
 h=date:from:to:subject:message-id;
 bh=0tCEiMzS/WyrXKdCBhC88j+lG9IaHRGgm+1fSZCM5l8=;
 b=kh6QzwNvi379VblV3DKmiQ57wKmVZc3Y5OGuHQ6uvLhZtXrIthjW0TWZ
 TbNtF/H047XjGw+XgYijV/+JZld28nVtLVb/ikWDOjbbpenEb3kRcDGbz
 VT53U3gJrVQZpDIfDnU0ATfoP50xlfGIajS28q1g6yeYhCQETUcRk+8Ib
 xLaWNpjngiBA1FpnjUvBqpciQHLg3IupR9rzmRXMwn7Hx/v04BlTzyzaR
 Hn8lkZTMc8lF2YZa8NJABwr55eO9TXsyaLcT8hZNeAJuHN7EMMqKEquTF
 gg5Z1EcjR88tqYOuP9Tp8DOf7utdX1sCep5gYlppHhW3/tjNedJ++VhP4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kh6QzwNv
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD REGRESSION
 bb3bb6c92e5719c0f5d7adb9d34db7e76705ac33
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
branch HEAD: bb3bb6c92e5719c0f5d7adb9d34db7e76705ac33  net: phy: remove unused feature array declarations

Error/Warning (recently discovered and may have been fixed):

    https://lore.kernel.org/oe-kbuild-all/202502221148.uKcTIWhU-lkp@intel.com
    https://lore.kernel.org/oe-kbuild-all/202502221412.TDbqnUpd-lkp@intel.com
    https://lore.kernel.org/oe-kbuild-all/202502221622.yPBcg0Uh-lkp@intel.com

    wx_ethtool.c:(.text+0x739): undefined reference to `ptp_clock_index'
    wx_lib.c:(.text+0x3334): undefined reference to `ptp_schedule_worker'
    wx_ptp.c:(.text+0x104e): undefined reference to `ptp_clock_register'
    wx_ptp.c:(.text+0xaa0): undefined reference to `ptp_clock_unregister'
    wx_ptp.c:(.text+0xd67): undefined reference to `ptp_schedule_worker'

Error/Warning ids grouped by kconfigs:

recent_errors
`-- i386-buildonly-randconfig-005-20250222
    |-- wx_ethtool.c:(.text):undefined-reference-to-ptp_clock_index
    |-- wx_lib.c:(.text):undefined-reference-to-ptp_schedule_worker
    |-- wx_ptp.c:(.text):undefined-reference-to-ptp_clock_register
    |-- wx_ptp.c:(.text):undefined-reference-to-ptp_clock_unregister
    `-- wx_ptp.c:(.text):undefined-reference-to-ptp_schedule_worker

elapsed time: 2320m

configs tested: 62
configs skipped: 1

tested configs:
alpha                           allyesconfig    gcc-14.2.0
arc                  randconfig-001-20250222    gcc-13.2.0
arc                  randconfig-002-20250222    gcc-13.2.0
arm                  randconfig-001-20250222    gcc-14.2.0
arm                  randconfig-002-20250222    gcc-14.2.0
arm                  randconfig-003-20250222    clang-16
arm                  randconfig-004-20250222    gcc-14.2.0
arm64                randconfig-001-20250222    gcc-14.2.0
arm64                randconfig-002-20250222    clang-21
arm64                randconfig-003-20250222    clang-18
arm64                randconfig-004-20250222    clang-21
csky                 randconfig-001-20250222    gcc-14.2.0
csky                 randconfig-002-20250222    gcc-14.2.0
hexagon                         allmodconfig    clang-21
hexagon                         allyesconfig    clang-18
hexagon              randconfig-001-20250222    clang-17
hexagon              randconfig-002-20250222    clang-19
i386       buildonly-randconfig-001-20250222    clang-19
i386       buildonly-randconfig-002-20250222    gcc-12
i386       buildonly-randconfig-003-20250222    gcc-12
i386       buildonly-randconfig-004-20250222    clang-19
i386       buildonly-randconfig-005-20250222    gcc-12
i386       buildonly-randconfig-006-20250222    clang-19
loongarch            randconfig-001-20250222    gcc-14.2.0
loongarch            randconfig-002-20250222    gcc-14.2.0
nios2                randconfig-001-20250222    gcc-14.2.0
nios2                randconfig-002-20250222    gcc-14.2.0
parisc               randconfig-001-20250222    gcc-14.2.0
parisc               randconfig-002-20250222    gcc-14.2.0
powerpc              randconfig-001-20250222    gcc-14.2.0
powerpc              randconfig-002-20250222    gcc-14.2.0
powerpc              randconfig-003-20250222    gcc-14.2.0
powerpc64            randconfig-001-20250222    gcc-14.2.0
powerpc64            randconfig-002-20250222    clang-16
powerpc64            randconfig-003-20250222    clang-18
riscv                randconfig-001-20250222    clang-21
riscv                randconfig-002-20250222    gcc-14.2.0
s390                            allmodconfig    clang-19
s390                            allyesconfig    gcc-14.2.0
s390                 randconfig-001-20250222    gcc-14.2.0
s390                 randconfig-002-20250222    clang-15
sh                              allmodconfig    gcc-14.2.0
sh                              allyesconfig    gcc-14.2.0
sh                   randconfig-001-20250222    gcc-14.2.0
sh                   randconfig-002-20250222    gcc-14.2.0
sparc                           allmodconfig    gcc-14.2.0
sparc                randconfig-001-20250222    gcc-14.2.0
sparc                randconfig-002-20250222    gcc-14.2.0
sparc64              randconfig-001-20250222    gcc-14.2.0
sparc64              randconfig-002-20250222    gcc-14.2.0
um                              allmodconfig    clang-21
um                              allyesconfig    gcc-12
um                   randconfig-001-20250222    gcc-12
um                   randconfig-002-20250222    gcc-12
x86_64     buildonly-randconfig-001-20250222    clang-19
x86_64     buildonly-randconfig-002-20250222    gcc-12
x86_64     buildonly-randconfig-003-20250222    gcc-12
x86_64     buildonly-randconfig-004-20250222    clang-19
x86_64     buildonly-randconfig-005-20250222    clang-19
x86_64     buildonly-randconfig-006-20250222    gcc-12
xtensa               randconfig-001-20250222    gcc-14.2.0
xtensa               randconfig-002-20250222    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
