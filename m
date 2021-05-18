Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3105C38796F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 May 2021 15:02:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5544842D7;
	Tue, 18 May 2021 13:02:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JXRFM5_3h1vf; Tue, 18 May 2021 13:02:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8BBB8414E;
	Tue, 18 May 2021 13:02:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 81C301C1135
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 May 2021 13:02:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C3568414E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 May 2021 13:02:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m7xhuNL69ApU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 May 2021 13:02:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5738F83FEE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 May 2021 13:02:04 +0000 (UTC)
IronPort-SDR: NkPUjJ5QzVdARaHAmvp4EYJuFEr3OJ/h/fmqjvsbnk3iSCOZ12FraHyEOzWdVN/8q2O+9yDLDj
 jGvPuz0BgraA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="180981318"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="180981318"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 06:02:03 -0700
IronPort-SDR: iVd8TAyTSPAOZYdCxiT454UlapKZTHblc2iUBB8jGLchU3niMN6sKYXObXZ+8bukU7y6k8U5Gd
 Am4+aK9fzJzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="466398688"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 18 May 2021 06:02:01 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lizMH-0002Bj-4r; Tue, 18 May 2021 13:02:01 +0000
Date: Tue, 18 May 2021 21:01:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60a3bab7.D+QEcRhFa2r4NCWn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 70f76985e05679cd5dc0866eb6e899f7a59019e6
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
branch HEAD: 70f76985e05679cd5dc0866eb6e899f7a59019e6  i40e: Fix failed opcode appearing if handling messages from VF

elapsed time: 723m

configs tested: 96
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                       mainstone_defconfig
powerpc                 mpc8272_ads_defconfig
sh                          r7785rp_defconfig
powerpc                       holly_defconfig
arm                            dove_defconfig
powerpc                      makalu_defconfig
arm                           u8500_defconfig
arm                          iop32x_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                 mpc8560_ads_defconfig
m68k                       bvme6000_defconfig
arm                          ixp4xx_defconfig
arm                          collie_defconfig
arm                            zeus_defconfig
s390                             alldefconfig
sh                            shmin_defconfig
s390                                defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210518
i386                 randconfig-a001-20210518
i386                 randconfig-a005-20210518
i386                 randconfig-a004-20210518
i386                 randconfig-a002-20210518
i386                 randconfig-a006-20210518
x86_64               randconfig-a012-20210517
x86_64               randconfig-a015-20210517
x86_64               randconfig-a011-20210517
x86_64               randconfig-a013-20210517
x86_64               randconfig-a016-20210517
x86_64               randconfig-a014-20210517
i386                 randconfig-a014-20210518
i386                 randconfig-a016-20210518
i386                 randconfig-a011-20210518
i386                 randconfig-a015-20210518
i386                 randconfig-a012-20210518
i386                 randconfig-a013-20210518
x86_64               randconfig-a003-20210518
x86_64               randconfig-a004-20210518
x86_64               randconfig-a005-20210518
x86_64               randconfig-a001-20210518
x86_64               randconfig-a002-20210518
x86_64               randconfig-a006-20210518
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210518

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
