Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 417AB70F002
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 09:56:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA74E42020;
	Wed, 24 May 2023 07:56:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA74E42020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684914976;
	bh=0uH6YvIEsur98tfA+sxStxEkk+XJPcbo54P1NmCZ0/M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uagP3Qs4UhNzj6zXKdEFaAAuODi505uboWboi7QTMG6pwI0kNIZy4z+1QSc8yq3d1
	 p7bgDpOYOY2tffO6K/OxY9uDdzOKrrSnrU+9xp513Se5ExmKCzPBvExc6DfsEsyp/Y
	 xsFtDsCpiRNCuOSxPRL9FcL9Ia0LKzVf77BjCJp6niS37+NdZ5YWTHYcDM+CSv4de1
	 61WHOk9mA9S5z7RIHxe4CTHJfWJ/rVbJmz/kPikV1WGOfi5B/HOiOU/9cuDz2MDmn4
	 ZdyQpb7OxYofDPadJf9uXNP8ufZAA0zShvght+BJWhM5YFgN5dcCZkj/rwUbWoQbPF
	 msAu95AG0pl0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Az0fV65g2fxj; Wed, 24 May 2023 07:56:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9F1D41F61;
	Wed, 24 May 2023 07:56:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9F1D41F61
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 79AB21BF373
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 07:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5EBF960F77
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 07:56:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EBF960F77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IPMpGds2Cxxc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 07:56:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F2C6607D0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F2C6607D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 07:56:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="338071005"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="338071005"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 00:55:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="878547893"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="878547893"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 24 May 2023 00:55:54 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q1jLd-000EZ5-1t
 for intel-wired-lan@lists.osuosl.org; Wed, 24 May 2023 07:55:53 +0000
Date: Wed, 24 May 2023 15:55:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230524075539.s-sJ4%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684914968; x=1716450968;
 h=date:from:to:subject:message-id;
 bh=FKfORmMQQ3fmpnmnoS9rVzps37d2w/5jj6oDGPJSTZ8=;
 b=dmkOOHtdPcH+qiXLe+bIKv5sakktZVLtbJhfsFqQDZdBkE5cZgOm40vw
 0HZegdmeLUr0buPp6tqXXBRalyET2ZgKp7ZF2LQQKtDphk4bEcRBo0uvY
 kxftMqLrHZLIdfYOWTTJzAXhUAnwQIbwBLEfAhnLOaFrEDypXYLbcixCB
 KRDTPcZjYVye3UIfm/Y2Up/9PQjgXo5eD9GVx4MvKKkLlOoO7skWYFs2L
 xUwcD9aUimZOLGE6CTKSS3pY705zW9Mz8amvt6mCdqVMmKnEE2g7yjK3j
 5APXH36pBABTz4evncJpZ1hHzItrY8VnFRDCJl2METUNgVXr7HMFyXc15
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dmkOOHtd
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 3632679d9e4f879f49949bb5b050e0de553e4739
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

tree/branch: INFO setup_repo_specs: /db/releases/20230524154417/lkp-src/repo/*/tnguy-net-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 3632679d9e4f879f49949bb5b050e0de553e4739  ipv{4,6}/raw: fix output xfrm lookup wrt protocol

elapsed time: 1088m

configs tested: 208
configs skipped: 19

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230522   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230522   gcc  
alpha                randconfig-r006-20230522   gcc  
alpha                randconfig-r006-20230523   gcc  
alpha                randconfig-r013-20230521   gcc  
alpha                randconfig-r013-20230523   gcc  
alpha                randconfig-r014-20230523   gcc  
alpha                randconfig-r035-20230521   gcc  
arc                              allyesconfig   gcc  
arc                          axs101_defconfig   gcc  
arc          buildonly-randconfig-r004-20230521   gcc  
arc                                 defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r005-20230521   gcc  
arc                  randconfig-r012-20230521   gcc  
arc                  randconfig-r012-20230522   gcc  
arc                  randconfig-r015-20230521   gcc  
arc                  randconfig-r034-20230522   gcc  
arc                  randconfig-r036-20230521   gcc  
arc                  randconfig-r043-20230521   gcc  
arc                  randconfig-r043-20230522   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                       imx_v6_v7_defconfig   gcc  
arm                  randconfig-r003-20230521   gcc  
arm                  randconfig-r046-20230521   clang
arm                  randconfig-r046-20230522   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r003-20230521   clang
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230523   gcc  
arm64                randconfig-r014-20230521   gcc  
csky         buildonly-randconfig-r004-20230522   gcc  
csky         buildonly-randconfig-r006-20230522   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230521   gcc  
csky                 randconfig-r012-20230521   gcc  
csky                 randconfig-r022-20230522   gcc  
csky                 randconfig-r026-20230521   gcc  
hexagon              randconfig-r014-20230522   clang
hexagon              randconfig-r015-20230522   clang
hexagon              randconfig-r025-20230522   clang
hexagon              randconfig-r032-20230521   clang
hexagon              randconfig-r035-20230522   clang
hexagon              randconfig-r041-20230521   clang
hexagon              randconfig-r041-20230522   clang
hexagon              randconfig-r045-20230521   clang
hexagon              randconfig-r045-20230522   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230522   gcc  
i386                 randconfig-a002-20230522   gcc  
i386                 randconfig-a003-20230522   gcc  
i386                 randconfig-a004-20230522   gcc  
i386                 randconfig-a005-20230522   gcc  
i386                 randconfig-a006-20230522   gcc  
i386                 randconfig-i051-20230524   gcc  
i386                 randconfig-i052-20230524   gcc  
i386                 randconfig-i053-20230524   gcc  
i386                 randconfig-i054-20230524   gcc  
i386                 randconfig-i055-20230524   gcc  
i386                 randconfig-i056-20230524   gcc  
i386                 randconfig-i061-20230523   clang
i386                 randconfig-i062-20230523   clang
i386                 randconfig-i063-20230523   clang
i386                 randconfig-i064-20230523   clang
i386                 randconfig-i065-20230523   clang
i386                 randconfig-i066-20230523   clang
i386                 randconfig-r003-20230522   gcc  
i386                 randconfig-r011-20230522   clang
i386                 randconfig-r036-20230522   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230521   gcc  
ia64                 randconfig-r005-20230522   gcc  
ia64                 randconfig-r015-20230523   gcc  
ia64                 randconfig-r016-20230521   gcc  
ia64                 randconfig-r016-20230522   gcc  
ia64                 randconfig-r023-20230521   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r003-20230521   gcc  
loongarch    buildonly-randconfig-r005-20230522   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230521   gcc  
loongarch            randconfig-r012-20230522   gcc  
loongarch            randconfig-r012-20230523   gcc  
loongarch            randconfig-r022-20230521   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230522   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r005-20230523   gcc  
m68k                 randconfig-r024-20230522   gcc  
microblaze   buildonly-randconfig-r001-20230521   gcc  
microblaze           randconfig-r016-20230521   gcc  
microblaze           randconfig-r024-20230522   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r006-20230521   gcc  
mips                malta_qemu_32r6_defconfig   clang
nios2        buildonly-randconfig-r004-20230521   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230523   gcc  
nios2                randconfig-r003-20230523   gcc  
nios2                randconfig-r004-20230522   gcc  
nios2                randconfig-r013-20230521   gcc  
nios2                randconfig-r015-20230521   gcc  
nios2                randconfig-r025-20230521   gcc  
nios2                randconfig-r031-20230521   gcc  
openrisc     buildonly-randconfig-r001-20230522   gcc  
openrisc             randconfig-r002-20230521   gcc  
openrisc             randconfig-r015-20230522   gcc  
parisc       buildonly-randconfig-r001-20230522   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc              randconfig-r004-20230522   gcc  
powerpc              randconfig-r023-20230522   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r011-20230521   gcc  
riscv                randconfig-r035-20230521   clang
riscv                randconfig-r042-20230521   gcc  
riscv                randconfig-r042-20230522   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r006-20230521   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r022-20230522   clang
s390                 randconfig-r033-20230521   clang
s390                 randconfig-r044-20230521   gcc  
s390                 randconfig-r044-20230522   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230521   gcc  
sh                   randconfig-r003-20230522   gcc  
sh                   randconfig-r006-20230521   gcc  
sh                   randconfig-r026-20230522   gcc  
sh                           se7705_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sparc        buildonly-randconfig-r005-20230522   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r023-20230522   gcc  
sparc64      buildonly-randconfig-r003-20230522   gcc  
sparc64              randconfig-r001-20230521   gcc  
sparc64              randconfig-r034-20230521   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230522   gcc  
x86_64               randconfig-a002-20230522   gcc  
x86_64               randconfig-a003-20230522   gcc  
x86_64               randconfig-a004-20230522   gcc  
x86_64               randconfig-a005-20230522   gcc  
x86_64               randconfig-a006-20230522   gcc  
x86_64               randconfig-a011-20230522   clang
x86_64               randconfig-a012-20230522   clang
x86_64               randconfig-a013-20230522   clang
x86_64               randconfig-a014-20230522   clang
x86_64               randconfig-a015-20230522   clang
x86_64               randconfig-a016-20230522   clang
x86_64               randconfig-x051-20230522   clang
x86_64               randconfig-x052-20230522   clang
x86_64                        randconfig-x052   clang
x86_64               randconfig-x053-20230522   clang
x86_64               randconfig-x054-20230522   clang
x86_64                        randconfig-x054   clang
x86_64               randconfig-x055-20230522   clang
x86_64               randconfig-x056-20230522   clang
x86_64                        randconfig-x056   clang
x86_64               randconfig-x061-20230522   clang
x86_64               randconfig-x062-20230522   clang
x86_64               randconfig-x063-20230522   clang
x86_64               randconfig-x064-20230522   clang
x86_64               randconfig-x065-20230522   clang
x86_64               randconfig-x066-20230522   clang
x86_64               randconfig-x071-20230522   gcc  
x86_64               randconfig-x072-20230522   gcc  
x86_64               randconfig-x073-20230522   gcc  
x86_64               randconfig-x074-20230522   gcc  
x86_64               randconfig-x075-20230522   gcc  
x86_64               randconfig-x076-20230522   gcc  
x86_64               randconfig-x081-20230522   gcc  
x86_64               randconfig-x082-20230522   gcc  
x86_64               randconfig-x083-20230522   gcc  
x86_64               randconfig-x084-20230522   gcc  
x86_64               randconfig-x085-20230522   gcc  
x86_64               randconfig-x086-20230522   gcc  
x86_64               randconfig-x091-20230524   clang
x86_64               randconfig-x092-20230524   clang
x86_64               randconfig-x093-20230524   clang
x86_64               randconfig-x094-20230524   clang
x86_64               randconfig-x095-20230524   clang
x86_64               randconfig-x096-20230524   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r031-20230522   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
