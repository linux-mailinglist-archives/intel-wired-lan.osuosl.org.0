Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0407F57D99C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 06:31:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 990DD4183A;
	Fri, 22 Jul 2022 04:31:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 990DD4183A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658464288;
	bh=X4FSfFEKT57y4I+Ki0f1ThkN/o5G4qQ/zDnoJ0MtEms=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oZL+PbboprSYJin65iay5VM8nJFXvNS81Qgle4rIpa2s51AWv8Q8LkzfDcOrkNo5P
	 wFdsOBp4q1436XVf2x059Rt48ERsRc4V8PMQzTedDrolkJg+/zM7F32mXHmyXZQ1e8
	 5Fe0U4TJSx0OoFDqRu2Gdlm9wHbOqIfpUrcPzpa3lVAbzh9D2Lh5rmpSV/Cld7UAfY
	 gFNofAoBT6zeY7um3aDktmQCSlEEdR1L+D6BZd+WpUDuBK91pxRSMAuTweLjODOuQP
	 Cf4kNBBJ7YroD8sq4qsIr/eKJsVEp1YhZIN7v2tvJ2BQH+/0SLk16OrhgAXwhota5M
	 hRLH5iziOd8IQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5_yDfb3_NPjZ; Fri, 22 Jul 2022 04:31:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15DF841837;
	Fri, 22 Jul 2022 04:31:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15DF841837
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 35F871BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 04:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1CD6E404E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 04:31:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CD6E404E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rrk-8THiypQ0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jul 2022 04:31:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4D2C4013A
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4D2C4013A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 04:31:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="267008943"
X-IronPort-AV: E=Sophos;i="5.93,184,1654585200"; d="scan'208";a="267008943"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 21:31:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,184,1654585200"; d="scan'208";a="574023655"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 21 Jul 2022 21:31:15 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oEkJm-0000xk-2w;
 Fri, 22 Jul 2022 04:31:14 +0000
Date: Fri, 22 Jul 2022 12:30:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62da27ef.BeiEan0L1/2pS0Rr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658464278; x=1690000278;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ydSwkCT4KgANxbAyuQnQltn2eNV9/sn5igJGEyeuKOg=;
 b=Kn9Ldw4OqU7vYm8X6exWDThzQMLIR9IFDhBeVL3ObgYgEEhwMY0nUnZ1
 MNcxwP2hGlZtD9F9XyGwkoux9dtSIosGkz8W0H3ktrfYHVluzsubFvoa/
 t06Y2ftxzxJPdmOijWE90e6Mkzz4hzGdgF1K7MH+ID67tpUtvMN+GFnKG
 luHcZnUVbFv3517cOcHYS9upDwLxYVt0W+P0noID+tLoKQb3AbmwPmnQu
 vchUZheAO1tqVNUqYNY86OJXLfJLCifAx/IzNV8ZDgb/Nj5Fd09Ozb2Go
 hdNOhHbOok2P8CbsX9pAhVz45yP35a8Qhmg7DwPt8BzETabqrO/RqKHwn
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kn9Ldw4O
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 5588d628027092e66195097bdf6835ddf64418b3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 5588d628027092e66195097bdf6835ddf64418b3  net/cdc_ncm: Increase NTB max RX/TX values to 64kb

elapsed time: 880m

configs tested: 90
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
sh                               j2_defconfig
arc                          axs101_defconfig
alpha                               defconfig
mips                         cobalt_defconfig
arm                      jornada720_defconfig
sh                              ul2_defconfig
powerpc                        cell_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                           xway_defconfig
mips                          rb532_defconfig
powerpc                 mpc834x_mds_defconfig
m68k                        mvme147_defconfig
mips                     loongson1b_defconfig
arm                         at91_dt_defconfig
m68k                                defconfig
s390                          debug_defconfig
nios2                         10m50_defconfig
sh                               alldefconfig
powerpc                     tqm8555_defconfig
arm                             pxa_defconfig
powerpc                      tqm8xx_defconfig
mips                           gcw0_defconfig
arm                        oxnas_v6_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                              debian-10.3
arm                  randconfig-c002-20220721
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
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
mips                malta_qemu_32r6_defconfig
mips                  cavium_octeon_defconfig
powerpc                     tqm8540_defconfig
arm                          ixp4xx_defconfig
powerpc                  mpc866_ads_defconfig
mips                      malta_kvm_defconfig
arm                                 defconfig
arm                           spitz_defconfig
mips                      pic32mzda_defconfig
mips                           mtx1_defconfig
powerpc                 mpc836x_mds_defconfig
arm                      tct_hammer_defconfig
mips                        qi_lb60_defconfig
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
hexagon              randconfig-r041-20220721
s390                 randconfig-r044-20220721
hexagon              randconfig-r045-20220721
riscv                randconfig-r042-20220721

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
