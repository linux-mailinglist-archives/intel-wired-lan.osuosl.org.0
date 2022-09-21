Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E93D5BFA3A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 11:08:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB1BF6100D;
	Wed, 21 Sep 2022 09:08:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB1BF6100D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663751309;
	bh=TtA9urSkIzls6vmzJKSUhdG7l50YGJR/ITSDFlwxwVw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AP6kQghViQeGP9nInW6DxnfeKIg6dkcwRlOcpSQjd3sXpGDq+2UYHBFDxuSHyAhzW
	 ISMBKgmWdJozfkQcEloCdDQHZbGilP/9zWdDI02SkTaUWlA/uXO/3Xp1VsAA2D/8IX
	 ER92GtAbOlt/NA/ZdH0HEwkFsR0gLJKBYmkyLv+NezQkOUz/aPJIJT6xEGvHFlbBuL
	 fFn85l4/zfGbFAmQ8Rx0a+rDc53eYP2Q133OlFYn/KLSdIuWUkPu1MODLsayw1TdFB
	 F4Ld4E99hKtkNG7Ui+sPSCe/O4HdZARvc9Qik3i1A4Qhizm/05IBHMifLPEkHaGTXG
	 yXBW1kMdoQwWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QMYdF5IS2Yux; Wed, 21 Sep 2022 09:08:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4B15605B1;
	Wed, 21 Sep 2022 09:08:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4B15605B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E859B1BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 09:08:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CED1D40C53
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 09:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CED1D40C53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DmvL115E81QJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Sep 2022 09:08:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9BEF402E7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B9BEF402E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 09:08:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="326259643"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="326259643"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 02:08:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="864344761"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 21 Sep 2022 02:08:13 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oaviG-0003Re-2t;
 Wed, 21 Sep 2022 09:08:12 +0000
Date: Wed, 21 Sep 2022 17:07:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632ad469.pBOiKxfqSa/dYxdD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663751301; x=1695287301;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fvmFZm/3yJenSEAAdMRtxAtL3N33iEi8RFtr7Canh3M=;
 b=CXN0vbzuEXY71MhqF6j+dhC41h2piPtaPaoG1RdY6ckfGU6l2rIRX/MT
 o3BAf61lpApqi1NtXUcDxq550nDjbPhf8tkL+g6xiPxBHS+bMQW+v4Qlp
 pNVWjgkCKZxSF/t10ARzLlwL6bAecVcS9nqwr8zoBQXcGZHhpleMthwCg
 8Y1FLhARo7GnAP/FGhdHpQRAiZeTqqHTA4mMizksCtyYjvuD+lBm+KGnr
 7e+V31W5nccvxdY1qxsXGU7SWjihrt6fIk/0CrKYHXkBFe2QgV6OKSdgX
 iSp+I6zrNj6aVvYE9DtdaoafY6B0i6q2YwvxqxeRPEiA+ndkusVkUXv8W
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CXN0vbzu
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 da847246ab80610c5acca34df5893bee1d8cf7c2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: da847246ab80610c5acca34df5893bee1d8cf7c2  Merge branch 'fixes-for-tc-taprio-software-mode'

elapsed time: 817m

configs tested: 70
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
s390                                defconfig
sh                               allmodconfig
s390                             allyesconfig
arc                  randconfig-r043-20220921
riscv                randconfig-r042-20220921
s390                 randconfig-r044-20220921
i386                          randconfig-a001
i386                          randconfig-a003
alpha                               defconfig
x86_64                           rhel-8.3-syz
um                             i386_defconfig
arc                                 defconfig
i386                                defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
s390                             allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                              defconfig
i386                          randconfig-a016
mips                             allyesconfig
powerpc                          allmodconfig
ia64                             allmodconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                             allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                       m5275evb_defconfig
parisc                              defconfig
loongarch                 loongson3_defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a012
i386                          randconfig-a014
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc64                            defconfig
parisc                           allyesconfig

clang tested configs:
hexagon              randconfig-r041-20220921
hexagon              randconfig-r045-20220921
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
mips                      pic32mzda_defconfig
riscv                             allnoconfig
mips                           ip28_defconfig
arm                        multi_v5_defconfig
mips                        bcm63xx_defconfig
powerpc                          allyesconfig
powerpc                      acadia_defconfig
powerpc                     pseries_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
