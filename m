Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF98B9D558E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Nov 2024 23:40:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EED78406CC;
	Thu, 21 Nov 2024 22:40:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6t-fkpZY0sA9; Thu, 21 Nov 2024 22:40:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97CDD406CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732228807;
	bh=Zxqd+aHW3NFNBxriL8NwcKJ2yH/LBr22md2/2ZVbBKg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DQO6nFiwNXzzjU6oWFGXR7z4UsGOZsGq5qqy0rD4ZLF6xCb/zjv6b14PDRYVL66xh
	 arABg9lpfsuY73LVLGDIy4YeWgmfYH9NrarGiCbe2mQl2bb18z1lcfuPg9Pip5UsUB
	 3+LFy/j0qHkzZGL3OQ/GQdB3IdlYVS3eKkcd0waXyYWgVbvp/DceZLSxHTZwbXBQc9
	 wN0vxTIjTfjmWs3yOO4EyVUmLwcejnd5bbC6s1jIycoEepP6eWY9ngKJHe9tkeq/SL
	 jm5c3LoXYVXrQAESaJB3+rUbpaTikfBF2yQlgJbZgZIUXGTHj9Cr1HSebUI9FqJDny
	 s771qomS9Kejg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97CDD406CE;
	Thu, 21 Nov 2024 22:40:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 57D65B69
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Nov 2024 22:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 37D17406C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Nov 2024 22:40:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BKA92LYHrNeS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Nov 2024 22:40:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AAD13406C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAD13406C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAD13406C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Nov 2024 22:40:02 +0000 (UTC)
X-CSE-ConnectionGUID: /7a0iikQSjCnBOgMzMMBDA==
X-CSE-MsgGUID: QG57O7+xRv2olGlmIpRzKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="32609544"
X-IronPort-AV: E=Sophos;i="6.12,173,1728975600"; d="scan'208";a="32609544"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 14:40:02 -0800
X-CSE-ConnectionGUID: zVhvXU/vQK+BUdnlGemGOA==
X-CSE-MsgGUID: 8h1KJG4CQvuA2Sq3Oj5eYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,173,1728975600"; d="scan'208";a="90801817"
Received: from lkp-server01.sh.intel.com (HELO 8122d2fc1967) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 21 Nov 2024 14:40:01 -0800
Received: from kbuild by 8122d2fc1967 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tEFqB-0003QU-0S
 for intel-wired-lan@lists.osuosl.org; Thu, 21 Nov 2024 22:39:59 +0000
Date: Fri, 22 Nov 2024 06:39:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411220621.nxP7I7eG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732228803; x=1763764803;
 h=date:from:to:subject:message-id;
 bh=IUQaimT7CKUzVO14yUD6mkqu6AtIGz23ieeMFYakqcY=;
 b=BYLNKS/OZLR4sOS1wa5Y0O5qvspjoEDVYUj2aBm4gnKJAQwTL5DtHE1e
 hQXkYpRRaV12qvZeDN8RBVdAUeC9iaVnI548qEFpHbmXdF22vqSTuMb9O
 /AMMvWe1/A+A6sed0RcW+TE8HA9g6mQtgCBrC+bwOMKRiHMEh3iXe7QA9
 yxhTFZkAlRrp+jQbwniL9v2Ong2DUhiQz2l5mhUdScIYzV8qDbbTRxjlQ
 j8yDwAHk42RXfkNWlWt1VLh1yB5803JpGFGeD3NdSNencNp8NkYwS63fW
 QHCoyO1x21HbzjaqnxcS6UTT4S4jHSlMN8fszYoqTDxRXQPi4yn1spVp3
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BYLNKS/O
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e0b9950bb4aee297521ddf340c7754291858b25d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: e0b9950bb4aee297521ddf340c7754291858b25d  intel/fm10k: Remove unused fm10k_iov_msg_mac_vlan_pf

elapsed time: 1299m

configs tested: 99
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241121    gcc-13.2.0
arc                   randconfig-002-20241121    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20241121    clang-20
arm                   randconfig-002-20241121    gcc-14.2.0
arm                   randconfig-003-20241121    clang-20
arm                   randconfig-004-20241121    gcc-14.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241121    clang-20
arm64                 randconfig-002-20241121    clang-20
arm64                 randconfig-003-20241121    gcc-14.2.0
arm64                 randconfig-004-20241121    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20241121    gcc-14.2.0
csky                  randconfig-002-20241121    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241121    clang-20
hexagon               randconfig-002-20241121    clang-15
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241122    clang-19
i386        buildonly-randconfig-002-20241122    clang-19
i386        buildonly-randconfig-003-20241122    clang-19
i386        buildonly-randconfig-004-20241122    clang-19
i386        buildonly-randconfig-005-20241122    gcc-12
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20241121    gcc-14.2.0
loongarch             randconfig-002-20241121    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20241121    gcc-14.2.0
nios2                 randconfig-002-20241121    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20241121    gcc-14.2.0
parisc                randconfig-002-20241121    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-20
powerpc               randconfig-001-20241121    clang-15
powerpc               randconfig-002-20241121    gcc-14.2.0
powerpc               randconfig-003-20241121    clang-20
powerpc64             randconfig-001-20241121    gcc-14.2.0
powerpc64             randconfig-002-20241121    clang-20
powerpc64             randconfig-003-20241121    clang-20
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20241121    gcc-14.2.0
riscv                 randconfig-002-20241121    gcc-14.2.0
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20241121    gcc-14.2.0
s390                  randconfig-002-20241121    clang-20
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20241121    gcc-14.2.0
sh                    randconfig-002-20241121    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc64               randconfig-001-20241121    gcc-14.2.0
sparc64               randconfig-002-20241121    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
um                    randconfig-001-20241121    gcc-12
um                    randconfig-002-20241121    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                               rhel-9.4    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241121    gcc-14.2.0
xtensa                randconfig-002-20241121    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
