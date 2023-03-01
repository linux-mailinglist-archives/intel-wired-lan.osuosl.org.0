Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8096A674F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Mar 2023 06:24:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 477AD40528;
	Wed,  1 Mar 2023 05:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 477AD40528
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677648257;
	bh=26mXn7Ntp2u7mOjWn/LkTZ99hYB9h0XLr88iL4KOWFw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zmVml7S87XUnLKX1ak4YaySi7kqJ1/HutjkaP6Pz0IwhDIJIS4CauWyJnuqjm1Bjv
	 w7+mu4K0E5PB8y9YDqbwC/YVWwX9lDY7kGyBlWn4CEmFIIc7iawJNutlT9TBAqqiXD
	 IPulygHHFD5dVNkWDldAQS3CvJqXjcR8t5Sdii5bX3uKQhnrS7hZxXZ4/99ajHYlYF
	 X5tNQbjNkDdC5udDfUuwG6ZLM6QE/+gup1g3eQkW1bRj+Jnutsj+yvLQC7UgDXmqFu
	 sej5k16mwFVHIsaaw7bOoTmYi5dMep4jR7LCtA5N9oEwuTHMMLCd5o+mXSac14jNfI
	 NlYdKQshgD2OA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zH4K_7Rky7Aa; Wed,  1 Mar 2023 05:24:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07C6940463;
	Wed,  1 Mar 2023 05:24:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07C6940463
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9268B1BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 05:24:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F32240463
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 05:24:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F32240463
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3fv69WKBxtnh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Mar 2023 05:24:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10F74402F6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10F74402F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 05:24:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="420585329"
X-IronPort-AV: E=Sophos;i="5.98,223,1673942400"; d="scan'208";a="420585329"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 21:24:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="706836061"
X-IronPort-AV: E=Sophos;i="5.98,223,1673942400"; d="scan'208";a="706836061"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 28 Feb 2023 21:24:06 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pXEwf-0005v1-2Z;
 Wed, 01 Mar 2023 05:24:05 +0000
Date: Wed, 01 Mar 2023 13:23:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63fee14b.WBfPJdfqYwRs6AUJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677648249; x=1709184249;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=K734JPcjJcc/86ntGsWRGz8M4tDMhUZmwFXWoNlXs1Q=;
 b=k67EmgHiJTTji/run5YNYmQCigY13APeiBH9mweonHkDAB9WwYuNA0j7
 ABW1mG+1ehcdoeP+cL+sDt+Py706UdHr1wegjQ9MyFxMBylFQmek1ue9R
 EdBakmusLorzUCpsQjl5TQpL3dXxu5U8spVI+1ig0n3ZCK4v+illBGuC/
 wg2FoZKjoLqwi7zC7gWBnDSQEK5AVGwH30JgyXdfVBn0IkCGI3hXdF7ae
 mqNz9e52SJiiEARXcOnOM9IuSxDycIeEORTy3hliynG3rLisEWgzgIj9x
 ZX5EtiWNCurZG2t3N459gWV0AblRPQX4HuLe5LvHzuCOjX3hKQ68ud4Ig
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k67EmgHi
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 dd6ea984faa83c1f8f6e8ee5503df60bdd1b3f41
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
branch HEAD: dd6ea984faa83c1f8f6e8ee5503df60bdd1b3f41  ice: avoid bonding causing auxiliary plug/unplug under RTNL lock

elapsed time: 722m

configs tested: 148
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230226   gcc  
alpha        buildonly-randconfig-r001-20230227   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230226   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r021-20230226   gcc  
arc                  randconfig-r043-20230226   gcc  
arc                  randconfig-r043-20230227   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230226   gcc  
arm          buildonly-randconfig-r005-20230227   clang
arm          buildonly-randconfig-r006-20230226   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230227   gcc  
arm                  randconfig-r036-20230226   clang
arm                  randconfig-r046-20230226   gcc  
arm                  randconfig-r046-20230227   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230226   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230226   gcc  
arm64                randconfig-r006-20230227   clang
arm64                randconfig-r032-20230227   clang
csky         buildonly-randconfig-r001-20230226   gcc  
csky         buildonly-randconfig-r002-20230226   gcc  
csky         buildonly-randconfig-r003-20230226   gcc  
csky         buildonly-randconfig-r004-20230227   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r005-20230226   gcc  
csky                 randconfig-r011-20230227   gcc  
csky                 randconfig-r033-20230227   gcc  
hexagon      buildonly-randconfig-r006-20230227   clang
hexagon              randconfig-r013-20230226   clang
hexagon              randconfig-r015-20230226   clang
hexagon              randconfig-r022-20230226   clang
hexagon              randconfig-r041-20230226   clang
hexagon              randconfig-r041-20230227   clang
hexagon              randconfig-r045-20230226   clang
hexagon              randconfig-r045-20230227   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r005-20230227   clang
i386         buildonly-randconfig-r006-20230227   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230227   gcc  
i386                 randconfig-a012-20230227   gcc  
i386                 randconfig-a013-20230227   gcc  
i386                 randconfig-a014-20230227   gcc  
i386                 randconfig-a015-20230227   gcc  
i386                 randconfig-a016-20230227   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r002-20230227   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r035-20230226   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230226   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r011-20230226   gcc  
loongarch            randconfig-r034-20230227   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r013-20230227   gcc  
m68k                 randconfig-r016-20230227   gcc  
microblaze   buildonly-randconfig-r003-20230226   gcc  
microblaze   buildonly-randconfig-r005-20230227   gcc  
microblaze   buildonly-randconfig-r006-20230226   gcc  
microblaze           randconfig-r001-20230226   gcc  
microblaze           randconfig-r001-20230227   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r014-20230227   clang
nios2        buildonly-randconfig-r003-20230227   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r026-20230226   gcc  
nios2                randconfig-r032-20230226   gcc  
nios2                randconfig-r036-20230227   gcc  
openrisc             randconfig-r003-20230226   gcc  
parisc       buildonly-randconfig-r002-20230227   gcc  
parisc       buildonly-randconfig-r004-20230227   gcc  
parisc       buildonly-randconfig-r006-20230226   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230227   gcc  
parisc               randconfig-r004-20230226   gcc  
parisc               randconfig-r015-20230227   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230227   gcc  
powerpc              randconfig-r023-20230226   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230227   clang
riscv                randconfig-r006-20230226   gcc  
riscv                randconfig-r033-20230226   gcc  
riscv                randconfig-r042-20230226   clang
riscv                randconfig-r042-20230227   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230227   clang
s390                 randconfig-r044-20230226   clang
s390                 randconfig-r044-20230227   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230227   gcc  
sh                   randconfig-r012-20230226   gcc  
sh                   randconfig-r031-20230226   gcc  
sh                   randconfig-r031-20230227   gcc  
sparc        buildonly-randconfig-r001-20230227   gcc  
sparc        buildonly-randconfig-r002-20230226   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r016-20230226   gcc  
sparc                randconfig-r025-20230226   gcc  
sparc                randconfig-r035-20230227   gcc  
sparc64      buildonly-randconfig-r004-20230226   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r003-20230227   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230227   clang
x86_64               randconfig-a002-20230227   clang
x86_64               randconfig-a003-20230227   clang
x86_64               randconfig-a004-20230227   clang
x86_64               randconfig-a005-20230227   clang
x86_64               randconfig-a006-20230227   clang
x86_64               randconfig-a011-20230227   gcc  
x86_64               randconfig-a012-20230227   gcc  
x86_64               randconfig-a013-20230227   gcc  
x86_64               randconfig-a014-20230227   gcc  
x86_64               randconfig-a015-20230227   gcc  
x86_64               randconfig-a016-20230227   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230227   gcc  
xtensa       buildonly-randconfig-r005-20230226   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
