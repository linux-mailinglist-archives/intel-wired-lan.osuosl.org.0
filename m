Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D83445B3BCC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Sep 2022 17:26:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A59E08432C;
	Fri,  9 Sep 2022 15:26:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A59E08432C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662737205;
	bh=t5WV6Nedi5MAwxeOph2wR3qCEo1y2+Twy9ZrY4YX27s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YE0MFYR/LHVJGNVZzmUVmUDzD43agPN5TDCYgEX9lIxngQxJMLO7z93/HnD5feQh2
	 uf39otNHkppySvHeyjGbTWoGmYe599zCpjYXANvREW9O5znqOfidxJkI+4XdRPDLJp
	 D6ntGgxxKz4ZiZeLvHDaScZLZzGUbEy9cAB4lm2dVbvxi7VgUkhuHwSNxIo7/CqG5j
	 rryol0rFCBBgzfrIFS/ZKRGJHXP6UbUaWPYuNKU8/iED/WEialsCCDVTv3T4REQMn1
	 aH0TGooP1LRS/rS+A+Da6zzVi0Twe8fpXTFW0nSRZDWMARin+XzEa/Yox2+hlZFQPX
	 2C+OAQq545EnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p_PnV0heZjfE; Fri,  9 Sep 2022 15:26:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46128842F1;
	Fri,  9 Sep 2022 15:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46128842F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 093081BF232
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 15:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D82B5410C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 15:26:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D82B5410C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DoegnUme2_7s for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Sep 2022 15:26:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDD264070F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CDD264070F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 15:26:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="298837263"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="298837263"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 08:26:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="860438824"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 09 Sep 2022 08:26:36 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWftr-0001MN-2I;
 Fri, 09 Sep 2022 15:26:35 +0000
Date: Fri, 09 Sep 2022 23:25:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <631b5b00.LGmMfO/Z5AF8nfxc%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662737198; x=1694273198;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=rAx50wg1jRy7eN9B2atBT2xhXHGspkCgo64Oj8P7B18=;
 b=joICkeNrW9DAQSLRTEyDl0qCwD4zK22y/IP7xt707JP+hCf9XXlW74tg
 NzD2lzZvgLMuYIjyH3/0f0huLppMkwucIDqg4tdr6qpTQ8qiCnnw13KIz
 uaXba9ejznWw7PJR3DKUl8d0cUD8c36hH/Ohox2DP+V7lQVY/GLd2Ji7n
 E+G9L+NbjNojYxqjMv1tw53PCEniDufLIIiBIHCwkAYJg8SYNiPhWsBUs
 Uov2pSYSojZgaRBgwCLBa4Bden09rvSXKaDeLwmLXIg9BhbVJdtXeb6PE
 2TDTngokeBDEFXatG0Xk+MrZyOU62Y5efjsxgyE+++maSrk9GtD/qDbPs
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=joICkeNr
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 809f23c0423a43266e47a7dc67e95b5cb4d1cbfc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 809f23c0423a43266e47a7dc67e95b5cb4d1cbfc  iavf: Fix cached head and tail value for iavf_get_tx_pending

elapsed time: 1055m

configs tested: 143
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
arc                              allyesconfig
x86_64                        randconfig-a004
x86_64                              defconfig
alpha                            allyesconfig
x86_64                           allyesconfig
x86_64                        randconfig-a002
x86_64                               rhel-8.3
i386                          randconfig-a001
x86_64                        randconfig-a006
i386                          randconfig-a003
m68k                             allmodconfig
m68k                             allyesconfig
arc                  randconfig-r043-20220907
i386                          randconfig-a005
x86_64                          rhel-8.3-func
arm                                 defconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a013
i386                          randconfig-a014
x86_64                        randconfig-a011
i386                          randconfig-a012
x86_64                        randconfig-a015
i386                          randconfig-a016
powerpc                           allnoconfig
mips                             allyesconfig
i386                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arm64                            allyesconfig
arm                              allyesconfig
mips                     decstation_defconfig
powerpc                     stx_gp3_defconfig
sh                          sdk7780_defconfig
i386                          randconfig-c001
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm                      footbridge_defconfig
arm                        realview_defconfig
m68k                       m5275evb_defconfig
loongarch                         allnoconfig
arm                             pxa_defconfig
arc                              alldefconfig
arm                           u8500_defconfig
powerpc                      ppc40x_defconfig
mips                      loongson3_defconfig
sh                         apsh4a3a_defconfig
parisc                           alldefconfig
sh                            migor_defconfig
openrisc                            defconfig
sh                             shx3_defconfig
xtensa                              defconfig
mips                    maltaup_xpa_defconfig
mips                  maltasmvp_eva_defconfig
sh                        edosk7705_defconfig
arc                    vdk_hs38_smp_defconfig
sh                         microdev_defconfig
mips                           xway_defconfig
loongarch                           defconfig
m68k                          multi_defconfig
nios2                            allyesconfig
sh                             espt_defconfig
sh                     magicpanelr2_defconfig
m68k                          atari_defconfig
m68k                       m5475evb_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                     tqm8548_defconfig
riscv                randconfig-r042-20220908
arc                  randconfig-r043-20220908
s390                 randconfig-r044-20220908
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
mips                            ar7_defconfig
mips                         rt305x_defconfig
arc                      axs103_smp_defconfig
openrisc                    or1ksim_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
i386                             alldefconfig
arm                        mini2440_defconfig
sh                            shmin_defconfig
powerpc                        cell_defconfig
mips                 decstation_r4k_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-c001
arm                  randconfig-c002-20220908
arc                  randconfig-r043-20220909
ia64                             allmodconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r041-20220907
i386                          randconfig-a002
hexagon              randconfig-r045-20220907
s390                 randconfig-r044-20220907
riscv                randconfig-r042-20220907
i386                          randconfig-a006
i386                          randconfig-a004
i386                          randconfig-a013
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-k001
mips                           mtx1_defconfig
powerpc                        fsp2_defconfig
powerpc                 mpc8272_ads_defconfig
mips                        qi_lb60_defconfig
arm                          pcm027_defconfig
mips                          ath79_defconfig
powerpc                     ppa8548_defconfig
mips                           ip22_defconfig
riscv                randconfig-r042-20220909
hexagon              randconfig-r041-20220909
hexagon              randconfig-r041-20220908
hexagon              randconfig-r045-20220909
hexagon              randconfig-r045-20220908
s390                 randconfig-r044-20220909
arm                       spear13xx_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                         palmz72_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                          moxart_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
