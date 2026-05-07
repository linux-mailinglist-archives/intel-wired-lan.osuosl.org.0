Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLt6FcWY/GkqRwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 15:51:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA324E99E8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 15:51:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D23F40F34;
	Thu,  7 May 2026 13:50:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gf9lFT5zdTyz; Thu,  7 May 2026 13:50:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A784B40F1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778161858;
	bh=UreCGn5tHrxZYMo/m0kSMMebxlnjuT47RA2HMou2Q/4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PPbRaUTKjgB+yXD+fASA0B/yCSlKzKXlYwSEdUyNwHU7/0gUpNwoeTDL1jJaEhRoU
	 xskyuCZOesvc6WDqX/AUw29+LxPK01cEEH6UGpI/ALWsqt8J6144xsUdWiqALgx/ob
	 tTL/OwIaVIkSxDpV+NGe5+yrPPOoqMxkAWzV8liyNCOQNyaK0ZrD0yTpQyq/vPAMKc
	 pwH+XsAYjBieNNug2THpOqhXTxPZzsIt6aN1VOHqrCnkrcPyw/7SjTSxtGNN05WfZR
	 kNo8eJ4UWuVBu2MAaDxgdhp3rvJF+QTJhmkjo09ssD1PAdz7A7JAzxLr9VwtiyLFyx
	 Faum8nZfUxq3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A784B40F1A;
	Thu,  7 May 2026 13:50:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A2FE11B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 13:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B30883BBD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 13:50:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gyKZjkcsyTrM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 13:50:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7F5B283BB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F5B283BB8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F5B283BB8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 13:50:56 +0000 (UTC)
X-CSE-ConnectionGUID: +hWC5VcEQlCxXEHyjoLwxw==
X-CSE-MsgGUID: Nllk3dmsS8uU0u6r1pNN3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79012209"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="79012209"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 06:50:56 -0700
X-CSE-ConnectionGUID: H/ayxiITQo6e0iEj0IHz4A==
X-CSE-MsgGUID: fyvOmlJ9QX61x7pyeHkAFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="235635633"
Received: from lkp-server01.sh.intel.com (HELO d6e19f2f5857) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 07 May 2026 06:50:54 -0700
Received: from kbuild by d6e19f2f5857 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wKz7s-0000000007D-0Diy;
 Thu, 07 May 2026 13:50:52 +0000
Date: Thu, 07 May 2026 21:50:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605072136.TvA5YIfs-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778161856; x=1809697856;
 h=date:from:to:subject:message-id;
 bh=513cWq+GkMqc/wNpDpSqRoHvR713tNkFOi3gXi6lYeA=;
 b=mK+Z6vPIo7mpPRTh0r2so2/1tlkI4QRlpHjWTUm/HIfOKglNSRMOCVbb
 QL649HI3fvyx0XaIH1/GW5R9gn5LcRB5dF/UuQ9lauxS3fYtv74f8WPov
 w4Kg4+0QLJwBggKs8ZuOUEWHiB9PuHPi6KB+UrTVDgz1KOsv0jIIa3t1D
 PD7nMhgIXVYKvOhAkFVZ6Qy8Mb1wepMIN7/umw8xwU7HckFzUt+Rgo38Y
 C7IQl+2MAXTjFlOikSi6z/cVYbp7ErcN+aHVumEkEd5lqDwZrwcHvWnCl
 J+I+2eDi+BF8V4OliZsxve71LNJ9Tzh9yITHYNZVriRR7zWU0SpG9BwDv
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mK+Z6vPI
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 105900fe246d11f61315d8c1e3b3a67d45687dc2
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
X-Rspamd-Queue-Id: CAA324E99E8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-0.999];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,intel.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 105900fe246d11f61315d8c1e3b3a67d45687dc2  ice: add support for transmitting unreadable frags

elapsed time: 730m

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
arm                     allnoconfig    clang-23
arm                    allyesconfig    gcc-15.2.0
arm64                  allmodconfig    clang-19
arm64                   allnoconfig    gcc-15.2.0
arm64       randconfig-001-20260507    clang-23
arm64       randconfig-002-20260507    gcc-13.4.0
arm64       randconfig-004-20260507    gcc-8.5.0
csky                   allmodconfig    gcc-15.2.0
csky                    allnoconfig    gcc-15.2.0
csky        randconfig-001-20260507    gcc-15.2.0
csky        randconfig-002-20260507    gcc-15.2.0
hexagon                allmodconfig    clang-17
hexagon                 allnoconfig    clang-23
hexagon     randconfig-001-20260507    clang-23
hexagon     randconfig-002-20260507    clang-23
i386                   allmodconfig    gcc-14
i386                    allnoconfig    gcc-14
i386                   allyesconfig    gcc-14
i386        randconfig-001-20260507    gcc-13
i386        randconfig-002-20260507    clang-20
i386        randconfig-003-20260507    gcc-14
i386        randconfig-004-20260507    gcc-14
i386        randconfig-005-20260507    gcc-14
i386        randconfig-006-20260507    gcc-14
i386        randconfig-007-20260507    clang-20
loongarch              allmodconfig    clang-19
loongarch               allnoconfig    clang-23
loongarch   randconfig-001-20260507    clang-23
loongarch   randconfig-002-20260507    clang-23
m68k                   allmodconfig    gcc-15.2.0
m68k                    allnoconfig    gcc-15.2.0
m68k                   allyesconfig    gcc-15.2.0
m68k                      defconfig    gcc-15.2.0
microblaze              allnoconfig    gcc-15.2.0
microblaze             allyesconfig    gcc-15.2.0
microblaze                defconfig    gcc-15.2.0
mips                   allmodconfig    gcc-15.2.0
mips                    allnoconfig    gcc-15.2.0
mips                   allyesconfig    gcc-15.2.0
nios2                  allmodconfig    gcc-11.5.0
nios2                   allnoconfig    gcc-11.5.0
nios2                     defconfig    gcc-11.5.0
nios2       randconfig-001-20260507    gcc-9.5.0
nios2       randconfig-002-20260507    gcc-10.5.0
openrisc               allmodconfig    gcc-15.2.0
openrisc                allnoconfig    gcc-15.2.0
openrisc                  defconfig    gcc-15.2.0
openrisc             virt_defconfig    gcc-15.2.0
parisc                 allmodconfig    gcc-15.2.0
parisc                  allnoconfig    gcc-15.2.0
parisc                 allyesconfig    gcc-15.2.0
parisc                    defconfig    gcc-15.2.0
parisc      randconfig-001-20260507    gcc-8.5.0
parisc      randconfig-002-20260507    gcc-11.5.0
parisc64                  defconfig    gcc-15.2.0
powerpc                allmodconfig    gcc-15.2.0
powerpc                 allnoconfig    gcc-15.2.0
powerpc     randconfig-001-20260507    clang-16
powerpc     randconfig-002-20260507    clang-23
powerpc64   randconfig-001-20260507    clang-23
powerpc64   randconfig-002-20260507    gcc-15.2.0
riscv                  allmodconfig    clang-23
riscv                   allnoconfig    gcc-15.2.0
riscv                  allyesconfig    clang-16
riscv                     defconfig    clang-23
s390                   allmodconfig    clang-18
s390                    allnoconfig    clang-23
s390                   allyesconfig    gcc-15.2.0
s390                      defconfig    clang-23
sh                     allmodconfig    gcc-15.2.0
sh                      allnoconfig    gcc-15.2.0
sh                     allyesconfig    gcc-15.2.0
sh                        defconfig    gcc-15.2.0
sparc                   allnoconfig    gcc-15.2.0
sparc                     defconfig    gcc-15.2.0
sparc64                allmodconfig    clang-23
sparc64                   defconfig    clang-20
um                     allmodconfig    clang-19
um                      allnoconfig    clang-23
um                     allyesconfig    gcc-14
um                        defconfig    clang-23
um                   i386_defconfig    gcc-14
um                 x86_64_defconfig    clang-23
x86_64                 allmodconfig    clang-20
x86_64                  allnoconfig    clang-20
x86_64                 allyesconfig    clang-20
x86_64                    defconfig    gcc-14
x86_64                rhel-9.4-rust    clang-20
xtensa                  allnoconfig    gcc-15.2.0
xtensa                 allyesconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
