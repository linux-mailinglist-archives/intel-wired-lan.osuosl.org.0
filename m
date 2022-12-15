Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBFE64DABF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Dec 2022 12:59:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6699B8200C;
	Thu, 15 Dec 2022 11:59:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6699B8200C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671105542;
	bh=xLG+AKZrATQuqD/HOOPcHnI1bGdiRAONIY1BJ9B72S0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9PO1wacJG4wsG5PhVxJfDOWMO/HET8MEuIVDReht6ITbp+kXQkqCEPD57xnsoJ/hj
	 1sbXNhXy4gxH5X7YiSg6ojrWVryYX3sFMehyUjPGGsp1kDpVAGQiXAlZlJFKGDev0e
	 KjckCJl9etQfK2+GiskFEt/RUmXNxyt28Cmhv94POw7XHOpWIDduo91KYrwnFP9YW6
	 17KN5JGhOn5lsnKGxuLwoL++T6Psyqx/wQuRgUP8kY9nJwzAoRDwJ24PAC7Ofhnxq8
	 mjS9Yd3ylQP6v+eLqru0MaAcTT4YcvFjUnvfy8iOWumQZktWX7a9EEPtMBL4vS28n7
	 gpxpfO3/3y1uw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id joQ0XTiM5lRJ; Thu, 15 Dec 2022 11:59:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 638AA81FDD;
	Thu, 15 Dec 2022 11:59:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 638AA81FDD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3568D1BF308
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 11:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0ED7B400C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 11:58:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ED7B400C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4WhFrnDrzbv0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Dec 2022 11:58:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FE8440204
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2FE8440204
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 11:58:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="299003343"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="299003343"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 03:58:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="712887965"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="712887965"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 15 Dec 2022 03:58:49 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p5msz-0006FT-08;
 Thu, 15 Dec 2022 11:58:49 +0000
Date: Thu, 15 Dec 2022 19:58:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <639b0beb.6hKDTHcMzm2VZjx+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671105531; x=1702641531;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6w6PRXQoE0/KbU9ym4N3pkOjUk3BKaxfXyIvQe4he7E=;
 b=NtlveEgnjhA3duzBafgACX+4fxhUMgJhq/J9zZpxtZF3zAE2VjYRYli6
 wq3HHhleAB5VgahfpFRXtIkk7mNp3jZenGJyFv35B1QjcQoNob/wl+zHn
 qsWOwHF8Sy4S2XQ1mT+JiLnSXP14KuLV08u+GyRJ3i81xriSK0MU++0cZ
 UX8H7H9kcmt37s+f8am1Udna6ey4MYJYGxcPQmRgBD2MYsaKqS4PRFNbO
 iWBfGpCCc92Iwv4a6BU1SfmaRlx+sFVX7cQSa2H4HyXGucmJtDR4gP5x0
 TyNdErekMgEVbdAeRl7A2cBnhzECmaIG3bWdllpm3hodEsNBO+KUcl+d1
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NtlveEgn
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS WITH
 WARNING 61307ead6a6f1e91688d3447179b568c035ee08b
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
branch HEAD: 61307ead6a6f1e91688d3447179b568c035ee08b  igc: Remove reset adapter task for i226 during disable tsn config

Warning reports:

https://lore.kernel.org/oe-kbuild-all/202212151246.aoZsAlk5-lkp@intel.com

Warning: (recently discovered and may have been fixed)

Documentation/networking/devlink/ice.rst:41: WARNING: Unexpected indentation.

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- x86_64-allnoconfig
    `-- Documentation-networking-devlink-ice.rst:WARNING:Unexpected-indentation.

elapsed time: 722m

configs tested: 72
configs skipped: 2

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                        randconfig-a004
arc                                 defconfig
x86_64                        randconfig-a002
x86_64                           rhel-8.3-bpf
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
s390                             allmodconfig
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
x86_64                           rhel-8.3-kvm
m68k                             allmodconfig
x86_64                        randconfig-a006
arc                              allyesconfig
x86_64                           allyesconfig
alpha                               defconfig
powerpc                           allnoconfig
alpha                            allyesconfig
s390                             allyesconfig
powerpc                          allmodconfig
s390                                defconfig
mips                             allyesconfig
sh                               allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
arc                  randconfig-r043-20221214
i386                                defconfig
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a015
s390                 randconfig-r044-20221214
riscv                randconfig-r042-20221214
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                             allyesconfig
x86_64                            allnoconfig
sh                           se7751_defconfig
arm64                            alldefconfig
sh                           sh2007_defconfig
powerpc                   currituck_defconfig
arc                         haps_hs_defconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a014
x86_64                        randconfig-a012
i386                          randconfig-a002
i386                          randconfig-a004
arm                  randconfig-r046-20221214
i386                          randconfig-a006
hexagon              randconfig-r041-20221214
x86_64                        randconfig-a016
hexagon              randconfig-r045-20221214
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-k001
arm                      pxa255-idp_defconfig
arm                          sp7021_defconfig
powerpc                      acadia_defconfig
arm                         socfpga_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
