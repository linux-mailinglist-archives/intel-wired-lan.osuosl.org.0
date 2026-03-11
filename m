Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFkMMYWDsWmjCwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 16:00:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FEE265E75
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 16:00:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE32C8462E;
	Wed, 11 Mar 2026 15:00:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iTdm1wCUt_x1; Wed, 11 Mar 2026 15:00:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B19C8462C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773241215;
	bh=YKI2WYC0SizW84ehpKg7PM5/2B0qigK3fqviiX08t4M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4Ra9g60HRFREaNnj2evvcNbWZmj9I+bmcKg48T+M2Dd+X7jYo++NjYFnntuJ0+Hm0
	 LUqj2ahJlSN8epXrS4nSLQ7T/aKgU5aAnuyzj/bqU0hAssNucE24Xt9OYU8f5PBv51
	 lRMXUZ5yyEgof4LkK8TITZFUDD5Hzt/hXOUIrKw69EvG3KU84IhubZYVdMh0mdpDUt
	 lnulBkKUw6JWKfXD89yms4B3ZNpvQflilwJ9NYMOt5nf3G33Mi3bAoeVLo0BphKYr0
	 mFX1RpcfeIleVhsQ9wUWe+kHCgBIlAFUX+VNbz1mmbsW1WeSEstGmGbhDlrF6WJzzq
	 yRPNT7O6GtMRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B19C8462C;
	Wed, 11 Mar 2026 15:00:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7FDD133A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 15:00:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 712C461704
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 15:00:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZkpzZMGp3KTa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 15:00:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 363AE61703
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 363AE61703
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 363AE61703
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 15:00:08 +0000 (UTC)
X-CSE-ConnectionGUID: HigeBDANQ9uUmXgIdda6CA==
X-CSE-MsgGUID: 9c/8IKakSlSHd6plYWBIbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74349691"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74349691"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 08:00:03 -0700
X-CSE-ConnectionGUID: vX4mcBiAS46X5m7afO2MFg==
X-CSE-MsgGUID: a7oL12UWSoKMQq20Pf81cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="219743912"
Received: from lkp-server01.sh.intel.com (HELO 418530b1a366) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 11 Mar 2026 08:00:02 -0700
Received: from kbuild by 418530b1a366 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w0L2V-000000001Jv-2aXm;
 Wed, 11 Mar 2026 14:59:59 +0000
Date: Wed, 11 Mar 2026 22:59:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603112246.3YGy2Et8-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773241211; x=1804777211;
 h=date:from:to:subject:message-id;
 bh=TAqRo11mx7/rVm6upz7cCvwZDNNPXrl7ZE0YIXwmkw4=;
 b=B0rdbo6ugiQRGQQuIYv6kVV5UY7zFoHDBLR35zSCUFLxRJNG2kfy6r4l
 /pew3djaa7g8F9uGTDrklZ/C1mSiLgibINCBlVgFQxcn6KsHhe/dURy1l
 LdxKFPckEC5rFthqag7D71WBuziVq5kpzNWlwYy0Xq1rqhD5ppEItyT5N
 WWCWz5jD7+cgj2ZJZQJdae/WGDg8zwztSHqflgDm5R+FgQ6KTwze7TF8p
 yMT4pG5GVKhx5baEEIeYxeVbRwwScBCntqNj+njbrjTijP/nTmsVfieQn
 gtU6vZPViMCvPCImqJ0DtMypAYjYthd42HZgjbG+fIJrd8HtHMo++MKOR
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B0rdbo6u
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 32dfb5dcb8ba69c1a7ba3ac330758f818a8130cb
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 04FEE265E75
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 32dfb5dcb8ba69c1a7ba3ac330758f818a8130cb  ixgbevf: allow changing MTU when XDP program is attached

elapsed time: 924m

configs tested: 153
configs skipped: 4

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
arc                            hsdk_defconfig    gcc-15.2.0
arc                   randconfig-001-20260311    gcc-14.3.0
arc                   randconfig-002-20260311    gcc-9.5.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm                   randconfig-001-20260311    clang-23
arm                   randconfig-002-20260311    gcc-8.5.0
arm                   randconfig-003-20260311    clang-16
arm                   randconfig-004-20260311    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260311    clang-23
arm64                 randconfig-002-20260311    clang-23
arm64                 randconfig-003-20260311    gcc-12.5.0
arm64                 randconfig-004-20260311    gcc-12.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260311    gcc-11.5.0
csky                  randconfig-002-20260311    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260311    clang-23
hexagon               randconfig-002-20260311    clang-16
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260311    clang-20
i386        buildonly-randconfig-002-20260311    clang-20
i386        buildonly-randconfig-003-20260311    gcc-14
i386        buildonly-randconfig-004-20260311    clang-20
i386        buildonly-randconfig-005-20260311    gcc-14
i386        buildonly-randconfig-006-20260311    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20260311    gcc-14
i386                  randconfig-002-20260311    gcc-14
i386                  randconfig-003-20260311    clang-20
i386                  randconfig-004-20260311    gcc-14
i386                  randconfig-005-20260311    gcc-13
i386                  randconfig-006-20260311    clang-20
i386                  randconfig-007-20260311    clang-20
i386                  randconfig-011-20260311    gcc-14
i386                  randconfig-012-20260311    gcc-14
i386                  randconfig-013-20260311    gcc-14
i386                  randconfig-014-20260311    gcc-14
i386                  randconfig-015-20260311    clang-20
i386                  randconfig-016-20260311    clang-20
i386                  randconfig-017-20260311    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260311    clang-23
loongarch             randconfig-002-20260311    gcc-15.2.0
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
nios2                 randconfig-001-20260311    gcc-8.5.0
nios2                 randconfig-002-20260311    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260311    gcc-14.3.0
parisc                randconfig-002-20260311    gcc-11.5.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260311    gcc-10.5.0
powerpc               randconfig-002-20260311    gcc-8.5.0
powerpc64             randconfig-001-20260311    clang-23
powerpc64             randconfig-002-20260311    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260311    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                  randconfig-001-20260311    gcc-8.5.0
s390                  randconfig-002-20260311    gcc-12.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260311    gcc-15.2.0
sh                    randconfig-002-20260311    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260311    gcc-8.5.0
sparc                 randconfig-002-20260311    gcc-8.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260311    gcc-13.4.0
sparc64               randconfig-002-20260311    gcc-9.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260311    gcc-14
um                    randconfig-002-20260311    clang-18
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260311    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260311    clang-20
x86_64                randconfig-002-20260311    gcc-14
x86_64                randconfig-003-20260311    gcc-14
x86_64                randconfig-004-20260311    gcc-14
x86_64                randconfig-005-20260311    gcc-12
x86_64                randconfig-011-20260311    clang-20
x86_64                randconfig-012-20260311    clang-20
x86_64                randconfig-013-20260311    clang-20
x86_64                randconfig-014-20260311    clang-20
x86_64                randconfig-015-20260311    gcc-14
x86_64                randconfig-016-20260311    gcc-13
x86_64                randconfig-071-20260311    gcc-14
x86_64                randconfig-072-20260311    clang-20
x86_64                randconfig-073-20260311    gcc-13
x86_64                randconfig-074-20260311    gcc-13
x86_64                randconfig-075-20260311    gcc-14
x86_64                randconfig-076-20260311    gcc-13
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    gcc-15.2.0
xtensa                randconfig-001-20260311    gcc-8.5.0
xtensa                randconfig-002-20260311    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
