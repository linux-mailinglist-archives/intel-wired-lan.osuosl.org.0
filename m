Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ao/5KZR132lWTQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 13:25:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BEF403BB1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 13:25:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1210140849;
	Wed, 15 Apr 2026 11:25:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Po3O_8JjCKE4; Wed, 15 Apr 2026 11:25:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4713A406BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776252303;
	bh=iFqgxHzKGuiYqCS0bSi5CKyFjy58lVe5/2IVoOBIOJc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=01M5BaZqxMs1s/mVAvMuutXKd1CBzKHXi9wGg4Y40a2R05PS2TrKN49tUxG38Acwa
	 CgcgEX2sOP3zjuwLd9jyB7jRJriF+aHmF8CAqe1GkiadF4qb+pDAZGmo0xU48Bc1h7
	 q6Z/UT0aevHTf5+CItfD6mLu3+T+6yaoo4yMKwOTXT3AfCdAUlpbA/8NAZE8NAVX+C
	 NpjwWSy17Iv4ZiqBRdTDADOGs/f1XxIL3GaW0hA295bFeWcFFL4VNLqFvfSPvWfD9k
	 w/nNpNRFUx+bjrAzT9aCQ5UXCsW8F2egMQ1idplkZA0gWFd5/VpfeLdOKRPeVdQmI/
	 bxAU31+E36aGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4713A406BB;
	Wed, 15 Apr 2026 11:25:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 26D0E375
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 11:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 18CB76072F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 11:25:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dYSJUB09SMNu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 11:25:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EAD8B60727
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAD8B60727
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EAD8B60727
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 11:25:00 +0000 (UTC)
X-CSE-ConnectionGUID: upUcQPEwTyK4dh9I+6+brw==
X-CSE-MsgGUID: FH2kESkNTjCJkefa44O+xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="81094689"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="81094689"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 04:24:59 -0700
X-CSE-ConnectionGUID: NdDP+pvzQdG2R+9Kxh2bTg==
X-CSE-MsgGUID: vdXegQ+yR72PX5OSXCKlnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227747235"
Received: from lkp-server01.sh.intel.com (HELO 7f3b36e5d6a5) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 15 Apr 2026 04:24:58 -0700
Received: from kbuild by 7f3b36e5d6a5 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wCyMa-000000000R7-0VGa;
 Wed, 15 Apr 2026 11:24:56 +0000
Date: Wed, 15 Apr 2026 19:24:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202604151947.uQ4BkAQJ-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776252301; x=1807788301;
 h=date:from:to:subject:message-id;
 bh=fOfpwZrzf4jNGEiYYTdW4aVjAOUsUwwEQOrJ774CyEY=;
 b=FjXJNBmAqNXIE7yyqThGxlG1piUnKhIdPhXI2uI37+22C47wXGoYqnPx
 QfRdkhUoLnpi/khWcuAgQYpSkNbyKwWTd7QMcQXpO71QrdYHS2oS4uC+L
 BOjfYOk7YHPK7lLzGCOzVwYBXfUwxI64BhV2hHCICh0vFgnEGnI6B+Xyk
 s13PBiF/cSvsffTD8ndmgFqwepH8yYTzgv+qU24nBzCwSITU+6ueZ6Z5e
 lCnisgTh3oke5uipa8GGWhzcfmuCd0ov99DR6ra33UsA1/flS68wxVWxK
 FxXqN6P1wS1DVVoX3eC0gqZFwxhQGw4FLJvO35T13nYxH7jn+5sjUd4Ep
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FjXJNBmA
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 fe435b2b5f9863d29dcf2eeffa58fa5b324c2e5b
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 59BEF403BB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: fe435b2b5f9863d29dcf2eeffa58fa5b324c2e5b  ice: fix infinite recursion in ice_cfg_tx_topo via ice_init_dev_hw

elapsed time: 811m

configs tested: 117
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                   allnoconfig    gcc-15.2.0
alpha                  allyesconfig    gcc-15.2.0
alpha                     defconfig    gcc-15.2.0
arc                    allmodconfig    gcc-15.2.0
arc                     allnoconfig    gcc-15.2.0
arc                    allyesconfig    gcc-15.2.0
arc                       defconfig    gcc-15.2.0
arc         randconfig-001-20260415    gcc-13.4.0
arc         randconfig-002-20260415    gcc-13.4.0
arm                     allnoconfig    clang-23
arm                     allnoconfig    gcc-15.2.0
arm                    allyesconfig    gcc-15.2.0
arm                       defconfig    gcc-15.2.0
arm         randconfig-001-20260415    gcc-13.4.0
arm         randconfig-002-20260415    gcc-13.4.0
arm         randconfig-003-20260415    gcc-13.4.0
arm         randconfig-004-20260415    gcc-13.4.0
arm64                  allmodconfig    clang-19
arm64                   allnoconfig    gcc-15.2.0
arm64                     defconfig    gcc-15.2.0
arm64       randconfig-001-20260415    gcc-15.2.0
arm64       randconfig-002-20260415    gcc-15.2.0
arm64       randconfig-003-20260415    gcc-15.2.0
arm64       randconfig-004-20260415    gcc-15.2.0
csky                   allmodconfig    gcc-15.2.0
csky                    allnoconfig    gcc-15.2.0
csky                      defconfig    gcc-15.2.0
csky        randconfig-001-20260415    gcc-15.2.0
csky        randconfig-002-20260415    gcc-15.2.0
hexagon                allmodconfig    clang-17
hexagon                allmodconfig    gcc-15.2.0
hexagon                 allnoconfig    clang-23
hexagon                 allnoconfig    gcc-15.2.0
hexagon                   defconfig    gcc-15.2.0
hexagon     randconfig-001-20260415    clang-18
hexagon     randconfig-002-20260415    clang-18
i386                   allmodconfig    gcc-14
i386                    allnoconfig    gcc-14
i386                    allnoconfig    gcc-15.2.0
i386                   allyesconfig    gcc-14
i386                      defconfig    gcc-15.2.0
loongarch              allmodconfig    clang-19
loongarch               allnoconfig    clang-23
loongarch               allnoconfig    gcc-15.2.0
loongarch   randconfig-001-20260415    clang-18
loongarch   randconfig-002-20260415    clang-18
m68k                   allmodconfig    gcc-15.2.0
m68k                    allnoconfig    gcc-15.2.0
m68k                   allyesconfig    gcc-15.2.0
microblaze              allnoconfig    gcc-15.2.0
microblaze             allyesconfig    gcc-15.2.0
mips                   allmodconfig    gcc-15.2.0
mips                    allnoconfig    gcc-15.2.0
mips                   allyesconfig    gcc-15.2.0
nios2                  allmodconfig    clang-23
nios2                  allmodconfig    gcc-11.5.0
nios2                   allnoconfig    clang-23
nios2                   allnoconfig    gcc-11.5.0
nios2       randconfig-001-20260415    clang-18
nios2       randconfig-002-20260415    clang-18
openrisc               allmodconfig    clang-23
openrisc               allmodconfig    gcc-15.2.0
openrisc                allnoconfig    clang-23
openrisc                allnoconfig    gcc-15.2.0
parisc                 allmodconfig    gcc-15.2.0
parisc                  allnoconfig    clang-23
parisc                  allnoconfig    gcc-15.2.0
parisc                 allyesconfig    gcc-15.2.0
parisc      randconfig-001-20260415    gcc-9.5.0
parisc      randconfig-002-20260415    gcc-9.5.0
powerpc                allmodconfig    gcc-15.2.0
powerpc                 allnoconfig    clang-23
powerpc                 allnoconfig    gcc-15.2.0
powerpc     randconfig-001-20260415    gcc-9.5.0
powerpc     randconfig-002-20260415    gcc-9.5.0
powerpc       xes_mpc85xx_defconfig    gcc-15.2.0
powerpc64   randconfig-001-20260415    gcc-9.5.0
powerpc64   randconfig-002-20260415    gcc-9.5.0
riscv                  allmodconfig    clang-23
riscv                   allnoconfig    clang-23
riscv                   allnoconfig    gcc-15.2.0
riscv                  allyesconfig    clang-16
s390                   allmodconfig    clang-18
s390                    allnoconfig    clang-23
s390                   allyesconfig    gcc-15.2.0
sh                     allmodconfig    gcc-15.2.0
sh                      allnoconfig    clang-23
sh                      allnoconfig    gcc-15.2.0
sh                     allyesconfig    gcc-15.2.0
sh                        defconfig    gcc-14
sparc                   allnoconfig    clang-23
sparc                   allnoconfig    gcc-15.2.0
sparc64                allmodconfig    clang-23
sparc64                   defconfig    gcc-14
um                     allmodconfig    clang-19
um                      allnoconfig    clang-23
um                     allyesconfig    gcc-14
um                     allyesconfig    gcc-15.2.0
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
x86_64                 rhel-9.4-bpf    gcc-14
x86_64                rhel-9.4-func    clang-20
x86_64          rhel-9.4-kselftests    clang-20
x86_64               rhel-9.4-kunit    gcc-14
x86_64                 rhel-9.4-ltp    gcc-14
x86_64                rhel-9.4-rust    clang-20
xtensa                  allnoconfig    clang-23
xtensa                  allnoconfig    gcc-15.2.0
xtensa                 allyesconfig    clang-23

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
