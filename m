Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB117773A5D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 15:11:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 285A481F7E;
	Tue,  8 Aug 2023 13:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 285A481F7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691500273;
	bh=+ArNtzamfPYhPw4ZiUWNMryLeNa8a/gJDghCnSljiqE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Tsy2SAoxpNt2AO/fN0yZ5VYBr4xmYfctWF/uZzjbud9nhZnZ0JAcR1Q8WviJOrNw6
	 yxRH+7m0juirCS5tmcd0HxKKKdicA3qjcgs1u5zQtDVvcJ4G05aO5sQFs0AM55rigW
	 ECVHKwAM/pciGRvEuF81tzXqq2DNVA3vpLASj5bBQ2fg9WNDqte2ZUoCVRswaoHwDP
	 c2qFu3v3/Zxbow/H+5tscb91T5Y50PRWqjd7zbvhKBJ77SWOMH/sq0vAiUB4MZmzMK
	 9gb0fBpe4T6spKRvE/BYHuDpOSxQPnkZ5rHU1e6rKPuXF0DbwI19CnUVsSaoujtwJL
	 FStWY1QKSKZxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VqlYe8o7sKFo; Tue,  8 Aug 2023 13:11:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0E8881F6F;
	Tue,  8 Aug 2023 13:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0E8881F6F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E7651BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 13:11:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01DDC402D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 13:11:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01DDC402D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p93FKaf56Z4U for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 13:11:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DEFDA4024D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 13:11:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEFDA4024D
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="368264792"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="368264792"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 06:10:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="801319986"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="801319986"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 08 Aug 2023 06:10:58 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qTMUD-0005MK-2Y
 for intel-wired-lan@lists.osuosl.org; Tue, 08 Aug 2023 13:10:57 +0000
Date: Tue, 08 Aug 2023 21:10:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308082151.TqLnOsUw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691500260; x=1723036260;
 h=date:from:to:subject:message-id;
 bh=PheX53yHrInyyXlUgttvjIGvH8EdSrcJ4vviQuus70A=;
 b=U2RG3yU4FMycfkEXkCxl+X6fYmMbEeV/BSvCNaCeSwfMKyK1pzjZ44IX
 ISQNvueldmhDwTeSlhsCWreWUIlRlIY+WUyEZ/YW1G5fo4JkFGiLkPL8N
 FGTcjUT+jTX2c+ILtW/3q8m/pD7pUYVCU8CwurfX3mZR0tzJm3GUwopV8
 h7RbVGtFpSNRDRpaB091gXTPRpqwDFpfY1eh8Jj7mWnx7MCNrSd4IYMQo
 VwVC2lUcLELuvAz4TehS2UD9r+gSj9SSYVlgbZC3LFjGjboO/Ftyb31CV
 fqkmZKX70DXj+VfKjfZ88LC8at9ceUcocEKKKUqXMsxiRmjfm+REowKBk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U2RG3yU4
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 3256c2a4383cdc85b988fbf01266c3291828bcee
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 3256c2a4383cdc85b988fbf01266c3291828bcee  idpf: configure SRIOV and add other ndo_ops

elapsed time: 722m

configs tested: 112
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230807   gcc  
alpha                randconfig-r013-20230807   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230808   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r012-20230807   gcc  
arm                  randconfig-r033-20230807   clang
arm                  randconfig-r046-20230808   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r025-20230807   clang
csky                                defconfig   gcc  
csky                 randconfig-r021-20230807   gcc  
csky                 randconfig-r023-20230807   gcc  
hexagon              randconfig-r041-20230808   clang
hexagon              randconfig-r045-20230808   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230807   gcc  
i386         buildonly-randconfig-r005-20230807   gcc  
i386         buildonly-randconfig-r006-20230807   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230807   gcc  
i386                 randconfig-i002-20230807   gcc  
i386                 randconfig-i003-20230807   gcc  
i386                 randconfig-i004-20230807   gcc  
i386                 randconfig-i005-20230807   gcc  
i386                 randconfig-i006-20230807   gcc  
i386                 randconfig-i011-20230807   clang
i386                 randconfig-i012-20230807   clang
i386                 randconfig-i013-20230807   clang
i386                 randconfig-i014-20230807   clang
i386                 randconfig-i015-20230807   clang
i386                 randconfig-i016-20230807   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r032-20230807   gcc  
microblaze           randconfig-r026-20230807   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230807   gcc  
nios2                randconfig-r022-20230807   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230807   gcc  
parisc               randconfig-r035-20230807   gcc  
parisc               randconfig-r036-20230807   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r005-20230807   gcc  
powerpc              randconfig-r011-20230807   clang
powerpc              randconfig-r015-20230807   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230808   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230808   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r031-20230807   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r014-20230807   gcc  
sparc64              randconfig-r024-20230807   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230807   gcc  
x86_64       buildonly-randconfig-r002-20230807   gcc  
x86_64       buildonly-randconfig-r003-20230807   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r004-20230807   gcc  
x86_64               randconfig-x001-20230807   clang
x86_64               randconfig-x001-20230808   gcc  
x86_64               randconfig-x002-20230807   clang
x86_64               randconfig-x002-20230808   gcc  
x86_64               randconfig-x003-20230807   clang
x86_64               randconfig-x003-20230808   gcc  
x86_64               randconfig-x004-20230807   clang
x86_64               randconfig-x004-20230808   gcc  
x86_64               randconfig-x005-20230807   clang
x86_64               randconfig-x005-20230808   gcc  
x86_64               randconfig-x006-20230808   gcc  
x86_64               randconfig-x011-20230807   gcc  
x86_64               randconfig-x012-20230807   gcc  
x86_64               randconfig-x013-20230807   gcc  
x86_64               randconfig-x014-20230807   gcc  
x86_64               randconfig-x015-20230807   gcc  
x86_64               randconfig-x016-20230807   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r034-20230807   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
