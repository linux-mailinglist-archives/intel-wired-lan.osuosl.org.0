Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1AF9546C5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 12:28:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC22241260;
	Fri, 16 Aug 2024 10:28:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NP6J7JlKRT5c; Fri, 16 Aug 2024 10:28:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B36AB412C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723804133;
	bh=6Mk6yub60f2qILJP02kE03ezDuDeM6GLHDKDr/lPPEQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1bXziQjjTvDC+C/MgRfP3yXlLOy+PDUWGlLffzHw1diq/+40P61znS7qKRa8EZd3P
	 8b0EhNGcBppi7zyYQpM7yC3fas+Hy8KL8X7Q+6bgdSxXdIfqHyTYiEgxbFspanJQNo
	 cXvM66e/NH3cSU6kBdejkvjwijguUhZNiWWNHckMHReUNfRZxmnGT833AJE1CeB9Fn
	 eQIidckHmoA+tazunwzxn0VvZEzHKyj6Q0V2MK22wjMdn5edvlxVQ+lfJzi3LBRieX
	 ZxKf8UYLyesB8NnpenrbE3j+8sJun6m2t5itDZSaj7YxMNHaQiIauhqXqT7XspuxKa
	 yEt0ApPxh1WsQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B36AB412C4;
	Fri, 16 Aug 2024 10:28:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3CEAD1BF82C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 10:28:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 278D484143
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 10:28:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UDGjcL6rqRKn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 10:28:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4DAB98413E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DAB98413E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DAB98413E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 10:28:49 +0000 (UTC)
X-CSE-ConnectionGUID: wGJkH4ffT9SX8vYbBVJGzQ==
X-CSE-MsgGUID: vLoc2UVLRq6mbSBcMH8AEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="22238707"
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600"; d="scan'208";a="22238707"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2024 03:28:49 -0700
X-CSE-ConnectionGUID: EnpIjAM7SN6Xc+9ZZzoVWA==
X-CSE-MsgGUID: rJN8bruBSoOA0xetgqf6RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600"; d="scan'208";a="59796906"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 16 Aug 2024 03:28:48 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1seuCM-0006II-0A
 for intel-wired-lan@lists.osuosl.org; Fri, 16 Aug 2024 10:28:46 +0000
Date: Fri, 16 Aug 2024 18:28:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408161812.IDyWmBE4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723804130; x=1755340130;
 h=date:from:to:subject:message-id;
 bh=ABd8boRx/rc1yDRwZIzNwVTd16xXKprLWfqOw5J18t8=;
 b=GdM5jqzb2MCxAjtyAnimbUZ5/g7G1ffJ8Wog12CGsgz9oXVFzz8Ti67c
 vfWnAjmAGiBCU5OH0/5k55aNw/u/0oiGtKuxNIPNAohCOhsiAIIb4CVvv
 SYxFaKR8O4mS3koCiJ4E6SI8IYgRFkqqRcfxjvtt2fkCu9npL++STotch
 hO7rjUHDq4U6kx6Ywu2elQ/6erHk3Ii9eiJhXsXr5t0O8PxwSH14Hy1JV
 zHYXoYtRJL4fYEqI/6EOHFk7AefeODxRcyMnt7iuUFeCc2eJkNrVocPiu
 8xrKRg02mZqLlWFm+jKbG1o562PDU+aiFQwUo2aBp3mypnxnE7OxBt9s2
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GdM5jqzb
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 9c2544f4a20b3c5a29974524b706ef84c3c8714d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 9c2544f4a20b3c5a29974524b706ef84c3c8714d  ice: fix truesize operations for PAGE_SIZE >= 8192

elapsed time: 1107m

configs tested: 83
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240816   gcc-13.2.0
arc                   randconfig-002-20240816   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                   randconfig-001-20240816   clang-20
arm                   randconfig-002-20240816   clang-20
arm                   randconfig-003-20240816   clang-20
arm                   randconfig-004-20240816   clang-20
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240816   clang-20
arm64                 randconfig-002-20240816   clang-20
arm64                 randconfig-003-20240816   clang-20
arm64                 randconfig-004-20240816   clang-20
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240816   gcc-14.1.0
csky                  randconfig-002-20240816   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240816   gcc-12
i386         buildonly-randconfig-002-20240816   clang-18
i386         buildonly-randconfig-003-20240816   clang-18
i386         buildonly-randconfig-004-20240816   clang-18
i386         buildonly-randconfig-005-20240816   gcc-11
i386         buildonly-randconfig-006-20240816   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240816   clang-18
i386                  randconfig-002-20240816   gcc-12
i386                  randconfig-003-20240816   gcc-11
i386                  randconfig-004-20240816   gcc-12
i386                  randconfig-005-20240816   clang-18
i386                  randconfig-006-20240816   gcc-11
i386                  randconfig-011-20240816   gcc-12
i386                  randconfig-012-20240816   clang-18
i386                  randconfig-013-20240816   clang-18
i386                  randconfig-014-20240816   gcc-12
i386                  randconfig-015-20240816   gcc-12
i386                  randconfig-016-20240816   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
