Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNB1EmO932mOYQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 18:31:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB80C40665E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 18:31:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF4036115F;
	Wed, 15 Apr 2026 16:31:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QQ0I0fZw-tDG; Wed, 15 Apr 2026 16:31:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B1746112E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776270687;
	bh=jTKWY0V8ZmeVxKsB6AG8LSMIGsdmowLKFaqbFzjWt/E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=G65ybQsCSvowDbVBJPIvhX+e9lVo8Fs2S43IMLQ3/lhlJ99G5B5nTuQol6QzjR3AL
	 jmYtlI5cMRD7FQpjDpWL1LahVYYnM3zuirflh3dGJB1KEpSL7/jEnbLqm4eKcJzBNX
	 +GO3SyKYnWIMianf655NH8xVPvnTh/NEFyqiCiSKKI6TMWyACMJ+Dn9k+reuuzrsc8
	 MnpdXVFngzYguapH5Irwof/2bItvEYgIBdaRfxJPUx/Kj8Y5S3UnbA82gJJ2bklwfz
	 72bwO8CrpaTGVRt7eaFl5EMQ4KUjBjpoPb7HDFCDrorTSAnnkboqCikaZ7GWBNEu2F
	 KW2NMfsuyc/yw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B1746112E;
	Wed, 15 Apr 2026 16:31:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C8FE3283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 16:31:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BAF7740604
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 16:31:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2EJONq2D9tId for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 16:31:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9A3F64020B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A3F64020B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A3F64020B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 16:31:24 +0000 (UTC)
X-CSE-ConnectionGUID: +bcMvyY3Sg27nt5sHaKaHA==
X-CSE-MsgGUID: 9L6FrBU1TLi5n9mpLbrCpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77328164"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77328164"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 09:31:23 -0700
X-CSE-ConnectionGUID: WvASGxDUTdyvtuuhiyJ3CA==
X-CSE-MsgGUID: 6KzQSbEKQP2mOnhC142Xpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="230314050"
Received: from lkp-server01.sh.intel.com (HELO 7f3b36e5d6a5) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 15 Apr 2026 09:31:23 -0700
Received: from kbuild by 7f3b36e5d6a5 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wD396-000000000ha-1lri;
 Wed, 15 Apr 2026 16:31:20 +0000
Date: Thu, 16 Apr 2026 00:30:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202604160025.tfxP0gGS-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776270683; x=1807806683;
 h=date:from:to:subject:message-id;
 bh=VBAlO93RSb+GANcgqifOhZBsSlgjlwQ2Ut0mIP8dniY=;
 b=A7SmMoBnDKtMuTOxLKWUCzNVvVKb+kNuT4OrsZ/FvuBxIdkiQxgrJxtI
 sgTOkM2IFU6ShkftB2NMvxKoAfSGcMP3UHHB61mbkp5hhBaPpurb7Pcb5
 B856iXZ+tBDJeTLpJG8h6DlPHx/69kVpDr2a69ShDJYrZok0FqKB/NLmo
 PfvkwXBtmbkLCZxpuSZtkd0aG/TgQ0304GwJ1SxkTN/E8aiRKLmRH8Vcg
 M2dx+sec3V20x4ZhCtE198/Z9lx6arSH/41QogCmT4kzEu5TBB7C2ucTS
 ay9KB1JfGKEu/C6Nc2EyBzZqyfHif48fpEmTN07PmeeCMoeR9CPeChwTh
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A7SmMoBn
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 b688481f5abadb88df562bfda30bf94114859740
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: AB80C40665E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: b688481f5abadb88df562bfda30bf94114859740  ice: dpll: Fix compilation warning

elapsed time: 1049m

configs tested: 103
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arc                   randconfig-001-20260415    gcc-13.4.0
arc                   randconfig-002-20260415    gcc-15.2.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                   randconfig-001-20260415    clang-23
arm                   randconfig-002-20260415    clang-23
arm                   randconfig-003-20260415    gcc-8.5.0
arm                   randconfig-004-20260415    clang-17
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon               randconfig-001-20260415    clang-23
hexagon               randconfig-002-20260415    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260415    clang-20
i386        buildonly-randconfig-002-20260415    gcc-14
i386        buildonly-randconfig-003-20260415    clang-20
i386        buildonly-randconfig-004-20260415    gcc-14
i386        buildonly-randconfig-005-20260415    gcc-14
i386        buildonly-randconfig-006-20260415    clang-20
i386                  randconfig-011-20260415    gcc-14
i386                  randconfig-012-20260415    clang-20
i386                  randconfig-013-20260415    gcc-14
i386                  randconfig-014-20260415    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260415    clang-18
loongarch             randconfig-002-20260415    clang-23
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
nios2                 randconfig-001-20260415    gcc-10.5.0
nios2                 randconfig-002-20260415    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                randconfig-002-20260415    gcc-9.5.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-002-20260415    clang-20
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20260415    gcc-9.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                 randconfig-001-20260415    gcc-8.5.0
sparc                 randconfig-002-20260415    gcc-11.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
sparc64               randconfig-002-20260415    gcc-12.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-003-20260415    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-071-20260415    clang-20
x86_64                randconfig-072-20260415    clang-20
x86_64                randconfig-073-20260415    gcc-13
x86_64                randconfig-074-20260415    clang-20
x86_64                randconfig-075-20260415    clang-20
x86_64                randconfig-076-20260415    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    gcc-15.2.0
xtensa                          iss_defconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
