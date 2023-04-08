Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 891126DBA57
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Apr 2023 13:06:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E95C784525;
	Sat,  8 Apr 2023 11:06:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E95C784525
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680952017;
	bh=4K+lDRFBWkvuNEE8ev3EgLtUhu4llRKC8il8vzLOb3s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gJpMw+n5pNC2TWE8/G690mqNWoyQbx4ols+icfM3IsFfZcjbX4Z7xtBPEGkBHwLpX
	 u2fIOzMD0kJrGw/QkWCySL8e8CVn7Ooxnv1MB41krAS9OuKJFdvnXZgghiftaB/Uir
	 EJa5sab787LFqxI88Uv/8b9TkE3bt8MfMDROE6lJL4HtgxKndqQtwJsL1quHQmgtd/
	 j9dkF2lo/deqfdRyxJtW90lAw3dqV19Z85Ge4zeDtPaBNxmZKL/+XNi2uUFz97KBXn
	 uJZsk56MPl4GPZkNw97WiDjqDqszH/Y7PT5OKDukyh1lPdmd86s7nC1XKryEImpJ6c
	 es19WKOKySfKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5hhIl_orzg7k; Sat,  8 Apr 2023 11:06:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A5CB842F9;
	Sat,  8 Apr 2023 11:06:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A5CB842F9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 263D71BF844
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 11:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 014BE842F9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 11:06:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 014BE842F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kW33KNC7sNup for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Apr 2023 11:06:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5BD3842D1
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5BD3842D1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 11:06:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10673"; a="343135421"
X-IronPort-AV: E=Sophos;i="5.98,329,1673942400"; d="scan'208";a="343135421"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2023 04:06:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10673"; a="831426168"
X-IronPort-AV: E=Sophos;i="5.98,329,1673942400"; d="scan'208";a="831426168"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 08 Apr 2023 04:06:45 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pl6P6-000Ten-2o;
 Sat, 08 Apr 2023 11:06:44 +0000
Date: Sat, 08 Apr 2023 19:06:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64314aa3.DN07mqdXQa2YaOYT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680952007; x=1712488007;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=23DNTzx4NjBbO3lYpmbKwcc22uVVZmDX/9cBSJGoGzE=;
 b=iFhNGaZAgG0NjoNkf8oc87W6KbCIWtkXTcK9aVpzBOhEsqw2sJXtsVIU
 o7clJeZi3nsKYWK/ZptRLqidx1wVsmLje7qu5J0DulUNseuASK9L0E4Ev
 QZ9QeOkBjKEvkSAQVUl0BBgKbUU291d+pe45/Yr2DXf7gP8LCFxihP6c4
 vfvYeExEI1wvr3ZnVmoYlV5mPpGTTnyNhci2te1OCgrTOXEUR5oe2XRrS
 kSdpa5IzaFwgnvlKTU9wKUxdQaNMprZ72oJnZQtSyzFU7UWGgUhEQCtL4
 mj2tjmBz09Ba59i5XgoEjrT/b9EDNw9euljFFg+HbRwYQy1srDLE/9MHy
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iFhNGaZA
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 4815a6d64c2ed8d7c3a04fe2174af6ef1d53e1a5
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
branch HEAD: 4815a6d64c2ed8d7c3a04fe2174af6ef1d53e1a5  ice: use src VSI instead of src MAC in slow-path

elapsed time: 773m

configs tested: 108
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r023-20230403   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r034-20230403   gcc  
arc                  randconfig-r043-20230403   gcc  
arc                  randconfig-r043-20230407   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230403   clang
arm                  randconfig-r046-20230407   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r003-20230403   clang
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230403   gcc  
arm64                randconfig-r021-20230403   gcc  
csky         buildonly-randconfig-r002-20230403   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230403   gcc  
csky                 randconfig-r004-20230403   gcc  
hexagon      buildonly-randconfig-r004-20230403   clang
hexagon              randconfig-r003-20230403   clang
hexagon              randconfig-r041-20230403   clang
hexagon              randconfig-r041-20230407   clang
hexagon              randconfig-r045-20230403   clang
hexagon              randconfig-r045-20230407   clang
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
i386                 randconfig-r035-20230403   clang
i386                 randconfig-r036-20230403   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r006-20230403   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r005-20230403   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r005-20230403   gcc  
m68k                 randconfig-r024-20230403   gcc  
m68k                 randconfig-r033-20230403   gcc  
microblaze           randconfig-r015-20230403   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r032-20230403   gcc  
openrisc             randconfig-r006-20230403   gcc  
openrisc             randconfig-r011-20230403   gcc  
openrisc             randconfig-r026-20230403   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r012-20230403   gcc  
powerpc              randconfig-r014-20230403   gcc  
powerpc              randconfig-r025-20230403   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230403   gcc  
riscv                randconfig-r042-20230407   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230403   gcc  
s390                 randconfig-r044-20230407   gcc  
sh                               allmodconfig   gcc  
sparc        buildonly-randconfig-r001-20230403   gcc  
sparc                               defconfig   gcc  
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
x86_64               randconfig-r016-20230403   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r031-20230403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
