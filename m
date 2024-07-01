Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9717891D66D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 05:04:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5E1F608B1;
	Mon,  1 Jul 2024 03:04:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QdBhNaHHcN5Q; Mon,  1 Jul 2024 03:04:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82966608A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719803067;
	bh=auYjw2B5lAvAxLX1i5LJNzOloWu3QyzwA17v0fhr5mA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vPrYjhfr28AJhfOdzxm1BdztrZTd/q5wNf67J8Vq1XG009C7YP759E2186PJin9h3
	 aCHyXmAk1bg4HGaMbywvY0IbQiUQVb3ZDqb2KnjL8ozmlm6vDcvt30Edp0SVBoDW0r
	 D5HK3qOkJXo7rP/vnNDfp8zuMHLN2d8UlIGkn4tlHw71JFFy62UgvOJT+d0fyPxqjM
	 pUjoFn5/G+d7ah5xeoBw7xs0l6hZ9PjspWguksSfThkG8ZeYEX1jy6ytwVdQhyBdKY
	 E8tCYKe5yrTiu7L70RMnV1FkoFZeW5jABa0/P7fbnyEdYA4h+Hx1zjWxqEI7vLSZ28
	 VhD8gl/IL8Ijw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82966608A4;
	Mon,  1 Jul 2024 03:04:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C026C1BF341
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 03:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ACC5B608A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 03:04:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ytm9y_IdQmw8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 03:04:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B0834607D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0834607D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0834607D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 03:04:24 +0000 (UTC)
X-CSE-ConnectionGUID: AxXjCkBLRb2ZBr1Or3zZLg==
X-CSE-MsgGUID: zUuJSgiHTrydbhhqBsgzOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11119"; a="12330656"
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; d="scan'208";a="12330656"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2024 20:04:24 -0700
X-CSE-ConnectionGUID: vpFGFKUORz23zqCvyvSJKw==
X-CSE-MsgGUID: lHvTVk1SR4G0hx1/Sxuj8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; d="scan'208";a="76544236"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 30 Jun 2024 20:04:23 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sO7L2-000MMU-2s
 for intel-wired-lan@lists.osuosl.org; Mon, 01 Jul 2024 03:04:20 +0000
Date: Mon, 01 Jul 2024 11:04:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407011101.iQuc40eN-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719803065; x=1751339065;
 h=date:from:to:subject:message-id;
 bh=NwrZSxB/PLvgf80tJCQYpwm/UyN2lh40Eb0yxQ9YVfc=;
 b=YPUyTCZmNjRpgOmz0xtQmW67cQ1psc54pUGNq2pZgyClan7/5c6MQFEh
 cH21Px/s9H1RFbd22RPvHX9a5CRpYvhaXlw/phJ+0cSGu9Q7LLJ3lWh7b
 NooabrPFLI3s2GIMi78JdqJs1eHwVVhu7yUkQaZOlXDwfGqSebNsJVOhH
 wl3JgjAf8DlJrO8gvZM+W1E7pOVlhlKxlJdCATnUfkEwL2Dhst26+cP5K
 sXlU++B29rKSLTdEZy24wawmqpwSa35uiZjkKlkZFkktCKTanvlAhCo19
 EGaRyHb6RgxBZk74ZwbU82kCjE7CvHmGu6RdaZt9lAqwmfXidE/uLcUYY
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YPUyTCZm
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 0f0023c649c7bc50543fbe6e1801eb6357b8bd63
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
branch HEAD: 0f0023c649c7bc50543fbe6e1801eb6357b8bd63  ice: do not init struct ice_adapter more times than needed

elapsed time: 3219m

configs tested: 69
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                   randconfig-001-20240701   gcc-13.2.0
arc                   randconfig-002-20240701   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                   randconfig-001-20240701   gcc-13.2.0
arm                   randconfig-002-20240701   gcc-13.2.0
arm                   randconfig-003-20240701   clang-19
arm                   randconfig-004-20240701   clang-15
arm64                             allnoconfig   gcc-13.2.0
arm64                 randconfig-001-20240701   gcc-13.2.0
arm64                 randconfig-003-20240701   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
hexagon                           allnoconfig   clang-19
i386         buildonly-randconfig-001-20240629   gcc-7
i386         buildonly-randconfig-001-20240630   clang-18
i386         buildonly-randconfig-002-20240629   clang-18
i386         buildonly-randconfig-002-20240630   clang-18
i386         buildonly-randconfig-003-20240629   clang-18
i386         buildonly-randconfig-003-20240630   clang-18
i386         buildonly-randconfig-004-20240629   gcc-13
i386         buildonly-randconfig-004-20240630   clang-18
i386         buildonly-randconfig-005-20240629   gcc-13
i386         buildonly-randconfig-005-20240630   clang-18
i386         buildonly-randconfig-006-20240629   clang-18
i386         buildonly-randconfig-006-20240630   clang-18
i386                  randconfig-001-20240629   clang-18
i386                  randconfig-001-20240630   clang-18
i386                  randconfig-002-20240629   gcc-9
i386                  randconfig-002-20240630   clang-18
i386                  randconfig-003-20240629   clang-18
i386                  randconfig-003-20240630   clang-18
i386                  randconfig-004-20240629   gcc-9
i386                  randconfig-004-20240630   clang-18
i386                  randconfig-005-20240629   gcc-13
i386                  randconfig-005-20240630   clang-18
i386                  randconfig-006-20240629   clang-18
i386                  randconfig-006-20240630   clang-18
i386                  randconfig-011-20240629   gcc-13
i386                  randconfig-011-20240630   clang-18
i386                  randconfig-012-20240629   clang-18
i386                  randconfig-012-20240630   clang-18
i386                  randconfig-013-20240629   gcc-12
i386                  randconfig-013-20240630   clang-18
i386                  randconfig-014-20240629   gcc-13
i386                  randconfig-014-20240630   clang-18
i386                  randconfig-015-20240629   gcc-12
i386                  randconfig-015-20240630   clang-18
i386                  randconfig-016-20240629   gcc-13
i386                  randconfig-016-20240630   clang-18
loongarch                         allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-13.2.0
x86_64       buildonly-randconfig-001-20240701   gcc-11
x86_64       buildonly-randconfig-002-20240701   gcc-13
x86_64       buildonly-randconfig-003-20240701   clang-18
x86_64       buildonly-randconfig-004-20240701   clang-18
xtensa                            allnoconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
