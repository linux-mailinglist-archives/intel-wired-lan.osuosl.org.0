Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BLUFbALcWmPcQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 18:24:00 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A105A785
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 18:23:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A09496F6CA;
	Wed, 21 Jan 2026 17:23:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id msPXn5g8JkPq; Wed, 21 Jan 2026 17:23:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAF936F6CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769016234;
	bh=O/1BpdD7GCuGSrjVFmyyAgPsTQLaEKlbL3tGysrkIZ8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hmO68UPsGndtT5o7xBw9UXYEMD45aQIuOYNIw9Q1uxJgrIhYZIq+HwyYsHOzxobrZ
	 beE9k6xiP+astA1UJvNXrk6seMUcfOZA1aYGODzrUtjBaexKCkft5ISYTXALK5PBAg
	 l07PG0PgOSgZZQkcSG3+U4Dc070hH9vuQHpoN7n++VLjHXDGfVPv3KWI4PbQYNjm1K
	 tKcp27S4lbbAUXQyOod/MnkFyG3WcQVCZ0mekLlM1B7Kqs4M7S8dZBh5X4xanHFwL5
	 c1Gi+q6cQwYDvNxlEHVKYKoeTNWM6IXURdBCnLuTP4ekJdUejP5jPWGG7Yfqw103pe
	 Znwg/y38CTEnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAF936F6CB;
	Wed, 21 Jan 2026 17:23:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E878158
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 17:23:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1C6FF42E8F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 17:23:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qm71TnUTAmNy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 17:23:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 165EC42E82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 165EC42E82
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 165EC42E82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 17:23:51 +0000 (UTC)
X-CSE-ConnectionGUID: Tbkit7GVRzC+98Nn7MLOdQ==
X-CSE-MsgGUID: dEXsUmRZQFKNTI272FhtgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="80874304"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="80874304"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 09:23:51 -0800
X-CSE-ConnectionGUID: 66Jq3RFZTm2/FKlCz9L7Hg==
X-CSE-MsgGUID: pXdMjoCQQxSGWZExBy9SSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="205639243"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 21 Jan 2026 09:23:49 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vibvn-00000000RTV-0XZj;
 Wed, 21 Jan 2026 17:23:47 +0000
Date: Thu, 22 Jan 2026 01:23:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601220159.5cIBgVHd-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769016232; x=1800552232;
 h=date:from:to:subject:message-id;
 bh=jXAp+ZFlst0KCJNxV/JSS+ffZOSRqKfGmrtmio44Pv8=;
 b=BfwVThLc3KeIMJOm+0a592yvnp6Y7UimZNVTkDHf4fWaKpfP0Z3OzsYq
 OnsAX7MndwnM3sP4PgEesRtJX5jZ5fbkIUCiFNkHHjsBu5y+M5LX0M1Js
 E5h2Wuj4dOlo8TaVevIa5b3a2QA6YOtOXMYDlyf/fsuWMJ1DcYrap8Orq
 byX9Ec9LqDhfyBbhuHGA5gOIL7+rd2ptVrpLRWrNN52Gf0oJNaJU2BREY
 EveX+7scfmF6D64d8zezW42I0OQ3X6cEfagJP81jqGY/2V1kqoilXXfKh
 /Ct9/xofoezY9IjBbBSHBMLv/8aGCGgCgMy3doX3TnIrRolryHb3Ojic/
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BfwVThLc
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 a1e7855eb22e815573a642f10cbf7fb8e25317b3
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 99A105A785
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: a1e7855eb22e815573a642f10cbf7fb8e25317b3  idpf: generalize mailbox API

elapsed time: 980m

configs tested: 210
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260121    clang-18
arc                   randconfig-002-20260121    clang-18
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                          collie_defconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                         mv78xx0_defconfig    gcc-15.2.0
arm                          pxa910_defconfig    gcc-15.2.0
arm                   randconfig-001-20260121    clang-18
arm                   randconfig-002-20260121    clang-18
arm                   randconfig-003-20260121    clang-18
arm                   randconfig-004-20260121    clang-18
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260121    gcc-15.2.0
arm64                 randconfig-002-20260121    gcc-15.2.0
arm64                 randconfig-003-20260121    gcc-15.2.0
arm64                 randconfig-004-20260121    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260121    gcc-15.2.0
csky                  randconfig-002-20260121    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260121    clang-19
hexagon               randconfig-001-20260121    gcc-15.2.0
hexagon               randconfig-002-20260121    clang-22
hexagon               randconfig-002-20260121    gcc-15.2.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260121    clang-20
i386        buildonly-randconfig-002-20260121    clang-20
i386        buildonly-randconfig-003-20260121    clang-20
i386        buildonly-randconfig-004-20260121    clang-20
i386        buildonly-randconfig-005-20260121    clang-20
i386        buildonly-randconfig-006-20260121    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260121    clang-20
i386                  randconfig-002-20260121    clang-20
i386                  randconfig-003-20260121    clang-20
i386                  randconfig-004-20260121    clang-20
i386                  randconfig-005-20260121    clang-20
i386                  randconfig-006-20260121    clang-20
i386                  randconfig-007-20260121    clang-20
i386                  randconfig-011-20260121    gcc-14
i386                  randconfig-012-20260121    gcc-14
i386                  randconfig-013-20260121    gcc-14
i386                  randconfig-014-20260121    gcc-14
i386                  randconfig-015-20260121    gcc-14
i386                  randconfig-016-20260121    gcc-14
i386                  randconfig-017-20260121    gcc-14
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260121    gcc-15.2.0
loongarch             randconfig-002-20260121    gcc-15.2.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                                defconfig    clang-19
m68k                       m5249evb_defconfig    gcc-15.2.0
m68k                        m5272c3_defconfig    gcc-15.2.0
m68k                        mvme16x_defconfig    gcc-15.2.0
m68k                            q40_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                  maltasmvp_eva_defconfig    gcc-15.2.0
mips                        omega2p_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260121    gcc-11.5.0
nios2                 randconfig-001-20260121    gcc-15.2.0
nios2                 randconfig-002-20260121    gcc-10.5.0
nios2                 randconfig-002-20260121    gcc-15.2.0
openrisc                         allmodconfig    clang-22
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260121    gcc-9.5.0
parisc                randconfig-002-20260121    gcc-9.5.0
parisc64                         alldefconfig    gcc-15.2.0
parisc64                            defconfig    clang-19
powerpc                    adder875_defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.2.0
powerpc                     kmeter1_defconfig    gcc-15.2.0
powerpc                 linkstation_defconfig    gcc-15.2.0
powerpc                         ps3_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260121    gcc-9.5.0
powerpc               randconfig-002-20260121    gcc-9.5.0
powerpc                     tqm8541_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260121    gcc-9.5.0
powerpc64             randconfig-002-20260121    gcc-9.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260121    clang-16
riscv                 randconfig-002-20260121    clang-16
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260121    clang-16
s390                  randconfig-002-20260121    clang-16
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                         apsh4a3a_defconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                               j2_defconfig    gcc-15.2.0
sh                    randconfig-001-20260121    clang-16
sh                    randconfig-002-20260121    clang-16
sh                      rts7751r2d1_defconfig    gcc-15.2.0
sh                           se7343_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260121    gcc-8.5.0
sparc                 randconfig-002-20260121    gcc-8.5.0
sparc                       sparc64_defconfig    gcc-15.2.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260121    gcc-8.5.0
sparc64               randconfig-002-20260121    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260121    gcc-8.5.0
um                    randconfig-002-20260121    gcc-8.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260121    clang-20
x86_64      buildonly-randconfig-002-20260121    clang-20
x86_64      buildonly-randconfig-003-20260121    clang-20
x86_64      buildonly-randconfig-004-20260121    clang-20
x86_64      buildonly-randconfig-005-20260121    clang-20
x86_64      buildonly-randconfig-006-20260121    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-011-20260121    gcc-14
x86_64                randconfig-012-20260121    gcc-14
x86_64                randconfig-013-20260121    gcc-14
x86_64                randconfig-014-20260121    gcc-14
x86_64                randconfig-015-20260121    gcc-14
x86_64                randconfig-016-20260121    gcc-14
x86_64                randconfig-071-20260121    clang-20
x86_64                randconfig-072-20260121    clang-20
x86_64                randconfig-073-20260121    clang-20
x86_64                randconfig-074-20260121    clang-20
x86_64                randconfig-075-20260121    clang-20
x86_64                randconfig-076-20260121    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-22
xtensa                randconfig-001-20260121    gcc-8.5.0
xtensa                randconfig-002-20260121    gcc-8.5.0
xtensa                    smp_lx200_defconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
