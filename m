Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eDM4GOOMUmo5QwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jul 2026 20:35:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 419DC742805
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jul 2026 20:35:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="s3mz9/sb";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3EDF81E3C;
	Sat, 11 Jul 2026 18:35:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zzoK-X09cXCb; Sat, 11 Jul 2026 18:35:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E22F81E32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783794911;
	bh=MEZY1ZCo3HGpb6ia1eQxbTrhzGxijyGbsdkwJeWmScw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s3mz9/sb/sr8Q1+9MfJr+xPFFFYyldgUY5xfMzTtu9mRvmV0V2tZYJLzpSNT8raM8
	 C57VWCXOyFgvsXYlpT9A4ArBWQymGjFm8hVBvCqPl470UazZN/QOSqo9imKBBVKo5O
	 Xt+tXdWqedAnsTf07cONoh+55ppnd35kJOTGKj7zoyrGKfH67MUqCgNiVEtui0Y0OT
	 MHpMdIuBE4nflb7Hq3BFHo79ScKIseLwGNXt2+45SCR/BB6X6u+5+eDFEKPa/Npu23
	 BKR5hX7xp9ZH+dYMuCn1TH7GE7vLeGq/8Ry/F8n9kBLhmc7xirudyqQwMq3BRdEEPx
	 KXgn9m4IGJu9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E22F81E32;
	Sat, 11 Jul 2026 18:35:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F5E82EE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2026 18:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 016294002B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2026 18:35:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0mN0YerzD_k2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Jul 2026 18:35:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AD64640574
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD64640574
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AD64640574
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2026 18:35:08 +0000 (UTC)
X-CSE-ConnectionGUID: /HJ0+O7oSkqC+HbM0rxp2g==
X-CSE-MsgGUID: 5wR9pF5aQ6W20WzTVm82dA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95839872"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95839872"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2026 11:35:08 -0700
X-CSE-ConnectionGUID: h3xT/caDSMKzUDn84bNEZA==
X-CSE-MsgGUID: EMp6NhrbTru4m9DlaOWwLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="255249079"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by orviesa007.jf.intel.com with ESMTP; 11 Jul 2026 11:35:06 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wicXY-00000000KJE-1KOB;
 Sat, 11 Jul 2026 18:35:04 +0000
Date: Sun, 12 Jul 2026 02:34:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202607120248.ZrwVgXzT-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783794909; x=1815330909;
 h=date:from:to:subject:message-id;
 bh=X7pN8gZQlwKhgbhsRp/kmLnCnMfVtlg1KfmyGZbmqtU=;
 b=l8XyDvYXhh/jQrikxQhx0JYxLQV52HRHQJ9D0BQ/JyBWWXHJ6144gNeK
 4dBPUWY+2zrGtOCMxSd3y2aLVe6PVCNR47evPm11OaHPGV2XuMcvdk7rL
 C3Rf5vid0YWFHlXCZR7EejAMeOekbMf3cM/LjEaPm/7zGy4xdWBFNf7iv
 /4z7ctYOoARTqiNXm5zjUcInp0F08S6LRrUFWzdVjwCL2d2dmRLjm6P/O
 wxSdqeDpnXQxEvYmjaYHZ5r50iSmvUzLBB1djmED0OqSkEGAV/YSiwLzb
 la5gNvALhNTs6tI7wEaDFHYXULK4oJrnD2UI1kc/U5NyjPU7L+GNH4g8s
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l8XyDvYX
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 ea07c7997d4c67189af0b56919a5f4c39a495fd1
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 419DC742805

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: ea07c7997d4c67189af0b56919a5f4c39a495fd1  ixd: add devlink support

elapsed time: 749m

configs tested: 243
configs skipped: 12

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
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260711    gcc-13.4.0
arc                   randconfig-002-20260711    gcc-13.4.0
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    clang-23
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    gcc-16.1.0
arm                   randconfig-001-20260711    gcc-13.4.0
arm                   randconfig-002-20260711    gcc-13.4.0
arm                   randconfig-003-20260711    gcc-13.4.0
arm                   randconfig-004-20260711    gcc-13.4.0
arm                        vexpress_defconfig    gcc-16.1.0
arm                         wpcm450_defconfig    gcc-16.1.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260711    gcc-16.1.0
arm64                 randconfig-002-20260711    gcc-16.1.0
arm64                 randconfig-003-20260711    gcc-16.1.0
arm64                 randconfig-004-20260711    gcc-16.1.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260711    gcc-16.1.0
csky                  randconfig-002-20260711    gcc-16.1.0
hexagon                          allmodconfig    gcc-16.1.0
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    gcc-16.1.0
hexagon                        randconfig-001    gcc-11.5.0
hexagon               randconfig-001-20260711    gcc-11.5.0
hexagon               randconfig-001-20260711    gcc-16.1.0
hexagon                        randconfig-002    gcc-11.5.0
hexagon               randconfig-002-20260711    gcc-11.5.0
hexagon               randconfig-002-20260711    gcc-16.1.0
i386                             allmodconfig    clang-22
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    clang-22
i386                 buildonly-randconfig-001    gcc-14
i386        buildonly-randconfig-001-20260711    gcc-14
i386                 buildonly-randconfig-002    gcc-14
i386        buildonly-randconfig-002-20260711    gcc-14
i386                 buildonly-randconfig-003    gcc-14
i386        buildonly-randconfig-003-20260711    gcc-14
i386                 buildonly-randconfig-004    gcc-14
i386        buildonly-randconfig-004-20260711    gcc-14
i386                 buildonly-randconfig-005    gcc-14
i386        buildonly-randconfig-005-20260711    gcc-14
i386                 buildonly-randconfig-006    gcc-14
i386        buildonly-randconfig-006-20260711    gcc-14
i386                                defconfig    gcc-16.1.0
i386                           randconfig-001    clang-22
i386                  randconfig-001-20260711    clang-22
i386                           randconfig-002    clang-22
i386                  randconfig-002-20260711    clang-22
i386                           randconfig-003    clang-22
i386                  randconfig-003-20260711    clang-22
i386                           randconfig-004    clang-22
i386                  randconfig-004-20260711    clang-22
i386                           randconfig-005    clang-22
i386                  randconfig-005-20260711    clang-22
i386                           randconfig-006    clang-22
i386                  randconfig-006-20260711    clang-22
i386                           randconfig-007    clang-22
i386                  randconfig-007-20260711    clang-22
i386                  randconfig-011-20260711    gcc-13
i386                  randconfig-012-20260711    gcc-13
i386                  randconfig-013-20260711    gcc-13
i386                  randconfig-014-20260711    gcc-13
i386                  randconfig-015-20260711    gcc-13
i386                  randconfig-016-20260711    gcc-13
i386                  randconfig-017-20260711    gcc-13
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch                      randconfig-001    gcc-11.5.0
loongarch             randconfig-001-20260711    gcc-11.5.0
loongarch             randconfig-001-20260711    gcc-16.1.0
loongarch                      randconfig-002    gcc-11.5.0
loongarch             randconfig-002-20260711    gcc-11.5.0
loongarch             randconfig-002-20260711    gcc-16.1.0
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    clang-23
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    clang-23
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    clang-23
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
nios2                            allmodconfig    clang-20
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                               defconfig    clang-23
nios2                          randconfig-001    gcc-11.5.0
nios2                 randconfig-001-20260711    gcc-11.5.0
nios2                 randconfig-001-20260711    gcc-16.1.0
nios2                          randconfig-002    gcc-11.5.0
nios2                 randconfig-002-20260711    gcc-11.5.0
nios2                 randconfig-002-20260711    gcc-16.1.0
openrisc                         allmodconfig    clang-20
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    clang-23
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                           allyesconfig    clang-17
parisc                              defconfig    gcc-16.1.0
parisc                         randconfig-001    clang-17
parisc                randconfig-001-20260711    clang-17
parisc                         randconfig-002    clang-17
parisc                randconfig-002-20260711    clang-17
parisc64                            defconfig    clang-23
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                     asp8347_defconfig    clang-23
powerpc                    mvme5100_defconfig    gcc-16.1.0
powerpc                        randconfig-001    clang-17
powerpc               randconfig-001-20260711    clang-17
powerpc                        randconfig-002    clang-17
powerpc               randconfig-002-20260711    clang-17
powerpc64                      randconfig-001    clang-17
powerpc64             randconfig-001-20260711    clang-17
powerpc64                      randconfig-002    clang-17
powerpc64             randconfig-002-20260711    clang-17
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                            allyesconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv                          randconfig-001    gcc-8.5.0
riscv                 randconfig-001-20260711    gcc-8.5.0
riscv                          randconfig-002    gcc-8.5.0
riscv                 randconfig-002-20260711    gcc-8.5.0
s390                             allmodconfig    clang-17
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    gcc-16.1.0
s390                           randconfig-001    gcc-8.5.0
s390                  randconfig-001-20260711    gcc-8.5.0
s390                           randconfig-002    gcc-8.5.0
s390                  randconfig-002-20260711    gcc-8.5.0
sh                               alldefconfig    gcc-16.1.0
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                               allyesconfig    clang-17
sh                                  defconfig    gcc-14
sh                             randconfig-001    gcc-8.5.0
sh                    randconfig-001-20260711    gcc-8.5.0
sh                             randconfig-002    gcc-8.5.0
sh                    randconfig-002-20260711    gcc-8.5.0
sparc                             allnoconfig    clang-23
sparc                               defconfig    gcc-16.1.0
sparc                          randconfig-001    gcc-16.1.0
sparc                 randconfig-001-20260711    gcc-16.1.0
sparc                          randconfig-002    gcc-16.1.0
sparc                 randconfig-002-20260711    gcc-16.1.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    gcc-14
sparc64                        randconfig-001    gcc-16.1.0
sparc64               randconfig-001-20260711    gcc-16.1.0
sparc64                        randconfig-002    gcc-16.1.0
sparc64               randconfig-002-20260711    gcc-16.1.0
um                               allmodconfig    clang-17
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-16.1.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                             randconfig-001    gcc-16.1.0
um                    randconfig-001-20260711    gcc-16.1.0
um                             randconfig-002    gcc-16.1.0
um                    randconfig-002-20260711    gcc-16.1.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64      buildonly-randconfig-001-20260711    gcc-14
x86_64      buildonly-randconfig-002-20260711    gcc-12
x86_64      buildonly-randconfig-002-20260711    gcc-14
x86_64      buildonly-randconfig-003-20260711    clang-22
x86_64      buildonly-randconfig-003-20260711    gcc-14
x86_64      buildonly-randconfig-004-20260711    gcc-14
x86_64      buildonly-randconfig-005-20260711    gcc-14
x86_64      buildonly-randconfig-006-20260711    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                         randconfig-001    clang-22
x86_64                randconfig-001-20260711    clang-22
x86_64                randconfig-001-20260711    gcc-14
x86_64                         randconfig-002    clang-22
x86_64                randconfig-002-20260711    clang-22
x86_64                randconfig-002-20260711    gcc-14
x86_64                         randconfig-003    clang-22
x86_64                randconfig-003-20260711    clang-22
x86_64                randconfig-003-20260711    gcc-14
x86_64                         randconfig-004    clang-22
x86_64                randconfig-004-20260711    clang-22
x86_64                randconfig-004-20260711    gcc-14
x86_64                         randconfig-005    clang-22
x86_64                randconfig-005-20260711    clang-22
x86_64                randconfig-005-20260711    gcc-14
x86_64                         randconfig-006    clang-22
x86_64                randconfig-006-20260711    clang-22
x86_64                randconfig-006-20260711    gcc-14
x86_64                         randconfig-011    gcc-14
x86_64                randconfig-011-20260711    gcc-14
x86_64                         randconfig-012    gcc-14
x86_64                randconfig-012-20260711    gcc-14
x86_64                         randconfig-013    gcc-14
x86_64                randconfig-013-20260711    gcc-14
x86_64                         randconfig-014    gcc-14
x86_64                randconfig-014-20260711    gcc-14
x86_64                         randconfig-015    gcc-14
x86_64                randconfig-015-20260711    gcc-14
x86_64                         randconfig-016    gcc-14
x86_64                randconfig-016-20260711    gcc-14
x86_64                randconfig-071-20260711    gcc-14
x86_64                randconfig-072-20260711    gcc-14
x86_64                randconfig-073-20260711    gcc-14
x86_64                randconfig-074-20260711    gcc-14
x86_64                randconfig-075-20260711    gcc-14
x86_64                randconfig-076-20260711    gcc-14
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    clang-23
xtensa                           allyesconfig    clang-20
xtensa                           allyesconfig    gcc-16.1.0
xtensa                         randconfig-001    gcc-16.1.0
xtensa                randconfig-001-20260711    gcc-16.1.0
xtensa                         randconfig-002    gcc-16.1.0
xtensa                randconfig-002-20260711    gcc-16.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
