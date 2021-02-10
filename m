Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17682315C3E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 02:30:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA7826F634
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 01:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XKeeQt-aX4er for <lists+intel-wired-lan@lfdr.de>;
	Wed, 10 Feb 2021 01:30:12 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 8F6DA6F531; Wed, 10 Feb 2021 01:30:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77D576F5B2;
	Wed, 10 Feb 2021 01:29:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0AA2C1BF34B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 01:29:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED81F6F4F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 01:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vEUZuQ3w6byU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Feb 2021 01:29:49 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id E91B66F531; Wed, 10 Feb 2021 01:29:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 27D726F4F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 01:29:47 +0000 (UTC)
IronPort-SDR: WzbBmSWNcSKVl2BOyNEI+YcL1qg12ZerVfMKPQHQ8y1Td0NsEy8och93cIubOeGHB6Aa8S+jdM
 tQbJxBqebTKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="181218554"
X-IronPort-AV: E=Sophos;i="5.81,166,1610438400"; d="scan'208";a="181218554"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 17:29:45 -0800
IronPort-SDR: KzFBIAI9qjjIa5jCB3wJM8rmXj5MdZwWKjzWBB7Ynw55HO/jx1NpZWqsGwkQXR3c/0b4A+HxKW
 eRRHk7jQ0jaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,166,1610438400"; d="scan'208";a="396477369"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 09 Feb 2021 17:29:44 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l9eK8-0002Wd-04; Wed, 10 Feb 2021 01:29:44 +0000
Date: Wed, 10 Feb 2021 09:29:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <602336f8.SdQKX6v+iCOuanR3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD REGRESSION
 613142b0bb8840016c7a41b3b681f6130cc49c86
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 613142b0bb8840016c7a41b3b681f6130cc49c86  i40e: Log error for oversized MTU on device

possible Error/Warning in current branch:

net/rxrpc/local_object.c:124:12: error: 'struct udp_port_cfg' has no member named 'local_ip6'; did you mean 'local_ip'?

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- c6x-randconfig-r011-20210209
|   `-- net-rxrpc-local_object.c:error:struct-udp_port_cfg-has-no-member-named-local_ip6
`-- x86_64-randconfig-a002-20210209
    `-- net-rxrpc-local_object.c:error:struct-udp_port_cfg-has-no-member-named-local_ip6

elapsed time: 723m

configs tested: 101
configs skipped: 2

gcc tested configs:
arm                              allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allmodconfig
m68k                       m5249evb_defconfig
sh                   sh7770_generic_defconfig
c6x                        evmc6472_defconfig
mips                         cobalt_defconfig
arc                        nsimosci_defconfig
arm                       versatile_defconfig
powerpc                     stx_gp3_defconfig
sh                        sh7785lcr_defconfig
powerpc                      pasemi_defconfig
arm                             mxs_defconfig
arc                              alldefconfig
mips                          ath79_defconfig
c6x                        evmc6474_defconfig
xtensa                  audio_kc705_defconfig
arm                            zeus_defconfig
powerpc                     pq2fads_defconfig
arm                       aspeed_g5_defconfig
mips                            e55_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                       imx_v4_v5_defconfig
arm                     am200epdkit_defconfig
powerpc                        cell_defconfig
microblaze                      mmu_defconfig
sh                  sh7785lcr_32bit_defconfig
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
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
xtensa                           allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20210209
x86_64               randconfig-a001-20210209
x86_64               randconfig-a005-20210209
x86_64               randconfig-a004-20210209
x86_64               randconfig-a002-20210209
x86_64               randconfig-a003-20210209
i386                 randconfig-a001-20210209
i386                 randconfig-a005-20210209
i386                 randconfig-a003-20210209
i386                 randconfig-a002-20210209
i386                 randconfig-a006-20210209
i386                 randconfig-a004-20210209
i386                 randconfig-a016-20210209
i386                 randconfig-a013-20210209
i386                 randconfig-a012-20210209
i386                 randconfig-a014-20210209
i386                 randconfig-a011-20210209
i386                 randconfig-a015-20210209
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a013-20210209
x86_64               randconfig-a014-20210209
x86_64               randconfig-a015-20210209
x86_64               randconfig-a012-20210209
x86_64               randconfig-a016-20210209
x86_64               randconfig-a011-20210209

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
