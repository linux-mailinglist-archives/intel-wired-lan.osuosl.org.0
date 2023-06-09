Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59569729670
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 12:12:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4478A6158C;
	Fri,  9 Jun 2023 10:12:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4478A6158C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686305533;
	bh=ycPpoXg0xYz7ujsJdd6HK21VzTNIXpZGrmHtsmBsn+s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0K2wHDJBvToxLxjYCZPdqG303EEU2X46+u+iox1oVPS4egqrG4pN/pb4QIuxEqmT0
	 BC8bXyA0Xa8RHcucGUM/kAsvntvhcLFmuENmjCzlc1IjBeYq4nfAiHx08cRKAWoBV3
	 1dihkquashoRbf/3hmK6UMtHHdDAOhBNO2hGrpXAGb/MnaHxtkecofD2r5JZ4GQzcH
	 Bk9o5EyWhhTT9rnhUpG6hZQprEGfv9jUPcMYmfTaVLgxcDUNySEm2sbOx3iouwlhe3
	 uow4ffsJ0AT0u7r1pP8SnL16Sy5Zy8UslG+9VF1v2dxtbdjML9N451y4ovJZRici27
	 ALfAQdcJBNYlQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SnDTLSPLF_BX; Fri,  9 Jun 2023 10:12:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05D3561589;
	Fri,  9 Jun 2023 10:12:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05D3561589
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8EAD01BF384
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63EB0841B3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63EB0841B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mb6EzIMKoLfP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 10:12:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AC16841B2
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3AC16841B2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:12:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="385923458"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="385923458"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 03:12:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="687694001"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="687694001"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 09 Jun 2023 03:12:04 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q7Z6B-0008v2-2z
 for intel-wired-lan@lists.osuosl.org; Fri, 09 Jun 2023 10:12:03 +0000
Date: Fri, 09 Jun 2023 18:11:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306091813.1tu6HgXx-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686305526; x=1717841526;
 h=date:from:to:subject:message-id;
 bh=qwfrA+5fH84JPInYCuxVt6WNb4lCibi6GRkwj9sZnMU=;
 b=MBcLKYpkZKuc8wMFtIGHjYpYoYXmW6tAM2WQAgImPlDuIsCL/ycOMZaj
 +Ez/Jm/YpNfiB8I442RstZwOhv+XJ7QjQOED0sKfXzE2/C3W7nSEGaCWg
 bpMIcjufTMEsNaPq6hXDvB6VoYFCBaQprS2005Gd+Rlp+geigAQsFerkO
 SnFa6CW4HppTF1iHiE7mLCSqlqVsy24ud3D/w3K1wkr95KWttHApeOBsp
 562mLFx223SM+kssShOMoZOFENR7w7YWSiVdwZV75fjXMZVjkPvR7iwLY
 pJWTtDuiw618aR1eQKZm/FQM1RKSqCfGPqqeRtKX091uOrGLxX6MssuA9
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MBcLKYpk
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 449f6bc17a51e68b06cfd742898e5ff3fe6e04d7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 449f6bc17a51e68b06cfd742898e5ff3fe6e04d7  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 876m

configs tested: 127
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r012-20230608   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230608   gcc  
arc                  randconfig-r043-20230608   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                        neponset_defconfig   clang
arm                  randconfig-r001-20230608   clang
arm                  randconfig-r005-20230608   clang
arm                  randconfig-r006-20230608   clang
arm                  randconfig-r046-20230608   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r034-20230608   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r023-20230608   gcc  
hexagon              randconfig-r013-20230608   clang
hexagon              randconfig-r041-20230608   clang
hexagon              randconfig-r045-20230608   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230608   gcc  
i386                 randconfig-i002-20230608   gcc  
i386                 randconfig-i003-20230608   gcc  
i386                 randconfig-i004-20230608   gcc  
i386                 randconfig-i005-20230608   gcc  
i386                 randconfig-i006-20230608   gcc  
i386                 randconfig-i011-20230608   clang
i386                 randconfig-i012-20230608   clang
i386                 randconfig-i013-20230608   clang
i386                 randconfig-i014-20230608   clang
i386                 randconfig-i015-20230608   clang
i386                 randconfig-i016-20230608   clang
i386                 randconfig-i061-20230608   gcc  
i386                 randconfig-i062-20230608   gcc  
i386                 randconfig-i063-20230608   gcc  
i386                 randconfig-i064-20230608   gcc  
i386                 randconfig-i065-20230608   gcc  
i386                 randconfig-i066-20230608   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230608   gcc  
loongarch            randconfig-r024-20230608   gcc  
loongarch            randconfig-r026-20230608   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k         buildonly-randconfig-r002-20230608   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r002-20230608   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r032-20230608   clang
nios2                               defconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r004-20230608   gcc  
powerpc                     tqm8541_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                randconfig-r005-20230608   gcc  
riscv                randconfig-r015-20230608   clang
riscv                randconfig-r042-20230608   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230608   clang
s390                 randconfig-r022-20230608   clang
s390                 randconfig-r035-20230608   gcc  
s390                 randconfig-r044-20230608   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r003-20230608   gcc  
sh           buildonly-randconfig-r004-20230608   gcc  
sh                   randconfig-r003-20230608   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r021-20230608   gcc  
sparc                randconfig-r033-20230608   gcc  
sparc64      buildonly-randconfig-r005-20230608   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230608   gcc  
x86_64               randconfig-a002-20230608   gcc  
x86_64               randconfig-a003-20230608   gcc  
x86_64               randconfig-a004-20230608   gcc  
x86_64               randconfig-a005-20230608   gcc  
x86_64               randconfig-a006-20230608   gcc  
x86_64               randconfig-a011-20230608   clang
x86_64               randconfig-a012-20230608   clang
x86_64               randconfig-a013-20230608   clang
x86_64               randconfig-a014-20230608   clang
x86_64               randconfig-a015-20230608   clang
x86_64               randconfig-a016-20230608   clang
x86_64               randconfig-r002-20230608   gcc  
x86_64               randconfig-r006-20230608   gcc  
x86_64               randconfig-r036-20230608   gcc  
x86_64               randconfig-x051-20230608   clang
x86_64               randconfig-x052-20230608   clang
x86_64               randconfig-x053-20230608   clang
x86_64               randconfig-x054-20230608   clang
x86_64               randconfig-x055-20230608   clang
x86_64               randconfig-x056-20230608   clang
x86_64               randconfig-x061-20230608   clang
x86_64               randconfig-x062-20230608   clang
x86_64               randconfig-x063-20230608   clang
x86_64               randconfig-x064-20230608   clang
x86_64               randconfig-x065-20230608   clang
x86_64               randconfig-x066-20230608   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r025-20230608   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
