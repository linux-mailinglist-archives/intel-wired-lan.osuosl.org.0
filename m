Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D33C7B9AF0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 07:39:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56B1C82386;
	Thu,  5 Oct 2023 05:39:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56B1C82386
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696484356;
	bh=WMvxfZlev7NoXxwMS4rfnC1F9nYdiXF3EuEUKpe9BXs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=asZwnnyFzloMtnv3AQ334m51tU/avUycA2ZA5ewCCAIXEGgS5MUvUUqRWc+177/+r
	 Dsr32ER/RVqf3e+HPFZTItbnbQWYTIGupXVuAgZls+cUHXiQEBrYwpUiGTND4Ex7BF
	 YJzn4RwClTCU+ZyowJ37qKMC07W53aEI6ugC2SSI6uwwlWdFctDqg13b3BOs7FcsPi
	 UfD8Un0IOHp368O4+gjHEUrcBW4Kf2AgP9mh86xAMzcRjZ/mU3LiMxpxK6PGyrDLTm
	 5Kke0H4wsMs+NRk6RWmq1IbwBGPP3PTVGzICLlLcr7JOssV2hDCEexzUGZkR1YLcUL
	 2zXGTD69PUCDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ECbMKQyg8wsZ; Thu,  5 Oct 2023 05:39:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01E3A8224B;
	Thu,  5 Oct 2023 05:39:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01E3A8224B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6BD821BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 05:39:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E10841F34
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 05:39:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E10841F34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Joqi1Km58s-v for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 05:39:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7110C41F25
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 05:39:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7110C41F25
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="449904467"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="449904467"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 22:38:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="842244977"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="842244977"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Oct 2023 22:38:48 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qoH4Q-000L4V-0M
 for intel-wired-lan@lists.osuosl.org; Thu, 05 Oct 2023 05:38:46 +0000
Date: Thu, 05 Oct 2023 13:38:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202310051314.8otiA25u-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696484348; x=1728020348;
 h=date:from:to:subject:message-id;
 bh=99GzD+o2tEwelK2/8VEFntdGbTSZM6zjetFZhGMUx1I=;
 b=G4WntvDduqgS+/9TfcnjQWrqNt5/uC5HuqoKcNYHD8M5csH3Jg78vYB7
 gF8Jrw0TqKxiLawsrztFU6LlQ81CyP0bEidpJpxnlPcbOHtSxONtseyt6
 TnR3pdozxUNLtyByOtW/1tCkPamB+OMFnGtICU1WcV52zMc+syOF3NWQ5
 1UsqKqNm23ZfLk6QH+4eZe6zulwxx8W4TKxEk340dXQZmD40oc5DSJvbt
 Ii3JAVz/8RV4is9cYJP9IFnnphFysQpYF6e1k33CC7c0WidtP2/K+fgYN
 YU/29B9fkw91fSc5Z+dQgmnNeRcN8qvlwBwFNft0qI429mllm6vqCf8/v
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G4WntvDd
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 91e43ca0090b5fd59302c3d150835299785f30ea
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
branch HEAD: 91e43ca0090b5fd59302c3d150835299785f30ea  ice: fix linking when CONFIG_PTP_1588_CLOCK=n

elapsed time: 726m

configs tested: 112
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231005   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         bcm2835_defconfig   clang
arm                                 defconfig   gcc  
arm                         orion5x_defconfig   clang
arm                          pxa168_defconfig   clang
arm                   randconfig-001-20231005   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231005   gcc  
i386         buildonly-randconfig-002-20231005   gcc  
i386         buildonly-randconfig-003-20231005   gcc  
i386         buildonly-randconfig-004-20231005   gcc  
i386         buildonly-randconfig-005-20231005   gcc  
i386         buildonly-randconfig-006-20231005   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231005   gcc  
i386                  randconfig-002-20231005   gcc  
i386                  randconfig-003-20231005   gcc  
i386                  randconfig-004-20231005   gcc  
i386                  randconfig-005-20231005   gcc  
i386                  randconfig-006-20231005   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231005   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                  storcenter_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             alldefconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231005   gcc  
x86_64                randconfig-002-20231005   gcc  
x86_64                randconfig-003-20231005   gcc  
x86_64                randconfig-004-20231005   gcc  
x86_64                randconfig-005-20231005   gcc  
x86_64                randconfig-006-20231005   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
