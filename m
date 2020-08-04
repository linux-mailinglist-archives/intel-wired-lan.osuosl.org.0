Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19E223B9CD
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Aug 2020 13:43:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A88587E34;
	Tue,  4 Aug 2020 11:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BFD4wHkn4Igd; Tue,  4 Aug 2020 11:43:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F9B887E27;
	Tue,  4 Aug 2020 11:43:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E27A61BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Aug 2020 11:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DE015848BE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Aug 2020 11:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jfKMAhwdguRj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Aug 2020 11:43:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9BF9F8485A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Aug 2020 11:43:43 +0000 (UTC)
IronPort-SDR: ey5FIxG9yj1fZSHyHNvpY6KXjxPYJwX2/WyzRHiSnl/isno2MTERzwiuJLyCgfecjCo8d4hfsm
 TijuMG/4MEFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="237154898"
X-IronPort-AV: E=Sophos;i="5.75,433,1589266800"; d="scan'208";a="237154898"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2020 04:43:43 -0700
IronPort-SDR: NFvw0j2EbRPM+8so/hLzwWg02c5kxAXmqSiojXL0IolMPs2/iQgLn2Fro7OLHs+1TKQ0sT0/yZ
 tFZp3YUZ9/mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,433,1589266800"; d="scan'208";a="332459744"
Received: from lkp-server02.sh.intel.com (HELO 37a337f97289) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 04 Aug 2020 04:43:41 -0700
Received: from kbuild by 37a337f97289 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k2vM5-00005y-7V; Tue, 04 Aug 2020 11:43:41 +0000
Date: Tue, 04 Aug 2020 19:43:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f2949e5.ouN6sfsR40HiYVp1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 145f0e0cd17dc0c636d86cf2947bcc6f2c84532a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  dev-queue
branch HEAD: 145f0e0cd17dc0c636d86cf2947bcc6f2c84532a  igc: Fix PTP initialization

elapsed time: 724m

configs tested: 120
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                          moxart_defconfig
sh                        sh7763rdp_defconfig
sh                         microdev_defconfig
arm                        magician_defconfig
arm                             pxa_defconfig
powerpc                  storcenter_defconfig
sh                           se7206_defconfig
arm                           spitz_defconfig
arm                        neponset_defconfig
sh                          rsk7201_defconfig
mips                 pnx8335_stb225_defconfig
sparc64                          alldefconfig
arm                          badge4_defconfig
arm                          ixp4xx_defconfig
sh                          lboxre2_defconfig
arm                    vt8500_v6_v7_defconfig
arm                            lart_defconfig
mips                        omega2p_defconfig
mips                     loongson1c_defconfig
m68k                       bvme6000_defconfig
xtensa                           alldefconfig
arm                       netwinder_defconfig
c6x                              alldefconfig
sh                           se7751_defconfig
sh                           se7712_defconfig
arm                            mmp2_defconfig
sh                           sh2007_defconfig
mips                      maltaaprp_defconfig
arm                          gemini_defconfig
powerpc                     pq2fads_defconfig
arm                   milbeaut_m10v_defconfig
powerpc                     skiroot_defconfig
sh                         ecovec24_defconfig
sh                        sh7757lcr_defconfig
parisc                           alldefconfig
mips                           ip32_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20200804
x86_64               randconfig-a001-20200804
x86_64               randconfig-a004-20200804
x86_64               randconfig-a005-20200804
x86_64               randconfig-a002-20200804
x86_64               randconfig-a003-20200804
i386                 randconfig-a004-20200803
i386                 randconfig-a005-20200803
i386                 randconfig-a001-20200803
i386                 randconfig-a002-20200803
i386                 randconfig-a003-20200803
i386                 randconfig-a006-20200803
i386                 randconfig-a005-20200804
i386                 randconfig-a004-20200804
i386                 randconfig-a001-20200804
i386                 randconfig-a003-20200804
i386                 randconfig-a002-20200804
i386                 randconfig-a006-20200804
x86_64               randconfig-a013-20200803
x86_64               randconfig-a011-20200803
x86_64               randconfig-a012-20200803
x86_64               randconfig-a016-20200803
x86_64               randconfig-a015-20200803
x86_64               randconfig-a014-20200803
i386                 randconfig-a011-20200803
i386                 randconfig-a012-20200803
i386                 randconfig-a015-20200803
i386                 randconfig-a014-20200803
i386                 randconfig-a013-20200803
i386                 randconfig-a016-20200803
i386                 randconfig-a011-20200804
i386                 randconfig-a012-20200804
i386                 randconfig-a013-20200804
i386                 randconfig-a014-20200804
i386                 randconfig-a015-20200804
i386                 randconfig-a016-20200804
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
