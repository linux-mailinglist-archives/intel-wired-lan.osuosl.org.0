Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5756F236E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Apr 2023 08:50:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F3FB417B8;
	Sat, 29 Apr 2023 06:50:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F3FB417B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682751010;
	bh=Sqzsv8yaM7PhK7wxuhhluP2pedtsnzIEq272TVvIboo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kMII/fe6q97wVUqRMo5R5A4zPqcS62QdK0XfFUi3F5xdoq7THMkQuYMdTNnHAbFOP
	 w3hhKhaTX52Vz3m5/4Zeg+gzgl9yzVbMaAIUzgOQWvnLg1cPReNSf8KZlmiVguwgJz
	 G9kPxYHS4qHNHxBIK5Kn60/+t6vHjN6DmzqAa39zu9YyJk7DLW95p3Tm1b6gGxtrA+
	 wwghopr3qYWHJjgwsrezgMHKWe69LyD7gjGQrIA/3Ds+4IadGO7kV8mJR9pLhBzCPF
	 6mvJTfC5baQ7HD6/p2I4I4IGZMy2yd+nzmBnPz3cdK035RYHLP785d0sUlLXHrMG90
	 USPOx9QyJ3Z8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iBPMFe8av-jN; Sat, 29 Apr 2023 06:50:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05A29415F1;
	Sat, 29 Apr 2023 06:50:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05A29415F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F40F1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Apr 2023 06:50:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD100401F1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Apr 2023 06:50:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD100401F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ISsWh4ZRvPNN for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Apr 2023 06:50:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B87940156
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B87940156
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Apr 2023 06:50:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="328256011"
X-IronPort-AV: E=Sophos;i="5.99,236,1677571200"; d="scan'208";a="328256011"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 23:50:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="764606772"
X-IronPort-AV: E=Sophos;i="5.99,236,1677571200"; d="scan'208";a="764606772"
Received: from lkp-server01.sh.intel.com (HELO 5bad9d2b7fcb) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 28 Apr 2023 23:50:01 -0700
Received: from kbuild by 5bad9d2b7fcb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pseP5-0000xp-1x
 for intel-wired-lan@lists.osuosl.org; Sat, 29 Apr 2023 06:49:55 +0000
Date: Sat, 29 Apr 2023 14:49:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230429064951.xD0fx%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682751002; x=1714287002;
 h=date:from:to:subject:message-id;
 bh=V5zcurKT0JUPq/tK9o6W4t2TuVUoMFs0brUaC18J3jQ=;
 b=mWw7kKHFWLl2vsLP2f91akzgUyCgUS5vrb5WjaVY5MygB+3Q5o84c2+o
 IvXuVKqEhdjAkJG/dtYWTLnQb3I48N6uNukuQZkEPz+ntkKTdEbUpQfuw
 8FZrrTgRZ4KTAZyQMIB1xFoKfxOpGFOmHBU/CIKICL34zx3879zSsW6nX
 FynnkQgak84rXoEsJUcTfOFwFaaGiulyGQoIjhcUKs8irj39JA0xiO2ZJ
 Cvh0xyvc5BOYkmF4PJm3APnchPrKkQTcW7pTBfUxiyOjlU1dQGSqxn2oI
 U19TxxkwqsMzpLDwJu7cdVSgn1u89CebYejTv/s/SZWiqPKszX8n0eIbo
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mWw7kKHF
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 de7b26d787834dee9d15b18eec088f8afc0dafd5
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: de7b26d787834dee9d15b18eec088f8afc0dafd5  ice: Fix undersized tx_flags variable

elapsed time: 723m

configs tested: 100
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r006-20230428   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230428   gcc  
alpha                randconfig-r023-20230428   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r005-20230428   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230428   gcc  
arc                  randconfig-r043-20230428   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r006-20230428   gcc  
arm                  randconfig-r046-20230428   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r025-20230428   clang
hexagon              randconfig-r041-20230428   clang
hexagon              randconfig-r045-20230428   clang
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
ia64                 randconfig-r026-20230428   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r031-20230428   gcc  
loongarch            randconfig-r034-20230428   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230428   gcc  
m68k                 randconfig-r032-20230428   gcc  
microblaze           randconfig-r015-20230428   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230428   gcc  
parisc               randconfig-r016-20230428   gcc  
parisc               randconfig-r021-20230428   gcc  
parisc               randconfig-r033-20230428   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r022-20230428   gcc  
powerpc              randconfig-r024-20230428   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230428   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r013-20230428   gcc  
s390                 randconfig-r044-20230428   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r004-20230428   gcc  
sparc        buildonly-randconfig-r001-20230428   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230428   gcc  
sparc                randconfig-r003-20230428   gcc  
sparc                randconfig-r036-20230428   gcc  
sparc64      buildonly-randconfig-r003-20230428   gcc  
sparc64              randconfig-r035-20230428   gcc  
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

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
