Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 290AE6A52DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 07:19:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92853610E5;
	Tue, 28 Feb 2023 06:19:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92853610E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677565172;
	bh=IcknZnrzRRLjuOr7h8EBLuxKg1J1GMYBslW9vuX8vBs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s0VvDD3KDERNWBREqWq7/cHlTDbKd2sktWbAt/VkbsoZ1C819RElkKTbALaK37adJ
	 J2OPD3y3aO0cQGl3FnAP6Byk0k9xn9jzaSQnsjKW+TRC7PHTySWrg7mK7yCaTAzN5x
	 h563Bq9WqQJte7bVMuN2P2R5Xv0dphjVVhsI+bV5DZLI8xwIs6q5g9Hz5WbhJSLG32
	 8OOOVrACmSFqN7hHWvuHw/9EUuT2aSpSF0Cg2ENUUst9iJ0QQxQlwLI+pb51buZIvh
	 isHmHgBeBJFFDLVAoZ/g/+nbfFD2HIiYx3AryeC4RR4alcCuQnXEfGWbMdOsZFBJHu
	 RTu6sVNjYtMGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kcb9cm-U_aJX; Tue, 28 Feb 2023 06:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64FBC610D2;
	Tue, 28 Feb 2023 06:19:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64FBC610D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D87E81BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 06:19:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFEE8610D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 06:19:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFEE8610D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tJWKcKDYkay2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 06:19:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A310B610A5
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A310B610A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 06:19:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="396622896"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="396622896"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 22:19:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="763051615"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="763051615"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2023 22:19:20 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pWtKa-000592-0n;
 Tue, 28 Feb 2023 06:19:20 +0000
Date: Tue, 28 Feb 2023 14:18:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63fd9cc4.C/Prq32Wr4vKBylk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677565163; x=1709101163;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=7NAPdqUJDTRYsSMAGFJZgSH3ih3KZ6tBKbBDqlfSB20=;
 b=TqPUFG0gBj4mF+87WnUoQG38xOIL+iFWx+syHh2sSrDl051ufkFSItNM
 DxIBxsp79ypIWyKBbWeDfkYxHXRDVWtNkBT2IGuCSZvYGqv4ovnF7ZezL
 dXs2mTK4AK/t1gbyxZsEXUuwe0056RYN5exKAEQSIu4UgExrJCBmwTuay
 Xs50UYkvp9yhhWX2uYA57XIRCiMjTZL7uzP/O7uJQGPn3gc1y4vE/YvBB
 arV+jZx9KB8KJY+ZBAD8YbFkJoxlDZpkixvcHgfGXDS6xQPVc9/dwcG23
 6AeKhL2icCqZdQtGnwrWhAnaElVkC34Rus9IlAtlSgR1ZqkL4xavHfzXn
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TqPUFG0g
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f75ed9add58c1bca6a615609a0f7f148c257e3c7
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
branch HEAD: f75ed9add58c1bca6a615609a0f7f148c257e3c7  ice: avoid bonding causing auxiliary plug/unplug under RTNL lock

elapsed time: 727m

configs tested: 125
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r004-20230227   gcc  
alpha        buildonly-randconfig-r006-20230227   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r023-20230227   gcc  
arc                  randconfig-r043-20230228   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r025-20230226   gcc  
arm                  randconfig-r046-20230228   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r021-20230227   gcc  
arm64                randconfig-r031-20230227   clang
csky                                defconfig   gcc  
csky                 randconfig-r011-20230227   gcc  
csky                 randconfig-r036-20230226   gcc  
hexagon      buildonly-randconfig-r006-20230226   clang
hexagon              randconfig-r013-20230226   clang
hexagon              randconfig-r015-20230226   clang
hexagon              randconfig-r022-20230226   clang
hexagon              randconfig-r041-20230228   clang
hexagon              randconfig-r045-20230228   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r002-20230227   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230227   clang
i386                 randconfig-a002-20230227   clang
i386                 randconfig-a003-20230227   clang
i386                 randconfig-a004-20230227   clang
i386                 randconfig-a005-20230227   clang
i386                 randconfig-a006-20230227   clang
i386                 randconfig-a011-20230227   gcc  
i386                 randconfig-a012-20230227   gcc  
i386                 randconfig-a013-20230227   gcc  
i386                 randconfig-a014-20230227   gcc  
i386                 randconfig-a015-20230227   gcc  
i386                 randconfig-a016-20230227   gcc  
i386                 randconfig-r024-20230227   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230227   gcc  
ia64                 randconfig-r005-20230226   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230226   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r011-20230226   gcc  
loongarch            randconfig-r031-20230226   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r005-20230226   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230227   gcc  
m68k                 randconfig-r005-20230227   gcc  
m68k                 randconfig-r013-20230227   gcc  
m68k                 randconfig-r016-20230227   gcc  
m68k                 randconfig-r025-20230227   gcc  
microblaze           randconfig-r003-20230226   gcc  
microblaze           randconfig-r006-20230227   gcc  
microblaze           randconfig-r035-20230226   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230226   clang
mips                 randconfig-r014-20230227   clang
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230226   gcc  
openrisc     buildonly-randconfig-r003-20230226   gcc  
openrisc             randconfig-r021-20230226   gcc  
parisc       buildonly-randconfig-r003-20230227   gcc  
parisc       buildonly-randconfig-r004-20230226   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230227   gcc  
parisc               randconfig-r034-20230226   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r001-20230226   gcc  
powerpc              randconfig-r022-20230227   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r006-20230226   gcc  
riscv                randconfig-r026-20230226   clang
riscv                randconfig-r034-20230227   clang
riscv                randconfig-r036-20230227   clang
riscv                randconfig-r042-20230228   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230227   clang
s390                 randconfig-r044-20230228   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r012-20230226   gcc  
sh                   randconfig-r032-20230227   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r016-20230226   gcc  
sparc64              randconfig-r004-20230227   gcc  
sparc64              randconfig-r033-20230227   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
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
x86_64               randconfig-r026-20230227   gcc  
x86_64               randconfig-r035-20230227   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r033-20230226   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
