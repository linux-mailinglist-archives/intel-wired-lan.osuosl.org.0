Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CBE5BB706
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Sep 2022 09:50:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DF8F842CD;
	Sat, 17 Sep 2022 07:49:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DF8F842CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663400998;
	bh=Chli/0BKDwDM7H97L7HnvyITWTFfZVylNlgPC3Ei76w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KV9nmu35PNg3o7NE+tIPgr6MilLBvwuE6x4cS2J1HvfbPOzotT9L7Ix1X7IFCgQ37
	 8MkD/nywcOc3od15+ml52BzqcNRyxe9EX8Rbzir5ZtQjqgJXJVTraywKkXyFYvPwGV
	 wNkfAyGn+WoDqLiUT5MD8I4PpEsel0g/YfjzAi8R7NXex3IzPz6uB8rV9ZkyXuhqhL
	 WVKnXosYQa4mH52+m5o8/E7KvWFWzbDzXIJZbcFjEI84p1EH2fmIbdzyap3u8NQ/X6
	 3tvM3VQabLgf/zF+GJeI9nLAtf/2NbEWNfRdtMjasTZbmYiXp5HLKWUN5c8VGGZA6j
	 a9/frXXUi5kLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id usC2vk1MCHME; Sat, 17 Sep 2022 07:49:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A6D383FB8;
	Sat, 17 Sep 2022 07:49:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A6D383FB8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74CB81BF841
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Sep 2022 07:49:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53639419E1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Sep 2022 07:49:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53639419E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z9nWn0Bbp-b6 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Sep 2022 07:49:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECE08417A7
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ECE08417A7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Sep 2022 07:49:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="286176590"
X-IronPort-AV: E=Sophos;i="5.93,322,1654585200"; d="scan'208";a="286176590"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2022 00:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,322,1654585200"; d="scan'208";a="648523321"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 17 Sep 2022 00:49:49 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oZSaC-00007X-1E;
 Sat, 17 Sep 2022 07:49:48 +0000
Date: Sat, 17 Sep 2022 15:49:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63257c05.Os2c4KLcwLsBh/6S%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663400991; x=1694936991;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=gVqUb+nl7FVlKJctFjI9Wf+Uj+v7krkL+v6+akv1kg8=;
 b=YPWSuGSb82sVaZ1Fk3wGnIUOD8gmWiqXGBXvuYkE3klGwTkxGfhENVao
 j4m7O+bEq9WgQGMxdJjdb1wXyDgZRbmtOrg8tbl9S95kgj8I/rv+osxGg
 aurhR2ED5eQQ9QGM5LO/SyaH+E7KJSHCjbjKOhGltanF37EF6D6hMGJKw
 bEvqtu5uiROwFdl5gNuyWa/krdjifoATLGM3PYAJK47ijmzFmSIcixXun
 gy9ZpXgHkSnQ4hZcwKAxLFe38COeVEYuuUW9ZVxRyukeTqBxNWFB1BSOp
 PEFyHSDGRiKgDHiMoos13GdF9yiV9t8RWDeBdiTWtMJ03Jf4QdtuewuDO
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YPWSuGSb
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f2c3814b68e77a717cd7f3440dfec609bf5651ae
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: f2c3814b68e77a717cd7f3440dfec609bf5651ae  ice: Add support for VLAN priority filters in switchdev

elapsed time: 857m

configs tested: 105
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
arc                  randconfig-r043-20220916
s390                                defconfig
s390                             allmodconfig
x86_64                              defconfig
i386                                defconfig
s390                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                               rhel-8.3
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                             allyesconfig
i386                          randconfig-a003
x86_64                           allyesconfig
x86_64                        randconfig-a006
i386                          randconfig-a005
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
sh                           se7722_defconfig
csky                             alldefconfig
powerpc                     tqm8548_defconfig
m68k                        m5307c3_defconfig
sh                          lboxre2_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
xtensa                    xip_kc705_defconfig
mips                    maltaup_xpa_defconfig
sparc                               defconfig
powerpc                      pasemi_defconfig
sh                           se7724_defconfig
m68k                          atari_defconfig
sh                          rsk7269_defconfig
powerpc                       maple_defconfig
arm                           imxrt_defconfig
sh                            titan_defconfig
m68k                       m5275evb_defconfig
powerpc                   motionpro_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                          polaris_defconfig
arm                           sama5_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
mips                 decstation_r4k_defconfig
ia64                             allmodconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
powerpc                  storcenter_defconfig
arm                            mps2_defconfig
arm                       aspeed_g5_defconfig
arm                           h3600_defconfig
openrisc                    or1ksim_defconfig

clang tested configs:
hexagon              randconfig-r041-20220916
riscv                randconfig-r042-20220916
hexagon              randconfig-r045-20220916
s390                 randconfig-r044-20220916
x86_64                        randconfig-a005
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a003
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
mips                       rbtx49xx_defconfig
arm                         mv78xx0_defconfig
x86_64                        randconfig-k001
arm                       mainstone_defconfig
x86_64                           allyesconfig
arm                                 defconfig
mips                      maltaaprp_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
