Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9D557E6F0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 21:01:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50D3260F64;
	Fri, 22 Jul 2022 19:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50D3260F64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658516507;
	bh=6ixaDRDBSDdRbsg9sTGjirM801mHBvUfi/oFU+4qDlI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ueZJGMk4wzZk9ScR9+4cLaJkmckYMMGLKLlJe5Xh5D2zSlzDrRi4Xpo4M9ZX9bgG/
	 gLRNI/ouJ/N1P8mkoy2TpGZx9/yh+iuNxSl1n2nKVZgPXB9MlFvpt9CNmfqxsINYoi
	 qcZNwVk9kXvLZ4VkbZm33T7/kjJDe7/+FyDl4EXKpOAd89N0Dyi4fhfG5jk8SmWCD2
	 z6VNtmcgqFlj6d5ijQzqWCf0La7ii+seI/8ySScZJKTn0c+VJ082RfG+u7ghKc6hb2
	 EdgECpiyhJeNtF06hz/ad3jd3XOXDpMZiiNwAjaeeKYNJPx1GcdShSkQdi0+Q0mGkJ
	 ZRzW1er73093g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GtOo7OTRiipO; Fri, 22 Jul 2022 19:01:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C57C60B01;
	Fri, 22 Jul 2022 19:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C57C60B01
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED8921BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 19:01:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3A2384988
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 19:01:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3A2384988
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2MoTMEwRWGQ3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jul 2022 19:01:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A44C48487E
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A44C48487E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 19:01:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10416"; a="313120427"
X-IronPort-AV: E=Sophos;i="5.93,186,1654585200"; d="scan'208";a="313120427"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 12:01:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,186,1654585200"; d="scan'208";a="549273960"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 22 Jul 2022 12:01:35 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oExu2-0001k1-1Q;
 Fri, 22 Jul 2022 19:01:34 +0000
Date: Sat, 23 Jul 2022 03:00:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62daf3d4.vCKKpLh11VlXLtNz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658516499; x=1690052499;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xi7kl7QTeyb+CK0WH/nftckap716aI0AOFuhctBsnw8=;
 b=B1okslelAi9SIAVxllMisUffkOrwB8KXSbijfXhv6YVQTB91Fjm6o7Dm
 t8csBqzXyKyZ/N3wtOLLEBAq8nTj95GjoifJbSsA+qgx1gPm3I3zQlpY4
 RMW7Ff50sw+zZqj2fTbcIw/GxDm5HEpRQMmtANsBZYmR1v57qZTE3UEDR
 oqYmyfEZkR4nas3XrTVsVgKknP3z/UpYucZ8jqtL/G0IYNg62SgVXpfBo
 v+XMJkd6DMpL5//BBansw/tZEx1G1Te0ucwopFpuZcfFRF3rr+Ofx/sVT
 MgsZrG12xXX2+moLwTajLauHHbhEMn1r8Grs7bBjUxcyvTdSxX0rtgDw8
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B1okslel
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 7b6f9462a3234c35cf808453d39a074a04e71de1
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
branch HEAD: 7b6f9462a3234c35cf808453d39a074a04e71de1  ice: change devlink code to read NVM in blocks

elapsed time: 14535m

configs tested: 118
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220722
sh                   sh7724_generic_defconfig
csky                                defconfig
powerpc                 mpc85xx_cds_defconfig
mips                     loongson1b_defconfig
sh                               j2_defconfig
arc                          axs101_defconfig
alpha                               defconfig
mips                         cobalt_defconfig
arm                      jornada720_defconfig
m68k                             allyesconfig
arm                        realview_defconfig
sh                              ul2_defconfig
powerpc                        cell_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                           xway_defconfig
mips                          rb532_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                      makalu_defconfig
m68k                          atari_defconfig
parisc                              defconfig
arc                      axs103_smp_defconfig
sh                        apsh4ad0a_defconfig
csky                             alldefconfig
mips                           ip32_defconfig
arm                            xcep_defconfig
arm                           h5000_defconfig
mips                         db1xxx_defconfig
mips                            ar7_defconfig
loongarch                           defconfig
m68k                            mac_defconfig
nios2                         10m50_defconfig
sh                               alldefconfig
powerpc                     tqm8555_defconfig
powerpc                    amigaone_defconfig
arm                     eseries_pxa_defconfig
sh                        edosk7760_defconfig
sh                          rsk7203_defconfig
arc                        vdk_hs38_defconfig
powerpc                   currituck_defconfig
mips                      maltasmvp_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
loongarch                         allnoconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220721
arm                  randconfig-c002-20220722
ia64                             allmodconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220721
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                         s3c2410_defconfig
arm                          ixp4xx_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                          allyesconfig
powerpc                     akebono_defconfig
powerpc                    mvme5100_defconfig
mips                      malta_kvm_defconfig
arm                                 defconfig
arm                           spitz_defconfig
arm                          pxa168_defconfig
i386                             allyesconfig
x86_64                           allyesconfig
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
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r041-20220721
s390                 randconfig-r044-20220721
hexagon              randconfig-r045-20220721
riscv                randconfig-r042-20220721
hexagon              randconfig-r041-20220722
hexagon              randconfig-r045-20220722

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
