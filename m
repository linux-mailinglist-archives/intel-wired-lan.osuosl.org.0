Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFELJoOpA2oO8wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 00:28:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2370752AD74
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 00:28:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2146D60EBE;
	Tue, 12 May 2026 22:28:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7ccVogfOmU05; Tue, 12 May 2026 22:28:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6948060EBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778624894;
	bh=YJEwQoLE8jUn3G8MGRdiXVYFfyvMeTQWyR5wAgXG/8g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NJSsDhE3tfOZljaUUXAOg9yFGAl+ZZzuDF1xYENqlEM4Mrwv2FnyzufQzVSgeiViN
	 bYOlCpUxLG6E8srB1FsSEtTsWDn5zBTgeiEEBQ70P6F+H/I+og2FnWYqvkiJ7id8w2
	 OYzSW+D+UNk56FVeSoFe6TWmnSgzw5s5YTL3cmqsfMKefSmzRvkzZpR/vN1bqYei0C
	 9QbrP43gI/26F0zZLM8xRPcAPi43bClINo8vg1KFmLRAzjHXWVxiR5yXz+54rmzHS1
	 CLzmSGBFK/A4NKpJ1fksppZY5eyR+6EHPxRMD03ppVTJ8zbh282563GtNdtSNxB+WY
	 ThtLy1ITMlEZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6948060EBC;
	Tue, 12 May 2026 22:28:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 90935270
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 22:28:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E0EC8109F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 22:28:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8m3oIfo3oFZu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 22:28:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CA9F08100F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA9F08100F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA9F08100F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 22:28:10 +0000 (UTC)
X-CSE-ConnectionGUID: H5+ci+YuSaGfuM6p7hR5ZQ==
X-CSE-MsgGUID: l9vCkwtrRgq6Z4aOqTxJhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="91007025"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="91007025"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 15:28:10 -0700
X-CSE-ConnectionGUID: mbpZqIWUQpe0dtETfz9cFQ==
X-CSE-MsgGUID: 2e9UNuhIRsyBqzHros515g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="238150468"
Received: from lkp-server01.sh.intel.com (HELO dca79079c3eb) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 12 May 2026 15:28:09 -0700
Received: from kbuild by dca79079c3eb with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wMvaB-000000002uL-1unG;
 Tue, 12 May 2026 22:28:07 +0000
Date: Wed, 13 May 2026 06:27:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605130625.lWlvlJZq-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778624892; x=1810160892;
 h=date:from:to:subject:message-id;
 bh=qDUsVIM35ghF9OKnk3o8SjNqyr638ZwrxFOiLHlQOgQ=;
 b=hSWDgHK/6TYoyXQQrpjXsjnuw6MgtPZpTcY1OK2TGnr7F2jt3GkGC/35
 nDMxbRNmoEjCkkvJtEJr9/eLuBYoWuhLmv7u1TGIosp6zMG5hRsfwpPJI
 VaIhbxrS6JKWQQBR5vVy7RUsZiAjqoEcwK1gllLDY1BAwLwv7QN89eDjG
 KjkNj+1u93qX5dO34ahnb6N7vooLCGvtmcaca87wE7BSBooWCz8tZY0nj
 poF/kvLGbNV8QGfnpoJTeF5aUdwwFKvBlx9STQDtW7W1LsetmFHwpLFI+
 Ec3Rx+slbvGbKbCyhVkYSws8UAP09GcH3HKQP/UJ/rdjxAliFINplGDOm
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hSWDgHK/
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 660c873a12637da1431052939d919e0e642513ab
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
X-Rspamd-Queue-Id: 2370752AD74
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [8.89 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	R_SPF_ALLOW(0.00)[+mx];
	NEURAL_SPAM(0.00)[0.782];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: add header
X-Spam: Yes

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 660c873a12637da1431052939d919e0e642513ab  igc: add support for forcing link speed without autonegotiation

elapsed time: 1007m

configs tested: 74
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                   allnoconfig    gcc-15.2.0
alpha                  allyesconfig    gcc-15.2.0
alpha                     defconfig    gcc-15.2.0
arc                     allnoconfig    gcc-15.2.0
arc                    allyesconfig    gcc-15.2.0
arc                       defconfig    gcc-15.2.0
arm                     allnoconfig    clang-23
arm                       defconfig    clang-23
arm64                  allmodconfig    clang-19
arm64                   allnoconfig    gcc-15.2.0
arm64                     defconfig    gcc-15.2.0
arm64                randconfig-001    gcc-8.5.0
arm64       randconfig-001-20260512    gcc-12.5.0
arm64                randconfig-002    gcc-14.3.0
arm64       randconfig-002-20260512    gcc-8.5.0
arm64                randconfig-003    clang-23
arm64       randconfig-003-20260512    gcc-14.3.0
arm64                randconfig-004    clang-23
arm64       randconfig-004-20260512    clang-23
csky                    allnoconfig    gcc-15.2.0
csky                      defconfig    gcc-15.2.0
csky                 randconfig-001    gcc-10.5.0
csky        randconfig-001-20260512    gcc-11.5.0
csky                 randconfig-002    gcc-10.5.0
csky        randconfig-002-20260512    gcc-12.5.0
hexagon                allmodconfig    clang-17
hexagon                 allnoconfig    clang-23
hexagon                   defconfig    clang-23
i386                   allmodconfig    gcc-14
i386                    allnoconfig    gcc-14
i386                   allyesconfig    gcc-14
i386                      defconfig    clang-20
loongarch              allmodconfig    clang-19
loongarch               allnoconfig    clang-23
loongarch                 defconfig    clang-19
m68k                    allnoconfig    gcc-15.2.0
m68k                      defconfig    gcc-15.2.0
microblaze              allnoconfig    gcc-15.2.0
microblaze                defconfig    gcc-15.2.0
mips                   allmodconfig    gcc-15.2.0
mips                    allnoconfig    gcc-15.2.0
nios2                  allmodconfig    gcc-11.5.0
nios2                   allnoconfig    gcc-11.5.0
nios2                     defconfig    gcc-11.5.0
openrisc               allmodconfig    gcc-15.2.0
openrisc                allnoconfig    gcc-15.2.0
openrisc                  defconfig    gcc-15.2.0
parisc                 allmodconfig    gcc-15.2.0
parisc                  allnoconfig    gcc-15.2.0
parisc                 allyesconfig    gcc-15.2.0
parisc                    defconfig    gcc-15.2.0
parisc64                  defconfig    gcc-15.2.0
powerpc                allmodconfig    gcc-15.2.0
powerpc                 allnoconfig    gcc-15.2.0
riscv                  allmodconfig    clang-23
riscv                   allnoconfig    gcc-15.2.0
riscv                     defconfig    clang-23
s390                    allnoconfig    clang-23
s390                   allyesconfig    gcc-15.2.0
s390                      defconfig    clang-23
sh                     allmodconfig    gcc-15.2.0
sh                      allnoconfig    gcc-15.2.0
sh                     allyesconfig    gcc-15.2.0
sparc                   allnoconfig    gcc-15.2.0
sparc                     defconfig    gcc-15.2.0
sparc64                allmodconfig    clang-23
um                     allmodconfig    clang-19
um                      allnoconfig    clang-23
um                     allyesconfig    gcc-14
x86_64                 allmodconfig    clang-20
x86_64                  allnoconfig    clang-20
x86_64                 allyesconfig    clang-20
x86_64                rhel-9.4-rust    clang-20
xtensa                  allnoconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
