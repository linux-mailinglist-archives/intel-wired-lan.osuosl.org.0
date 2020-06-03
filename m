Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFCF1EC9BF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jun 2020 08:53:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 326CC8852F;
	Wed,  3 Jun 2020 06:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QJ4ixScVYwJV; Wed,  3 Jun 2020 06:53:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8AB0488770;
	Wed,  3 Jun 2020 06:53:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC98B1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2020 06:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E2A4587F7F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2020 06:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4G8B7PAy9kAa for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2020 06:53:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8C0F987F59
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2020 06:53:01 +0000 (UTC)
IronPort-SDR: XVPNSAaux5A8+JO9/hw+YO6zQmcJkZW5ZFuJ47PYreaCjUU2x/OS/lbmAw1lM/A8MZySLN7g/E
 dxBdTnbSaSZw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 23:53:00 -0700
IronPort-SDR: h4E4tIGEMqpijgzE++L9tsENtGX+YATV148ShiOpMfOtNhH1oM/Jeilt4RLdwIkPGam8BhV/no
 VZXDdIBt/8ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,467,1583222400"; d="scan'208";a="304269125"
Received: from lkp-server02.sh.intel.com (HELO 8f84dc34deca) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jun 2020 23:52:59 -0700
Received: from kbuild by 8f84dc34deca with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jgNGk-00002C-6Z; Wed, 03 Jun 2020 06:52:58 +0000
Date: Wed, 03 Jun 2020 14:52:50 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ed748c2.3AZy1Fbxew5O8UMi%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 1bfa3e1a56fb8f6c3d16080594f906cf4a0f8d8f
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
branch HEAD: 1bfa3e1a56fb8f6c3d16080594f906cf4a0f8d8f  ice: Fix a couple off by one bugs

elapsed time: 483m

configs tested: 113
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arc                              allyesconfig
ia64                                defconfig
arm                      pxa255-idp_defconfig
mips                        vocore2_defconfig
powerpc                           allnoconfig
arm                         nhk8815_defconfig
mips                           gcw0_defconfig
arc                    vdk_hs38_smp_defconfig
ia64                          tiger_defconfig
parisc                           allmodconfig
arm                       imx_v4_v5_defconfig
h8300                     edosk2674_defconfig
parisc                generic-64bit_defconfig
m68k                         amcore_defconfig
powerpc                 mpc8272_ads_defconfig
arm                         s5pv210_defconfig
arm                       multi_v4t_defconfig
sh                        edosk7705_defconfig
arm                              alldefconfig
sh                          rsk7203_defconfig
powerpc                     pq2fads_defconfig
powerpc                     mpc83xx_defconfig
sh                            migor_defconfig
powerpc                          alldefconfig
mips                        maltaup_defconfig
mips                        jmr3927_defconfig
s390                             alldefconfig
c6x                        evmc6472_defconfig
sh                          rsk7264_defconfig
sh                          kfr2r09_defconfig
m68k                       m5208evb_defconfig
c6x                         dsk6455_defconfig
m68k                            mac_defconfig
m68k                          multi_defconfig
arm                       netwinder_defconfig
arm                          badge4_defconfig
mips                  decstation_64_defconfig
arc                        nsimosci_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                             defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allmodconfig
um                               allyesconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
