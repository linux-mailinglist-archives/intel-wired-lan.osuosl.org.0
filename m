Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jFJNOxSDkGkJagEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Feb 2026 15:13:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DD613C2C8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Feb 2026 15:13:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67748822AE;
	Sat, 14 Feb 2026 14:13:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XoIwJzCYQnJ3; Sat, 14 Feb 2026 14:13:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CDF4822B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771078416;
	bh=hHps6B5gXWvFujwO3m1mVcjyh56uV7AEDJqK9KmARCM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gKvn8oGXl3VLhvRx9Qkjf5T06k8X47Qp5pwHnRNYTqqoE4kix6RyybI6IXAiQYofl
	 A5OMlhjcTsLXsTFv+QjJ0o1+C+tf6kqBIacCUYHqzq3YM6Anx4ZQJ/J3kKIsrr69Xf
	 yd/yBXWYwKeHdNlKyDKo/TBMrlyL4LLt7X0XArA3Keowebsi0xEw9WezqX9iSMyZqA
	 zesGGZs5mRwYKSPGE9BprZooZKsMqvqFDNzE8S5SOjx3NNwYrYWwikr4t8hu1e4nq8
	 GrTnBb9w+LlHsAhMjE358JDsnnGMnWBW8qWppobJVSOV7u0+HGscIgZ0ZwLsbaNtdQ
	 es8pfS3KxDPAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CDF4822B7;
	Sat, 14 Feb 2026 14:13:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C8BD069
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Feb 2026 14:13:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AD4BF4007B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Feb 2026 14:13:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3GuKVXE_dQy8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Feb 2026 14:13:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 447314005C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 447314005C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 447314005C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Feb 2026 14:13:32 +0000 (UTC)
X-CSE-ConnectionGUID: e2tng65uRE6Zp1in0FWYFQ==
X-CSE-MsgGUID: 2TRmo4hOQMS5S1mtC/zzpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11701"; a="72142664"
X-IronPort-AV: E=Sophos;i="6.21,290,1763452800"; d="scan'208";a="72142664"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2026 06:13:32 -0800
X-CSE-ConnectionGUID: cOWSQPbNT6aXiOdonhn/3Q==
X-CSE-MsgGUID: 98h+fPQDQK68SB2AKW0gNw==
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 14 Feb 2026 06:13:31 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vrGOm-00000000wby-3gIR;
 Sat, 14 Feb 2026 14:13:28 +0000
Date: Sat, 14 Feb 2026 22:12:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602142241.RYvBbwYf-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771078414; x=1802614414;
 h=date:from:to:subject:message-id;
 bh=BPJUCafFXMYfFhD7UCHzlpZYYoYaLVFO2ZGjAmSYLh0=;
 b=hTlwUUBylTM1CiAGDzpip6IyYzwmA5mqwNzyD/sgVAjKz6rzxB7Hg9lS
 uNMgqaIOUrZltzZELYp2CQjaGKXJk3mPlxGAcnJlDEfqq0QxPxhZxEyJZ
 mDcriicR8jLO+6rr/nrD6u7yN8V/qs9Rf4V4bG/Q5/SCIUhRCOufKwYSY
 lKIRL1uU9X5V0P2x/8Y3zwsG/HKm9OptlccZS/hiaxw5kRjYU+58o+dC7
 X1JBjTRgxFowNpAjZoBVPre5abZFKvnLEt8tmOP6W19CsjafKEE1Xvb5l
 9RQt2x1CiMnVW/RaQfEfCiZpKVUAO4JrUVTAk9ZwPt/pLcgKHsOPW3ODS
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hTlwUUBy
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 8137e3db7f1c02548b11fd905bdc2cfd5255f6c7
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: A8DD613C2C8
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 8137e3db7f1c02548b11fd905bdc2cfd5255f6c7  ice: use ice_update_eth_stats() for representor stats

elapsed time: 920m

configs tested: 167
configs skipped: 3

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
arc                         haps_hs_defconfig    gcc-15.2.0
arc                   randconfig-001-20260214    gcc-13.4.0
arc                   randconfig-002-20260214    gcc-9.5.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.2.0
arm                          collie_defconfig    gcc-15.2.0
arm                                 defconfig    clang-22
arm                   randconfig-001-20260214    gcc-13.4.0
arm                   randconfig-002-20260214    clang-22
arm                   randconfig-003-20260214    clang-22
arm                   randconfig-004-20260214    gcc-8.5.0
arm                        shmobile_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260214    clang-22
arm64                 randconfig-002-20260214    gcc-8.5.0
arm64                 randconfig-003-20260214    gcc-14.3.0
arm64                 randconfig-004-20260214    gcc-14.3.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260214    gcc-12.5.0
csky                  randconfig-002-20260214    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20260214    clang-22
hexagon               randconfig-002-20260214    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260214    clang-20
i386        buildonly-randconfig-002-20260214    clang-20
i386        buildonly-randconfig-003-20260214    clang-20
i386        buildonly-randconfig-004-20260214    clang-20
i386        buildonly-randconfig-005-20260214    clang-20
i386        buildonly-randconfig-006-20260214    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20260214    clang-20
i386                  randconfig-002-20260214    clang-20
i386                  randconfig-003-20260214    clang-20
i386                  randconfig-004-20260214    gcc-14
i386                  randconfig-005-20260214    clang-20
i386                  randconfig-006-20260214    gcc-14
i386                  randconfig-007-20260214    gcc-14
i386                  randconfig-011-20260214    gcc-14
i386                  randconfig-012-20260214    gcc-14
i386                  randconfig-013-20260214    gcc-14
i386                  randconfig-014-20260214    gcc-14
i386                  randconfig-015-20260214    clang-20
i386                  randconfig-016-20260214    clang-20
i386                  randconfig-017-20260214    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260214    gcc-14.3.0
loongarch             randconfig-002-20260214    clang-22
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
mips                          ath25_defconfig    clang-22
mips                malta_qemu_32r6_defconfig    gcc-15.2.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260214    gcc-10.5.0
nios2                 randconfig-002-20260214    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260214    gcc-9.5.0
parisc                randconfig-002-20260214    gcc-15.2.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260214    clang-18
powerpc               randconfig-002-20260214    clang-22
powerpc                    socrates_defconfig    gcc-15.2.0
powerpc                     tqm8560_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260214    clang-22
powerpc64             randconfig-002-20260214    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20260214    gcc-8.5.0
riscv                 randconfig-002-20260214    gcc-14.3.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                  randconfig-001-20260214    clang-20
s390                  randconfig-002-20260214    gcc-9.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                         ecovec24_defconfig    gcc-15.2.0
sh                    randconfig-001-20260214    gcc-10.5.0
sh                    randconfig-002-20260214    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260214    gcc-8.5.0
sparc                 randconfig-002-20260214    gcc-14.3.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260214    gcc-9.5.0
sparc64               randconfig-002-20260214    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260214    gcc-14
um                    randconfig-002-20260214    clang-22
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260214    gcc-13
x86_64      buildonly-randconfig-002-20260214    gcc-14
x86_64      buildonly-randconfig-003-20260214    clang-20
x86_64      buildonly-randconfig-004-20260214    clang-20
x86_64      buildonly-randconfig-005-20260214    clang-20
x86_64      buildonly-randconfig-006-20260214    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260214    clang-20
x86_64                randconfig-002-20260214    gcc-14
x86_64                randconfig-003-20260214    gcc-14
x86_64                randconfig-004-20260214    gcc-14
x86_64                randconfig-005-20260214    clang-20
x86_64                randconfig-006-20260214    gcc-14
x86_64                randconfig-011-20260214    clang-20
x86_64                randconfig-012-20260214    gcc-14
x86_64                randconfig-013-20260214    gcc-14
x86_64                randconfig-014-20260214    clang-20
x86_64                randconfig-015-20260214    gcc-14
x86_64                randconfig-016-20260214    gcc-14
x86_64                randconfig-071-20260214    clang-20
x86_64                randconfig-072-20260214    clang-20
x86_64                randconfig-073-20260214    clang-20
x86_64                randconfig-074-20260214    clang-20
x86_64                randconfig-075-20260214    gcc-14
x86_64                randconfig-076-20260214    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260214    gcc-15.2.0
xtensa                randconfig-002-20260214    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
