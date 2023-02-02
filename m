Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 995F2687D06
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Feb 2023 13:15:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E96F841BC3;
	Thu,  2 Feb 2023 12:15:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E96F841BC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675340140;
	bh=6QUIFdmbUHRBefmnW9ZtHT+aiK3S9+4/jRk9IGXKx+g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=d1NbNj0OzulLTviaxhn7Jh7zzyXinmhk6blOf/y4z98uBFP786PHJLEjLHpx8NWzH
	 VPQoS6NkzSoQ15yqpn7XqF3dIwW5LS5xJK8ve29gmX/MlIz2Me1qgYv8ePlK9EjoXJ
	 lsZMFCAvyOds5srWwsmHXRLNXvluShqVp1yhrFKNGyJCNyAAvd2UjR3/Yu2eEDIuA8
	 0GZcxf1mws/P3smsZUAAH8FOlgmAoHVqI/vtmIPEzciHUdWRykvabdxsqcUdOjSiAV
	 KSuXyJBI/fg6nd5z53T5s3jCkZKWW/w2PnOp9+0D5FTXw+x7PDfCexXUzcsiknIHj8
	 6CZtOJV4+j4SA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxjYuDki3ast; Thu,  2 Feb 2023 12:15:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09B9D41BB6;
	Thu,  2 Feb 2023 12:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09B9D41BB6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 063041BF426
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 12:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D079941BB7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 12:15:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D079941BB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mkHSfLc4rspz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Feb 2023 12:15:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99F7A41BB6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 99F7A41BB6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 12:15:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="326126486"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="326126486"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:15:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="667271458"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="667271458"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 02 Feb 2023 04:15:29 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNYUz-0006UO-0J;
 Thu, 02 Feb 2023 12:15:29 +0000
Date: Thu, 02 Feb 2023 20:14:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63dba942.I0hY9vhsw+qd/icS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675340131; x=1706876131;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=jhOYGzDhjK4t9wVkj/+Oz2TmU11miEz2oa8MGYCNvWs=;
 b=RBbkAsaYVMY7liKwlBCzgdSLuRRAXalvYgVvPnSGPwhVctKi0OtIIF81
 5cSDEP4F3X23AcidCYkjHmjTH8hYNsRl30zJ4IDqeQG1ho1X6dIEKmjQQ
 K4VIgZQ8T2T9c5f6iF2n5Ar9fW+HAGLB6DQ1VabZdhDXCQ3CYrpIht34o
 tfLh+6JgBFeJrwmT6QYNDWTVKkHOfnC398wPaTlEE4Jm0F728KDhQ2fNi
 sLFih+u2//LMICcea7MR3ldloxqWJgphzJCuxCIvOLqZSY1V/D6V1bhKb
 5UwFvXJx+ElvHGZwVicboebL+HM0Cs7HYdeMX5WVDZui65TzRrJ4ZD9F0
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RBbkAsaY
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 64466c407a73e7c4fc49d50f4604cd22b53e50eb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 64466c407a73e7c4fc49d50f4604cd22b53e50eb  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netfilter/nf

elapsed time: 1833m

configs tested: 129
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
ia64                             allmodconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
i386                                defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                          randconfig-c001
arm                                 defconfig
arm                              allyesconfig
x86_64               randconfig-a006-20230130
x86_64               randconfig-a004-20230130
x86_64               randconfig-a005-20230130
x86_64               randconfig-a002-20230130
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                 randconfig-a003-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a006-20230130
i386                 randconfig-a002-20230130
i386                 randconfig-a005-20230130
arc                              allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allmodconfig
alpha                            allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arc                        nsim_700_defconfig
sparc                       sparc64_defconfig
arm                              allmodconfig
arm                       imx_v6_v7_defconfig
powerpc                      pcm030_defconfig
parisc                generic-32bit_defconfig
powerpc                       holly_defconfig
mips                             allyesconfig
arc                          axs101_defconfig
m68k                       m5475evb_defconfig
m68k                             allyesconfig
powerpc                        warp_defconfig
sh                            shmin_defconfig
sh                            titan_defconfig
sparc                               defconfig
um                                  defconfig
sh                          rsk7269_defconfig
powerpc                    klondike_defconfig
x86_64               randconfig-c001-20230130
i386                 randconfig-c001-20230130
arm                  randconfig-c002-20230130
mips                  decstation_64_defconfig
arm                         cm_x300_defconfig
m68k                           virt_defconfig
arm                         vf610m4_defconfig
loongarch                         allnoconfig
powerpc                      pasemi_defconfig
ia64                            zx1_defconfig
arc                      axs103_smp_defconfig
arm                  randconfig-c002-20230129
loongarch                           defconfig
xtensa                         virt_defconfig
powerpc                 mpc85xx_cds_defconfig
m68k                                defconfig
parisc                              defconfig
powerpc                          allyesconfig
riscv                               defconfig
csky                                defconfig
x86_64                                  kexec
nios2                               defconfig
parisc64                            defconfig
riscv                randconfig-r042-20230202
s390                 randconfig-r044-20230202
arc                  randconfig-r043-20230202
arm64                            allyesconfig

clang tested configs:
i386                 randconfig-a014-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a011-20230130
x86_64                        randconfig-k001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r045-20230130
s390                 randconfig-r044-20230130
riscv                randconfig-r042-20230129
hexagon              randconfig-r041-20230129
hexagon              randconfig-r045-20230129
hexagon              randconfig-r041-20230130
riscv                randconfig-r042-20230130
s390                 randconfig-r044-20230129
x86_64               randconfig-a014-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a012-20230130
mips                  cavium_octeon_defconfig
powerpc                     skiroot_defconfig
powerpc                    gamecube_defconfig
x86_64                          rhel-8.3-rust
powerpc                     akebono_defconfig
i386                             allyesconfig
arm                          pcm027_defconfig
powerpc                       ebony_defconfig
arm                  colibri_pxa300_defconfig
mips                      pic32mzda_defconfig
hexagon                             defconfig

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
