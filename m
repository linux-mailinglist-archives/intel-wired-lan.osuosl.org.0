Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CaDmBDNamGn5GgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 13:57:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9907C167A21
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 13:57:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16EBD60FD8;
	Fri, 20 Feb 2026 12:57:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wphrs4OZCi1R; Fri, 20 Feb 2026 12:57:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2664460FDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771592238;
	bh=gGwUL1SvN6ErZQQSsRI4FixeV58lita5SUk4DwcQBUY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TXEuZ1OSTssf7AslKdgQeXVNQ8Kra/YgsgNOAQGr86JqzWGBrxswc3grRQut/hNn1
	 40u58tTJhGB5Vx6qZDq5wwUvYxqoP7sy2Z4Hb/pdMgQR4keFv0gNfz7GO4/5gnWS3T
	 7Fd4uvaVy/lboM5IwokIIGSKcSXRqb79I5Hbu1zggj5jibVOMXTmwnrp0B3/iqxCUQ
	 YCXmscjtqTt9TjpOOnIfVMjhJM5+syyFF9gb4l2V6eW9EW0I6gsgDKyzBCCf+8CuUC
	 Nw8T4Uzq8jEZ0YNw3rXmEAIGtEDP3w+ef+47G9JQLstFw4qhYjvBOUOg1GQXxVT9T0
	 XfWvgyZn42C3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2664460FDB;
	Fri, 20 Feb 2026 12:57:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 298F6183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 12:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1ABD9417E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 12:57:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qHA8U0ag3mu7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 12:57:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9FE01417E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FE01417E1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9FE01417E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 12:57:14 +0000 (UTC)
X-CSE-ConnectionGUID: 0ZLZ8k2AQRm5MZ5/kUCaaw==
X-CSE-MsgGUID: x2j8chp/SyCc62GSNOdwpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72726363"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="72726363"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 04:57:14 -0800
X-CSE-ConnectionGUID: NpFBgQdgSySh8IImWrbOkQ==
X-CSE-MsgGUID: WasDZ1GIT3ak7+mrrTaaUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="214959560"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 20 Feb 2026 04:57:12 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vtQ4E-0000000146J-13Bp;
 Fri, 20 Feb 2026 12:57:10 +0000
Date: Fri, 20 Feb 2026 20:57:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602202053.DRvRtPlr-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771592235; x=1803128235;
 h=date:from:to:subject:message-id;
 bh=Swrz/g2SnM/1ugZq5lOf7dosIOwguXth+dzvirn6pFM=;
 b=NyCAH0fyU5b8hrlstXXU5a9FeL11zCRLPUpa9Due7JCUD/8LxxlhdOBt
 jiNjw5cZ54IWShGznweCJBZ9sXZOJl/Uxhv+GN3znhPp9jfcDkGI3olTq
 tg3kfShLOPn+MF+7HTmg9DLH0szY0BqEC90V3kkRqrvJpl8KVoqltalAJ
 aUqGPmq7zud2whQfF201q3wG16O27hC/TcHXiM6pBlTLWoIDF1OwbFXXa
 tuW8TZH2kNAF629rG1F5jvIidERp7zWYrzMJ/En45f5neDoxhffOqFMzg
 O+EOM2x0rWiVTLDCLXXv9JqKeiHg8tQpZjN8LeSokIEsh5g0ZXJY5UvxF
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NyCAH0fy
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 0205478c9a8e5650c10a360458125302e4b0cd10
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim];
	NEURAL_HAM(-0.00)[-0.995];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 9907C167A21
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 0205478c9a8e5650c10a360458125302e4b0cd10  e1000e: correct TIMINCA on ADP/TGP systems with wrong XTAL frequency

elapsed time: 782m

configs tested: 201
configs skipped: 1

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
arc                   randconfig-001-20260220    gcc-8.5.0
arc                   randconfig-002-20260220    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                        clps711x_defconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                       multi_v4t_defconfig    gcc-15.2.0
arm                   randconfig-001-20260220    gcc-10.5.0
arm                   randconfig-001-20260220    gcc-8.5.0
arm                   randconfig-002-20260220    clang-23
arm                   randconfig-002-20260220    gcc-8.5.0
arm                   randconfig-003-20260220    clang-23
arm                   randconfig-003-20260220    gcc-8.5.0
arm                   randconfig-004-20260220    gcc-10.5.0
arm                   randconfig-004-20260220    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260220    gcc-8.5.0
arm64                 randconfig-002-20260220    gcc-8.5.0
arm64                 randconfig-003-20260220    gcc-8.5.0
arm64                 randconfig-004-20260220    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260220    gcc-8.5.0
csky                  randconfig-002-20260220    gcc-8.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260220    clang-23
hexagon               randconfig-002-20260220    clang-23
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260220    clang-20
i386        buildonly-randconfig-002-20260220    clang-20
i386        buildonly-randconfig-003-20260220    clang-20
i386        buildonly-randconfig-004-20260220    clang-20
i386        buildonly-randconfig-005-20260220    clang-20
i386        buildonly-randconfig-006-20260220    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260220    clang-20
i386                  randconfig-002-20260220    clang-20
i386                  randconfig-003-20260220    clang-20
i386                  randconfig-004-20260220    clang-20
i386                  randconfig-005-20260220    clang-20
i386                  randconfig-006-20260220    clang-20
i386                  randconfig-007-20260220    clang-20
i386                  randconfig-011-20260220    gcc-14
i386                  randconfig-012-20260220    gcc-14
i386                  randconfig-013-20260220    gcc-14
i386                  randconfig-014-20260220    gcc-14
i386                  randconfig-015-20260220    gcc-14
i386                  randconfig-016-20260220    gcc-14
i386                  randconfig-017-20260220    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260220    clang-23
loongarch             randconfig-002-20260220    clang-23
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
mips                     cu1000-neo_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260220    clang-23
nios2                 randconfig-002-20260220    clang-23
openrisc                         allmodconfig    clang-23
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                randconfig-001-20260220    clang-23
parisc                randconfig-002-20260220    clang-23
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc                        cell_defconfig    gcc-15.2.0
powerpc                      mgcoge_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260220    clang-23
powerpc               randconfig-002-20260220    clang-23
powerpc                     tqm8540_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260220    clang-23
powerpc64             randconfig-002-20260220    clang-23
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv             nommu_k210_sdcard_defconfig    gcc-15.2.0
riscv                 randconfig-001-20260220    gcc-11.5.0
riscv                 randconfig-002-20260220    gcc-11.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                  randconfig-001-20260220    gcc-11.5.0
s390                  randconfig-002-20260220    gcc-11.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260220    gcc-11.5.0
sh                    randconfig-002-20260220    gcc-11.5.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                 randconfig-001-20260220    clang-20
sparc                 randconfig-002-20260220    clang-20
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260220    clang-20
sparc64               randconfig-002-20260220    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260220    clang-20
um                    randconfig-002-20260220    clang-20
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260220    clang-20
x86_64      buildonly-randconfig-002-20260220    clang-20
x86_64      buildonly-randconfig-003-20260220    clang-20
x86_64      buildonly-randconfig-004-20260220    clang-20
x86_64      buildonly-randconfig-005-20260220    clang-20
x86_64      buildonly-randconfig-005-20260220    gcc-14
x86_64      buildonly-randconfig-006-20260220    clang-20
x86_64      buildonly-randconfig-006-20260220    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260220    gcc-14
x86_64                randconfig-002-20260220    gcc-14
x86_64                randconfig-003-20260220    gcc-14
x86_64                randconfig-004-20260220    gcc-14
x86_64                randconfig-005-20260220    gcc-14
x86_64                randconfig-006-20260220    gcc-14
x86_64                randconfig-011-20260220    gcc-14
x86_64                randconfig-012-20260220    gcc-14
x86_64                randconfig-013-20260220    gcc-14
x86_64                randconfig-014-20260220    gcc-14
x86_64                randconfig-015-20260220    gcc-14
x86_64                randconfig-016-20260220    gcc-14
x86_64                randconfig-071-20260220    gcc-14
x86_64                randconfig-072-20260220    gcc-14
x86_64                randconfig-073-20260220    gcc-14
x86_64                randconfig-074-20260220    gcc-14
x86_64                randconfig-075-20260220    gcc-14
x86_64                randconfig-076-20260220    gcc-14
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
xtensa                randconfig-001-20260220    clang-20
xtensa                randconfig-002-20260220    clang-20

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
