Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A756B2354
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 12:45:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02C6D820D8;
	Thu,  9 Mar 2023 11:45:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02C6D820D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678362333;
	bh=NjQE+EPKlSwzVj4ggWDnFk0J4zTdZTRU/JZz6Inslkc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IwIAUfB4mriqDUYdz6V5ZotLnxEI2hW0ddma8/jKsAyavawElDmdqSkaG/qPUsdl6
	 8iYVSwBroR3gjuRGxUzyNDWdeyLsMaM2Sh5NKqSdK8a76w7osFsG1c+2q0oWYVoxrb
	 hpz/gNzh2FYPD3EhxV4Li+2NldQfORMBPZH3soIJ0dKDcrOESJGYaHxtsrpWoaWp55
	 D87a/ATTCbg74u19IGdyHeoy0uoeJTQYoeGQrN/ezjeEFx6hObVVQ24XsWyJo0X8r7
	 AF87qpjCy4WkfUHHuDj0o2VL+ItDw7a+vYOC9TzMg0v8bQSdVJ3efKgoYwh523oBE9
	 fK3awqDeXACLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4WPz10cSiJ6g; Thu,  9 Mar 2023 11:45:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBE42820D2;
	Thu,  9 Mar 2023 11:45:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBE42820D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F95E1BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 11:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7441960E7B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 11:45:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7441960E7B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id awOfWurx9v4F for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 11:45:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E128D608D8
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E128D608D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 11:45:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="335127255"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="335127255"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 03:45:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="851485134"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="851485134"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 09 Mar 2023 03:45:23 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1paEi2-0002uy-1k;
 Thu, 09 Mar 2023 11:45:22 +0000
Date: Thu, 09 Mar 2023 19:45:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6409c6cc.2fpJ2hbk/9IVTURb%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678362324; x=1709898324;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=BO9b9xKlxEr4mqE1vYFdjETyK2kJhOUn3jlx3fD9m+8=;
 b=N0WvK3vasp5Go7H0plXPmznS0q6kUyVZm2DKgO827J+qm6s/8zUkn7YT
 xcBJ78oCnxxi1Yf2euU+n956jpV6Xy5e96DOq0XKqjKliwhwt7nTAwERu
 lm5cX/d21d/bYGg13PNe4jLohAynVFphYPWvOk7JazQ/Fs15ZwwTPrFTQ
 UVFw+2pBTwnR955QzNrLzNq6fgN/G8HN36BRwD5bbArjPorG2NUD/vYSG
 BvIUnp68ksoYVqkqiGxRJYNIkTfUzLIFTKZR/tM40849fi45KyYLH20dL
 b2y0aCAMN6xvyRoCAUtmQcQZtSHpxBrpm2oan0jaoJpSSRsoTAw//fzus
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N0WvK3va
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 6a04141c4f0c07b221ee97f836000ed2f57e1e12
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 6a04141c4f0c07b221ee97f836000ed2f57e1e12  igc: fix the validation logic for taprio's gate list

elapsed time: 782m

configs tested: 97
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230308   gcc  
alpha                randconfig-r023-20230308   gcc  
alpha                randconfig-r033-20230308   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230308   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r024-20230308   gcc  
arm                  randconfig-r046-20230308   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230308   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230308   gcc  
arm64                randconfig-r013-20230308   clang
csky         buildonly-randconfig-r006-20230308   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230308   clang
hexagon              randconfig-r045-20230308   clang
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
ia64                 randconfig-r006-20230308   gcc  
ia64                 randconfig-r031-20230308   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r022-20230308   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r021-20230308   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r035-20230308   clang
nios2        buildonly-randconfig-r001-20230308   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r036-20230308   gcc  
openrisc     buildonly-randconfig-r003-20230308   gcc  
openrisc             randconfig-r011-20230308   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r026-20230308   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r005-20230308   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230308   gcc  
riscv                randconfig-r012-20230308   clang
riscv                randconfig-r042-20230308   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230308   gcc  
s390                 randconfig-r044-20230308   clang
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r025-20230308   gcc  
sparc64              randconfig-r034-20230308   gcc  
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
