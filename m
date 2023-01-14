Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C32966AAE8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 11:25:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C1B8F40474;
	Sat, 14 Jan 2023 10:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1B8F40474
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673691946;
	bh=QghkoaDJ8vHTAzUJMWvVXp0OsPHvjdFPFJ24XZvO/BA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=H6oYaNeGMK9CTDOqpARVys/tBG5V92pUqSATov/UN31TunTly41TDiO/CaadZRx74
	 TZ0iYpT1p4Nxy/QT5TEQpJW2l8jTRgliyuIqJi+eLtvyK/UXA7lIPr1397PBjWzWIe
	 HHOg288p/kU2rwFJK/b8gITjdgvHnPTVDsHJoLshX8BuMZXI3YO/m7bcehYUV2vx5x
	 uYTBYOS58vuWrFJmpZn5+3CcU/nhKV9sIEA31m5cV+Gnje7F687nyFN/0t/OBFWRCF
	 2iANZeeTH70OUC3S49/SHjh0N7HOB3WiJKnu4qX8utWKIvDr0yO3HcZnpPnxdi2IXd
	 NuOlTK3Ml1jxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tSANMl3X4lpY; Sat, 14 Jan 2023 10:25:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 905D240199;
	Sat, 14 Jan 2023 10:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 905D240199
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 625441BF419
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 10:25:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C1548212C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 10:25:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C1548212C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1d7TTHFLdQZx for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jan 2023 10:25:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 318A081E5C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 318A081E5C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 10:25:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="388676908"
X-IronPort-AV: E=Sophos;i="5.97,216,1669104000"; d="scan'208";a="388676908"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2023 02:25:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="721794642"
X-IronPort-AV: E=Sophos;i="5.97,216,1669104000"; d="scan'208";a="721794642"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jan 2023 02:25:37 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pGdjE-000C0c-0x;
 Sat, 14 Jan 2023 10:25:36 +0000
Date: Sat, 14 Jan 2023 18:25:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63c28317.PU3ZMVXygYt/e9CI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673691939; x=1705227939;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=y1r5hMX1mKLfGrzoEWuKQlBODdyY1BcqG785OEaVgSo=;
 b=ZQDd+sCE5y4QJrzrkJOxqp9+gfhZXYnMkSZoox70jYknAFE57BXwVOW6
 rh7DPZByaejS6UDJBBj4P6324IGxpmXInHHFJTWwZYyqxzWE61OOhcuWy
 yBMrTME4w1AWNNBlwJEfkSApHVIxBM+58REMY26hUmwBIJCOYG6PUyMwK
 dwSaFiZyY/dfpHHPzonUuzzZ9doi0Wmqp0f3CNQiuDGssGza/FyzqPBmH
 ls2uszzHR8ez5YK+Ic09utpZdyj1jQmfjX4BvBvKCTFFCkt5IGMIBoKvq
 +B3a9KmwYQwrjJy065zHN/siPfed4o7ojanySY/m3eKK5kB/t5WbevD+6
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZQDd+sCE
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e3f5e33e25be375bfe23533d541eeaade24fadad
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
branch HEAD: e3f5e33e25be375bfe23533d541eeaade24fadad  ice: avoid bonding causing auxiliary plug/unplug under RTNL lock

elapsed time: 726m

configs tested: 98
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                            allnoconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
m68k                             allmodconfig
alpha                            allyesconfig
s390                             allyesconfig
m68k                             allyesconfig
arc                              allyesconfig
powerpc                           allnoconfig
x86_64                              defconfig
x86_64                           rhel-8.3-bpf
i386                          randconfig-a001
x86_64                               rhel-8.3
i386                          randconfig-a003
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                           rhel-8.3-syz
arc                  randconfig-r043-20230112
ia64                             allmodconfig
x86_64                        randconfig-a013
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a011
riscv                randconfig-r042-20230112
x86_64                          rhel-8.3-func
x86_64                        randconfig-a006
s390                 randconfig-r044-20230112
i386                          randconfig-a005
x86_64                        randconfig-a015
sh                               allmodconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
mips                             allyesconfig
powerpc                          allmodconfig
i386                          randconfig-c001
arm                                 defconfig
i386                                defconfig
arm                              allyesconfig
arm64                            allyesconfig
arm                           corgi_defconfig
mips                           xway_defconfig
mips                        vocore2_defconfig
m68k                       m5249evb_defconfig
mips                  decstation_64_defconfig
arc                      axs103_smp_defconfig
mips                       bmips_be_defconfig
arm                            hisi_defconfig
um                                  defconfig
arm                          pxa3xx_defconfig
arm                      footbridge_defconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
i386                             allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
arm                  randconfig-r046-20230112
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r041-20230112
x86_64                        randconfig-a014
x86_64                          rhel-8.3-rust
hexagon              randconfig-r045-20230112
i386                          randconfig-a002
x86_64                        randconfig-a012
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a005
i386                          randconfig-a015
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
