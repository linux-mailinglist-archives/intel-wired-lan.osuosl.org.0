Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64ED96CD381
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 09:43:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7D0B6136A;
	Wed, 29 Mar 2023 07:43:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7D0B6136A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680075824;
	bh=vzHS2tHj4yTl9MB1CEp1OazznyoHux/hM+uRThPuynU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Iv7vG7BkFiHXiq/NdWpWQsKxw7e0V+gXzYJCcWUZy6ZYwS4e7iNTXDDZQ8mT+VioI
	 HqiJ9/lhPy1D2TqLynDn0s5072pKHBJS/JjxfCNGljVhJExZVPk+LqC8etCuuHeL0X
	 lbFpJXXa/DShrfiHJAI2c1eODwZWmrnRobxNmIr/XN712AE3brzbSwnV4hz4RVpZr3
	 Nyh8H/CF2hc4oK9hAm/PomfijjENsT184EWS0qyyArkrqhOw2zQlfgiB7oswJGgVSu
	 iwEMaVBmY7/Jf9aEnm+EdUP1amcvtl2GV9NoJd4F4/48KyVKQh+5dygaqb1pST3K7v
	 PtAkn0aY/8CBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mCVB_lBN0RPB; Wed, 29 Mar 2023 07:43:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 922196135A;
	Wed, 29 Mar 2023 07:43:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 922196135A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 680F21BF475
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 07:43:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AE8082871
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 07:43:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AE8082871
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yRblZ-htwxgi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 07:43:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3751881757
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3751881757
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 07:43:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="405749765"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="405749765"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 00:42:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="827783035"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="827783035"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Mar 2023 00:42:42 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1phQS9-000JKg-18;
 Wed, 29 Mar 2023 07:42:41 +0000
Date: Wed, 29 Mar 2023 15:41:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6423ebc6.qtz+zYbQH6uqNh90%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680075816; x=1711611816;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=zciEnebk+O4MCmUhB+Mp3B7QaitsvfuwCCIuVz8EMDk=;
 b=Oz1SR3A6ez3LT3Y+Hha8VfS2oMQN95eNNmVQyL5QT8sqiuia8LiheWVW
 pPaBNgx1CnZparGf+ClShA/HKiVYmGDqpzqOc7nO9UdMlkGgzvOgGyrIA
 pa276/9UA3hyit6F0DYWGfp8EvILagtnEiUJPFgIoosrEDAb8KAD1RXjx
 cthMegkZaEfGBxfPAJpV8nA7vLZzAPQqdxBaSgFHqUtWWLaj+oxORblFJ
 lpb4kHZEE8zAIiHiFdqo1ByrdjVIa7jpqfoom9NKLmikAFG1opKlUlou2
 x29Xiv6fgFKGiHqUthdWxQFALN0Vvy032dv/fpgeCWQuWxoAp3hKGTAD6
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Oz1SR3A6
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 e9a1cc2e4c4ee7c7e60fb26345618c2522a2a10f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: e9a1cc2e4c4ee7c7e60fb26345618c2522a2a10f  ice: fix invalid check for empty list in ice_sched_assoc_vsi_to_agg()

elapsed time: 725m

configs tested: 123
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230326   gcc  
alpha                randconfig-r032-20230327   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230326   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230327   clang
arm                  randconfig-r016-20230327   gcc  
arm                  randconfig-r021-20230326   clang
arm                  randconfig-r033-20230326   gcc  
arm                  randconfig-r046-20230326   clang
arm                  randconfig-r046-20230327   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r031-20230327   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r015-20230326   gcc  
hexagon              randconfig-r013-20230326   clang
hexagon              randconfig-r026-20230326   clang
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
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230327   gcc  
ia64                 randconfig-r031-20230326   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r024-20230326   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230326   gcc  
m68k                 randconfig-r012-20230326   gcc  
m68k                 randconfig-r025-20230326   gcc  
m68k                 randconfig-r035-20230327   gcc  
microblaze           randconfig-r024-20230327   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r016-20230326   clang
mips                 randconfig-r022-20230326   clang
mips                 randconfig-r034-20230326   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r014-20230326   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r004-20230326   gcc  
parisc               randconfig-r011-20230327   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r006-20230326   clang
powerpc              randconfig-r014-20230327   clang
powerpc              randconfig-r025-20230327   clang
powerpc              randconfig-r034-20230327   gcc  
powerpc              randconfig-r036-20230326   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r023-20230326   gcc  
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r013-20230327   clang
s390                 randconfig-r015-20230327   clang
s390                 randconfig-r022-20230327   clang
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230327   gcc  
sh                   randconfig-r006-20230327   gcc  
sh                   randconfig-r032-20230326   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230327   gcc  
sparc                randconfig-r011-20230326   gcc  
sparc                randconfig-r035-20230326   gcc  
sparc                randconfig-r036-20230327   gcc  
sparc64              randconfig-r003-20230326   gcc  
sparc64              randconfig-r026-20230327   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230327   gcc  
x86_64               randconfig-a002-20230327   gcc  
x86_64               randconfig-a003-20230327   gcc  
x86_64               randconfig-a004-20230327   gcc  
x86_64               randconfig-a005-20230327   gcc  
x86_64               randconfig-a006-20230327   gcc  
x86_64               randconfig-a011-20230327   clang
x86_64               randconfig-a012-20230327   clang
x86_64               randconfig-a013-20230327   clang
x86_64               randconfig-a014-20230327   clang
x86_64               randconfig-a015-20230327   clang
x86_64               randconfig-a016-20230327   clang
x86_64               randconfig-r033-20230327   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
