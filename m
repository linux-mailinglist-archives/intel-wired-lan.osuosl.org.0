Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JznAL4IjmkT+wAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 18:07:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA94612FCBD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 18:07:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D41460E60;
	Thu, 12 Feb 2026 17:07:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hEsQOLL7Nn4M; Thu, 12 Feb 2026 17:07:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84ECD60C28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770916024;
	bh=+Qa7HZSUH2+dh4UfXIqM6oFHCUJ6z6iogaMmMPHnWkw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kDMStzibYIucWPXXoQo6TnKUZ29rak+0UxdblhEV7Iv3m62hVL9R0HWlCg4Ym9MPW
	 5kvlI3i3k3Ib9mclRY6OWlI3rw0keRDqIcFAS9ZziJcXDH9C/FA/RIUg84sL2Shgaq
	 +Mz1RH9+6lDkYcQTs8BcG3Mdug360fKPdtqO7r7qMnayNeUG9j62AF1b4qDUhmtswa
	 KUk/3q0CnyCngGD0ubL0jVKyvHNPI8vLjz8WqMnzR57rE6xiQXXVvYHJqYXcgwZvZM
	 VBxoXnC70bgADaEDfoZhCSGYC2snjfl3InqNx4UnL5hiYwMI4fQg2VUZ93C9lzFhNb
	 3ppAKeS/e0l5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 84ECD60C28;
	Thu, 12 Feb 2026 17:07:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E32DEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 17:07:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B29940706
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 17:07:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TjXAd3-8PUXF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 17:07:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E7FEB400D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7FEB400D5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7FEB400D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 17:07:01 +0000 (UTC)
X-CSE-ConnectionGUID: B28RSxDvSeuYpwF6x7yc0g==
X-CSE-MsgGUID: AJZFvvL7QAakc9OkGEpP6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="83462184"
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="83462184"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 09:07:01 -0800
X-CSE-ConnectionGUID: /otVYZtoTOSJtBrmSnbENw==
X-CSE-MsgGUID: 5IKI09FRTBCNivtexnyWyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="217619915"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 12 Feb 2026 09:07:00 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vqa9Z-00000000rpI-2ntX;
 Thu, 12 Feb 2026 17:06:57 +0000
Date: Fri, 13 Feb 2026 01:06:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602130140.m60yKkpa-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770916022; x=1802452022;
 h=date:from:to:subject:message-id;
 bh=okg6yardsI8umJdHk3ZYLFZe2Xu/cIEjARVJsKi+GIg=;
 b=A2a3ewwWoy5pv4GV6lw1W4t2UyxOmww3Tk8ozsGuLfHeU0v2jT/kNWmb
 dguNhJ6ZnoAzhVjVM2Gh/A1SHt8lc3uMpaSAnKyDzYHPTr4988YS6dP8y
 pQHfixu0Iwg0c8wDYNQQYD9NNJCJ117GaLv1ucSddTpLGSs+FpmTB2UXX
 oo/p/2aWl4Yt+NkBrR097DiiVZDxyhW736lqg4r5kRaq5oUK+jSdzp5ys
 3UwknnIsy98C/tNL5+mbH/ZsvzcSM7F6zYIv2yTVMsWOy77U6nsY/b9CM
 ptSCYk73GBaiWMJWJHMXvV74MCVX5qEVV6QqaWjm08Hr0qXEblWEDFCZ0
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A2a3ewwW
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d5fd7701831e4908103b62a336b488dcc62c495a
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: DA94612FCBD
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: d5fd7701831e4908103b62a336b488dcc62c495a  ice: fix race condition in TX timestamp ring cleanup

elapsed time: 965m

configs tested: 160
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arc                   randconfig-001-20260212    gcc-9.5.0
arc                   randconfig-002-20260212    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.2.0
arm                           omap1_defconfig    gcc-15.2.0
arm                       omap2plus_defconfig    gcc-15.2.0
arm                   randconfig-001-20260212    gcc-8.5.0
arm                   randconfig-002-20260212    gcc-10.5.0
arm                   randconfig-003-20260212    clang-22
arm                   randconfig-004-20260212    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                 randconfig-001-20260212    clang-22
arm64                 randconfig-002-20260212    gcc-10.5.0
arm64                 randconfig-003-20260212    clang-22
arm64                 randconfig-004-20260212    clang-22
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                  randconfig-001-20260212    gcc-15.2.0
csky                  randconfig-002-20260212    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20260212    clang-22
hexagon               randconfig-002-20260212    clang-18
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260212    gcc-14
i386        buildonly-randconfig-002-20260212    gcc-14
i386        buildonly-randconfig-003-20260212    clang-20
i386        buildonly-randconfig-004-20260212    gcc-13
i386        buildonly-randconfig-005-20260212    gcc-14
i386        buildonly-randconfig-006-20260212    gcc-14
i386                  randconfig-001-20260212    clang-20
i386                  randconfig-002-20260212    clang-20
i386                  randconfig-003-20260212    clang-20
i386                  randconfig-004-20260212    clang-20
i386                  randconfig-005-20260212    gcc-14
i386                  randconfig-006-20260212    gcc-14
i386                  randconfig-007-20260212    clang-20
i386                  randconfig-011-20260212    gcc-14
i386                  randconfig-012-20260212    gcc-12
i386                  randconfig-013-20260212    clang-20
i386                  randconfig-014-20260212    clang-20
i386                  randconfig-015-20260212    clang-20
i386                  randconfig-016-20260212    gcc-14
i386                  randconfig-017-20260212    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260212    clang-18
loongarch             randconfig-002-20260212    clang-22
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
mips                          ath79_defconfig    gcc-15.2.0
mips                        omega2p_defconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260212    gcc-11.5.0
nios2                 randconfig-002-20260212    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260212    gcc-8.5.0
parisc                randconfig-002-20260212    gcc-8.5.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260212    clang-22
powerpc               randconfig-002-20260212    gcc-10.5.0
powerpc                      tqm8xx_defconfig    clang-19
powerpc64             randconfig-001-20260212    clang-22
powerpc64             randconfig-002-20260212    gcc-11.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20260212    gcc-9.5.0
riscv                 randconfig-002-20260212    clang-18
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                  randconfig-001-20260212    gcc-15.2.0
s390                  randconfig-002-20260212    clang-22
s390                       zfcpdump_defconfig    clang-22
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260212    gcc-10.5.0
sh                    randconfig-002-20260212    gcc-12.5.0
sh                          sdk7786_defconfig    gcc-15.2.0
sh                     sh7710voipgw_defconfig    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260212    gcc-13.4.0
sparc                 randconfig-002-20260212    gcc-14.3.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260212    gcc-14.3.0
sparc64               randconfig-002-20260212    gcc-13.4.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260212    gcc-14
um                    randconfig-002-20260212    clang-22
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260212    clang-20
x86_64      buildonly-randconfig-002-20260212    clang-20
x86_64      buildonly-randconfig-003-20260212    gcc-14
x86_64      buildonly-randconfig-004-20260212    clang-20
x86_64      buildonly-randconfig-005-20260212    clang-20
x86_64      buildonly-randconfig-006-20260212    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260212    gcc-12
x86_64                randconfig-002-20260212    gcc-14
x86_64                randconfig-003-20260212    gcc-14
x86_64                randconfig-004-20260212    gcc-14
x86_64                randconfig-005-20260212    clang-20
x86_64                randconfig-006-20260212    clang-20
x86_64                randconfig-011-20260212    clang-20
x86_64                randconfig-012-20260212    gcc-14
x86_64                randconfig-013-20260212    clang-20
x86_64                randconfig-014-20260212    gcc-13
x86_64                randconfig-015-20260212    gcc-14
x86_64                randconfig-016-20260212    clang-20
x86_64                randconfig-071-20260212    clang-20
x86_64                randconfig-072-20260212    gcc-14
x86_64                randconfig-073-20260212    gcc-14
x86_64                randconfig-074-20260212    gcc-14
x86_64                randconfig-075-20260212    gcc-14
x86_64                randconfig-076-20260212    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260212    gcc-8.5.0
xtensa                randconfig-002-20260212    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
