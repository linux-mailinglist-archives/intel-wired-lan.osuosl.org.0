Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qKItD6OBqmkMSwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 08:26:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C5821C708
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 08:26:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2D0641B6C;
	Fri,  6 Mar 2026 07:26:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id liUrSHXINlHr; Fri,  6 Mar 2026 07:26:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F6D341B78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772781982;
	bh=oh7SPBQt4scpuayLlj5/s2s8ih0+iFrJMiQBZOnQFJM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vjws2Q1Ru9DLUJ0KobitOawmVLswc35Mz/EpVFgXojxzb45m4asaJoiKtMQui+Wjw
	 LcxgJZSAzvfYgyafEaQS1H6698h6Qabj8ik4VLzO/FHAcEsKeEyDMgZ5XruSNssJ09
	 k9PMcBMYHdKTJ5Quemd9nAXjNsHMDXjHj3jwVIZQM9SAUk6rREPU2eXQaWndfdzG8y
	 lq01y06ceCEOd3quLbJMRprntPm3NEglfuBqvUzEGvVBi5TTW2PWkTol04RlYGi2vV
	 HKvLPC/7fVeuvUbW5k1Jrc0x+2e8iDWDY+gIMKPAyodpCAIYxY/OvCMn0MIsJyAzAH
	 QkJmTs4ykGR9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F6D341B78;
	Fri,  6 Mar 2026 07:26:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E38B525B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 07:26:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C8D3483412
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 07:26:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iBosfwixbMiv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Mar 2026 07:26:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B3C3783051
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3C3783051
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3C3783051
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 07:26:19 +0000 (UTC)
X-CSE-ConnectionGUID: SoCzQLxoSyCDyMGBk7Qwhw==
X-CSE-MsgGUID: eF6hkK0lT9ugGka4ClWkBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="84969506"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="84969506"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 23:26:10 -0800
X-CSE-ConnectionGUID: l8AJnGWVThSVtTu2NOJMGQ==
X-CSE-MsgGUID: ansL/qNcSzqJbj4RbmruCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="223065344"
Received: from lkp-server01.sh.intel.com (HELO 058beb05654c) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 05 Mar 2026 23:26:09 -0800
Received: from kbuild by 058beb05654c with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vyPZW-000000000Vo-1uSv;
 Fri, 06 Mar 2026 07:26:06 +0000
Date: Fri, 06 Mar 2026 15:25:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603061531.K2QKbijI-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772781979; x=1804317979;
 h=date:from:to:subject:message-id;
 bh=pgkWSPDiSAL20h2HukbZ45EKSHo0rNa2XWVHoKN3yD4=;
 b=GZEzHkyCTYNCx78eT1zDVTMPZNoRjUJXbkoscfAeskCU8FVvucWPQ64h
 X4f98LFLnyWybVtJSMyzwMsKBcq7+eeNDjHYICiFP3yqHTwmxB1FCiFTF
 C4UisUDm3kkndzc5W282EBAD5w8WypFiCUn9QARDlAa9jd9SpTXryDddn
 u7Ij+1R9hMCX0Y+qQTIk3q7d1VyUANEe8RsJqpFjym0GrI/8tv22w/7u3
 /NjCo8r1GXkj2j/X1cSAIKfz0M+BAX1EyPDOV7lOCKS/ZfFlHbLcejna7
 a0XUxch+x/3KqEYv7PDoqKk/s7IuMBtNngW+b2PYh8QzpPgL7+SVVULT5
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GZEzHkyC
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 cf440e5b40649d1ffbc6c4e33fef3223c7482897
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
X-Rspamd-Queue-Id: 01C5821C708
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: cf440e5b40649d1ffbc6c4e33fef3223c7482897  Merge branch 'Address-XDP-frags-having-negative-tailroom'

elapsed time: 898m

configs tested: 170
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
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260306    gcc-14.3.0
arc                   randconfig-002-20260306    gcc-14.3.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                                 defconfig    gcc-15.2.0
arm                          pxa168_defconfig    clang-19
arm                   randconfig-001-20260306    gcc-14.3.0
arm                   randconfig-002-20260306    gcc-14.3.0
arm                   randconfig-003-20260306    gcc-14.3.0
arm                   randconfig-004-20260306    gcc-14.3.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260306    clang-23
arm64                 randconfig-002-20260306    clang-23
arm64                 randconfig-003-20260306    clang-23
arm64                 randconfig-004-20260306    clang-23
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260306    clang-23
csky                  randconfig-002-20260306    clang-23
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260306    clang-23
hexagon               randconfig-002-20260306    clang-23
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260306    gcc-14
i386        buildonly-randconfig-002-20260306    gcc-14
i386        buildonly-randconfig-003-20260306    gcc-14
i386        buildonly-randconfig-004-20260306    gcc-14
i386        buildonly-randconfig-005-20260306    gcc-14
i386        buildonly-randconfig-006-20260306    gcc-14
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260306    clang-20
i386                  randconfig-002-20260306    clang-20
i386                  randconfig-003-20260306    clang-20
i386                  randconfig-004-20260306    clang-20
i386                  randconfig-005-20260306    clang-20
i386                  randconfig-006-20260306    clang-20
i386                  randconfig-007-20260306    clang-20
i386                  randconfig-011-20260306    gcc-14
i386                  randconfig-012-20260306    gcc-14
i386                  randconfig-013-20260306    gcc-14
i386                  randconfig-014-20260306    gcc-14
i386                  randconfig-015-20260306    gcc-14
i386                  randconfig-016-20260306    gcc-14
i386                  randconfig-017-20260306    gcc-14
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260306    clang-23
loongarch             randconfig-002-20260306    clang-23
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
mips                malta_qemu_32r6_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                             allnoconfig    clang-23
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260306    clang-23
nios2                 randconfig-002-20260306    clang-23
openrisc                         allmodconfig    clang-23
openrisc                          allnoconfig    clang-23
openrisc                            defconfig    gcc-15.2.0
openrisc                 simple_smp_defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260306    gcc-14.3.0
parisc                randconfig-002-20260306    gcc-14.3.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc               randconfig-001-20260306    gcc-14.3.0
powerpc               randconfig-002-20260306    gcc-14.3.0
powerpc64             randconfig-001-20260306    gcc-14.3.0
powerpc64             randconfig-002-20260306    gcc-14.3.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260306    clang-19
riscv                 randconfig-002-20260306    clang-19
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260306    clang-19
s390                  randconfig-002-20260306    clang-19
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260306    clang-19
sh                    randconfig-002-20260306    clang-19
sparc                             allnoconfig    clang-23
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260306    gcc-9.5.0
sparc                 randconfig-002-20260306    gcc-9.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260306    gcc-9.5.0
sparc64               randconfig-002-20260306    gcc-9.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260306    gcc-9.5.0
um                    randconfig-002-20260306    gcc-9.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260306    clang-20
x86_64      buildonly-randconfig-002-20260306    clang-20
x86_64      buildonly-randconfig-003-20260306    clang-20
x86_64      buildonly-randconfig-004-20260306    clang-20
x86_64      buildonly-randconfig-005-20260306    clang-20
x86_64      buildonly-randconfig-006-20260306    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260306    gcc-14
x86_64                randconfig-002-20260306    gcc-14
x86_64                randconfig-003-20260306    gcc-14
x86_64                randconfig-004-20260306    gcc-14
x86_64                randconfig-005-20260306    gcc-14
x86_64                randconfig-006-20260306    gcc-14
x86_64                randconfig-011-20260306    gcc-14
x86_64                randconfig-012-20260306    gcc-14
x86_64                randconfig-013-20260306    gcc-14
x86_64                randconfig-014-20260306    gcc-14
x86_64                randconfig-015-20260306    gcc-14
x86_64                randconfig-016-20260306    gcc-14
x86_64                randconfig-071-20260306    gcc-14
x86_64                randconfig-072-20260306    gcc-14
x86_64                randconfig-073-20260306    gcc-14
x86_64                randconfig-074-20260306    gcc-14
x86_64                randconfig-075-20260306    gcc-14
x86_64                randconfig-076-20260306    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                           allyesconfig    clang-23
xtensa                randconfig-001-20260306    gcc-9.5.0
xtensa                randconfig-002-20260306    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
