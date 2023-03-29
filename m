Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D88B86CD52F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 10:50:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63DEF41DDF;
	Wed, 29 Mar 2023 08:50:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63DEF41DDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680079853;
	bh=y/hPrIHKPSpXYTwvh3vdozC0tAw0xIgYfuf2rBL3Vbk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cJ0OqNTYyCTMS693gAGv69puOxWHhjBAQwsBWu0gDAGQ0gKmtk8IsC9oimoOZFm0X
	 0KUlQv1Hr4jFCo3ZK+hV/vhtskra6kH7mUgRqzRp9yYPOCutS3ep49KbWhlLhnYQBB
	 /pI6vL4NIj3wMLFMUZ056GDDpwNp0teu55VE6mB9/n7BLq9IuXtkAdJlyKz5Zb7unk
	 osk4xSW1kwhwrw4dq3/0Cx9Bfvo34eRC48+odjG2RjWQT8/seDLz6uK/McuPnTXDFy
	 VBh/ezC8TT7K3y6yTa772Vkv42gqJ7BSY3bb7eB113j2ynNkbSw4otNv2iRfXIOfEl
	 kgR+jeagADdHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZItZdzaiQS9t; Wed, 29 Mar 2023 08:50:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B669141DE0;
	Wed, 29 Mar 2023 08:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B669141DE0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C8AC1BF59E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:50:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21D944031D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:50:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21D944031D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d-VOnodmnmb3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 08:50:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3519400C7
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3519400C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:50:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="324724628"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="324724628"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 01:50:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="827809133"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="827809133"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Mar 2023 01:50:43 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1phRVz-000JNW-0S;
 Wed, 29 Mar 2023 08:50:43 +0000
Date: Wed, 29 Mar 2023 16:50:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6423fbd4./KRnovwAEG6gF6Os%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680079845; x=1711615845;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Pwl0F3sYu0K+lUiTAld/CQe8qdRwelKhuU3f/faEqSg=;
 b=mAf7RH6rND/vuCQKqMqVu6UzpMzderCp5klTBHwBR2GrAdh/v61SGC40
 ApRikZLeM5SKSfHxJh1QvxJ9OuSsICKqDS81mH4+KFJZJWpeQVHWqr+l3
 1mWIJGXcjLor76Xa7HvdcWvawR756gNEg/MUPw2O8F2nzevqqa9gSaHjs
 +zKMKankuLSBppEhOGDtRQmYLi68DZ3AnG24Gmyz1PCaOVFBi453tfZtA
 DoZywqZGthIpQawF21Zyf890of8Hbp7XWBNgkdRLvBPLKPHsI3PRy2eOs
 7q0vhXU/CbC4K0UG/U9b2K4hJHvzZ6nBw+HBbOwIcWffb0w3fIi3s2k5d
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mAf7RH6r
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 562753b5ffff58cc3bd53519c4332bc9d613a307
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
branch HEAD: 562753b5ffff58cc3bd53519c4332bc9d613a307  iavf: remove active_cvlans and active_svlans bitmaps

elapsed time: 720m

configs tested: 123
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r012-20230326   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230327   gcc  
arc                  randconfig-r014-20230327   gcc  
arc                  randconfig-r024-20230326   gcc  
arc                  randconfig-r031-20230326   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                  randconfig-r016-20230327   gcc  
arm                  randconfig-r046-20230326   clang
arm                  randconfig-r046-20230327   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230326   gcc  
hexagon              randconfig-r021-20230326   clang
hexagon              randconfig-r036-20230326   clang
hexagon              randconfig-r041-20230326   clang
hexagon              randconfig-r041-20230327   clang
hexagon              randconfig-r045-20230326   clang
hexagon              randconfig-r045-20230327   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230327   gcc  
i386                 randconfig-a002-20230327   gcc  
i386                 randconfig-a003-20230327   gcc  
i386                 randconfig-a004-20230327   gcc  
i386                 randconfig-a005-20230327   gcc  
i386                 randconfig-a006-20230327   gcc  
i386                 randconfig-a011-20230327   clang
i386                 randconfig-a012-20230327   clang
i386                 randconfig-a013-20230327   clang
i386                 randconfig-a014-20230327   clang
i386                 randconfig-a015-20230327   clang
i386                 randconfig-a016-20230327   clang
i386                 randconfig-r004-20230327   gcc  
i386                 randconfig-r024-20230327   clang
i386                 randconfig-r026-20230327   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r033-20230326   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230327   gcc  
loongarch            randconfig-r004-20230326   gcc  
loongarch            randconfig-r023-20230326   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230326   gcc  
m68k                 randconfig-r036-20230327   gcc  
microblaze           randconfig-r014-20230326   gcc  
microblaze           randconfig-r022-20230326   gcc  
microblaze           randconfig-r034-20230326   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r001-20230326   gcc  
mips                 randconfig-r006-20230326   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r021-20230327   gcc  
nios2                randconfig-r022-20230327   gcc  
nios2                randconfig-r025-20230326   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r012-20230327   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                 linkstation_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc              randconfig-r015-20230326   gcc  
powerpc              randconfig-r031-20230327   gcc  
powerpc              randconfig-r032-20230327   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r011-20230326   gcc  
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230327   gcc  
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r016-20230326   gcc  
sh                   randconfig-r035-20230326   gcc  
sh                          rsk7203_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230327   gcc  
sparc64              randconfig-r023-20230327   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230327   gcc  
x86_64               randconfig-a002-20230327   gcc  
x86_64               randconfig-a003-20230327   gcc  
x86_64               randconfig-a004-20230327   gcc  
x86_64               randconfig-a005-20230327   gcc  
x86_64               randconfig-a006-20230327   gcc  
x86_64               randconfig-a011-20230327   clang
x86_64               randconfig-a012-20230327   clang
x86_64               randconfig-a013-20230327   clang
x86_64               randconfig-a014-20230327   clang
x86_64               randconfig-a015-20230327   clang
x86_64               randconfig-a016-20230327   clang
x86_64               randconfig-r033-20230327   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r015-20230327   gcc  
xtensa               randconfig-r025-20230327   gcc  
xtensa               randconfig-r035-20230327   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
