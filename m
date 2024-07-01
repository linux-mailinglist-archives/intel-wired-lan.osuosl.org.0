Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1847B91DA16
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 10:37:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC78381CC3;
	Mon,  1 Jul 2024 08:37:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8vKo7EMOjhmq; Mon,  1 Jul 2024 08:37:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9364081CDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719823031;
	bh=Gt7qJuS9uwl/rMafs3pYI+eKeN9okFIyFoV1L1Q3JMM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YrZEnDYrJ4f3TQ6WYGQvISj9GOLFhhQQA1KY46EVn9Jfpsdj6gQJm+EZYIDBH7egu
	 62gzjXtC3jscPiE9I+CoeGRX0gyDWyg48Y7Bw5MeYL2QSAYLUQrPt98OblIUYvW8cj
	 VSonYL2oZRzUDIcIE2NhIx8UkXR+muevezkKSA2VjdMpY75KASqXJdCsAm8Chq4ckO
	 dsc7TCFzWgfC6QiCjE0QugYTWrwHJm5FxpDWXWyXXIPYa5KDAqHp8YOE9Od0h7giB4
	 hXoOBKkvF5sldLxh25siEazLff4CSocRQpaMbDnVmiX3bY473tai0Ub+11v8CKP195
	 G3Io3r1oqxnBg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9364081CDB;
	Mon,  1 Jul 2024 08:37:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D317F1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 08:37:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CAF0E409EE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 08:37:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1dBgogJ4YUUL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 08:37:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 44097409E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44097409E4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44097409E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 08:37:06 +0000 (UTC)
X-CSE-ConnectionGUID: j7Hu33qXQOmzwSVaLRUV9w==
X-CSE-MsgGUID: un8ANIY4QnqDvXx+UsQJXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11119"; a="28327467"
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; d="scan'208";a="28327467"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 01:37:07 -0700
X-CSE-ConnectionGUID: Ivfgr3nxTE2Xq+F3RNVpKw==
X-CSE-MsgGUID: ZTCVD7rTRnenZoF3YjNzPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; d="scan'208";a="82977525"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 01 Jul 2024 01:37:05 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sOCX0-000Mbs-2U
 for intel-wired-lan@lists.osuosl.org; Mon, 01 Jul 2024 08:37:02 +0000
Date: Mon, 01 Jul 2024 16:36:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407011621.LMarQFQP-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719823029; x=1751359029;
 h=date:from:to:subject:message-id;
 bh=akY4hTsS8rPog5AgDH2LOg7MR0UKwKa0ZLmkFBVFGeM=;
 b=LeLh9GDijWWwoUpK4BFA2mvw8oQEYdP7Sl6MKBRwSa87PcfGyL9w4V3H
 F69WFJYkI5cML1NJT4MELBJvpQqs6zaz/c7weZ7L61Om4NoN6UmnkZJWq
 /0n5SyWm2SOySOSIGyUlgysQsPtrS9W/yt7QudpJFfm0CC7rr6SegkV+K
 h/wcDYnamEjLaPlQdNNdZyd+bRK3ROUZi46zO/ZlmhEKElRlefyqVonQm
 RG+6N9SYdhz2V6EzLwUZBfFY6uAeF9qkOa7VRmpdxX3UMwAk/b5mtrTeR
 fkclKFBfdqX7SCDvvB6ML/q5VsCnOA2ZHo0G0nBW77cFoP6VliTvpgqun
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LeLh9GDi
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 750da165df3e2b3d2c0d07ef7a3ca64246e5c817
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 750da165df3e2b3d2c0d07ef7a3ca64246e5c817  e1000e: Fix S0ix residency on corporate systems

elapsed time: 3552m

configs tested: 71
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                   randconfig-001-20240701   gcc-13.2.0
arc                   randconfig-002-20240701   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                   randconfig-001-20240701   gcc-13.2.0
arm                   randconfig-002-20240701   gcc-13.2.0
arm                   randconfig-004-20240701   clang-15
arm64                             allnoconfig   gcc-13.2.0
arm64                 randconfig-001-20240701   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
hexagon                           allnoconfig   clang-19
i386         buildonly-randconfig-001-20240629   gcc-7
i386         buildonly-randconfig-001-20240630   clang-18
i386         buildonly-randconfig-002-20240629   gcc-7
i386         buildonly-randconfig-002-20240630   clang-18
i386         buildonly-randconfig-003-20240629   gcc-7
i386         buildonly-randconfig-003-20240630   clang-18
i386         buildonly-randconfig-004-20240629   gcc-7
i386         buildonly-randconfig-004-20240630   clang-18
i386         buildonly-randconfig-005-20240629   gcc-7
i386         buildonly-randconfig-005-20240630   clang-18
i386         buildonly-randconfig-006-20240629   gcc-7
i386         buildonly-randconfig-006-20240630   clang-18
i386                  randconfig-001-20240629   gcc-7
i386                  randconfig-001-20240630   clang-18
i386                  randconfig-002-20240629   gcc-7
i386                  randconfig-002-20240630   clang-18
i386                  randconfig-003-20240629   gcc-7
i386                  randconfig-003-20240630   clang-18
i386                  randconfig-004-20240629   gcc-7
i386                  randconfig-004-20240630   clang-18
i386                  randconfig-005-20240629   gcc-7
i386                  randconfig-005-20240630   clang-18
i386                  randconfig-006-20240629   gcc-7
i386                  randconfig-006-20240630   clang-18
i386                  randconfig-011-20240629   gcc-7
i386                  randconfig-011-20240630   clang-18
i386                  randconfig-012-20240629   gcc-7
i386                  randconfig-012-20240630   clang-18
i386                  randconfig-013-20240629   gcc-7
i386                  randconfig-013-20240630   clang-18
i386                  randconfig-014-20240629   gcc-7
i386                  randconfig-014-20240630   clang-18
i386                  randconfig-015-20240629   gcc-7
i386                  randconfig-015-20240630   clang-18
i386                  randconfig-016-20240629   gcc-7
i386                  randconfig-016-20240630   clang-18
loongarch                         allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-13.2.0
x86_64       buildonly-randconfig-001-20240701   gcc-11
x86_64       buildonly-randconfig-002-20240701   gcc-13
x86_64       buildonly-randconfig-003-20240701   clang-18
x86_64       buildonly-randconfig-004-20240701   clang-18
x86_64       buildonly-randconfig-005-20240701   gcc-13
x86_64       buildonly-randconfig-006-20240701   gcc-11
x86_64                randconfig-001-20240701   gcc-10
x86_64                randconfig-002-20240701   gcc-13
xtensa                            allnoconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
