Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 673E663D733
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 14:51:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC24781EEB;
	Wed, 30 Nov 2022 13:51:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC24781EEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669816289;
	bh=eIt4Gh8Mqv10zqPXxCCiqzOr9Ih/OZFYShz43HeWQ4M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TFaL0qzI1uTeqqqscjaEH1zxm0DPR5pKVy/MlspWTDAXEaFXCHT3C+CEkks1bR0wE
	 58cu+6Yos14AaxYI0uedMETRu8L94yNF7+BmobY1B6UpWFu3+rN8c0tjf2SbFbxFSI
	 /4FcVGdAodSG/1G1WkfV2W/9DFhCA/veO1H9CzMt6+EjSvrE5QBqVJhi5qZq8HbRNV
	 S5FHIPyhsRj2VwuMTEAC3d7dMWt8dhKLfTbDLVixAqokbuRHDLSQxrrTvznY2FzWQO
	 +b18W+3TBRm9CJo4Ezwf0q/ycNg3TvVLALPNxOG3HQ4vIfYKT0OIDjyRLDrES7vwiT
	 4Lv+ksd3ZkAkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SHMfAW7prxGp; Wed, 30 Nov 2022 13:51:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27C0D81EE0;
	Wed, 30 Nov 2022 13:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27C0D81EE0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 177751BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 13:51:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF79741638
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 13:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF79741638
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ojVSaCdi-9Vu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 13:51:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6624415DF
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6624415DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 13:51:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="314090620"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="314090620"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 05:51:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="675030739"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="675030739"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 30 Nov 2022 05:51:14 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p0NUX-000BDd-36;
 Wed, 30 Nov 2022 13:51:13 +0000
Date: Wed, 30 Nov 2022 21:51:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63875fc8.x1ImFMBKcqeCY4M0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669816277; x=1701352277;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=AcxGqZN+tpJan+yNzZR28NjczpqXRne1CE4lUREKXuo=;
 b=DyZS6YvbEA3AJeKZL/QUEcFidSbJfOcH3zvXnXqIEzRZAu+OzNlA3ozH
 aYIq/UJqhf3plxeLYEWQEumM1U1xlZ++EqeNm1FWBzP/hsn6eHVa87rWv
 q8xamVy0MH5yZlScWfegp8IJrNIcCl9gZp375/hza+0iO3OWUb0ntnL9e
 DLPhD0VbU2m/ah5RJp2C4g2/HTy8zXx0lnZ0XssvWO99G7ruQc47mpP32
 ycI/NL5kzgpIeErSuahDnDPraDeOSNZWfD7Q51t3y2niItTb6gzZW7jbh
 G1D2gZ1BkWwL2aiV5nodTja6qr5iAGVOBEk0Lt3K7pqnwxq0lFvhoJlQs
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DyZS6Yvb
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 f2bb566f5c977ff010baaa9e5e14d9a75b06e5f2
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
branch HEAD: f2bb566f5c977ff010baaa9e5e14d9a75b06e5f2  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 738m

configs tested: 99
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                            allnoconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
sh                        sh7763rdp_defconfig
powerpc                         ps3_defconfig
xtensa                  cadence_csp_defconfig
mips                      maltasmvp_defconfig
ia64                             allmodconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-a001-20221128
i386                 randconfig-a005-20221128
i386                 randconfig-a006-20221128
i386                 randconfig-a004-20221128
i386                 randconfig-a003-20221128
i386                 randconfig-a002-20221128
i386                             allyesconfig
i386                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
i386                          randconfig-c001
x86_64               randconfig-a002-20221128
x86_64               randconfig-a001-20221128
x86_64               randconfig-a004-20221128
x86_64               randconfig-a006-20221128
x86_64               randconfig-a005-20221128
x86_64               randconfig-a003-20221128
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
arm                       omap2plus_defconfig
sh                               j2_defconfig
mips                           ci20_defconfig
sh                          sdk7786_defconfig
arc                     haps_hs_smp_defconfig
powerpc                      cm5200_defconfig
arm                          lpd270_defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
csky                                defconfig
nios2                               defconfig
mips                           gcw0_defconfig
xtensa                    xip_kc705_defconfig
arm                        oxnas_v6_defconfig
sh                          lboxre2_defconfig
sh                           se7750_defconfig
sh                             espt_defconfig
sparc64                          alldefconfig
powerpc                   currituck_defconfig
arc                               allnoconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
s390                 randconfig-r044-20221128
hexagon              randconfig-r041-20221128
riscv                randconfig-r042-20221128
hexagon              randconfig-r045-20221128
i386                 randconfig-a014-20221128
i386                 randconfig-a011-20221128
i386                 randconfig-a013-20221128
i386                 randconfig-a016-20221128
i386                 randconfig-a012-20221128
i386                 randconfig-a015-20221128
x86_64               randconfig-k001-20221128
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a011-20221128
x86_64               randconfig-a014-20221128
x86_64               randconfig-a012-20221128
x86_64               randconfig-a013-20221128
x86_64               randconfig-a016-20221128
x86_64               randconfig-a015-20221128
arm                      tct_hammer_defconfig
arm                        vexpress_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
