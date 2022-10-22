Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6429A608D26
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Oct 2022 14:21:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C56F6416B6;
	Sat, 22 Oct 2022 12:21:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C56F6416B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666441312;
	bh=hcLZ4zjyTzgs6nFWNsKSEw0+t/x5YXAbgYxPlz5xFo8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=u3jBbSEeiyg8mq1AQU2vMeEqj4nh7GXdBb1GueydZMEEzJJ+3jgV5V9Tz2nHRWx5s
	 gn5YfBf33UoNwAbE+UM/RGQEOXVm1vIeoUXpdVWQNQuot+7OZQe1CgyIgWRn08m9kP
	 K2L62vI04Whye2PGvk3VWs6EslzE1HYEFRu+UQu7Z16nsh9dDRDh6GGNYwRKxNTobK
	 1wENssxMeiKeN0IMkTBlsl6+czcj+YoPQLsWJsHfI3/kP1r8alUJyWPevT4efnkn4t
	 IvFn2aH+uww1pJAJyLGHpglnO3fMiqLxVI4Gl72pxBitFJLLLIy2iPQCWVUpq+kmBI
	 UI31giJ509QSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QifPwpAB2sxn; Sat, 22 Oct 2022 12:21:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E5C14098E;
	Sat, 22 Oct 2022 12:21:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E5C14098E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A87251BF865
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Oct 2022 12:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 829EC60A77
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Oct 2022 12:21:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 829EC60A77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JMhNB5OSDUTk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Oct 2022 12:21:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 839C160A66
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 839C160A66
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Oct 2022 12:21:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="304793095"
X-IronPort-AV: E=Sophos;i="5.95,205,1661842800"; d="scan'208";a="304793095"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2022 05:21:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="661909265"
X-IronPort-AV: E=Sophos;i="5.95,205,1661842800"; d="scan'208";a="661909265"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 22 Oct 2022 05:21:42 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1omDVW-0003ck-0A;
 Sat, 22 Oct 2022 12:21:42 +0000
Date: Sat, 22 Oct 2022 20:21:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6353e03b.a3iIugCS4zAPXU5p%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666441304; x=1697977304;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dKRu4IWVKYxsByLMU8t1w5JcPiCTqpedKegiqrbimrM=;
 b=jVhYqcYHp4LPJ1hU2R5j/h/o7iXsricYA/kAsd9tRgBXIvCf09FSNJ8/
 8s3m3c2RUOy72+XsXc+nV0rFPh/XvvCadytObZvtQrsyxUSJSWqh5ulpy
 0WZWmn7yjG+Lv5u2kSR7x+c/adqM29wbspya05+HLdZm6ZOCJprwXv6gQ
 SnGWomPuZTcnEWJp0tAJ3XYCueZVhmA8DILJabPwTtuNShQfxKRNz8/I5
 PiopWAHwCxtHJDEUS/16VSB4C44CXKE+HmSZRRaliW301FRvGJMHdFL9F
 cE/cRQGj5ofRHIP4nqluv437W3lN3d19QzuJCBRz9fMlPssN6SE7Mc4tQ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jVhYqcYH
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d9e5facc62ac6f7465142b764be5f25ec6ae9350
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
branch HEAD: d9e5facc62ac6f7465142b764be5f25ec6ae9350  ixgbe: change MAX_RXD/MAX_TXD based on adapter type

elapsed time: 721m

configs tested: 108
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
i386                                defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                          rhel-8.3-func
s390                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a015
s390                 randconfig-r044-20221022
arc                  randconfig-r043-20221022
riscv                randconfig-r042-20221022
x86_64                              defconfig
sh                               allmodconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
m68k                             allmodconfig
i386                             allyesconfig
x86_64                           rhel-8.3-syz
arc                              allyesconfig
x86_64                         rhel-8.3-kunit
mips                             allyesconfig
x86_64                           rhel-8.3-kvm
alpha                            allyesconfig
arm                                 defconfig
powerpc                          allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
m68k                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a014
i386                          randconfig-a012
x86_64                        randconfig-a006
i386                          randconfig-a016
arm                              allyesconfig
arm64                            allyesconfig
sparc                       sparc32_defconfig
sh                          sdk7786_defconfig
parisc                           alldefconfig
mips                      fuloong2e_defconfig
arm                        multi_v7_defconfig
sh                           se7721_defconfig
powerpc                         ps3_defconfig
m68k                           virt_defconfig
sh                         microdev_defconfig
arm                            qcom_defconfig
arc                              alldefconfig
m68k                          atari_defconfig
powerpc                     tqm8548_defconfig
arm                          lpd270_defconfig
ia64                          tiger_defconfig
arm                        mvebu_v7_defconfig
mips                    maltaup_xpa_defconfig
csky                                defconfig
sh                           se7722_defconfig
i386                          randconfig-c001
arm                           u8500_defconfig
parisc                generic-64bit_defconfig
arm                            zeus_defconfig
sh                               alldefconfig
loongarch                         allnoconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-c001
arm                  randconfig-c002-20221019

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a012
hexagon              randconfig-r041-20221022
hexagon              randconfig-r045-20221022
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a001
i386                          randconfig-a013
x86_64                        randconfig-a003
i386                          randconfig-a011
x86_64                        randconfig-a005
i386                          randconfig-a015
powerpc                   microwatt_defconfig
arm                         orion5x_defconfig
powerpc                      obs600_defconfig
i386                 randconfig-a013-20221017
i386                 randconfig-a015-20221017
i386                 randconfig-a016-20221017
i386                 randconfig-a011-20221017
i386                 randconfig-a014-20221017
i386                 randconfig-a012-20221017
x86_64                        randconfig-k001
s390                 randconfig-r044-20221019
hexagon              randconfig-r045-20221019
riscv                randconfig-r042-20221019
hexagon              randconfig-r041-20221019
arm                      pxa255-idp_defconfig
mips                          ath79_defconfig
powerpc                      acadia_defconfig
arm                             mxs_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
