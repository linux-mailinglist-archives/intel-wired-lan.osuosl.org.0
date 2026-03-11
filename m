Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGrII19xsWlVvAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 14:42:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E43B9264BE0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 14:42:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 971EF42246;
	Wed, 11 Mar 2026 13:42:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PzpP1pMx9P7x; Wed, 11 Mar 2026 13:42:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DBFF422A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773236572;
	bh=Cd7sP5QFiYWSjJjy9+sLcR8qsjHfkjKhBR4ZnmakQjQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wRqDb6+Os5rGkv3mJVFOdbEygvlQ3ThO9NNgmPI7LLtZJRgoOhJt6ftkEjQvy2HMk
	 dhk96S23M46F7/xkbALl6NjZsppLWE2YziHOAc/Mw6PlPF2Yp9YHKAW04fEHLiYTF4
	 hnoLH+I3T7PPJL7J3f+wS/CQJXceLtKysK3TV2r/3PDefUiOvjvTNN8/nVUc9XVHKe
	 r3RY4vfnGsffJBXIt+9LRUGY6ekfRbXZGgbcoNGtoB4UUtr7P7IV411q/LeorazHbv
	 EY6wbfyA4jTGjuDV/5cVRcXNARaifo19xPnlM/9SBbLof+0Dy49hEGfEGRjhWho1bC
	 Q5AI/Oxiqwj+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DBFF422A6;
	Wed, 11 Mar 2026 13:42:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DC27533A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 13:42:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C1BF74229E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 13:42:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 21SXQRRj-Bp6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 13:42:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8A51F42246
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A51F42246
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A51F42246
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 13:42:46 +0000 (UTC)
X-CSE-ConnectionGUID: BL8oM1JhTsSkoIR3/uEN3A==
X-CSE-MsgGUID: jK5Y48+XQ0qKWbLXcQe5zA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85390405"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="85390405"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 06:42:46 -0700
X-CSE-ConnectionGUID: FMfhvFCeT+m+PG3bUUemng==
X-CSE-MsgGUID: KdmwMNvIQYueeglNFCf7kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="246038181"
Received: from lkp-server01.sh.intel.com (HELO 418530b1a366) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 11 Mar 2026 06:42:44 -0700
Received: from kbuild by 418530b1a366 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w0Jpi-000000001FE-2wjj;
 Wed, 11 Mar 2026 13:42:42 +0000
Date: Wed, 11 Mar 2026 21:42:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603112124.pO2StEW7-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773236568; x=1804772568;
 h=date:from:to:subject:message-id;
 bh=yo9Sx5+F5tgUZv7W0AmrqSxKTcEDMDDGki5V9gbJQoI=;
 b=a8FSda7JQN/in0kL0LWsL7TNklXgG+/qPCjisrY3z2gW84gR4y+AjQTr
 9zK74x5pWAhiXJIxVdl//p0AvT7GluRrO7Y4+g/5STl3nPAvS51MGKYSi
 T/LwMBF221fRMGXolTaQI1St4+Q+T78KHYLLIgGISJGR6MtD6UvHbUJa0
 nIS45fzEDr7KlC2dqO+bunOrLIuq+OMOzxXUZ2tZqeEoCziS0ZRIq4AYc
 h2vQwT9vcureFHEmrg54F3lrZkcVHmli6XFtD/Cfdv9UmeD64JIyXgFep
 7OF5Vw++rlvEbIIoIMb95ZtY3tCDV7C4oubTxYIdXI3MEOam7n48Y5GHt
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a8FSda7J
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 e94eaef11142b01f77bf8ba4d0b59720b7858109
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
X-Rspamd-Queue-Id: E43B9264BE0
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
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: e94eaef11142b01f77bf8ba4d0b59720b7858109  e1000/e1000e: Fix leak in DMA error cleanup

elapsed time: 992m

configs tested: 187
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                            hsdk_defconfig    gcc-15.2.0
arc                   randconfig-001-20260311    gcc-14.3.0
arc                   randconfig-001-20260311    gcc-8.5.0
arc                   randconfig-002-20260311    gcc-8.5.0
arc                   randconfig-002-20260311    gcc-9.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm                                 defconfig    gcc-15.2.0
arm                   randconfig-001-20260311    clang-23
arm                   randconfig-001-20260311    gcc-8.5.0
arm                   randconfig-002-20260311    gcc-8.5.0
arm                   randconfig-003-20260311    clang-16
arm                   randconfig-003-20260311    gcc-8.5.0
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
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    clang-23
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260311    clang-23
hexagon               randconfig-002-20260311    clang-16
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260311    clang-20
i386        buildonly-randconfig-002-20260311    clang-20
i386        buildonly-randconfig-003-20260311    gcc-14
i386        buildonly-randconfig-004-20260311    clang-20
i386        buildonly-randconfig-005-20260311    gcc-14
i386        buildonly-randconfig-006-20260311    clang-20
i386                                defconfig    clang-20
i386                                defconfig    gcc-15.2.0
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
i386                  randconfig-015-20260311    gcc-14
i386                  randconfig-016-20260311    clang-20
i386                  randconfig-016-20260311    gcc-14
i386                  randconfig-017-20260311    clang-20
i386                  randconfig-017-20260311    gcc-14
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260311    clang-23
loongarch             randconfig-002-20260311    gcc-15.2.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
m68k                                defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260311    gcc-8.5.0
nios2                 randconfig-002-20260311    gcc-11.5.0
openrisc                         allmodconfig    clang-23
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260311    gcc-14.3.0
parisc                randconfig-002-20260311    gcc-11.5.0
parisc64                            defconfig    clang-19
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260311    gcc-10.5.0
powerpc               randconfig-002-20260311    gcc-8.5.0
powerpc                         wii_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260311    clang-23
powerpc64             randconfig-002-20260311    clang-23
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260311    gcc-15.2.0
riscv                 randconfig-001-20260311    gcc-8.5.0
riscv                 randconfig-002-20260311    gcc-15.2.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260311    gcc-15.2.0
s390                  randconfig-001-20260311    gcc-8.5.0
s390                  randconfig-002-20260311    gcc-12.5.0
s390                  randconfig-002-20260311    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260311    gcc-15.2.0
sh                    randconfig-002-20260311    gcc-15.2.0
sh                           se7751_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260311    clang-20
x86_64                randconfig-002-20260311    gcc-14
x86_64                randconfig-003-20260311    gcc-14
x86_64                randconfig-004-20260311    gcc-14
x86_64                randconfig-005-20260311    gcc-12
x86_64                randconfig-006-20260311    clang-20
x86_64                randconfig-071-20260311    gcc-14
x86_64                randconfig-072-20260311    gcc-14
x86_64                randconfig-073-20260311    gcc-14
x86_64                randconfig-074-20260311    gcc-13
x86_64                randconfig-074-20260311    gcc-14
x86_64                randconfig-075-20260311    gcc-14
x86_64                randconfig-076-20260311    gcc-14
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

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
