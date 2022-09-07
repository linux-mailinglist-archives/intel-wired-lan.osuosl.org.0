Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D34B5B0AA1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Sep 2022 18:50:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A73B60E25;
	Wed,  7 Sep 2022 16:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A73B60E25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662569446;
	bh=tqTPbd2naljT1TdnFyEtqtA5SJGNLrJ8heLb9OWObaw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7IdUU4hWy1Ff009rlalwNR+8M4moChtu/PN6M+DH+WXWCo5lsHedwrWqoo81uODt5
	 rxyccjsoImyBc7XF6Wn+sR9bD1KV1o9mXdXgNV0uPb/TheaXmzANd4Q/pYXOLzdc7E
	 1OpM1hvCHnM4sVg7+LurLxt2AriP04ef2zKkpFUHG3djj9eK+HUROZN1WMGT+WVmMA
	 ehjg/m31EOhCVQOD6DXmMBdc3E/RKBAXueZvHeKGt/letKKIKpUdTLSzSKs4sv45QM
	 XiwDeF1nVC2kZNQVQkxvaCcj/4OWSWwxrn0+NuZ7iWtdePjAXtr5m4pp2+KhmJ8+0u
	 +uVYqE8/+lSLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lmjkrLYOrVPx; Wed,  7 Sep 2022 16:50:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC9E860E1E;
	Wed,  7 Sep 2022 16:50:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC9E860E1E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C5781BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 16:50:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70D1860E13
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 16:50:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70D1860E13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mj-Z7x_G5yZS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Sep 2022 16:50:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9C0E60E1E
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E9C0E60E1E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 16:50:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="295669079"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="295669079"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 09:50:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="682888531"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 07 Sep 2022 09:50:23 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oVyFq-0006mb-2k;
 Wed, 07 Sep 2022 16:50:22 +0000
Date: Thu, 08 Sep 2022 00:49:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6318cb93.wyxyiMS5WDOEpvXV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662569437; x=1694105437;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Jy+XLRScF1IIwInRssFHlnoZs64o21N7gRLr5rmvXks=;
 b=GDDg6kG44P9xIJVZD2aqsfKZpAliJ1tm95TdF/QvJzX7Czzv2UVySM05
 RDIbPQg5cm2cUs12fasw3xr7jHHnwZcQDS1LS+VXIZMoEk2KDhrH7bkvI
 mHNdeA2/MyBS6jaaM6NU5ClUFr6OoJ3nViXURqpwwJHYHxsNX4onpOnIc
 hxdtzruDNHj3rMUxI+N7t5/fG1/koxbmdWskP5BcM8mj/dgL5w4GNR2QN
 6QfMF9lh7V0GVR399N9wNvOo0VDDMwYR4YxRXdYC7Wbj3U+5MFispSvy3
 8ZBfT6c5gppnXr9ogYn8Uo89KNml0dz74f488OCeR145PsG+sekIs1FCH
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GDDg6kG4
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 04cbaa6c08e3974760c7ac5a70256d736444f6f0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 04cbaa6c08e3974760c7ac5a70256d736444f6f0  ice: Simplify memory allocation in ice_sched_init_port()

elapsed time: 1122m

configs tested: 142
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220906
riscv                randconfig-r042-20220906
s390                 randconfig-r044-20220906
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
m68k                             allmodconfig
i386                                defconfig
alpha                            allyesconfig
x86_64                        randconfig-a013
x86_64                              defconfig
i386                          randconfig-a001
arc                              allyesconfig
x86_64                        randconfig-a011
x86_64                               rhel-8.3
i386                             allyesconfig
x86_64                        randconfig-a004
m68k                             allyesconfig
i386                          randconfig-a003
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                           allyesconfig
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                           rhel-8.3-syz
arm                                 defconfig
powerpc                    adder875_defconfig
sh                        dreamcast_defconfig
sh                   sh7770_generic_defconfig
sh                          lboxre2_defconfig
arm64                            allyesconfig
arm                              allyesconfig
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
powerpc                    sam440ep_defconfig
m68k                          amiga_defconfig
m68k                        stmark2_defconfig
xtensa                         virt_defconfig
ia64                         bigsur_defconfig
arm                        keystone_defconfig
m68k                          multi_defconfig
sh                                  defconfig
mips                     loongson1b_defconfig
arm                             pxa_defconfig
mips                           gcw0_defconfig
parisc64                         alldefconfig

clang tested configs:
hexagon              randconfig-r041-20220906
hexagon              randconfig-r045-20220906
x86_64                        randconfig-a005
x86_64                        randconfig-a001
i386                          randconfig-a002
x86_64                        randconfig-a016
x86_64                        randconfig-a003
x86_64                        randconfig-a012
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
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
