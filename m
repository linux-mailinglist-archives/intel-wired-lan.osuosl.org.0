Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDW+EDZsqGn9uQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 18:30:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0FF2052B1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 18:30:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1437D81D3A;
	Wed,  4 Mar 2026 17:30:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XaiOIpM8_zLQ; Wed,  4 Mar 2026 17:30:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4429781D3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772645427;
	bh=1Vfkx3vsFET6wRNN3D4B1c1B99HiZGd0hEGtPg7tZQg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Rz7ovo3qomdpDE/zCKq2KWHqWTxVK9frW6HjzGC+wuuT4T9S/tEHobsjOuSpMiUyv
	 RgqxBSLaOUB09jrweisrvKxkE/awY1HTJS3WnULv/31u0c4VWZ0EwBELfPmy7Ay07w
	 q+wyOjiL+EfwVnlBKEY5PbW945X1Ntoiv2HVL7WamQgjjFeZCHosNM8W8MGEVv6e3p
	 2kT17s78XlWMFCXhxwLsfy4zG1BSht9lc3ZyO+KqtUobV7jrjaIm31R6YMFQ+UZ4ZM
	 MFaOuUt1mpFUc4lVetbQNPJxxbtoiFpgij//DZVrCTG7lna2iTQZ6aPNEI0oYj13X4
	 asw2sCwAj2VVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4429781D3D;
	Wed,  4 Mar 2026 17:30:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 01D6DF6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 17:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC01160A92
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 17:30:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NJDgTFMNV30d for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 17:30:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 14ADF60A43
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14ADF60A43
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14ADF60A43
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 17:30:16 +0000 (UTC)
X-CSE-ConnectionGUID: vHAQ0M9tS3iYUN1DiUcRNQ==
X-CSE-MsgGUID: HDLl5ASrS+ehgNAHm0Pl+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73622253"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="73622253"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 09:30:16 -0800
X-CSE-ConnectionGUID: 7ydlL0y9RDa0WgmWaPVHIw==
X-CSE-MsgGUID: qAcBsdsXTbazWkEJSPCxjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="245028693"
Received: from lkp-server01.sh.intel.com (HELO f27a57aa7a36) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 04 Mar 2026 09:30:15 -0800
Received: from kbuild by f27a57aa7a36 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vxq32-000000004Et-1fBv;
 Wed, 04 Mar 2026 17:30:12 +0000
Date: Thu, 05 Mar 2026 01:29:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603050108.FuCGpvE7-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772645421; x=1804181421;
 h=date:from:to:subject:message-id;
 bh=heKuh2HsYL2emqDz8ogaUDUBelu8fKpZS/n8JCybMak=;
 b=AonwixD5G4vgdOzNcle5Ks15iuDt/WAniX8trifXFwpUctH96/c8e8l1
 ED1/gd34DjvxGXUCW1ft3YkZgZTiaxXJRaVAcJ1U99FU90nKXqBM59DtA
 VSQYWx8QQ0FJbM6fPOu23b+J0zc67CiyKa/XkQn7k1gVyPdRG4OJZXhf5
 QZKBTv7tbeMImx8BonvE4zP6/ke6Rr0Qu8u+PT6rg8q5C3aMT/kBJI9Oy
 5cNC/qlOYRcmH9/QV/BPOufDQ8qATcJy6bKHTLCb+FSUZOVSGDorik+Bw
 QXLZvULTRAldb107qFQGxnGBK2wkBi75u5kDV+gmplrPiXYo99mlDwWvT
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AonwixD5
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 246c5495c69fae1ec96531d79106c946ea904312
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
X-Rspamd-Queue-Id: AD0FF2052B1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid];
	NEURAL_HAM(-0.00)[-0.999];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 246c5495c69fae1ec96531d79106c946ea904312  ixgbe: refactor: use DECLARE_BITMAP for ring state field

elapsed time: 1462m

configs tested: 95
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                   allnoconfig    gcc-15.2.0
alpha                  allyesconfig    gcc-15.2.0
arc                    allmodconfig    gcc-15.2.0
arc                     allnoconfig    gcc-15.2.0
arc                    allyesconfig    gcc-15.2.0
arc         randconfig-001-20260304    clang-23
arc         randconfig-002-20260304    clang-23
arm                     allnoconfig    clang-23
arm                     allnoconfig    gcc-15.2.0
arm                    allyesconfig    gcc-15.2.0
arm         randconfig-001-20260304    clang-23
arm         randconfig-002-20260304    clang-23
arm         randconfig-003-20260304    clang-23
arm         randconfig-004-20260304    clang-23
arm64                  allmodconfig    clang-19
arm64                   allnoconfig    gcc-15.2.0
csky                   allmodconfig    gcc-15.2.0
csky                    allnoconfig    gcc-15.2.0
hexagon                allmodconfig    clang-17
hexagon                 allnoconfig    clang-23
hexagon                 allnoconfig    gcc-15.2.0
i386                   allmodconfig    clang-20
i386                   allmodconfig    gcc-14
i386                    allnoconfig    gcc-14
i386                    allnoconfig    gcc-15.2.0
i386                   allyesconfig    clang-20
i386                   allyesconfig    gcc-14
i386        randconfig-011-20260304    gcc-14
i386        randconfig-012-20260304    gcc-14
i386        randconfig-013-20260304    gcc-14
i386        randconfig-014-20260304    gcc-14
i386        randconfig-015-20260304    gcc-14
i386        randconfig-016-20260304    gcc-14
i386        randconfig-017-20260304    gcc-14
loongarch               allnoconfig    clang-23
loongarch               allnoconfig    gcc-15.2.0
m68k                   allmodconfig    gcc-15.2.0
m68k                    allnoconfig    gcc-15.2.0
m68k                   allyesconfig    gcc-15.2.0
microblaze              allnoconfig    gcc-15.2.0
microblaze             allyesconfig    gcc-15.2.0
mips                   allmodconfig    gcc-15.2.0
mips                    allnoconfig    gcc-15.2.0
mips                   allyesconfig    gcc-15.2.0
nios2                  allmodconfig    gcc-11.5.0
nios2                   allnoconfig    clang-23
nios2                   allnoconfig    gcc-11.5.0
openrisc               allmodconfig    gcc-15.2.0
openrisc                allnoconfig    clang-23
openrisc                allnoconfig    gcc-15.2.0
parisc                 allmodconfig    gcc-15.2.0
parisc                  allnoconfig    clang-23
parisc                  allnoconfig    gcc-15.2.0
parisc                 allyesconfig    clang-19
parisc                 allyesconfig    gcc-15.2.0
powerpc                allmodconfig    gcc-15.2.0
powerpc                 allnoconfig    clang-23
powerpc                 allnoconfig    gcc-15.2.0
riscv                  allmodconfig    clang-23
riscv                   allnoconfig    clang-23
riscv                   allnoconfig    gcc-15.2.0
riscv                  allyesconfig    clang-16
s390                   allmodconfig    clang-18
s390                   allmodconfig    clang-19
s390                    allnoconfig    clang-23
s390                   allyesconfig    gcc-15.2.0
sh                     allmodconfig    gcc-15.2.0
sh                      allnoconfig    clang-23
sh                      allnoconfig    gcc-15.2.0
sh                     allyesconfig    clang-19
sh                     allyesconfig    gcc-15.2.0
sh                        defconfig    gcc-14
sh           sh7710voipgw_defconfig    gcc-15.2.0
sparc                   allnoconfig    clang-23
sparc                   allnoconfig    gcc-15.2.0
sparc64                allmodconfig    clang-23
sparc64                   defconfig    gcc-14
um                     allmodconfig    clang-19
um                      allnoconfig    clang-23
um                     allyesconfig    gcc-14
um                        defconfig    gcc-14
um                   i386_defconfig    gcc-14
um                 x86_64_defconfig    gcc-14
x86_64                 allmodconfig    clang-20
x86_64                  allnoconfig    clang-20
x86_64                  allnoconfig    clang-23
x86_64                 allyesconfig    clang-20
x86_64                    defconfig    gcc-14
x86_64                        kexec    clang-20
x86_64                     rhel-9.4    clang-20
x86_64                rhel-9.4-func    clang-20
x86_64          rhel-9.4-kselftests    clang-20
x86_64                rhel-9.4-rust    clang-20
xtensa                  allnoconfig    clang-23
xtensa                  allnoconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
