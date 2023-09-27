Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A67D27B0E25
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 23:35:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C27D841A55;
	Wed, 27 Sep 2023 21:35:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C27D841A55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695850553;
	bh=65xwnayG9iAADKZIHdZ+nffCjuf8JgikcHDkWzNKQrI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s2l4PJClxDq5ZggEP38abMXRN4FSsSQddtINiGJpfS6vPT84ra2aZsQDoUnCn5Tyx
	 BorZN3ajGvdi+2ynDJ5FRWfhG+2VcWmq6E1rLJF3y9ugOPX0LYrXeKyO8R+QCLYq4c
	 WO6cJDP0V7VZtmsYUCHkco4saWw5hvChKc2kGRbo8rSZ7or929NzQCCGfebhxFHyvR
	 rW6ktHGvQw2qWxYgW6TggmY1LEEBVxFRjFv/Kkp5qi2lQoRgaxK4n+aJz6NZiGC6nW
	 ChsG80VWkMVdSgOdCDUAqT/l79QAUalvS9mdoHBxTohtXX1QlKkTXdOwZHLvzIDsAz
	 0BSsZXB7mM3Rw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 768irqdMGlHj; Wed, 27 Sep 2023 21:35:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 973D540AAE;
	Wed, 27 Sep 2023 21:35:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 973D540AAE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 485541BF30B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 21:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2CC2A40AAE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 21:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CC2A40AAE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hQhy09W0uyDC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 21:35:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D8324053E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 21:35:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D8324053E
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="412840327"
X-IronPort-AV: E=Sophos;i="6.03,182,1694761200"; d="scan'208";a="412840327"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 14:35:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="892756853"
X-IronPort-AV: E=Sophos;i="6.03,182,1694761200"; d="scan'208";a="892756853"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 27 Sep 2023 14:34:35 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qlcC3-0000gr-2c
 for intel-wired-lan@lists.osuosl.org; Wed, 27 Sep 2023 21:35:40 +0000
Date: Thu, 28 Sep 2023 05:34:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309280549.kc83m7zZ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695850546; x=1727386546;
 h=date:from:to:subject:message-id;
 bh=qoI07O6BRP3KiVpO5/UaA/Ok/T6WsMG22cTlNkMNdkI=;
 b=JVIyto1IbPC6uLr2njjDowsdPa69PvCb2/izNQgXdohPUSrgVpd/3g/j
 NHXmatGdaUYHN+W8qBjBN2fthX6x50kvaMltFRvD2WwCHWbjhh+IEbp/h
 8/GTeIGtZDtUN/B5dLAnQjXwuzCWJiGRy2buMwTystwwPfvf0XVdfhUCP
 vogP7HxptDQCqbqPaOu2HTa2GqfdEv/jSlN8dFW5xsDdKMZkkc2laKE9/
 bdJ3BCQqduEhagzhpfyWdUa7wchomHdOrMW0HiiPcVo0bqyW1FB9Fv9fk
 z6cfoDopEVXEmkPo/jfGcNGIce19JzXaRTWSTjR+ICJ7ecGqg1+oOIoDx
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JVIyto1I
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 85b90747fa80e6b5daae9fc82240dbfff869ef1e
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
branch HEAD: 85b90747fa80e6b5daae9fc82240dbfff869ef1e  iavf: Avoid a memory allocation in iavf_print_link_message()

elapsed time: 1494m

configs tested: 131
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
arc                   randconfig-001-20230927   gcc  
arc                   randconfig-001-20230928   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230927   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230927   gcc  
i386         buildonly-randconfig-002-20230927   gcc  
i386         buildonly-randconfig-003-20230927   gcc  
i386         buildonly-randconfig-004-20230927   gcc  
i386         buildonly-randconfig-005-20230927   gcc  
i386         buildonly-randconfig-006-20230927   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230927   gcc  
i386                  randconfig-002-20230927   gcc  
i386                  randconfig-003-20230927   gcc  
i386                  randconfig-004-20230927   gcc  
i386                  randconfig-005-20230927   gcc  
i386                  randconfig-006-20230927   gcc  
i386                  randconfig-011-20230928   gcc  
i386                  randconfig-012-20230928   gcc  
i386                  randconfig-013-20230928   gcc  
i386                  randconfig-014-20230928   gcc  
i386                  randconfig-015-20230928   gcc  
i386                  randconfig-016-20230928   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230927   gcc  
loongarch             randconfig-001-20230928   gcc  
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
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230927   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230927   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230927   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64       buildonly-randconfig-001-20230927   gcc  
x86_64       buildonly-randconfig-002-20230927   gcc  
x86_64       buildonly-randconfig-003-20230927   gcc  
x86_64       buildonly-randconfig-004-20230927   gcc  
x86_64       buildonly-randconfig-005-20230927   gcc  
x86_64       buildonly-randconfig-006-20230927   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230928   gcc  
x86_64                randconfig-002-20230928   gcc  
x86_64                randconfig-003-20230928   gcc  
x86_64                randconfig-004-20230928   gcc  
x86_64                randconfig-005-20230928   gcc  
x86_64                randconfig-006-20230927   gcc  
x86_64                randconfig-006-20230928   gcc  
x86_64                randconfig-011-20230927   gcc  
x86_64                randconfig-012-20230927   gcc  
x86_64                randconfig-013-20230927   gcc  
x86_64                randconfig-014-20230927   gcc  
x86_64                randconfig-015-20230927   gcc  
x86_64                randconfig-016-20230927   gcc  
x86_64                randconfig-071-20230928   gcc  
x86_64                randconfig-072-20230928   gcc  
x86_64                randconfig-073-20230928   gcc  
x86_64                randconfig-074-20230928   gcc  
x86_64                randconfig-075-20230928   gcc  
x86_64                randconfig-076-20230928   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
