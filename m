Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 277EC6CD0DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 05:51:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9B7E405EC;
	Wed, 29 Mar 2023 03:51:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9B7E405EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680061911;
	bh=IBeAmOpJQQYMId/Oec0Yy9erDz1ToaCaMUzzHS4lF4U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ufXCNcfPJ0mfHpx5qPJcQZWmCD/Jd/YKgsL9ORefDJRDPeOVadBRuVw3jTNel4LKo
	 Q5GwJK1OPO/yLDanqNQ6XS0DylV6hX+ufALnHYrTs6V43UZmjpRkrelatdDnCGvbJr
	 ZVfdKaO2wT/llC6SJlrfnFHumu+TWuEef+atGDtJ6arqmhC0jKvLit92I4Io9yKp7X
	 ulg9upBzupZpTyQ+ORenMLGs32gLPfmhoiDzqOqC3401pf0bktIpJXeRRmlccJKTtz
	 G/04CrL91VTZnMKRDq+/R7tXNJARKdKWmLI6iKBc0GEXA7fuoWBZGKqLmbz2GKSskn
	 a5tb+/5v3oupg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yMC342uQKC2P; Wed, 29 Mar 2023 03:51:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56E6E40135;
	Wed, 29 Mar 2023 03:51:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56E6E40135
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 827D01BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 03:51:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A05A83F96
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 03:51:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A05A83F96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JRwb1Xgwzh4b for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 03:51:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D3EA83F8E
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D3EA83F8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 03:51:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="320419323"
X-IronPort-AV: E=Sophos;i="5.98,299,1673942400"; d="scan'208";a="320419323"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 20:51:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="716724547"
X-IronPort-AV: E=Sophos;i="5.98,299,1673942400"; d="scan'208";a="716724547"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 28 Mar 2023 20:51:41 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1phMqV-000JCj-3B;
 Wed, 29 Mar 2023 03:51:35 +0000
Date: Wed, 29 Mar 2023 11:50:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6423b596.S2Jn7rB/hHERWkz/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680061903; x=1711597903;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=66Jn61WbIzHa+0u/GXaZpv35Tuy4NG42RSjILw1d72s=;
 b=Lrlp9Kb3YYQH4VxWOYhGSiB2B+Co3bhYArqKtttxQKgXsxENC6hcoXUC
 ruO5GANVTQS97wMfSWLNHcth4kzKjMUCcdi6hegPtBCl+pv5Q6+wTb88g
 ICdY5oleQm2N2Sg3BeYPCpz6ZIt9tRxyB0JFm6CDqJoCkB0e0l4Vn6GcG
 64kI9ptU3a2R6SWSJMfXj+faPS+89hsrWsaRcfag8ZlAyGJSEvlCndjY7
 v5V0ZyXsGBEIoNPSnEB0KL9fpPzrM8aAghcVSTYOFrSPNHKqZBMhkeOkA
 3GvsReCbk/5yFfhdF2IWabKyXhmrsp5ZKRr/1a+kHifz6A+EitjZfFgbK
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lrlp9Kb3
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 86e2eca4ddedc07d639c44c990e1c220cac3741e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 86e2eca4ddedc07d639c44c990e1c220cac3741e  net: ethernet: ti: am65-cpsw: enable p0 host port rx_vlan_remap

elapsed time: 804m

configs tested: 209
configs skipped: 20

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230326   gcc  
alpha        buildonly-randconfig-r003-20230326   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230327   gcc  
alpha                randconfig-r005-20230328   gcc  
alpha                randconfig-r021-20230326   gcc  
alpha                randconfig-r024-20230327   gcc  
alpha                randconfig-r025-20230326   gcc  
alpha                randconfig-r032-20230326   gcc  
alpha                randconfig-r032-20230327   gcc  
alpha                randconfig-r035-20230327   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230327   gcc  
arc          buildonly-randconfig-r004-20230327   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230328   gcc  
arc                  randconfig-r012-20230326   gcc  
arc                  randconfig-r022-20230327   gcc  
arc                  randconfig-r024-20230326   gcc  
arc                  randconfig-r025-20230327   gcc  
arc                  randconfig-r034-20230326   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                           h3600_defconfig   gcc  
arm                  randconfig-r016-20230327   gcc  
arm                  randconfig-r023-20230326   clang
arm                  randconfig-r033-20230326   gcc  
arm                  randconfig-r046-20230326   clang
arm                  randconfig-r046-20230327   gcc  
arm                           sama7_defconfig   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230326   clang
arm64        buildonly-randconfig-r006-20230326   clang
arm64                               defconfig   gcc  
arm64                randconfig-r024-20230326   gcc  
arm64                randconfig-r026-20230326   gcc  
arm64                randconfig-r031-20230327   gcc  
arm64                randconfig-r032-20230326   clang
csky         buildonly-randconfig-r004-20230327   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230327   gcc  
csky                 randconfig-r015-20230326   gcc  
csky                 randconfig-r023-20230326   gcc  
hexagon              randconfig-r013-20230326   clang
hexagon              randconfig-r013-20230327   clang
hexagon              randconfig-r021-20230327   clang
hexagon              randconfig-r023-20230327   clang
hexagon              randconfig-r024-20230327   clang
hexagon              randconfig-r041-20230326   clang
hexagon              randconfig-r041-20230327   clang
hexagon              randconfig-r045-20230326   clang
hexagon              randconfig-r045-20230327   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230327   gcc  
i386                 randconfig-a002-20230327   gcc  
i386                 randconfig-a003-20230327   gcc  
i386                 randconfig-a004-20230327   gcc  
i386                 randconfig-a005-20230327   gcc  
i386                 randconfig-a006-20230327   gcc  
i386                 randconfig-a011-20230327   clang
i386                 randconfig-a012-20230327   clang
i386                 randconfig-a013-20230327   clang
i386                 randconfig-a014-20230327   clang
i386                 randconfig-a015-20230327   clang
i386                 randconfig-a016-20230327   clang
i386                          randconfig-c001   gcc  
i386                 randconfig-r031-20230327   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230326   gcc  
ia64         buildonly-randconfig-r004-20230326   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230327   gcc  
ia64                 randconfig-r022-20230326   gcc  
ia64                 randconfig-r025-20230327   gcc  
ia64                 randconfig-r031-20230326   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230326   gcc  
loongarch    buildonly-randconfig-r006-20230326   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230327   gcc  
loongarch            randconfig-r021-20230326   gcc  
loongarch            randconfig-r023-20230327   gcc  
loongarch            randconfig-r024-20230327   gcc  
loongarch            randconfig-r033-20230326   gcc  
loongarch            randconfig-r033-20230327   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                          multi_defconfig   gcc  
m68k                 randconfig-r006-20230326   gcc  
m68k                 randconfig-r012-20230326   gcc  
m68k                 randconfig-r022-20230326   gcc  
m68k                 randconfig-r034-20230327   gcc  
m68k                 randconfig-r035-20230327   gcc  
m68k                 randconfig-r036-20230326   gcc  
m68k                 randconfig-r036-20230327   gcc  
microblaze   buildonly-randconfig-r004-20230326   gcc  
microblaze           randconfig-r001-20230326   gcc  
microblaze           randconfig-r002-20230328   gcc  
microblaze           randconfig-r016-20230327   gcc  
microblaze           randconfig-r034-20230326   gcc  
microblaze           randconfig-r036-20230326   gcc  
microblaze           randconfig-r036-20230327   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r002-20230326   gcc  
mips                 randconfig-r016-20230326   clang
mips                 randconfig-r031-20230327   clang
mips                 randconfig-r034-20230326   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r015-20230327   gcc  
nios2                randconfig-r023-20230326   gcc  
nios2                randconfig-r034-20230327   gcc  
nios2                randconfig-r035-20230327   gcc  
openrisc     buildonly-randconfig-r003-20230327   gcc  
openrisc     buildonly-randconfig-r005-20230327   gcc  
openrisc             randconfig-r006-20230328   gcc  
openrisc             randconfig-r014-20230326   gcc  
openrisc             randconfig-r026-20230327   gcc  
parisc       buildonly-randconfig-r001-20230327   gcc  
parisc       buildonly-randconfig-r002-20230326   gcc  
parisc       buildonly-randconfig-r006-20230327   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230327   gcc  
parisc               randconfig-r031-20230326   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230326   gcc  
powerpc      buildonly-randconfig-r003-20230326   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                 mpc836x_mds_defconfig   clang
powerpc              randconfig-r014-20230327   clang
powerpc              randconfig-r025-20230326   gcc  
powerpc              randconfig-r034-20230327   gcc  
powerpc              randconfig-r036-20230326   clang
powerpc                      walnut_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r025-20230326   gcc  
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r006-20230326   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230326   clang
s390                 randconfig-r013-20230327   clang
s390                 randconfig-r015-20230326   gcc  
s390                 randconfig-r015-20230327   clang
s390                 randconfig-r022-20230327   clang
s390                 randconfig-r032-20230327   gcc  
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
sh                               allmodconfig   gcc  
sh                        apsh4ad0a_defconfig   gcc  
sh                   randconfig-r011-20230327   gcc  
sh                   randconfig-r026-20230326   gcc  
sh                   randconfig-r032-20230326   gcc  
sh                   randconfig-r035-20230326   gcc  
sparc        buildonly-randconfig-r006-20230327   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230326   gcc  
sparc                randconfig-r016-20230326   gcc  
sparc                randconfig-r033-20230326   gcc  
sparc                randconfig-r035-20230326   gcc  
sparc                randconfig-r036-20230327   gcc  
sparc64                          alldefconfig   gcc  
sparc64      buildonly-randconfig-r002-20230327   gcc  
sparc64      buildonly-randconfig-r005-20230327   gcc  
sparc64              randconfig-r001-20230328   gcc  
sparc64              randconfig-r004-20230328   gcc  
sparc64              randconfig-r022-20230326   gcc  
sparc64              randconfig-r026-20230326   gcc  
sparc64              randconfig-r032-20230327   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r002-20230327   gcc  
x86_64       buildonly-randconfig-r003-20230327   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230327   gcc  
x86_64               randconfig-a002-20230327   gcc  
x86_64               randconfig-a003-20230327   gcc  
x86_64               randconfig-a004-20230327   gcc  
x86_64               randconfig-a005-20230327   gcc  
x86_64               randconfig-a006-20230327   gcc  
x86_64               randconfig-r005-20230327   gcc  
x86_64               randconfig-r014-20230327   clang
x86_64               randconfig-r033-20230327   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230327   gcc  
xtensa                              defconfig   gcc  
xtensa               randconfig-r001-20230327   gcc  
xtensa               randconfig-r003-20230326   gcc  
xtensa               randconfig-r004-20230326   gcc  
xtensa               randconfig-r021-20230327   gcc  
xtensa               randconfig-r022-20230327   gcc  
xtensa               randconfig-r035-20230326   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
