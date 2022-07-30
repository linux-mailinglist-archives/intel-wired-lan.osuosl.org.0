Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7A65858E9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jul 2022 08:49:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05297417E5;
	Sat, 30 Jul 2022 06:49:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05297417E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659163744;
	bh=nUo1HpnFhO+GLbxky8GbTcELKk++Z3jAiuEG99tRn3g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=76mOsmN0ujJJEeNoxpCDS1Hgqzij2A/vHOOEH44y4144i/q6/A17yV9CZcyiB+LPG
	 nLwL6tjkC3dH1xYXMEdcOPYDrNRK1SKHdi+wiSuvvizFMF4vionU3vmteqCYazYiAN
	 iGjJ0GnJUULKiBlBcD/rrphyABOKMctptLOGEJS1LTzrbuSC7LQEz++/naeJd+lkG4
	 GYs3F2PtVXp72LXVXQjmEKQX5N5emSxRwmdOMGo3vJg/N6MD9WJzVRxR6m4DhR+xpR
	 LNXVHWVTU35ckY9TMvfm2+TaRqNfT1VVR4ZkyslYcozw+qeRuf7FFcTS9+ZzKNO6cV
	 Sk7r4i9UXxx+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 60DiTjm8okps; Sat, 30 Jul 2022 06:49:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 848CF41591;
	Sat, 30 Jul 2022 06:49:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 848CF41591
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FF661BF386
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jul 2022 06:48:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78A2D417E4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jul 2022 06:48:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78A2D417E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8u8pQTE9dVz8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Jul 2022 06:48:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 465D0404BE
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 465D0404BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jul 2022 06:48:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10423"; a="352900241"
X-IronPort-AV: E=Sophos;i="5.93,203,1654585200"; d="scan'208";a="352900241"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 23:48:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,203,1654585200"; d="scan'208";a="605174843"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 29 Jul 2022 23:48:54 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oHgHN-000CYR-26;
 Sat, 30 Jul 2022 06:48:53 +0000
Date: Sat, 30 Jul 2022 14:48:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62e4d42a.WkE86KW/0lmCQSEM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659163736; x=1690699736;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=NcXOxWqybgsMGBHLi5OB05NOeV9BDwxDnfoWPMXiuy4=;
 b=Qvm/ERQim7Jtrvkv6q6zWmMe1+1VTrEEpRMQIwq9NXP3pljczWJjFXne
 3xkDCEhLACUeq9tC66mfiG1Lb+9vADSv0AGJ5fwFzozKM/P7rE7AX3nfj
 YlmC9jnm85aXhzlDdKyUHdUNiIetGD1v7O/ZJEwS2sXDegF3pEasMC2cL
 NBnYd94ji6oUIKeNrda04WcEVPxmuDOhrzrZ3gpfFFPQOjjGGeIrdKvme
 U0WDjN4HeGNHfEQewFTXuddAuEFy7dw1elP24x/YnBAZ+dosZBf8Rn9G5
 M2kvF7QzDc0Www1pmaMKmYXEG5Vv2LPV+3RRoGALskJhe+GXSMzdSrY2Q
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qvm/ERQi
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 93cb804edab1b9a5bb7bb7b6824012dbb20abf22
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 93cb804edab1b9a5bb7bb7b6824012dbb20abf22  iavf: Fix 'tc qdisc show' listing too many queues

elapsed time: 717m

configs tested: 57
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220729
i386                                defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
i386                             allyesconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
i386                          randconfig-a001
x86_64                          rhel-8.3-func
i386                          randconfig-a003
powerpc                          allmodconfig
x86_64                         rhel-8.3-kunit
mips                             allyesconfig
i386                          randconfig-a005
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
m68k                             allmodconfig
x86_64                           rhel-8.3-syz
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
m68k                             allyesconfig
arm                                 defconfig
i386                          randconfig-a014
i386                          randconfig-a012
x86_64                        randconfig-a004
x86_64                        randconfig-a015
i386                          randconfig-a016
x86_64                        randconfig-a002
x86_64                        randconfig-a006
ia64                             allmodconfig
arm                              allyesconfig
arm64                            allyesconfig
arc                               allnoconfig
alpha                             allnoconfig
csky                              allnoconfig
riscv                             allnoconfig

clang tested configs:
hexagon              randconfig-r041-20220729
riscv                randconfig-r042-20220729
hexagon              randconfig-r045-20220729
s390                 randconfig-r044-20220729
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a011
x86_64                        randconfig-a014
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
