Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8957174BC77
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jul 2023 09:02:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12FDE82EA4;
	Sat,  8 Jul 2023 07:02:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12FDE82EA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688799753;
	bh=qy++ZGRaPcguZ2s3+UOLQEWcVqI4fdWMPdl5u3ukpm4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oJPQDP55EmGQYGStz5CP+HdEexxMJEzfHE+gB5g6Hx10tliaBkzHP7nqXEh5MpAoQ
	 lxRyOe14O62hLNmUa8YDKCZJm6DGqyG3X+2fUKDLcyDe+V6MT0brnm0tZisx7ZwbMt
	 N4asQXf1ZuFblsiB7tkxnqVCHYEDIIV5NnlxHheoe9uf5zdtWq0afjn5xd61Bm05+d
	 h4QOgjZTMq5YBGIe1usm5EdK8WeqMLzLiYRPG/mg0Q1ZB8oPK8c3wUYqPmZk96i412
	 mOPrX1H3p4l/c4znKFwfzvWUIaw+hNtKjwIR2mxaOUGd5h1J1XzpdkxOpjerd3eR3y
	 U90FSYjYeud0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gjFcWFL1Uv-H; Sat,  8 Jul 2023 07:02:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A185E82EA1;
	Sat,  8 Jul 2023 07:02:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A185E82EA1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67AD11BF29F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jul 2023 07:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3904E60B88
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jul 2023 07:02:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3904E60B88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FcDI0sLHbH4M for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jul 2023 07:02:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD77060B4C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD77060B4C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jul 2023 07:02:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10764"; a="343629768"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="343629768"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2023 00:02:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10764"; a="1050786807"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="1050786807"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jul 2023 00:02:22 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qI1xV-0002bG-1Q
 for intel-wired-lan@lists.osuosl.org; Sat, 08 Jul 2023 07:02:21 +0000
Date: Sat, 08 Jul 2023 15:01:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307081527.VGN6foOj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688799744; x=1720335744;
 h=date:from:to:subject:message-id;
 bh=e32ZxXJXmtfsFJCxdx6CamJVplD91HoCwpGAN4GbHb8=;
 b=Jc0/uh3zCmjkkkssBshbGNPz3/++BZeLk3go+1HFNVKOd/ybt3RESnkp
 Qj5V19b6kc1UbYb+qupOwsamRUDBjm8vLxx6QFLpAwbUicyWY3VttJTaV
 v2gK63eX02RP6QrfbSQpyIrda03uo7cujC0cKo+F6e7yM69QZkrhdxGHq
 PgZ+YBPuR97idjhUBLbwhiwkVdfUcWCFFTlP7sZIFEiRK+2iiKo2AzI9h
 +M+lZEd8oKQafzUagSydbWmGdcVeLAFsRFcAM9RRU0eV/lEql20fLUytI
 vVooSJB8T2Rl5WNVuyjC+/A2uErKf6IOPTxk1C5Nmus5xBwrAlxt0LTCo
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jc0/uh3z
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 4c26b12c99efda751ecd155f84c50c280d4c85de
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
branch HEAD: 4c26b12c99efda751ecd155f84c50c280d4c85de  igc: Fix Kernel Panic during ndo_tx_timeout callback

Unverified Warning (likely false positive, please contact us if interested):

drivers/net/ethernet/intel/ice/ice_main.c:8917:2-8: preceding lock on line 8897

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- powerpc-randconfig-r064-20230704
    `-- drivers-net-ethernet-intel-ice-ice_main.c:preceding-lock-on-line

elapsed time: 792m

configs tested: 128
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r014-20230708   gcc  
alpha                randconfig-r015-20230708   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                  randconfig-r043-20230708   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         at91_dt_defconfig   gcc  
arm                                 defconfig   gcc  
arm                           imxrt_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                  randconfig-r025-20230708   clang
arm                  randconfig-r046-20230708   clang
arm                           sunxi_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r021-20230708   gcc  
arm64                randconfig-r031-20230708   clang
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230708   clang
hexagon              randconfig-r045-20230708   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230707   gcc  
i386         buildonly-randconfig-r005-20230707   gcc  
i386         buildonly-randconfig-r006-20230707   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230708   clang
i386                 randconfig-i002-20230708   clang
i386                 randconfig-i003-20230708   clang
i386                 randconfig-i004-20230708   clang
i386                 randconfig-i005-20230708   clang
i386                 randconfig-i006-20230708   clang
i386                 randconfig-i011-20230708   gcc  
i386                 randconfig-i012-20230708   gcc  
i386                 randconfig-i013-20230708   gcc  
i386                 randconfig-i014-20230708   gcc  
i386                 randconfig-i015-20230708   gcc  
i386                 randconfig-i016-20230708   gcc  
i386                 randconfig-r002-20230708   clang
i386                 randconfig-r034-20230708   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230708   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5475evb_defconfig   gcc  
m68k                 randconfig-r005-20230708   gcc  
microblaze           randconfig-r026-20230708   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath25_defconfig   clang
mips                        maltaup_defconfig   clang
nios2                         10m50_defconfig   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r032-20230708   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                    gamecube_defconfig   clang
powerpc                      makalu_defconfig   gcc  
powerpc                    mvme5100_defconfig   clang
powerpc                      ppc64e_defconfig   clang
powerpc              randconfig-r011-20230708   gcc  
powerpc              randconfig-r023-20230708   gcc  
powerpc                     tqm8540_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230708   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r006-20230708   clang
s390                 randconfig-r044-20230708   gcc  
sh                               allmodconfig   gcc  
sh                               j2_defconfig   gcc  
sh                   randconfig-r004-20230708   gcc  
sh                           se7780_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r001-20230708   gcc  
sparc64              randconfig-r016-20230708   gcc  
sparc64              randconfig-r033-20230708   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r012-20230708   clang
um                   randconfig-r024-20230708   clang
um                   randconfig-r036-20230708   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230707   gcc  
x86_64       buildonly-randconfig-r002-20230707   gcc  
x86_64       buildonly-randconfig-r003-20230707   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230707   clang
x86_64               randconfig-x002-20230707   clang
x86_64               randconfig-x003-20230707   clang
x86_64               randconfig-x004-20230707   clang
x86_64               randconfig-x005-20230707   clang
x86_64               randconfig-x006-20230707   clang
x86_64               randconfig-x011-20230708   clang
x86_64               randconfig-x012-20230708   clang
x86_64               randconfig-x013-20230708   clang
x86_64               randconfig-x014-20230708   clang
x86_64               randconfig-x015-20230708   clang
x86_64               randconfig-x016-20230708   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa               randconfig-r003-20230708   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
