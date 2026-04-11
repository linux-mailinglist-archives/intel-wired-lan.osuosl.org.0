Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OHcD0kE2ml+xwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2026 10:20:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9B23DEF2E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2026 10:20:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB2D7835F2;
	Sat, 11 Apr 2026 08:20:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8wXIo1V69fKI; Sat, 11 Apr 2026 08:20:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BB03835A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775895621;
	bh=6I4XVdjCOe3LEFWIaAVDAdINeNHO9Up2lQjbySk94fk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Bi9lebaG6AfucmT4fCWWldDgIYd/knUVey0v7SAA8Wb7T/RHC59T5c4qJuZ8uUaTP
	 2K1QpA0E/6u4q2aFd4Rbojenmx6xxiqMGBYfQadZAh6CDK0x7Yw8wbspZVIBFLdEIJ
	 MMXvaPbdqNugsrbYy2VGxCXb24IH70g1I/bomlVQ85NejNEjbusMYsUQNivAXVtQG8
	 XGqebGNBnS6oRGQdpNuN+b7FSlfbeDdl1IdrF+/Bu82TN7J3BOtccCRP89AVhGJSFp
	 brbsspzy8D0bXvyJ1KPmsNzFPvSWoyHraT3kQTDyUIbPOwq1PdhJIFLcJd4sJ2rm7z
	 lpo+pBmhn42ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BB03835A6;
	Sat, 11 Apr 2026 08:20:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B4AD9EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2026 08:20:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A60B460865
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2026 08:20:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q85YHln2GwbQ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Apr 2026 08:20:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 63CBC6060D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63CBC6060D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63CBC6060D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2026 08:20:17 +0000 (UTC)
X-CSE-ConnectionGUID: v14dYyw4RWum2QlPDkYH1A==
X-CSE-MsgGUID: SwkDzZQHRgS5tUxoNoehWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="77021439"
X-IronPort-AV: E=Sophos;i="6.23,173,1770624000"; d="scan'208";a="77021439"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2026 01:20:17 -0700
X-CSE-ConnectionGUID: 1tmY2WRCTr+KEQMnnxqY1w==
X-CSE-MsgGUID: ZIIoUX++QTy44gF45+eA1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,173,1770624000"; d="scan'208";a="229572683"
Received: from lkp-server01.sh.intel.com (HELO 3eaaf1a74b89) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 11 Apr 2026 01:20:16 -0700
Received: from kbuild by 3eaaf1a74b89 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wBTZd-0000000010N-2pP5;
 Sat, 11 Apr 2026 08:20:13 +0000
Date: Sat, 11 Apr 2026 16:19:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202604111618.Wn9vzZmL-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775895618; x=1807431618;
 h=date:from:to:subject:message-id;
 bh=xjf8pKSEnrL+2IbtZEbqYMD9Crr7Anx3UYBrpiMF9dA=;
 b=YfBwOpaZuzGrWTEmhPRoXeal8GszIfUdKFHqF8lq0DOYgVn8DcWUTBFK
 5mkeIhULiEPimwf0F3x89/EYojYAdMBHnA7TBX2FlALvdrWGqeREKfUUV
 5zvPONBKq7lqRLfScaygVp5xrVEFCwTEuasZjLks5oqY9heQcOX62lZ4r
 ZO5CTCZxNcoHItOswUDelZpfbDG/ljEL134zq+MS5Tl0rQd+rAtojs7ZN
 m+TFlY2PKWDUBXpYxikiqd/YJ5JiizE8SK1AbudDx4cfdpqedEd/azcrL
 621ndCBi9bubY0rXo88V88zLlhRsCNkS62JdNY3h7v3C9b5p09QulOzW0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YfBwOpaZ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d4999456017dd09ff5f7a34e236c471560d8f8e4
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 2A9B23DEF2E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: d4999456017dd09ff5f7a34e236c471560d8f8e4  ice: fix SMA and U.FL pin state changes affecting paired pin

elapsed time: 779m

configs tested: 188
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260411    gcc-12.5.0
arc                   randconfig-002-20260411    gcc-12.5.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                   randconfig-001-20260411    gcc-12.5.0
arm                   randconfig-002-20260411    gcc-12.5.0
arm                   randconfig-003-20260411    gcc-12.5.0
arm                   randconfig-004-20260411    gcc-12.5.0
arm                        shmobile_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260411    clang-23
arm64                 randconfig-002-20260411    clang-23
arm64                 randconfig-003-20260411    clang-23
arm64                 randconfig-004-20260411    clang-23
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260411    clang-23
csky                  randconfig-002-20260411    clang-23
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260411    gcc-14.3.0
hexagon               randconfig-002-20260411    gcc-14.3.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260411    gcc-14
i386        buildonly-randconfig-002-20260411    gcc-14
i386        buildonly-randconfig-003-20260411    gcc-14
i386        buildonly-randconfig-004-20260411    gcc-14
i386        buildonly-randconfig-005-20260411    gcc-14
i386        buildonly-randconfig-006-20260411    gcc-14
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260411    clang-20
i386                  randconfig-002-20260411    clang-20
i386                  randconfig-003-20260411    clang-20
i386                  randconfig-004-20260411    clang-20
i386                  randconfig-005-20260411    clang-20
i386                  randconfig-006-20260411    clang-20
i386                  randconfig-007-20260411    clang-20
i386                  randconfig-011-20260411    clang-20
i386                  randconfig-012-20260411    clang-20
i386                  randconfig-013-20260411    clang-20
i386                  randconfig-014-20260411    clang-20
i386                  randconfig-015-20260411    clang-20
i386                  randconfig-016-20260411    clang-20
i386                  randconfig-017-20260411    clang-20
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260411    gcc-14.3.0
loongarch             randconfig-002-20260411    gcc-14.3.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
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
nios2                 randconfig-001-20260411    gcc-14.3.0
nios2                 randconfig-002-20260411    gcc-14.3.0
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
parisc                randconfig-001-20260411    gcc-11.5.0
parisc                randconfig-002-20260411    gcc-11.5.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260411    gcc-11.5.0
powerpc               randconfig-002-20260411    gcc-11.5.0
powerpc64             randconfig-001-20260411    gcc-11.5.0
powerpc64             randconfig-002-20260411    gcc-11.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260411    gcc-10.5.0
riscv                 randconfig-002-20260411    gcc-10.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260411    gcc-10.5.0
s390                  randconfig-002-20260411    gcc-10.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260411    gcc-10.5.0
sh                    randconfig-002-20260411    gcc-10.5.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260411    gcc-14
sparc                 randconfig-002-20260411    gcc-14
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260411    gcc-14
sparc64               randconfig-002-20260411    gcc-14
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260411    gcc-14
um                    randconfig-002-20260411    gcc-14
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260411    gcc-14
x86_64      buildonly-randconfig-002-20260411    gcc-14
x86_64      buildonly-randconfig-003-20260411    gcc-14
x86_64      buildonly-randconfig-004-20260411    gcc-14
x86_64      buildonly-randconfig-005-20260411    gcc-14
x86_64      buildonly-randconfig-006-20260411    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260411    gcc-14
x86_64                randconfig-002-20260411    gcc-14
x86_64                randconfig-003-20260411    gcc-14
x86_64                randconfig-004-20260411    gcc-14
x86_64                randconfig-005-20260411    gcc-14
x86_64                randconfig-006-20260411    gcc-14
x86_64                randconfig-011-20260411    clang-20
x86_64                randconfig-012-20260411    clang-20
x86_64                randconfig-013-20260411    clang-20
x86_64                randconfig-014-20260411    clang-20
x86_64                randconfig-015-20260411    clang-20
x86_64                randconfig-016-20260411    clang-20
x86_64                randconfig-071-20260411    clang-20
x86_64                randconfig-072-20260411    clang-20
x86_64                randconfig-073-20260411    clang-20
x86_64                randconfig-074-20260411    clang-20
x86_64                randconfig-075-20260411    clang-20
x86_64                randconfig-076-20260411    clang-20
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
xtensa                randconfig-001-20260411    gcc-14
xtensa                randconfig-002-20260411    gcc-14

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
