Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5455ED449
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Sep 2022 07:38:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 907CC404E5;
	Wed, 28 Sep 2022 05:38:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 907CC404E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664343499;
	bh=TsS6FH6N/ekFGRhnPQnP7B/OQusXRblC0zKL+hyl0sA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jfmGz/uuQZJWhsZj7XV3FLGsnw34CqjvMRN4BhcWLRv6aeNloJ00La6IIatkFXM01
	 /puGnUFLNiY4H92uLgC2jKBvz9tun5p6IIC9JAihdimS9+JkfN8cEnYRc97yfpr4h3
	 hzEXsKApDafSkFxIrH0qWR4er9y0shW9OD8K6MTJ+gvykxRcof7zrC5/Z4oWXw0hBG
	 6FsQYveF9cD9ut/vcKpejQP/k1bCaXFq3Rdvk6ct5IRES6OasCSQxbq+RZyQ53szzn
	 fX3J8PenmneKY9hggYb5oayFFcjIE4QsyhwjLrGSCWLoZJSJY3QFJut6ObkKufr2qm
	 Vb6sj3zL/VKMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1iA5AhCSDpCh; Wed, 28 Sep 2022 05:38:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F659404F6;
	Wed, 28 Sep 2022 05:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F659404F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4236C1BF909
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 05:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A263404C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 05:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A263404C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6p13vGevfrMO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Sep 2022 05:38:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8148A402FE
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8148A402FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 05:38:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="299108272"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="299108272"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 22:38:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="710832660"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="710832660"
Received: from lkp-server02.sh.intel.com (HELO dfa2c9fcd321) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Sep 2022 22:38:09 -0700
Received: from kbuild by dfa2c9fcd321 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1odPlo-00022q-3A;
 Wed, 28 Sep 2022 05:38:08 +0000
Date: Wed, 28 Sep 2022 13:37:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6333dda4.UjV4zBHDiHRpJNhV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664343491; x=1695879491;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=w+HBVfUtaREybCJupsemBZ8vugqvCZGAWksfOQGFQqA=;
 b=hF1tLNTCMSJZIsZUGW3S5DwWsJUhEcNrYJlpT1fjDqzJKedRF9G9YWg4
 qKYB5HIpt3DkDuRZUEWwGA+/0fN9eq6bWUBxzA3kgO+GRuauvZ3awZm08
 eAqpcFlccTxDgfBAklvVLw0f/V+MKLMi/5kXArNB+Gn9sLeBa90Dk4dmi
 PH/fIny2koOxO8JRcokQ3F9rNApMqR2zp9c1qcWV8g2qitrXuP8qair8Q
 tGDBbhUCAhotuSC1jhtC2650cEwWOQqojBoBLYoxrgWagLpn6b1Bn4gdL
 MHfiigRMKmaPBgVr/yho0C14C/9QJPhakFzvwua2eB4gvDzXwNDvOxEKz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hF1tLNTC
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 b3056ae2b57858b02b376b3fed6077040caf14b4
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
branch HEAD: b3056ae2b57858b02b376b3fed6077040caf14b4  ice: xsk: drop power of 2 ring size restriction for AF_XDP

elapsed time: 721m

configs tested: 111
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
arc                                 defconfig
sh                               allmodconfig
alpha                               defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
x86_64                              defconfig
s390                             allmodconfig
x86_64                               rhel-8.3
s390                                defconfig
i386                                defconfig
arm                                 defconfig
x86_64               randconfig-a002-20220926
arc                  randconfig-r043-20220925
x86_64               randconfig-a004-20220926
x86_64                           allyesconfig
x86_64               randconfig-a001-20220926
x86_64               randconfig-a003-20220926
arc                              allyesconfig
riscv                randconfig-r042-20220925
x86_64               randconfig-a005-20220926
alpha                            allyesconfig
x86_64               randconfig-a006-20220926
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
m68k                             allmodconfig
s390                             allyesconfig
i386                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
m68k                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
ia64                             allmodconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
s390                       zfcpdump_defconfig
powerpc                      tqm8xx_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220925
i386                          randconfig-c001
i386                 randconfig-a003-20220926
i386                 randconfig-a001-20220926
i386                 randconfig-a006-20220926
i386                 randconfig-a004-20220926
i386                 randconfig-a005-20220926
i386                 randconfig-a002-20220926
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
sh                           se7750_defconfig
powerpc                      mgcoge_defconfig
riscv                            allyesconfig
i386                             alldefconfig
mips                        bcm47xx_defconfig
sh                          urquell_defconfig
arc                      axs103_smp_defconfig
sparc                             allnoconfig
sparc64                             defconfig
arm                           h3600_defconfig
nios2                            alldefconfig
arm                         s3c6400_defconfig
m68k                        m5272c3_defconfig
arm                           stm32_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig

clang tested configs:
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926
i386                 randconfig-a011-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a014-20220926
i386                 randconfig-a016-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
i386                          randconfig-a002
i386                          randconfig-a004
x86_64               randconfig-a016-20220926
x86_64               randconfig-a015-20220926
i386                          randconfig-a006
x86_64                        randconfig-k001
powerpc                 mpc8560_ads_defconfig
powerpc                    ge_imp3a_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                         lpc32xx_defconfig
arm                       imx_v4_v5_defconfig
riscv                    nommu_virt_defconfig
arm                  colibri_pxa270_defconfig
arm                       versatile_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
