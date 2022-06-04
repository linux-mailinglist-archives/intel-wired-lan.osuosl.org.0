Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 504BC53D784
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jun 2022 17:40:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AFD0611E2;
	Sat,  4 Jun 2022 15:40:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8j9J2qFAoeFB; Sat,  4 Jun 2022 15:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F80C611CD;
	Sat,  4 Jun 2022 15:40:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F1401BF35D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jun 2022 15:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E934D612CA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jun 2022 15:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Px3T9pp_YTcf for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jun 2022 15:40:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E5591611E2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jun 2022 15:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654357243; x=1685893243;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=R+gE22BoyjOOqnOo5RaHlPQ84d/YcZAzjcKkQQPI0Eo=;
 b=QPKPAx8vxzKQhvkdwLmcr1QN6uIuIr0ccEJl1XqIRWDKVbKK7jG9MmrL
 iN9qRMBQpWWgkSFa1Tq4Qc2kTCvKqc/esDBVy9YVuQqMxYxXPA8lzw38Q
 KYZBdwDVdd3QnIbI/MZhQlsZR3yq9BWlOTzylRvt5mpLcslJcVKI9qUlX
 DO/HlV2I+SGnHJ55EhZxPclWO/RVfgr7BDoa0FopyhnMo7nnOyoz4yKgq
 c8NbSC99vYdQsLN48Q/KUAGiXga4dGvf1yAcyTIYYpgd/rIpMTP+KDo5+
 AuyXPIkj/D2pBJ5aw/St/cYteQ0+39g2Q5upS6JYTv5VXf5+JEnfQYYRH g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10368"; a="274009886"
X-IronPort-AV: E=Sophos;i="5.91,277,1647327600"; d="scan'208";a="274009886"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2022 08:40:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,277,1647327600"; d="scan'208";a="553758566"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 04 Jun 2022 08:40:41 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nxVtJ-000B0V-9h;
 Sat, 04 Jun 2022 15:40:41 +0000
Date: Sat, 04 Jun 2022 23:40:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <629b7cd1.GoBHwpKJ6X/w5c2t%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 1fd5eef3f754eb2a49178b9b7ea803254744ad2f
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
branch HEAD: 1fd5eef3f754eb2a49178b9b7ea803254744ad2f  igc: Reinstate IGC_REMOVED logic and implement it properly

elapsed time: 1190m

configs tested: 79
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
mips                             allyesconfig
nios2                               defconfig
alpha                               defconfig
m68k                             allyesconfig
csky                                defconfig
arc                              allyesconfig
sh                               allmodconfig
alpha                            allyesconfig
arc                                 defconfig
nios2                            allyesconfig
m68k                             allmodconfig
h8300                            allyesconfig
m68k                                defconfig
mips                             allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
riscv                          rv32_defconfig
riscv                    nommu_virt_defconfig
parisc64                            defconfig
riscv                               defconfig
s390                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
um                           x86_64_defconfig
sparc                            allyesconfig
um                             i386_defconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
powerpc                          allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
arm64                               defconfig
ia64                             allmodconfig
arm                              allmodconfig
ia64                                defconfig
arm                              allyesconfig
ia64                             allyesconfig
arm64                            allyesconfig
arm                                 defconfig
x86_64                        randconfig-a004
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a008
i386                          randconfig-a009
i386                          randconfig-a010
i386                          randconfig-a007
x86_64                        randconfig-a006
i386                          randconfig-a012
i386                          randconfig-a001
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
i386                          randconfig-a002
x86_64                        randconfig-a009
x86_64                        randconfig-a007
i386                          randconfig-a006
x86_64                        randconfig-a010
i386                          randconfig-a011
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a008
i386                          randconfig-a004
x86_64                        randconfig-a012

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
