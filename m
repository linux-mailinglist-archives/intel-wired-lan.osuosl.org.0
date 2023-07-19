Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 507F9759AF4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jul 2023 18:36:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1E426111B;
	Wed, 19 Jul 2023 16:36:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1E426111B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689784591;
	bh=xrVuTQOdxsRt3/8peGnxQK7/A6o+iBl5QtedA9GEJfQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EMXsuraPzWIMiHvaDfHwYEPynbwsZMhuRbWWCrFxZ4ds3BQUSBNThMGwXcWZWq2nb
	 y4/p7IKJewWrBBNlqaD5x6b73kBJEPuXdOBjLG8IzSc1Z6pQ0YDcozZp0d3kOTl5De
	 QKcQAx8bhbifyPrPmy+mtBMDaMTYJum2ymFg+cu7T+sNvtPoDUtvXbOmJEz+LWvQEl
	 7PubQWDKvkx0sQL1wGYQeiTBC92Xq5vqOlOLtQZjIx1U7hCPC9QS6TOlex3XmvBj+x
	 tXKBazYIgMVi8bAH2aqppuCPFyqKrW7Or6wTnzmQAjGXGFIUOH+PLFp9nHvpqS3RYM
	 9DxTyARDVGcWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hoGweKPdSLgt; Wed, 19 Jul 2023 16:36:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79FBC60BA9;
	Wed, 19 Jul 2023 16:36:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79FBC60BA9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 605781BF36A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 16:36:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3826F41933
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 16:36:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3826F41933
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QZGHxp9lC0dy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 16:36:24 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D76604027E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 16:36:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D76604027E
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="351382464"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="351382464"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 09:29:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="701331871"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="701331871"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 19 Jul 2023 09:29:16 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qMA2x-0005CJ-2P
 for intel-wired-lan@lists.osuosl.org; Wed, 19 Jul 2023 16:29:08 +0000
Date: Thu, 20 Jul 2023 00:21:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307200004.yjikMR02-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689784583; x=1721320583;
 h=date:from:to:subject:message-id;
 bh=rXVdmDtRmhzBUznbgX5LwhQTJRwE0E1NAshTinM9BMY=;
 b=TPNF9NH3ASFgeYoxk6BSk6ZHpZ+RUE0/192b5MEOBKkFr9QzKkf2k4E/
 D233obI/LUujNgyR8NZOZRIbnguBEwPVdWcflTRzMZgHdLBooKi81M4eJ
 5ByApSkCdnLsCZLH+mETbKofrQSyPlolPJIdyfCA5RtmnDAPA/rdX7ooJ
 T/W47MOF6Q7/i838vWK2KxYkE7TT47BEstVYQHTk8Pew2qh77V41b39hq
 jEeB9tjl8sjo7OaJvupJBS8MoKbp8nPt7bdrjhZjfwcrlrciPUnwS+rvX
 lrFzOgnoqxbfGq+/gJfkDpt6+BWshPTbxli1pgMbAx171AZuIYzldtkWA
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TPNF9NH3
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 8fcd7c7b3a38ab5e452f542fda8f7940e77e479a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 8fcd7c7b3a38ab5e452f542fda8f7940e77e479a  octeontx2-pf: Dont allocate BPIDs for LBK interfaces

elapsed time: 1638m

configs tested: 154
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r014-20230718   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r026-20230718   gcc  
arc                  randconfig-r031-20230718   gcc  
arc                  randconfig-r043-20230718   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   clang
arm                                 defconfig   gcc  
arm                            hisi_defconfig   gcc  
arm                           omap1_defconfig   clang
arm                          pxa3xx_defconfig   gcc  
arm                  randconfig-r003-20230718   clang
arm                  randconfig-r021-20230718   gcc  
arm                  randconfig-r046-20230718   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230718   clang
csky                                defconfig   gcc  
csky                 randconfig-r034-20230718   gcc  
hexagon              randconfig-r041-20230718   clang
hexagon              randconfig-r045-20230718   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230718   gcc  
i386         buildonly-randconfig-r005-20230718   gcc  
i386         buildonly-randconfig-r006-20230718   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230718   gcc  
i386                 randconfig-i002-20230718   gcc  
i386                 randconfig-i003-20230718   gcc  
i386                 randconfig-i004-20230718   gcc  
i386                 randconfig-i005-20230718   gcc  
i386                 randconfig-i006-20230718   gcc  
i386                 randconfig-i011-20230718   clang
i386                 randconfig-i012-20230718   clang
i386                 randconfig-i013-20230718   clang
i386                 randconfig-i014-20230718   clang
i386                 randconfig-i015-20230718   clang
i386                 randconfig-i016-20230718   clang
i386                 randconfig-r002-20230718   gcc  
i386                 randconfig-r015-20230718   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r016-20230718   gcc  
loongarch            randconfig-r031-20230718   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                 randconfig-r022-20230718   gcc  
microblaze           randconfig-r033-20230718   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                  cavium_octeon_defconfig   clang
mips                           ip22_defconfig   clang
mips                 randconfig-r023-20230718   gcc  
nios2                            alldefconfig   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r004-20230718   gcc  
openrisc             randconfig-r005-20230718   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230718   gcc  
parisc               randconfig-r012-20230718   gcc  
parisc               randconfig-r022-20230718   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          g5_defconfig   clang
powerpc                    klondike_defconfig   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc                    mvme5100_defconfig   clang
powerpc              randconfig-r001-20230718   gcc  
powerpc              randconfig-r005-20230718   gcc  
powerpc              randconfig-r006-20230718   gcc  
powerpc              randconfig-r025-20230718   clang
powerpc              randconfig-r036-20230718   gcc  
powerpc                     tqm8540_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                randconfig-r013-20230718   clang
riscv                randconfig-r016-20230718   clang
riscv                randconfig-r042-20230718   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r006-20230718   gcc  
s390                 randconfig-r011-20230718   clang
s390                 randconfig-r044-20230718   clang
sh                               allmodconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                         microdev_defconfig   gcc  
sh                   randconfig-r001-20230718   gcc  
sh                          rsk7201_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r024-20230718   gcc  
sparc                randconfig-r034-20230718   gcc  
sparc                randconfig-r036-20230718   gcc  
sparc64              randconfig-r004-20230718   gcc  
sparc64              randconfig-r036-20230718   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r024-20230718   gcc  
um                   randconfig-r026-20230718   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230718   gcc  
x86_64       buildonly-randconfig-r002-20230718   gcc  
x86_64       buildonly-randconfig-r003-20230718   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r006-20230718   gcc  
x86_64               randconfig-r012-20230718   clang
x86_64               randconfig-r014-20230718   clang
x86_64               randconfig-r015-20230718   clang
x86_64               randconfig-r032-20230718   gcc  
x86_64               randconfig-x001-20230718   clang
x86_64               randconfig-x002-20230718   clang
x86_64               randconfig-x003-20230718   clang
x86_64               randconfig-x004-20230718   clang
x86_64               randconfig-x005-20230718   clang
x86_64               randconfig-x006-20230718   clang
x86_64               randconfig-x011-20230718   gcc  
x86_64               randconfig-x012-20230718   gcc  
x86_64               randconfig-x013-20230718   gcc  
x86_64               randconfig-x014-20230718   gcc  
x86_64               randconfig-x015-20230718   gcc  
x86_64               randconfig-x016-20230718   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r032-20230718   gcc  
xtensa               randconfig-r034-20230718   gcc  
xtensa               randconfig-r035-20230718   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
