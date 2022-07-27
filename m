Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BB2582293
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 10:59:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD5718194A;
	Wed, 27 Jul 2022 08:59:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD5718194A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658912353;
	bh=ZNaZLQVfwT4iKRHZUaIozx9VR409N6gR1b/DjqDSNUA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FMXxlMZcRGE2XmYgELXyW0+QMUT4fDWo0sDPI/QvUHu4x6ensKYI3/vj4HAHeXUel
	 K35t8VwDyLgzN+BlKMcGXT2wmvqa++7XmUupk+esX091RiLZjxAvSFGbxiwiAJtugt
	 Ra59oDumncEWdu443bSfSmp2/+0ZQa1PigaTbjxNSW3UU+empaYhbOIkWTXjXofVoY
	 Ny3Xq33fFaReOBQpUTfslGxtnAoDm4wi/iqYS7BOlkJheX6PBPq4Y3Z2Lm9LDd9pVz
	 omPcBaxb+TLDK/mRIlBCEdgw0+IYhUXHlP0Hp+Fg+ZHmm9u5jVrd+YhEemGNdcG/ID
	 Kks6xFHc8iyZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hhZdwww803-u; Wed, 27 Jul 2022 08:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8626817AD;
	Wed, 27 Jul 2022 08:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8626817AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B64421BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 08:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8FFAC401C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 08:59:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FFAC401C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id umbtU2unYLkA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 08:59:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B83D40151
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8B83D40151
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 08:59:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="288945648"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="288945648"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 01:59:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="600339044"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 27 Jul 2022 01:59:04 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oGcsi-0008Yf-0C;
 Wed, 27 Jul 2022 08:59:04 +0000
Date: Wed, 27 Jul 2022 16:58:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62e0fe4d.XpCjTyZqf16K2BSQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658912346; x=1690448346;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=7cFz29EygoUmKGNjOzdWm9eCqnJoYZh8Z+Nt94Cb8yQ=;
 b=Ataz+MTTGVwJCNNfJaxm9dzxWRqxIH2BEEoTg0EI8Z/rbaLWLMb0uKYd
 XRttrQMpRsYhcJuoOy6gvHX9BYgQIGqXkZeECQ3YmEMSKK3b2nKyVZPLG
 wEbi1H9jco38jVd/TWvaDhVqcf0F1WnyEiumLumDtSs3HdPqXP5G2h9/p
 5QBwEbXt3Fqo3c11ELCZyDxVSb3EHj3Aa1ve9/bozPfdk7UsyzkQyWXZQ
 IioIPBzA4NSUWgU5BccEVKAOL10BQh+KbkfJMsqR28ty4hMYPqflfdRri
 FOmVnvJZ9JwVxcAuxUR64jzhuzt7ZZICTloNa6MvwzDgiEHdnGmkY8H5n
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ataz+MTT
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 cc019545a238518fa9da1e2a889f6e1bb1005a63
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
branch HEAD: cc019545a238518fa9da1e2a889f6e1bb1005a63  ice: do not setup vlan for loopback VSI

elapsed time: 727m

configs tested: 92
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arm64                               defconfig
arm                        spear6xx_defconfig
m68k                         apollo_defconfig
mips                      loongson3_defconfig
sh                            migor_defconfig
arm                          badge4_defconfig
sh                               j2_defconfig
powerpc                  iss476-smp_defconfig
mips                       capcella_defconfig
powerpc                         ps3_defconfig
arm                        keystone_defconfig
sh                          rsk7264_defconfig
m68k                       m5275evb_defconfig
arm                        shmobile_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                         bigsur_defconfig
arm                           stm32_defconfig
arc                    vdk_hs38_smp_defconfig
openrisc                 simple_smp_defconfig
nios2                            allyesconfig
arc                          axs103_defconfig
nios2                               defconfig
um                                  defconfig
parisc                           allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
loongarch                           defconfig
loongarch                         allnoconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
s390                 randconfig-r044-20220724
riscv                randconfig-r042-20220724
arc                  randconfig-r043-20220724
arc                  randconfig-r043-20220726
s390                 randconfig-r044-20220726
riscv                randconfig-r042-20220726
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                        multi_v5_defconfig
mips                           ip28_defconfig
powerpc                          allmodconfig
mips                  cavium_octeon_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                        fsp2_defconfig
mips                           rs90_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220724
hexagon              randconfig-r045-20220724
hexagon              randconfig-r045-20220726
hexagon              randconfig-r041-20220726

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
