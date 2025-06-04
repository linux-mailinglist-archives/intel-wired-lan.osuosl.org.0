Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C262AACE41F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jun 2025 20:02:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DC6781EEC;
	Wed,  4 Jun 2025 18:02:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oIrWQDtY4DnV; Wed,  4 Jun 2025 18:02:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57FC581F20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749060144;
	bh=SsbJlG94oU0yxW0+zi58fMT0am5x7ehFmkVjubLMamw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ql7qXKvj5myxSFlTD623HdxpdTTZshV4P8e7aw2JmV1OC8MDitlTVSqzbU1xSGQfk
	 eZabCSIMCwdqkSpRlh6MrsUYuTNiyqY3HElW1u9rRwIp9DMsINQ3pSfiUStIc9F+ru
	 N6fqBz9njeTLrWzVApbJ7w9tmsgLrJt4krmitKuzdPNGXWvXsAZ7x6sZO3X71use1p
	 qpXZ3NXN5ZqcK6w4I/kJeBPK3qlEty1K74C1mEXXbATHkg+1T+zl1lPs0CGPEON3Ho
	 PXySYGS0mNdZ2K49214HIQ4BlU3SWxZ68Ri8m2OtuZIsYurz+Le8Z2nhCMhQWU+6n6
	 3ZQfwxrC0VVrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57FC581F20;
	Wed,  4 Jun 2025 18:02:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C03381A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 18:02:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A943F81E49
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 18:02:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iYsB43eb1AqQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jun 2025 18:02:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C0BAE81E25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0BAE81E25
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C0BAE81E25
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 18:02:21 +0000 (UTC)
X-CSE-ConnectionGUID: GVxsQulnRrKQ8Z02jO2O3w==
X-CSE-MsgGUID: DUB44/EATZOsatS3Nky/Ng==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="76555653"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="76555653"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 11:02:21 -0700
X-CSE-ConnectionGUID: XAz/Thh4SnaRGoJUVfAcnQ==
X-CSE-MsgGUID: 6Zb+sdNYROmzIKch/eNfbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="150291142"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 04 Jun 2025 11:02:20 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uMsRN-0003NP-25
 for intel-wired-lan@lists.osuosl.org; Wed, 04 Jun 2025 18:02:17 +0000
Date: Thu, 05 Jun 2025 02:01:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506050245.GZnBDf89-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749060142; x=1780596142;
 h=date:from:to:subject:message-id;
 bh=GmAsMM7e4kUHMtqsYNXAEtPqIQrqg2LYWU2YeMX1mxc=;
 b=YQsHQBzusjdZLkA2HJlOom6X6kF2ZZIMAsii8ZsA12ANDjHL2OtwQdBX
 b6RyK+87gR121dpuFN6RnoKc/56n/u224hvlh5u4ANmHSd+83AVfap9gB
 4S0BewWcU2rz/qKjxbw7l1XQPCmz2/9lN8YRWBcG4IzZZjjD4yOhWSQ0T
 TINxN3VWDpBOPherC/s/ZugdITaVYMH15MyymW/i5Ky2HcBHymi2XeVhB
 ug7D1fAoOY0xpKQ5Z2XXrTBSAaIwgYoSeSoD5MGLfxgpRyZflI3EoQxK/
 dj0qd5u2NxW+xd9aMywoJzlqDdSk68jTl/Gwpshyfj9pz8CVb72yEYPAO
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YQsHQBzu
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 120f28a6f314fef7f282c99f196923fe44081cad
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 120f28a6f314fef7f282c99f196923fe44081cad  iavf: get rid of the crit lock

elapsed time: 1443m

configs tested: 34
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha        allyesconfig    gcc-15.1.0
arc          allmodconfig    gcc-15.1.0
arc          allyesconfig    gcc-15.1.0
arm          allmodconfig    gcc-15.1.0
arm          allyesconfig    gcc-15.1.0
arm64        allmodconfig    clang-19
hexagon      allmodconfig    clang-17
hexagon      allyesconfig    clang-21
i386         allmodconfig    gcc-12
i386          allnoconfig    gcc-12
i386         allyesconfig    gcc-12
i386            defconfig    clang-20
m68k         allmodconfig    gcc-15.1.0
m68k         allyesconfig    gcc-15.1.0
microblaze   allmodconfig    gcc-15.1.0
microblaze   allyesconfig    gcc-15.1.0
openrisc     allyesconfig    gcc-15.1.0
parisc       allmodconfig    gcc-15.1.0
parisc       allyesconfig    gcc-15.1.0
powerpc      allmodconfig    gcc-15.1.0
powerpc      allyesconfig    clang-21
riscv        allmodconfig    clang-21
riscv        allyesconfig    clang-16
s390         allmodconfig    clang-18
s390         allyesconfig    gcc-15.1.0
sh           allmodconfig    gcc-15.1.0
sh           allyesconfig    gcc-15.1.0
sparc        allmodconfig    gcc-15.1.0
um           allmodconfig    clang-19
um           allyesconfig    gcc-12
x86_64        allnoconfig    clang-20
x86_64       allyesconfig    clang-20
x86_64          defconfig    gcc-11
x86_64      rhel-9.4-rust    clang-18

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
