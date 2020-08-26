Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C5D252B32
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Aug 2020 12:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45AB387A56;
	Wed, 26 Aug 2020 10:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 16GbGeVFDqQk; Wed, 26 Aug 2020 10:13:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB2EA87A72;
	Wed, 26 Aug 2020 10:13:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 260341BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 10:13:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 20F7222843
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 10:13:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CGLECpbxhuDI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 10:13:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 918321FD16
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 10:13:45 +0000 (UTC)
IronPort-SDR: bQzvl3CBIarEUw+d+SgGRjsgnOhenF2j6rgPeHSoAu+GtCoJLFSIOIa4K/0UcfUno6BCoakgWs
 vVYEf4708yiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="220525487"
X-IronPort-AV: E=Sophos;i="5.76,355,1592895600"; d="scan'208";a="220525487"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 03:13:44 -0700
IronPort-SDR: Nthe2aQFEBu7k0UE2POlJZF/6HU9BolU7WbylUVMpcFuHQfTH9XVpFF4oOUYhK423mayGR5Udt
 1SSlHBnv9f0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,355,1592895600"; d="scan'208";a="339109680"
Received: from lkp-server01.sh.intel.com (HELO 4f455964fc6c) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 26 Aug 2020 03:13:43 -0700
Received: from kbuild by 4f455964fc6c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kAsR5-0001OL-2X; Wed, 26 Aug 2020 10:13:43 +0000
Date: Wed, 26 Aug 2020 18:12:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f463597.1AeP2JIhJjwCG67Q%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 e093edc6dd0815cc0b328cb888262f6315ba018a
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
branch HEAD: e093edc6dd0815cc0b328cb888262f6315ba018a  ice: avoid premature Rx buffer reuse

elapsed time: 722m

configs tested: 97
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                          alldefconfig
mips                    maltaup_xpa_defconfig
sh                            shmin_defconfig
h8300                    h8300h-sim_defconfig
xtensa                generic_kc705_defconfig
mips                      bmips_stb_defconfig
mips                      maltasmvp_defconfig
m68k                            q40_defconfig
arc                    vdk_hs38_smp_defconfig
mips                       capcella_defconfig
arm                        magician_defconfig
arm                          pxa910_defconfig
arm                        clps711x_defconfig
c6x                        evmc6678_defconfig
m68k                        m5407c3_defconfig
arm                          badge4_defconfig
arm                           h3600_defconfig
sh                   secureedge5410_defconfig
xtensa                           alldefconfig
microblaze                          defconfig
arc                        nsimosci_defconfig
mips                         rt305x_defconfig
arm                     davinci_all_defconfig
arm                          exynos_defconfig
riscv                            allmodconfig
arm                         at91_dt_defconfig
m68k                         amcore_defconfig
mips                  decstation_64_defconfig
sh                              ul2_defconfig
arm                          pxa3xx_defconfig
xtensa                       common_defconfig
riscv                          rv32_defconfig
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
i386                 randconfig-a002-20200826
i386                 randconfig-a004-20200826
i386                 randconfig-a003-20200826
i386                 randconfig-a005-20200826
i386                 randconfig-a006-20200826
i386                 randconfig-a001-20200826
x86_64               randconfig-a015-20200826
x86_64               randconfig-a016-20200826
x86_64               randconfig-a012-20200826
x86_64               randconfig-a014-20200826
x86_64               randconfig-a011-20200826
x86_64               randconfig-a013-20200826
i386                 randconfig-a013-20200826
i386                 randconfig-a012-20200826
i386                 randconfig-a011-20200826
i386                 randconfig-a016-20200826
i386                 randconfig-a015-20200826
i386                 randconfig-a014-20200826
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
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
