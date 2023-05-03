Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 723ED6F4F98
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 May 2023 06:52:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 05106405B6;
	Wed,  3 May 2023 04:52:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05106405B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683089521;
	bh=vS/Zv5JBDMyZyhNXhuq5KihgLbBJRwvJ+ZND24Kk3P8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=T22ap3rQKktoYc/nT+S1AV6PskIoH/vuSdxvz6CyHbWc8lZYzUPS470Znm2cJfri7
	 AcKPEp5ZvuliRKc7ObIRSRFoFRIhmRGU5ZkqxKxMVgJwNRJmx2DoYlnsmnYNzsGBpB
	 YWy6P7hR1JkhSdlhm8rbfbsxcMnBcb16s3qKwAh2wNyK4CWYneKG6trrfWzFyPrvVY
	 ZemIed2xRQ8V30uFJEBM1mNXCt/W48Qn5m3R5vjhlR+7wqHknHTAzSrg1062/P/o/Z
	 6LPqy5jNtt8ahRdyrLKLxbQ+S9EbPc8FYIcQ7YJfQEY8HMKn4XMBnY/yD5wF6m+TRS
	 TSYYvsy0J8Qig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cda3GHTSvzo5; Wed,  3 May 2023 04:52:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E82E402E7;
	Wed,  3 May 2023 04:51:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E82E402E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DF551BF294
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 04:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3E6060F0E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 04:51:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3E6060F0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fb5CkfQnZAeH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 May 2023 04:51:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB86A60EAB
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BB86A60EAB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 04:51:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="328930659"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="328930659"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 21:51:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="870805102"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="870805102"
Received: from lkp-server01.sh.intel.com (HELO e3434d64424d) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 02 May 2023 21:51:51 -0700
Received: from kbuild by e3434d64424d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pu4T0-0001WS-1M
 for intel-wired-lan@lists.osuosl.org; Wed, 03 May 2023 04:51:50 +0000
Date: Wed, 03 May 2023 12:51:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230503045114.pROz2%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683089512; x=1714625512;
 h=date:from:to:subject:message-id;
 bh=T53MKk2xyUz35IoHxTNcvpE50kUI4B5SAyoS2OCHBC4=;
 b=inKNxSabsiJ6ibVZb8ZQa7DPfLkeel2cvEgtFrSai1cX6tCcbf6YnRYw
 OT84RHiEG1CDL3ACF6Vi07q3cDM5ZJW9UTn8VJY8ZRoBPNJYs5dpxFtGD
 v2mV3YfAbn8HMTKfx0P4BKDXxGtjUlTt8iHPLFcaenSlC04KhtKGLMxRr
 gkqVbgV93ZHx5k8oqBP1McukG2i7GLEBQFwdvE5Fusy1rJORqK1Tp8KGu
 mblMX2yWNhV2Sh3yAudVRykD1wnGIAbmaXYNiljVMoTnqKJ0AA6aO214x
 0rFYpj8/MHvjq1lLUXxlbzYwanVLgQsV0nt1SCcG2I+0edFqKIkf+FE8v
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=inKNxSab
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 cf8d73244f3a7bf78ae4042f4d700da212be3dcc
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
branch HEAD: cf8d73244f3a7bf78ae4042f4d700da212be3dcc  igb: Define igb_pm_ops conditionally on CONFIG_PM

elapsed time: 727m

configs tested: 131
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r025-20230502   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r016-20230502   gcc  
arc                  randconfig-r043-20230430   gcc  
arc                  randconfig-r043-20230501   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r026-20230502   clang
arm                  randconfig-r046-20230430   gcc  
arm                  randconfig-r046-20230501   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230430   gcc  
arm64                randconfig-r013-20230502   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r012-20230502   gcc  
csky                 randconfig-r023-20230502   gcc  
csky                 randconfig-r031-20230430   gcc  
csky                 randconfig-r031-20230501   gcc  
csky                 randconfig-r035-20230430   gcc  
hexagon              randconfig-r041-20230430   clang
hexagon              randconfig-r041-20230501   clang
hexagon              randconfig-r045-20230430   clang
hexagon              randconfig-r045-20230501   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230501   gcc  
i386                 randconfig-a002-20230501   gcc  
i386                 randconfig-a003-20230501   gcc  
i386                 randconfig-a004-20230501   gcc  
i386                 randconfig-a005-20230501   gcc  
i386                 randconfig-a006-20230501   gcc  
i386                 randconfig-a011-20230501   clang
i386                 randconfig-a012-20230501   clang
i386                 randconfig-a013-20230501   clang
i386                 randconfig-a014-20230501   clang
i386                 randconfig-a015-20230501   clang
i386                 randconfig-a016-20230501   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r005-20230501   gcc  
ia64         buildonly-randconfig-r005-20230502   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230430   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r003-20230501   gcc  
loongarch    buildonly-randconfig-r004-20230501   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230430   gcc  
microblaze   buildonly-randconfig-r006-20230430   gcc  
microblaze           randconfig-r001-20230430   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230502   gcc  
mips                 randconfig-r014-20230502   clang
mips                 randconfig-r032-20230430   clang
mips                 randconfig-r034-20230430   clang
nios2        buildonly-randconfig-r004-20230430   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r032-20230501   gcc  
nios2                randconfig-r035-20230501   gcc  
openrisc             randconfig-r003-20230501   gcc  
openrisc             randconfig-r006-20230501   gcc  
openrisc             randconfig-r015-20230502   gcc  
parisc       buildonly-randconfig-r003-20230430   gcc  
parisc       buildonly-randconfig-r006-20230502   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230430   gcc  
parisc               randconfig-r034-20230501   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230430   clang
powerpc      buildonly-randconfig-r005-20230430   clang
powerpc      buildonly-randconfig-r006-20230501   clang
powerpc              randconfig-r001-20230501   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230501   clang
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230430   clang
riscv                randconfig-r042-20230501   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r022-20230502   gcc  
s390                 randconfig-r033-20230430   gcc  
s390                 randconfig-r044-20230430   clang
s390                 randconfig-r044-20230501   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r003-20230502   gcc  
sh                   randconfig-r002-20230501   gcc  
sh                   randconfig-r006-20230430   gcc  
sh                   randconfig-r011-20230502   gcc  
sh                   randconfig-r033-20230501   gcc  
sh                   randconfig-r036-20230430   gcc  
sparc        buildonly-randconfig-r002-20230430   gcc  
sparc        buildonly-randconfig-r004-20230502   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230501   gcc  
sparc64      buildonly-randconfig-r002-20230502   gcc  
sparc64              randconfig-r036-20230501   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230501   gcc  
x86_64               randconfig-a002-20230501   gcc  
x86_64               randconfig-a003-20230501   gcc  
x86_64               randconfig-a004-20230501   gcc  
x86_64               randconfig-a005-20230501   gcc  
x86_64               randconfig-a006-20230501   gcc  
x86_64               randconfig-a011-20230501   clang
x86_64               randconfig-a012-20230501   clang
x86_64               randconfig-a013-20230501   clang
x86_64               randconfig-a014-20230501   clang
x86_64               randconfig-a015-20230501   clang
x86_64               randconfig-a016-20230501   clang
x86_64               randconfig-r004-20230501   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230501   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
