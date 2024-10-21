Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFC79A599C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 06:56:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC28E80C76;
	Mon, 21 Oct 2024 04:56:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 30KLEkJqpAbQ; Mon, 21 Oct 2024 04:56:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4A0580C6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729486606;
	bh=P5YkSHJHHR53cNQHAl4+Vzc6eYVp4YG5n9LSBP1MsQk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sn4khnshrGKvD4HDnVrtDtKzjBE2jiH+by2Cgn00dVxw0P/4Mh+v7kUYoiEZ3uvmR
	 qQd9qlIIwLelVZVOjf0ECYAfEmxrJJQj0yORb3pFBjIMZVyxohDIj8n/SEL5z7bcev
	 qTRRZQxCi1WASt9cjuIT/uLZ6isxwdUpuTozNA9otMEMD9R8OXCCkvgSGKjndZni8u
	 Hw1ftTbHT/KEQB1EWTVM4rGjg91kBCxSPD/SbHUSldNppxWIilw+EekYDIjXmpQBz7
	 tQbgNjVuRs6wsRa9Suq1VEN76SfNv8HsstRNvlWf8iWcNXqbUY0+TPsvd4LtoXO08P
	 d2zqTHvfpYvsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4A0580C6C;
	Mon, 21 Oct 2024 04:56:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A4CBD27D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 04:56:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 71DF280C67
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 04:56:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y0aFb8pS1b8F for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 04:56:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 56B4980C60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56B4980C60
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 56B4980C60
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 04:56:42 +0000 (UTC)
X-CSE-ConnectionGUID: sJhKl1sEQSaQ5Ssl6irmKQ==
X-CSE-MsgGUID: 8xT3yHNbSFm8uDRq4d6qcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11231"; a="40321905"
X-IronPort-AV: E=Sophos;i="6.11,219,1725346800"; d="scan'208";a="40321905"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2024 21:56:42 -0700
X-CSE-ConnectionGUID: GyUREeZNQMiHcBH9e/YUgA==
X-CSE-MsgGUID: lQFoCpHWRdOa6TZo7SRVCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,219,1725346800"; d="scan'208";a="79368683"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 20 Oct 2024 21:56:40 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t2kT8-000RCh-1b
 for intel-wired-lan@lists.osuosl.org; Mon, 21 Oct 2024 04:56:38 +0000
Date: Mon, 21 Oct 2024 12:55:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410211252.m7Q0Jf1f-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729486604; x=1761022604;
 h=date:from:to:subject:message-id;
 bh=dNpNO35RK54UCnBEvtKDVg/Bm83X5gtZXoLVfIiubH4=;
 b=TjZRnxB1I+puirhxZhGxiKAGU5V6jHWGjxVhGlph003BJoxuTDO6E2yA
 mZ54FK4eHv/0Oe/tH5lh29B6Azlsg0PCPoAgJR7/1bmtwAUpMPs+QM2Hp
 lziNyBQZfkRQ53iBQ5S6IVtxs9LZuW0fPXxAAVjAh2CQoMN574JIlJ+2b
 TlCHYJUBvzjV16mMqJgZiD48lcc2bRnkXiygPgxZG4AXSXg1UvkZlZCDH
 SIcQb2V+aFaGGVphMLFyRJuKNyzTrmVCRbgFcfcnoAleUEWC4cJlCcbzP
 3c8kANa1cutBo5GIVMKjdydBHOcf6cFK/6H+V8wbRjeXC1uZSH4dAl7Ra
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TjZRnxB1
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 efcec4898dcd215235ae427a48e7bbfdda7faa12
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
branch HEAD: efcec4898dcd215235ae427a48e7bbfdda7faa12  ixgbevf: Fix passing 0 to ERR_PTR in ixgbevf_run_xdp()

elapsed time: 3265m

configs tested: 66
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241021    gcc-13.2.0
arc                   randconfig-002-20241021    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                   randconfig-001-20241021    clang-20
arm                   randconfig-002-20241021    clang-20
arm                   randconfig-003-20241021    clang-20
arm                   randconfig-004-20241021    gcc-14.1.0
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241021    clang-20
csky                              allnoconfig    gcc-14.1.0
hexagon                           allnoconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241020    clang-18
i386        buildonly-randconfig-002-20241020    clang-18
i386        buildonly-randconfig-003-20241020    clang-18
i386        buildonly-randconfig-004-20241020    clang-18
i386        buildonly-randconfig-005-20241020    clang-18
i386        buildonly-randconfig-006-20241020    gcc-12
i386                                defconfig    clang-18
i386                  randconfig-001-20241020    gcc-12
i386                  randconfig-002-20241020    clang-18
i386                  randconfig-003-20241020    gcc-12
i386                  randconfig-004-20241020    gcc-12
i386                  randconfig-005-20241020    clang-18
i386                  randconfig-006-20241020    gcc-12
i386                  randconfig-011-20241020    gcc-12
i386                  randconfig-012-20241020    clang-18
i386                  randconfig-013-20241020    clang-18
i386                  randconfig-014-20241020    gcc-12
i386                  randconfig-015-20241020    gcc-12
i386                  randconfig-016-20241020    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
um                                allnoconfig    clang-17
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
