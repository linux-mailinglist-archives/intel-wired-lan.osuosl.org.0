Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA37597048E
	for <lists+intel-wired-lan@lfdr.de>; Sun,  8 Sep 2024 02:05:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A9AB606E8;
	Sun,  8 Sep 2024 00:05:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B94xO4t23nKy; Sun,  8 Sep 2024 00:05:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 338CA60703
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725753937;
	bh=5tSmGlc+BNyxean2RLP9Gp/ZTzJmgc4t9PwzsRXUEwQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DdwIjqCTRqyBnVnLGOcOxM+elmeF5NN+kH0GjiqiVtzWmB8Tlnn3cHhuaREhnEKtg
	 22LRfEWoJzW6XdjX0a0Wga3sIdc11NXiIFsP3XbZf6PvrBSuBUFSv06NmgtDhE1oMi
	 qMMz9QAqVINAj5lCXJBEXE7PXJTDO4ZbuUXeusKRxRYCzg+TKGbetqKqe5brCnHzhd
	 o3fZuTgHhlgpAVThdWEg58Avdo9pkDgVykRlzb06cequM+zPnjlfkxX6py2hk5WnqH
	 AHniz52O+/Ce1RFn3MVK2/FJkzbxWLO6q5Jt/+TldNVwyly5Sb+FZVwAwrSKO2ICDK
	 uQ02Fyi97ZbtQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 338CA60703;
	Sun,  8 Sep 2024 00:05:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 57F021BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Sep 2024 00:05:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 443E040458
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Sep 2024 00:05:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qSqu42iRSN6v for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Sep 2024 00:05:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BA2D1400AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA2D1400AB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA2D1400AB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Sep 2024 00:05:33 +0000 (UTC)
X-CSE-ConnectionGUID: 3ZykkuKZQ42DWl44h2YXmA==
X-CSE-MsgGUID: 2nbWZxIaRom/3dLj4xysKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11188"; a="13425058"
X-IronPort-AV: E=Sophos;i="6.10,211,1719903600"; d="scan'208";a="13425058"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2024 17:05:33 -0700
X-CSE-ConnectionGUID: isCqBYo+Q9GfgxS1SMHK1Q==
X-CSE-MsgGUID: ivXZAItUSSepvpNTqNMmqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,211,1719903600"; d="scan'208";a="97094886"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 07 Sep 2024 17:05:32 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sn5Qo-000D83-0R
 for intel-wired-lan@lists.osuosl.org; Sun, 08 Sep 2024 00:05:30 +0000
Date: Sun, 08 Sep 2024 08:05:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409080858.g6eRH5Hh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725753934; x=1757289934;
 h=date:from:to:subject:message-id;
 bh=GKbssbn2C6GqBF4xwARnq2BXhqQ/O2soAz6xFOf26ZQ=;
 b=XGADgWCAauCZcoHzRMZecMeJcZI+UsG/W5q8cxan2fpsFuiGBvNtDeXa
 x3y7re5/3eBqDJf3tSsDr+HqMzIKTmYfK8b5xy1XeXz/w6zFLV+WzZONs
 zQCVsVZejlV9yzZ6nHfYG/at83GCNMcqL9G9gxcEqgNeEn+72evduCgsp
 E7CL7HQ/aL8nNP818E7cKuvCQyCp3Z6qGF2Fyd9f8Yxj0y+1EyZ9ZKuhq
 RvXL9oADVBqtLROUbIh4mxWXqKiSBurBUPc1BqdL0LYLm3+O89kt69nO3
 22RxdAt41seClHDmUBJ67Jum5wqcuozPwFGtu8XsR5TAa0hMVNYN+Ohew
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XGADgWCA
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 13acc5c4cdbeccf3274cbbd4de2e2d316b8c4ce6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 13acc5c4cdbeccf3274cbbd4de2e2d316b8c4ce6  ice: subfunction activation and base devlink ops

elapsed time: 1769m

configs tested: 113
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-14.1.0
alpha                            allyesconfig   clang-20
alpha                               defconfig   gcc-14.1.0
arc                              allmodconfig   clang-20
arc                               allnoconfig   gcc-14.1.0
arc                              allyesconfig   clang-20
arc                                 defconfig   gcc-14.1.0
arm                              allmodconfig   clang-20
arm                               allnoconfig   gcc-14.1.0
arm                              allyesconfig   clang-20
arm                                 defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   gcc-14.1.0
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   gcc-14.1.0
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240907   clang-18
i386         buildonly-randconfig-002-20240907   gcc-12
i386         buildonly-randconfig-003-20240907   gcc-12
i386         buildonly-randconfig-004-20240907   clang-18
i386         buildonly-randconfig-005-20240907   clang-18
i386         buildonly-randconfig-006-20240907   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240907   clang-18
i386                  randconfig-002-20240907   clang-18
i386                  randconfig-003-20240907   clang-18
i386                  randconfig-004-20240907   gcc-12
i386                  randconfig-005-20240907   gcc-12
i386                  randconfig-006-20240907   gcc-12
i386                  randconfig-011-20240907   clang-18
i386                  randconfig-012-20240907   gcc-12
i386                  randconfig-013-20240907   clang-18
i386                  randconfig-014-20240907   clang-18
i386                  randconfig-015-20240907   clang-18
i386                  randconfig-016-20240907   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
openrisc                          allnoconfig   clang-20
openrisc                            defconfig   gcc-12
parisc                            allnoconfig   clang-20
parisc                              defconfig   gcc-12
parisc64                            defconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
riscv                             allnoconfig   clang-20
riscv                               defconfig   gcc-12
s390                             allmodconfig   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
um                               allmodconfig   clang-20
um                                allnoconfig   clang-20
um                               allyesconfig   clang-20
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240908   clang-18
x86_64       buildonly-randconfig-002-20240908   clang-18
x86_64       buildonly-randconfig-003-20240908   clang-18
x86_64       buildonly-randconfig-004-20240908   clang-18
x86_64       buildonly-randconfig-005-20240908   clang-18
x86_64       buildonly-randconfig-006-20240908   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240908   clang-18
x86_64                randconfig-002-20240908   clang-18
x86_64                randconfig-003-20240908   clang-18
x86_64                randconfig-004-20240908   clang-18
x86_64                randconfig-005-20240908   clang-18
x86_64                randconfig-006-20240908   clang-18
x86_64                randconfig-011-20240908   clang-18
x86_64                randconfig-012-20240908   clang-18
x86_64                randconfig-013-20240908   clang-18
x86_64                randconfig-014-20240908   clang-18
x86_64                randconfig-015-20240908   clang-18
x86_64                randconfig-016-20240908   clang-18
x86_64                randconfig-071-20240908   clang-18
x86_64                randconfig-072-20240908   clang-18
x86_64                randconfig-073-20240908   clang-18
x86_64                randconfig-074-20240908   clang-18
x86_64                randconfig-075-20240908   clang-18
x86_64                randconfig-076-20240908   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
