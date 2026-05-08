Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKaRA61t/mmlqgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 01:11:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7BE4FCA2B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 01:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF1C361C60;
	Fri,  8 May 2026 23:11:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kfRFR_RcyEKE; Fri,  8 May 2026 23:11:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF18C61C61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778281897;
	bh=b6IS/BwEVRWpF0s6krxq0AyqvCy4Yi2Rd+IdoG+DS4s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1ceKhD1QZ609Y1xUmCkUllQ1Kh32Vr0sf8fL29v7+kPHIZHaIERuDoQ/+sv1Oatjn
	 hDVyBbpVbxYH6PWlBR/strXOM2EHHvr3fe9SsypM01lKLusCu9c+dPohZ6UjIf6TZD
	 ECxGzTIQ5eqhkN0Gi0mHRh0Snrm6/cAXlFGjrcy00zhBtk/s9cAJy7zo/mUpg8toUG
	 8f6IT5EBoztpJTanA/w6hiG2ymcUWl3+AYm/XoUzJhlUmTQgc2gBL2XFrm0mndnMZ1
	 1kca16OBJz53AbDA4hv86aco1ZIaD1Z4X86FMWeL7lGRfNuKH5BmjVphACPRgwws/N
	 3nWU9H9eOSpsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF18C61C61;
	Fri,  8 May 2026 23:11:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id ADCA625B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 23:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9EED7413DC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 23:11:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UhByDwuHdp5g for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 23:11:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 33A2D413D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33A2D413D8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 33A2D413D8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 23:11:33 +0000 (UTC)
X-CSE-ConnectionGUID: sdi9n35wRuW9AP1hls8LfQ==
X-CSE-MsgGUID: Nj5lqJfYS6eO2Mhuibf2rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="96686906"
X-IronPort-AV: E=Sophos;i="6.23,224,1770624000"; d="scan'208";a="96686906"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 16:11:32 -0700
X-CSE-ConnectionGUID: 6xD+QBFLRWGxqWFAZdLk8w==
X-CSE-MsgGUID: lFKdUl1wR8Wmni3Vhv5ZUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,224,1770624000"; d="scan'208";a="267258141"
Received: from lkp-server01.sh.intel.com (HELO 82327192134e) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 08 May 2026 16:11:32 -0700
Received: from kbuild by 82327192134e with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wLULx-000000000UH-19d0;
 Fri, 08 May 2026 23:11:29 +0000
Date: Sat, 09 May 2026 07:10:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605090728.iAA48oii-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778281894; x=1809817894;
 h=date:from:to:subject:message-id;
 bh=EcrCYovfZr8VqiG9P8vT49mjZn1LxATFvWvLAV4hBlo=;
 b=a560EkmHwR+FScU+63n9xpHrIPOAyuPOFzbBbsIkyxfOOPs8BXSty/06
 F2CCTc15hlRS7j/8hAIqrd9ou3t6qjn8lkimVokI50a57GvaXOcV0pYLY
 e5EU07SIOdepPpo73Ap4OS3jMYB5JAyuD4iUh3bmcQDY83CpkdBcZ7dRD
 JskDCa+c4tutenKPGMprZd0oyAkJ9CqpJGD/NzCHHHDbk+NFFF3ApTpOX
 lZU1JOkIbRx5fOKej5cttkrA7YRi5/3ZdJBSg5juNi9tnL2E3rNkaVPbj
 McPHJXAwetF8A+7eZwD2lsnGNMKq0LHxylOSY3aXHNvdIXNqAjGwMAYvK
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a560EkmH
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b01882751c133543969af1ebe69adee1fa1f8eb4
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
X-Rspamd-Queue-Id: 4E7BE4FCA2B
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: b01882751c133543969af1ebe69adee1fa1f8eb4  ice: support SBQ posted writes with non-posted support for CGU

elapsed time: 1304m

configs tested: 311
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                     haps_hs_smp_defconfig    gcc-15.2.0
arc                 nsimosci_hs_smp_defconfig    gcc-15.2.0
arc                   randconfig-001-20260508    gcc-12.5.0
arc                   randconfig-001-20260509    gcc-9.5.0
arc                   randconfig-002-20260508    gcc-12.5.0
arc                   randconfig-002-20260509    gcc-9.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                           h3600_defconfig    gcc-15.2.0
arm                   randconfig-001-20260508    gcc-12.5.0
arm                   randconfig-001-20260509    gcc-9.5.0
arm                   randconfig-002-20260508    gcc-12.5.0
arm                   randconfig-002-20260509    gcc-9.5.0
arm                   randconfig-003-20260508    gcc-12.5.0
arm                   randconfig-003-20260509    gcc-9.5.0
arm                   randconfig-004-20260508    gcc-12.5.0
arm                   randconfig-004-20260509    gcc-9.5.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260508    gcc-14.3.0
arm64                 randconfig-001-20260509    gcc-10.5.0
arm64                 randconfig-002-20260508    gcc-14.3.0
arm64                 randconfig-002-20260509    gcc-10.5.0
arm64                 randconfig-003-20260508    gcc-14.3.0
arm64                 randconfig-003-20260509    gcc-10.5.0
arm64                 randconfig-004-20260508    gcc-14.3.0
arm64                 randconfig-004-20260509    gcc-10.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260508    gcc-14.3.0
csky                  randconfig-001-20260509    gcc-10.5.0
csky                  randconfig-002-20260508    gcc-14.3.0
csky                  randconfig-002-20260509    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon                        randconfig-001    gcc-11.5.0
hexagon               randconfig-001-20260508    clang-23
hexagon               randconfig-001-20260508    gcc-11.5.0
hexagon               randconfig-001-20260509    clang-17
hexagon                        randconfig-002    gcc-11.5.0
hexagon               randconfig-002-20260508    clang-23
hexagon               randconfig-002-20260508    gcc-11.5.0
hexagon               randconfig-002-20260509    clang-17
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                 buildonly-randconfig-001    gcc-14
i386        buildonly-randconfig-001-20260508    gcc-14
i386        buildonly-randconfig-001-20260509    gcc-14
i386                 buildonly-randconfig-002    gcc-14
i386        buildonly-randconfig-002-20260508    gcc-14
i386        buildonly-randconfig-002-20260509    gcc-14
i386                 buildonly-randconfig-003    gcc-14
i386        buildonly-randconfig-003-20260508    gcc-14
i386        buildonly-randconfig-003-20260509    gcc-14
i386                 buildonly-randconfig-004    gcc-14
i386        buildonly-randconfig-004-20260508    gcc-14
i386        buildonly-randconfig-004-20260509    gcc-14
i386                 buildonly-randconfig-005    gcc-14
i386        buildonly-randconfig-005-20260508    gcc-14
i386        buildonly-randconfig-005-20260509    gcc-14
i386                 buildonly-randconfig-006    gcc-14
i386        buildonly-randconfig-006-20260508    gcc-14
i386        buildonly-randconfig-006-20260509    gcc-14
i386                                defconfig    gcc-15.2.0
i386                           randconfig-001    gcc-14
i386                  randconfig-001-20260508    gcc-14
i386                  randconfig-001-20260509    clang-20
i386                           randconfig-002    gcc-14
i386                  randconfig-002-20260508    gcc-14
i386                  randconfig-002-20260509    clang-20
i386                           randconfig-003    gcc-14
i386                  randconfig-003-20260508    gcc-14
i386                  randconfig-003-20260509    clang-20
i386                           randconfig-004    gcc-14
i386                  randconfig-004-20260508    gcc-14
i386                  randconfig-004-20260509    clang-20
i386                           randconfig-005    gcc-14
i386                  randconfig-005-20260508    gcc-14
i386                  randconfig-005-20260509    clang-20
i386                           randconfig-006    gcc-14
i386                  randconfig-006-20260508    gcc-14
i386                  randconfig-006-20260509    clang-20
i386                           randconfig-007    gcc-14
i386                  randconfig-007-20260508    gcc-14
i386                  randconfig-007-20260509    clang-20
i386                  randconfig-011-20260508    gcc-13
i386                  randconfig-011-20260509    gcc-14
i386                  randconfig-012-20260508    gcc-13
i386                  randconfig-012-20260509    gcc-14
i386                  randconfig-013-20260508    gcc-13
i386                  randconfig-013-20260509    gcc-14
i386                  randconfig-014-20260508    gcc-13
i386                  randconfig-014-20260509    gcc-14
i386                  randconfig-015-20260508    gcc-13
i386                  randconfig-015-20260509    gcc-14
i386                  randconfig-016-20260508    gcc-13
i386                  randconfig-016-20260509    gcc-14
i386                  randconfig-017-20260508    gcc-13
i386                  randconfig-017-20260509    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch                      randconfig-001    gcc-11.5.0
loongarch             randconfig-001-20260508    clang-23
loongarch             randconfig-001-20260508    gcc-11.5.0
loongarch             randconfig-001-20260509    clang-17
loongarch                      randconfig-002    gcc-11.5.0
loongarch             randconfig-002-20260508    clang-23
loongarch             randconfig-002-20260508    gcc-11.5.0
loongarch             randconfig-002-20260509    clang-17
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
mips                      loongson3_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                             allnoconfig    clang-23
nios2                               defconfig    clang-19
nios2                          randconfig-001    gcc-11.5.0
nios2                 randconfig-001-20260508    clang-23
nios2                 randconfig-001-20260508    gcc-11.5.0
nios2                 randconfig-001-20260509    clang-17
nios2                          randconfig-002    gcc-11.5.0
nios2                 randconfig-002-20260508    clang-23
nios2                 randconfig-002-20260508    gcc-11.5.0
nios2                 randconfig-002-20260509    clang-17
openrisc                         allmodconfig    clang-23
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                            defconfig    gcc-15.2.0
openrisc                 simple_smp_defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260508    gcc-9.5.0
parisc                randconfig-001-20260509    gcc-11.5.0
parisc                randconfig-002-20260508    gcc-9.5.0
parisc                randconfig-002-20260509    gcc-11.5.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                       holly_defconfig    clang-23
powerpc               randconfig-001-20260508    gcc-9.5.0
powerpc               randconfig-001-20260509    gcc-11.5.0
powerpc               randconfig-002-20260508    gcc-9.5.0
powerpc               randconfig-002-20260509    gcc-11.5.0
powerpc                     tqm8555_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260508    gcc-9.5.0
powerpc64             randconfig-001-20260509    gcc-11.5.0
powerpc64             randconfig-002-20260508    gcc-9.5.0
powerpc64             randconfig-002-20260509    gcc-11.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260508    clang-23
riscv                 randconfig-001-20260509    clang-23
riscv                 randconfig-002-20260508    clang-23
riscv                 randconfig-002-20260509    clang-23
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260508    clang-23
s390                  randconfig-001-20260509    clang-23
s390                  randconfig-002-20260508    clang-23
s390                  randconfig-002-20260509    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                     magicpanelr2_defconfig    gcc-15.2.0
sh                          polaris_defconfig    gcc-15.2.0
sh                    randconfig-001-20260508    clang-23
sh                    randconfig-001-20260509    clang-23
sh                    randconfig-002-20260508    clang-23
sh                    randconfig-002-20260509    clang-23
sparc                             allnoconfig    clang-23
sparc                               defconfig    gcc-15.2.0
sparc                          randconfig-001    gcc-12
sparc                 randconfig-001-20260508    gcc-12
sparc                 randconfig-001-20260509    clang-23
sparc                          randconfig-002    gcc-12
sparc                 randconfig-002-20260508    gcc-12
sparc                 randconfig-002-20260509    clang-23
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64                        randconfig-001    gcc-12
sparc64               randconfig-001-20260508    gcc-12
sparc64               randconfig-001-20260509    clang-23
sparc64                        randconfig-002    gcc-12
sparc64               randconfig-002-20260508    gcc-12
sparc64               randconfig-002-20260509    clang-23
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                             randconfig-001    gcc-12
um                    randconfig-001-20260508    gcc-12
um                    randconfig-001-20260509    clang-23
um                             randconfig-002    gcc-12
um                    randconfig-002-20260508    gcc-12
um                    randconfig-002-20260509    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64               buildonly-randconfig-001    gcc-14
x86_64      buildonly-randconfig-001-20260508    gcc-14
x86_64               buildonly-randconfig-002    gcc-14
x86_64      buildonly-randconfig-002-20260508    gcc-14
x86_64               buildonly-randconfig-003    gcc-14
x86_64      buildonly-randconfig-003-20260508    gcc-14
x86_64               buildonly-randconfig-004    gcc-14
x86_64      buildonly-randconfig-004-20260508    gcc-14
x86_64               buildonly-randconfig-005    gcc-14
x86_64      buildonly-randconfig-005-20260508    gcc-14
x86_64               buildonly-randconfig-006    gcc-14
x86_64      buildonly-randconfig-006-20260508    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                         randconfig-001    clang-20
x86_64                randconfig-001-20260508    clang-20
x86_64                         randconfig-002    clang-20
x86_64                randconfig-002-20260508    clang-20
x86_64                         randconfig-003    clang-20
x86_64                randconfig-003-20260508    clang-20
x86_64                         randconfig-004    clang-20
x86_64                randconfig-004-20260508    clang-20
x86_64                         randconfig-005    clang-20
x86_64                randconfig-005-20260508    clang-20
x86_64                         randconfig-006    clang-20
x86_64                randconfig-006-20260508    clang-20
x86_64                         randconfig-011    gcc-14
x86_64                randconfig-011-20260508    gcc-14
x86_64                randconfig-011-20260509    gcc-14
x86_64                         randconfig-012    gcc-14
x86_64                randconfig-012-20260508    gcc-14
x86_64                randconfig-012-20260509    gcc-14
x86_64                         randconfig-013    gcc-14
x86_64                randconfig-013-20260508    gcc-14
x86_64                randconfig-013-20260509    gcc-14
x86_64                         randconfig-014    gcc-14
x86_64                randconfig-014-20260508    gcc-14
x86_64                randconfig-014-20260509    gcc-14
x86_64                         randconfig-015    gcc-14
x86_64                randconfig-015-20260508    gcc-14
x86_64                randconfig-015-20260509    gcc-14
x86_64                         randconfig-016    gcc-14
x86_64                randconfig-016-20260508    gcc-14
x86_64                randconfig-016-20260509    gcc-14
x86_64                randconfig-071-20260508    gcc-14
x86_64                randconfig-071-20260509    clang-20
x86_64                randconfig-072-20260508    gcc-14
x86_64                randconfig-072-20260509    clang-20
x86_64                randconfig-073-20260508    gcc-14
x86_64                randconfig-073-20260509    clang-20
x86_64                randconfig-074-20260508    gcc-14
x86_64                randconfig-074-20260509    clang-20
x86_64                randconfig-075-20260508    gcc-14
x86_64                randconfig-075-20260509    clang-20
x86_64                randconfig-076-20260508    gcc-14
x86_64                randconfig-076-20260509    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                           allyesconfig    clang-23
xtensa                         randconfig-001    gcc-12
xtensa                randconfig-001-20260508    gcc-12
xtensa                randconfig-001-20260509    clang-23
xtensa                         randconfig-002    gcc-12
xtensa                randconfig-002-20260508    gcc-12
xtensa                randconfig-002-20260509    clang-23

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
