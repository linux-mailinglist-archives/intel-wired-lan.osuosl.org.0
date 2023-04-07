Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 886D06DAC6B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Apr 2023 13:57:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16FB241E18;
	Fri,  7 Apr 2023 11:56:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16FB241E18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680868619;
	bh=0D64IbBQ4INtDD9X742ugzUtrZ/DwGyFH1w57qZqNsA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2VJ0ORtPorZIoo29S7iWv/0lIaEb3oZrEJkJdkZMlbb7dvLuc7yXP4DgBVSOw7py+
	 fRDTKsjAccCHMBHeSg15rg+cIfC4SF0kW0IByGl6h/DgswWWoJl59AMWWq2xRRrTzT
	 fb9UHLCKjFJo/lTjW2/d4p5LzjmgdwQO2vusy1S1o0SbjZB8i+/KazoOkdERa3BeO6
	 oquSthnGatjvxvp4pQ0UtDoJ1iLfbbDW782JQpwELv6GxhI04BpbNEmJQ3Yk0h1dWq
	 ratpa4ca/4IlTQ7LV607Qdkaq0V5wMsfEmIMm/672re5qJkr97x8A3Pbt6AeqqU7IG
	 1/VGd4UscGwMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8bOoHmWuHyTo; Fri,  7 Apr 2023 11:56:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B548405F0;
	Fri,  7 Apr 2023 11:56:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B548405F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E50BB1C2E3B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 11:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA0D56164A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 11:56:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA0D56164A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id huoYhFYE46YB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Apr 2023 11:56:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC4AC60E4A
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC4AC60E4A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 11:56:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="331623142"
X-IronPort-AV: E=Sophos;i="5.98,326,1673942400"; d="scan'208";a="331623142"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2023 04:56:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="756698629"
X-IronPort-AV: E=Sophos;i="5.98,326,1673942400"; d="scan'208";a="756698629"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 07 Apr 2023 04:56:49 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pkkhv-000SSo-2K;
 Fri, 07 Apr 2023 11:56:43 +0000
Date: Fri, 07 Apr 2023 19:55:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <643004ca.TkTIxalJIGivhNyh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680868611; x=1712404611;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=m9ZHlg/NddVPMScYFEr4ARwfgTx0825rNLwJbsV71C8=;
 b=nFotN4pNDCLkHMlGLTu6LYXKD9yvCq5qSO6jesHS+oMtbxJVWeiTpYr2
 MfN7wzrP4QIPZu/+U5FaccZvWVmuYIYN2dzqphDIminlyrJjhsy6R3LHQ
 jwmX3WIWkhQMglqverYzx5fvZ/60owEypFTOgFw9aCkerTthw41H0+Jz5
 GKWROy44e9ZVJH2kWyZFKAYP10mk4f9m0sNWS3quURHw3m9LYlGGH9eVn
 5EQpF0yJyBbCDQwOej7fyXaQTsXzhfF1naqPUlFQYhxedxQQbxHMcuKSK
 JJn8Bu91ZxI041UKuyIZtQxmyizEbjDuf/HTQ5M3xjCqMyIMfDmFbPnMv
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nFotN4pN
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 a3a168b3373924b5e1b79ae3d387441f0d9af329
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: a3a168b3373924b5e1b79ae3d387441f0d9af329  iavf: remove active_cvlans and active_svlans bitmaps

elapsed time: 728m

configs tested: 170
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230403   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r023-20230403   gcc  
alpha                randconfig-r026-20230403   gcc  
alpha                randconfig-r036-20230403   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r016-20230403   gcc  
arc                  randconfig-r023-20230403   gcc  
arc                  randconfig-r023-20230405   gcc  
arc                  randconfig-r033-20230403   gcc  
arc                  randconfig-r034-20230403   gcc  
arc                  randconfig-r043-20230403   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230403   clang
arm                                 defconfig   gcc  
arm                  randconfig-r021-20230405   clang
arm                  randconfig-r031-20230403   gcc  
arm                  randconfig-r034-20230403   gcc  
arm                  randconfig-r035-20230403   gcc  
arm                  randconfig-r046-20230403   clang
arm                  randconfig-r046-20230407   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r005-20230407   clang
arm64        buildonly-randconfig-r006-20230403   clang
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230403   clang
arm64                randconfig-r015-20230403   gcc  
arm64                randconfig-r015-20230406   clang
arm64                randconfig-r016-20230406   clang
arm64                randconfig-r021-20230403   gcc  
arm64                randconfig-r021-20230405   gcc  
arm64                randconfig-r035-20230403   clang
csky                                defconfig   gcc  
csky                 randconfig-r006-20230403   gcc  
csky                 randconfig-r014-20230406   gcc  
csky                 randconfig-r021-20230403   gcc  
hexagon      buildonly-randconfig-r001-20230403   clang
hexagon      buildonly-randconfig-r006-20230403   clang
hexagon      buildonly-randconfig-r006-20230407   clang
hexagon              randconfig-r012-20230403   clang
hexagon              randconfig-r041-20230403   clang
hexagon              randconfig-r041-20230407   clang
hexagon              randconfig-r045-20230403   clang
hexagon              randconfig-r045-20230407   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r002-20230403   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230403   clang
i386                 randconfig-a002-20230403   clang
i386                 randconfig-a003-20230403   clang
i386                 randconfig-a004-20230403   clang
i386                 randconfig-a005-20230403   clang
i386                 randconfig-a006-20230403   clang
i386                 randconfig-a011-20230403   gcc  
i386                 randconfig-a012-20230403   gcc  
i386                 randconfig-a013-20230403   gcc  
i386                 randconfig-a014-20230403   gcc  
i386                 randconfig-a015-20230403   gcc  
i386                 randconfig-a016-20230403   gcc  
i386                 randconfig-r022-20230403   gcc  
i386                 randconfig-r035-20230403   clang
i386                 randconfig-r036-20230403   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230405   gcc  
ia64         buildonly-randconfig-r002-20230403   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r013-20230406   gcc  
ia64                 randconfig-r022-20230405   gcc  
ia64                 randconfig-r023-20230403   gcc  
ia64                 randconfig-r026-20230405   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230403   gcc  
m68k         buildonly-randconfig-r006-20230403   gcc  
m68k                                defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
m68k                 randconfig-r022-20230403   gcc  
m68k                 randconfig-r024-20230403   gcc  
m68k                 randconfig-r033-20230403   gcc  
microblaze           randconfig-r024-20230403   gcc  
microblaze           randconfig-r031-20230403   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r004-20230403   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                          rb532_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230403   gcc  
nios2                randconfig-r014-20230403   gcc  
nios2                randconfig-r032-20230403   gcc  
openrisc                    or1ksim_defconfig   gcc  
openrisc             randconfig-r026-20230403   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230403   gcc  
parisc               randconfig-r013-20230403   gcc  
parisc               randconfig-r015-20230403   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r001-20230403   clang
powerpc              randconfig-r005-20230403   clang
powerpc              randconfig-r013-20230403   gcc  
powerpc              randconfig-r025-20230403   gcc  
powerpc              randconfig-r036-20230403   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230405   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230403   clang
riscv                randconfig-r012-20230406   clang
riscv                randconfig-r042-20230403   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230403   gcc  
s390         buildonly-randconfig-r003-20230403   gcc  
s390         buildonly-randconfig-r005-20230403   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230403   clang
s390                 randconfig-r016-20230403   gcc  
s390                 randconfig-r026-20230405   gcc  
s390                 randconfig-r044-20230403   gcc  
sh                               allmodconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                         microdev_defconfig   gcc  
sh                   randconfig-r023-20230405   gcc  
sh                   randconfig-r026-20230403   gcc  
sh                           se7750_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sparc        buildonly-randconfig-r004-20230403   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r021-20230403   gcc  
sparc                randconfig-r032-20230403   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230403   clang
x86_64               randconfig-a002-20230403   clang
x86_64               randconfig-a003-20230403   clang
x86_64               randconfig-a004-20230403   clang
x86_64               randconfig-a005-20230403   clang
x86_64               randconfig-a006-20230403   clang
x86_64               randconfig-a011-20230403   gcc  
x86_64               randconfig-a012-20230403   gcc  
x86_64               randconfig-a013-20230403   gcc  
x86_64               randconfig-a014-20230403   gcc  
x86_64               randconfig-a015-20230403   gcc  
x86_64               randconfig-a016-20230403   gcc  
x86_64               randconfig-k001-20230403   gcc  
x86_64               randconfig-r022-20230403   gcc  
x86_64               randconfig-r025-20230403   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r003-20230403   gcc  
xtensa               randconfig-r025-20230403   gcc  
xtensa               randconfig-r031-20230403   gcc  
xtensa               randconfig-r033-20230403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
