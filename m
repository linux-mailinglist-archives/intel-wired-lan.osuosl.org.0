Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0E8242485
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Aug 2020 06:17:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E873A880B3;
	Wed, 12 Aug 2020 04:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NCZ5IwB3dmUF; Wed, 12 Aug 2020 04:17:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EAA6988164;
	Wed, 12 Aug 2020 04:17:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A19E61BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Aug 2020 04:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9D35887698
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Aug 2020 04:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A1AJSpI7B5jK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Aug 2020 04:17:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 16ACA87680
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Aug 2020 04:17:18 +0000 (UTC)
IronPort-SDR: FaEDR53fAqffaKaOr1Ceir1o4F22eXYe9rzptmHNoYGqbmWZ0fCNTKciXx935u7NJ7eWl0ATFT
 ZG9ATVUlnqMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9710"; a="215400864"
X-IronPort-AV: E=Sophos;i="5.76,302,1592895600"; d="scan'208";a="215400864"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 21:17:18 -0700
IronPort-SDR: f69NuoIAweBAWv8WzZtfN3sA80O9u6wBRaOBQjC1CGgRSV0JaNa+drEZtaKw5R8FBItsK7eAFv
 4dzvCkrERJuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,302,1592895600"; d="scan'208";a="277744829"
Received: from lkp-server01.sh.intel.com (HELO e03a785590b8) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 11 Aug 2020 21:17:17 -0700
Received: from kbuild by e03a785590b8 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k5iCS-000056-OY; Wed, 12 Aug 2020 04:17:16 +0000
Date: Wed, 12 Aug 2020 12:16:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f336d2a.Mhcbl/UfRM1V5l07%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 1798aee4053c4f8e8288e64566105cd63354eaad
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
branch HEAD: 1798aee4053c4f8e8288e64566105cd63354eaad  i40e: Fix crash during removing i40e driver

elapsed time: 724m

configs tested: 78
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                        qi_lb60_defconfig
m68k                          sun3x_defconfig
m68k                           sun3_defconfig
powerpc                     skiroot_defconfig
sh                     sh7710voipgw_defconfig
arm                         axm55xx_defconfig
powerpc                     ep8248e_defconfig
arc                        nsim_700_defconfig
arm                            hisi_defconfig
arm                  colibri_pxa270_defconfig
arm                       mainstone_defconfig
sh                            shmin_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
x86_64               randconfig-a006-20200811
x86_64               randconfig-a001-20200811
x86_64               randconfig-a003-20200811
x86_64               randconfig-a005-20200811
x86_64               randconfig-a004-20200811
x86_64               randconfig-a002-20200811
i386                 randconfig-a005-20200811
i386                 randconfig-a001-20200811
i386                 randconfig-a002-20200811
i386                 randconfig-a003-20200811
i386                 randconfig-a006-20200811
i386                 randconfig-a004-20200811
i386                 randconfig-a016-20200811
i386                 randconfig-a011-20200811
i386                 randconfig-a015-20200811
i386                 randconfig-a013-20200811
i386                 randconfig-a012-20200811
i386                 randconfig-a014-20200811
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
