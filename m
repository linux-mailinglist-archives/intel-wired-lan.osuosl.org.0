Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8246C6EF13E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Apr 2023 11:33:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1ED640C2B;
	Wed, 26 Apr 2023 09:33:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1ED640C2B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682501633;
	bh=m4YneyIBSSSYy1gfmL9u35op2Umi2mIhuaeMo74xrf8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=REidnpUi3jkaIMIIlMBGaYaVv5R7o4PUOc32ASOVojXPrBSj2u9i7YXI1SfhX7I89
	 ot8ILLsAqZ0GwVc6I551v+H8/s89EQvXb57PDMw9kjAmX3XYi4/ZXL7agBi/1Q+Ehn
	 2bGBIDWHxHakxYdQVkHdJ3iAuw3VLuz+H2LTYksc1ESRr0ORA/BJ7ceMSIM6BY/HZ/
	 ResKhHhsU8rfJFPQ4F41uHdGes7MLoryFr4JJQUsqvS4ciuRcYYq8/9eQabGtdIn2w
	 Slj+bdF5h+7LnfZkbFRcRk9GUMoqHVikqarOyq1CkcXPVSFHFdSvPyBKCK/IFRJUcd
	 Tme/SoXflJrzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZdZ7aEc5xufl; Wed, 26 Apr 2023 09:33:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF9CE40B79;
	Wed, 26 Apr 2023 09:33:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF9CE40B79
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BA631BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 09:33:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4B3540B79
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 09:33:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4B3540B79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FP9su6fnrJTd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Apr 2023 09:33:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFCCD4055F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFCCD4055F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 09:33:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="410034397"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="410034397"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 02:33:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="758535855"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="758535855"
Received: from lkp-server01.sh.intel.com (HELO 98ee5a99fc83) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 26 Apr 2023 02:33:43 -0700
Received: from kbuild by 98ee5a99fc83 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1prbWx-0000Lc-0J
 for intel-wired-lan@lists.osuosl.org; Wed, 26 Apr 2023 09:33:43 +0000
Date: Wed, 26 Apr 2023 17:33:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230426093328.DMnuj%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682501625; x=1714037625;
 h=date:from:to:subject:message-id;
 bh=e8Ax8y80+vDVU0wlIr/1lVv5ChZxOBLchLYvIAieG5s=;
 b=IhIQLzpYZxWwMjLGYN+O6gaL4EAcAyf9W4vVRFy2v5o0uMHgUh9Cqfph
 3GqcDWb9s4ac5F7oE9B3+yStCz2BHS4IX4tVLSGxmfZvHnYg1zyMs1rbY
 uPbPa/wNvIekZyxoF0uMVSsD/N9MNT8HtT4Zxdxd25JusNfbDncIpXMvx
 RtmNq8r3SIyAgHGkqN/EnHy7I2ngU2o0SvvYaKGAmLxBgsEJLfK5Frj1e
 2iOn0MIOs6Ge90xre6RiLwHUyHCMAb8vqjAC2u1tekiP1P0IXy3YLoWbM
 qBUmod75MSKFqSfpDCxtvPCWFqt8mtbxHuZSejEnW+7epJZ2mScWVdHdN
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IhIQLzpY
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 22a6b6f2857b2d1eaddd1d025db20ca8e1595aef
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 22a6b6f2857b2d1eaddd1d025db20ca8e1595aef  iavf: Fix out-of-bounds when setting channels on remove

elapsed time: 729m

configs tested: 124
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230423   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r013-20230424   gcc  
alpha                randconfig-r021-20230423   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230424   gcc  
arc                  randconfig-r016-20230424   gcc  
arc                  randconfig-r043-20230423   gcc  
arc                  randconfig-r043-20230424   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230423   gcc  
arm                  randconfig-r046-20230424   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r015-20230423   clang
arm64                randconfig-r031-20230423   gcc  
arm64                randconfig-r032-20230423   gcc  
arm64                randconfig-r035-20230424   clang
csky                                defconfig   gcc  
csky                 randconfig-r022-20230423   gcc  
csky                 randconfig-r025-20230423   gcc  
csky                 randconfig-r031-20230424   gcc  
hexagon      buildonly-randconfig-r003-20230423   clang
hexagon              randconfig-r003-20230423   clang
hexagon              randconfig-r006-20230424   clang
hexagon              randconfig-r041-20230423   clang
hexagon              randconfig-r041-20230424   clang
hexagon              randconfig-r045-20230423   clang
hexagon              randconfig-r045-20230424   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230424   clang
i386                 randconfig-a002-20230424   clang
i386                 randconfig-a003-20230424   clang
i386                 randconfig-a004-20230424   clang
i386                 randconfig-a005-20230424   clang
i386                 randconfig-a006-20230424   clang
i386                 randconfig-a011-20230424   gcc  
i386                 randconfig-a012-20230424   gcc  
i386                 randconfig-a013-20230424   gcc  
i386                 randconfig-a014-20230424   gcc  
i386                 randconfig-a015-20230424   gcc  
i386                 randconfig-a016-20230424   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r001-20230424   gcc  
ia64                 randconfig-r005-20230423   gcc  
ia64                 randconfig-r014-20230423   gcc  
ia64                 randconfig-r035-20230423   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230423   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r033-20230423   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r016-20230423   gcc  
microblaze           randconfig-r002-20230424   gcc  
microblaze           randconfig-r011-20230423   gcc  
microblaze           randconfig-r011-20230424   gcc  
microblaze           randconfig-r015-20230424   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r005-20230424   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230423   gcc  
nios2                randconfig-r024-20230423   gcc  
nios2                randconfig-r026-20230423   gcc  
openrisc     buildonly-randconfig-r006-20230423   gcc  
openrisc             randconfig-r001-20230423   gcc  
openrisc             randconfig-r006-20230423   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r012-20230423   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r036-20230424   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230423   clang
riscv                randconfig-r042-20230424   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r036-20230423   gcc  
s390                 randconfig-r044-20230423   clang
s390                 randconfig-r044-20230424   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230423   gcc  
sh                   randconfig-r012-20230424   gcc  
sh                   randconfig-r034-20230424   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r004-20230423   gcc  
sparc64              randconfig-r013-20230423   gcc  
sparc64              randconfig-r023-20230423   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230424   clang
x86_64               randconfig-a002-20230424   clang
x86_64               randconfig-a003-20230424   clang
x86_64               randconfig-a004-20230424   clang
x86_64               randconfig-a005-20230424   clang
x86_64               randconfig-a006-20230424   clang
x86_64               randconfig-a011-20230424   gcc  
x86_64               randconfig-a012-20230424   gcc  
x86_64               randconfig-a013-20230424   gcc  
x86_64               randconfig-a014-20230424   gcc  
x86_64               randconfig-a015-20230424   gcc  
x86_64               randconfig-a016-20230424   gcc  
x86_64               randconfig-r033-20230424   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r002-20230423   gcc  
xtensa               randconfig-r003-20230424   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
