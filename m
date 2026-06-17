Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TEO/BPznMWpZrgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 02:19:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F658695D67
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 02:19:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=5OUUk75h;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F7B480EDB;
	Wed, 17 Jun 2026 00:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1-AqxXpKG39e; Wed, 17 Jun 2026 00:19:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40CFE80EA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781655544;
	bh=fbSFQ65laJQLXFixrmdfv99dSxLsdqKVviAzFeSCaSg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5OUUk75hz082VICgzNLB01m/9CfvRtNlh3Z10Dxar/mFFXLaa73QMvphL6uLhFGY6
	 4qz9/Uj7X6w/rsyvlhQPGvLs/gtBDK2BjeQZMyvDXVyrlGIh91WmFpRE/ZD4RO8LZ4
	 MjSC2gVPnERK2jo4rjqaQooZ5E3y+qP6vT9wg0mo9cPAXk42BeZ4lwF/+ukgPqowPr
	 V2WIpe0cg6eGDqvN3RC4wEk2GTm027uf/2Fr1j0cqPmEFbtN882hrpJf9Bimhexp8B
	 Uh9doraY+7Zmi5+0q0fr7mRzDfR/tWeGB/uE6+dcY0BlRbzvW9XPQKZF201aC0wTf7
	 KohsSBLqeQntA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40CFE80EA3;
	Wed, 17 Jun 2026 00:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D08D33C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 00:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3EA4380D66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 00:19:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W1mji0g4zA9s for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2026 00:19:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 269E680D63
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 269E680D63
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 269E680D63
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 00:19:01 +0000 (UTC)
X-CSE-ConnectionGUID: mC8lE/4wQ3CVVElXYCYcHg==
X-CSE-MsgGUID: e+coCNk7RpCafOEUUgnBQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86357848"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86357848"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 17:18:59 -0700
X-CSE-ConnectionGUID: SWOhpJlfQzupGyOjTY0x7w==
X-CSE-MsgGUID: d9P63IgsQCuaLoxr5he3Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271987988"
Received: from lkp-server01.sh.intel.com (HELO f0d55cb201f0) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 16 Jun 2026 17:18:58 -0700
Received: from kbuild by f0d55cb201f0 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wZdzc-00000000Twc-15FN;
 Wed, 17 Jun 2026 00:18:56 +0000
Date: Wed, 17 Jun 2026 08:18:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606170841.ay9f5Ad2-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781655542; x=1813191542;
 h=date:from:to:subject:message-id;
 bh=Qx53lVPxCX/usXkRP+I7g4HLJv1L8t5YhC2Af9UCSeE=;
 b=FF0krV5KFmC4X/mkNNkwZys7nTT7wCQvqXBdBarcTnTzIRMX7gwYWEll
 BKz7AlZfIVmhePUzQwdanJHYeQBDSh7VvNkrb7lL1bPE4HmpmA8XHwdxW
 jDc5D5V+kpZgLqvS5FfvphwONOb2YmlzrWP+82aVus6clAH3k1jQhVYBI
 CDl8uDrnNPybFNO1glhmP+UjZmsTVZt/S0WOtPd6P3KcioS9U0jFLqBpa
 pxUFj4zg129U33yWX9estS6lpKNNaMPi2dR/I0L//aSCzdabb/2Kj+InH
 +YVdS0UFzClmCz6mVTukCKcSgezQxeKU90WI9dAZzA0gye8EQo/7CW2t+
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FF0krV5K
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 c50bfa9768ff3a5163746c6362a8a910a0b4dca0
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8F658695D67

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: c50bfa9768ff3a5163746c6362a8a910a0b4dca0  ice: refactor ice_sched_cfg_agg to take agg_info pointer

elapsed time: 971m

configs tested: 301
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    clang-23
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    clang-23
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260616    gcc-9.5.0
arc                   randconfig-001-20260617    gcc-16.1.0
arc                   randconfig-002-20260616    gcc-8.5.0
arc                   randconfig-002-20260617    gcc-16.1.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    clang-23
arm                                 defconfig    clang-23
arm                                 defconfig    gcc-16.1.0
arm                         lpc18xx_defconfig    clang-23
arm                   randconfig-001-20260616    gcc-15.2.0
arm                   randconfig-001-20260617    gcc-16.1.0
arm                   randconfig-002-20260616    clang-23
arm                   randconfig-002-20260617    gcc-16.1.0
arm                   randconfig-003-20260616    gcc-8.5.0
arm                   randconfig-003-20260617    gcc-16.1.0
arm                   randconfig-004-20260616    clang-20
arm                   randconfig-004-20260617    gcc-16.1.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                          randconfig-001    gcc-14.3.0
arm64                 randconfig-001-20260616    gcc-8.5.0
arm64                 randconfig-001-20260617    gcc-12.5.0
arm64                          randconfig-002    gcc-8.5.0
arm64                 randconfig-002-20260616    gcc-15.2.0
arm64                 randconfig-002-20260617    gcc-12.5.0
arm64                          randconfig-003    clang-20
arm64                 randconfig-003-20260616    gcc-13.4.0
arm64                 randconfig-003-20260617    gcc-12.5.0
arm64                          randconfig-004    clang-23
arm64                 randconfig-004-20260616    gcc-11.5.0
arm64                 randconfig-004-20260617    gcc-12.5.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                           randconfig-001    gcc-13.4.0
csky                  randconfig-001-20260616    gcc-15.2.0
csky                  randconfig-001-20260617    gcc-12.5.0
csky                           randconfig-002    gcc-14.3.0
csky                  randconfig-002-20260616    gcc-13.4.0
csky                  randconfig-002-20260617    gcc-12.5.0
hexagon                          allmodconfig    clang-23
hexagon                          allmodconfig    gcc-16.1.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    clang-23
hexagon                             defconfig    gcc-16.1.0
hexagon               randconfig-001-20260616    clang-23
hexagon               randconfig-001-20260617    clang-17
hexagon               randconfig-002-20260616    clang-23
hexagon               randconfig-002-20260617    clang-17
i386                             allmodconfig    clang-22
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    clang-22
i386        buildonly-randconfig-001-20260616    gcc-14
i386        buildonly-randconfig-002-20260616    clang-22
i386        buildonly-randconfig-003-20260616    gcc-14
i386        buildonly-randconfig-004-20260616    gcc-14
i386        buildonly-randconfig-005-20260616    gcc-14
i386        buildonly-randconfig-006-20260616    gcc-14
i386                                defconfig    clang-22
i386                                defconfig    gcc-16.1.0
i386                  randconfig-001-20260616    clang-22
i386                  randconfig-001-20260617    gcc-13
i386                  randconfig-002-20260616    gcc-14
i386                  randconfig-002-20260617    gcc-13
i386                  randconfig-003-20260616    clang-22
i386                  randconfig-003-20260617    gcc-13
i386                  randconfig-004-20260616    gcc-14
i386                  randconfig-004-20260617    gcc-13
i386                  randconfig-005-20260616    gcc-14
i386                  randconfig-005-20260617    gcc-13
i386                  randconfig-006-20260616    clang-22
i386                  randconfig-006-20260617    gcc-13
i386                  randconfig-007-20260616    gcc-14
i386                  randconfig-007-20260617    gcc-13
i386                  randconfig-011-20260616    gcc-14
i386                  randconfig-011-20260617    clang-22
i386                  randconfig-012-20260616    gcc-14
i386                  randconfig-012-20260617    clang-22
i386                  randconfig-013-20260616    gcc-14
i386                  randconfig-013-20260617    clang-22
i386                  randconfig-014-20260616    gcc-14
i386                  randconfig-014-20260617    clang-22
i386                  randconfig-015-20260616    gcc-14
i386                  randconfig-015-20260617    clang-22
i386                  randconfig-016-20260616    clang-22
i386                  randconfig-016-20260617    clang-22
i386                  randconfig-017-20260616    clang-22
i386                  randconfig-017-20260617    clang-22
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-20
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch             randconfig-001-20260616    gcc-13.4.0
loongarch             randconfig-001-20260617    clang-17
loongarch             randconfig-002-20260616    clang-18
loongarch             randconfig-002-20260617    clang-17
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    clang-23
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    clang-23
m68k                                defconfig    gcc-16.1.0
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    clang-23
microblaze                          defconfig    gcc-16.1.0
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
mips                      malta_kvm_defconfig    gcc-16.1.0
nios2                            allmodconfig    clang-20
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-23
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260616    gcc-9.5.0
nios2                 randconfig-001-20260617    clang-17
nios2                 randconfig-002-20260616    gcc-8.5.0
nios2                 randconfig-002-20260617    clang-17
openrisc                         allmodconfig    clang-20
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    clang-17
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                randconfig-001-20260616    gcc-12.5.0
parisc                randconfig-001-20260617    gcc-15.2.0
parisc                randconfig-002-20260616    gcc-8.5.0
parisc                randconfig-002-20260617    gcc-15.2.0
parisc64                            defconfig    clang-23
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-16.1.0
powerpc                  mpc866_ads_defconfig    clang-17
powerpc               randconfig-001-20260616    gcc-8.5.0
powerpc               randconfig-001-20260617    gcc-15.2.0
powerpc               randconfig-002-20260616    clang-20
powerpc               randconfig-002-20260617    gcc-15.2.0
powerpc64             randconfig-001-20260616    gcc-10.5.0
powerpc64             randconfig-001-20260617    gcc-15.2.0
powerpc64             randconfig-002-20260616    gcc-15.2.0
powerpc64             randconfig-002-20260617    gcc-15.2.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv                 randconfig-001-20260616    gcc-9.5.0
riscv                 randconfig-001-20260617    gcc-16.1.0
riscv                 randconfig-002-20260616    clang-23
riscv                 randconfig-002-20260617    gcc-16.1.0
s390                             allmodconfig    clang-17
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                                defconfig    gcc-16.1.0
s390                  randconfig-001-20260616    clang-23
s390                  randconfig-001-20260617    gcc-16.1.0
s390                  randconfig-002-20260616    clang-18
s390                  randconfig-002-20260617    gcc-16.1.0
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    clang-17
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-16.1.0
sh                    randconfig-001-20260616    gcc-16.1.0
sh                    randconfig-001-20260617    gcc-16.1.0
sh                    randconfig-002-20260616    gcc-13.4.0
sh                    randconfig-002-20260617    gcc-16.1.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260616    gcc-16.1.0
sparc                 randconfig-001-20260617    gcc-16.1.0
sparc                 randconfig-002-20260616    gcc-8.5.0
sparc                 randconfig-002-20260617    gcc-16.1.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260616    gcc-8.5.0
sparc64               randconfig-001-20260617    gcc-16.1.0
sparc64               randconfig-002-20260616    gcc-8.5.0
sparc64               randconfig-002-20260617    gcc-16.1.0
um                               allmodconfig    clang-17
um                               allmodconfig    clang-23
um                                allnoconfig    clang-16
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-16.1.0
um                                  defconfig    clang-23
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260616    gcc-14
um                    randconfig-001-20260617    gcc-16.1.0
um                    randconfig-002-20260616    gcc-12
um                    randconfig-002-20260617    gcc-16.1.0
um                           x86_64_defconfig    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64               buildonly-randconfig-001    gcc-12
x86_64      buildonly-randconfig-001-20260616    gcc-14
x86_64      buildonly-randconfig-001-20260617    clang-22
x86_64               buildonly-randconfig-002    clang-22
x86_64      buildonly-randconfig-002-20260616    gcc-14
x86_64      buildonly-randconfig-002-20260617    clang-22
x86_64               buildonly-randconfig-003    gcc-14
x86_64      buildonly-randconfig-003-20260616    gcc-12
x86_64      buildonly-randconfig-003-20260617    clang-22
x86_64               buildonly-randconfig-004    gcc-14
x86_64      buildonly-randconfig-004-20260616    gcc-12
x86_64      buildonly-randconfig-004-20260617    clang-22
x86_64               buildonly-randconfig-005    gcc-14
x86_64      buildonly-randconfig-005-20260616    gcc-14
x86_64      buildonly-randconfig-005-20260617    clang-22
x86_64               buildonly-randconfig-006    clang-22
x86_64      buildonly-randconfig-006-20260616    gcc-14
x86_64      buildonly-randconfig-006-20260617    clang-22
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                randconfig-001-20260616    clang-22
x86_64                randconfig-001-20260617    clang-22
x86_64                randconfig-002-20260616    clang-22
x86_64                randconfig-002-20260617    clang-22
x86_64                randconfig-003-20260616    clang-22
x86_64                randconfig-003-20260617    clang-22
x86_64                randconfig-004-20260616    gcc-14
x86_64                randconfig-004-20260617    clang-22
x86_64                randconfig-005-20260616    clang-22
x86_64                randconfig-005-20260617    clang-22
x86_64                randconfig-006-20260616    clang-22
x86_64                randconfig-006-20260617    clang-22
x86_64                randconfig-011-20260616    gcc-14
x86_64                randconfig-011-20260617    clang-22
x86_64                randconfig-012-20260616    gcc-14
x86_64                randconfig-012-20260617    clang-22
x86_64                randconfig-013-20260616    clang-22
x86_64                randconfig-013-20260617    clang-22
x86_64                randconfig-014-20260616    clang-22
x86_64                randconfig-014-20260617    clang-22
x86_64                randconfig-015-20260616    clang-22
x86_64                randconfig-015-20260617    clang-22
x86_64                randconfig-016-20260616    gcc-14
x86_64                randconfig-016-20260617    clang-22
x86_64                         randconfig-071    gcc-14
x86_64                randconfig-071-20260616    gcc-14
x86_64                randconfig-071-20260617    clang-22
x86_64                         randconfig-072    gcc-14
x86_64                randconfig-072-20260616    clang-22
x86_64                randconfig-072-20260617    clang-22
x86_64                         randconfig-073    clang-22
x86_64                randconfig-073-20260616    gcc-14
x86_64                randconfig-073-20260617    clang-22
x86_64                         randconfig-074    gcc-14
x86_64                randconfig-074-20260616    gcc-14
x86_64                randconfig-074-20260617    clang-22
x86_64                         randconfig-075    gcc-13
x86_64                randconfig-075-20260616    gcc-12
x86_64                randconfig-075-20260617    clang-22
x86_64                         randconfig-076    clang-22
x86_64                randconfig-076-20260616    gcc-14
x86_64                randconfig-076-20260617    clang-22
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
xtensa                randconfig-001-20260616    gcc-14.3.0
xtensa                randconfig-001-20260617    gcc-16.1.0
xtensa                randconfig-002-20260616    gcc-8.5.0
xtensa                randconfig-002-20260617    gcc-16.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
