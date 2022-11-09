Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DAA622C38
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 14:15:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15A9960BE7;
	Wed,  9 Nov 2022 13:15:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15A9960BE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667999708;
	bh=cTD5tAXieTob+gxQfCt+4HcNPpsCtGTdQog8TEuqYYk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iAGqk2QMIA/qGvUPUgvlfw5aFFpBTOyY9STfTeM4ojM6U908LS5+SBEMg0CmOx8rt
	 zqZriJRpaIobxD2j8AY8ej3nvbjFxKXk60dUx3qmka7/ilVSVOZWmYYiImdPWj5aVz
	 g1dGwWtrw1Nzy49wKMjlvYqqkJW+g40Mmm+tqb3A1fv1T8k1YutE/dwAALEPye5HIB
	 XmSAbXbQGR88DmpMNyyW5r8/U+wqmq5sHLadUjcdCI8Nv0Sx07sOiaaD+JSBhJX3H6
	 C5hYJKpkpcx3wDaEyHN0CupGgUZs4D9qKFzmQTB6ZiABqszniDFxNfAc9nVJtkfUPm
	 WpHhGhoIBboQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C0sjWwE-R0sl; Wed,  9 Nov 2022 13:15:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A276605A6;
	Wed,  9 Nov 2022 13:15:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A276605A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D730E1BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 13:15:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B126840194
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 13:15:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B126840194
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uVXuOFGNUTw7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 13:15:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08A804018F
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08A804018F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 13:15:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="298494988"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="298494988"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 05:14:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="587763131"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="587763131"
Received: from lkp-server01.sh.intel.com (HELO e783503266e8) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 09 Nov 2022 05:14:40 -0800
Received: from kbuild by e783503266e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oskue-0001eW-0C;
 Wed, 09 Nov 2022 13:14:40 +0000
Date: Wed, 09 Nov 2022 21:14:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <636ba7bc.q2F/QWHEcNQ/pkO+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667999701; x=1699535701;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=hfFqV1m2XPUUxlll91we2uRkaIP942VlvZeI/sUTMls=;
 b=Hiv5JxBctbvEAMbYDBWRuJIhv/aQJjIGvmOeESb7Ko+JCDpj0bbHltzp
 4o+5TXYQl+VNii9kaJKefLed1nVsj7SQZJZ3so3QFsK5Oe7FrHn+9nvFJ
 Vv6nmib7CCrsUxHX0iaXDGDbaZ8OQ+dVAtXtcGotrnUc0/qEKKyJH3IQD
 nA5BEvEwvqWQdYGPTZDzWrT0jt8/mgTGs8UuDq2eSEFleJt41uAA7MZxl
 wep294TLu3e6nLDShaucclgKq8Rw3FJYIyJGzlaCjQvutmMLP62qnIXQP
 daH3q2Zem7JIyRAyacswwCDV/lqt+KwUzRrT8K2Jy7Y+GWjvd3Y62MHEj
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hiv5JxBc
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 e01555956b0aee4a69be5adae81c94a66699a274
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
branch HEAD: e01555956b0aee4a69be5adae81c94a66699a274  iavf: Fix VF driver counting VLAN 0 filters

elapsed time: 748m

configs tested: 66
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20221108
s390                 randconfig-r044-20221108
riscv                randconfig-r042-20221108
x86_64                          rhel-8.3-func
i386                                defconfig
arc                                 defconfig
s390                             allmodconfig
x86_64                    rhel-8.3-kselftests
alpha                               defconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
s390                                defconfig
ia64                             allmodconfig
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                        randconfig-a013
powerpc                           allnoconfig
i386                          randconfig-a001
s390                             allyesconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a011
m68k                             allmodconfig
arc                              allyesconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a006
alpha                            allyesconfig
x86_64                        randconfig-a004
m68k                             allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
arc                              alldefconfig
sh                           se7751_defconfig
powerpc                 linkstation_defconfig
arm                             ezx_defconfig
arm                                 defconfig
mips                        bcm47xx_defconfig
riscv                               defconfig
openrisc                 simple_smp_defconfig
arm                        clps711x_defconfig
arm                      footbridge_defconfig
m68k                       m5275evb_defconfig
nios2                            alldefconfig
powerpc                    klondike_defconfig
arm                              allyesconfig
arm64                            allyesconfig
arc                        vdk_hs38_defconfig
m68k                        m5272c3_defconfig
sh                          rsk7269_defconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
i386                             allyesconfig

clang tested configs:
hexagon              randconfig-r045-20221108
hexagon              randconfig-r041-20221108
x86_64                        randconfig-a012
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a014
x86_64                        randconfig-a005
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
