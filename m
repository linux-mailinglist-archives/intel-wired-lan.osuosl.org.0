Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /x0ALtF7KWq0XgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 16:59:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 481EB66A823
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 16:59:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=AwMAl50m;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04596608AC;
	Wed, 10 Jun 2026 14:59:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AfB1ZoZ5Xl30; Wed, 10 Jun 2026 14:59:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 163D2608AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781103565;
	bh=7chcvtQPj68k6sUFHSe0JdLK+ctIgJAZJFzfX+rFTbo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AwMAl50mf3TYjF3IeyRDVAi+QpVvSWJoS4bB/2NK7WRScmuxJ6YL12CeJUD+xYVdZ
	 paLT6IPHaidwt7Ofvb1erkrnV8pdGeP/WDR1DaqFfpUI09k0nltwI8KvNZDdelHO+k
	 Sj+KG2t8PT8D6EKQLGjRITXqfmIqeMGctTn8IBmh578XzAU7NRLGc9uFIVCSU2tNeK
	 4LdugZ2Ve8sc1T3KcK9sDXsSrnQxTDSf+hdNPux8cgkmg79y0Om5Xz1Yxt7zRGjJdi
	 kV4Fu/xeBoXLPyx3ggJLDL+T67hzDvJdsRdiJSem3EYkiH/dtOLHfxtk4frCyoRkDa
	 FMueskTcqmKZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 163D2608AF;
	Wed, 10 Jun 2026 14:59:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BD886196
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 14:59:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A369580EB2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 14:59:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lzPiHjDjtmSi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2026 14:59:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BCC2A80E51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCC2A80E51
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BCC2A80E51
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 14:59:22 +0000 (UTC)
X-CSE-ConnectionGUID: ivu6enwvTgiCgCnkDE3coA==
X-CSE-MsgGUID: HZbV5s3ATEW8GLLVzGtqEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81874668"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="81874668"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 07:59:22 -0700
X-CSE-ConnectionGUID: DzJteWs/QlWLQS65akOdZA==
X-CSE-MsgGUID: h1z2wVbTQUCZnG7EKLH52A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="276385921"
Received: from lkp-server01.sh.intel.com (HELO f0d55cb201f0) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 10 Jun 2026 07:59:21 -0700
Received: from kbuild by f0d55cb201f0 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wXKOk-00000000LYg-1HWg;
 Wed, 10 Jun 2026 14:59:18 +0000
Date: Wed, 10 Jun 2026 22:58:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606102239.SGgkCDMv-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781103563; x=1812639563;
 h=date:from:to:subject:message-id;
 bh=QSJJrB+bTSLhQHeUiUPtiW8fHcdq8U3Ik8PmCgqkZIo=;
 b=E+RrjVcZp6b3/3DW44ggetCSuwb9j6z5h8DNEOtHwM9aWDqhBqZxT7sX
 nxy0ikDeUWjkcDb1aMJmcpGWhJLmjMdQYnHJrHV0vTCnx7tli1KE3XtnR
 50ljDOhHXSQ8b6xUBtcmODpTMRvn2p9rkV58BlIAEc9mIXpgIPBkfNTqZ
 75xbvZgCfwMmvqR8OsW6sxXDCH6rD6qEDUY7oPTCN9KtMRyYOu0UyRT4w
 CCjQ+kpsJBtjX7/Bc7Fz4x435UGZhcryHXckUydV1Z7AJkO/snUr84BZz
 J+aYVAfGFi050Gl6062Z7+df/6f6gKcEtQQdoiiHhJApIaffZ1vKxr8o1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E+RrjVcZ
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 236f87c91d4b328ab77ea02aaae902f82a4fe4f7
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,intel.com:mid,intel.com:from_mime];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 481EB66A823

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 236f87c91d4b328ab77ea02aaae902f82a4fe4f7  ice: refactor ice_sched_cfg_agg to take agg_info pointer

elapsed time: 1245m

configs tested: 211
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260610    gcc-8.5.0
arc                   randconfig-002-20260610    gcc-9.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    gcc-16.1.0
arm                   randconfig-001-20260610    clang-23
arm                   randconfig-002-20260610    clang-20
arm                   randconfig-003-20260610    clang-23
arm                   randconfig-004-20260610    clang-23
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                 randconfig-001-20260610    gcc-11.5.0
arm64                 randconfig-002-20260610    gcc-9.5.0
arm64                 randconfig-003-20260610    gcc-8.5.0
arm64                 randconfig-004-20260610    clang-23
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                  randconfig-001-20260610    gcc-9.5.0
csky                  randconfig-002-20260610    gcc-11.5.0
hexagon                          allmodconfig    clang-23
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-16.1.0
hexagon                        randconfig-001    clang-23
hexagon               randconfig-001-20260610    clang-23
hexagon                        randconfig-002    clang-23
hexagon               randconfig-002-20260610    clang-22
i386                             allmodconfig    clang-22
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    clang-22
i386        buildonly-randconfig-001-20260610    gcc-14
i386        buildonly-randconfig-002-20260610    gcc-14
i386        buildonly-randconfig-003-20260610    gcc-14
i386        buildonly-randconfig-004-20260610    gcc-14
i386        buildonly-randconfig-005-20260610    gcc-14
i386        buildonly-randconfig-006-20260610    clang-22
i386                  randconfig-001-20260610    gcc-14
i386                  randconfig-002-20260610    gcc-14
i386                  randconfig-003-20260610    clang-22
i386                  randconfig-004-20260610    gcc-14
i386                  randconfig-005-20260610    clang-22
i386                  randconfig-006-20260610    gcc-14
i386                  randconfig-007-20260610    gcc-14
i386                           randconfig-011    clang-22
i386                  randconfig-011-20260610    clang-22
i386                           randconfig-012    clang-22
i386                  randconfig-012-20260610    clang-22
i386                           randconfig-013    gcc-14
i386                  randconfig-013-20260610    clang-22
i386                           randconfig-014    clang-22
i386                  randconfig-014-20260610    clang-22
i386                           randconfig-015    gcc-14
i386                  randconfig-015-20260610    clang-22
i386                           randconfig-016    gcc-14
i386                  randconfig-016-20260610    clang-22
i386                           randconfig-017    gcc-14
i386                  randconfig-017-20260610    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-20
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch                      randconfig-001    clang-23
loongarch             randconfig-001-20260610    gcc-16.1.0
loongarch                      randconfig-002    gcc-16.1.0
loongarch             randconfig-002-20260610    gcc-16.1.0
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    gcc-16.1.0
m68k                        m5272c3_defconfig    gcc-16.1.0
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    gcc-16.1.0
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
nios2                            allmodconfig    clang-20
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                          randconfig-001    gcc-11.5.0
nios2                 randconfig-001-20260610    gcc-11.5.0
nios2                          randconfig-002    gcc-8.5.0
nios2                 randconfig-002-20260610    gcc-11.5.0
openrisc                         allmodconfig    clang-20
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    clang-17
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                randconfig-001-20260610    gcc-8.5.0
parisc                randconfig-002-20260610    gcc-8.5.0
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-16.1.0
powerpc               randconfig-001-20260610    gcc-9.5.0
powerpc               randconfig-002-20260610    clang-23
powerpc64             randconfig-001-20260610    clang-23
powerpc64             randconfig-002-20260610    gcc-10.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260610    gcc-15.2.0
riscv                 randconfig-002-20260610    gcc-8.5.0
s390                             allmodconfig    clang-17
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                  randconfig-001-20260610    clang-23
s390                  randconfig-002-20260610    clang-23
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    clang-17
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-16.1.0
sh                    randconfig-001-20260610    gcc-16.1.0
sh                    randconfig-002-20260610    gcc-16.1.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                          randconfig-001    gcc-16.1.0
sparc                 randconfig-001-20260610    gcc-8.5.0
sparc                          randconfig-002    gcc-11.5.0
sparc                 randconfig-002-20260610    gcc-14.3.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64                        randconfig-001    gcc-12.5.0
sparc64               randconfig-001-20260610    gcc-12.5.0
sparc64                        randconfig-002    clang-20
sparc64               randconfig-002-20260610    clang-23
um                               allmodconfig    clang-17
um                               allmodconfig    clang-23
um                                allnoconfig    clang-16
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                             randconfig-001    clang-23
um                    randconfig-001-20260610    clang-23
um                             randconfig-002    clang-23
um                    randconfig-002-20260610    clang-18
um                           x86_64_defconfig    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64      buildonly-randconfig-001-20260610    clang-22
x86_64      buildonly-randconfig-002-20260610    gcc-14
x86_64      buildonly-randconfig-003-20260610    clang-22
x86_64      buildonly-randconfig-004-20260610    clang-22
x86_64      buildonly-randconfig-005-20260610    gcc-14
x86_64      buildonly-randconfig-006-20260610    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                randconfig-001-20260610    clang-22
x86_64                randconfig-002-20260610    clang-22
x86_64                randconfig-003-20260610    gcc-13
x86_64                randconfig-004-20260610    clang-22
x86_64                randconfig-005-20260610    clang-22
x86_64                randconfig-006-20260610    gcc-13
x86_64                randconfig-011-20260610    gcc-12
x86_64                randconfig-012-20260610    gcc-12
x86_64                randconfig-013-20260610    gcc-14
x86_64                randconfig-014-20260610    gcc-12
x86_64                randconfig-015-20260610    gcc-14
x86_64                randconfig-016-20260610    gcc-14
x86_64                randconfig-071-20260610    gcc-14
x86_64                randconfig-072-20260610    clang-22
x86_64                randconfig-072-20260610    gcc-14
x86_64                randconfig-073-20260610    gcc-14
x86_64                randconfig-074-20260610    gcc-14
x86_64                randconfig-075-20260610    gcc-14
x86_64                randconfig-076-20260610    clang-22
x86_64                randconfig-076-20260610    gcc-14
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-16.1.0
xtensa                           allyesconfig    clang-20
xtensa                         randconfig-001    gcc-8.5.0
xtensa                randconfig-001-20260610    gcc-8.5.0
xtensa                         randconfig-002    gcc-13.4.0
xtensa                randconfig-002-20260610    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
