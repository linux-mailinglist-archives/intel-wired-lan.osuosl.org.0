Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +A99IDfYt2mcWAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 11:15:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FED3297C2A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 11:15:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9821982923;
	Mon, 16 Mar 2026 10:15:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C6ZP-jNUX5EY; Mon, 16 Mar 2026 10:15:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D314082661
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773656115;
	bh=W8jsaaO63ICeN68YWdImuRj/cD8DfW07KMtG/qFWoOg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PmOYUXOOX1wtxlD/2WzKeeQi1r6zcPJtK22FwPRNjIkG0kKkzDdLg5ePXmjwKxIVo
	 EkNksaI8xJVVaujXwqEpemAMCJOh/7rMKjCIEd1NXOct53ycW4S/LUAsZqovYaWx7F
	 MRJ944YoSkH1/J4/tRTAtdGTB1ZqBhOR0G/wYrQc9PutmD9axB2xbr7mbYHOavkwgT
	 Jmcmn9IF9CrNIgzZpXLMQRZ9T9hpOn0u+HIzK4TpiVX0h7VxqyWj7h7e0H8tBojt8S
	 Ovu7jUnFoRP84dt269UaXOgiy9vS/eyKMqd4ZsxfBlqOAZByFDlTsin3RaWi5B8wlg
	 3X1cvlJurBpQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D314082661;
	Mon, 16 Mar 2026 10:15:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D69FB1B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 10:15:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC51E823F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 10:15:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WArGW5fATYxc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 10:15:13 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E06E28234D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E06E28234D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E06E28234D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 10:14:52 +0000 (UTC)
X-CSE-ConnectionGUID: N6evd13lTU2Dkpm1loME3Q==
X-CSE-MsgGUID: asBqgAylSmC0aaSb9UUpSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="78561424"
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="78561424"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 03:14:52 -0700
X-CSE-ConnectionGUID: S/LH1+wERxyJty2wJxeeqA==
X-CSE-MsgGUID: nQvOyRQDQ9exm0og3FBaUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="222071777"
Received: from lkp-server01.sh.intel.com (HELO 892944969b78) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 16 Mar 2026 03:14:51 -0700
Received: from kbuild by 892944969b78 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w24yG-000000000TZ-2cke;
 Mon, 16 Mar 2026 10:14:48 +0000
Date: Mon, 16 Mar 2026 18:14:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603161816.xev9PNON-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773656113; x=1805192113;
 h=date:from:to:subject:message-id;
 bh=13c7y4VFhaNTIFtPNTp1gLgjpNi+Q5+1vfV/5kT1HjM=;
 b=Qm6ljQX043pl+6uXowX16vwJR/AHhkW+L4axgE3fQzgaDcpmh8gl3EBJ
 AVB7Zjzj2v+oajNbabvY+rNTw+hJeaPDQc9hvJWCZcKhltOOC17+QrptG
 n4b3eUvKPAXQYOQZU4gvbcWH/YG4ivzCMy4dkVlerFa5EFR5P3tVVHXZP
 ffJ2PDAIFs4oxP7CjtlXfHf7TgD1F6/iTTMMMIsOnY1mBEnKoOmTy0qWV
 +jB0Aw93G4XzrcRWtwo0B0HQunqBIK25ObICv/XIqtv5llyTkv9SKuCAe
 1z+wr0gp1Elf50ghjud+PfFLbLJ8y/LcGfBfSt+K5CKf1xCsEBM+xz5VP
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Qm6ljQX0
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 4d78a4a4e2bcd55912ab5300e66ab70543098cd7
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5FED3297C2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 4d78a4a4e2bcd55912ab5300e66ab70543098cd7  ixd: add devlink support

elapsed time: 900m

configs tested: 79
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                    allnoconfig    gcc-15.2.0
alpha                   allyesconfig    gcc-15.2.0
arc                     allmodconfig    gcc-15.2.0
arc                      allnoconfig    gcc-15.2.0
arc                     allyesconfig    gcc-15.2.0
arm                      allnoconfig    clang-23
arm                     allyesconfig    gcc-15.2.0
arm64                   allmodconfig    clang-19
arm64                    allnoconfig    gcc-15.2.0
arm64        randconfig-001-20260316    gcc-11.5.0
arm64        randconfig-002-20260316    clang-23
arm64        randconfig-003-20260316    clang-23
arm64        randconfig-004-20260316    clang-19
csky                    allmodconfig    gcc-15.2.0
csky                     allnoconfig    gcc-15.2.0
csky         randconfig-001-20260316    gcc-15.2.0
csky         randconfig-002-20260316    gcc-14.3.0
hexagon                 allmodconfig    clang-17
hexagon                  allnoconfig    clang-23
i386                    allmodconfig    gcc-14
i386                     allnoconfig    gcc-14
i386                    allyesconfig    gcc-14
i386         randconfig-001-20260316    gcc-14
i386         randconfig-002-20260316    clang-20
i386         randconfig-003-20260316    gcc-14
i386         randconfig-004-20260316    gcc-14
i386         randconfig-005-20260316    clang-20
i386         randconfig-006-20260316    gcc-12
i386         randconfig-007-20260316    gcc-14
i386         randconfig-011-20260316    clang-20
i386         randconfig-012-20260316    gcc-14
i386         randconfig-013-20260316    clang-20
i386         randconfig-014-20260316    gcc-13
i386         randconfig-015-20260316    clang-20
loongarch               allmodconfig    clang-19
loongarch                allnoconfig    clang-23
m68k                    allmodconfig    gcc-15.2.0
m68k                     allnoconfig    gcc-15.2.0
m68k                    allyesconfig    gcc-15.2.0
microblaze               allnoconfig    gcc-15.2.0
microblaze              allyesconfig    gcc-15.2.0
mips                    allmodconfig    gcc-15.2.0
mips                     allnoconfig    gcc-15.2.0
mips                    allyesconfig    gcc-15.2.0
nios2                   allmodconfig    gcc-11.5.0
nios2                    allnoconfig    gcc-11.5.0
openrisc                allmodconfig    gcc-15.2.0
openrisc                 allnoconfig    gcc-15.2.0
parisc                  allmodconfig    gcc-15.2.0
parisc                   allnoconfig    gcc-15.2.0
parisc                  allyesconfig    gcc-15.2.0
parisc       randconfig-001-20260316    gcc-8.5.0
powerpc                 allmodconfig    gcc-15.2.0
powerpc                  allnoconfig    gcc-15.2.0
powerpc      randconfig-001-20260316    clang-23
powerpc      randconfig-002-20260316    clang-23
riscv                   allmodconfig    clang-23
riscv                    allnoconfig    gcc-15.2.0
riscv                   allyesconfig    clang-16
riscv        randconfig-001-20260316    gcc-15.2.0
s390                    allmodconfig    clang-18
s390                     allnoconfig    clang-23
s390                    allyesconfig    gcc-15.2.0
sh                      allmodconfig    gcc-15.2.0
sh                       allnoconfig    gcc-15.2.0
sh                      allyesconfig    gcc-15.2.0
sh          rts7751r2dplus_defconfig    gcc-15.2.0
sparc                    allnoconfig    gcc-15.2.0
sparc64                 allmodconfig    clang-23
sparc64      randconfig-001-20260316    gcc-8.5.0
um                      allmodconfig    clang-19
um                       allnoconfig    clang-23
um                      allyesconfig    gcc-14
x86_64                  allmodconfig    clang-20
x86_64                   allnoconfig    clang-20
x86_64                  allyesconfig    clang-20
x86_64                 rhel-9.4-rust    clang-20
xtensa                   allnoconfig    gcc-15.2.0
xtensa                  allyesconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
