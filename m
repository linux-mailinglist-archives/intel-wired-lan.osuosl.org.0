Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LqTMOs8+mmjLAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 20:54:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3864D2EB0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 20:54:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEF1540B45;
	Tue,  5 May 2026 18:54:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9j5emlBEAPpP; Tue,  5 May 2026 18:54:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 226C340866
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778007272;
	bh=377hB2dEG8MY85n/8EEfELjwbdd+9C2lDpV0eLIm7hg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=I8IYB8RO5oiz6cDO8ZCABZf78yuzJBAb6UKXgK0RtZjpfVZD5FjMPG87t2LdJLnYO
	 /pJxOpHPNR3XadPy+8T6bHP+yq3o/vUCf82nJ31krJww/MAz4eBbCyiqgKlhG7KT2O
	 1R/Tfy6WTS5xyPsPrwRLJWiKTQn7aHKAzNqMHhuvpC1kfFIEY8qvQWnv3KSeiV6TrG
	 yGX1deVt9pQFYUYh8NeWuzYxD/GVyhkLqGy8vRJiZVN55t4oTohJZTmr4gISRBukc3
	 eByAXOWSXlHZs2G3aRdzZPevzmoiLlNwg1d2HaVd+gDUMUqacu1ipauQFPlRsPGaVc
	 Jqdjqg0IpUAaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 226C340866;
	Tue,  5 May 2026 18:54:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B2DDB315
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 18:54:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 98C0481947
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 18:54:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ALcA7Y9_zaUd for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 18:54:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 459E581926
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 459E581926
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 459E581926
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 18:54:28 +0000 (UTC)
X-CSE-ConnectionGUID: /t8a8WyxTc+AU0HPNNEGgA==
X-CSE-MsgGUID: hlyrRUSxQCqKCtI+fxyUaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="104343423"
X-IronPort-AV: E=Sophos;i="6.23,218,1770624000"; d="scan'208";a="104343423"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 11:54:28 -0700
X-CSE-ConnectionGUID: jmB62bTSQfy7gJlLwwnY2w==
X-CSE-MsgGUID: w7KRXv1TS0iQqB3yMToiGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,218,1770624000"; d="scan'208";a="240884321"
Received: from lkp-server01.sh.intel.com (HELO 9ec114424ce8) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 05 May 2026 11:54:28 -0700
Received: from kbuild by 9ec114424ce8 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wKKuW-000000000N3-3PE1;
 Tue, 05 May 2026 18:54:24 +0000
Date: Wed, 06 May 2026 02:53:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605060220.4bbLusZm-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778007269; x=1809543269;
 h=date:from:to:subject:message-id;
 bh=pI1isPlP5v0KOlk+FrvZ30kSykYaj1HIlH5/g3esUqs=;
 b=NycUPX3PibqXSqpdl5VpmHsPPCGSFCwsyUJbvApeg5jx8mwOTduKIXEy
 sj+a3Gb+VDrjODvuxEA62+vSHJTPK9gTsaWTQeo4hiERKqbJx+eMzbLYz
 3nPVNWal7BSNtguNLQgZTysA7voRKWbg1bY6W+TH5Z3F4wmt9Eou056GF
 sZEDAYzXyLMZ+Iks7KcbXPSNglNBCoZTZcVxzgd3LW8Mv63jZe3GfDIOT
 xG0ojL/LHXECdr/PSpDQ9wlerwSKpOB5Sn+MbDLA696SezAT0wgXnmpgV
 wY9L7EspKSe+hpByI0re7azuUryxtjbA9guO90h/g6C0dknjzfxDXmyFw
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NycUPX3P
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 16de9af7ca6ea424469aaabe15d66d1d809faad2
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
X-Rspamd-Queue-Id: BF3864D2EB0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.993];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 16de9af7ca6ea424469aaabe15d66d1d809faad2  ixd: add devlink support

elapsed time: 983m

configs tested: 237
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm                                 defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260505    gcc-14.3.0
arm64                 randconfig-001-20260505    gcc-8.5.0
arm64                 randconfig-002-20260505    clang-16
arm64                 randconfig-002-20260505    gcc-14.3.0
arm64                 randconfig-003-20260505    clang-23
arm64                 randconfig-003-20260505    gcc-14.3.0
arm64                 randconfig-004-20260505    clang-23
arm64                 randconfig-004-20260505    gcc-14.3.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260505    gcc-14.3.0
csky                  randconfig-001-20260505    gcc-15.2.0
csky                  randconfig-002-20260505    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    clang-23
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260505    clang-23
hexagon               randconfig-002-20260505    clang-23
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386                 buildonly-randconfig-001    gcc-14
i386        buildonly-randconfig-001-20260505    gcc-14
i386                 buildonly-randconfig-002    gcc-14
i386        buildonly-randconfig-002-20260505    gcc-14
i386                 buildonly-randconfig-003    gcc-14
i386        buildonly-randconfig-003-20260505    gcc-14
i386                 buildonly-randconfig-004    gcc-14
i386        buildonly-randconfig-004-20260505    gcc-14
i386                 buildonly-randconfig-005    gcc-14
i386        buildonly-randconfig-005-20260505    gcc-14
i386                 buildonly-randconfig-006    gcc-14
i386        buildonly-randconfig-006-20260505    gcc-14
i386                                defconfig    clang-20
i386                                defconfig    gcc-15.2.0
i386                           randconfig-001    clang-20
i386                  randconfig-001-20260505    clang-20
i386                  randconfig-001-20260505    gcc-14
i386                           randconfig-002    clang-20
i386                           randconfig-002    gcc-14
i386                  randconfig-002-20260505    clang-20
i386                  randconfig-002-20260505    gcc-14
i386                           randconfig-003    clang-20
i386                           randconfig-003    gcc-14
i386                  randconfig-003-20260505    clang-20
i386                           randconfig-004    clang-20
i386                  randconfig-004-20260505    clang-20
i386                  randconfig-004-20260505    gcc-14
i386                           randconfig-005    clang-20
i386                           randconfig-005    gcc-14
i386                  randconfig-005-20260505    clang-20
i386                           randconfig-006    clang-20
i386                           randconfig-006    gcc-14
i386                  randconfig-006-20260505    clang-20
i386                           randconfig-007    clang-20
i386                           randconfig-007    gcc-14
i386                  randconfig-007-20260505    clang-20
i386                  randconfig-007-20260505    gcc-14
i386                  randconfig-011-20260505    clang-20
i386                  randconfig-012-20260505    clang-20
i386                  randconfig-013-20260505    clang-20
i386                  randconfig-014-20260505    clang-20
i386                  randconfig-015-20260505    clang-20
i386                  randconfig-016-20260505    clang-20
i386                  randconfig-017-20260505    clang-20
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260505    clang-23
loongarch             randconfig-002-20260505    clang-23
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
m68k                                defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260505    clang-23
nios2                 randconfig-002-20260505    clang-23
openrisc                         allmodconfig    clang-23
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                         randconfig-001    gcc-14.3.0
parisc                randconfig-001-20260505    gcc-14.3.0
parisc                         randconfig-002    gcc-14.3.0
parisc                randconfig-002-20260505    gcc-14.3.0
parisc64                            defconfig    clang-19
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc                        randconfig-001    gcc-14.3.0
powerpc               randconfig-001-20260505    gcc-14.3.0
powerpc                        randconfig-002    gcc-14.3.0
powerpc               randconfig-002-20260505    gcc-14.3.0
powerpc                     tqm8541_defconfig    clang-23
powerpc64                      randconfig-001    gcc-14.3.0
powerpc64             randconfig-001-20260505    gcc-14.3.0
powerpc64                      randconfig-002    gcc-14.3.0
powerpc64             randconfig-002-20260505    gcc-14.3.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                          urquell_defconfig    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                          randconfig-001    gcc-15.2.0
sparc                          randconfig-001    gcc-8.5.0
sparc                 randconfig-001-20260505    gcc-14.3.0
sparc                 randconfig-001-20260505    gcc-15.2.0
sparc                          randconfig-002    gcc-15.2.0
sparc                 randconfig-002-20260505    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
sparc64                        randconfig-001    gcc-15.2.0
sparc64                        randconfig-001    gcc-8.5.0
sparc64               randconfig-001-20260505    gcc-15.2.0
sparc64               randconfig-001-20260505    gcc-8.5.0
sparc64                        randconfig-002    clang-23
sparc64                        randconfig-002    gcc-15.2.0
sparc64               randconfig-002-20260505    gcc-11.5.0
sparc64               randconfig-002-20260505    gcc-15.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                             randconfig-001    clang-23
um                             randconfig-001    gcc-15.2.0
um                    randconfig-001-20260505    gcc-13
um                    randconfig-001-20260505    gcc-15.2.0
um                             randconfig-002    clang-23
um                             randconfig-002    gcc-15.2.0
um                    randconfig-002-20260505    gcc-13
um                    randconfig-002-20260505    gcc-15.2.0
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260505    clang-20
x86_64      buildonly-randconfig-002-20260505    clang-20
x86_64      buildonly-randconfig-003-20260505    clang-20
x86_64      buildonly-randconfig-004-20260505    clang-20
x86_64      buildonly-randconfig-005-20260505    clang-20
x86_64      buildonly-randconfig-006-20260505    clang-20
x86_64                              defconfig    gcc-14
x86_64                         randconfig-001    gcc-14
x86_64                randconfig-001-20260505    clang-20
x86_64                         randconfig-002    gcc-14
x86_64                randconfig-002-20260505    clang-20
x86_64                randconfig-002-20260505    gcc-14
x86_64                         randconfig-003    clang-20
x86_64                randconfig-003-20260505    clang-20
x86_64                         randconfig-004    clang-20
x86_64                randconfig-004-20260505    clang-20
x86_64                         randconfig-005    gcc-14
x86_64                randconfig-005-20260505    clang-20
x86_64                         randconfig-006    clang-20
x86_64                randconfig-006-20260505    clang-20
x86_64                randconfig-011-20260505    clang-20
x86_64                randconfig-012-20260505    clang-20
x86_64                randconfig-013-20260505    clang-20
x86_64                randconfig-014-20260505    clang-20
x86_64                randconfig-015-20260505    clang-20
x86_64                randconfig-016-20260505    clang-20
x86_64                randconfig-071-20260505    clang-20
x86_64                randconfig-072-20260505    clang-20
x86_64                randconfig-073-20260505    clang-20
x86_64                randconfig-074-20260505    clang-20
x86_64                randconfig-075-20260505    clang-20
x86_64                randconfig-076-20260505    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-23
xtensa                         randconfig-001    gcc-15.2.0
xtensa                         randconfig-001    gcc-8.5.0
xtensa                randconfig-001-20260505    gcc-15.2.0
xtensa                randconfig-001-20260505    gcc-8.5.0
xtensa                         randconfig-002    gcc-15.2.0
xtensa                         randconfig-002    gcc-8.5.0
xtensa                randconfig-002-20260505    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
