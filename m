Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1440E74E650
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 07:27:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D9A981F40;
	Tue, 11 Jul 2023 05:27:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D9A981F40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689053273;
	bh=8AYscRBPm6k4kO/Z8Dipg7Ja0v7Q9cjDs3PKo2NQXA4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xFMmswb6bDRx7y5eUAKEiGwoO9Q7kHjzD4pR3p62oMQmiMNy6UW14RJuIfh0Jrp9/
	 JcA4ad6ZTX77tWD4OTP3x06VqPsDsQvIux/D9YJG+Op8jUbi19N1VVE2iLVjHgOmRa
	 JVKtyNqcn5zues28/SfnSM+jRBj5DvxHfUYDLjaOABMYuMeLXptfIarXiV3u/GyELm
	 03cZ++xJ+//yiRmeXon6ohKcWAJclmHZKeZ142Jy6I0Y9pnFSuP01yrgwFXgd00h2b
	 7MizFjbB026ziNCkp/sQE4EcphKmQgWWEVUFeshudQK4Pu+/r6cf8xYPG9/JUfGcNo
	 OFkyxWk9qxbyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4YEnhoDlPYts; Tue, 11 Jul 2023 05:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43AA281EDD;
	Tue, 11 Jul 2023 05:27:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43AA281EDD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EE981BF35D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 05:27:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 04540403CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 05:27:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04540403CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AoTdvVNSkiDq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 05:27:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9961A40207
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9961A40207
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 05:27:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="361990049"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="361990049"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 22:27:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="715060353"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="715060353"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2023 22:27:42 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qJ5uY-0004Lh-0X
 for intel-wired-lan@lists.osuosl.org; Tue, 11 Jul 2023 05:27:42 +0000
Date: Tue, 11 Jul 2023 13:27:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307111302.Gz5cCWnP-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689053264; x=1720589264;
 h=date:from:to:subject:message-id;
 bh=2uxux+Xi/cwky+sRv9QQLOnXV0kdF1AfXlYy1HiHMos=;
 b=FFPb4NQyX3RDCNstiu9ccgV9fUPmJ9Ttla9F7VfB4Qc+03rRtttA4Dwc
 /EVXtHsk8aiIEZaAMbP/yvuB3QyBtsWzS+9a3yTseZMxLkgZqZJEM6uFW
 H6GlcakQUGRRcg5GtH10gIoNUIp4fvP/yFy6PmI/SwxeRI0iXdZj7wThu
 JpG8VsD72JwnYtJsAWYcgubaIHoOroeuzictkfURZQB2myp8nu7dB6kOL
 ibBwYW9PMT7gdevy+5dvooOS8T1dDkJdjQEOs0KaeQ/9UewqAq9wI9UD5
 5JkuKPHS+x2+3iYgc/NgxDp99f1LGKIzn1Yl9jkhLg7ZZcnjv6JWuszDY
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FFPb4NQy
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 31fff17562a1de7a4187ff18c92c2ae37adf6d78
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 31fff17562a1de7a4187ff18c92c2ae37adf6d78  i40e: Wait for pending VF reset in VF set callbacks

elapsed time: 729m

configs tested: 140
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230710   gcc  
alpha                randconfig-r011-20230710   gcc  
alpha                randconfig-r014-20230710   gcc  
alpha                randconfig-r022-20230710   gcc  
alpha                randconfig-r025-20230710   gcc  
alpha                randconfig-r036-20230710   gcc  
arc                              alldefconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230710   gcc  
arc                  randconfig-r024-20230710   gcc  
arc                  randconfig-r043-20230710   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                            hisi_defconfig   gcc  
arm                       netwinder_defconfig   clang
arm                         orion5x_defconfig   clang
arm                  randconfig-r032-20230710   clang
arm                  randconfig-r033-20230710   clang
arm                  randconfig-r046-20230710   gcc  
arm                           sama5_defconfig   gcc  
arm                        spear6xx_defconfig   gcc  
arm                         vf610m4_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230710   gcc  
arm64                randconfig-r006-20230710   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r034-20230710   gcc  
hexagon              randconfig-r003-20230710   clang
hexagon              randconfig-r005-20230710   clang
hexagon              randconfig-r013-20230710   clang
hexagon              randconfig-r031-20230710   clang
hexagon              randconfig-r035-20230710   clang
hexagon              randconfig-r041-20230710   clang
hexagon              randconfig-r045-20230710   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230710   gcc  
i386         buildonly-randconfig-r004-20230711   clang
i386         buildonly-randconfig-r005-20230710   gcc  
i386         buildonly-randconfig-r005-20230711   clang
i386         buildonly-randconfig-r006-20230710   gcc  
i386         buildonly-randconfig-r006-20230711   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230710   gcc  
i386                 randconfig-i002-20230710   gcc  
i386                 randconfig-i003-20230710   gcc  
i386                 randconfig-i004-20230710   gcc  
i386                 randconfig-i005-20230710   gcc  
i386                 randconfig-i006-20230710   gcc  
i386                 randconfig-i011-20230710   clang
i386                 randconfig-i012-20230710   clang
i386                 randconfig-i013-20230710   clang
i386                 randconfig-i014-20230710   clang
i386                 randconfig-i015-20230710   clang
i386                 randconfig-i016-20230710   clang
i386                 randconfig-r035-20230710   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230710   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230710   gcc  
m68k                 randconfig-r004-20230710   gcc  
m68k                 randconfig-r016-20230710   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r034-20230710   clang
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230710   gcc  
nios2                randconfig-r013-20230710   gcc  
openrisc             randconfig-r016-20230710   gcc  
openrisc             randconfig-r032-20230710   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc              randconfig-r004-20230710   gcc  
powerpc              randconfig-r006-20230710   gcc  
powerpc              randconfig-r023-20230710   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230710   gcc  
riscv                randconfig-r042-20230710   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r033-20230710   gcc  
s390                 randconfig-r044-20230710   clang
sh                               allmodconfig   gcc  
sh                            migor_defconfig   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r002-20230710   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r014-20230710   gcc  
um                   randconfig-r022-20230710   gcc  
um                   randconfig-r024-20230710   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230710   gcc  
x86_64       buildonly-randconfig-r001-20230711   clang
x86_64       buildonly-randconfig-r002-20230710   gcc  
x86_64       buildonly-randconfig-r002-20230711   clang
x86_64       buildonly-randconfig-r003-20230710   gcc  
x86_64       buildonly-randconfig-r003-20230711   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r015-20230710   clang
x86_64               randconfig-x001-20230710   clang
x86_64               randconfig-x002-20230710   clang
x86_64               randconfig-x003-20230710   clang
x86_64               randconfig-x004-20230710   clang
x86_64               randconfig-x005-20230710   clang
x86_64               randconfig-x006-20230710   clang
x86_64               randconfig-x011-20230710   gcc  
x86_64               randconfig-x012-20230710   gcc  
x86_64               randconfig-x013-20230710   gcc  
x86_64               randconfig-x014-20230710   gcc  
x86_64               randconfig-x015-20230710   gcc  
x86_64               randconfig-x016-20230710   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r012-20230710   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
