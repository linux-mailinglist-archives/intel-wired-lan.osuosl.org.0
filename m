Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE715A613A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Aug 2022 12:55:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16E4460F86;
	Tue, 30 Aug 2022 10:55:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16E4460F86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661856930;
	bh=ABCBwAWzp1/KwnRctm+/R6dJEZ2p44IQWY/0jjybr8s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KJyz9vyep0Ra0AIrSN4pBHwmp6/wEseLji0cRAVx8eR8hEiEyJUEZK8tkbbZyHBLB
	 rIoW4p0CIhgtFxh3XUOYScgbhDuqlAz0YXi6pJWFCUpnD753fpFl2vy0+2x8lWgwEj
	 zR8Mj5pEYP9d3y4fqaynBbdhwHTCTK4y0JBGFQTPfTgrchKeV6RE2aZNv7Qoo/w7jH
	 kKBTHyG4+hYV+Rcb4YKEAg8rT0WnpEiv78KSSlsD905E3KgNyWj4J7ZLbaAX9VPrCC
	 Ym9CqV8cFT5NvkePb/CrOcwbkfOcs7tN72BtNkTSVAxwbs0NwdVXJ0Od2tYN6T3xPM
	 WeuNxP6Bt/3WA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hwp5knNZDfmG; Tue, 30 Aug 2022 10:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE5A660E27;
	Tue, 30 Aug 2022 10:55:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE5A660E27
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2AB671BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 10:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9D818139D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 10:55:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9D818139D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lacCh4pJrhf8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Aug 2022 10:55:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 956F38139C
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 956F38139C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 10:55:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="295145420"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="295145420"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:55:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="644788657"
Received: from lkp-server02.sh.intel.com (HELO 77b6d4e16fc5) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 30 Aug 2022 03:55:16 -0700
Received: from kbuild by 77b6d4e16fc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oSytn-0000DB-1b;
 Tue, 30 Aug 2022 10:55:15 +0000
Date: Tue, 30 Aug 2022 18:55:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <630dec8c.2tTLP6wox1fkFyfj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661856922; x=1693392922;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=rcP9qLZgVUcm4laqcyXDNYjezJBg41lJ0yI8b780/g0=;
 b=NxclYhReCc2m3HSsBarEa+CjCLRtS5NRI7d/hso95aYlhiAVqhI0Sna0
 pSqq/bW3keQj3UDBiKWzZNqy9I1nEmiFu5IBijsNUTr6XQhGGmUmx27fM
 rzAcszTE0E1JXjKttg4ZRC8KG/xYfpLarr5YrfIDgzmbGYfxkD0h+Ohbe
 pSxwjI7ReFE+ZmskNahX9eUXlHDZY+8of1TVRlvk/sbnrSYPEaoLCPoI9
 sk8UIpaKKVfMiAYAJfY+gGE8eY6BUmycNqTJqXSwa0Ia19BtbLljjwKXo
 xx6o3SIbQOtEohSPJOZgcC0Q7ynXPPVCkV68s8+CHL1/hexsvxyBZFLie
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NxclYhRe
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 73633d7cc6837f1f3f03459d7b1b2a9652d68d95
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
branch HEAD: 73633d7cc6837f1f3f03459d7b1b2a9652d68d95  ice: Add set_termios tty operations handle to GNSS

elapsed time: 729m

configs tested: 88
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                 randconfig-a001-20220829
i386                 randconfig-a003-20220829
i386                 randconfig-a002-20220829
i386                 randconfig-a004-20220829
i386                 randconfig-a005-20220829
i386                 randconfig-a006-20220829
arc                  randconfig-r043-20220830
x86_64               randconfig-a003-20220829
i386                                defconfig
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a004-20220829
x86_64                          rhel-8.3-func
x86_64               randconfig-a005-20220829
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a002-20220829
x86_64               randconfig-a006-20220829
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a001-20220829
x86_64                           rhel-8.3-syz
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
i386                             allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
arm                                 defconfig
i386                          randconfig-a014
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                           allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm                          pxa910_defconfig
ia64                             allmodconfig
powerpc                      pasemi_defconfig
mips                  maltasmvp_eva_defconfig
mips                           gcw0_defconfig
powerpc                        cell_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                             alldefconfig
sh                           se7780_defconfig
sh                             sh03_defconfig
arm                      integrator_defconfig
sh                            migor_defconfig
powerpc                     asp8347_defconfig
loongarch                           defconfig
loongarch                         allnoconfig

clang tested configs:
x86_64               randconfig-a011-20220829
x86_64               randconfig-a012-20220829
x86_64               randconfig-a013-20220829
hexagon              randconfig-r041-20220830
x86_64               randconfig-a014-20220829
x86_64               randconfig-a016-20220829
x86_64               randconfig-a015-20220829
hexagon              randconfig-r045-20220830
riscv                randconfig-r042-20220830
s390                 randconfig-r044-20220830
i386                 randconfig-a011-20220829
i386                 randconfig-a014-20220829
i386                 randconfig-a013-20220829
i386                 randconfig-a015-20220829
i386                 randconfig-a012-20220829
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
arm                        multi_v5_defconfig
powerpc                        fsp2_defconfig
powerpc                 mpc8315_rdb_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
