Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oD8mIkZ2qGnpugAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 19:13:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 732E1205F72
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 19:13:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F2AE60B43;
	Wed,  4 Mar 2026 18:13:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UjPb79gWh29v; Wed,  4 Mar 2026 18:13:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B7A660B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772648002;
	bh=X0IFRQxzqgRAmL7JlcmtaXIHWNSXOQUKzy3kYLVMZ1o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8rTPUMOtNlwL1TIigE+F+J55w+/bSu8MI0A93yNCQ9ytFquscbjUmvMQvOJ935KkW
	 gtxLSp/kp4t2hZubYdtLBFdLDUJdsTba9CUXQy96/rSfyD9GpLXNvlAv6rNPCGoUxC
	 tL4BQi0ItKmpS97yUkaS3DWGJmKjP2O5+KMhpTc8KEsa6nAZC1eyeCOwnnhMeK+tPm
	 6QRhs2RTmML12oVc3jmtbB8S7vKxLnMsfH0E3ZppIyxWhltUEFbpCKWvYwVaRYApNl
	 tOV2aQd14JsOFHxHvs4ginC2WSb7v0es+sAp6nZ7c0/l9cs903g0XqaSZYk/6n6KPH
	 SaTFGs7uxKEdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B7A660B3E;
	Wed,  4 Mar 2026 18:13:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 18F801EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 18:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F3023821CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 18:13:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zY5bedm-z6qr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 18:13:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DB1E1821D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB1E1821D8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB1E1821D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 18:13:19 +0000 (UTC)
X-CSE-ConnectionGUID: u6eUcz/mQS+G4TFE6hg03w==
X-CSE-MsgGUID: gF9/fdbcSHWlXug7iTseBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="84053471"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="84053471"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 10:13:18 -0800
X-CSE-ConnectionGUID: uqsWW2VlSoyzRQfa59T+lA==
X-CSE-MsgGUID: pj9GL/hARdC0Lla3L29b4w==
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO f27a57aa7a36) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 04 Mar 2026 10:13:17 -0800
Received: from kbuild by f27a57aa7a36 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vxqig-000000004Gn-30Td;
 Wed, 04 Mar 2026 18:13:14 +0000
Date: Thu, 05 Mar 2026 02:13:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603050259.J459xiYx-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772648000; x=1804184000;
 h=date:from:to:subject:message-id;
 bh=MXjrEsupBs/1DctFDsd6FgYXx5ZMoAVqdYEi5TFsDD4=;
 b=hUe/VI49CIXrugNw3VPQ3vauSZuSNXt4/sj0xlTr1xPelPiv7GHD16cV
 RuBOAtinuolZbf1/rpv0b8Xuv8jSKAENeLhjlahpTuzKy6zf5yKwFblrA
 8tzrSg9IbiDamacgRWM94EonB1hkrOaRlv2QOOQwK4d23FLeFBytBoh2y
 VCEGJ9YF9yT3bUeewh7+GocLqsgyYqfCzp9CDYbHHzXzE36UYRpOdljgb
 YaEE0CUBFa07r2FWz/krLGc4OEKcmNo664eG0wSEEKbtH2drvtaejR40J
 T2+d7zw6bLypAB/Q9D9fPb8y4wxwE1Tt8TNY/OdBXtjFVRM78Xysd59mJ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hUe/VI49
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 ed0abfe93fd135dac223e87a3c945017b1fa8bfc
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
X-Rspamd-Queue-Id: 732E1205F72
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: ed0abfe93fd135dac223e87a3c945017b1fa8bfc  Merge branch 'net-phy-improve-stats-handling-in-mdio_bus-c'

elapsed time: 1778m

configs tested: 115
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                   allnoconfig    gcc-15.2.0
alpha                  allyesconfig    gcc-15.2.0
arc                    allmodconfig    clang-16
arc                    allmodconfig    gcc-15.2.0
arc                     allnoconfig    gcc-15.2.0
arc                    allyesconfig    gcc-15.2.0
arc         randconfig-001-20260304    clang-23
arc         randconfig-002-20260304    clang-23
arm                     allnoconfig    clang-23
arm                     allnoconfig    gcc-15.2.0
arm                    allyesconfig    clang-16
arm                    allyesconfig    gcc-15.2.0
arm         randconfig-001-20260304    clang-23
arm         randconfig-002-20260304    clang-23
arm         randconfig-003-20260304    clang-23
arm         randconfig-004-20260304    clang-23
arm64                  allmodconfig    clang-19
arm64                   allnoconfig    gcc-15.2.0
csky                   allmodconfig    gcc-15.2.0
csky                    allnoconfig    gcc-15.2.0
hexagon                allmodconfig    clang-17
hexagon                 allnoconfig    clang-23
hexagon                 allnoconfig    gcc-15.2.0
i386                   allmodconfig    clang-20
i386                   allmodconfig    gcc-14
i386                    allnoconfig    gcc-14
i386                    allnoconfig    gcc-15.2.0
i386                   allyesconfig    clang-20
i386                   allyesconfig    gcc-14
i386        randconfig-011-20260304    gcc-14
i386        randconfig-012-20260304    gcc-14
i386        randconfig-013-20260304    gcc-14
i386        randconfig-014-20260304    gcc-14
i386        randconfig-015-20260304    gcc-14
i386        randconfig-016-20260304    gcc-14
i386        randconfig-017-20260304    gcc-14
loongarch              allmodconfig    clang-19
loongarch               allnoconfig    clang-23
loongarch               allnoconfig    gcc-15.2.0
m68k                   allmodconfig    gcc-15.2.0
m68k                    allnoconfig    gcc-15.2.0
m68k                   allyesconfig    clang-16
m68k                   allyesconfig    gcc-15.2.0
microblaze              allnoconfig    gcc-15.2.0
microblaze             allyesconfig    gcc-15.2.0
mips                   allmodconfig    gcc-15.2.0
mips                    allnoconfig    gcc-15.2.0
mips                   allyesconfig    gcc-15.2.0
nios2                  allmodconfig    clang-23
nios2                  allmodconfig    gcc-11.5.0
nios2                   allnoconfig    clang-23
nios2                   allnoconfig    gcc-11.5.0
openrisc               allmodconfig    clang-23
openrisc               allmodconfig    gcc-15.2.0
openrisc                allnoconfig    clang-23
openrisc                allnoconfig    gcc-15.2.0
parisc                 allmodconfig    gcc-15.2.0
parisc                  allnoconfig    clang-23
parisc                  allnoconfig    gcc-15.2.0
parisc                 allyesconfig    gcc-15.2.0
powerpc                allmodconfig    gcc-15.2.0
powerpc                 allnoconfig    clang-23
powerpc                 allnoconfig    gcc-15.2.0
riscv                  allmodconfig    clang-23
riscv                   allnoconfig    clang-23
riscv                   allnoconfig    gcc-15.2.0
riscv                  allyesconfig    clang-16
riscv       randconfig-001-20260304    gcc-8.5.0
riscv       randconfig-002-20260304    clang-23
s390                   allmodconfig    clang-18
s390                    allnoconfig    clang-23
s390                   allyesconfig    gcc-15.2.0
s390        randconfig-001-20260304    clang-23
s390        randconfig-002-20260304    gcc-15.2.0
sh                     allmodconfig    gcc-15.2.0
sh                      allnoconfig    clang-23
sh                      allnoconfig    gcc-15.2.0
sh                     allyesconfig    gcc-15.2.0
sh                        defconfig    gcc-14
sh          randconfig-001-20260304    gcc-15.2.0
sh          randconfig-002-20260304    gcc-15.2.0
sh           sh7710voipgw_defconfig    gcc-15.2.0
sparc                   allnoconfig    clang-23
sparc                   allnoconfig    gcc-15.2.0
sparc64                allmodconfig    clang-23
sparc64                   defconfig    gcc-14
um                     allmodconfig    clang-19
um                      allnoconfig    clang-23
um                     allyesconfig    gcc-14
um                        defconfig    gcc-14
um                   i386_defconfig    gcc-14
um                 x86_64_defconfig    gcc-14
x86_64                 allmodconfig    clang-20
x86_64                  allnoconfig    clang-20
x86_64                  allnoconfig    clang-23
x86_64                 allyesconfig    clang-20
x86_64                    defconfig    gcc-14
x86_64                        kexec    clang-20
x86_64      randconfig-001-20260304    clang-20
x86_64      randconfig-002-20260304    clang-20
x86_64      randconfig-003-20260304    clang-20
x86_64      randconfig-004-20260304    clang-20
x86_64      randconfig-005-20260304    clang-20
x86_64      randconfig-006-20260304    clang-20
x86_64                     rhel-9.4    clang-20
x86_64                 rhel-9.4-bpf    gcc-14
x86_64                rhel-9.4-func    clang-20
x86_64          rhel-9.4-kselftests    clang-20
x86_64               rhel-9.4-kunit    gcc-14
x86_64                 rhel-9.4-ltp    gcc-14
x86_64                rhel-9.4-rust    clang-20
xtensa                  allnoconfig    clang-23
xtensa                  allnoconfig    gcc-15.2.0
xtensa                 allyesconfig    clang-23
xtensa                 allyesconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
