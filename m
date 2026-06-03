Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iz+PLuClIGoa6QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Jun 2026 00:08:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2EB63B806
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Jun 2026 00:08:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=g0MUKu3C;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F03B142A38;
	Wed,  3 Jun 2026 22:08:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dfEkjYsQKXq3; Wed,  3 Jun 2026 22:08:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C40242A35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780524508;
	bh=rt+KR9NillM4xqouucggg/5vgB+8uotO/l1xdUP8oVI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=g0MUKu3CnCy+36s2NoExGQiPHyCCJLpH0WlLgow/VzBzvXyExWkWWSi+H8o8t0FhT
	 VYzh9LlaOIQ+boUCxJ2JHvslFbdM0dI76cf8lAnh4bRMpX3Rx5q7BK2tyESBVkHWVQ
	 OvNdLEXOuvhZsc8SgtgOCgJ8IY3zYac/mDd9w8cZXF97h0kqn4d2CTt7bmmm+eZeRk
	 KI78+X0dpChFbNQCMpQ/KA4sabDEuZLADvGRr9k6NVHfFY1iITj4+zAeUyFGlREN8o
	 15/Ps88gP290bIR3PSJWydLRrRgSfQ8nwjANxXsB/Fej1rTR5AahoEjur60JXqNco4
	 NkL3mRb7p+rHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C40242A35;
	Wed,  3 Jun 2026 22:08:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 06383192
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 22:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EBBC5849BD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 22:08:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w_NaB8P1OueE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2026 22:08:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E4102849B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4102849B8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4102849B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 22:08:24 +0000 (UTC)
X-CSE-ConnectionGUID: Fhn2ZcSmSDak9SuUANUxIQ==
X-CSE-MsgGUID: vASEodk8TKO4PW1tfNWhjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="85200621"
X-IronPort-AV: E=Sophos;i="6.24,186,1774335600"; d="scan'208";a="85200621"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 15:08:24 -0700
X-CSE-ConnectionGUID: 8N5f1qB7RMul2gJ7MMLwFA==
X-CSE-MsgGUID: PqPpiFyjTQiow1jP2RNU1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,186,1774335600"; d="scan'208";a="249451525"
Received: from lkp-server01.sh.intel.com (HELO f0d55cb201f0) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 03 Jun 2026 15:08:23 -0700
Received: from kbuild by f0d55cb201f0 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wUtl7-00000000DwK-0EeQ;
 Wed, 03 Jun 2026 22:08:21 +0000
Date: Thu, 04 Jun 2026 06:08:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606040656.Uyf043QJ-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780524505; x=1812060505;
 h=date:from:to:subject:message-id;
 bh=XGR3qZVEjwJlGf4UY/nTttL/x47d7KD+Rh7KsjYIwpk=;
 b=bfmK3ihQ2koRsqvfQIFXLcM8GmiDq0cRxpuK4W5ubnOBbB+ThJWu1TtF
 QiWxPMBc74ud2cukk4B0/3gB+PTJEZPYKk8fzIJvQQ3VjjgO7cggatmeY
 mxvASVsSF8M+QGokpFXx7aoZ9Rj5X4tCcjRLCxDRoEoaGTaShYpUNaq95
 DepTWUT/2J7TbJbETOOLy+IZHHXmuyI9E4810a7SFJtHYuaMOk42SKkb/
 p3i1vWeqZkMlJ1Jjd/8FyVlgSNXOlVswtVSJ+8S4gJPFsxYCvVWo1I9t2
 /+tXh4dEZWzPmzhByJD39w8A0tNHxrZluSgYGDRU1Tal7p9lm8V9rHNy1
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bfmK3ihQ
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 3522b21fd7e1863d0734537737bd59f1b90d0190
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
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
X-Rspamd-Queue-Id: 8E2EB63B806

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 3522b21fd7e1863d0734537737bd59f1b90d0190  devlink: Release nested relation on devlink free

elapsed time: 2569m

configs tested: 220
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    clang-17
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260603    gcc-8.5.0
arc                   randconfig-002-20260603    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-17
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-16.1.0
arm                   randconfig-001-20260603    gcc-8.5.0
arm                   randconfig-002-20260603    gcc-8.5.0
arm                   randconfig-003-20260603    gcc-8.5.0
arm                   randconfig-004-20260603    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260603    gcc-15.2.0
arm64                 randconfig-002-20260603    gcc-15.2.0
arm64                 randconfig-003-20260603    gcc-15.2.0
arm64                 randconfig-004-20260603    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260603    gcc-15.2.0
csky                  randconfig-002-20260603    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-16.1.0
hexagon                        randconfig-001    gcc-11.5.0
hexagon               randconfig-001-20260603    gcc-11.5.0
hexagon                        randconfig-002    gcc-11.5.0
hexagon               randconfig-002-20260603    gcc-11.5.0
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386        buildonly-randconfig-001-20260603    clang-20
i386        buildonly-randconfig-002-20260603    clang-20
i386        buildonly-randconfig-003-20260603    clang-20
i386        buildonly-randconfig-004-20260603    clang-20
i386        buildonly-randconfig-005-20260603    clang-20
i386        buildonly-randconfig-006-20260603    clang-20
i386                                defconfig    gcc-16.1.0
i386                  randconfig-001-20260603    clang-22
i386                  randconfig-002-20260603    clang-22
i386                  randconfig-003-20260603    clang-22
i386                  randconfig-004-20260603    clang-22
i386                  randconfig-005-20260603    clang-22
i386                  randconfig-006-20260603    clang-22
i386                  randconfig-007-20260603    clang-22
i386                  randconfig-011-20260603    clang-22
i386                  randconfig-012-20260603    clang-22
i386                  randconfig-013-20260603    clang-22
i386                  randconfig-014-20260603    clang-22
i386                  randconfig-015-20260603    clang-22
i386                  randconfig-016-20260603    clang-22
i386                  randconfig-017-20260603    clang-22
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-23
loongarch                      randconfig-001    gcc-11.5.0
loongarch             randconfig-001-20260603    gcc-11.5.0
loongarch                      randconfig-002    gcc-11.5.0
loongarch             randconfig-002-20260603    gcc-11.5.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-17
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-23
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-23
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-17
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-23
nios2                          randconfig-001    gcc-11.5.0
nios2                 randconfig-001-20260603    gcc-11.5.0
nios2                          randconfig-002    gcc-11.5.0
nios2                 randconfig-002-20260603    gcc-11.5.0
openrisc                         allmodconfig    clang-23
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-17
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-17
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-16.1.0
parisc                randconfig-001-20260603    gcc-8.5.0
parisc                randconfig-002-20260603    gcc-8.5.0
parisc64                            defconfig    clang-23
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-17
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260603    gcc-8.5.0
powerpc               randconfig-002-20260603    gcc-8.5.0
powerpc64             randconfig-001-20260603    gcc-8.5.0
powerpc64             randconfig-002-20260603    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-17
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    clang-17
riscv                               defconfig    gcc-16.1.0
riscv                    nommu_virt_defconfig    clang-23
riscv                 randconfig-001-20260603    gcc-14.3.0
riscv                 randconfig-002-20260603    gcc-14.3.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-17
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-16.1.0
s390                  randconfig-001-20260603    gcc-14.3.0
s390                  randconfig-002-20260603    gcc-14.3.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-17
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260603    gcc-14.3.0
sh                    randconfig-002-20260603    gcc-14.3.0
sparc                             allnoconfig    clang-17
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260603    gcc-15.2.0
sparc                 randconfig-002-20260603    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260603    gcc-15.2.0
sparc64               randconfig-002-20260603    gcc-15.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-17
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260603    gcc-15.2.0
um                    randconfig-002-20260603    gcc-15.2.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-17
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64               buildonly-randconfig-001    clang-20
x86_64      buildonly-randconfig-001-20260603    clang-20
x86_64               buildonly-randconfig-002    clang-20
x86_64      buildonly-randconfig-002-20260603    clang-20
x86_64               buildonly-randconfig-003    clang-20
x86_64      buildonly-randconfig-003-20260603    clang-20
x86_64               buildonly-randconfig-004    clang-20
x86_64      buildonly-randconfig-004-20260603    clang-20
x86_64               buildonly-randconfig-005    clang-20
x86_64      buildonly-randconfig-005-20260603    clang-20
x86_64               buildonly-randconfig-006    clang-20
x86_64      buildonly-randconfig-006-20260603    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                         randconfig-001    clang-20
x86_64                randconfig-001-20260603    clang-20
x86_64                         randconfig-002    clang-20
x86_64                randconfig-002-20260603    clang-20
x86_64                         randconfig-003    clang-20
x86_64                randconfig-003-20260603    clang-20
x86_64                         randconfig-004    clang-20
x86_64                randconfig-004-20260603    clang-20
x86_64                         randconfig-005    clang-20
x86_64                randconfig-005-20260603    clang-20
x86_64                         randconfig-006    clang-20
x86_64                randconfig-006-20260603    clang-20
x86_64                         randconfig-011    clang-22
x86_64                randconfig-011-20260603    clang-22
x86_64                         randconfig-012    clang-22
x86_64                randconfig-012-20260603    clang-22
x86_64                         randconfig-013    clang-22
x86_64                randconfig-013-20260603    clang-22
x86_64                         randconfig-014    clang-22
x86_64                randconfig-014-20260603    clang-22
x86_64                         randconfig-015    clang-22
x86_64                randconfig-015-20260603    clang-22
x86_64                         randconfig-016    clang-22
x86_64                randconfig-016-20260603    clang-22
x86_64                randconfig-071-20260603    clang-22
x86_64                randconfig-072-20260603    clang-22
x86_64                randconfig-073-20260603    clang-22
x86_64                randconfig-074-20260603    clang-22
x86_64                randconfig-075-20260603    clang-22
x86_64                randconfig-076-20260603    clang-22
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-17
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-23
xtensa                randconfig-001-20260603    gcc-15.2.0
xtensa                randconfig-002-20260603    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
