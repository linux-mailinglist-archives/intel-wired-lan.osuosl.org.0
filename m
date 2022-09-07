Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454835B0AA5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Sep 2022 18:52:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03F01405DB;
	Wed,  7 Sep 2022 16:52:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03F01405DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662569563;
	bh=mrStq6iNV8TSH2iy7AaN7IZdYtyOLAoG9mKkvTAFulQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ghAxCeyLWlgvuC+wVcIM/2sI3iVM9a7KdZfrZdXVp8v/PjZO0+REKs3JReYThnKDv
	 Il6Eueiaziq/qvjDmLA0CDUCSEk5YGhHDldnqZGyFjxdnKD7WyDLp8qzY3IYBHpwDM
	 XH3KACMLe823rxRcA13cm7dNFVCR+sRW3xdxJ6v53vQ2/7hZqtWqCwVMZtGM47VrzN
	 Bj3gub1Y3JbYZV/14BEm+LtKH+Sh3l4RRrDhpzsDM6OmQI8026y27ist+asIw0pI99
	 23MB5d/B8zYo6QCenMorxgbum7o5FwdSmfx4Jhj0szXd9lTB3jF6wjSnFWcOPiOC2t
	 0V8PN63Ng0qGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wDTAPmyZyAvt; Wed,  7 Sep 2022 16:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5B9C405C5;
	Wed,  7 Sep 2022 16:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5B9C405C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FC5D1BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 16:52:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46E8E4055A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 16:52:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46E8E4055A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kZptJSvSs_do for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Sep 2022 16:52:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39C3B4054B
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39C3B4054B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 16:52:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="360897846"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="360897846"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 09:38:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="647700843"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 07 Sep 2022 09:38:23 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oVy4E-0006m5-1t;
 Wed, 07 Sep 2022 16:38:22 +0000
Date: Thu, 08 Sep 2022 00:37:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6318c8df.vYfzUKy4fvhdBNx9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662569555; x=1694105555;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=TLrmd9faVd0cN3JjjBFQz2iZ5p7yJS38Bqk8Qpk6Igo=;
 b=BGYSEoHTMNeyAJlRh7sjnlVvfFX7nwLzIukYDCwadL4kTyE7rWYNUTHX
 //tbhIiesBFkb7JzsOIap0hoRAmRjmfgPZlyn+G8M+2U7a8utTx654yVL
 AJD9Off9Ih8C3QlDvzCJr2y29Y+1epAuLR65NdNhUWR8RKcXDInQLHV85
 dS/vOB7ZPXI6wbJ6g1uSPrOhskIYKAdxyXIr0FjakW7Jx2SjLqhNGpr5z
 CoNqeKtdiLIRhnQDpBsnCJipMIUlI6epxIvAq+uoZBXYQWCuk0jUsn+k2
 D5NEYDXlY4ZOI1ssRnXanCSrqXoERnt6ciKI/auDsbgy8Dzep1Ldexq5F
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BGYSEoHT
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 17b9ddbe33a99dfd174e8c268f9b1bfbb1024934
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 17b9ddbe33a99dfd174e8c268f9b1bfbb1024934  i40e: Fix ethtool rx-flow-hash setting for X722

elapsed time: 1036m

configs tested: 130
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                  randconfig-r043-20220906
riscv                randconfig-r042-20220906
i386                                defconfig
s390                 randconfig-r044-20220906
x86_64                        randconfig-a015
x86_64                        randconfig-a004
powerpc                          allmodconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a013
arc                              allyesconfig
x86_64                              defconfig
x86_64                        randconfig-a011
mips                             allyesconfig
powerpc                           allnoconfig
i386                             allyesconfig
sh                               allmodconfig
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                               rhel-8.3
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a006
m68k                             allmodconfig
x86_64                          rhel-8.3-func
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                         rhel-8.3-kunit
x86_64                           allyesconfig
arm                                 defconfig
x86_64                           rhel-8.3-syz
i386                          randconfig-a005
x86_64                           rhel-8.3-kvm
arm                              allyesconfig
i386                          randconfig-a012
arm64                            allyesconfig
i386                          randconfig-a014
i386                          randconfig-a016
powerpc                    adder875_defconfig
sh                        dreamcast_defconfig
sh                   sh7770_generic_defconfig
sh                          lboxre2_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc                mpc7448_hpc2_defconfig
alpha                               defconfig
arm                           sama5_defconfig
powerpc                     tqm8548_defconfig
arm                          iop32x_defconfig
mips                           ip32_defconfig
csky                             alldefconfig
m68k                                defconfig
powerpc                     pq2fads_defconfig
xtensa                          iss_defconfig
i386                          randconfig-c001
sh                          rsk7264_defconfig
m68k                        mvme16x_defconfig
sh                 kfr2r09-romimage_defconfig
sh                          r7780mp_defconfig
sparc                       sparc64_defconfig
parisc64                            defconfig
powerpc                 canyonlands_defconfig
arm                           viper_defconfig
s390                             allmodconfig
parisc                generic-32bit_defconfig
riscv             nommu_k210_sdcard_defconfig
xtensa                              defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
loongarch                           defconfig
loongarch                         allnoconfig
xtensa                  nommu_kc705_defconfig
powerpc                    amigaone_defconfig
arm                        cerfcube_defconfig
sparc                            allyesconfig
sh                           se7705_defconfig
powerpc                 mpc837x_mds_defconfig
m68k                          hp300_defconfig
sh                            titan_defconfig
sh                     sh7710voipgw_defconfig
sh                   sh7724_generic_defconfig
nios2                         10m50_defconfig
powerpc                  storcenter_defconfig
powerpc                      tqm8xx_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc                           allyesconfig
sh                  sh7785lcr_32bit_defconfig
openrisc                            defconfig
arm                            mps2_defconfig
arc                          axs103_defconfig
m68k                          atari_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                      rts7751r2d1_defconfig
sh                          landisk_defconfig
arm                           u8500_defconfig
ia64                             alldefconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220906
hexagon              randconfig-r045-20220906
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
arm                       spear13xx_defconfig
mips                      malta_kvm_defconfig
arm                    vt8500_v6_v7_defconfig
arm                     davinci_all_defconfig
arm                              alldefconfig
powerpc                        icon_defconfig
powerpc                      obs600_defconfig
powerpc                     tqm5200_defconfig
powerpc                     mpc512x_defconfig
arm                           spitz_defconfig
riscv                randconfig-r042-20220907
hexagon              randconfig-r041-20220907
hexagon              randconfig-r045-20220907
s390                 randconfig-r044-20220907

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
