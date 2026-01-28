Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qF/5HPnxeWnT1AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 12:24:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C7AA046E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 12:24:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A33A640382;
	Wed, 28 Jan 2026 11:24:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pZWF2n26FPO8; Wed, 28 Jan 2026 11:24:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9CE140387
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769599476;
	bh=ZxHaJGqj4Cv13Kuo6lAAOMln7VlATUgmD0lV4YVJQ8o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U9crNEwRi7VWaPTPOe/yzAtoCNvu2ZMmJM7+Eti9D+dVB1oOunltL8UiaUg7D3HIg
	 k1zL/UYrWwkdEt31PAEqrby3yUfRmjQZk/WKToQCAsvF/QHqYXy7jkH+wzi/vHw04+
	 0hGcBtgEW3yTJbe/BgjDZ/+yP7r4nVopC2d83+/sQjcHxxn8FkPXVYcgw/6CzHK4gM
	 HtDPCvB4sjXTGre2DHdodGDD63InvzYx01Ly9pBGVbcpIUQ48tNkMRmVcqClBXL0BT
	 501m59qO3HMSFYt30oFDLuZKWfR0xWLeuHjB0+wNu6ztL8kq7Eh2l5tow9TD7E5bTC
	 1wgAtlckd4p+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9CE140387;
	Wed, 28 Jan 2026 11:24:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E7561D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 11:24:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D8AC160730
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 11:24:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KFsP0HD18PRw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 11:24:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AE255605E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE255605E8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE255605E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 11:24:33 +0000 (UTC)
X-CSE-ConnectionGUID: SFRLpN/WRkG9LRd0pLzaWA==
X-CSE-MsgGUID: 36X8OSQYQhefLft8qaE5Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="73403337"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="73403337"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 03:24:33 -0800
X-CSE-ConnectionGUID: UaPhWuOGRmGplGFUudq5Pg==
X-CSE-MsgGUID: dTQofL3HSVa7lCKDbKBYNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208608832"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 28 Jan 2026 03:24:32 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vl3ev-00000000Zbo-44QB;
 Wed, 28 Jan 2026 11:24:29 +0000
Date: Wed, 28 Jan 2026 19:23:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601281949.7wN12EMd-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769599474; x=1801135474;
 h=date:from:to:subject:message-id;
 bh=WZG2vMCvwbytOVY+QqFhOXJmbGZEF5NnuVRYuJVji7s=;
 b=Ovd3baDmiU3PXAeWAWfBEIn8t8vdo15YOsWC2y7BLpf77zV7VZbFo3Lg
 VX3hAAfXo3X8w4PJ1y5hGzjNma3u5h+o6smYU+dGrSnN5PX2fvzv6JkVp
 Ytd1Ei0o9rd1NIpAA+p3xH0tQTmmso9lhlQulLWAQS7PLj9nBEJuGPWLJ
 83c/OpHzixC3W3LmTuLXBQRP4gj0eUPyABfXn8Sf6GdS01CIuHEo+q3E4
 ajW7knEN68TUb8xMedBWRndUlOAy46qsN1PGEfI5VuzcrzIk1wH/mkQOM
 Db0jL9tZ6mEFfj8Toli69/UjHNSahLnjH/WGAIKrLpDDd4jcRv8PRYIAd
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ovd3baDm
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 40a1c60f4892f0e5c12d4322b853b2f74a6d6bdc
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Queue-Id: B2C7AA046E
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 40a1c60f4892f0e5c12d4322b853b2f74a6d6bdc  idpf: nullify pointers after they are freed

elapsed time: 730m

configs tested: 138
configs skipped: 2

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
arc                   randconfig-001-20260128    gcc-9.5.0
arc                   randconfig-002-20260128    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.2.0
arm                   randconfig-001-20260128    gcc-15.2.0
arm                   randconfig-002-20260128    gcc-15.2.0
arm                   randconfig-003-20260128    gcc-8.5.0
arm                   randconfig-004-20260128    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20260128    clang-20
hexagon               randconfig-002-20260128    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260128    gcc-14
i386        buildonly-randconfig-002-20260128    clang-20
i386        buildonly-randconfig-003-20260128    gcc-14
i386        buildonly-randconfig-004-20260128    clang-20
i386        buildonly-randconfig-005-20260128    gcc-14
i386        buildonly-randconfig-006-20260128    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20260128    gcc-14
i386                  randconfig-002-20260128    gcc-14
i386                  randconfig-003-20260128    gcc-14
i386                  randconfig-004-20260128    gcc-14
i386                  randconfig-005-20260128    gcc-14
i386                  randconfig-006-20260128    gcc-14
i386                  randconfig-007-20260128    gcc-14
i386                  randconfig-011-20260128    clang-20
i386                  randconfig-012-20260128    gcc-14
i386                  randconfig-013-20260128    gcc-14
i386                  randconfig-014-20260128    clang-20
i386                  randconfig-015-20260128    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260128    clang-22
loongarch             randconfig-002-20260128    clang-20
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
nios2                 randconfig-001-20260128    gcc-8.5.0
nios2                 randconfig-002-20260128    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260128    gcc-11.5.0
parisc                randconfig-002-20260128    gcc-12.5.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260128    clang-22
powerpc               randconfig-002-20260128    gcc-8.5.0
powerpc64             randconfig-001-20260128    clang-22
powerpc64             randconfig-002-20260128    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20260128    gcc-13.4.0
riscv                 randconfig-002-20260128    gcc-15.2.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                  randconfig-001-20260128    gcc-13.4.0
s390                  randconfig-002-20260128    gcc-8.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260128    gcc-15.2.0
sh                    randconfig-002-20260128    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260128    gcc-8.5.0
sparc                 randconfig-002-20260128    gcc-8.5.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260128    gcc-12.5.0
sparc64               randconfig-002-20260128    gcc-10.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260128    gcc-12
um                    randconfig-002-20260128    clang-22
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260128    gcc-14
x86_64      buildonly-randconfig-002-20260128    gcc-14
x86_64      buildonly-randconfig-003-20260128    gcc-14
x86_64      buildonly-randconfig-004-20260128    gcc-12
x86_64      buildonly-randconfig-005-20260128    clang-20
x86_64      buildonly-randconfig-006-20260128    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260128    clang-20
x86_64                randconfig-002-20260128    clang-20
x86_64                randconfig-003-20260128    clang-20
x86_64                randconfig-004-20260128    gcc-14
x86_64                randconfig-071-20260128    clang-20
x86_64                randconfig-072-20260128    clang-20
x86_64                randconfig-073-20260128    gcc-12
x86_64                randconfig-074-20260128    gcc-14
x86_64                randconfig-075-20260128    gcc-14
x86_64                randconfig-076-20260128    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    gcc-15.2.0
xtensa                randconfig-001-20260128    gcc-8.5.0
xtensa                randconfig-002-20260128    gcc-11.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
