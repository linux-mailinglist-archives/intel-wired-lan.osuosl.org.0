Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m2+NOTK7TWpQ9gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 04:51:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE6F721400
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 04:51:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=NMNjitvc;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1879240D28;
	Wed,  8 Jul 2026 02:51:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZqfdoSZ51IM0; Wed,  8 Jul 2026 02:51:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B63940D2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783479088;
	bh=yErWUFg7xZemduL5B5mky9kGsV6lO8LTIy0V/iFbyOo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NMNjitvcReLAsccxz5q/9x+7fRIr8sD1E62CnhNBHqed1TbUDmwodc/HfIoO2WDN1
	 rv83+jHHOffIKXnDohWktvvgh1oG/JEeoztMBve89cMHdx76d5LXDHKX9ODLB/EvJe
	 tORC1SwIKFlUPKaiHNw1U5+X8by6HdzM1gIQqgHMRMvx1viKsVm/N8KJK0Ai1+TwHa
	 3I1ySF3ZYGwlUbRN51N6nm8a/homXzcFwsRZccpPQignw2YPvTmsh5NMKXUev9ULAM
	 kVmQEGQz24u5zBpgCxXhQnMZ+BU9AOlAq03ffMsSeMRJ3HRNA+m8F7bw0aG7QtXOeK
	 SLaSakvrw4neA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B63940D2C;
	Wed,  8 Jul 2026 02:51:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 157F115C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 02:51:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF51F4006A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 02:51:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GZKim0yfl4Wo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 02:51:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4FC4040051
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FC4040051
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4FC4040051
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 02:51:25 +0000 (UTC)
X-CSE-ConnectionGUID: UiWPKSEGSiKLAjHH6g6eyQ==
X-CSE-MsgGUID: Y1t5qCDZRd2KOMWTkQhuSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="71653984"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="71653984"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 19:51:25 -0700
X-CSE-ConnectionGUID: RNhXkMnlTjC+7uhvpl8n6w==
X-CSE-MsgGUID: ZKqTN8dqRmu3l4059dVxgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="253069962"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by orviesa010.jf.intel.com with ESMTP; 07 Jul 2026 19:51:23 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1whINc-00000000Fx1-3ESM;
 Wed, 08 Jul 2026 02:51:20 +0000
Date: Wed, 08 Jul 2026 10:50:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202607081036.HsKuI2Ka-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783479085; x=1815015085;
 h=date:from:to:subject:message-id;
 bh=Pr39xV6eE7RMbvoHsCHaWIGOQXDfkOpqtDFVMVlEV1I=;
 b=Tc4t4Bn/c/EWbsHRhNuy7h45Vm10L1/K/OurN/E4XUKxb7sZVahVL7cD
 c4nczejPQoZCSfajoyCKM551eMqO8YaSGibShXX8a6qoe9Tklhjj9FK3y
 CJoTkvu9vxYQMxN/N3tPnyy4W5/tr4iTfBEzDYCKK29ZGsHwBQqURqwkc
 q8Ni+IUqNvhLhdxORwHiZg33tG/yTMZBw8GAnHmbAOJ7R3PS6j7kqIu7M
 lgNP1akeI42i7fo4poEyF3HAYoh9ztjKHVrYegv6qHzdJWDNCuLKvOF5B
 u5g/B8Nq0/wkIn7nqM8qiF7LXLFGRrNGAnZUIp487c4Pv0M5qKukTJg25
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tc4t4Bn/
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 fb05064017350d336d9eb30847b0becceeb8bce3
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,intel.com:mid,intel.com:from_mime];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6BE6F721400

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: fb05064017350d336d9eb30847b0becceeb8bce3  idpf: adjust TxQ ring count minimum

elapsed time: 1497m

configs tested: 118
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260708    gcc-13.4.0
arc                   randconfig-002-20260708    gcc-15.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    clang-23
arm                         lpc32xx_defconfig    clang-17
arm                   randconfig-001-20260708    gcc-11.5.0
arm                   randconfig-002-20260708    gcc-10.5.0
arm                   randconfig-003-20260708    gcc-8.5.0
arm                   randconfig-004-20260708    gcc-8.5.0
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260708    clang-23
arm64                 randconfig-002-20260708    clang-23
arm64                 randconfig-003-20260708    gcc-9.5.0
arm64                 randconfig-004-20260708    gcc-15.2.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260708    gcc-11.5.0
csky                  randconfig-002-20260708    gcc-9.5.0
hexagon                          allmodconfig    clang-23
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260708    clang-23
hexagon               randconfig-002-20260708    clang-21
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260708    clang-22
i386        buildonly-randconfig-002-20260708    clang-22
i386        buildonly-randconfig-003-20260708    gcc-14
i386        buildonly-randconfig-004-20260708    gcc-12
i386        buildonly-randconfig-005-20260708    gcc-14
i386        buildonly-randconfig-006-20260708    gcc-14
i386                                defconfig    clang-22
i386                  randconfig-001-20260708    gcc-14
i386                  randconfig-002-20260708    gcc-14
i386                  randconfig-003-20260708    clang-22
i386                  randconfig-004-20260708    gcc-14
i386                  randconfig-005-20260708    clang-22
i386                  randconfig-006-20260708    clang-22
i386                  randconfig-007-20260708    gcc-12
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-20
loongarch                           defconfig    clang-23
loongarch             randconfig-001-20260708    gcc-13.4.0
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    gcc-16.1.0
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    gcc-16.1.0
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260708    gcc-9.5.0
openrisc                          allnoconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    gcc-16.1.0
parisc                randconfig-001-20260708    gcc-12.5.0
parisc                randconfig-002-20260708    gcc-10.5.0
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    gcc-16.1.0
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                 randconfig-001-20260708    gcc-8.5.0
riscv                 randconfig-002-20260708    gcc-8.5.0
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                  randconfig-001-20260708    clang-20
s390                  randconfig-002-20260708    clang-23
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-16.1.0
sh                    randconfig-001-20260708    gcc-16.1.0
sh                    randconfig-002-20260708    gcc-9.5.0
sparc                             allnoconfig    gcc-16.1.0
sparc64                             defconfig    clang-23
um                               allmodconfig    clang-17
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-22
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260708    gcc-14
x86_64                randconfig-002-20260708    clang-22
x86_64                randconfig-003-20260708    clang-22
x86_64                randconfig-004-20260708    clang-22
x86_64                randconfig-005-20260708    clang-22
x86_64                randconfig-006-20260708    gcc-14
x86_64                randconfig-011-20260708    gcc-14
x86_64                randconfig-012-20260708    clang-22
x86_64                randconfig-013-20260708    clang-22
x86_64                randconfig-014-20260708    gcc-14
x86_64                randconfig-015-20260708    gcc-14
x86_64                randconfig-016-20260708    clang-22
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    gcc-16.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
