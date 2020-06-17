Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D131FCC3F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2020 13:27:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B822F221FF;
	Wed, 17 Jun 2020 11:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j67-8rjr8Lat; Wed, 17 Jun 2020 11:27:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09E64226FF;
	Wed, 17 Jun 2020 11:27:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A4D001BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2020 11:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A040E87A30
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2020 11:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WOgjcNeNNJ7w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2020 11:27:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 79F9087A5F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2020 11:27:04 +0000 (UTC)
IronPort-SDR: GaVzkTBGG5BU63k+6oNKAgj/IvfHaeS1zihJcgweIBv8I7IBkmFf8bSfSmAbyxygGqn8eVf1Yy
 hA6kpgwqFbMw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 04:27:03 -0700
IronPort-SDR: hSMpsk/pLXKSG06UMuGQKhHzgYJHHKVI2I2nUslR9pQVoK2St/VnqFSdBJlFfqSIY0c7nO+VFu
 mUOjATXGH5yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,522,1583222400"; d="scan'208";a="450214763"
Received: from lkp-server02.sh.intel.com (HELO acd172f646ee) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 17 Jun 2020 04:27:02 -0700
Received: from kbuild by acd172f646ee with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jlWDd-00002O-RQ; Wed, 17 Jun 2020 11:27:01 +0000
Date: Wed, 17 Jun 2020 19:26:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ee9fde7.dFyM4CBIMnpaw9oo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 8c37258160cd593243cb251b6b44d9b396e59078
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
branch HEAD: 8c37258160cd593243cb251b6b44d9b396e59078  i40e: fix crash when Rx descriptor count is changed

elapsed time: 724m

configs tested: 118
configs skipped: 5

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
sh                                  defconfig
xtensa                    xip_kc705_defconfig
powerpc                      mgcoge_defconfig
c6x                        evmc6678_defconfig
arc                           tb10x_defconfig
powerpc                      pasemi_defconfig
mips                         bigsur_defconfig
arm                       cns3420vb_defconfig
xtensa                              defconfig
sh                          urquell_defconfig
mips                           mtx1_defconfig
mips                       capcella_defconfig
mips                  mips_paravirt_defconfig
mips                      pistachio_defconfig
mips                   sb1250_swarm_defconfig
mips                           ip28_defconfig
mips                           ip27_defconfig
arm                       netwinder_defconfig
sh                           se7721_defconfig
m68k                          hp300_defconfig
powerpc                    mvme5100_defconfig
sh                          r7785rp_defconfig
arm                        magician_defconfig
arm                         ebsa110_defconfig
powerpc                     mpc512x_defconfig
sh                        sh7757lcr_defconfig
arm                           sunxi_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
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
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20200615
i386                 randconfig-a002-20200615
i386                 randconfig-a001-20200615
i386                 randconfig-a004-20200615
i386                 randconfig-a005-20200615
i386                 randconfig-a003-20200615
i386                 randconfig-a015-20200617
i386                 randconfig-a011-20200617
i386                 randconfig-a014-20200617
i386                 randconfig-a016-20200617
i386                 randconfig-a013-20200617
i386                 randconfig-a012-20200617
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
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
