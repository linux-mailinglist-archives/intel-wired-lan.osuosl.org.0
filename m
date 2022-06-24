Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3CE558F1E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jun 2022 05:35:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA51560B9E;
	Fri, 24 Jun 2022 03:35:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA51560B9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656041745;
	bh=s79SqyO1vP2JaEDqZLqV7Ck1yN1w4l8BMH4Dl+6FKs4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=F9/2Bix22un7CGi7vY2k1hADDdlttIL3xwzIXJHd+UIUDRmCfyNt0hfV6XE+L+yOq
	 nF07vB0bPkm4aPvztovyXIU6SPDhkX1cOW61wzKP2xm3S4HUGl9Ithoj0GT8dx5kta
	 XRiS+5WLtIXRXmT95tEcQLKmDXbVoIlXvwO7jt+UzKjEDvdOZ/MSlAJ3nfgHPrTw6R
	 oW9VyRYdLW25vfxlbhwaOPRU4JtmzFnottXVRszbyBZ273jBv3yAKL8D2Fjj7YWQz/
	 sKM8+RiYLwCDasQmJ1xIks3tJo/IOLFgiqERY/IVnZWzflh9wM/rMGQBHO9haZ6l3T
	 1Rxbb+ypxSg2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FDGDayJU8NVa; Fri, 24 Jun 2022 03:35:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C436660AAC;
	Fri, 24 Jun 2022 03:35:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C436660AAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C8701BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 03:35:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4A3A4400F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 03:35:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A3A4400F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9oXl85PdotWo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jun 2022 03:35:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F403400A6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F403400A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 03:35:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="260730000"
X-IronPort-AV: E=Sophos;i="5.92,217,1650956400"; d="scan'208";a="260730000"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 20:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,217,1650956400"; d="scan'208";a="691343529"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 23 Jun 2022 20:35:34 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o4a6X-0003aw-Od;
 Fri, 24 Jun 2022 03:35:33 +0000
Date: Fri, 24 Jun 2022 11:35:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62b530e9.JHnDuoONJrqLrW4I%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656041737; x=1687577737;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=OlwngISF251PB/fwIP594nOdfXQe0sO6xjamXsRilOM=;
 b=QsSxxqHFs3xjVOy4GTuSHK7KCnpNneGQB0tCGlYF2W3VC/+nLTOnnXPx
 MTN4wkIbxi5gtAPlcszNMSWJPJ6hUyybco8lIQipfJNMZGdMA7avu9aAo
 pc9Mzk4iQspyQDkWiyv6JO0VgClPS2kd/0CiyM/IOz2k+BPjwI41RvufV
 ObkX+nddnNOrLxvbX9G+1xi1Xpvmg2RQpIvCMb/Ji58gd1J1FrqPMemk/
 b0DfmaOx1iNCTIl0HvsZI43ZC6pECBv9ySQzllSEGQ0dFoi8Oq0TI0pXm
 nqa5+RZe1IqHnS9lV311XOr4r8b00CeI4os6zh5celPZgBLyBwC6dHm91
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QsSxxqHF
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 ccb9bc1dfa444e3541622ccfff135e83d2a569d1
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
branch HEAD: ccb9bc1dfa444e3541622ccfff135e83d2a569d1  nfp: add 'ethtool --identify' support

elapsed time: 941m

configs tested: 100
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
sh                             shx3_defconfig
arm                           sama5_defconfig
arm                         vf610m4_defconfig
sh                  sh7785lcr_32bit_defconfig
ia64                      gensparse_defconfig
arm                           corgi_defconfig
nios2                         3c120_defconfig
sh                        sh7757lcr_defconfig
arm                          pxa3xx_defconfig
powerpc                   currituck_defconfig
arm                      jornada720_defconfig
arm                             pxa_defconfig
arm                         s3c6400_defconfig
m68k                        m5272c3_defconfig
powerpc                         wii_defconfig
riscv             nommu_k210_sdcard_defconfig
parisc64                         alldefconfig
mips                      maltasmvp_defconfig
openrisc                  or1klitex_defconfig
arc                           tb10x_defconfig
sh                         ap325rxa_defconfig
arm                          lpd270_defconfig
s390                             allmodconfig
arc                          axs103_defconfig
xtensa                          iss_defconfig
arm                          simpad_defconfig
arm                      footbridge_defconfig
sparc                       sparc64_defconfig
sh                          rsk7269_defconfig
openrisc                 simple_smp_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220622
riscv                             allnoconfig
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
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220622
arc                  randconfig-r043-20220623
s390                 randconfig-r044-20220623
riscv                randconfig-r042-20220623
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc                 mpc8560_ads_defconfig
arm                           omap1_defconfig
powerpc                     mpc5200_defconfig
mips                     loongson2k_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                       ebony_defconfig
powerpc                     pseries_defconfig
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
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r041-20220622
hexagon              randconfig-r045-20220622
riscv                randconfig-r042-20220622
s390                 randconfig-r044-20220622
hexagon              randconfig-r041-20220623
hexagon              randconfig-r045-20220623

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
