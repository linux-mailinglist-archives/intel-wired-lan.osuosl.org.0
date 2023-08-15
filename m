Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA54577CC94
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 14:27:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3441A6112E;
	Tue, 15 Aug 2023 12:27:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3441A6112E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692102469;
	bh=bssPJ77Eu0tCEDntdo+OQZo9F53DcLm6M3lt33Jqsoc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AER/pWiwV/FL8CqIfkiAc+Pesx/a6tSnsIAlqwY2mN16cGa2i1NT/asNQCdBv7x1J
	 vGmQ+/bzkZWgs2iYFvdiaURX93TaOzYXfe6wINIyWhrrrox4FCMoWc8Eb0xO7/a779
	 ujJVK80CVLazoQ5tEQ/XGpBsac3f1Zc7jsVhPaUSt2U/2QnINq4Zrm/KniuuJU1rwS
	 Z/Ps9153dmnKdYyg4Gf09K25smZrd4nnaiYwDuoaOC+ay8/AL1im1eRXg8Fb5LmK7x
	 /oMUCPiiA/Fcb6vGA1zuTNEEMHccPVLMorwKtKz+gaRBvxXBICudPnpKTlbComZNYb
	 +gM0VQolhfzgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bIUuMbpGBGWm; Tue, 15 Aug 2023 12:27:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09C9261122;
	Tue, 15 Aug 2023 12:27:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09C9261122
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5755D1BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 12:27:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B6BE81F3D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 12:27:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B6BE81F3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A1ZyZRdTnSRY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 12:27:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B274581F3C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 12:27:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B274581F3C
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="438603015"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="438603015"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 05:27:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="768802640"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="768802640"
Received: from lkp-server02.sh.intel.com (HELO b5fb8d9e1ffc) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 15 Aug 2023 05:27:34 -0700
Received: from kbuild by b5fb8d9e1ffc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qVt8y-0000xB-1b
 for intel-wired-lan@lists.osuosl.org; Tue, 15 Aug 2023 12:27:29 +0000
Date: Tue, 15 Aug 2023 20:26:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308152052.vnrC9s2o-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692102461; x=1723638461;
 h=date:from:to:subject:message-id;
 bh=nYjw1VuHdLhGP83MLsnZ6xw4E+p67byZlZI6/uqJ50Y=;
 b=IiFMFGwA7XuiHUU7vY4Y+22xYfoHStlhh6RgnvGw904rAdmjy+nPuAZm
 rDLrrnXOewlgO7q12gtJtqHBAZL3nXr0N5xUDnZ9KBP3Eo1AEaACyHiWJ
 H9mMSQeYMoHnVyhxqoUTXAkAP/4kp9+eQTG4XXank/GcP5GmSqq9LhDdK
 x5DPB27JEf7eNsFg0f5vUVLhqbNVS/BOXw7+RjC5Fg9p4wms9LNnPgjCs
 h6hgZSORcCwbutZIW53tErF1RRj9uU+PCosZvd6dURFqvgrCmGRti7/1R
 tcr8K1UaX+7CVnp3yo95dcEp9uKuzjAX/tveZq10bt0Q0d7vNZgGNBu8x
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IiFMFGwA
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 1d978b8ebf882197e93de46d2a97c9b20aca4809
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
branch HEAD: 1d978b8ebf882197e93de46d2a97c9b20aca4809  i40e: fix potential memory leaks in i40e_remove()

elapsed time: 720m

configs tested: 108
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r023-20230815   gcc  
alpha                randconfig-r031-20230815   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230815   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230815   gcc  
arm                  randconfig-r011-20230815   clang
arm                  randconfig-r034-20230815   gcc  
arm                  randconfig-r046-20230815   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r014-20230815   clang
hexagon              randconfig-r024-20230815   clang
hexagon              randconfig-r041-20230815   clang
hexagon              randconfig-r045-20230815   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230815   clang
i386         buildonly-randconfig-r005-20230815   clang
i386         buildonly-randconfig-r006-20230815   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230815   clang
i386                 randconfig-i002-20230815   clang
i386                 randconfig-i003-20230815   clang
i386                 randconfig-i004-20230815   clang
i386                 randconfig-i005-20230815   clang
i386                 randconfig-i006-20230815   clang
i386                 randconfig-i011-20230815   gcc  
i386                 randconfig-i012-20230815   gcc  
i386                 randconfig-i013-20230815   gcc  
i386                 randconfig-i014-20230815   gcc  
i386                 randconfig-i015-20230815   gcc  
i386                 randconfig-i016-20230815   gcc  
i386                 randconfig-r016-20230815   gcc  
i386                 randconfig-r025-20230815   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230815   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r035-20230815   gcc  
microblaze           randconfig-r015-20230815   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230815   gcc  
openrisc             randconfig-r022-20230815   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r032-20230815   gcc  
parisc               randconfig-r036-20230815   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230815   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r002-20230815   clang
s390                 randconfig-r044-20230815   gcc  
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230815   gcc  
sparc                randconfig-r006-20230815   gcc  
sparc                randconfig-r033-20230815   gcc  
sparc64              randconfig-r012-20230815   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r026-20230815   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230815   clang
x86_64       buildonly-randconfig-r002-20230815   clang
x86_64       buildonly-randconfig-r003-20230815   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230815   gcc  
x86_64               randconfig-x002-20230815   gcc  
x86_64               randconfig-x003-20230815   gcc  
x86_64               randconfig-x004-20230815   gcc  
x86_64               randconfig-x005-20230815   gcc  
x86_64               randconfig-x006-20230815   gcc  
x86_64               randconfig-x011-20230815   clang
x86_64               randconfig-x012-20230815   clang
x86_64               randconfig-x013-20230815   clang
x86_64               randconfig-x014-20230815   clang
x86_64               randconfig-x015-20230815   clang
x86_64               randconfig-x016-20230815   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r021-20230815   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
