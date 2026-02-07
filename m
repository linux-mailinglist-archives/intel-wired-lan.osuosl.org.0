Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLWtEnCTh2kYaAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Feb 2026 20:33:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC547106FA8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Feb 2026 20:33:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E422441A30;
	Sat,  7 Feb 2026 19:33:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YJ_9FRriIqbM; Sat,  7 Feb 2026 19:32:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C75FC4197D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770492779;
	bh=WIkFPJm5XQ70zQhMADL3k5uMDosRltDTC+JUs1R6CqY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=n13xGnOkA9akW0ceBVA9zxNPoqXbCYnNT4nxUn/pQiA+rE/6o7XijNQFCsy4xhBHq
	 uKMKj4e4YPDDVhyJI0pW+SyXJ+EnWQx/aUVxyW+j5joQbfHLmYWjj+QcuQ/Wv57Y7N
	 KU65mc4q7jbJEnAmDzWw79tWD9ZCnI4Jle72ripnM0MHgaCPMV/9WGIr+8tqTqyhXA
	 qkSrVjjdBrVT5q7z1LijVHF8bLigWNQPpRs0JY+6pI4Wm3ByM6JYJ27u8bxC71BwQ4
	 PuEIHVQOJAzYWXFNT3dBteF1ztAdDYMIqiPXq5mAimx4V3ISFXcAE+6c4KfOQQMPrO
	 TGj4RjABmkhow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C75FC4197D;
	Sat,  7 Feb 2026 19:32:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A1EF2C5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 19:32:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5EB6383EEF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 19:32:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tv6codmDBI6y for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Feb 2026 19:32:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0118C83ED3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0118C83ED3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0118C83ED3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 19:32:56 +0000 (UTC)
X-CSE-ConnectionGUID: mTt5WJPRTNOlBxSeH3JtYQ==
X-CSE-MsgGUID: yXdsmZFDRwKK02dQEVAy5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11694"; a="75515401"
X-IronPort-AV: E=Sophos;i="6.21,278,1763452800"; d="scan'208";a="75515401"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2026 11:32:56 -0800
X-CSE-ConnectionGUID: H+Nf08koTmy0t37AZk2aSQ==
X-CSE-MsgGUID: q3ZrkiboSgGkrg9x7uMnYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,278,1763452800"; d="scan'208";a="211204946"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 07 Feb 2026 11:32:54 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1voo32-00000000lqw-2w1L;
 Sat, 07 Feb 2026 19:32:52 +0000
Date: Sun, 08 Feb 2026 03:32:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602080337.MNvHUKPi-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770492777; x=1802028777;
 h=date:from:to:subject:message-id;
 bh=Uem3vsX3k6c90uYVOT865Th82DD1fZNaCOI+EajrHro=;
 b=kJKf+fw10/n24YFD2LeHM7lsynZ3dlfD1s//rj1Orn0N1mdDNeKbSn7F
 Q5lRgeN+AawhMdsD96b7FctHePSrBBr+YcvKQx62UisqD/hxtFYGHwygw
 WB8fvmB+XSDb6xz7mGHIMmwA0FTSU6Nz3Y2mgMXcNjDTEOPVH5MiXm964
 lPq+C2vqHgG4eXdAxu4MGzppxWLVIJpCWmtSlfqLy+hyfhg0styttpEBu
 eOglL1EdQLQjk4Rjr8ZZx1tZDGjnRU+ZbgA3Z2spk48rVZfq4fr1StZUF
 Tnokdr8ChFELAQ8/kN4IcsY5l9QlqMD8sDaXgFtIRgeq8kNJHwqFw55Cw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kJKf+fw1
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3d088f5cf459c9643faeb4442ff91a5aa319951b
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-0.959];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: DC547106FA8
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 3d088f5cf459c9643faeb4442ff91a5aa319951b  ixgbe: e610: remove redundant assignment

elapsed time: 1332m

configs tested: 300
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    gcc-15.2.0
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              alldefconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                              allyesconfig    gcc-15.2.0
arc                          axs101_defconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260207    gcc-8.5.0
arc                   randconfig-001-20260207    gcc-9.5.0
arc                   randconfig-001-20260208    gcc-12.5.0
arc                   randconfig-002-20260207    gcc-8.5.0
arc                   randconfig-002-20260208    gcc-12.5.0
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                     davinci_all_defconfig    clang-19
arm                                 defconfig    clang-22
arm                                 defconfig    gcc-15.2.0
arm                        mvebu_v7_defconfig    gcc-15.2.0
arm                          pxa168_defconfig    gcc-15.2.0
arm                   randconfig-001-20260207    gcc-10.5.0
arm                   randconfig-001-20260207    gcc-8.5.0
arm                   randconfig-001-20260208    gcc-12.5.0
arm                   randconfig-002-20260207    gcc-12.5.0
arm                   randconfig-002-20260207    gcc-8.5.0
arm                   randconfig-002-20260208    gcc-12.5.0
arm                   randconfig-003-20260207    gcc-8.5.0
arm                   randconfig-003-20260208    gcc-12.5.0
arm                   randconfig-004-20260207    gcc-8.5.0
arm                   randconfig-004-20260208    gcc-12.5.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260207    clang-22
arm64                 randconfig-001-20260207    gcc-15.2.0
arm64                 randconfig-001-20260208    gcc-15.2.0
arm64                 randconfig-002-20260207    clang-22
arm64                 randconfig-002-20260207    gcc-15.2.0
arm64                 randconfig-002-20260208    gcc-15.2.0
arm64                 randconfig-003-20260207    gcc-14.3.0
arm64                 randconfig-003-20260207    gcc-15.2.0
arm64                 randconfig-003-20260208    gcc-15.2.0
arm64                 randconfig-004-20260207    gcc-14.3.0
arm64                 randconfig-004-20260207    gcc-15.2.0
arm64                 randconfig-004-20260208    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260207    gcc-15.2.0
csky                  randconfig-001-20260208    gcc-15.2.0
csky                  randconfig-002-20260207    gcc-15.2.0
csky                  randconfig-002-20260208    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    clang-22
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260207    clang-22
hexagon               randconfig-002-20260207    clang-18
hexagon               randconfig-002-20260207    clang-22
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260207    clang-20
i386        buildonly-randconfig-001-20260207    gcc-14
i386        buildonly-randconfig-002-20260207    clang-20
i386        buildonly-randconfig-003-20260207    clang-20
i386        buildonly-randconfig-004-20260207    clang-20
i386        buildonly-randconfig-005-20260207    clang-20
i386        buildonly-randconfig-006-20260207    clang-20
i386                                defconfig    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260207    clang-20
i386                  randconfig-002-20260207    clang-20
i386                  randconfig-003-20260207    clang-20
i386                  randconfig-004-20260207    clang-20
i386                  randconfig-005-20260207    clang-20
i386                  randconfig-006-20260207    clang-20
i386                  randconfig-007-20260207    clang-20
i386                  randconfig-011-20260207    clang-20
i386                  randconfig-011-20260207    gcc-14
i386                  randconfig-012-20260207    clang-20
i386                  randconfig-012-20260207    gcc-14
i386                  randconfig-013-20260207    clang-20
i386                  randconfig-013-20260207    gcc-12
i386                  randconfig-014-20260207    clang-20
i386                  randconfig-015-20260207    clang-20
i386                  randconfig-015-20260207    gcc-14
i386                  randconfig-016-20260207    clang-20
i386                  randconfig-017-20260207    clang-20
i386                  randconfig-017-20260207    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260207    clang-22
loongarch             randconfig-001-20260207    gcc-13.4.0
loongarch             randconfig-002-20260207    clang-22
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                       bvme6000_defconfig    gcc-15.2.0
m68k                                defconfig    clang-19
m68k                                defconfig    gcc-15.2.0
m68k                            mac_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                           ip32_defconfig    clang-22
mips                      loongson1_defconfig    gcc-15.2.0
mips                      malta_kvm_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260207    clang-22
nios2                 randconfig-001-20260207    gcc-10.5.0
nios2                 randconfig-002-20260207    clang-22
nios2                 randconfig-002-20260207    gcc-11.5.0
openrisc                         allmodconfig    clang-22
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
openrisc                  or1klitex_defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260207    gcc-14.3.0
parisc                randconfig-002-20260207    gcc-14.3.0
parisc                randconfig-002-20260207    gcc-8.5.0
parisc64                            defconfig    clang-19
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.2.0
powerpc                     kmeter1_defconfig    gcc-15.2.0
powerpc                     mpc512x_defconfig    gcc-15.2.0
powerpc                     powernv_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260207    gcc-10.5.0
powerpc               randconfig-001-20260207    gcc-14.3.0
powerpc               randconfig-002-20260207    gcc-14.3.0
powerpc               randconfig-002-20260207    gcc-15.2.0
powerpc                        warp_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260207    clang-22
powerpc64             randconfig-001-20260207    gcc-14.3.0
powerpc64             randconfig-002-20260207    clang-22
powerpc64             randconfig-002-20260207    gcc-14.3.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260207    clang-18
riscv                 randconfig-001-20260208    clang-22
riscv                 randconfig-002-20260207    clang-22
riscv                 randconfig-002-20260208    clang-22
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260207    gcc-8.5.0
s390                  randconfig-001-20260208    clang-22
s390                  randconfig-002-20260207    gcc-14.3.0
s390                  randconfig-002-20260208    clang-22
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-15.2.0
sh                ecovec24-romimage_defconfig    gcc-15.2.0
sh                            migor_defconfig    gcc-15.2.0
sh                    randconfig-001-20260207    gcc-15.2.0
sh                    randconfig-001-20260208    clang-22
sh                    randconfig-002-20260207    gcc-12.5.0
sh                    randconfig-002-20260208    clang-22
sh                           se7343_defconfig    gcc-15.2.0
sh                        sh7763rdp_defconfig    gcc-15.2.0
sh                            shmin_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260207    gcc-15.2.0
sparc                 randconfig-001-20260207    gcc-8.5.0
sparc                 randconfig-001-20260208    gcc-11.5.0
sparc                 randconfig-002-20260207    gcc-15.2.0
sparc                 randconfig-002-20260208    gcc-11.5.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260207    gcc-14.3.0
sparc64               randconfig-001-20260207    gcc-15.2.0
sparc64               randconfig-001-20260208    gcc-11.5.0
sparc64               randconfig-002-20260207    clang-20
sparc64               randconfig-002-20260207    gcc-15.2.0
sparc64               randconfig-002-20260208    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    clang-22
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260207    clang-22
um                    randconfig-001-20260207    gcc-15.2.0
um                    randconfig-001-20260208    gcc-11.5.0
um                    randconfig-002-20260207    gcc-14
um                    randconfig-002-20260207    gcc-15.2.0
um                    randconfig-002-20260208    gcc-11.5.0
um                           x86_64_defconfig    clang-22
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260207    clang-20
x86_64      buildonly-randconfig-001-20260207    gcc-14
x86_64      buildonly-randconfig-002-20260207    gcc-14
x86_64      buildonly-randconfig-003-20260207    gcc-14
x86_64      buildonly-randconfig-004-20260207    clang-20
x86_64      buildonly-randconfig-004-20260207    gcc-14
x86_64      buildonly-randconfig-005-20260207    clang-20
x86_64      buildonly-randconfig-005-20260207    gcc-14
x86_64      buildonly-randconfig-006-20260207    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260207    clang-20
x86_64                randconfig-001-20260207    gcc-14
x86_64                randconfig-002-20260207    clang-20
x86_64                randconfig-002-20260207    gcc-14
x86_64                randconfig-003-20260207    clang-20
x86_64                randconfig-004-20260207    clang-20
x86_64                randconfig-005-20260207    clang-20
x86_64                randconfig-006-20260207    clang-20
x86_64                randconfig-011-20260207    gcc-14
x86_64                randconfig-011-20260208    clang-20
x86_64                randconfig-012-20260207    gcc-14
x86_64                randconfig-012-20260208    clang-20
x86_64                randconfig-013-20260207    gcc-14
x86_64                randconfig-013-20260208    clang-20
x86_64                randconfig-014-20260207    clang-20
x86_64                randconfig-014-20260207    gcc-14
x86_64                randconfig-014-20260208    clang-20
x86_64                randconfig-015-20260207    gcc-14
x86_64                randconfig-015-20260208    clang-20
x86_64                randconfig-016-20260207    gcc-14
x86_64                randconfig-016-20260208    clang-20
x86_64                randconfig-071-20260207    gcc-14
x86_64                randconfig-072-20260207    clang-20
x86_64                randconfig-072-20260207    gcc-14
x86_64                randconfig-073-20260207    clang-20
x86_64                randconfig-073-20260207    gcc-14
x86_64                randconfig-074-20260207    gcc-13
x86_64                randconfig-074-20260207    gcc-14
x86_64                randconfig-075-20260207    clang-20
x86_64                randconfig-075-20260207    gcc-14
x86_64                randconfig-076-20260207    gcc-14
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
xtensa                randconfig-001-20260207    gcc-15.2.0
xtensa                randconfig-001-20260207    gcc-8.5.0
xtensa                randconfig-001-20260208    gcc-11.5.0
xtensa                randconfig-002-20260207    gcc-15.2.0
xtensa                randconfig-002-20260207    gcc-8.5.0
xtensa                randconfig-002-20260208    gcc-11.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
