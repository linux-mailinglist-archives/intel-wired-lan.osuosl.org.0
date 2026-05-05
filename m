Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNKiIulA+mlCLQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 21:11:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 078614D30B9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 21:11:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FC1C40ABA;
	Tue,  5 May 2026 19:11:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 63_6L3LZrw00; Tue,  5 May 2026 19:11:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7B4940B17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778008294;
	bh=ytg8aQT9e2VNymHn9+0OaJWt5kFx89YnS4ZeudaUVbE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Mt2SyiU2Y1JmO0Uu0hmTeaDhbxQgMEAGTZ+fOXEWQvO5UEWs3UIQo7/lqO/NAB8nP
	 tqSqyHc1eblghwZ7N0g9KeaR4qUDzUiZubIJeW5FPR79Ek0esGFh8CLJGnUOqZ9Khq
	 YAGWS2x2jgMifdIVOrGcUS5auKv5b8htJPFp5Ym9d42caa711+XCZlKefcx+CcWtE8
	 bL2K80DCrTN3Q7h3rQ+mYNsFkO5yRPUrvVCYDIoEP/a+TUHClblBtT7IS3SOjo09oU
	 +SpSIC5Xcovkd7MyTpIvJeEiwGs1RQfAvWe9XMk/kxVm/dzJ9oCQBSghNPZlldn5ii
	 RHOkYKK2Wx+Uw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7B4940B17;
	Tue,  5 May 2026 19:11:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1262A2A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 19:11:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EAF98403C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 19:11:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Reijl4pc3tDJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 19:11:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 22CE5403C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22CE5403C7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 22CE5403C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 19:11:31 +0000 (UTC)
X-CSE-ConnectionGUID: 1Ocqt0n/Tr++obSE16uReA==
X-CSE-MsgGUID: 1FrgOutBRsGZVmUESrc5dA==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="101557901"
X-IronPort-AV: E=Sophos;i="6.23,218,1770624000"; d="scan'208";a="101557901"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 12:11:29 -0700
X-CSE-ConnectionGUID: qgNvlzl7SPqAUxmWo5ROfA==
X-CSE-MsgGUID: TD7eCSd7R/SyUA4Fr1UfEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,218,1770624000"; d="scan'208";a="259248524"
Received: from lkp-server01.sh.intel.com (HELO 9ec114424ce8) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 05 May 2026 12:11:28 -0700
Received: from kbuild by 9ec114424ce8 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wKLAz-000000000ON-4BAf;
 Tue, 05 May 2026 19:11:25 +0000
Date: Wed, 06 May 2026 03:10:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605060330.IauleA0g-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778008291; x=1809544291;
 h=date:from:to:subject:message-id;
 bh=7oODFJMubdDJQtlFfe8rycxBb5XDMkH0O1dD6bDhBGU=;
 b=hZv0jk7zmvrLqI/iSomL3ANE5ieVVwXij0X0PmYQmk5VUlB9UwgteFyf
 d39awf7U+kQ6yimH8WYhQk/F0r+07E4tiRxOFhwjOwmNt2W+mEFRIOd61
 ElBwZ6sIVbtLzilC2JRdO2lecpEPc5+c4kMyRdsKUi53sNbOzAVidYCzw
 tn/Ax2v9vAciMm9EuSsUBMCKaPxPprPJLOxAhvdv6Hbmup0PScKC0cyTr
 AE/0Z/pYq4IyAzdz/kqBjai93BPetJsvnCRAnWVWPpGIlIdsLgJSQxKSn
 bjIQ7kK43IQXQv5HZf7fCTPz2Q1JVs8aaCpgX1PdATgSsfMQw/uD0bHGt
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hZv0jk7z
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 24459e26fb49a0067ae93ae1bbb37abb2a42f6f2
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
X-Rspamd-Queue-Id: 078614D30B9
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 24459e26fb49a0067ae93ae1bbb37abb2a42f6f2  ixgbe: fix integer overflow and wrong bit position in ixgbe_validate_rtr()

elapsed time: 1001m

configs tested: 100
configs skipped: 13

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
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260505    gcc-8.5.0
arm64                          randconfig-003    clang-23
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                           randconfig-001    gcc-10.5.0
csky                  randconfig-001-20260505    gcc-15.2.0
csky                           randconfig-002    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386                 buildonly-randconfig-001    gcc-14
i386        buildonly-randconfig-001-20260505    gcc-13
i386                 buildonly-randconfig-002    clang-20
i386        buildonly-randconfig-002-20260505    gcc-14
i386                 buildonly-randconfig-003    clang-20
i386        buildonly-randconfig-003-20260505    clang-20
i386                 buildonly-randconfig-004    gcc-14
i386        buildonly-randconfig-004-20260505    clang-20
i386                 buildonly-randconfig-005    gcc-14
i386        buildonly-randconfig-005-20260505    gcc-14
i386                 buildonly-randconfig-006    gcc-14
i386        buildonly-randconfig-006-20260505    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20260505    gcc-14
i386                  randconfig-002-20260505    gcc-14
i386                  randconfig-003-20260505    clang-20
i386                  randconfig-004-20260505    gcc-14
i386                  randconfig-005-20260505    clang-20
i386                  randconfig-006-20260505    clang-20
i386                  randconfig-007-20260505    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    gcc-15.2.0
m68k                          hp300_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    gcc-15.2.0
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
powerpc                          allmodconfig    gcc-15.2.0
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
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
