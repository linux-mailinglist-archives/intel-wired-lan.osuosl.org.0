Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE1F4C8C80
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 14:21:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE49C404FD;
	Tue,  1 Mar 2022 13:21:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xciid7KzAMde; Tue,  1 Mar 2022 13:21:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 655E640283;
	Tue,  1 Mar 2022 13:21:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 501911BF847
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 13:21:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3C9644019E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 13:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXq3vhZH4zIT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 13:21:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5AC4404C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 13:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646140868; x=1677676868;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=4wQIXvalfnKAnJE2oM3pBefTKkcSLGqAf6NTr6Nfn60=;
 b=RET5qde5I/3qQppPv+W1uqFgVOxnQUJQWqZW9ttue5rmPp9/9phVlxdA
 8ZkpcX22kJqMZFUtoRM+lhWBoXyBR7181afWry8GGAPD8/oa5wqwXwBeH
 1TPLqCpz/cIz/gctOVVljiIHvuw1vruuxGuFhZI5EYazUB9bGNuXBUCwm
 quXXVud5lIw7uDGz9EBXBa+g1LoAu/FgYTVamVaL0ncW6iouAHhZK5Qv0
 sRjReQcfUbJ68rNL72JeLemoUuOUqFQ3vWO68A3f00q1oUrWYkTCfwEgH
 npRnKrz1HUEQ+V669hRWi0KpuzqeqlMk3ewdwNn2Yk/PNCT5XDqR+rfQB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="233098194"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="233098194"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 05:21:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="510503581"
Received: from lkp-server01.sh.intel.com (HELO 2146afe809fb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 01 Mar 2022 05:21:06 -0800
Received: from kbuild by 2146afe809fb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nP2R8-0000T6-3D; Tue, 01 Mar 2022 13:21:06 +0000
Date: Tue, 01 Mar 2022 21:20:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <621e1dbb.Xr6/7cNK3QHqmU0q%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 ffd24fa2fcc76ecb2e61e7a4ef8588177bcb42a6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: ffd24fa2fcc76ecb2e61e7a4ef8588177bcb42a6  e1000e: Correct NVM checksum verification flow

elapsed time: 727m

configs tested: 141
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
arc                        vdk_hs38_defconfig
powerpc                      pasemi_defconfig
m68k                       m5249evb_defconfig
arc                 nsimosci_hs_smp_defconfig
parisc                              defconfig
mips                             allyesconfig
nios2                         10m50_defconfig
m68k                        m5407c3_defconfig
arm                            lart_defconfig
sh                              ul2_defconfig
sh                            migor_defconfig
nds32                               defconfig
mips                     loongson1b_defconfig
powerpc                     tqm8548_defconfig
sh                        sh7757lcr_defconfig
powerpc                      bamboo_defconfig
arm                        keystone_defconfig
arc                        nsim_700_defconfig
mips                            gpr_defconfig
sh                          landisk_defconfig
sh                          r7785rp_defconfig
mips                  maltasmvp_eva_defconfig
parisc64                         alldefconfig
m68k                         amcore_defconfig
m68k                            q40_defconfig
powerpc                     asp8347_defconfig
arm                        realview_defconfig
arm                        cerfcube_defconfig
arm                          pxa3xx_defconfig
m68k                        m5307c3_defconfig
m68k                          multi_defconfig
powerpc                     redwood_defconfig
parisc                generic-64bit_defconfig
mips                          rb532_defconfig
um                               alldefconfig
sh                        edosk7705_defconfig
sh                                  defconfig
arm                          iop32x_defconfig
arm                         cm_x300_defconfig
sparc                            allyesconfig
m68k                          atari_defconfig
sh                        apsh4ad0a_defconfig
arm                          simpad_defconfig
arm                     eseries_pxa_defconfig
mips                       bmips_be_defconfig
mips                           ip32_defconfig
arm                  randconfig-c002-20220301
arm                  randconfig-c002-20220228
arm                  randconfig-c002-20220227
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64               randconfig-a011-20220228
x86_64               randconfig-a013-20220228
x86_64               randconfig-a015-20220228
x86_64               randconfig-a014-20220228
x86_64               randconfig-a016-20220228
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                 randconfig-a011-20220228
i386                 randconfig-a012-20220228
i386                 randconfig-a013-20220228
i386                 randconfig-a015-20220228
i386                 randconfig-a016-20220228
i386                 randconfig-a014-20220228
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220301
riscv                randconfig-c006-20220301
i386                          randconfig-c001
arm                  randconfig-c002-20220301
mips                 randconfig-c004-20220301
mips                      malta_kvm_defconfig
powerpc                     pseries_defconfig
arm                        vexpress_defconfig
powerpc                      pmac32_defconfig
powerpc                        fsp2_defconfig
arm                           spitz_defconfig
arm                     davinci_all_defconfig
mips                     cu1830-neo_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a011
hexagon              randconfig-r045-20220301
hexagon              randconfig-r041-20220301
riscv                randconfig-r042-20220301

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
