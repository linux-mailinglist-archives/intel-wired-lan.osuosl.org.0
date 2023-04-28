Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D79B6F11AD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Apr 2023 08:14:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5098260E80;
	Fri, 28 Apr 2023 06:14:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5098260E80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682662471;
	bh=vdaj4EOd3OhNP/yxVcveLIOpU1MPIgJ4A8NLPkDiHrQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rnyYC3GQFBY6UlExYOAebflBe9Y0Ws4iK7rrqVFk1v3Ovx0zgNXeza7OF6xZy+yyd
	 3uc2KdqF0xl5axGN/eghP7Jdiv7MQwL3QX5EmT3BBI/IPE4aXfsr+1mjopgIiG+FD/
	 QVoA+olMI8eeI0ouX9MeHYg4T8FlJOlJAI/UX+ak9mI7MINED0gflvjGYGbhzuNnW9
	 52roiaxpHECcNY+DWRTjQ6bpySEQFgfhIzC6XsLoYah41pVdndFaH8KjAWEqh7/q5H
	 hFY550PbhLxSdR/mhG09elfKfAM7x8yz5MGETdQ51kka0MqKoaYdGN5sH/g6+HIChj
	 fyUZSSKOAumXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pqsj6qmANI6g; Fri, 28 Apr 2023 06:14:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 044A760B1D;
	Fri, 28 Apr 2023 06:14:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 044A760B1D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D48801BF591
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 06:14:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A5E5B60B1D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 06:14:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5E5B60B1D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djouf6bveN5U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Apr 2023 06:14:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EBE260AD8
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8EBE260AD8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 06:14:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="327282580"
X-IronPort-AV: E=Sophos;i="5.99,233,1677571200"; d="scan'208";a="327282580"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 23:14:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="838741006"
X-IronPort-AV: E=Sophos;i="5.99,233,1677571200"; d="scan'208";a="838741006"
Received: from lkp-server01.sh.intel.com (HELO 5bad9d2b7fcb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 27 Apr 2023 23:14:21 -0700
Received: from kbuild by 5bad9d2b7fcb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1psHN7-0000Bb-0A
 for intel-wired-lan@lists.osuosl.org; Fri, 28 Apr 2023 06:14:21 +0000
Date: Fri, 28 Apr 2023 14:13:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230428061336.2nNHI%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682662463; x=1714198463;
 h=date:from:to:subject:message-id;
 bh=+8aOqn0ShVnA3VGuxs2wFn4/q1o/N9+xjWSZrRmCiSA=;
 b=hlJKc3iTURdvFG0PdqgpKWTMVIME4KRrOJmb9uE3iEXOnftl9vJ5FWoe
 1GZb/R7Vknm/arIlKexJjbTurIPYcW+YTyYJQPokdk3Nhc/BlpN/ZizIe
 4s1VcX7BxM7LGcpXSf5piP8Y/wokCIQxREZfp/nTdvP7lTWBzkizirCfl
 RN8ubMJJSu2ryLQ4AXpA1X1Y4+l82zyNLuyRQTFn1Y0YRk0oS8X1CEgLM
 0yV44hXkhILNVC49Xj/ajWcewdNe1AjBL9flnqfCtkfAQFZXnWFtxQNWn
 jCLVgLhQRZsXDijJv3C5j9ZQ0fD8rivHRxGogDPXP5cprw4LfaLeUmfuc
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hlJKc3iT
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 4d5641820d70e677b3d09f5eec726b7c840504b6
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
branch HEAD: 4d5641820d70e677b3d09f5eec726b7c840504b6  i40e: add PHY debug register dump

elapsed time: 722m

configs tested: 116
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230427   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230427   gcc  
alpha                randconfig-r014-20230427   gcc  
alpha                randconfig-r021-20230427   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230427   gcc  
arc                  randconfig-r043-20230427   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                         lpc32xx_defconfig   clang
arm                       netwinder_defconfig   clang
arm                       omap2plus_defconfig   gcc  
arm                  randconfig-r012-20230427   gcc  
arm                  randconfig-r046-20230427   gcc  
arm                             rpc_defconfig   gcc  
arm                         vf610m4_defconfig   gcc  
arm                    vt8500_v6_v7_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230427   gcc  
hexagon              randconfig-r034-20230427   clang
hexagon              randconfig-r041-20230427   clang
hexagon              randconfig-r045-20230427   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230427   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5475evb_defconfig   gcc  
microblaze           randconfig-r024-20230427   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                  cavium_octeon_defconfig   clang
mips                      fuloong2e_defconfig   gcc  
mips                 randconfig-r023-20230427   gcc  
mips                 randconfig-r036-20230427   clang
nios2                               defconfig   gcc  
nios2                randconfig-r035-20230427   gcc  
openrisc             randconfig-r026-20230427   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                     akebono_defconfig   clang
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   bluestone_defconfig   clang
powerpc      buildonly-randconfig-r003-20230427   clang
powerpc                    ge_imp3a_defconfig   clang
powerpc                 mpc8272_ads_defconfig   clang
powerpc                      ppc40x_defconfig   gcc  
powerpc              randconfig-r033-20230427   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230427   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230427   clang
s390                                defconfig   gcc  
s390                 randconfig-r044-20230427   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230427   gcc  
sh                   randconfig-r016-20230427   gcc  
sh                   randconfig-r022-20230427   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r013-20230427   gcc  
sparc                randconfig-r032-20230427   gcc  
sparc64              randconfig-r004-20230427   gcc  
sparc64              randconfig-r006-20230427   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230427   gcc  
xtensa               randconfig-r001-20230427   gcc  
xtensa               randconfig-r015-20230427   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
