Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pW4sJhveOmqiJQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 21:27:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 312BF6B9B21
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 21:27:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="fvx/gzx4";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02B4740B21;
	Tue, 23 Jun 2026 19:27:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l9vCuZi42qMC; Tue, 23 Jun 2026 19:27:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC53A40A7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782242838;
	bh=uwRjTcLr2rY4AgRpN2rNiLe4aYRtvZW3596zNOyhWh0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fvx/gzx4RkdNBOP1v+o6Wr9XitUuND3uWijWDLpiYko0QgocgqH5uZEDIKKXzHxr5
	 SCoKQoz9i3L0Qs95yLybBmf7C/dYdxONB+pXDgDj1H8aVrFbOtfhTlG+CcRSQFCs0N
	 pjq412IjcU2mpVUY/5702XleAOnwem4OL5Eh9qCdCpQc2rhzV/xpTuR4UyJCIn2gbb
	 VmSWDDiIMhfrvn6mhkFReyPATRzojS+M9JuPy/Y33Hd7R4i+DDy+7cuE7ubsi9RRf8
	 3h4DB8NwrGeZddl6R7EJervZRhWjz6f5iF/MVkymH4BApUNu+H7hRaVQ0swdFxl1Tl
	 j6/YVLF3jwSLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC53A40A7E;
	Tue, 23 Jun 2026 19:27:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 12FE7256
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 19:27:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3E796090B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 19:27:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i03pIEGV9wc4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2026 19:27:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A78BD60710
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A78BD60710
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A78BD60710
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 19:27:15 +0000 (UTC)
X-CSE-ConnectionGUID: 0o96wIw2Qoa2GuCfCcsJAA==
X-CSE-MsgGUID: J18BwuCcTACuUrzBS+i8qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="94388270"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="94388270"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 12:27:15 -0700
X-CSE-ConnectionGUID: 2mlzMglSQfqOYP1nRJlzfw==
X-CSE-MsgGUID: 1DNnCfvASkCHlgdf0ctXjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="247270386"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 23 Jun 2026 12:27:14 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wc6m7-000000002qv-2bJb;
 Tue, 23 Jun 2026 19:27:11 +0000
Date: Wed, 24 Jun 2026 03:26:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606240349.TOyycixI-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782242836; x=1813778836;
 h=date:from:to:subject:message-id;
 bh=Fs2FUhajlpDgkSEO/d4QuSIQuzBCEL4yJf5PDParsTo=;
 b=bREZWCAikLKwCFyhaTUdUPJP8KF7/Li2LmZlVD4h64gxFrpbXUKEEAax
 nREMZBIJGsrVaRmNaKIDEmh14CNPVEi2RUjFfKHKEWyk2FCst/LgzWbfg
 4+nc/O5PkMyLj5Wsp522hy/TogFLjNaGEhYF1rsAbtNNKSXVex+R4tUcg
 vjEHWAt1DNvCgVSRJT23YeO1ppqAV5dVIdaVqEEX81sjb+V4s6971Lyb4
 fomRxYla2aDFFhN/Io4VyHa4bHT2DTycg9nXDHwRAEO+xQjE6FfWQY4f4
 aCyNFKyv6gsN78MzMZCi2P1atF26/XBGK6O+lPukMNgdzroi3VlcwUeyu
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bREZWCAi
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ffbc94a31ba5f551baf986023843191df5435206
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,intel.com:mid,intel.com:from_mime,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 312BF6B9B21

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: ffbc94a31ba5f551baf986023843191df5435206  ice: refactor ice_sched_cfg_agg to take agg_info pointer

elapsed time: 1421m

configs tested: 279
configs skipped: 22

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    clang-23
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260623    clang-23
arc                   randconfig-001-20260623    gcc-10.5.0
arc                   randconfig-002-20260623    clang-23
arc                   randconfig-002-20260623    gcc-16.1.0
arm                               allnoconfig    clang-17
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    clang-23
arm                              allyesconfig    gcc-16.1.0
arm                         assabet_defconfig    clang-22
arm                                 defconfig    clang-23
arm                                 defconfig    gcc-16.1.0
arm                   randconfig-001-20260623    clang-23
arm                   randconfig-002-20260623    clang-23
arm                   randconfig-002-20260623    gcc-10.5.0
arm                   randconfig-003-20260623    clang-23
arm                   randconfig-004-20260623    clang-23
arm                   randconfig-004-20260623    gcc-14.3.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260623    gcc-14.3.0
arm64                 randconfig-001-20260624    clang-21
arm64                 randconfig-002-20260623    clang-23
arm64                 randconfig-002-20260623    gcc-14.3.0
arm64                 randconfig-002-20260624    clang-21
arm64                 randconfig-003-20260623    clang-23
arm64                 randconfig-003-20260623    gcc-14.3.0
arm64                 randconfig-003-20260624    clang-21
arm64                 randconfig-004-20260623    gcc-14.3.0
arm64                 randconfig-004-20260623    gcc-8.5.0
arm64                 randconfig-004-20260624    clang-21
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260623    gcc-14.3.0
csky                  randconfig-001-20260623    gcc-16.1.0
csky                  randconfig-001-20260624    clang-21
csky                  randconfig-002-20260623    gcc-14.3.0
csky                  randconfig-002-20260623    gcc-16.1.0
csky                  randconfig-002-20260624    clang-21
hexagon                          allmodconfig    gcc-16.1.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    clang-23
hexagon                             defconfig    gcc-16.1.0
hexagon               randconfig-001-20260623    clang-23
hexagon               randconfig-001-20260623    gcc-8.5.0
hexagon               randconfig-002-20260623    clang-18
hexagon               randconfig-002-20260623    gcc-8.5.0
i386                             allmodconfig    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    clang-22
i386                             allyesconfig    gcc-14
i386                 buildonly-randconfig-001    gcc-14
i386        buildonly-randconfig-001-20260623    clang-22
i386        buildonly-randconfig-001-20260623    gcc-14
i386                 buildonly-randconfig-002    clang-22
i386        buildonly-randconfig-002-20260623    gcc-14
i386                 buildonly-randconfig-003    clang-22
i386        buildonly-randconfig-003-20260623    gcc-14
i386                 buildonly-randconfig-004    gcc-14
i386        buildonly-randconfig-004-20260623    gcc-14
i386                 buildonly-randconfig-005    gcc-14
i386        buildonly-randconfig-005-20260623    gcc-14
i386                 buildonly-randconfig-006    gcc-14
i386        buildonly-randconfig-006-20260623    clang-22
i386        buildonly-randconfig-006-20260623    gcc-14
i386                                defconfig    clang-22
i386                                defconfig    gcc-16.1.0
i386                           randconfig-001    clang-22
i386                  randconfig-001-20260623    clang-22
i386                  randconfig-001-20260623    gcc-14
i386                           randconfig-002    gcc-14
i386                  randconfig-002-20260623    clang-22
i386                           randconfig-003    gcc-14
i386                  randconfig-003-20260623    clang-22
i386                  randconfig-003-20260623    gcc-14
i386                           randconfig-004    clang-22
i386                  randconfig-004-20260623    clang-22
i386                  randconfig-004-20260623    gcc-14
i386                           randconfig-005    gcc-14
i386                  randconfig-005-20260623    clang-22
i386                           randconfig-006    gcc-14
i386                  randconfig-006-20260623    clang-22
i386                           randconfig-007    gcc-14
i386                  randconfig-007-20260623    clang-22
i386                  randconfig-011-20260623    gcc-14
i386                  randconfig-012-20260623    gcc-14
i386                  randconfig-013-20260623    gcc-14
i386                  randconfig-014-20260623    gcc-14
i386                  randconfig-015-20260623    gcc-14
i386                  randconfig-016-20260623    gcc-14
i386                  randconfig-017-20260623    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-20
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch             randconfig-001-20260623    gcc-14.3.0
loongarch             randconfig-001-20260623    gcc-8.5.0
loongarch             randconfig-002-20260623    gcc-16.1.0
loongarch             randconfig-002-20260623    gcc-8.5.0
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    clang-23
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    clang-23
m68k                                defconfig    gcc-16.1.0
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    clang-23
microblaze                          defconfig    gcc-16.1.0
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
nios2                            allmodconfig    clang-20
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-23
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260623    gcc-8.5.0
nios2                 randconfig-002-20260623    gcc-8.5.0
openrisc                         allmodconfig    clang-20
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    clang-17
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                         randconfig-001    gcc-11.5.0
parisc                randconfig-001-20260623    gcc-11.5.0
parisc                         randconfig-002    gcc-11.5.0
parisc                randconfig-002-20260623    gcc-11.5.0
parisc                randconfig-002-20260623    gcc-8.5.0
parisc64                            defconfig    clang-23
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-16.1.0
powerpc                        randconfig-001    gcc-11.5.0
powerpc               randconfig-001-20260623    clang-23
powerpc               randconfig-001-20260623    gcc-11.5.0
powerpc                        randconfig-002    gcc-11.5.0
powerpc               randconfig-002-20260623    clang-23
powerpc               randconfig-002-20260623    gcc-11.5.0
powerpc64                        alldefconfig    clang-17
powerpc64                      randconfig-001    gcc-11.5.0
powerpc64             randconfig-001-20260623    clang-23
powerpc64             randconfig-001-20260623    gcc-11.5.0
powerpc64                      randconfig-002    gcc-11.5.0
powerpc64             randconfig-002-20260623    gcc-11.5.0
powerpc64             randconfig-002-20260623    gcc-12.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv                 randconfig-001-20260623    gcc-8.5.0
riscv                 randconfig-002-20260623    gcc-8.5.0
s390                             allmodconfig    clang-17
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                                defconfig    gcc-16.1.0
s390                  randconfig-001-20260623    gcc-8.5.0
s390                  randconfig-002-20260623    gcc-8.5.0
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    clang-17
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-16.1.0
sh                    randconfig-001-20260623    gcc-8.5.0
sh                    randconfig-002-20260623    gcc-16.1.0
sh                    randconfig-002-20260623    gcc-8.5.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260623    gcc-8.5.0
sparc                 randconfig-002-20260623    gcc-11.5.0
sparc                 randconfig-002-20260623    gcc-8.5.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260623    gcc-8.5.0
sparc64               randconfig-002-20260623    clang-21
sparc64               randconfig-002-20260623    gcc-8.5.0
um                               allmodconfig    clang-17
um                                allnoconfig    clang-17
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-16.1.0
um                                  defconfig    clang-23
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260623    clang-17
um                    randconfig-001-20260623    gcc-8.5.0
um                    randconfig-002-20260623    gcc-14
um                    randconfig-002-20260623    gcc-8.5.0
um                           x86_64_defconfig    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64               buildonly-randconfig-001    gcc-12
x86_64      buildonly-randconfig-001-20260623    clang-22
x86_64      buildonly-randconfig-001-20260623    gcc-14
x86_64               buildonly-randconfig-002    clang-22
x86_64      buildonly-randconfig-002-20260623    clang-22
x86_64      buildonly-randconfig-002-20260623    gcc-14
x86_64               buildonly-randconfig-003    gcc-14
x86_64      buildonly-randconfig-003-20260623    clang-22
x86_64               buildonly-randconfig-004    gcc-14
x86_64      buildonly-randconfig-004-20260623    clang-22
x86_64               buildonly-randconfig-005    gcc-14
x86_64      buildonly-randconfig-005-20260623    clang-22
x86_64               buildonly-randconfig-006    clang-22
x86_64      buildonly-randconfig-006-20260623    clang-22
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                randconfig-001-20260623    gcc-14
x86_64                randconfig-002-20260623    gcc-14
x86_64                randconfig-003-20260623    gcc-14
x86_64                randconfig-004-20260623    gcc-14
x86_64                randconfig-005-20260623    clang-22
x86_64                randconfig-005-20260623    gcc-14
x86_64                randconfig-006-20260623    clang-22
x86_64                randconfig-006-20260623    gcc-14
x86_64                randconfig-011-20260623    gcc-14
x86_64                randconfig-012-20260623    gcc-14
x86_64                randconfig-013-20260623    gcc-14
x86_64                randconfig-014-20260623    gcc-14
x86_64                         randconfig-015    gcc-14
x86_64                randconfig-015-20260623    gcc-14
x86_64                randconfig-016-20260623    gcc-14
x86_64                         randconfig-071    gcc-14
x86_64                randconfig-071-20260623    gcc-14
x86_64                         randconfig-072    gcc-14
x86_64                randconfig-072-20260623    gcc-14
x86_64                         randconfig-073    gcc-14
x86_64                randconfig-073-20260623    gcc-14
x86_64                         randconfig-074    gcc-14
x86_64                randconfig-074-20260623    gcc-14
x86_64                         randconfig-075    gcc-14
x86_64                randconfig-075-20260623    gcc-14
x86_64                         randconfig-076    gcc-14
x86_64                randconfig-076-20260623    clang-22
x86_64                randconfig-076-20260623    gcc-14
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-16.1.0
xtensa                           allyesconfig    clang-20
xtensa                randconfig-001-20260623    gcc-8.5.0
xtensa                randconfig-002-20260623    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
