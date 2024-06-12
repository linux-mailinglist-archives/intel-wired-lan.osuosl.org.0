Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD07905F32
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 01:30:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B744181EA3;
	Wed, 12 Jun 2024 23:30:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FGVLBsDDRUV6; Wed, 12 Jun 2024 23:30:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C83B81E90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718235023;
	bh=idNhATvznGdUIICE5v90Oq3WD6ozpeM8S9evINAKKjA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xYpBFIgekCX/+4TC9aOMw+EqU9gnLanUd5aXhMI6x0YamTnqkZs1Eh5VbY2skwgxU
	 txeF42Ib627XahIWxj5nsbiL8NZW2PigtXp3jk1VURqbXSM6mQdJ0tC7RpuEWOlD/g
	 ScXpl9l1GDIuPBT1k546gSl/Vf9vVCyy/UY19F3qXUYLZKZH4cYUjrJOLMPHsQLmoc
	 hRCdWowIYkcqKLMqynydksIESkiuqpkhIacWozfRM3AkYKPtAADVelZBV9jAjfE+J1
	 QtG2QuRkgx5W7N4haADgy01iSrrvJZNiUyb1+CD4yCVStZKz7CkucqK2i2L2DQnvRN
	 Y1pzqBRZXUt0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C83B81E90;
	Wed, 12 Jun 2024 23:30:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECCA71BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 23:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E567C40160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 23:30:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wz5cn43b481N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 23:30:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8692140025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8692140025
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8692140025
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 23:30:19 +0000 (UTC)
X-CSE-ConnectionGUID: VopcKqoQS+m2b4dLYTflfw==
X-CSE-MsgGUID: iVC2NGf9QIOf1F5ds1Ajfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="12042607"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="12042607"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 16:30:18 -0700
X-CSE-ConnectionGUID: EljD75SJR4+S5NugRIraWA==
X-CSE-MsgGUID: Ay50Xoz8R/WkbZd3WjR9Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="45075786"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 12 Jun 2024 16:30:18 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sHXPz-00020U-0d
 for intel-wired-lan@lists.osuosl.org; Wed, 12 Jun 2024 23:30:15 +0000
Date: Thu, 13 Jun 2024 07:29:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406130722.rbEmqb4X-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718235019; x=1749771019;
 h=date:from:to:subject:message-id;
 bh=iT2Gd58rV5xwqJRGJUPBS0dlk+oemA4H2yLlBmct2EQ=;
 b=Jil4NJoNYs+60yCsPlFXmoCo1pvn9dDI9sF3uj1p0VJXieHdrYevfMF7
 sx07h1BvUKNmuX8LMuozd7hVz9Pnvb5voHIPE6CdPtIY4wybrEzkuodWw
 92P9Mb8IU7ZLcX1QDWjP2E9Xj3qDWlwG86O/cFnSCUE4oSTQRE0HqdTRs
 8R0FTcmJYccKZE+C0No3Mhn8+VkJwHkCZ01RUz5/fprsBY8GTyySfd8dt
 PfjnKfpfofmsa9kEtjPJ9fv/6IPGUZubv5TwnZ8suqa+KtaujhV8T80qr
 yx/TrqUyPMO1xetKhf34wzjXR41zhyg8S/Qzgvo5yjGYRpYJEjiJsWWen
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jil4NJoN
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 fc9ea42acd47da605a03efb50eea6775220d7a92
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: fc9ea42acd47da605a03efb50eea6775220d7a92  ice: implement AQ download pkg retry

elapsed time: 1681m

configs tested: 102
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240613   gcc-13.2.0
arc                   randconfig-002-20240613   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                                 defconfig   clang-14
arm                   randconfig-001-20240613   gcc-13.2.0
arm                   randconfig-002-20240613   clang-17
arm                   randconfig-003-20240613   clang-19
arm                   randconfig-004-20240613   clang-19
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240613   gcc-13.2.0
arm64                 randconfig-002-20240613   clang-19
arm64                 randconfig-003-20240613   clang-19
arm64                 randconfig-004-20240613   clang-19
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240613   gcc-13.2.0
csky                  randconfig-002-20240613   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon                             defconfig   clang-19
hexagon               randconfig-001-20240613   clang-19
hexagon               randconfig-002-20240613   clang-15
i386         buildonly-randconfig-001-20240612   gcc-13
i386         buildonly-randconfig-002-20240612   gcc-8
i386         buildonly-randconfig-003-20240612   gcc-13
i386         buildonly-randconfig-004-20240612   clang-18
i386         buildonly-randconfig-005-20240612   gcc-13
i386         buildonly-randconfig-006-20240612   clang-18
i386                  randconfig-001-20240612   gcc-8
i386                  randconfig-002-20240612   clang-18
i386                  randconfig-003-20240612   clang-18
i386                  randconfig-004-20240612   clang-18
i386                  randconfig-005-20240612   gcc-13
i386                  randconfig-006-20240612   clang-18
i386                  randconfig-011-20240612   clang-18
i386                  randconfig-012-20240612   clang-18
i386                  randconfig-013-20240612   clang-18
i386                  randconfig-014-20240612   gcc-7
i386                  randconfig-015-20240612   gcc-13
i386                  randconfig-016-20240612   gcc-7
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240613   gcc-13.2.0
loongarch             randconfig-002-20240613   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240613   gcc-13.2.0
nios2                 randconfig-002-20240613   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240613   gcc-13.2.0
parisc                randconfig-002-20240613   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc               randconfig-001-20240613   clang-19
powerpc               randconfig-002-20240613   clang-19
powerpc               randconfig-003-20240613   clang-19
powerpc64             randconfig-001-20240613   clang-19
powerpc64             randconfig-002-20240613   clang-19
powerpc64             randconfig-003-20240613   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240613   clang-19
riscv                 randconfig-002-20240613   clang-19
s390                              allnoconfig   clang-19
s390                                defconfig   clang-19
s390                  randconfig-001-20240613   gcc-13.2.0
s390                  randconfig-002-20240613   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                    randconfig-001-20240613   gcc-13.2.0
sh                    randconfig-002-20240613   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240613   gcc-13.2.0
sparc64               randconfig-002-20240613   gcc-13.2.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240613   gcc-9
um                    randconfig-002-20240613   gcc-9
um                           x86_64_defconfig   clang-15
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240613   gcc-13.2.0
xtensa                randconfig-002-20240613   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
