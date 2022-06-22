Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 033A85545BD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jun 2022 13:34:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E4DF408ED;
	Wed, 22 Jun 2022 11:34:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E4DF408ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655897697;
	bh=u61FhIpfz/KWvVbsSEgE1rYzAniMGIRh5zObBRLugag=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=C9gDvKEsA89hH5UOc9lluMciDYRwdqCal30rhBtqfnTk5ofldroC9n/TvhZqsAjCW
	 H+3wNVASkabw+awjJ2xPu6GGiAn5h9O26uJxb4bLkZb7gofrkQSRqfLKRtU2ZVdb+6
	 5CSpnN675J7OYPjYzjlt2duLVQMSji1awYOQL90EtUCuqLWrIscg44ew2jSBkFMeDG
	 flYfn6dKmOHhj1858/rCBPZCGtdhrJv20w8HNvvUuI2RvsKG2J6811LA5rzkZ6itKV
	 74ljEI+GzDFpMVYPyXjjp+sEn6e8dsP1jQ0pC+K3VQ5j8kN03le6lg6Qc1teu93rs9
	 DIzGmzzP8MT5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ew3GDXtfzeEl; Wed, 22 Jun 2022 11:34:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E61F2408E1;
	Wed, 22 Jun 2022 11:34:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E61F2408E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 604D81BF20F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 11:34:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38E5E611E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 11:34:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38E5E611E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1elQaDnQaHVd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jun 2022 11:34:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1764E60B3D
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1764E60B3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 11:34:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="279160386"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="279160386"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 04:34:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="585684735"
Received: from lkp-server02.sh.intel.com (HELO a67cc04a5eeb) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 22 Jun 2022 04:34:45 -0700
Received: from kbuild by a67cc04a5eeb with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o3ydA-0001DB-My;
 Wed, 22 Jun 2022 11:34:44 +0000
Date: Wed, 22 Jun 2022 19:34:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62b2fe4d.D3QRvmcvDCuvSe7A%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655897687; x=1687433687;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=OD1HvuFL7g5oFS5tHuLXPOqcx//4C7q+O+xT75jqq2U=;
 b=Dx+Xydmrx5nrW6d3avdZ5oKklvuWrngFe5+r4L7tYYjkMI6QkD/Ek4vt
 Th+T+NgitKtaaHXp3FX30dJl9xGDptQNXi9uWRPIv9jEyPB8bLeTkj8KL
 fkE+CoHTFPomcLbGz22Jl5vhpud8CieQqbnLH08UxtWXPt4DfV6F1s0Sy
 D4hnqlnQDFhwJXe7YlSoqMgaLiUmE9LIQEuul3ppaab4l7y3FaHz+sD9d
 6l6Kf0ODytFDSvl72NPYByTmxxjOHJKtwjRHeJdGAAL8JfSKCnMjl4ROc
 LXESKPee9yQPgYQiWpav2lQL3hzz6pcqRojh75Fqpher4xKFBi45zrO9M
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dx+Xydmr
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 a632b2a4c920ce5af29410fb091f7ee6d2e77dc6
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
branch HEAD: a632b2a4c920ce5af29410fb091f7ee6d2e77dc6  ice: ethtool: Prohibit improper channel config for DCB

elapsed time: 725m

configs tested: 92
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
sh                           se7780_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                     mpc83xx_defconfig
sh                          urquell_defconfig
sparc                       sparc64_defconfig
m68k                          multi_defconfig
alpha                            alldefconfig
mips                       bmips_be_defconfig
m68k                       m5249evb_defconfig
ia64                         bigsur_defconfig
openrisc                 simple_smp_defconfig
ia64                             alldefconfig
sh                                  defconfig
ia64                      gensparse_defconfig
powerpc                         wii_defconfig
sh                          sdk7786_defconfig
arm                         axm55xx_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                   sh7770_generic_defconfig
powerpc                      ppc6xx_defconfig
mips                            ar7_defconfig
riscv                               defconfig
m68k                            q40_defconfig
arm                           stm32_defconfig
sh                          kfr2r09_defconfig
arm                      integrator_defconfig
powerpc                     redwood_defconfig
arm                     eseries_pxa_defconfig
powerpc                     tqm8541_defconfig
arm                             rpc_defconfig
openrisc                            defconfig
ia64                             allmodconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220622
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                         orion5x_defconfig
mips                        maltaup_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220622
s390                 randconfig-r044-20220622
hexagon              randconfig-r045-20220622
riscv                randconfig-r042-20220622

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
