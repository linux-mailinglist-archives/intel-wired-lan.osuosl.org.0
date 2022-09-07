Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8CE5B0CAE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Sep 2022 20:47:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8200560F32;
	Wed,  7 Sep 2022 18:47:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8200560F32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662576424;
	bh=hbmUgEkV7y0oEJUgtRdkcyVHq4tJlDseci+d5y5/rx4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=p9swUk/CqyNj2czEnu/PwdjGKULkEnsRGG7lbDk5X4WrRcJ0SPN2cfsanfUBnsWbl
	 2nwnV85koGKdcATUeQ2k3qENE6EQSRMeT3sIefAZaLcDTU+CSsPa1e4kTjB693OY9B
	 eu6IQPBdmrdyEL62fkVVmNUo4+9dE6tsf//bz/UcsulWFPmabnSwUHUjD0xkDzIyXa
	 GULZgXa/LWDzRhs4rQ+47mm7JOfE+pQuWvqDmAbjA7bzSxcdc4jIT2PXTuftp3gtwK
	 H6+raGW8wWEVshiQPrKWdYOBZxL19bLNCbj7WT4JuWlTeJvaSLeFuPkj2WPJPjz3Km
	 Rc1mZVCdE1BbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c3CXTPeT5x9E; Wed,  7 Sep 2022 18:47:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EC6960F23;
	Wed,  7 Sep 2022 18:47:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EC6960F23
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C3E3D1BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 18:46:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B15660F23
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 18:46:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B15660F23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 46gk19yxGs-d for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Sep 2022 18:46:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF14760E57
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF14760E57
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 18:46:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="295701717"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="295701717"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 11:46:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="682933473"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 07 Sep 2022 11:46:26 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oW049-0006rh-1J;
 Wed, 07 Sep 2022 18:46:25 +0000
Date: Thu, 08 Sep 2022 02:45:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6318e6e3.P8XbPQ1oFpFsjbdN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662576416; x=1694112416;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/Qm/0JoiAJhSJYsYktVbKMuN1NSTx2biHKo9GKEL0NI=;
 b=DIWr2imTFghjF2mv7reB9BvNip1w1oVQrHz1rFNjfXDpmOh3eg1pUyxZ
 DZEaIAabVl2mb8I8zyMP18LkH1Sb9gt7ruhJR+1LVL0M+AOHny7oZn52/
 Vr/kHIWOvTe7H1d06q4Tk9ihdeY6XPx7E1iHFIkwoOqVWVxZ9WbYuxyPT
 NwfdxPaRvKCi1oPFMwAPBwOyyoaVeVaSbW6VIUF4bypdEJRXggk2a7uk2
 bBPRhHrZLsitpFisSbLimmqGpMXRaLVnLIRlxZSS5B8ylT5/NkQssxjrW
 z52jAuqT8oMLtJxDYUOXwp6D9qLCfeEZMVblxQZ4pIb0MHWQDolbHOooc
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DIWr2imT
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 11c12adcbc1598d91e73ab6ddfa41d25a01478ed
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
branch HEAD: 11c12adcbc1598d91e73ab6ddfa41d25a01478ed  iavf: Fix race between iavf_close and iavf_reset_task

elapsed time: 1238m

configs tested: 151
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220906
riscv                randconfig-r042-20220906
s390                 randconfig-r044-20220906
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
powerpc                           allnoconfig
i386                             allyesconfig
i386                                defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
powerpc                    adder875_defconfig
sh                        dreamcast_defconfig
sh                   sh7770_generic_defconfig
sh                          lboxre2_defconfig
sh                               allmodconfig
i386                          randconfig-c001
powerpc                      bamboo_defconfig
powerpc                      makalu_defconfig
arc                         haps_hs_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
nios2                         10m50_defconfig
arc                          axs103_defconfig
xtensa                          iss_defconfig
powerpc                          allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
mips                             allyesconfig
sh                          r7780mp_defconfig
sparc                       sparc64_defconfig
parisc64                            defconfig
powerpc                 canyonlands_defconfig
arm                           viper_defconfig
s390                             allmodconfig
parisc                generic-32bit_defconfig
riscv             nommu_k210_sdcard_defconfig
xtensa                              defconfig
m68k                        mvme16x_defconfig
xtensa                  nommu_kc705_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
powerpc                mpc7448_hpc2_defconfig
alpha                               defconfig
arm                           sama5_defconfig
powerpc                     tqm8548_defconfig
arm                          iop32x_defconfig
mips                           ip32_defconfig
powerpc                    amigaone_defconfig
arm                        cerfcube_defconfig
sparc                            allyesconfig
sh                           se7705_defconfig
csky                             alldefconfig
m68k                                defconfig
powerpc                     pq2fads_defconfig
sh                            titan_defconfig
sh                     sh7710voipgw_defconfig
sh                          rsk7264_defconfig
sh                 kfr2r09-romimage_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc                           allyesconfig
powerpc                 mpc837x_mds_defconfig
sh                   sh7724_generic_defconfig
powerpc                  storcenter_defconfig
powerpc                      tqm8xx_defconfig
sh                  sh7785lcr_32bit_defconfig
openrisc                            defconfig
arm                            mps2_defconfig
s390                                defconfig
arc                                 defconfig
s390                             allyesconfig
m68k                          atari_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                      rts7751r2d1_defconfig
sh                          landisk_defconfig
arm                           u8500_defconfig
ia64                             alldefconfig
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
ia64                             allmodconfig
sparc                               defconfig

clang tested configs:
hexagon              randconfig-r041-20220906
hexagon              randconfig-r045-20220906
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-k001
powerpc                     akebono_defconfig
powerpc                   lite5200b_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
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
powerpc                     tqm8540_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
