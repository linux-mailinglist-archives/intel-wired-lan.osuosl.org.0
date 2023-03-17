Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF886BED4B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Mar 2023 16:49:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF772424C8;
	Fri, 17 Mar 2023 15:49:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF772424C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679068164;
	bh=OQ7lyB/skylFijzMWXPkdUwXHScAl4Itit1DSHHVGJU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vSJTid3NMjRUNoaQ0xYjdyXMadqF/EBFItXZMXAVOg7HFkhQaL0zfxuCONxtj80Nd
	 fMyFf7Xrb8DsSxGyzFI3j9rFent8JhpL2gRw9jWKhnN5scLrz+Hsg19toO7QugO6P2
	 JrgoqXO84AUzJA6dfmPIhegx1YJaP33WO/Hi0ALOkuJL8ppcFuk03SnuxUv7p6zDfV
	 k7+Mkp83nBK9Yk8lVosV//u3SQJWhNwR25GDjIcagx2TLnBIHEe2MSS6ne3wWJOvRp
	 2gqFyH/H1IrEl5XDtMmQ5Z/KN5cbMn8RnGLntz+XsTYzQk22NkfRaRuwOCOy6ICyC5
	 9TVpnH5SNUDNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KQ5me5ptmO9j; Fri, 17 Mar 2023 15:49:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 165AA424C2;
	Fri, 17 Mar 2023 15:49:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 165AA424C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C8E61BF36E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 15:49:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 74DF082180
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 15:49:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74DF082180
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l9zYb-T4eEUO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Mar 2023 15:49:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7B5A822DE
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D7B5A822DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 15:49:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="336991452"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="336991452"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 08:49:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="1009665616"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="1009665616"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 17 Mar 2023 08:49:12 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pdCKN-0009Ri-3D;
 Fri, 17 Mar 2023 15:49:12 +0000
Date: Fri, 17 Mar 2023 23:48:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64148be3.cm+JQMXkrccrEeVw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679068154; x=1710604154;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=yVDUqxgsiGIagM7CFI0ZRHP6riQAmerNLhrPe/TtwUc=;
 b=Rou49q7aAjjxvRUnTm4qDLx670EqY+0Og37Is4WVwfXfGBPBuGhifFaZ
 uspCYFqIGTazREfRj924sOALr1JFNkD/dMsRjfqvoOfDSEpBXtOWShUzM
 Uzkct4yE+q+22KhtkhdWAUyKonChx/g1QxQTIdrLP4KAcbvFX0798xXtc
 /T2DdLJDR2FgJi4bDThhrKbZ+/Pg3ptjz6nYf6a2l0Azs6kEdRfwhRXqW
 g9ScH4SaTn4yzNLxL0LwLncZLmZvUEjfvqKI72pXPOCH2i/4y40A9ZNs6
 C5EtNOIX4g+hZva5N9XMA6CVT87ZCcFsQVPVCG5QXB+hJ598gA/rtpvnT
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rou49q7a
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 2b4cc3d3f4d8ec42961e98568a0afeee96a943ab
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 2b4cc3d3f4d8ec42961e98568a0afeee96a943ab  igc: fix the validation logic for taprio's gate list

elapsed time: 1275m

configs tested: 228
configs skipped: 16

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230313   gcc  
alpha                randconfig-r005-20230312   gcc  
alpha                randconfig-r006-20230312   gcc  
alpha                randconfig-r021-20230312   gcc  
alpha                randconfig-r024-20230312   gcc  
alpha                randconfig-r034-20230313   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230312   gcc  
arc                  randconfig-r004-20230312   gcc  
arc                  randconfig-r005-20230313   gcc  
arc                  randconfig-r006-20230313   gcc  
arc                  randconfig-r012-20230312   gcc  
arc                  randconfig-r014-20230312   gcc  
arc                  randconfig-r022-20230313   gcc  
arc                  randconfig-r026-20230312   gcc  
arc                  randconfig-r026-20230315   gcc  
arc                  randconfig-r031-20230312   gcc  
arc                  randconfig-r034-20230312   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                         lpc18xx_defconfig   gcc  
arm                  randconfig-r004-20230312   gcc  
arm                  randconfig-r005-20230312   gcc  
arm                  randconfig-r013-20230313   gcc  
arm                  randconfig-r016-20230313   gcc  
arm                  randconfig-r021-20230313   gcc  
arm                  randconfig-r021-20230315   gcc  
arm                  randconfig-r025-20230313   gcc  
arm                  randconfig-r036-20230312   gcc  
arm                  randconfig-r046-20230312   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230312   gcc  
arm64                randconfig-r012-20230313   clang
arm64                randconfig-r015-20230312   gcc  
arm64                randconfig-r034-20230312   clang
arm64                randconfig-r034-20230313   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r002-20230312   gcc  
csky                 randconfig-r005-20230317   gcc  
csky                 randconfig-r011-20230313   gcc  
csky                 randconfig-r012-20230313   gcc  
csky                 randconfig-r013-20230312   gcc  
csky                 randconfig-r031-20230313   gcc  
csky                 randconfig-r035-20230312   gcc  
hexagon      buildonly-randconfig-r004-20230312   clang
hexagon      buildonly-randconfig-r005-20230313   clang
hexagon              randconfig-r016-20230313   clang
hexagon              randconfig-r035-20230313   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
i386                             allyesconfig   gcc  
i386                         debian-10.3-func   gcc  
i386                   debian-10.3-kselftests   gcc  
i386                        debian-10.3-kunit   gcc  
i386                          debian-10.3-kvm   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230313   gcc  
i386                 randconfig-a002-20230313   gcc  
i386                 randconfig-a003-20230313   gcc  
i386                 randconfig-a004-20230313   gcc  
i386                 randconfig-a005-20230313   gcc  
i386                 randconfig-a006-20230313   gcc  
i386                 randconfig-a011-20230313   clang
i386                 randconfig-a012-20230313   clang
i386                 randconfig-a013-20230313   clang
i386                 randconfig-a014-20230313   clang
i386                 randconfig-a015-20230313   clang
i386                 randconfig-a016-20230313   clang
i386                          randconfig-c001   gcc  
i386                 randconfig-r002-20230313   gcc  
i386                 randconfig-r004-20230313   gcc  
i386                 randconfig-r005-20230313   gcc  
i386                 randconfig-r032-20230313   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r001-20230313   gcc  
ia64                 randconfig-r002-20230313   gcc  
ia64                 randconfig-r006-20230313   gcc  
ia64                 randconfig-r011-20230312   gcc  
ia64                 randconfig-r012-20230312   gcc  
ia64                 randconfig-r032-20230313   gcc  
ia64                 randconfig-r036-20230313   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230317   gcc  
loongarch            randconfig-r002-20230312   gcc  
loongarch            randconfig-r002-20230313   gcc  
loongarch            randconfig-r003-20230313   gcc  
loongarch            randconfig-r003-20230317   gcc  
loongarch            randconfig-r022-20230312   gcc  
loongarch            randconfig-r031-20230313   gcc  
loongarch            randconfig-r036-20230313   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
m68k                 randconfig-r001-20230313   gcc  
m68k                 randconfig-r002-20230312   gcc  
m68k                 randconfig-r002-20230317   gcc  
m68k                 randconfig-r004-20230313   gcc  
m68k                 randconfig-r005-20230312   gcc  
m68k                 randconfig-r011-20230312   gcc  
m68k                 randconfig-r014-20230313   gcc  
m68k                 randconfig-r015-20230313   gcc  
m68k                 randconfig-r016-20230312   gcc  
m68k                 randconfig-r023-20230315   gcc  
m68k                 randconfig-r031-20230313   gcc  
m68k                 randconfig-r033-20230313   gcc  
m68k                 randconfig-r034-20230313   gcc  
microblaze           randconfig-r001-20230312   gcc  
microblaze           randconfig-r001-20230313   gcc  
microblaze           randconfig-r003-20230312   gcc  
microblaze           randconfig-r006-20230312   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r001-20230312   gcc  
mips                 randconfig-r004-20230312   gcc  
mips                 randconfig-r034-20230313   clang
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230312   gcc  
nios2                randconfig-r005-20230312   gcc  
nios2                randconfig-r012-20230312   gcc  
nios2                randconfig-r013-20230312   gcc  
nios2                randconfig-r025-20230312   gcc  
nios2                randconfig-r032-20230312   gcc  
nios2                randconfig-r036-20230313   gcc  
openrisc             randconfig-r014-20230313   gcc  
openrisc             randconfig-r022-20230315   gcc  
openrisc             randconfig-r032-20230312   gcc  
openrisc             randconfig-r035-20230313   gcc  
openrisc             randconfig-r036-20230312   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230312   gcc  
parisc               randconfig-r005-20230313   gcc  
parisc               randconfig-r006-20230313   gcc  
parisc               randconfig-r013-20230312   gcc  
parisc               randconfig-r014-20230312   gcc  
parisc               randconfig-r014-20230313   gcc  
parisc               randconfig-r026-20230313   gcc  
parisc               randconfig-r033-20230312   gcc  
parisc               randconfig-r033-20230313   gcc  
parisc               randconfig-r036-20230313   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230313   clang
powerpc      buildonly-randconfig-r004-20230313   clang
powerpc              randconfig-r003-20230313   gcc  
powerpc              randconfig-r004-20230313   gcc  
powerpc              randconfig-r015-20230312   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230313   gcc  
riscv                randconfig-r011-20230313   clang
riscv                randconfig-r012-20230312   gcc  
riscv                randconfig-r024-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r013-20230313   clang
s390                 randconfig-r016-20230312   gcc  
s390                 randconfig-r021-20230312   gcc  
s390                 randconfig-r025-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r015-20230312   gcc  
sh                   randconfig-r016-20230312   gcc  
sh                   randconfig-r023-20230313   gcc  
sh                   randconfig-r035-20230312   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230313   gcc  
sparc                randconfig-r002-20230313   gcc  
sparc                randconfig-r015-20230312   gcc  
sparc                randconfig-r015-20230313   gcc  
sparc                randconfig-r016-20230313   gcc  
sparc                randconfig-r023-20230312   gcc  
sparc                randconfig-r025-20230315   gcc  
sparc                randconfig-r033-20230313   gcc  
sparc                randconfig-r035-20230313   gcc  
sparc64              randconfig-r001-20230313   gcc  
sparc64              randconfig-r002-20230312   gcc  
sparc64              randconfig-r004-20230312   gcc  
sparc64              randconfig-r004-20230313   gcc  
sparc64              randconfig-r013-20230312   gcc  
sparc64              randconfig-r025-20230313   gcc  
sparc64              randconfig-r034-20230312   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230313   gcc  
x86_64               randconfig-a002-20230313   gcc  
x86_64               randconfig-a003-20230313   gcc  
x86_64               randconfig-a004-20230313   gcc  
x86_64               randconfig-a005-20230313   gcc  
x86_64               randconfig-a006-20230313   gcc  
x86_64               randconfig-a011-20230313   clang
x86_64               randconfig-a012-20230313   clang
x86_64               randconfig-a013-20230313   clang
x86_64               randconfig-a014-20230313   clang
x86_64               randconfig-a015-20230313   clang
x86_64               randconfig-a016-20230313   clang
x86_64               randconfig-k001-20230313   clang
x86_64                        randconfig-k001   clang
x86_64               randconfig-r002-20230313   gcc  
x86_64               randconfig-r006-20230313   gcc  
x86_64               randconfig-r033-20230313   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                           allyesconfig   gcc  
xtensa               randconfig-r001-20230312   gcc  
xtensa               randconfig-r001-20230313   gcc  
xtensa               randconfig-r003-20230312   gcc  
xtensa               randconfig-r023-20230312   gcc  
xtensa               randconfig-r032-20230313   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
