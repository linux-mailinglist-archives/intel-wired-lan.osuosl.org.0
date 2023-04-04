Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 737616D5952
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 09:19:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00E76414A1;
	Tue,  4 Apr 2023 07:19:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00E76414A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680592755;
	bh=WGeTi1Z9NJrGxiO8yi9h58qC96l5SdkAZUKxJko8kGs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tN75j6Vh3eATP6NpuVojBjAxTOvVPm1papYHGtLpVTwHaxSxxQdwrluP1JWRN/8Ku
	 lARuY7gp8+wihGx9qSIgcDGXnlh3m2hrEbRm3OUnwoQIFLorfPbYKgTyIcsumsoS83
	 S9YMFIY9LDOUKgM/8uwI/EERlXPabHPBGAphinRIljkuWftTC27/dku4Pi+KraJZPy
	 WTZSCRP9B+Ugm4t11MWWoolEStoI3YtdTKETXddIDxxRnxHp592oNGj6fq60QdjQHH
	 t9OCqcOudQKzW8+mz2XO1miwaofg3APZcgZ0MOlDApkO2zjz5iCaRVumnj9+Bw436v
	 ewaU/qyJgK4aw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FcRtKofj1ZJD; Tue,  4 Apr 2023 07:19:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA6BA40950;
	Tue,  4 Apr 2023 07:19:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA6BA40950
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D95381C277F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 07:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B043E606F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 07:19:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B043E606F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EL3Y4fANlSXG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 07:19:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34CD561012
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 34CD561012
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 07:19:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="322504746"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="322504746"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 00:19:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="797408807"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="797408807"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2023 00:19:00 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pjawV-000PLD-20;
 Tue, 04 Apr 2023 07:18:59 +0000
Date: Tue, 04 Apr 2023 15:18:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <642bcf38.hsWz3dMoUWLHYrvG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680592742; x=1712128742;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=iYlE80DEvv8ShWKgI8QAr3i1bpeFFJVeNDwGDe3BKd4=;
 b=cL/KDeEzDPPC0t1JQ7WIUGPj5IKKMPY7JyqE3N2y28SHrGu9PaZSAru3
 yjZgb9/Nl5qquArrXutj8dyTFUYQofACGke8lkboMyWUZ7bRTS7zMn6Vu
 wBhTlyCaSDAsllZHkHLuOyWlkOg8NqHNYTr3WIUycx1L9Ee5VAUIqFxvR
 Ogg8M2SLhhW4g+vYiBJaUVzQ6cTmWqNWH+4dqP8zSRTck8Tva3W0sim3D
 mXWZ9XMCF4vGBAJzuPGIlG7Tv2SBBGRSP05ZHrc1Gh9v+uOo323az1dhN
 qq8XBUYgNhhjxT6IrOCBRfNGcl7mQ/k1XW+aFLXOL1yW5afFGWX3xZE3z
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cL/KDeEz
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 a0e3304e3b378caaf08b13d57338ce359fc277aa
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: a0e3304e3b378caaf08b13d57338ce359fc277aa  i40e: Fix crash when rebuild fails in i40e_xdp_setup

elapsed time: 724m

configs tested: 102
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r023-20230403   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r033-20230403   gcc  
arc                  randconfig-r043-20230403   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230403   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r021-20230403   gcc  
csky         buildonly-randconfig-r004-20230403   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230403   gcc  
csky                 randconfig-r034-20230403   gcc  
hexagon      buildonly-randconfig-r003-20230403   clang
hexagon      buildonly-randconfig-r006-20230403   clang
hexagon              randconfig-r041-20230403   clang
hexagon              randconfig-r045-20230403   clang
i386                             allyesconfig   gcc  
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
i386                 randconfig-r031-20230403   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230403   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r005-20230403   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r024-20230403   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r005-20230403   gcc  
mips                 randconfig-r014-20230403   clang
nios2                               defconfig   gcc  
nios2                randconfig-r032-20230403   gcc  
nios2                randconfig-r035-20230403   gcc  
openrisc             randconfig-r026-20230403   gcc  
parisc       buildonly-randconfig-r001-20230403   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230403   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r015-20230403   gcc  
powerpc              randconfig-r025-20230403   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230403   gcc  
riscv                randconfig-r013-20230403   gcc  
riscv                randconfig-r036-20230403   clang
riscv                randconfig-r042-20230403   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230403   clang
s390                 randconfig-r044-20230403   gcc  
sh                               allmodconfig   gcc  
sparc        buildonly-randconfig-r002-20230403   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r003-20230403   gcc  
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
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r006-20230403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
