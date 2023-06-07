Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F65072540B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 08:24:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2E7B41863;
	Wed,  7 Jun 2023 06:24:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2E7B41863
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686119040;
	bh=TDuA0JB8tySZV7GSfWQ0lfRykg9ywVf3N8DW3fg2BY8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oPgwNne7DwunOuQ64HaKl/DVGuKkfUXfiI+OaTny5O/klyLSZEoPoQDCLTaQNrMfZ
	 POUlE5zGSR7HkAzwXjoAAPjgyp9vu72yzJFwF0YrMOsy0IFhRPk1tpW9AQS9fvlpYh
	 g42JxjJu76H+c9m8C0ALiXXRO8Pu5bWsqWBgZ8pIjlvqUn/ZFW69U9SbhYHaIWZboQ
	 vlAFJaXLIjMbNlah62TEeoOwgWbemAPl/V6y6m4R+xJWqTJSN9xLu6VeXK+XGUCFZh
	 mSpTX+sVPBJlG0HPSjSapCaobEeZvN3tAzWTeJmkCCKurcUlyo26vKcKphXNTPTEu5
	 rfHR6SgB7/crw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DgS2qyweYuiD; Wed,  7 Jun 2023 06:23:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17B004091B;
	Wed,  7 Jun 2023 06:23:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17B004091B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EFE91BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 177D2408B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:23:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 177D2408B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OaPOJlYxCKOG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 06:23:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B625140925
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B625140925
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:23:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="360223830"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="360223830"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 23:23:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="659815036"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="659815036"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 06 Jun 2023 23:23:43 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q6ma6-0006FH-2D
 for intel-wired-lan@lists.osuosl.org; Wed, 07 Jun 2023 06:23:42 +0000
Date: Wed, 07 Jun 2023 14:23:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230607062327.pzaAn%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686119024; x=1717655024;
 h=date:from:to:subject:message-id;
 bh=27t+Dd5KUtG0yS+opIN+1HQoafQalJSCkdNCzCrNdCY=;
 b=QYPvPA+s0zVnNilRX/d7DERWoLCq8G8zydghb3dEajy7kyo1eZb9wKfj
 2IRwkymloy6J3CaOmLQvVe87SowkTNnvoh2Dq4r9IvKjx9A9uEr6YlloA
 dEQpvaBsmD1171EWmKWhyc5h9lXc1Qd06hez+jIARzdmDx9BKcbMOy08y
 E/wiCjBvUicyE6QQ6pi504a1A1C2dZ9kSFlOLhewIBcHq5DER8E/WqDpb
 uWLi9CiA3zPXPZwVwCwDd0rFxU+x173UPh6UCNjV/LnS9DGg5jyf9JXcN
 txSevhItu9H6rb+FmJQ/D4E4WJlFSrt/0ZxWxFec9YaoSpdGFxtvYr8Yr
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QYPvPA+s
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3081eb54f7f1d235f7ae486fe726f7e684ffe785
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
branch HEAD: 3081eb54f7f1d235f7ae486fe726f7e684ffe785  net/e1000: Fix extern warnings

elapsed time: 723m

configs tested: 123
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r012-20230606   gcc  
arc                  randconfig-r016-20230606   gcc  
arc                  randconfig-r022-20230606   gcc  
arc                  randconfig-r025-20230606   gcc  
arc                  randconfig-r043-20230606   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230606   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230606   gcc  
arm64        buildonly-randconfig-r002-20230606   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230606   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r033-20230606   gcc  
csky                 randconfig-r035-20230606   gcc  
hexagon              randconfig-r011-20230606   clang
hexagon              randconfig-r041-20230606   clang
hexagon              randconfig-r045-20230606   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r003-20230606   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230606   gcc  
i386                 randconfig-i002-20230606   gcc  
i386                 randconfig-i003-20230606   gcc  
i386                 randconfig-i004-20230606   gcc  
i386                 randconfig-i005-20230606   gcc  
i386                 randconfig-i006-20230606   gcc  
i386                 randconfig-i011-20230606   clang
i386                 randconfig-i012-20230606   clang
i386                 randconfig-i013-20230606   clang
i386                 randconfig-i014-20230606   clang
i386                 randconfig-i015-20230606   clang
i386                 randconfig-i016-20230606   clang
i386                 randconfig-i051-20230606   gcc  
i386                 randconfig-i052-20230606   gcc  
i386                 randconfig-i053-20230606   gcc  
i386                 randconfig-i054-20230606   gcc  
i386                 randconfig-i055-20230606   gcc  
i386                 randconfig-i056-20230606   gcc  
i386                 randconfig-i061-20230606   gcc  
i386                 randconfig-i062-20230606   gcc  
i386                 randconfig-i063-20230606   gcc  
i386                 randconfig-i064-20230606   gcc  
i386                 randconfig-i065-20230606   gcc  
i386                 randconfig-i066-20230606   gcc  
i386                 randconfig-r013-20230606   clang
i386                 randconfig-r024-20230606   clang
i386                 randconfig-r036-20230606   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r026-20230606   gcc  
microblaze           randconfig-r015-20230606   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r023-20230606   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230606   gcc  
nios2                randconfig-r034-20230606   gcc  
openrisc             randconfig-r021-20230606   gcc  
parisc       buildonly-randconfig-r004-20230606   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r006-20230606   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r005-20230606   clang
riscv                               defconfig   gcc  
riscv                randconfig-r032-20230606   gcc  
riscv                randconfig-r042-20230606   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r002-20230606   gcc  
s390                 randconfig-r044-20230606   clang
sh                               allmodconfig   gcc  
sparc        buildonly-randconfig-r006-20230606   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230606   gcc  
sparc64              randconfig-r001-20230606   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230606   gcc  
x86_64               randconfig-a002-20230606   gcc  
x86_64               randconfig-a003-20230606   gcc  
x86_64               randconfig-a004-20230606   gcc  
x86_64               randconfig-a005-20230606   gcc  
x86_64               randconfig-a006-20230606   gcc  
x86_64               randconfig-a011-20230606   clang
x86_64               randconfig-a012-20230606   clang
x86_64               randconfig-a013-20230606   clang
x86_64               randconfig-a014-20230606   clang
x86_64               randconfig-a015-20230606   clang
x86_64               randconfig-a016-20230606   clang
x86_64               randconfig-r004-20230606   gcc  
x86_64               randconfig-x051-20230606   clang
x86_64               randconfig-x052-20230606   clang
x86_64               randconfig-x053-20230606   clang
x86_64               randconfig-x054-20230606   clang
x86_64               randconfig-x055-20230606   clang
x86_64               randconfig-x056-20230606   clang
x86_64               randconfig-x061-20230606   clang
x86_64               randconfig-x062-20230606   clang
x86_64               randconfig-x063-20230606   clang
x86_64               randconfig-x064-20230606   clang
x86_64               randconfig-x065-20230606   clang
x86_64               randconfig-x066-20230606   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
