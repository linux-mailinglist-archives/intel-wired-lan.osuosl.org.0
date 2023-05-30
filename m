Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 949DD715E29
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 13:57:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0749241E7F;
	Tue, 30 May 2023 11:57:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0749241E7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685447847;
	bh=ZRFJgZBC/Hzb2nv1sX6lMKhgJMzIk42qXsMx1NXfZSI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mlfWUN2NQh7L6Xks97inErIZ5BxIM9H+eq3UEVbkiTuz0RTNXFzZdeRCJIQ8sdYqP
	 g0WsakdNp5cRYomQ/x0vWHMVpYtpke0jv+8pbFswqnAynEae3Is+IapNtzjrP/WBGU
	 cq75vbXXFeKDyUmmKw5NGZU0AQyMx9dOZSf8clEuz15IP5Bto1VlMqv1zJa2D5jpdy
	 Hhfsf8CTWUFnWvDl0rD0fdUz/NXIZLsWpnW7w65tERydl8F8SzMcoj0PKYw39ZLMu3
	 QFJKic5XSocYzak0YGCQq7lpZOpUujxxT0F5vW79ocH1uJiO+wvPgqTnY7R1I8lhnD
	 o3RgDbDwj0Izw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XultibZBi9lr; Tue, 30 May 2023 11:57:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33D9E418B5;
	Tue, 30 May 2023 11:57:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33D9E418B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A05C1BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 11:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 505A3611FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 11:57:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 505A3611FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ar--eZFFkela for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 11:57:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8C8660F82
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8C8660F82
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 11:57:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="358143127"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="358143127"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 04:57:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="850738111"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="850738111"
Received: from lkp-server01.sh.intel.com (HELO fb1ced2c09fb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 30 May 2023 04:57:11 -0700
Received: from kbuild by fb1ced2c09fb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q3xyQ-0000NV-2r
 for intel-wired-lan@lists.osuosl.org; Tue, 30 May 2023 11:57:10 +0000
Date: Tue, 30 May 2023 19:56:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230530115651.9szE7%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685447838; x=1716983838;
 h=date:from:to:subject:message-id;
 bh=eC0DSKW2KnFSWHS//baENzLr67SugahGSkTmJdyZHbA=;
 b=d2at8/xYkoRkXemwl+ezReYesXDhrffgarZDOv8rQMX++HJfILYa02Qm
 4iZnKCnG1iBmWm61qL3pRsKXTyLcTqYkzpUutJ7PJLYJxu0xpj3CE89go
 mQwrGwujsdC7LTvU1wF9NwY1Crl+GBmwYQo1mbItnXLpDUjPaesHvd8O8
 RJT6/61dyQHCiCaVknsUeIq+OvL/MgKl4M8EcVZHxhPVEC8kNxKwCBDFz
 iw7PcUrmIuV/hi2MWCKoiwfN9VOmCirRvhgOgmpAXG+3Q6XLjy0Vs3PjU
 hTtp8MfPGb50pCnS0Cvxg9aHxxF5HHiW/SxY252Vp34XQwk7/XonSYbym
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d2at8/xY
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 367c72ccb915a94596005aebb78557aeba517e90
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 367c72ccb915a94596005aebb78557aeba517e90  ice: Don't dereference NULL in ice_gns_read error path

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202305281225.X8nTZBSM-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c:194:29: warning: variable 'tx_buf' set but not used [-Wunused-but-set-variable]
ld.lld: error: undefined symbol: ice_vf_vsi_disable_port_vlan
ld.lld: error: undefined symbol: ice_vf_vsi_enable_port_vlan

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- m68k-randconfig-s033-20230528
    `-- drivers-net-ethernet-intel-idpf-idpf_singleq_txrx.c:warning:variable-tx_buf-set-but-not-used
clang_recent_errors
`-- x86_64-randconfig-x074-20230529
    |-- ld.lld:error:undefined-symbol:ice_vf_vsi_disable_port_vlan
    `-- ld.lld:error:undefined-symbol:ice_vf_vsi_enable_port_vlan

elapsed time: 5419m

configs tested: 311
configs skipped: 8

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r006-20230526   gcc  
alpha                randconfig-r032-20230526   gcc  
arc                              alldefconfig   gcc  
arc                              allyesconfig   gcc  
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                  randconfig-r001-20230526   gcc  
arc                  randconfig-r013-20230526   gcc  
arc                  randconfig-r043-20230526   gcc  
arc                           tb10x_defconfig   gcc  
arc                    vdk_hs38_smp_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   clang
arm                         at91_dt_defconfig   gcc  
arm                         bcm2835_defconfig   clang
arm                                 defconfig   gcc  
arm                            hisi_defconfig   gcc  
arm                   milbeaut_m10v_defconfig   clang
arm                         nhk8815_defconfig   gcc  
arm                  randconfig-r046-20230526   gcc  
arm                             rpc_defconfig   gcc  
arm                        spear6xx_defconfig   gcc  
arm                           stm32_defconfig   gcc  
arm                           u8500_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230526   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230526   clang
csky         buildonly-randconfig-r002-20230526   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r016-20230526   gcc  
csky                 randconfig-r026-20230526   gcc  
hexagon              randconfig-r015-20230526   clang
hexagon              randconfig-r015-20230528   clang
hexagon              randconfig-r036-20230526   clang
hexagon              randconfig-r041-20230526   clang
hexagon              randconfig-r045-20230526   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230527   clang
i386                 randconfig-i001-20230528   gcc  
i386                 randconfig-i002-20230527   clang
i386                 randconfig-i002-20230528   gcc  
i386                 randconfig-i003-20230527   clang
i386                 randconfig-i003-20230528   gcc  
i386                 randconfig-i004-20230527   clang
i386                 randconfig-i004-20230528   gcc  
i386                 randconfig-i005-20230527   clang
i386                 randconfig-i005-20230528   gcc  
i386                 randconfig-i006-20230527   clang
i386                 randconfig-i006-20230528   gcc  
i386                 randconfig-i011-20230526   clang
i386                 randconfig-i011-20230528   clang
i386                 randconfig-i012-20230526   clang
i386                 randconfig-i012-20230528   clang
i386                 randconfig-i013-20230526   clang
i386                 randconfig-i013-20230528   clang
i386                 randconfig-i014-20230526   clang
i386                 randconfig-i014-20230528   clang
i386                 randconfig-i015-20230526   clang
i386                 randconfig-i015-20230528   clang
i386                 randconfig-i016-20230526   clang
i386                 randconfig-i016-20230528   clang
i386                 randconfig-i051-20230526   gcc  
i386                 randconfig-i051-20230528   gcc  
i386                 randconfig-i052-20230526   gcc  
i386                 randconfig-i052-20230528   gcc  
i386                 randconfig-i053-20230526   gcc  
i386                 randconfig-i053-20230528   gcc  
i386                 randconfig-i054-20230526   gcc  
i386                 randconfig-i054-20230528   gcc  
i386                 randconfig-i055-20230526   gcc  
i386                 randconfig-i055-20230528   gcc  
i386                 randconfig-i056-20230526   gcc  
i386                 randconfig-i056-20230528   gcc  
i386                 randconfig-i061-20230526   gcc  
i386                 randconfig-i061-20230528   gcc  
i386                 randconfig-i062-20230526   gcc  
i386                 randconfig-i062-20230528   gcc  
i386                 randconfig-i063-20230526   gcc  
i386                 randconfig-i063-20230528   gcc  
i386                 randconfig-i064-20230526   gcc  
i386                 randconfig-i064-20230528   gcc  
i386                 randconfig-i065-20230526   gcc  
i386                 randconfig-i065-20230528   gcc  
i386                 randconfig-i066-20230526   gcc  
i386                 randconfig-i066-20230528   gcc  
i386                 randconfig-i071-20230526   clang
i386                 randconfig-i071-20230528   clang
i386                 randconfig-i072-20230526   clang
i386                 randconfig-i072-20230528   clang
i386                 randconfig-i073-20230526   clang
i386                 randconfig-i073-20230528   clang
i386                 randconfig-i074-20230526   clang
i386                 randconfig-i074-20230528   clang
i386                 randconfig-i075-20230526   clang
i386                 randconfig-i075-20230528   clang
i386                 randconfig-i076-20230526   clang
i386                 randconfig-i076-20230528   clang
i386                 randconfig-i081-20230526   clang
i386                 randconfig-i081-20230528   clang
i386                 randconfig-i082-20230526   clang
i386                 randconfig-i082-20230528   clang
i386                 randconfig-i083-20230526   clang
i386                 randconfig-i083-20230528   clang
i386                 randconfig-i084-20230526   clang
i386                 randconfig-i084-20230528   clang
i386                 randconfig-i085-20230526   clang
i386                 randconfig-i085-20230528   clang
i386                 randconfig-i086-20230526   clang
i386                 randconfig-i086-20230528   clang
i386                 randconfig-i091-20230526   gcc  
i386                 randconfig-i091-20230528   gcc  
i386                 randconfig-i092-20230526   gcc  
i386                 randconfig-i092-20230528   gcc  
i386                 randconfig-i093-20230526   gcc  
i386                 randconfig-i093-20230528   gcc  
i386                 randconfig-i094-20230526   gcc  
i386                 randconfig-i094-20230528   gcc  
i386                 randconfig-i095-20230526   gcc  
i386                 randconfig-i095-20230528   gcc  
i386                 randconfig-i096-20230526   gcc  
i386                 randconfig-i096-20230528   gcc  
i386                 randconfig-r012-20230526   clang
ia64                         bigsur_defconfig   gcc  
ia64                            zx1_defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230526   gcc  
loongarch            randconfig-r014-20230526   gcc  
loongarch            randconfig-r035-20230526   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                 randconfig-r002-20230526   gcc  
m68k                 randconfig-r034-20230526   gcc  
m68k                           virt_defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
microblaze           randconfig-r021-20230526   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   gcc  
mips                            gpr_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                        vocore2_defconfig   gcc  
nios2        buildonly-randconfig-r003-20230526   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r022-20230526   gcc  
openrisc                 simple_smp_defconfig   gcc  
openrisc                       virt_defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                      acadia_defconfig   clang
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc                     mpc512x_defconfig   clang
powerpc               mpc834x_itxgp_defconfig   clang
powerpc                 mpc8540_ads_defconfig   gcc  
powerpc              randconfig-r025-20230526   clang
powerpc                     sequoia_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r005-20230526   clang
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230526   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230526   clang
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                                  defconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                          rsk7264_defconfig   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                          sdk7780_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r031-20230526   gcc  
um                               alldefconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230526   gcc  
x86_64               randconfig-a002-20230526   gcc  
x86_64               randconfig-a003-20230526   gcc  
x86_64               randconfig-a004-20230526   gcc  
x86_64               randconfig-a005-20230526   gcc  
x86_64               randconfig-a006-20230526   gcc  
x86_64               randconfig-a011-20230526   clang
x86_64               randconfig-a011-20230528   clang
x86_64               randconfig-a012-20230526   clang
x86_64               randconfig-a012-20230528   clang
x86_64               randconfig-a013-20230526   clang
x86_64               randconfig-a013-20230528   clang
x86_64               randconfig-a014-20230526   clang
x86_64               randconfig-a014-20230528   clang
x86_64               randconfig-a015-20230526   clang
x86_64               randconfig-a015-20230528   clang
x86_64               randconfig-a016-20230526   clang
x86_64               randconfig-a016-20230528   clang
x86_64               randconfig-k001-20230528   clang
x86_64               randconfig-r003-20230526   gcc  
x86_64               randconfig-r033-20230526   gcc  
x86_64               randconfig-x051-20230526   clang
x86_64               randconfig-x051-20230528   clang
x86_64               randconfig-x052-20230526   clang
x86_64               randconfig-x052-20230528   clang
x86_64               randconfig-x053-20230526   clang
x86_64               randconfig-x053-20230528   clang
x86_64               randconfig-x054-20230526   clang
x86_64               randconfig-x054-20230528   clang
x86_64               randconfig-x055-20230526   clang
x86_64               randconfig-x055-20230528   clang
x86_64               randconfig-x056-20230526   clang
x86_64               randconfig-x056-20230528   clang
x86_64               randconfig-x061-20230526   clang
x86_64               randconfig-x061-20230528   clang
x86_64               randconfig-x062-20230526   clang
x86_64               randconfig-x062-20230528   clang
x86_64               randconfig-x063-20230526   clang
x86_64               randconfig-x063-20230528   clang
x86_64               randconfig-x064-20230526   clang
x86_64               randconfig-x064-20230528   clang
x86_64               randconfig-x065-20230526   clang
x86_64               randconfig-x065-20230528   clang
x86_64               randconfig-x066-20230526   clang
x86_64               randconfig-x066-20230528   clang
x86_64               randconfig-x071-20230526   gcc  
x86_64               randconfig-x071-20230528   gcc  
x86_64               randconfig-x072-20230526   gcc  
x86_64               randconfig-x072-20230528   gcc  
x86_64               randconfig-x073-20230526   gcc  
x86_64               randconfig-x073-20230528   gcc  
x86_64               randconfig-x074-20230526   gcc  
x86_64               randconfig-x074-20230528   gcc  
x86_64               randconfig-x075-20230526   gcc  
x86_64               randconfig-x075-20230528   gcc  
x86_64               randconfig-x076-20230526   gcc  
x86_64               randconfig-x076-20230528   gcc  
x86_64               randconfig-x081-20230526   gcc  
x86_64               randconfig-x081-20230528   gcc  
x86_64               randconfig-x082-20230526   gcc  
x86_64               randconfig-x082-20230528   gcc  
x86_64               randconfig-x083-20230526   gcc  
x86_64               randconfig-x083-20230528   gcc  
x86_64               randconfig-x084-20230526   gcc  
x86_64               randconfig-x084-20230528   gcc  
x86_64               randconfig-x085-20230526   gcc  
x86_64               randconfig-x085-20230528   gcc  
x86_64               randconfig-x086-20230526   gcc  
x86_64               randconfig-x086-20230528   gcc  
x86_64               randconfig-x091-20230526   clang
x86_64               randconfig-x091-20230528   clang
x86_64               randconfig-x092-20230526   clang
x86_64               randconfig-x092-20230528   clang
x86_64               randconfig-x093-20230526   clang
x86_64               randconfig-x093-20230528   clang
x86_64               randconfig-x094-20230526   clang
x86_64               randconfig-x094-20230528   clang
x86_64               randconfig-x095-20230526   clang
x86_64               randconfig-x095-20230528   clang
x86_64               randconfig-x096-20230526   clang
x86_64               randconfig-x096-20230528   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                          iss_defconfig   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
