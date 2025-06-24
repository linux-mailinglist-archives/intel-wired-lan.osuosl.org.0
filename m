Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7453AAE6D52
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 19:10:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5F1E40B27;
	Tue, 24 Jun 2025 17:10:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FEc0-WWjaWwA; Tue, 24 Jun 2025 17:10:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C2ED40B4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750785050;
	bh=FQlMHy5s6KnfTznPTPc6zh7xRloxyEwesh2u8mRZZTs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CchJM2/tF0oF4kbcSY9lQbVznfuDSGdxGiggyzIT/EJV0sV2XhONKu7l5OdfFi48t
	 a5qLJROl6HZHl7mNdOZbeRZS6E6kqAq9hOgGGFL84zw9WikvVHbyz/+eUgJ/WMQ0ub
	 3hsBpv1ziNsnePWRdpjPRkG+788UO13BQyLRWY63JrH2AJhbps1PxL1Y8idcj+XVj1
	 448WRW6Ke5FTtuhGxJD1YGx1YgxXlB6oRkQIWjEmUX9Rl4KJ3vmRz/v+jjAbibc9PC
	 dZq/E2a0U5j8lIIyYxUepscQtH+9VcIpDdXteUVfokOsV3huVkw4J5DgcG5rr7o1mH
	 knd6zKWrwcTJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C2ED40B4F;
	Tue, 24 Jun 2025 17:10:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5963012C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 17:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B51F40A11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 17:10:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DKwMT6b1Vcbh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 17:10:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EE91F4016F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE91F4016F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE91F4016F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 17:10:46 +0000 (UTC)
X-CSE-ConnectionGUID: kWGYSAU5QUGTcCC4REg1hw==
X-CSE-MsgGUID: EpZFJcJCTVaToAGarg3ovA==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="56822112"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="56822112"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 10:10:47 -0700
X-CSE-ConnectionGUID: ilvNcradTZGJyh2E8PQAKg==
X-CSE-MsgGUID: cbfbwyAqSCOBLf3UZTdXKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="189151942"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 24 Jun 2025 10:10:46 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uU7AR-000SMA-0F
 for intel-wired-lan@lists.osuosl.org; Tue, 24 Jun 2025 17:10:43 +0000
Date: Wed, 25 Jun 2025 01:09:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506250138.mp1KBpuh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750785047; x=1782321047;
 h=date:from:to:subject:message-id;
 bh=m+O/8ucDFr1wRE9xTWDZbLh1WfuUGjdeTojJ85OuPgY=;
 b=WFnfdlu3iA/xPQtjTCoHygEDcbqn3Xvmxs83o5WXQZ0ioOiy3NoI3Qjd
 OOGI05IeHAIcVfpG2s8ppILX8u2adzwWDlEcH4o0NoD6L9OfqWREK+cTV
 b796mmumagy5FLOZsuZJvC3oWVVDvV5xgPZiisb2KsL5L0/9p8pQdgo/M
 tF8t8W1p2tutC5LTDypTIHuLnsY0K98FyEHMzSO76wb7tTZFVtwRsmO7j
 jYvm2FBfYEJh4ettjwDbbQbbHsdy7XwJeLSqWmhfbhgKA696XyyWbLNwI
 dzjtxdY9IMvWr+2+pKmbpSm2K7PPloCH8sWwf7i7KCbryXXSvdEmbyhlV
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WFnfdlu3
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 333aee041bbe7debf5360bc4bac7f65557c5605b
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
branch HEAD: 333aee041bbe7debf5360bc4bac7f65557c5605b  ixgbe: initialize aci lock before it's used

elapsed time: 1446m

configs tested: 48
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20250624    gcc-12.4.0
arc                   randconfig-002-20250624    gcc-8.5.0
arm                               allnoconfig    clang-21
arm                   randconfig-001-20250624    gcc-13.3.0
arm                   randconfig-002-20250624    gcc-8.5.0
arm                   randconfig-003-20250624    gcc-12.4.0
arm                   randconfig-004-20250624    clang-17
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250624    clang-21
arm64                 randconfig-002-20250624    gcc-10.5.0
arm64                 randconfig-003-20250624    clang-21
arm64                 randconfig-004-20250624    clang-21
csky                              allnoconfig    gcc-15.1.0
hexagon                           allnoconfig    clang-21
i386        buildonly-randconfig-001-20250624    clang-20
i386        buildonly-randconfig-002-20250624    gcc-12
i386        buildonly-randconfig-003-20250624    clang-20
i386        buildonly-randconfig-004-20250624    clang-20
i386        buildonly-randconfig-005-20250624    clang-20
i386        buildonly-randconfig-006-20250624    gcc-12
loongarch                         allnoconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
um                                allnoconfig    clang-21
x86_64      buildonly-randconfig-001-20250624    clang-20
x86_64      buildonly-randconfig-002-20250624    gcc-12
x86_64      buildonly-randconfig-003-20250624    clang-20
x86_64      buildonly-randconfig-004-20250624    clang-20
x86_64      buildonly-randconfig-005-20250624    clang-20
x86_64      buildonly-randconfig-006-20250624    gcc-12
xtensa                            allnoconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
