Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD867B6032
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 07:05:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3515A40C21;
	Tue,  3 Oct 2023 05:05:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3515A40C21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696309531;
	bh=UQ2YG3Mc75DpvL+ElpiW4a6yyOq3pNMNkaToaaqm53o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JW+u9c89Y61YvCYwcBQ0hLxuV4OxfJJjnU9+AJv9YqwmwJj2W7LCn5YC1p1d22BrL
	 8tIM7OvWjB+x/oiqgprXooEBSIbNQUpV9gr9PCqjcgGeNO9YVdLJpECverJPvMUXXn
	 IDdM4KxdsCZuJxCtEPjwnyW/aRSxEzgXUTC673D9iYsl34caf1LRdbEYmCdvRveSSi
	 VX2J6rHagTWEkB2EI51UaoZlC1oROYPbz8+ObRI8orTLAlX2jTdUlzXgHVkFGzSMOo
	 EOIUXZSlwCWVCxSXydeuJYt+rELGmjgSX3hI9gDmVmuC42hKrmdwP3KFbi5l78Xbqo
	 EPN+f06VUzZbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r1Pjd30_PX-z; Tue,  3 Oct 2023 05:05:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79509405D7;
	Tue,  3 Oct 2023 05:05:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79509405D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A7D381BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 05:05:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E2446101E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 05:05:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E2446101E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DWDJ0ak5XBJm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 05:05:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F047E60B7C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 05:05:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F047E60B7C
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="413713060"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="413713060"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 22:05:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="785974174"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="785974174"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 02 Oct 2023 22:05:20 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qnXaw-0006n9-1m
 for intel-wired-lan@lists.osuosl.org; Tue, 03 Oct 2023 05:05:18 +0000
Date: Tue, 03 Oct 2023 13:04:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202310031337.pWKc3c3m-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696309522; x=1727845522;
 h=date:from:to:subject:message-id;
 bh=gzlBAvRXwz+Tpqu34JLmbnvt4XFgwE5225z2JZf9JhY=;
 b=TGDAEzBKnFYVceemPUYJRyiodPlyjrVNnky9xrr0KVinbZ/mr/DfG/70
 Khii2z4ks++zps90CXkzWux5n7aIOoLFQ3LUqvm/26wijtwOGjG2BfZGl
 3nXonZNmX6cZkLy5B70ramUwADjDEqAt64Hx4D8xclSSBapf+faiLH1aL
 aTd/o2vS/uk4tTvW5xqh82R97h2dcqdcyttQCT1Iddte9c8ZoBnrL4g4r
 YVNX4Adtq3DUa5JWb/to2zZt3a20UxOEtPwZoclsB6IYi6k6e8wxkIs1X
 5rqad8DLmsWB9BgCB4kuCBBZT5V0THTKAyJFMQueXDNONDDrpHyXqx+vF
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TGDAEzBK
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 9e8622c29420f8067533e6d2c83c898da168103d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 9e8622c29420f8067533e6d2c83c898da168103d  ice: block default rule setting on LAG interface

elapsed time: 737m

configs tested: 107
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
arc                   randconfig-001-20231003   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20231003   gcc  
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
i386         buildonly-randconfig-001-20231003   gcc  
i386         buildonly-randconfig-002-20231003   gcc  
i386         buildonly-randconfig-003-20231003   gcc  
i386         buildonly-randconfig-004-20231003   gcc  
i386         buildonly-randconfig-005-20231003   gcc  
i386         buildonly-randconfig-006-20231003   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231003   gcc  
i386                  randconfig-002-20231003   gcc  
i386                  randconfig-003-20231003   gcc  
i386                  randconfig-004-20231003   gcc  
i386                  randconfig-005-20231003   gcc  
i386                  randconfig-006-20231003   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231003   gcc  
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
riscv                          rv32_defconfig   gcc  
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
x86_64                randconfig-001-20231003   gcc  
x86_64                randconfig-002-20231003   gcc  
x86_64                randconfig-003-20231003   gcc  
x86_64                randconfig-004-20231003   gcc  
x86_64                randconfig-005-20231003   gcc  
x86_64                randconfig-006-20231003   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
