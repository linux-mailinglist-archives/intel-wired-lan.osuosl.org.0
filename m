Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B56773A01
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 14:03:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA004610EA;
	Tue,  8 Aug 2023 12:03:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA004610EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691496187;
	bh=Z5/xQi25c4ghNkcDb4gqrnjAa88yjwTQWkzVbCM5JEg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oU6vxscjujO9+VYahe7TYC372FI/tro8pM31pMaBAbKnbB1FIXKWjB5Uyi+TqV6ar
	 TnM3s5mczeBw+hgis+IJIr6babaIR+tAmVmxM7ZlLKFWlE5h2/g6l2sq+HEm1wVyrD
	 3gleajtI/F7lXxW9iXBdBjv49/Gq4JLfGb3ndW3KMyFldGUKXf6LY7C8iMoPwwDArY
	 q8xRDFcUlxjPBZQhVvlWHL1dDim5TiKErUDAoA5C9bP99WcjK++pUYxbydX34hEvhJ
	 eNACoDmmbC7wuvJeuQZYFNVzReMEug0q94sNkyCK7fEyoTD2PTi/yXhxqQn9bwez5D
	 y0E73FYvTFNmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y6xGuAFOywFe; Tue,  8 Aug 2023 12:03:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A30F610E1;
	Tue,  8 Aug 2023 12:03:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A30F610E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 057AB1BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 12:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0FDF40B08
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 12:03:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0FDF40B08
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5h57Tit505TM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 12:03:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EFA5940424
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 12:02:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFA5940424
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="373551097"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="373551097"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 05:02:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="855076439"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="855076439"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 08 Aug 2023 05:02:57 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qTLQO-0005KC-1i
 for intel-wired-lan@lists.osuosl.org; Tue, 08 Aug 2023 12:02:56 +0000
Date: Tue, 08 Aug 2023 20:01:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308082057.ZczDeE8j-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691496180; x=1723032180;
 h=date:from:to:subject:message-id;
 bh=UXvuIOVsVrLGwPMMWAfZnO4zt5ocMuKaCc1HKmPGquo=;
 b=kmgKQEUmUlL+YGwGLn4Wf85LTvAxITlRg1J2otaovjvHcVkN869FraTC
 4f8PYRH60xzUJDiT3t1zLPUdizpYac4XAIoNm/WbEcAhTbbIsZkqVl4vj
 7MGQKrHbZZ1FeiBdJ7KizEVLkUe4g9xTLjDkQthaqDN6Mba/itfWbUIHR
 9RTuodZAZem3fkRGnEGo0WM2B3rh5BwUEcO1jfIBfsw85Dq12k/cNtCjl
 ZrQgQmbM2jLfKvXpDOdfaJcY68DhzkMB46/zsWgn0qcoMNj1gAnvqblO8
 pyD5MA8/nIMm+wDSEe+oz4iFp9OajwQqogZlmA44UvOYMuWbvGVoyNkRC
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kmgKQEUm
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 66244337512fbe51a32e7ebc8a5b5c5dc7a5421e
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
branch HEAD: 66244337512fbe51a32e7ebc8a5b5c5dc7a5421e  Merge branch 'page_pool-a-couple-of-assorted-optimizations'

elapsed time: 876m

configs tested: 99
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r014-20230807   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230807   gcc  
arc                  randconfig-r023-20230807   gcc  
arc                  randconfig-r043-20230807   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r024-20230807   gcc  
arm                  randconfig-r046-20230807   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r035-20230807   clang
hexagon              randconfig-r041-20230807   clang
hexagon              randconfig-r045-20230807   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230807   gcc  
i386         buildonly-randconfig-r005-20230807   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230807   gcc  
i386                 randconfig-i002-20230807   gcc  
i386                 randconfig-i003-20230807   gcc  
i386                 randconfig-i004-20230807   gcc  
i386                 randconfig-i005-20230807   gcc  
i386                 randconfig-i011-20230807   clang
i386                 randconfig-i012-20230807   clang
i386                 randconfig-i013-20230807   clang
i386                 randconfig-i014-20230807   clang
i386                 randconfig-i015-20230807   clang
i386                 randconfig-r006-20230807   gcc  
i386                 randconfig-r011-20230807   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230807   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r031-20230807   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r033-20230807   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230807   gcc  
riscv                randconfig-r013-20230807   clang
riscv                randconfig-r042-20230807   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230807   clang
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r012-20230807   gcc  
sparc64              randconfig-r016-20230807   gcc  
sparc64              randconfig-r025-20230807   gcc  
sparc64              randconfig-r032-20230807   gcc  
sparc64              randconfig-r036-20230807   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r021-20230807   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230807   gcc  
x86_64       buildonly-randconfig-r002-20230807   gcc  
x86_64       buildonly-randconfig-r003-20230807   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r015-20230807   clang
x86_64               randconfig-x001-20230807   clang
x86_64               randconfig-x002-20230807   clang
x86_64               randconfig-x003-20230807   clang
x86_64               randconfig-x004-20230807   clang
x86_64               randconfig-x005-20230807   clang
x86_64               randconfig-x011-20230807   gcc  
x86_64               randconfig-x012-20230807   gcc  
x86_64               randconfig-x013-20230807   gcc  
x86_64               randconfig-x014-20230807   gcc  
x86_64               randconfig-x015-20230807   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
