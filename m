Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE48869284D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Feb 2023 21:28:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8093C409F3;
	Fri, 10 Feb 2023 20:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8093C409F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676060925;
	bh=eZjoB5C247yVih/aMLs9iAClgoGqHbtcRcNIy0mg4R0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=L+KqauJSnJgj9ZjcV4uDzTZoW3V1oHcoHkTHoFpUiHEQzH0o/i5ENzQ237+toWjmr
	 FVR3auZcLZuoUToCvuIj3lzVhb95FVbC4RpfC5NEkxXdE6OXyIdT74jeA1GsRM1Xyw
	 hFW1I9iGTecl/VZnXNZiUEBTd31DtjW3V5uzpcjw+p47NSqhhBDBpfassaU58O5gHO
	 /lfPFoUZVEQnnsFz00mXB62lNJO2AcCP1GPITa31ZD2jYG67NcPUW1GsLbrLBagzoR
	 F505xh1rOBQ1SCBPhwH5XCF0OPRXJJ09RKaQQiDWiX+53OvRIYPtdOe+YRUNi3HyZx
	 96rdgIe09IgOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p3ieaJ8sTpuQ; Fri, 10 Feb 2023 20:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3421041806;
	Fri, 10 Feb 2023 20:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3421041806
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D864E1BF25B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 20:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0BE960760
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 20:28:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0BE960760
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jMiz4M83PGz3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Feb 2023 20:28:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54047606F2
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 54047606F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 20:28:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="318537941"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="318537941"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 12:27:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="842134394"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="842134394"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 10 Feb 2023 12:27:46 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQZzl-00062f-2Y;
 Fri, 10 Feb 2023 20:27:45 +0000
Date: Sat, 11 Feb 2023 04:27:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e6a89a.VXJgzf1VSgzX1VDC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676060917; x=1707596917;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=D7nYYEQG80yFGjrxZyTGLffgo2sCfb6aUZ54cs1vAFQ=;
 b=LqL5k4OodNS+4xtv504F07MUE9HB61e2BSylzKBptPtUwwts4r1B8Vgw
 IInMu/Jpu/tlU9mtEJ7nG+yze9k1JBDYzaaYL66511sR9w3UZRYUdoqx2
 TsQRwGA6HLSg7wBKUmMS0WutHS09biAd8SZ3KLj3LCYc+2cV0A31OgtJJ
 fLnw40Hg4Qr72yeYuGQJV59zRkuAYtd3wLr2Br6KlhDF49Cb3SfkBbHau
 49Lm52RP+5FpCssVzoxz8eNuCjbrefhhkrK1de5cBCSp0kQFP8tQyo46m
 +CwhgOXNA97wRZMlXHnHCPycTaaZN1/tgqBtIQh3KFmEfBzSzHJ9oo5Qs
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LqL5k4Oo
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 4505ad169f89ff923a1ce54a4a70ec436ca11928
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
branch HEAD: 4505ad169f89ff923a1ce54a4a70ec436ca11928  ixgbe: add double of VLAN header when computing the max MTU

elapsed time: 1137m

configs tested: 68
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                         vf610m4_defconfig
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                          randconfig-c001
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                       bmips_be_defconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                   motionpro_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                        warp_defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sh                ecovec24-romimage_defconfig
sh                           se7721_defconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3

clang tested configs:
arm                       cns3420vb_defconfig
hexagon              randconfig-r041-20230210
hexagon              randconfig-r045-20230210
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
riscv                randconfig-r042-20230210
s390                 randconfig-r044-20230210
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
