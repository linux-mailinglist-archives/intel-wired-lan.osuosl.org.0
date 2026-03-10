Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKvEJWTRr2kfcgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 09:08:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5A1246F70
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 09:08:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AF4661518;
	Tue, 10 Mar 2026 08:08:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mhac7kqxC9EC; Tue, 10 Mar 2026 08:08:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88C2C61511
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773130081;
	bh=IPpiGj+K3/bBsYXNBXdbrtJmJHU9AOD0a14qmDhv7uk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=42hpi5PErI0Y7q71HuRrxvtFN+Bww4Lgb/zrYHJ3m7G381Y/px/dpPPnZcEsewp2G
	 TYMu+kRUaUBnlylZvK3ogL77CssX27WXnCNsgZ+vbAqI55Mx/SIYnSAONvLVILdlcc
	 f9wmqz4CswqmBC+y8UMl6o/2fbbTzkMAvts7P7u8w5yVoBQ9Z2McPmVSljFAmjbsO3
	 8aElD58kqwzvFuLCrXPGHvDD/QhBznKSRiXevLOTK4dfhNB6YTbMdcadI+oKKC6U9u
	 qztChvdH3s5uP8j5tnpkcXrnuKczrhAOP9cvf1wFYDy6m48ujGyi6dfN5jIUmKunkR
	 WS30xh/TJsZRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88C2C61511;
	Tue, 10 Mar 2026 08:08:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 643AB201
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 08:08:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 557E740A8E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 08:08:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TAmYUxJ8Rqq8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 08:07:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6448840B09
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6448840B09
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6448840B09
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 08:07:57 +0000 (UTC)
X-CSE-ConnectionGUID: Bvg6vvGATZehZjbMfbGrkw==
X-CSE-MsgGUID: NQH/2X+rSmacEJur9O5z+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="74068557"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="74068557"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 01:07:55 -0700
X-CSE-ConnectionGUID: dwFaLjHxQaeGpQlo2e3MmA==
X-CSE-MsgGUID: Kh6boiDbQz6M+KusaLcXxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="224488850"
Received: from lkp-server01.sh.intel.com (HELO 434e41ea3c86) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 10 Mar 2026 01:07:55 -0700
Received: from kbuild by 434e41ea3c86 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vzs87-000000001Yk-35rx;
 Tue, 10 Mar 2026 08:07:51 +0000
Date: Tue, 10 Mar 2026 16:07:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603101609.qJb67ZXz-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773130079; x=1804666079;
 h=date:from:to:subject:message-id;
 bh=2BeKm8wEYH6bse2a1rLwXxXrJoN+1ZTgaE6KWvygrrs=;
 b=cgHPpVpzwusVblqCWASx54KKd2bL4xsrqqEbp0Pvp5R24XEQul8Sq8+N
 wXkxFaZ+z+zuIESVxOlZGSoBOHRV0Ir7NHXrOHmwAYlrns/yoeHqNdTEb
 WUPoswjPiLf2zSrow8nk3qDh9yhba9QattnU6YgKIygXD9qbw/f3r06RF
 chVfQPEnYjR24LnatvayAZgD7Y+O4/EGMLVYQM/+c4WPrw/2d0R5O08j2
 XxHKu22Wz+0AGc15fnZcjoRDt/a3yz5iFkFBTMA5KVYwbNEIoFJj+dNOf
 wr7P/2wwE0tIeMHDZVCZhZGNCLynpjB0UpQHmXLv4bA8Ex/VsRndk0uk9
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cgHPpVpz
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5b41ec76b9e6939c260e336774110c76d646494e
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
X-Rspamd-Queue-Id: CC5A1246F70
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,intel.com:mid];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 5b41ec76b9e6939c260e336774110c76d646494e  idpf: clear stale cdev_info ptr

elapsed time: 732m

configs tested: 184
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260310    gcc-8.5.0
arc                   randconfig-002-20260310    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                                 defconfig    gcc-15.2.0
arm                          exynos_defconfig    clang-23
arm                   randconfig-001-20260310    gcc-8.5.0
arm                   randconfig-002-20260310    gcc-8.5.0
arm                   randconfig-003-20260310    gcc-8.5.0
arm                   randconfig-004-20260310    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260310    gcc-11.5.0
arm64                 randconfig-002-20260310    gcc-11.5.0
arm64                 randconfig-003-20260310    gcc-11.5.0
arm64                 randconfig-004-20260310    gcc-11.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260310    gcc-11.5.0
csky                  randconfig-002-20260310    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260310    gcc-11.5.0
hexagon               randconfig-002-20260310    gcc-11.5.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260310    clang-20
i386        buildonly-randconfig-002-20260310    clang-20
i386        buildonly-randconfig-003-20260310    clang-20
i386        buildonly-randconfig-004-20260310    clang-20
i386        buildonly-randconfig-005-20260310    clang-20
i386        buildonly-randconfig-006-20260310    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260310    clang-20
i386                  randconfig-002-20260310    clang-20
i386                  randconfig-003-20260310    clang-20
i386                  randconfig-004-20260310    clang-20
i386                  randconfig-005-20260310    clang-20
i386                  randconfig-006-20260310    clang-20
i386                  randconfig-007-20260310    clang-20
i386                  randconfig-011-20260310    clang-20
i386                  randconfig-012-20260310    clang-20
i386                  randconfig-013-20260310    clang-20
i386                  randconfig-014-20260310    clang-20
i386                  randconfig-015-20260310    clang-20
i386                  randconfig-016-20260310    clang-20
i386                  randconfig-017-20260310    clang-20
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260310    gcc-11.5.0
loongarch             randconfig-002-20260310    gcc-11.5.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260310    gcc-11.5.0
nios2                 randconfig-002-20260310    gcc-11.5.0
openrisc                         allmodconfig    clang-23
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
parisc                randconfig-001-20260310    gcc-15.2.0
parisc                randconfig-002-20260310    gcc-15.2.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260310    gcc-15.2.0
powerpc               randconfig-002-20260310    gcc-15.2.0
powerpc64             randconfig-001-20260310    gcc-15.2.0
powerpc64             randconfig-002-20260310    gcc-15.2.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260310    gcc-15.2.0
riscv                 randconfig-002-20260310    gcc-15.2.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260310    gcc-15.2.0
s390                  randconfig-002-20260310    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260310    gcc-15.2.0
sh                    randconfig-002-20260310    gcc-15.2.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260310    gcc-14
x86_64      buildonly-randconfig-002-20260310    gcc-14
x86_64      buildonly-randconfig-003-20260310    gcc-14
x86_64      buildonly-randconfig-004-20260310    gcc-14
x86_64      buildonly-randconfig-005-20260310    gcc-14
x86_64      buildonly-randconfig-006-20260310    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260310    clang-20
x86_64                randconfig-002-20260310    clang-20
x86_64                randconfig-003-20260310    clang-20
x86_64                randconfig-004-20260310    clang-20
x86_64                randconfig-005-20260310    clang-20
x86_64                randconfig-006-20260310    clang-20
x86_64                randconfig-011-20260310    clang-20
x86_64                randconfig-012-20260310    clang-20
x86_64                randconfig-013-20260310    clang-20
x86_64                randconfig-014-20260310    clang-20
x86_64                randconfig-015-20260310    clang-20
x86_64                randconfig-016-20260310    clang-20
x86_64                randconfig-071-20260310    clang-20
x86_64                randconfig-072-20260310    clang-20
x86_64                randconfig-073-20260310    clang-20
x86_64                randconfig-074-20260310    clang-20
x86_64                randconfig-075-20260310    clang-20
x86_64                randconfig-076-20260310    clang-20
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
xtensa                           allyesconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
