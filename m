Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAFB5EF9B7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 18:06:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4060183F08;
	Thu, 29 Sep 2022 16:06:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4060183F08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664467609;
	bh=39a6+XdktBZz+RBd80i3GIf05vUbFhHHRZSWijclPXI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8z4mPcrPKFGCRC71LHzJRBlExXQVNA3X2gqGTCKzxbG146OOgeBlubZ0+mxggn+ly
	 pUIVfjHVjsr9SlFOKv5A/bBPduYAaKPrQubzeTyxYMLNalsa2Ija0zQl/WNYkksVi3
	 O+ZCKrdpH8JIrhlIulOgjIEp9Tvmzbojr3AGGwLRhf0TakidwX3Y4EeoTzUeraJRDp
	 XsamPTY9HIW516QW2qtXLaVI3hE4NEoIBpoXE28YN5u5KRB9nw1ntX2SfYg1bRaUZZ
	 v21Sy0CiiZT4tnUJMwS3SLPMie88yZAH9a6PET/Z1rkmAC3sv+jA8btQdWObJs5uZ+
	 7B3x0qBRR6wLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I22LjILcNzYp; Thu, 29 Sep 2022 16:06:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BD6D83F5A;
	Thu, 29 Sep 2022 16:06:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BD6D83F5A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BE4E1BF41D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 16:06:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E655C41B7A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 16:06:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E655C41B7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F6yj3WKLmhGP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 16:06:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CAF741B65
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8CAF741B65
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 16:06:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="365989334"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="365989334"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 09:05:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="747890083"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="747890083"
Received: from lkp-server01.sh.intel.com (HELO 6126f2790925) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 29 Sep 2022 09:05:40 -0700
Received: from kbuild by 6126f2790925 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1odw2e-0001Ig-10;
 Thu, 29 Sep 2022 16:05:40 +0000
Date: Fri, 30 Sep 2022 00:05:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6335c243.Jk4U1F59v1SmSVil%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664467599; x=1696003599;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=VZdc99rN8SuDw2Z81DXIXmgcSYYga1Z0oWXXEWX+hPY=;
 b=bcw5CtTJf9Vh+QxgQ16NIvoGSQCJMBbEIBxJXUgPTmA1lCMcCUZ/UrOa
 jimpo8rS3gPnpxQlYxWU5LV/vwOsa/Ui+ubYcxab914GXG47A8qD1zy2c
 IuJrnLsDhsZ04JGSEAYlJa7p1wO5R+dcWGVXqW3ruvq2Jye4FjdRkRD+d
 6KftpLxTezFtRp1YKX5Vw9zFSTc8Bfkhy0WO5Ae5nMnuQJOfwxN/4luvI
 8SE+G3khwF6HCGnLH8NAVxxZ82ew/HhIqlNzam2HTDiqIMdjgrff5CXlr
 Tio43fn69V3hu+CDEfk8sRPes/2c/Pyms+SiHGDwyi6VMgBVGkzfhqoEV
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bcw5CtTJ
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 34800178b3027a7818446351db3b9730b8e9f912
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 34800178b3027a7818446351db3b9730b8e9f912  ice: Add support for VLAN priority filters in switchdev

elapsed time: 1118m

configs tested: 110
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                          allmodconfig
s390                                defconfig
arc                              allyesconfig
mips                             allyesconfig
s390                             allmodconfig
powerpc                           allnoconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
s390                             allyesconfig
i386                                defconfig
x86_64                              defconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64                               rhel-8.3
i386                 randconfig-a001-20220926
x86_64                           allyesconfig
i386                 randconfig-a004-20220926
i386                 randconfig-a002-20220926
arc                  randconfig-r043-20220925
i386                 randconfig-a003-20220926
i386                 randconfig-a005-20220926
i386                 randconfig-a006-20220926
riscv                randconfig-r042-20220925
i386                             allyesconfig
x86_64               randconfig-a002-20220926
x86_64               randconfig-a004-20220926
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
x86_64               randconfig-a001-20220926
x86_64               randconfig-a003-20220926
x86_64               randconfig-a006-20220926
x86_64               randconfig-a005-20220926
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                         amcore_defconfig
mips                           xway_defconfig
sh                          lboxre2_defconfig
xtensa                  audio_kc705_defconfig
sh                         ap325rxa_defconfig
xtensa                generic_kc705_defconfig
sh                          urquell_defconfig
arm                         nhk8815_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                          randconfig-c001
sh                  sh7785lcr_32bit_defconfig
powerpc                      ppc6xx_defconfig
arm                           tegra_defconfig
powerpc                      tqm8xx_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
m68k                          hp300_defconfig
arc                        vdk_hs38_defconfig
ia64                         bigsur_defconfig
m68k                             alldefconfig
powerpc                   motionpro_defconfig
loongarch                        alldefconfig
sh                        sh7757lcr_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220925
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220925
i386                 randconfig-a011-20220926
hexagon              randconfig-r041-20220926
i386                 randconfig-a013-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
i386                 randconfig-a012-20220926
s390                 randconfig-r044-20220926
i386                 randconfig-a016-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a014-20220926
x86_64               randconfig-a015-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
x86_64               randconfig-a016-20220926
x86_64                        randconfig-k001
hexagon                          alldefconfig
mips                      malta_kvm_defconfig
hexagon                             defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
