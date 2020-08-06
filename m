Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E7F23D7C7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Aug 2020 10:03:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 61CA088810;
	Thu,  6 Aug 2020 08:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l6nQdSaRMOgq; Thu,  6 Aug 2020 08:03:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2597F887F3;
	Thu,  6 Aug 2020 08:03:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB34C1BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Aug 2020 08:03:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9D645248F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Aug 2020 08:03:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6itJ7rA26Csv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Aug 2020 08:03:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id D9AF524856
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Aug 2020 08:03:16 +0000 (UTC)
IronPort-SDR: bswK2ICRJ90TgDCgRPDeQ4zcdSb3Q+niPW/UPdrFPLEWeC68QzKNT+QXr5Z+YmhvkRNNHf4Dyl
 RMZPRJb2stKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="170823162"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="170823162"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 01:03:16 -0700
IronPort-SDR: 6PteynFFPhq20ZiQFbREIPcz2sAriw3yyTfi+Q5YVHslxIhzfYFb8tcpIAMbtnMt6iz8RY1ZTp
 zF1yntT9NIyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="333118270"
Received: from lkp-server02.sh.intel.com (HELO 37a337f97289) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 06 Aug 2020 01:03:15 -0700
Received: from kbuild by 37a337f97289 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k3arq-0001BB-Fe; Thu, 06 Aug 2020 08:03:14 +0000
Date: Thu, 06 Aug 2020 16:02:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f2bb932.ceyHmcqzXVoo9Uj+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 b9721e471d8836b587b16ade9484087e2ef7bb8d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: b9721e471d8836b587b16ade9484087e2ef7bb8d  i40e: Fix MAC address setting for a VF via Host/VM

Error/Warning in current branch:

net/ipv4/udp_tunnel_nic.c:849:6-10: ERROR: invalid reference to the index variable of the iterator on line 846

Error/Warning ids grouped by kconfigs:

recent_errors
|-- c6x-randconfig-c003-20200805
|   `-- net-ipv4-udp_tunnel_nic.c:ERROR:invalid-reference-to-the-index-variable-of-the-iterator-on-line
`-- i386-randconfig-c001-20200805
    `-- net-ipv4-udp_tunnel_nic.c:ERROR:invalid-reference-to-the-index-variable-of-the-iterator-on-line

elapsed time: 724m

configs tested: 105
configs skipped: 6

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                       mainstone_defconfig
sh                   sh7770_generic_defconfig
mips                       rbtx49xx_defconfig
ia64                         bigsur_defconfig
arm                          simpad_defconfig
powerpc                      mgcoge_defconfig
powerpc64                        alldefconfig
mips                      maltasmvp_defconfig
mips                      fuloong2e_defconfig
mips                     loongson1c_defconfig
arm                          lpd270_defconfig
m68k                       m5249evb_defconfig
sh                        dreamcast_defconfig
powerpc                    amigaone_defconfig
powerpc                      pasemi_defconfig
arm                             rpc_defconfig
m68k                        mvme147_defconfig
m68k                          multi_defconfig
powerpc                  mpc885_ads_defconfig
sh                   secureedge5410_defconfig
ia64                          tiger_defconfig
arm                         mv78xx0_defconfig
microblaze                      mmu_defconfig
s390                          debug_defconfig
powerpc                     powernv_defconfig
arm                        spear6xx_defconfig
mips                         db1xxx_defconfig
sh                         apsh4a3a_defconfig
mips                            gpr_defconfig
arm                       imx_v4_v5_defconfig
arm                     eseries_pxa_defconfig
arm                            pleb_defconfig
arm                        keystone_defconfig
arm                          collie_defconfig
arc                        vdk_hs38_defconfig
arm                      tct_hammer_defconfig
mips                     loongson1b_defconfig
powerpc                       ppc64_defconfig
arm                             ezx_defconfig
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
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20200805
i386                 randconfig-a001-20200805
i386                 randconfig-a003-20200805
i386                 randconfig-a002-20200805
i386                 randconfig-a005-20200805
i386                 randconfig-a006-20200805
x86_64               randconfig-a013-20200805
x86_64               randconfig-a011-20200805
x86_64               randconfig-a012-20200805
x86_64               randconfig-a016-20200805
x86_64               randconfig-a015-20200805
x86_64               randconfig-a014-20200805
i386                 randconfig-a011-20200805
i386                 randconfig-a012-20200805
i386                 randconfig-a013-20200805
i386                 randconfig-a014-20200805
i386                 randconfig-a015-20200805
i386                 randconfig-a016-20200805
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
