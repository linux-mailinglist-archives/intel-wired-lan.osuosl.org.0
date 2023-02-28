Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2800C6A5368
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 08:01:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CE91415D3;
	Tue, 28 Feb 2023 07:01:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CE91415D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677567691;
	bh=n8rFKlTJaES7jqqYBhXFLqhS3X0QrYg5xm0QAkV4D8g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dF9bu7nwG/WRgPT5TFOmiNbAkISB0MuiSO10VhOi1KyLkPveX3o3mEUFX3kigTlgK
	 Z4neTBQ6oJebHXlitpWeepBdXc99bzdzUa+oyzm6ASueNjjCsj+crQysXlP5XiZrDO
	 rc4IQmDTXmhTtls4xiZzFz9KvZRManbCs652wvWZJa52MwWMkLfXw42buiwwgo3oUs
	 uALMPeUV1PDeHf5SwAJHJcE6MQv0ZS+WtZ2so/p+YwrJi+924JZGOSbgLVEm+NpQRu
	 QFXQX+Y16okPpp4qVWGals88jenGFXotFXh4furfdgsbFzBH4oqk09MRv5o9jEOH4r
	 xRt6pSnSS4JHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4sqYn_R0qxSl; Tue, 28 Feb 2023 07:01:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C85754086B;
	Tue, 28 Feb 2023 07:01:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C85754086B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 28FF71BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 07:01:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DC48B4052E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 07:01:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC48B4052E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jPf8s5Xh221o for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 07:01:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B24044053D
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B24044053D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 07:01:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="396630248"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="396630248"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 23:01:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="848151949"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="848151949"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 27 Feb 2023 23:01:21 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pWtzF-0005Af-0V;
 Tue, 28 Feb 2023 07:01:21 +0000
Date: Tue, 28 Feb 2023 15:01:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63fda6ad.6PD0ycEJzJNW+POn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677567683; x=1709103683;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=cQPFUy6lqWpsFm1NmYGxV9T6WLrG8hvTcvgPdD8UMYc=;
 b=Mj0jyd/AmttZUlmPvcnpjzyiS/bmBvI29BTs+8ozzk0V1qa2UnqkblGw
 v6SJwdwakEcnh3tAKgjKbSlpDmd8bYMGkc3lrICnzxdp1/cDqIHwnC9EU
 axBpE2mMgNa0tAqyKArsnQU84mUi/VQBKG7EalTp5/yLbXdnl1Ifit8ih
 GH5VEsjN4jCbujZkS+S0ggWtUCcGjZG+P6tsnOCPG2PPDoWqi0aRnnUJ5
 iuZL7qs8aXgM2TOdCc52o/1velelCr0JZ59IpOFcaqvtCiVLIgT5mLJti
 W/iAFAMfBOLU0w6mWv/612lw3PtmGOqF94jfZQh5Dai50hJHuX4wuTIKT
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mj0jyd/A
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3425f3d327c9d89d8d13718229b29b9cade76435
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
branch HEAD: 3425f3d327c9d89d8d13718229b29b9cade76435  ice: avoid bonding causing auxiliary plug/unplug under RTNL lock

elapsed time: 762m

configs tested: 134
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230227   gcc  
alpha                randconfig-r035-20230226   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r032-20230226   gcc  
arc                  randconfig-r034-20230226   gcc  
arc                  randconfig-r043-20230226   gcc  
arc                  randconfig-r043-20230227   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r036-20230226   clang
arm                  randconfig-r046-20230226   gcc  
arm                  randconfig-r046-20230227   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230226   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230226   gcc  
arm64                randconfig-r015-20230226   clang
arm64                randconfig-r025-20230226   clang
csky         buildonly-randconfig-r002-20230226   gcc  
csky         buildonly-randconfig-r003-20230226   gcc  
csky         buildonly-randconfig-r004-20230227   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230226   gcc  
csky                 randconfig-r006-20230226   gcc  
hexagon              randconfig-r015-20230227   clang
hexagon              randconfig-r032-20230227   clang
hexagon              randconfig-r041-20230226   clang
hexagon              randconfig-r041-20230227   clang
hexagon              randconfig-r045-20230226   clang
hexagon              randconfig-r045-20230227   clang
i386                             allyesconfig   gcc  
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
i386                 randconfig-r034-20230227   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230227   gcc  
ia64                 randconfig-r013-20230227   gcc  
ia64                 randconfig-r022-20230227   gcc  
ia64                 randconfig-r036-20230227   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r021-20230227   gcc  
loongarch            randconfig-r022-20230226   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230227   gcc  
m68k                 randconfig-r011-20230226   gcc  
microblaze   buildonly-randconfig-r005-20230227   gcc  
microblaze           randconfig-r003-20230226   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r004-20230227   gcc  
mips                 randconfig-r023-20230226   gcc  
mips                 randconfig-r025-20230227   clang
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230226   gcc  
openrisc             randconfig-r012-20230227   gcc  
openrisc             randconfig-r016-20230226   gcc  
openrisc             randconfig-r026-20230226   gcc  
openrisc             randconfig-r031-20230226   gcc  
openrisc             randconfig-r031-20230227   gcc  
parisc       buildonly-randconfig-r002-20230227   gcc  
parisc       buildonly-randconfig-r006-20230226   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230226   gcc  
parisc               randconfig-r003-20230227   gcc  
parisc               randconfig-r013-20230226   gcc  
parisc               randconfig-r035-20230227   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r001-20230227   clang
powerpc              randconfig-r005-20230226   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230227   gcc  
riscv                randconfig-r042-20230226   clang
riscv                randconfig-r042-20230227   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230226   clang
s390                 randconfig-r044-20230227   gcc  
sh                               allmodconfig   gcc  
sparc        buildonly-randconfig-r001-20230226   gcc  
sparc        buildonly-randconfig-r001-20230227   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r016-20230227   gcc  
sparc                randconfig-r021-20230226   gcc  
sparc                randconfig-r023-20230227   gcc  
sparc                randconfig-r024-20230227   gcc  
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
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230226   gcc  
xtensa               randconfig-r033-20230226   gcc  
xtensa               randconfig-r033-20230227   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
