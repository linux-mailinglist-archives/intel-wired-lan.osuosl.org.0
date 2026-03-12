Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMfyL7Ups2ksSwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 22:01:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F39279AF6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 22:01:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5B5C60729;
	Thu, 12 Mar 2026 21:01:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mczp8Vt4_V26; Thu, 12 Mar 2026 21:01:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9C026072A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773349295;
	bh=GtszdJTqkn2Htf4vlptu9IF3/okO4GtXs/BfuM3KEUk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aTbqUfyaA9ffIytzExNDGJgmtc/g+u7Djw/xroXN0bULMYBUui3Pi+GbGfZJkl3fM
	 0E8wswSl8shrH5UVFCmDZ/TQ5PgYHvbD4QrltBBQRaSW3sIY7i03sfeDNyRH2P2hAp
	 fsTJz/0yzx+m3NkwGu/5g8SXX0ex0PQ5ZgUGEGDq5aXZKFU7rTWgUH3TNXq8ggemZS
	 fXbngf/Y2uOgROT0v7tdLogBvT2KGqwNlWWd1MlRDjEqDVkjlIHu4nnfzGv1VHEdvk
	 +HTb4lHJIBakmjUmoBUi5qPnrWMwQ9Pu3yTDOEYeRnq7ZFowUNUk4asnqSeobcIY9S
	 Ku+k8/BIqcLiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9C026072A;
	Thu, 12 Mar 2026 21:01:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E8761AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 21:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8FBB480D73
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 21:01:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IUGlvP8LW89B for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2026 21:01:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 896F880D66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 896F880D66
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 896F880D66
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 21:01:32 +0000 (UTC)
X-CSE-ConnectionGUID: oWMWgOAIRIyctcK+llzaSQ==
X-CSE-MsgGUID: avMQvYLFQQiYTrl6ZGFw6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="84775011"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="84775011"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 14:01:31 -0700
X-CSE-ConnectionGUID: 9llOz82tROehiMQvBEUqtg==
X-CSE-MsgGUID: LAcnmVSaT0C6yZZ+8n2knQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="218727540"
Received: from lkp-server01.sh.intel.com (HELO 418530b1a366) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 12 Mar 2026 14:01:30 -0700
Received: from kbuild by 418530b1a366 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w0n9s-000000003C3-25w3;
 Thu, 12 Mar 2026 21:01:28 +0000
Date: Fri, 13 Mar 2026 05:00:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603130535.Wq2IO5xQ-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773349292; x=1804885292;
 h=date:from:to:subject:message-id;
 bh=EGrBnOCMnFHvwXwWhr2QY4wSshsdDf3Dl1vv+R+Yh5M=;
 b=P6SVexQ1dPO23wARu8D18842/o/tsB5dfoM0dnk39UtsP0/YI+XQ4INw
 qKpYgrZvNsh1Mc8EGvVNaYlpz+iggJn3o4aytQE+u2cU1P7DLfVhzLh9m
 IYaC2Eeaxs9BQzTx4qU/i7K9qfVTkJZEkEP6nSkNxBO3E/r2VMfRGaRxH
 WvT584nxCs/ZnRoRCqsycr97H2H3xL4MKH4fobsOWPj93dglmZgUUWTGT
 rIQpZpLIp8dUu+9ajSohGEEqG70g8aL/6hnUODBNpFvntesM/bWzAyonc
 E++tYMJrzpBWq/iROh9e1qCQhkfcrr3BFtvH0mXR2qmzMU6M1BRxYQ9+i
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P6SVexQ1
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 c1771f28b5263fd1c1a10a1a7dc682d75e8cb607
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 90F39279AF6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: c1771f28b5263fd1c1a10a1a7dc682d75e8cb607  idpf: only assign num refillqs if allocation was successful

elapsed time: 1362m

configs tested: 155
configs skipped: 8

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
arc                   randconfig-001-20260312    gcc-8.5.0
arc                   randconfig-002-20260312    gcc-14.3.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm                            mmp2_defconfig    gcc-15.2.0
arm                   randconfig-001-20260312    gcc-8.5.0
arm                   randconfig-002-20260312    gcc-11.5.0
arm                   randconfig-003-20260312    gcc-10.5.0
arm                   randconfig-004-20260312    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260312    gcc-8.5.0
arm64                 randconfig-002-20260312    gcc-13.4.0
arm64                 randconfig-003-20260312    clang-18
arm64                 randconfig-004-20260312    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260312    gcc-12.5.0
csky                  randconfig-002-20260312    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260312    clang-23
hexagon               randconfig-002-20260312    clang-23
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20260312    gcc-12
i386        buildonly-randconfig-002-20260312    gcc-14
i386        buildonly-randconfig-003-20260312    gcc-14
i386        buildonly-randconfig-004-20260312    gcc-12
i386        buildonly-randconfig-005-20260312    gcc-14
i386        buildonly-randconfig-006-20260312    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20260312    gcc-14
i386                  randconfig-002-20260312    gcc-14
i386                  randconfig-003-20260312    gcc-12
i386                  randconfig-004-20260312    gcc-14
i386                  randconfig-005-20260312    gcc-14
i386                  randconfig-006-20260312    gcc-14
i386                  randconfig-007-20260312    gcc-12
i386                  randconfig-011-20260312    clang-20
i386                  randconfig-012-20260312    gcc-14
i386                  randconfig-013-20260312    gcc-14
i386                  randconfig-014-20260312    clang-20
i386                  randconfig-015-20260312    gcc-14
i386                  randconfig-016-20260312    clang-20
i386                  randconfig-017-20260312    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260312    gcc-15.2.0
loongarch             randconfig-002-20260312    clang-23
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
nios2                 randconfig-001-20260312    gcc-11.5.0
nios2                 randconfig-002-20260312    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260312    gcc-8.5.0
parisc                randconfig-002-20260312    gcc-14.3.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260312    gcc-8.5.0
powerpc               randconfig-002-20260312    gcc-8.5.0
powerpc64             randconfig-001-20260312    clang-23
powerpc64             randconfig-002-20260312    gcc-14.3.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260312    clang-23
riscv                 randconfig-002-20260312    gcc-9.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                  randconfig-001-20260312    gcc-14.3.0
s390                  randconfig-002-20260312    gcc-9.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260312    gcc-12.5.0
sh                    randconfig-002-20260312    gcc-13.4.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260312    gcc-13.4.0
sparc                 randconfig-002-20260312    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260312    clang-20
sparc64               randconfig-002-20260312    gcc-14.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260312    clang-23
um                    randconfig-002-20260312    clang-20
um                           x86_64_defconfig    clang-23
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20260312    gcc-12
x86_64      buildonly-randconfig-002-20260312    gcc-14
x86_64      buildonly-randconfig-003-20260312    clang-20
x86_64      buildonly-randconfig-004-20260312    gcc-14
x86_64      buildonly-randconfig-005-20260312    gcc-14
x86_64      buildonly-randconfig-006-20260312    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260312    clang-20
x86_64                randconfig-002-20260312    clang-20
x86_64                randconfig-003-20260312    clang-20
x86_64                randconfig-004-20260312    clang-20
x86_64                randconfig-005-20260312    clang-20
x86_64                randconfig-006-20260312    clang-20
x86_64                randconfig-011-20260312    gcc-14
x86_64                randconfig-012-20260312    gcc-14
x86_64                randconfig-013-20260312    gcc-14
x86_64                randconfig-014-20260312    gcc-14
x86_64                randconfig-015-20260312    clang-20
x86_64                randconfig-016-20260312    clang-20
x86_64                randconfig-071-20260312    gcc-14
x86_64                randconfig-072-20260312    clang-20
x86_64                randconfig-073-20260312    clang-20
x86_64                randconfig-074-20260312    clang-20
x86_64                randconfig-075-20260312    clang-20
x86_64                randconfig-076-20260312    gcc-14
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260312    gcc-8.5.0
xtensa                randconfig-002-20260312    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
