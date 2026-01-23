Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6D7nBfTCc2kCygAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 19:50:28 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEE079C30
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 19:50:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 029BB40A44;
	Fri, 23 Jan 2026 18:50:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VCjQKwVaON9Z; Fri, 23 Jan 2026 18:50:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E9A940A51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769194223;
	bh=Wt9f0lm3pdbjOePnpSRwV8TPMcrDd9AGnrHf2mSnAbo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XgoDu097+MPDoJJdroLPzgolHygCKHIITCPqwWY6kyO+QJ/zUdRuwBwL074a4PtB9
	 3cbslbsDmQXzoiEnCvb8vj4IB2qncOFEnYoFpeHa1xnfHIIOHDIoZgb8EwnroZycPv
	 W20ph5qB1BZMn3sGKgrApaRNuTP0WhdE0wShxwp0darOiVok/Ibp7B+0vhONW1rCNV
	 VzlCVMsA+HOOhK3LjAwwYtO0Y3R7YbzjNFJ/JnXHIpRiGJEkjjjSUXrtuNcEiXP6fE
	 JEsFM+zeZXESYci3qggVZUMwFXKxvU/ztcijXjIwM7VWIIiwEJxxkp5HNqk54eA15y
	 lJCNXWn7sp2aA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E9A940A51;
	Fri, 23 Jan 2026 18:50:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B958358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 18:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9521F40A09
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 18:50:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TnuBT5Kra1Rj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jan 2026 18:50:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 62CE440845
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62CE440845
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62CE440845
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 18:50:19 +0000 (UTC)
X-CSE-ConnectionGUID: gS/MxiDMReSZPArqymimvg==
X-CSE-MsgGUID: tknUfKwOQkS3ipBdUeCldA==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="81079990"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="81079990"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 10:50:19 -0800
X-CSE-ConnectionGUID: Jho0aHTTR1ymKs7kUmzkEw==
X-CSE-MsgGUID: 1cTD8K25Taar+Nu9Vk0jvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211554204"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 23 Jan 2026 10:50:18 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vjMEa-00000000ULx-1FPR;
 Fri, 23 Jan 2026 18:50:16 +0000
Date: Sat, 24 Jan 2026 02:49:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601240244.yPHBHlUo-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769194220; x=1800730220;
 h=date:from:to:subject:message-id;
 bh=L9SaEnaXVC7D362+/Mj47RMUHstyCwKnIftaroeRHpo=;
 b=eo/aE0TMsmjGunUu237kREY+rCmOU2z7R4jOSkuXdAKrpnKGu+7q/BRF
 YFd6ROwJNvItcJbvdFcgUYqGnxqCQ0IyrVm259VqO9AF/Vll645O1G+f3
 NtkLddiEavq5MTsD6AmXVYoT68hNg0UL0ECAVnFBZ2EJzg4v30vmfho2S
 t4ZVowFwQrm7zhk9slI+kHgPrP82zaz5p1iJpAn3BnvToL3Gxt29WGWwz
 SVblXrdTgsQJq+rtHVAui4BjdBN47Ygtt7bZwny+pxMJJMLwkmepCxZGn
 bIqw4IaD+yrCqrmAWrlZ1iQApVEp4tdyBkUWDTiqx6GaL0pvyw3mZerNJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eo/aE0TM
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 086d030e99d25b27d89ab62c8509db7626bdcc48
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Queue-Id: 4EEE079C30
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 086d030e99d25b27d89ab62c8509db7626bdcc48  idpf: generalize mailbox API

elapsed time: 1228m

configs tested: 192
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260123    gcc-10.5.0
arc                   randconfig-002-20260123    gcc-10.5.0
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                   randconfig-001-20260123    gcc-10.5.0
arm                   randconfig-002-20260123    gcc-10.5.0
arm                   randconfig-003-20260123    gcc-10.5.0
arm                   randconfig-004-20260123    gcc-10.5.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
csky                             alldefconfig    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260123    gcc-12.5.0
hexagon               randconfig-002-20260123    gcc-12.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260123    clang-20
i386        buildonly-randconfig-002-20260123    clang-20
i386        buildonly-randconfig-003-20260123    clang-20
i386        buildonly-randconfig-004-20260123    clang-20
i386        buildonly-randconfig-005-20260123    clang-20
i386        buildonly-randconfig-006-20260123    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260123    gcc-14
i386                  randconfig-002-20260123    gcc-14
i386                  randconfig-003-20260123    gcc-14
i386                  randconfig-004-20260123    gcc-14
i386                  randconfig-005-20260123    gcc-14
i386                  randconfig-006-20260123    gcc-14
i386                  randconfig-007-20260123    gcc-14
i386                  randconfig-011-20260123    clang-20
i386                  randconfig-012-20260123    clang-20
i386                  randconfig-013-20260123    clang-20
i386                  randconfig-014-20260123    clang-20
i386                  randconfig-015-20260123    clang-20
i386                  randconfig-016-20260123    clang-20
i386                  randconfig-017-20260123    clang-20
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260123    gcc-12.5.0
loongarch             randconfig-002-20260123    gcc-12.5.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                         cobalt_defconfig    gcc-15.2.0
mips                           ip27_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260123    gcc-12.5.0
nios2                 randconfig-002-20260123    gcc-12.5.0
openrisc                         allmodconfig    clang-22
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260123    gcc-12.5.0
parisc                randconfig-002-20260123    gcc-12.5.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.2.0
powerpc                      mgcoge_defconfig    gcc-15.2.0
powerpc                 mpc837x_rdb_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260123    gcc-12.5.0
powerpc               randconfig-002-20260123    gcc-12.5.0
powerpc64             randconfig-001-20260123    gcc-12.5.0
powerpc64             randconfig-002-20260123    gcc-12.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                               defconfig    gcc-15.2.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                                defconfig    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                           se7712_defconfig    gcc-15.2.0
sh                           se7721_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260123    gcc-13.4.0
sparc                 randconfig-002-20260123    gcc-13.4.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260123    gcc-13.4.0
sparc64               randconfig-002-20260123    gcc-13.4.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260123    gcc-13.4.0
um                    randconfig-002-20260123    gcc-13.4.0
um                           x86_64_defconfig    gcc-15.2.0
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260123    clang-20
x86_64      buildonly-randconfig-002-20260123    clang-20
x86_64      buildonly-randconfig-003-20260123    clang-20
x86_64      buildonly-randconfig-004-20260123    clang-20
x86_64      buildonly-randconfig-005-20260123    clang-20
x86_64      buildonly-randconfig-006-20260123    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260123    gcc-14
x86_64                randconfig-002-20260123    gcc-14
x86_64                randconfig-003-20260123    gcc-14
x86_64                randconfig-004-20260123    gcc-14
x86_64                randconfig-005-20260123    gcc-14
x86_64                randconfig-006-20260123    gcc-14
x86_64                randconfig-011-20260123    gcc-14
x86_64                randconfig-012-20260123    gcc-14
x86_64                randconfig-013-20260123    gcc-14
x86_64                randconfig-014-20260123    gcc-14
x86_64                randconfig-015-20260123    gcc-14
x86_64                randconfig-016-20260123    gcc-14
x86_64                randconfig-071-20260123    clang-20
x86_64                randconfig-072-20260123    clang-20
x86_64                randconfig-073-20260123    clang-20
x86_64                randconfig-074-20260123    clang-20
x86_64                randconfig-075-20260123    clang-20
x86_64                randconfig-076-20260123    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-22
xtensa                randconfig-001-20260123    gcc-13.4.0
xtensa                randconfig-002-20260123    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
