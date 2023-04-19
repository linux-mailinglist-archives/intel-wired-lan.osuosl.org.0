Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482FC6E7458
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 09:50:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD76942990;
	Wed, 19 Apr 2023 07:50:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD76942990
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681890652;
	bh=QBt9QUJtAYLgGDqnxYPV0GKFrUTz+SByBs8vD4gzhso=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gGVZnnKPKvkIVOHKdyQAi+SyidOIRanYd+gcGlwC4Rn/oqCbKMs2XMNukVh3P+irE
	 nD4BemU18+YJzcglUaqpC25NdL9l8a37KHd4Q8Px6anbzcRRXYMRTOs3WTzcElpXzo
	 4GTybNOmzogmACOVPinFRO7u+krFPIbMtyf1iaP7b42H9Dpu2DRQWq+nVErWPLXI5S
	 sV7HhJYjiSQwvNDXRR+7jT6tao/NvM4yE7IxTwlu1L8FqdS1ebHBcsI3v1UNibl+B3
	 nT156VlIqvNBXTpai4mmGLZ8vy4SS3pA9YbM5utxyriHC3XM4sRHhu8Jj3fOtc5ZJy
	 Xomcj+r06GRUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oZmlfZxcPC-R; Wed, 19 Apr 2023 07:50:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EFF941DBB;
	Wed, 19 Apr 2023 07:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EFF941DBB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EAE421BF27A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 07:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD77B41ED4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 07:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD77B41ED4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gI7qO58gmfUP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 07:50:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A390D41EC9
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A390D41EC9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 07:50:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="348134195"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="348134195"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 00:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="865717200"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="865717200"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 19 Apr 2023 00:50:42 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pp2aP-000ehn-33;
 Wed, 19 Apr 2023 07:50:41 +0000
Date: Wed, 19 Apr 2023 15:49:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <643f9d1f.8V/kkvrUQBLGCDYD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681890644; x=1713426644;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ocPnjMHRaAQa8nBO2i3OK/JtEYNmwPORXy65OtA/Qmw=;
 b=HLuIRrqG1OQQ3QO2CD4BKHDzhKLZqMPVbXYPdrjscZ1FB/xzDcNtng34
 v/zdpIq+zDV1DxCUrFOMHozPXozJ1e076BCxg1dkUSI4dsJC2uvqtEyGO
 R+m627dpZLXXXnjqmVLZIF74DBRoxFYACKYdAnDXu/SGdrddL/dVBLBmc
 tH98FB8oPYOS9oV5KzUri06uH+rOMAY0p1tPzmTGazsC+Pv0JZt+11x3A
 nhJOth10Rai2QJf07JNwz6Ew6TqsLY6qiWipO83t2OL3Ao4RkQYMzLSvS
 wNTNXArJ3ZN5Qa4Too5Lsf0klEnOdAWBzrZgpzd0h/lCY4iB8uYkSeVmt
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HLuIRrqG
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 663e7671059b59c1abb2a0b5b2fd2d4299cbd3c6
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
branch HEAD: 663e7671059b59c1abb2a0b5b2fd2d4299cbd3c6  ice: Fix ice VF reset during iavf initialization

elapsed time: 727m

configs tested: 117
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230417   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230416   gcc  
arc                  randconfig-r043-20230417   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230417   clang
arm                  randconfig-r003-20230417   clang
arm                  randconfig-r046-20230416   clang
arm                  randconfig-r046-20230417   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r005-20230416   clang
arm64        buildonly-randconfig-r005-20230417   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230418   gcc  
csky         buildonly-randconfig-r006-20230416   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r036-20230417   gcc  
hexagon              randconfig-r002-20230416   clang
hexagon              randconfig-r032-20230417   clang
hexagon              randconfig-r033-20230417   clang
hexagon              randconfig-r035-20230417   clang
hexagon              randconfig-r041-20230416   clang
hexagon              randconfig-r041-20230417   clang
hexagon              randconfig-r045-20230416   clang
hexagon              randconfig-r045-20230417   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230417   clang
i386                 randconfig-a012-20230417   clang
i386                 randconfig-a013-20230417   clang
i386                 randconfig-a014-20230417   clang
i386                 randconfig-a015-20230417   clang
i386                 randconfig-a016-20230417   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r036-20230416   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230416   gcc  
m68k         buildonly-randconfig-r006-20230417   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r016-20230418   gcc  
microblaze           randconfig-r014-20230418   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2        buildonly-randconfig-r003-20230417   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r002-20230417   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230416   gcc  
parisc               randconfig-r006-20230417   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r012-20230418   gcc  
powerpc              randconfig-r013-20230418   gcc  
powerpc              randconfig-r015-20230418   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230416   gcc  
riscv                randconfig-r042-20230417   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230416   gcc  
s390         buildonly-randconfig-r002-20230416   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230417   gcc  
s390                 randconfig-r006-20230416   clang
s390                 randconfig-r035-20230416   clang
s390                 randconfig-r044-20230416   gcc  
s390                 randconfig-r044-20230417   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230417   gcc  
sh           buildonly-randconfig-r004-20230416   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r031-20230416   gcc  
sparc64              randconfig-r003-20230416   gcc  
sparc64              randconfig-r034-20230417   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230417   gcc  
x86_64               randconfig-a002-20230417   gcc  
x86_64               randconfig-a003-20230417   gcc  
x86_64               randconfig-a004-20230417   gcc  
x86_64               randconfig-a005-20230417   gcc  
x86_64               randconfig-a006-20230417   gcc  
x86_64               randconfig-a011-20230417   clang
x86_64               randconfig-a012-20230417   clang
x86_64               randconfig-a013-20230417   clang
x86_64               randconfig-a014-20230417   clang
x86_64               randconfig-a015-20230417   clang
x86_64               randconfig-a016-20230417   clang
x86_64               randconfig-r031-20230417   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r004-20230417   gcc  
xtensa               randconfig-r032-20230416   gcc  
xtensa               randconfig-r034-20230416   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
