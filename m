Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8905A5B8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Aug 2022 08:11:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDBB060E16;
	Tue, 30 Aug 2022 06:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDBB060E16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661839873;
	bh=JoK3h48wn2rt13Ltv9L18XGh2wKXNb9WaF0foO/lU5I=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5Lc4AAo37AlsJf+9bmYyIHrJ2XkTfBwEs50nUUmgaq815H0RYV9u/woxCWKdijg03
	 Z5EBk6ghwPH9Xs+V9LvkhL4Ttq+TkL3fLA39zhG3D3ErqcjWPAIwOusU7atNpGJwc1
	 yD5qxLZbnHE/Pzo3YWk0MLRsgEJVzlX4Pg7HbzITA9JbEA4kPZtSASOgpExgEjfewP
	 ZJpw+Xpw/84u2XLMDgfE9cG6flteRuBy8GTa8kTOvcQPgNPDeuw5kG0wNQ+It0VzyW
	 sbuGAZcUD/2SdpIFBOdb3QRKs0M1jT6aWLl/4m+VKsCTaXuLJDms0phF+FKImDhxEC
	 LDcgsy69BoznA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TgUDoh-EhgG2; Tue, 30 Aug 2022 06:11:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB8A360BC6;
	Tue, 30 Aug 2022 06:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB8A360BC6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A3371BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 06:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6B0981461
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 06:11:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6B0981461
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QkV4RrS_U5zl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Aug 2022 06:11:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 089B481463
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 089B481463
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 06:11:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="381388674"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="381388674"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 23:11:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="641235783"
Received: from lkp-server02.sh.intel.com (HELO e45bc14ccf4d) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 29 Aug 2022 23:11:04 -0700
Received: from kbuild by e45bc14ccf4d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oSuSl-0000cX-1n;
 Tue, 30 Aug 2022 06:11:03 +0000
Date: Tue, 30 Aug 2022 14:10:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <630da9c7.r+g62Vcct/3mz/5V%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661839866; x=1693375866;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=meUvwjJIWkvwpIEQFKnCh8d9c8nUsDC9k68zPnXV1JU=;
 b=SvhGQ2cHONkwNeEqNHM5CRUjUIFtJAxdSOve7e8Cn19My/K9UF1KnImM
 RVIf4Ir03/M+hgaMjBIoFk/szHo07AUiz289EVscz2IcO6ipZxyB4F1do
 E0LpUgBBDGJQ+0FD/CLoMGdhQiA3jnxmfdUOapm4QlR8f2hjoml/sj/YG
 zcfNPSLDmS/S4ztle+y+MLq/PBFaZI+qJAijT6H4teudiHCWkK6+L85s1
 eFOcr1O6vBg71Z8lAlphoiz1WbTNTdg2mrOD/EbW3zdID63GUBwrx8Rd6
 08FuUVE3SJjf1tOQ1R8z68/87ieOXkeRfVDsgqRrrRagvphlDPy0Zql23
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SvhGQ2cH
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 70f840ca01a2b9c0a657e1afb9753396e80966c4
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
branch HEAD: 70f840ca01a2b9c0a657e1afb9753396e80966c4  ice: Add set_termios tty operations handle to GNSS

elapsed time: 814m

configs tested: 79
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
microblaze                          defconfig
powerpc                 mpc8540_ads_defconfig
x86_64                              defconfig
powerpc                           allnoconfig
sh                             sh03_defconfig
x86_64                           allyesconfig
powerpc                          allmodconfig
x86_64                               rhel-8.3
sh                               allmodconfig
powerpc                      makalu_defconfig
mips                             allyesconfig
x86_64               randconfig-a003-20220829
x86_64               randconfig-a002-20220829
x86_64               randconfig-a001-20220829
x86_64               randconfig-a005-20220829
x86_64               randconfig-a004-20220829
x86_64               randconfig-a006-20220829
i386                 randconfig-a001-20220829
i386                 randconfig-a003-20220829
i386                 randconfig-a002-20220829
m68k                             allmodconfig
m68k                             allyesconfig
i386                 randconfig-a005-20220829
i386                 randconfig-a006-20220829
i386                 randconfig-a004-20220829
alpha                            allyesconfig
arc                              allyesconfig
i386                                defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
arc                  randconfig-r043-20220830
sh                            migor_defconfig
sh                      rts7751r2d1_defconfig
arc                  randconfig-r043-20220829
i386                             allyesconfig
xtensa                           alldefconfig
arm                                 defconfig
arm                              allyesconfig
csky                              allnoconfig
arc                               allnoconfig
arm64                            allyesconfig
alpha                             allnoconfig
riscv                             allnoconfig
arm                             rpc_defconfig
alpha                               defconfig
sh                            shmin_defconfig
ia64                             allmodconfig

clang tested configs:
arm                         shannon_defconfig
mips                           ip28_defconfig
powerpc                        fsp2_defconfig
s390                             alldefconfig
hexagon              randconfig-r041-20220829
hexagon              randconfig-r045-20220829
arm                  colibri_pxa270_defconfig
mips                        bcm63xx_defconfig
i386                 randconfig-a011-20220829
i386                 randconfig-a014-20220829
i386                 randconfig-a013-20220829
i386                 randconfig-a012-20220829
x86_64               randconfig-k001-20220829
i386                 randconfig-a015-20220829
i386                 randconfig-a016-20220829
x86_64               randconfig-a011-20220829
x86_64               randconfig-a012-20220829
x86_64               randconfig-a013-20220829
x86_64               randconfig-a014-20220829
hexagon              randconfig-r041-20220830
x86_64               randconfig-a016-20220829
s390                 randconfig-r044-20220830
x86_64               randconfig-a015-20220829
hexagon              randconfig-r045-20220830
riscv                randconfig-r042-20220830
riscv                            alldefconfig
arm                        magician_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
