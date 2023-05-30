Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74240715E3B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 13:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05E5341E06;
	Tue, 30 May 2023 11:59:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05E5341E06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685447966;
	bh=xP00cmyEoex2qXzJ+QBmvPkOZ/JatBk3EJk78isz6Sc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Rfe3oDJaJOqnQrVdxzTrfVgYViyFzzfW5g1VWV2+1kFg5IOI6+bl/dokxXYHaTXVD
	 ftmJdVWh6b+oxx96zJfSj2Ylpd9rFWaxlH+lqk9Rmd1U+IO53LRMeWgahJKhxWWKDu
	 GJgiysJvc/dQINUBIABVlKMrQp6f0BSOb6FOtC/NsP42gaPGZWaeQHIbmN+vRMdl9e
	 2rHBvta7dg0SZR0c2y08NfKKdut6S/cbh81QPhlNoDc4qrcSzNWkFMrNv+xNfaDeGB
	 18kFi6R1oI5xiUC5xMdSxInvv8XEj3psjau2YqfGfUAm6KWcRf0jcVAarkVo6INkrR
	 HLkXfUxXZpbZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j3bmqiKBeWnQ; Tue, 30 May 2023 11:59:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F024741DCF;
	Tue, 30 May 2023 11:59:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F024741DCF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0CAA1BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 11:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 792EF40359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 11:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 792EF40359
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6mnlw8viAfBX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 11:59:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C968400F1
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C968400F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 11:59:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="357267368"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="357267368"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 04:59:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="709615606"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="709615606"
Received: from lkp-server01.sh.intel.com (HELO fb1ced2c09fb) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 30 May 2023 04:59:15 -0700
Received: from kbuild by fb1ced2c09fb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q3y0Q-0000QQ-2E
 for intel-wired-lan@lists.osuosl.org; Tue, 30 May 2023 11:59:14 +0000
Date: Tue, 30 May 2023 19:59:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230530115909.Yx9Fs%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685447957; x=1716983957;
 h=date:from:to:subject:message-id;
 bh=TGDPc8mhLPzUv9faL3HZi0X+/Qz5QjDq7FI84uEWT0E=;
 b=H7ciApR+BJjSvl98Eg8m1pC7zybUkE5AjRa0PQElLTU6duKwrT9vale0
 QG3trUyyBLD3UxITK4U36s0W+eIybTerkMNXK0VWkwwwjENPfig0cxgVh
 yUfO5JVD8Qtq0/yaUbQyfBvRct+GZ/JkIqhzM5Xgk1d88/DFZJSICziHA
 0LbxPr1HJpn/SwRFPihFWj7PjDngQg4/QAQ+gJCWZCHNCVBzNYogFlBCA
 VAeR1P6uWeV2KJf9yDFfWNJqq8Bwr/fm21OyhoySTxAHVGXNqaQEqRZT1
 411aRHk7rRtBJITf+TmitZ1o0SAvKT6C/gUAMlIaxxLfc4XU1DIKY0yCR
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H7ciApR+
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 28fa4319d54ac57b59c3510a1b288bc1353e0bf3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 28fa4319d54ac57b59c3510a1b288bc1353e0bf3  ice: Don't dereference NULL in ice_gns_read error path

elapsed time: 5420m

configs tested: 388
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230526   gcc  
alpha                randconfig-r026-20230530   gcc  
arc                              alldefconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs101_defconfig   gcc  
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                  randconfig-r031-20230530   gcc  
arc                  randconfig-r043-20230526   gcc  
arc                  randconfig-r043-20230530   gcc  
arc                           tb10x_defconfig   gcc  
arc                    vdk_hs38_smp_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   clang
arm                         at91_dt_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          gemini_defconfig   gcc  
arm                            hisi_defconfig   gcc  
arm                      jornada720_defconfig   gcc  
arm                        multi_v5_defconfig   clang
arm                         nhk8815_defconfig   gcc  
arm                  randconfig-r013-20230526   gcc  
arm                  randconfig-r034-20230526   clang
arm                  randconfig-r046-20230526   gcc  
arm                        realview_defconfig   gcc  
arm                             rpc_defconfig   gcc  
arm                        spear6xx_defconfig   gcc  
arm                           stm32_defconfig   gcc  
arm                           u8500_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r033-20230526   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r032-20230530   gcc  
hexagon              randconfig-r015-20230528   clang
hexagon              randconfig-r022-20230526   clang
hexagon              randconfig-r041-20230526   clang
hexagon              randconfig-r045-20230526   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r005-20230526   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230526   gcc  
i386                 randconfig-i001-20230528   gcc  
i386                 randconfig-i001-20230530   clang
i386                 randconfig-i002-20230526   gcc  
i386                 randconfig-i002-20230528   gcc  
i386                 randconfig-i002-20230530   clang
i386                 randconfig-i003-20230526   gcc  
i386                 randconfig-i003-20230528   gcc  
i386                 randconfig-i003-20230530   clang
i386                 randconfig-i004-20230526   gcc  
i386                 randconfig-i004-20230528   gcc  
i386                 randconfig-i004-20230530   clang
i386                 randconfig-i005-20230526   gcc  
i386                 randconfig-i005-20230528   gcc  
i386                 randconfig-i005-20230530   clang
i386                 randconfig-i006-20230526   gcc  
i386                 randconfig-i006-20230528   gcc  
i386                 randconfig-i006-20230530   clang
i386                 randconfig-i011-20230526   clang
i386                 randconfig-i011-20230528   clang
i386                 randconfig-i011-20230530   gcc  
i386                 randconfig-i012-20230526   clang
i386                 randconfig-i012-20230528   clang
i386                 randconfig-i012-20230530   gcc  
i386                 randconfig-i013-20230526   clang
i386                 randconfig-i013-20230528   clang
i386                 randconfig-i013-20230530   gcc  
i386                 randconfig-i014-20230526   clang
i386                 randconfig-i014-20230528   clang
i386                 randconfig-i014-20230530   gcc  
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
i386                 randconfig-i072-20230530   gcc  
i386                 randconfig-i073-20230526   clang
i386                 randconfig-i073-20230528   clang
i386                 randconfig-i074-20230526   clang
i386                 randconfig-i074-20230528   clang
i386                 randconfig-i074-20230530   gcc  
i386                 randconfig-i075-20230526   clang
i386                 randconfig-i075-20230528   clang
i386                 randconfig-i075-20230530   gcc  
i386                 randconfig-i076-20230526   clang
i386                 randconfig-i076-20230528   clang
i386                 randconfig-i076-20230530   gcc  
i386                 randconfig-i081-20230526   clang
i386                 randconfig-i081-20230528   clang
i386                 randconfig-i082-20230526   clang
i386                 randconfig-i082-20230528   clang
i386                 randconfig-i082-20230530   gcc  
i386                 randconfig-i083-20230526   clang
i386                 randconfig-i083-20230528   clang
i386                 randconfig-i083-20230530   gcc  
i386                 randconfig-i084-20230526   clang
i386                 randconfig-i084-20230528   clang
i386                 randconfig-i084-20230530   gcc  
i386                 randconfig-i085-20230526   clang
i386                 randconfig-i085-20230528   clang
i386                 randconfig-i085-20230530   gcc  
i386                 randconfig-i086-20230526   clang
i386                 randconfig-i086-20230528   clang
i386                 randconfig-i091-20230526   gcc  
i386                 randconfig-i091-20230528   gcc  
i386                 randconfig-i091-20230530   clang
i386                 randconfig-i092-20230526   gcc  
i386                 randconfig-i092-20230528   gcc  
i386                 randconfig-i092-20230530   clang
i386                 randconfig-i093-20230526   gcc  
i386                 randconfig-i093-20230528   gcc  
i386                 randconfig-i093-20230530   clang
i386                 randconfig-i094-20230526   gcc  
i386                 randconfig-i094-20230528   gcc  
i386                 randconfig-i094-20230530   clang
i386                 randconfig-i095-20230526   gcc  
i386                 randconfig-i095-20230528   gcc  
i386                 randconfig-i095-20230530   clang
i386                 randconfig-i096-20230526   gcc  
i386                 randconfig-i096-20230528   gcc  
i386                 randconfig-i096-20230530   clang
i386                 randconfig-r024-20230530   gcc  
ia64                         bigsur_defconfig   gcc  
ia64                            zx1_defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r036-20230526   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                 randconfig-r026-20230526   gcc  
m68k                 randconfig-r035-20230530   gcc  
m68k                           virt_defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
microblaze           randconfig-r012-20230530   gcc  
microblaze           randconfig-r023-20230526   gcc  
microblaze           randconfig-r023-20230530   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   clang
mips                        bcm47xx_defconfig   gcc  
mips         buildonly-randconfig-r006-20230526   clang
mips                            gpr_defconfig   gcc  
mips                           ip27_defconfig   clang
mips                           ip32_defconfig   gcc  
mips                     loongson1b_defconfig   gcc  
mips                     loongson2k_defconfig   clang
mips                  maltasmvp_eva_defconfig   gcc  
mips                 randconfig-r031-20230526   clang
mips                        vocore2_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230530   gcc  
nios2                randconfig-r035-20230526   gcc  
openrisc             randconfig-r006-20230526   gcc  
openrisc             randconfig-r012-20230526   gcc  
openrisc             randconfig-r036-20230530   gcc  
openrisc                 simple_smp_defconfig   gcc  
openrisc                       virt_defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r024-20230526   gcc  
parisc               randconfig-r032-20230526   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc                     mpc512x_defconfig   clang
powerpc               mpc834x_itxgp_defconfig   clang
powerpc                 mpc8540_ads_defconfig   gcc  
powerpc                      ppc44x_defconfig   clang
powerpc                     sequoia_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230526   gcc  
riscv                randconfig-r015-20230526   clang
riscv                randconfig-r016-20230526   clang
riscv                randconfig-r042-20230526   clang
riscv                randconfig-r042-20230530   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230526   gcc  
s390                 randconfig-r013-20230530   gcc  
s390                 randconfig-r014-20230530   gcc  
s390                 randconfig-r044-20230526   clang
s390                 randconfig-r044-20230530   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r004-20230526   gcc  
sh                        dreamcast_defconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                   randconfig-r022-20230530   gcc  
sh                          rsk7264_defconfig   gcc  
sh                          sdk7780_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc        buildonly-randconfig-r001-20230526   gcc  
sparc        buildonly-randconfig-r003-20230526   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r016-20230530   gcc  
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
x86_64               randconfig-a011-20230530   gcc  
x86_64               randconfig-a012-20230526   clang
x86_64               randconfig-a012-20230528   clang
x86_64               randconfig-a012-20230530   gcc  
x86_64               randconfig-a013-20230526   clang
x86_64               randconfig-a013-20230528   clang
x86_64               randconfig-a013-20230530   gcc  
x86_64               randconfig-a014-20230526   clang
x86_64               randconfig-a014-20230528   clang
x86_64               randconfig-a014-20230530   gcc  
x86_64               randconfig-a015-20230526   clang
x86_64               randconfig-a015-20230528   clang
x86_64               randconfig-a015-20230530   gcc  
x86_64               randconfig-a016-20230526   clang
x86_64               randconfig-a016-20230528   clang
x86_64               randconfig-a016-20230530   gcc  
x86_64               randconfig-k001-20230528   clang
x86_64               randconfig-x051-20230526   clang
x86_64               randconfig-x051-20230528   clang
x86_64               randconfig-x051-20230530   gcc  
x86_64               randconfig-x052-20230526   clang
x86_64               randconfig-x052-20230528   clang
x86_64               randconfig-x052-20230530   gcc  
x86_64               randconfig-x053-20230526   clang
x86_64               randconfig-x053-20230528   clang
x86_64               randconfig-x053-20230530   gcc  
x86_64               randconfig-x054-20230526   clang
x86_64               randconfig-x054-20230528   clang
x86_64               randconfig-x054-20230530   gcc  
x86_64               randconfig-x055-20230526   clang
x86_64               randconfig-x055-20230528   clang
x86_64               randconfig-x055-20230530   gcc  
x86_64               randconfig-x056-20230526   clang
x86_64               randconfig-x056-20230528   clang
x86_64               randconfig-x056-20230530   gcc  
x86_64               randconfig-x061-20230526   clang
x86_64               randconfig-x061-20230528   clang
x86_64               randconfig-x061-20230530   gcc  
x86_64               randconfig-x062-20230526   clang
x86_64               randconfig-x062-20230528   clang
x86_64               randconfig-x062-20230530   gcc  
x86_64               randconfig-x063-20230526   clang
x86_64               randconfig-x063-20230528   clang
x86_64               randconfig-x063-20230530   gcc  
x86_64               randconfig-x064-20230526   clang
x86_64               randconfig-x064-20230528   clang
x86_64               randconfig-x064-20230530   gcc  
x86_64               randconfig-x065-20230526   clang
x86_64               randconfig-x065-20230528   clang
x86_64               randconfig-x065-20230530   gcc  
x86_64               randconfig-x066-20230526   clang
x86_64               randconfig-x066-20230528   clang
x86_64               randconfig-x066-20230530   gcc  
x86_64               randconfig-x071-20230526   gcc  
x86_64               randconfig-x071-20230528   gcc  
x86_64               randconfig-x071-20230530   clang
x86_64               randconfig-x072-20230526   gcc  
x86_64               randconfig-x072-20230528   gcc  
x86_64               randconfig-x072-20230530   clang
x86_64               randconfig-x073-20230526   gcc  
x86_64               randconfig-x073-20230528   gcc  
x86_64               randconfig-x073-20230530   clang
x86_64               randconfig-x074-20230526   gcc  
x86_64               randconfig-x074-20230528   gcc  
x86_64               randconfig-x074-20230530   clang
x86_64               randconfig-x075-20230526   gcc  
x86_64               randconfig-x075-20230528   gcc  
x86_64               randconfig-x075-20230530   clang
x86_64               randconfig-x076-20230526   gcc  
x86_64               randconfig-x076-20230528   gcc  
x86_64               randconfig-x076-20230530   clang
x86_64               randconfig-x081-20230526   gcc  
x86_64               randconfig-x081-20230528   gcc  
x86_64               randconfig-x081-20230530   clang
x86_64               randconfig-x082-20230526   gcc  
x86_64               randconfig-x082-20230528   gcc  
x86_64               randconfig-x082-20230530   clang
x86_64               randconfig-x083-20230526   gcc  
x86_64               randconfig-x083-20230528   gcc  
x86_64               randconfig-x083-20230530   clang
x86_64               randconfig-x084-20230526   gcc  
x86_64               randconfig-x084-20230528   gcc  
x86_64               randconfig-x084-20230530   clang
x86_64               randconfig-x085-20230526   gcc  
x86_64               randconfig-x085-20230528   gcc  
x86_64               randconfig-x085-20230530   clang
x86_64               randconfig-x086-20230526   gcc  
x86_64               randconfig-x086-20230528   gcc  
x86_64               randconfig-x086-20230530   clang
x86_64               randconfig-x091-20230526   clang
x86_64               randconfig-x091-20230528   clang
x86_64               randconfig-x091-20230530   gcc  
x86_64               randconfig-x092-20230526   clang
x86_64               randconfig-x092-20230528   clang
x86_64               randconfig-x092-20230530   gcc  
x86_64               randconfig-x093-20230526   clang
x86_64               randconfig-x093-20230528   clang
x86_64               randconfig-x093-20230530   gcc  
x86_64               randconfig-x094-20230526   clang
x86_64               randconfig-x094-20230528   clang
x86_64               randconfig-x094-20230530   gcc  
x86_64               randconfig-x095-20230526   clang
x86_64               randconfig-x095-20230528   clang
x86_64               randconfig-x095-20230530   gcc  
x86_64               randconfig-x096-20230526   clang
x86_64               randconfig-x096-20230528   clang
x86_64               randconfig-x096-20230530   gcc  
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
xtensa               randconfig-r001-20230526   gcc  
xtensa               randconfig-r011-20230526   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
