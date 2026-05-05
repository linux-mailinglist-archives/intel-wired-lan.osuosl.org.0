Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDLrCuhA+mlCLQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 21:11:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 971644D30B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 21:11:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9EEB60A67;
	Tue,  5 May 2026 19:11:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PFNJmdh1dOez; Tue,  5 May 2026 19:11:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 354CA60AD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778008292;
	bh=+LSYJyzMSArX5sHqIL0lC7y/DzlBoRqOIimRxMiYbCI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bQpoEm+oK7mpy+bCsR2jVB3VXDHNgA5mFMPGdpBHCD5GGAMkIO40PFkzMeO4Cbj0C
	 4sTMUHWLDwifhbiuK175+ddcRrdbduT8oSbb+FxfxkwDIazYgHpIiQCVWnn+/pRg0B
	 LwlTCpl77iVhdNZWMezMnMG4HTnUhi+8IwV/MrzfRBri2sJK2LdgRMOGmo//zYNwJ7
	 L0/fg/pJ08r+8SSrOTbc2f7OyZzzqkQFlvt+VZhrVwvcJQBXnqtnWnLiOdQN5wmgfj
	 p/XhTHpmW4cmtDreZC5IzjYmta0bjqD6aa/4e8Z4tC3K+81i72wi2q4Q+g8TOXGX3+
	 VMaY6zRtun0qA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 354CA60AD3;
	Tue,  5 May 2026 19:11:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 98179315
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 19:11:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89ADF403C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 19:11:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K6wMnHdz_0nc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 19:11:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 89C30403C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89C30403C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89C30403C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 19:11:30 +0000 (UTC)
X-CSE-ConnectionGUID: gS3/yLerQFCS6u/kyT+6Xg==
X-CSE-MsgGUID: MB3pjvHERkigr0tldifZ3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="101557903"
X-IronPort-AV: E=Sophos;i="6.23,218,1770624000"; d="scan'208";a="101557903"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 12:11:29 -0700
X-CSE-ConnectionGUID: ElwFVsLbRgOzA0E6441cXQ==
X-CSE-MsgGUID: IPlxFK5LRr+qacpv1MGQgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,218,1770624000"; d="scan'208";a="259248526"
Received: from lkp-server01.sh.intel.com (HELO 9ec114424ce8) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 05 May 2026 12:11:28 -0700
Received: from kbuild by 9ec114424ce8 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wKLB0-000000000OP-072e;
 Tue, 05 May 2026 19:11:26 +0000
Date: Wed, 06 May 2026 03:11:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605060306.eRh976Ci-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778008290; x=1809544290;
 h=date:from:to:subject:message-id;
 bh=B4gsb7Vu2IKOkpv/nHteJl4Hz10yPH/g9RH8QdP2nRM=;
 b=AJ8buR+dVZ3h9YqgCftNqUnqHSlHI46O38mmOv+oOmQ/xXKkZX4FSUrB
 XPLijbfAPmO7SjIv8VFgkxYwVFOxN+XVa1DA/fKtWl9PHyZi8oIW0PmtF
 y0oLt5TJpi8k2RtgX36R5cD5uGqWiexEbouJxNpyP59k0Wr4XlFcCpcXx
 6MitLSRKco+b003Fk/oc0WcOsC60GI35bJiiDebEqGug5J77CDArbQN6W
 IRrxwmXXoIcrhPp3iy1/rTUVA7vWhUNRSFCLtGcN5fsykCmXiaZGPIU06
 T8YDpT7iFa23VZET9v5JmxvN/Uv4MK481DdpQtYUrQUSaC7+ZZRw9GeSH
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AJ8buR+d
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 2e6f4bb8608c9f66ccb8f815ac699b77a581a3b2
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
X-Rspamd-Queue-Id: 971644D30B1
X-Rspamd-Action: no action
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
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 2e6f4bb8608c9f66ccb8f815ac699b77a581a3b2  ice: add support for transmitting unreadable frags

elapsed time: 1002m

configs tested: 107
configs skipped: 15

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260505    gcc-8.5.0
arm64                 randconfig-002-20260505    clang-16
arm64                 randconfig-003-20260505    clang-23
arm64                 randconfig-004-20260505    clang-23
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260505    gcc-15.2.0
csky                  randconfig-002-20260505    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20260505    gcc-13
i386        buildonly-randconfig-002-20260505    gcc-14
i386        buildonly-randconfig-003-20260505    clang-20
i386        buildonly-randconfig-004-20260505    clang-20
i386        buildonly-randconfig-005-20260505    gcc-14
i386        buildonly-randconfig-006-20260505    gcc-14
i386                                defconfig    clang-20
i386                           randconfig-001    clang-20
i386                  randconfig-001-20260505    gcc-14
i386                           randconfig-002    gcc-14
i386                  randconfig-002-20260505    gcc-14
i386                           randconfig-003    gcc-14
i386                  randconfig-003-20260505    clang-20
i386                           randconfig-004    clang-20
i386                  randconfig-004-20260505    gcc-14
i386                           randconfig-005    gcc-14
i386                  randconfig-005-20260505    clang-20
i386                           randconfig-006    gcc-14
i386                  randconfig-006-20260505    clang-20
i386                           randconfig-007    gcc-14
i386                  randconfig-007-20260505    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc64                            defconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                          urquell_defconfig    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260505    clang-20
x86_64                randconfig-002-20260505    gcc-14
x86_64                randconfig-003-20260505    clang-20
x86_64                randconfig-004-20260505    clang-20
x86_64                randconfig-005-20260505    clang-20
x86_64                randconfig-006-20260505    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
