Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id bb+5AK1S/2la4wAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 17:28:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AB150045A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 17:28:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8654A42606;
	Sat,  9 May 2026 15:28:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xgFYKadnNoPJ; Sat,  9 May 2026 15:28:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BDEE42604
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778340521;
	bh=0UJx0om5NTkq7/MzKiY3hhy1MTHtHvvofzN2bfpeQIc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8LKcbNEI0VdZhoViN2EZfTPmpb26Fk9kHDVULYI83+GDeHyG6dxO4G7m8FnteDUf7
	 Ma0LWjca0rWrfyhqv9CD1eNnhXoe382K19n7sE97QE3pxsHngJTam+sduEDMz6uL1n
	 dSPNxAlSjxvD+1+5t4d9CCgfm7FUnATILXsTbPUDk7kiWLhdngfWGob52HjreM9FdQ
	 Lthe2gS26sHWklr+c/Z0C1xR7Do3vYPMdR7y1muV2Gz9RaQTYlr/gBTCz6hg5op55e
	 Jm8RmIEOsnEKgFWcId4mrngQAr774XvhlqOFmD72Bskr0Hw5ttK582yNSEVHimekDd
	 aW/hVcrgvowTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BDEE42604;
	Sat,  9 May 2026 15:28:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6421A22F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 May 2026 15:28:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 610AC84DD4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 May 2026 15:28:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ey513hGeFBzk for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 May 2026 15:28:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A2EE484D77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2EE484D77
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2EE484D77
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 May 2026 15:28:37 +0000 (UTC)
X-CSE-ConnectionGUID: CNsF7SEhT1GmCOa+n/kPXA==
X-CSE-MsgGUID: uhr6TIm6Q6aY9tIYO/H4KQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11781"; a="79478449"
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="79478449"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2026 08:28:37 -0700
X-CSE-ConnectionGUID: dZLlqN2uQXyu0kb9AboMPQ==
X-CSE-MsgGUID: dWJZ7YOzS+WhrC4dH7nPKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="236972592"
Received: from lkp-server01.sh.intel.com (HELO 82327192134e) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 09 May 2026 08:28:36 -0700
Received: from kbuild by 82327192134e with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wLjbV-0000000017L-3jss;
 Sat, 09 May 2026 15:28:33 +0000
Date: Sat, 09 May 2026 23:27:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605092352.8IVOISBD-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778340519; x=1809876519;
 h=date:from:to:subject:message-id;
 bh=4AVo1BzzLxOdRJ4vBQ8PBO9JMVrV+gNBRkIZIZG+85M=;
 b=mg+h1Mr5ijoqpLVF0JNOjxP3iXVxkQEcJ6GI4TUJmJ4xDEhgh9GeDUNz
 2h3hDDjIHsIuNZSe3V2pMlTi83E0ElX0ErY5WKYYKzpwbwSl8Y+yHpt73
 k06AfBMX+vjVCDjIuEwGd6j8gX+66miR/meJBPMYdj2g6A2EGLwPgYg8y
 skg3hEkGZf2jmuwrr4CBJigOi2FCakxvvgNZB4RwY8c+0IvgfwAoNvjDm
 skrNTpXZhRbA89PHILZa+DK4zMUAOxonnJu5RlCqNTV8AkjIX1I5Vmr48
 xT4W2ffN1UIQRC5Gdr2UEaoHsTemHbGQ2H7aVdgZqaaA8fSD0YfhSitjG
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mg+h1Mr5
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 c7ea0d2b4d76bf70bd5f108fa07506640b78ce05
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
X-Rspamd-Queue-Id: 18AB150045A
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
	NEURAL_HAM(-0.00)[-0.986];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: c7ea0d2b4d76bf70bd5f108fa07506640b78ce05  sctp: Fix typo in comment

elapsed time: 760m

configs tested: 272
configs skipped: 60

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
arc                            randconfig-001    gcc-8.5.0
arc                   randconfig-001-20260509    gcc-8.5.0
arc                   randconfig-001-20260509    gcc-9.5.0
arc                            randconfig-002    gcc-8.5.0
arc                   randconfig-002-20260509    gcc-8.5.0
arc                   randconfig-002-20260509    gcc-9.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                            randconfig-001    gcc-8.5.0
arm                   randconfig-001-20260509    gcc-8.5.0
arm                   randconfig-001-20260509    gcc-9.5.0
arm                            randconfig-002    gcc-8.5.0
arm                   randconfig-002-20260509    gcc-8.5.0
arm                   randconfig-002-20260509    gcc-9.5.0
arm                            randconfig-003    gcc-8.5.0
arm                   randconfig-003-20260509    gcc-8.5.0
arm                   randconfig-003-20260509    gcc-9.5.0
arm                            randconfig-004    gcc-8.5.0
arm                   randconfig-004-20260509    gcc-8.5.0
arm                   randconfig-004-20260509    gcc-9.5.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260509    gcc-10.5.0
arm64                 randconfig-002-20260509    gcc-10.5.0
arm64                 randconfig-003-20260509    gcc-10.5.0
arm64                 randconfig-004-20260509    gcc-10.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260509    gcc-10.5.0
csky                  randconfig-002-20260509    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon                        randconfig-001    gcc-11.5.0
hexagon               randconfig-001-20260509    clang-17
hexagon               randconfig-001-20260509    gcc-11.5.0
hexagon                        randconfig-002    gcc-11.5.0
hexagon               randconfig-002-20260509    clang-17
hexagon               randconfig-002-20260509    gcc-11.5.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260509    gcc-14
i386        buildonly-randconfig-002-20260509    gcc-14
i386        buildonly-randconfig-003-20260509    gcc-14
i386        buildonly-randconfig-004-20260509    gcc-14
i386        buildonly-randconfig-005-20260509    gcc-14
i386        buildonly-randconfig-006-20260509    gcc-14
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260509    clang-20
i386                           randconfig-002    gcc-14
i386                  randconfig-002-20260509    clang-20
i386                           randconfig-003    gcc-14
i386                  randconfig-003-20260509    clang-20
i386                  randconfig-004-20260509    clang-20
i386                           randconfig-005    gcc-14
i386                  randconfig-005-20260509    clang-20
i386                           randconfig-006    gcc-14
i386                  randconfig-006-20260509    clang-20
i386                           randconfig-007    gcc-14
i386                  randconfig-007-20260509    clang-20
i386                  randconfig-007-20260509    gcc-14
i386                           randconfig-011    gcc-14
i386                  randconfig-011-20260509    gcc-14
i386                           randconfig-012    gcc-14
i386                  randconfig-012-20260509    gcc-14
i386                           randconfig-013    gcc-14
i386                  randconfig-013-20260509    gcc-14
i386                           randconfig-014    gcc-14
i386                  randconfig-014-20260509    gcc-14
i386                           randconfig-015    gcc-14
i386                  randconfig-015-20260509    gcc-14
i386                           randconfig-016    gcc-14
i386                  randconfig-016-20260509    gcc-14
i386                           randconfig-017    gcc-14
i386                  randconfig-017-20260509    gcc-14
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch                      randconfig-001    gcc-11.5.0
loongarch             randconfig-001-20260509    clang-17
loongarch             randconfig-001-20260509    gcc-11.5.0
loongarch             randconfig-001-20260509    gcc-15.2.0
loongarch                      randconfig-002    gcc-11.5.0
loongarch             randconfig-002-20260509    clang-17
loongarch             randconfig-002-20260509    gcc-11.5.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
m68k                        m5407c3_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                          eyeq5_defconfig    gcc-15.2.0
mips                           ip32_defconfig    clang-23
mips                    maltaup_xpa_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                          randconfig-001    gcc-11.5.0
nios2                 randconfig-001-20260509    clang-17
nios2                 randconfig-001-20260509    gcc-11.5.0
nios2                 randconfig-001-20260509    gcc-15.2.0
nios2                          randconfig-002    gcc-11.5.0
nios2                 randconfig-002-20260509    clang-17
nios2                 randconfig-002-20260509    gcc-11.5.0
nios2                 randconfig-002-20260509    gcc-15.2.0
openrisc                         allmodconfig    clang-23
openrisc                         allmodconfig    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                         randconfig-001    gcc-11.5.0
parisc                randconfig-001-20260509    gcc-11.5.0
parisc                         randconfig-002    gcc-11.5.0
parisc                randconfig-002-20260509    gcc-11.5.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc                       eiger_defconfig    clang-23
powerpc                      ppc64e_defconfig    gcc-15.2.0
powerpc                        randconfig-001    gcc-11.5.0
powerpc               randconfig-001-20260509    gcc-11.5.0
powerpc                        randconfig-002    gcc-11.5.0
powerpc               randconfig-002-20260509    gcc-11.5.0
powerpc64                      randconfig-001    gcc-11.5.0
powerpc64             randconfig-001-20260509    gcc-11.5.0
powerpc64                      randconfig-002    gcc-11.5.0
powerpc64             randconfig-002-20260509    gcc-11.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260509    clang-23
riscv                 randconfig-002-20260509    clang-23
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260509    clang-23
s390                  randconfig-002-20260509    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                        dreamcast_defconfig    gcc-15.2.0
sh                    randconfig-001-20260509    clang-23
sh                    randconfig-002-20260509    clang-23
sh                             shx3_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                          randconfig-001    clang-23
sparc                 randconfig-001-20260509    clang-23
sparc                          randconfig-002    clang-23
sparc                 randconfig-002-20260509    clang-23
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64                        randconfig-001    clang-23
sparc64               randconfig-001-20260509    clang-23
sparc64                        randconfig-002    clang-23
sparc64               randconfig-002-20260509    clang-23
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                             randconfig-001    clang-23
um                    randconfig-001-20260509    clang-23
um                             randconfig-002    clang-23
um                    randconfig-002-20260509    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260509    clang-20
x86_64      buildonly-randconfig-002-20260509    clang-20
x86_64      buildonly-randconfig-003-20260509    clang-20
x86_64      buildonly-randconfig-004-20260509    clang-20
x86_64      buildonly-randconfig-005-20260509    clang-20
x86_64      buildonly-randconfig-006-20260509    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                         randconfig-001    clang-20
x86_64                         randconfig-001    gcc-14
x86_64                randconfig-001-20260509    clang-20
x86_64                randconfig-001-20260509    gcc-14
x86_64                         randconfig-002    clang-20
x86_64                         randconfig-002    gcc-14
x86_64                randconfig-002-20260509    clang-20
x86_64                randconfig-002-20260509    gcc-14
x86_64                         randconfig-003    clang-20
x86_64                randconfig-003-20260509    clang-20
x86_64                randconfig-003-20260509    gcc-14
x86_64                         randconfig-004    clang-20
x86_64                randconfig-004-20260509    clang-20
x86_64                randconfig-004-20260509    gcc-14
x86_64                         randconfig-005    clang-20
x86_64                         randconfig-005    gcc-14
x86_64                randconfig-005-20260509    clang-20
x86_64                randconfig-005-20260509    gcc-14
x86_64                         randconfig-006    clang-20
x86_64                randconfig-006-20260509    clang-20
x86_64                randconfig-006-20260509    gcc-14
x86_64                randconfig-011-20260509    gcc-14
x86_64                randconfig-012-20260509    gcc-14
x86_64                randconfig-013-20260509    gcc-14
x86_64                randconfig-014-20260509    gcc-14
x86_64                randconfig-015-20260509    gcc-14
x86_64                randconfig-016-20260509    gcc-14
x86_64                randconfig-071-20260509    clang-20
x86_64                randconfig-071-20260509    gcc-14
x86_64                randconfig-072-20260509    clang-20
x86_64                randconfig-072-20260509    gcc-14
x86_64                randconfig-073-20260509    clang-20
x86_64                randconfig-074-20260509    clang-20
x86_64                randconfig-075-20260509    clang-20
x86_64                randconfig-076-20260509    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-23
xtensa                           allyesconfig    gcc-11.5.0
xtensa                         randconfig-001    clang-23
xtensa                randconfig-001-20260509    clang-23
xtensa                         randconfig-002    clang-23
xtensa                randconfig-002-20260509    clang-23

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
