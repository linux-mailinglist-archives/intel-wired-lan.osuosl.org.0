Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D58743368
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jun 2023 06:13:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1148C60B3D;
	Fri, 30 Jun 2023 04:13:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1148C60B3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688098407;
	bh=NQ1M5q/kOp5tjE7Men+fY9vWox1iUYjhqXb3/qSY9Qw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9nunKa/Eekbq4i3mmFYyRsfEZtmU9C2qkC6v8JXvsoAkzaRMPyTWBizhvCfvphx+s
	 XQLe7K+5966sM/OGtBJgjrTw1Lrdo/vsVmTs3JDv5XsIwzDgsg9fXM3ODCEhhToOep
	 gp0kYnlbIFZYIb/4c6vlA4I1PhQh/7ot/UkA1MTHZMkXOPnPNL0o87Zh/f6AMLS5dl
	 6aG3C7It1iGzCHZur6LPNbTPE2UAE2OdSZieKfm4TYu1nJlF3wpuUiUBXQh2IGPEZj
	 J/ZbxGWNUxO9bdIEXK7epgQmk/JQFaHuEckmLPSJL7DyWUeQHJuNz1slfUpHme1WBb
	 HejfxhOSU6M3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-5RyptNlVis; Fri, 30 Jun 2023 04:13:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4E2E6058D;
	Fri, 30 Jun 2023 04:13:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4E2E6058D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA0E41BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 04:13:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9279060D4C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 04:13:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9279060D4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9znYSpGJrJWp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jun 2023 04:13:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C98D60B3D
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C98D60B3D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 04:13:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="361153272"
X-IronPort-AV: E=Sophos;i="6.01,169,1684825200"; d="scan'208";a="361153272"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 21:13:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="694899015"
X-IronPort-AV: E=Sophos;i="6.01,169,1684825200"; d="scan'208";a="694899015"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 29 Jun 2023 21:13:11 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qF5VO-000Efi-1v
 for intel-wired-lan@lists.osuosl.org; Fri, 30 Jun 2023 04:13:10 +0000
Date: Fri, 30 Jun 2023 12:12:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306301253.U4e0idh1-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688098399; x=1719634399;
 h=date:from:to:subject:message-id;
 bh=UF/awWrSHHf0zlp62U6Rp9vleMwTHDa7yngJV/zFKs8=;
 b=fpCyO2pFE58f1TsQwtnZd6wHbXtFx4mcUc77Jb8ZhjXrmL+1mIUNVgJL
 kW4jTXYGjgmFj+D4lj4NXHVbspEncjqJ+z3+zp1AzVpSjcX0qXHkdTVKI
 dCYMEfJaQKW8TklTGlZDeQXKUDE5gEzYohIkXmQypZpGZ19dK2BDi5ILY
 11hdmZ7Hi+/8Wf8/OyGP1MO9Y1KfKorSHWDF1xWTnktqK+Go7u+oglh80
 Wm08DEvfYIzNV4NY54D0ErhxxXjbIpKcLGY9a8rW9uHpdxRqoJdUVAAuh
 EsfGxxy99NgxBp+FxxTjAF0fM5Fl2wMVSb6GP+wNofFq6OxRpkF1fQ0al
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fpCyO2pF
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 fb53da28e555289c3de15af008fefdd9264f7ac0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: fb53da28e555289c3de15af008fefdd9264f7ac0  igc: Fix Kernel Panic during ndo_tx_timeout callback

elapsed time: 732m

configs tested: 105
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230629   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r013-20230629   gcc  
arc                  randconfig-r032-20230629   gcc  
arc                  randconfig-r043-20230629   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r006-20230629   clang
arm                  randconfig-r046-20230629   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230629   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r005-20230629   gcc  
hexagon              randconfig-r024-20230629   clang
hexagon              randconfig-r036-20230629   clang
hexagon              randconfig-r041-20230629   clang
hexagon              randconfig-r045-20230629   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230629   gcc  
i386         buildonly-randconfig-r005-20230629   gcc  
i386         buildonly-randconfig-r006-20230629   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230629   gcc  
i386                 randconfig-i002-20230629   gcc  
i386                 randconfig-i003-20230629   gcc  
i386                 randconfig-i004-20230629   gcc  
i386                 randconfig-i005-20230629   gcc  
i386                 randconfig-i006-20230629   gcc  
i386                 randconfig-i011-20230629   clang
i386                 randconfig-i012-20230629   clang
i386                 randconfig-i013-20230629   clang
i386                 randconfig-i014-20230629   clang
i386                 randconfig-i015-20230629   clang
i386                 randconfig-i016-20230629   clang
i386                 randconfig-r015-20230629   clang
i386                 randconfig-r026-20230629   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230629   gcc  
microblaze           randconfig-r002-20230629   gcc  
microblaze           randconfig-r012-20230629   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r025-20230629   gcc  
nios2                randconfig-r031-20230629   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r023-20230629   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230629   gcc  
riscv                randconfig-r042-20230629   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r035-20230629   gcc  
s390                 randconfig-r044-20230629   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r034-20230629   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r021-20230629   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230629   gcc  
x86_64       buildonly-randconfig-r002-20230629   gcc  
x86_64       buildonly-randconfig-r003-20230629   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230629   clang
x86_64               randconfig-x002-20230629   clang
x86_64               randconfig-x003-20230629   clang
x86_64               randconfig-x004-20230629   clang
x86_64               randconfig-x005-20230629   clang
x86_64               randconfig-x006-20230629   clang
x86_64               randconfig-x011-20230629   gcc  
x86_64               randconfig-x012-20230629   gcc  
x86_64               randconfig-x013-20230629   gcc  
x86_64               randconfig-x014-20230629   gcc  
x86_64               randconfig-x015-20230629   gcc  
x86_64               randconfig-x016-20230629   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
