Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 553F36CD5C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 11:02:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B531441DD9;
	Wed, 29 Mar 2023 09:02:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B531441DD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680080522;
	bh=o6o6vP1Fj6PPaIvpal1TeX6As8xMtU4alf3M4iZDzU4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fb6vCjlvXWl6lc9RznCSNn6OI/0vFaxSqsCns+g4eedwDLoTpouq2UXxBURPQcU/Y
	 WtGIQaXiGIW7hC4y3PzQzrw/7XgRdHh9Od3E8LFlHZORQ1uXPEhL2hL4XoKS12OXPg
	 xrjfNsZMq1jDaeK8y8E8OtdSc3Blu2F/vwWw0q0s1mrd4PO1GnyxOLh5Ry9e43j8ot
	 L0RCRYvCu+AUP9DgbyLrhghblNjdn32wvWhLZ3ASKvSXakih5//KiypbWdlxWoydc7
	 hic7LNOvHaV2ORQIUCeX1ororxKxgmWfodNBFAh8bYlF3wA4fnBHOpekQxaB2ksMwT
	 WDejDXrHLlbOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JbdEq3ZNZkz3; Wed, 29 Mar 2023 09:02:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44A974171F;
	Wed, 29 Mar 2023 09:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44A974171F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 988531BF59E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 09:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E6214171F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 09:01:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E6214171F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xBlP6miLfR20 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 09:01:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E47BB416B9
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E47BB416B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 09:01:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="338323895"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="338323895"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 02:01:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="1013941155"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="1013941155"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 29 Mar 2023 02:01:44 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1phRge-000JOA-0C;
 Wed, 29 Mar 2023 09:01:44 +0000
Date: Wed, 29 Mar 2023 17:01:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6423fe61.dWwIuJsUJvE6pCVN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680080514; x=1711616514;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=w1sv/v8nulD6skLWaDleKqenvevrSuOlUKEY67zmdJs=;
 b=Yt+HySjL6Oh8Tdc5URLrljs/qx/tIfSRDC44ICsDbdYGu9jtHHXaNsfi
 Z7CiWRYtXWLMn4AqhJJ+IeWJoIb0SZEz2Kzj3qjKTM2c3YXp05LrOJDXK
 ODdSwgzeHF+ZkrUwAm2ivRRsNfjd1uF0fHzwGhbAWeIqT5pa2WtUKIo/o
 aPDX/AevoceYc/X2kq1LmC5EYy2vzrNMFLmgCwaR1DzX9cBxvlIKoLaqa
 ozLMbbJPh39vWOaPUqb8nCcucTvqetH1+CviLcX7cfsBApPFnj3mK0rgA
 QzkTAMyIiuZcbn9a87NuDIynRAuCG8xA5R9dtGe9fP+1FYq1mzLQVkyel
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yt+HySjL
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 20d15e09bcfad9cc553c8cbc6a04c01bd875ad2f
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
branch HEAD: 20d15e09bcfad9cc553c8cbc6a04c01bd875ad2f  iavf: remove active_cvlans and active_svlans bitmaps

elapsed time: 729m

configs tested: 119
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230327   gcc  
alpha                randconfig-r021-20230327   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230327   gcc  
arc                  randconfig-r022-20230326   gcc  
arc                  randconfig-r034-20230327   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r031-20230327   clang
arm                  randconfig-r046-20230326   clang
arm                  randconfig-r046-20230327   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r026-20230327   clang
csky                                defconfig   gcc  
csky                 randconfig-r005-20230326   gcc  
csky                 randconfig-r012-20230326   gcc  
csky                 randconfig-r016-20230326   gcc  
csky                 randconfig-r026-20230326   gcc  
csky                 randconfig-r034-20230326   gcc  
hexagon              randconfig-r021-20230326   clang
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
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r015-20230326   gcc  
loongarch            randconfig-r023-20230327   gcc  
loongarch            randconfig-r032-20230326   gcc  
loongarch            randconfig-r033-20230327   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r031-20230326   gcc  
m68k                 randconfig-r031-20230328   gcc  
microblaze           randconfig-r006-20230326   gcc  
microblaze           randconfig-r006-20230327   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r003-20230326   gcc  
mips                 randconfig-r022-20230327   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230327   gcc  
nios2                randconfig-r023-20230326   gcc  
nios2                randconfig-r036-20230328   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r024-20230326   gcc  
parisc               randconfig-r024-20230327   gcc  
parisc               randconfig-r035-20230328   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r002-20230326   clang
powerpc              randconfig-r036-20230327   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230326   clang
riscv                randconfig-r013-20230326   gcc  
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r011-20230326   gcc  
sh                   randconfig-r033-20230328   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r002-20230327   gcc  
sparc64              randconfig-r025-20230326   gcc  
sparc64              randconfig-r034-20230328   gcc  
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
x86_64               randconfig-r025-20230327   clang
x86_64               randconfig-r035-20230327   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
