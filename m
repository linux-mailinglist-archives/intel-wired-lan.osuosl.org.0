Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E23C5BFA3D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 11:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFFCE81358;
	Wed, 21 Sep 2022 09:08:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFFCE81358
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663751318;
	bh=Sb3XcH4HpifGDhS2vd724i7usVxkrbSG9Iz9QprvLjU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4kIsa+I0shuoZmUA/2h8An33FIviOKKyfItdNfUlTpWkc+dVKkGk+aYkn8g34bvCG
	 Vf1xjcGcrz4gNpC5828abE2+nY24UBtDg9gUWmzxr8x91x8hN4LXG0WviZng9tqmdx
	 znyjNNd3KA1PrzSK7dyJZFpHaYgrvl+f55UyPWgC+xbqJmKRysjXemgiDnKWQctlF2
	 gYsxAu6FqLLAM0Adaa+YfSIdDhFXN5qvAbrkMhtiplHZtr2LLDPpDsXwPGnMLGPJiJ
	 ZKxnNZqzGvyegeifYi9kkdblaEQ5OfhjlN8QBFfYK02sVcVQJiBhLI8Wijz8jJauXE
	 VZIWsil5CPwtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PUyPV9e81sYF; Wed, 21 Sep 2022 09:08:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 886D4812F9;
	Wed, 21 Sep 2022 09:08:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 886D4812F9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 419B01BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 09:08:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B4DB80A87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 09:08:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B4DB80A87
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VIA819D3T4MG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Sep 2022 09:08:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DBD781391
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DBD781391
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 09:08:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="280321603"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="280321603"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 02:08:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="744879443"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 21 Sep 2022 02:08:13 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oaviG-0003RZ-2m;
 Wed, 21 Sep 2022 09:08:12 +0000
Date: Wed, 21 Sep 2022 17:07:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632ad46f.jihfRZlfmi/Xiy5K%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663751306; x=1695287306;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vEvdBLH4c953mb37feOeDvtSrg9mnWvEs1ju9lBsCp0=;
 b=lLQToJ+74ot9XvsAh01IsdZOq+ko/BQtuD8J6stfDyUDbRVXBa9jne0F
 gs7P48aWdfTk5z9CkzelKA1Kqtmkt4wS5QK+GaBnTMC5ctclW8aGUJaTy
 eRDp6sWHm02FuyhyJaK2kOrVlZ1Uwn2TZRMIzFpywGWoVJXsuCA0LAZva
 vvi5w05SarGOfEyXw4l1VNJCltAFX2lUNEgSAiAhxuy6JB3RZv+MEht3P
 CPwJvSGKsBQAjtNdxJhhGmLTLYisjif/R7CbhvMIUAYeH+hSAFpfwLsZV
 K2OdK5BPmgvJ22m9LPWic5P32UioYz3Ek7n2cU3KmRn3tZqOyCqxoIlZz
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lLQToJ+7
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b119baacd8e500ab8adfb37ac0f78d46f6946cd7
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
branch HEAD: b119baacd8e500ab8adfb37ac0f78d46f6946cd7  ice: Fix ice_xdp_xmit() when XDP TX queue number is not sufficient

elapsed time: 721m

configs tested: 80
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
s390                                defconfig
sh                               allmodconfig
s390                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
arc                  randconfig-r043-20220921
riscv                randconfig-r042-20220921
s390                 randconfig-r044-20220921
i386                                defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a013
x86_64                              defconfig
x86_64                        randconfig-a011
i386                          randconfig-a001
i386                          randconfig-a003
i386                             allyesconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a015
i386                          randconfig-a005
x86_64                        randconfig-a006
ia64                             allmodconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                       m5275evb_defconfig
parisc                              defconfig
loongarch                 loongson3_defconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc64                            defconfig
parisc                           allyesconfig

clang tested configs:
hexagon              randconfig-r041-20220921
hexagon              randconfig-r045-20220921
x86_64                        randconfig-a001
x86_64                        randconfig-a012
i386                          randconfig-a002
x86_64                        randconfig-a003
x86_64                        randconfig-a014
i386                          randconfig-a004
x86_64                        randconfig-a016
i386                          randconfig-a006
x86_64                        randconfig-a005
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
arm                        multi_v5_defconfig
mips                        bcm63xx_defconfig
powerpc                          allyesconfig
powerpc                      acadia_defconfig
mips                      pic32mzda_defconfig
riscv                             allnoconfig
mips                           ip28_defconfig
powerpc                     pseries_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
