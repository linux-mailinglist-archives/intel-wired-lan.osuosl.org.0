Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sFZzAvmyMWozpQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 22:32:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 491616953E1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 22:32:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=Xvse8OCp;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C909B60B9D;
	Tue, 16 Jun 2026 20:32:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OF8g7uSKa2qL; Tue, 16 Jun 2026 20:32:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB2B760B93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781641973;
	bh=oShbI7WT/7li5J+3NJ99s3z7qaNyGYLw3pl5dx+ggkg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Xvse8OCpY/qqvPfEmvMygBjMKe2YlPjZaRMGDQV2KffFDMuRUhSYuhOwcfPf6Qm8d
	 bRN9fbuGVmz23RbcBVn6Dz4TVMjWXYwKO/vMRT/dnLLskHmYrCJK3/E8UpsJOoRd+O
	 Fi5Na0mNAJ10pOKHi6AH4Dk35NJg9qP8Zbt1tYhEuFeTs7teo+vJugqm6ryjWjY0T3
	 98fYPqTN3YCdUiex1Heh+AHynU8KqlPOCqUEN6HAfBElT8VGc7YmIOBam+93wswJwE
	 j/7NoRHEaPXdfXlcqV8QYEvrXIK3zTtyMnWK0r5XIQ9w+zxlPBagS9qpRgDXQPDWo3
	 WAGS7Nn2TV6ug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB2B760B93;
	Tue, 16 Jun 2026 20:32:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E5601793
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 20:32:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA79884E73
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 20:32:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uf5ZmBBEFrYW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 20:32:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5760784E83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5760784E83
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5760784E83
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 20:32:50 +0000 (UTC)
X-CSE-ConnectionGUID: Ifp4j23hS9OzbtoGPgHOag==
X-CSE-MsgGUID: Ew56hKQ3RIap7LJc5upCCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93541417"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93541417"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:32:50 -0700
X-CSE-ConnectionGUID: iv36xSzVR1+zcdjw3JZQDw==
X-CSE-MsgGUID: U3H/b5YyTWq8+OwVNG60sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="252982993"
Received: from lkp-server01.sh.intel.com (HELO f0d55cb201f0) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 16 Jun 2026 13:32:48 -0700
Received: from kbuild by f0d55cb201f0 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wZaSj-00000000TiC-3sP6;
 Tue, 16 Jun 2026 20:32:45 +0000
Date: Wed, 17 Jun 2026 04:32:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606170412.MbPWZxkt-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781641970; x=1813177970;
 h=date:from:to:subject:message-id;
 bh=O9ItowGSbNnwSZA7ttleWsJ4KBcgM2+EQD5PD2bT8KE=;
 b=Z16kkrZ40KC67mVicYlm7eRjKl1FmWxOq3GbuCjTrdhDQA81JkQUpgT0
 7A4QZpcnuYsCnPFtRAhVcBmzIF4UOjDrsmQ9KhgY26nFm0n6W+VPAYvgi
 JdcNl/oHJ0nep0MLEFbPmf+fhezFjwLkFDXz7AfLwYVgN1Et2F6MA3WaY
 qD5qziC5kcWdASJoef7RBT+wPtf+XOp12TP3huMZ1ZI/YY9vmsfQSXb3K
 l5Y8HjISR1ChyGb8r7+dDRnFm6Kr/JBCSXNJpuDeEKjSJJXIR8x17273b
 4HHtIBrgb8laIOXs6M2X7V+YSq0u5+gvK+tw4DlopnofqusUbqIKyzcer
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z16kkrZ4
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 0399e685927a4d1bc310771735b0c8780ddf1cab
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,intel.com:mid,intel.com:from_mime];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 491616953E1

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 0399e685927a4d1bc310771735b0c8780ddf1cab  Merge branch 'selftests-vsock-improve-vng-version-and-quirk-handling'

elapsed time: 747m

configs tested: 271
configs skipped: 21

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                            randconfig-001    gcc-8.5.0
arc                   randconfig-001-20260616    gcc-9.5.0
arc                   randconfig-001-20260617    gcc-16.1.0
arc                            randconfig-002    gcc-8.5.0
arc                   randconfig-002-20260616    gcc-8.5.0
arc                   randconfig-002-20260617    gcc-10.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    clang-23
arm                         lpc18xx_defconfig    clang-23
arm                            randconfig-001    gcc-16.1.0
arm                   randconfig-001-20260616    gcc-15.2.0
arm                   randconfig-001-20260617    clang-23
arm                            randconfig-002    gcc-15.2.0
arm                   randconfig-002-20260616    clang-23
arm                   randconfig-002-20260617    clang-23
arm                            randconfig-003    clang-23
arm                   randconfig-003-20260616    gcc-8.5.0
arm                   randconfig-003-20260617    clang-17
arm                            randconfig-004    gcc-13.4.0
arm                   randconfig-004-20260616    clang-20
arm                   randconfig-004-20260617    gcc-12.5.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                          randconfig-001    gcc-14.3.0
arm64                 randconfig-001-20260616    gcc-8.5.0
arm64                          randconfig-002    gcc-8.5.0
arm64                 randconfig-002-20260616    gcc-15.2.0
arm64                          randconfig-003    clang-20
arm64                 randconfig-003-20260616    gcc-13.4.0
arm64                          randconfig-004    clang-23
arm64                 randconfig-004-20260616    gcc-11.5.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                           randconfig-001    gcc-13.4.0
csky                  randconfig-001-20260616    gcc-15.2.0
csky                           randconfig-002    gcc-14.3.0
csky                  randconfig-002-20260616    gcc-13.4.0
hexagon                          allmodconfig    clang-23
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260616    clang-23
hexagon               randconfig-001-20260617    clang-22
hexagon               randconfig-002-20260616    clang-23
hexagon               randconfig-002-20260617    clang-17
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260616    gcc-14
i386        buildonly-randconfig-002-20260616    clang-22
i386        buildonly-randconfig-003-20260616    gcc-14
i386        buildonly-randconfig-004-20260616    gcc-14
i386        buildonly-randconfig-005-20260616    gcc-14
i386        buildonly-randconfig-006-20260616    gcc-14
i386                                defconfig    clang-22
i386                           randconfig-001    clang-22
i386                  randconfig-001-20260616    clang-22
i386                           randconfig-002    gcc-14
i386                  randconfig-002-20260616    gcc-14
i386                           randconfig-003    gcc-14
i386                  randconfig-003-20260616    clang-22
i386                           randconfig-004    clang-22
i386                  randconfig-004-20260616    gcc-14
i386                           randconfig-005    gcc-14
i386                  randconfig-005-20260616    gcc-14
i386                           randconfig-006    gcc-14
i386                  randconfig-006-20260616    clang-22
i386                           randconfig-007    gcc-14
i386                  randconfig-007-20260616    gcc-14
i386                  randconfig-011-20260616    gcc-14
i386                  randconfig-012-20260616    gcc-14
i386                  randconfig-013-20260616    gcc-14
i386                  randconfig-014-20260616    gcc-14
i386                  randconfig-015-20260616    gcc-14
i386                  randconfig-016-20260616    clang-22
i386                  randconfig-017-20260616    clang-22
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-20
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch             randconfig-001-20260616    gcc-13.4.0
loongarch             randconfig-001-20260617    gcc-16.1.0
loongarch             randconfig-002-20260616    clang-18
loongarch             randconfig-002-20260617    clang-23
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    clang-23
m68k                                defconfig    gcc-16.1.0
m68k                          sun3x_defconfig    gcc-16.1.0
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    clang-23
microblaze                          defconfig    gcc-16.1.0
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
mips                      malta_kvm_defconfig    gcc-16.1.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-23
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260616    gcc-9.5.0
nios2                 randconfig-001-20260617    gcc-8.5.0
nios2                 randconfig-002-20260616    gcc-8.5.0
nios2                 randconfig-002-20260617    gcc-8.5.0
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                         randconfig-001    gcc-8.5.0
parisc                randconfig-001-20260616    gcc-12.5.0
parisc                randconfig-001-20260617    gcc-13.4.0
parisc                randconfig-001-20260617    gcc-15.2.0
parisc                         randconfig-002    gcc-12.5.0
parisc                randconfig-002-20260616    gcc-8.5.0
parisc                randconfig-002-20260617    gcc-15.2.0
parisc64                            defconfig    clang-23
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-16.1.0
powerpc                 mpc836x_rdk_defconfig    clang-23
powerpc                        randconfig-001    gcc-10.5.0
powerpc               randconfig-001-20260616    gcc-8.5.0
powerpc               randconfig-001-20260617    gcc-14.3.0
powerpc               randconfig-001-20260617    gcc-15.2.0
powerpc                        randconfig-002    gcc-8.5.0
powerpc               randconfig-002-20260616    clang-20
powerpc               randconfig-002-20260617    gcc-15.2.0
powerpc64                      randconfig-001    clang-16
powerpc64             randconfig-001-20260616    gcc-10.5.0
powerpc64             randconfig-001-20260617    gcc-15.2.0
powerpc64             randconfig-001-20260617    gcc-8.5.0
powerpc64                      randconfig-002    clang-23
powerpc64             randconfig-002-20260616    gcc-15.2.0
powerpc64             randconfig-002-20260617    gcc-15.2.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                          randconfig-001    gcc-13.4.0
riscv                 randconfig-001-20260616    gcc-9.5.0
riscv                 randconfig-001-20260617    gcc-16.1.0
riscv                          randconfig-002    clang-23
riscv                 randconfig-002-20260616    clang-23
riscv                 randconfig-002-20260617    gcc-16.1.0
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                           randconfig-001    gcc-15.2.0
s390                  randconfig-001-20260616    clang-23
s390                  randconfig-001-20260617    gcc-16.1.0
s390                           randconfig-002    clang-18
s390                  randconfig-002-20260616    clang-18
s390                  randconfig-002-20260617    gcc-16.1.0
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-16.1.0
sh                             randconfig-001    gcc-14.3.0
sh                    randconfig-001-20260616    gcc-16.1.0
sh                    randconfig-001-20260617    gcc-16.1.0
sh                             randconfig-002    gcc-9.5.0
sh                    randconfig-002-20260616    gcc-13.4.0
sh                    randconfig-002-20260617    gcc-16.1.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260616    gcc-16.1.0
sparc                 randconfig-002-20260616    gcc-8.5.0
sparc                 randconfig-002-20260617    gcc-16.1.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64               randconfig-001-20260616    gcc-8.5.0
sparc64               randconfig-002-20260616    gcc-8.5.0
um                               allmodconfig    clang-23
um                                allnoconfig    clang-16
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260616    gcc-14
um                    randconfig-002-20260616    gcc-12
um                    randconfig-002-20260617    gcc-14
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64      buildonly-randconfig-001-20260616    gcc-14
x86_64      buildonly-randconfig-001-20260617    clang-22
x86_64      buildonly-randconfig-002-20260616    gcc-14
x86_64      buildonly-randconfig-002-20260617    clang-22
x86_64      buildonly-randconfig-003-20260616    gcc-12
x86_64      buildonly-randconfig-003-20260617    clang-22
x86_64      buildonly-randconfig-004-20260616    gcc-12
x86_64      buildonly-randconfig-004-20260617    clang-22
x86_64      buildonly-randconfig-005-20260616    gcc-14
x86_64      buildonly-randconfig-005-20260617    clang-22
x86_64      buildonly-randconfig-006-20260616    gcc-14
x86_64      buildonly-randconfig-006-20260617    clang-22
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260616    clang-22
x86_64                randconfig-002-20260616    clang-22
x86_64                randconfig-003-20260616    clang-22
x86_64                randconfig-004-20260616    gcc-14
x86_64                randconfig-005-20260616    clang-22
x86_64                randconfig-006-20260616    clang-22
x86_64                         randconfig-011    gcc-14
x86_64                randconfig-011-20260616    gcc-14
x86_64                randconfig-011-20260617    clang-22
x86_64                         randconfig-012    gcc-14
x86_64                randconfig-012-20260616    gcc-14
x86_64                randconfig-012-20260617    clang-22
x86_64                         randconfig-013    clang-22
x86_64                randconfig-013-20260616    clang-22
x86_64                randconfig-013-20260617    clang-22
x86_64                         randconfig-014    gcc-14
x86_64                randconfig-014-20260616    clang-22
x86_64                randconfig-014-20260617    clang-22
x86_64                         randconfig-015    gcc-14
x86_64                randconfig-015-20260616    clang-22
x86_64                randconfig-015-20260617    clang-22
x86_64                         randconfig-016    clang-22
x86_64                randconfig-016-20260616    gcc-14
x86_64                randconfig-016-20260617    clang-22
x86_64                         randconfig-071    gcc-14
x86_64                randconfig-071-20260616    gcc-14
x86_64                         randconfig-072    gcc-14
x86_64                randconfig-072-20260616    clang-22
x86_64                         randconfig-073    clang-22
x86_64                randconfig-073-20260616    gcc-14
x86_64                         randconfig-074    gcc-14
x86_64                randconfig-074-20260616    gcc-14
x86_64                         randconfig-075    gcc-13
x86_64                randconfig-075-20260616    gcc-12
x86_64                         randconfig-076    clang-22
x86_64                randconfig-076-20260616    gcc-14
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-16.1.0
xtensa                           allyesconfig    gcc-16.1.0
xtensa                       common_defconfig    gcc-16.1.0
xtensa                randconfig-001-20260616    gcc-14.3.0
xtensa                randconfig-001-20260617    gcc-8.5.0
xtensa                randconfig-002-20260616    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
