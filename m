Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F99A63D77E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 15:04:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85E8940517;
	Wed, 30 Nov 2022 14:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85E8940517
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669817079;
	bh=Xq4cOEjD2bniSbFd4N2PAJZ+fcKNciLx7HamQo9SFrs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jsCHds/fqiTAIgxfavg597q/g3/cxodJAvXsAWJQt+kq7bZeEey+ukrzvk9yW0GkV
	 L+PnWCeYCeTlCgVjPVhaohHgb/RLBOk3frXL57qHU2IrSchVqiJYv98fIBpqg72us/
	 dsEbPuNFsjelRFymOhm6kPO4mBnLLR6Dx/2ci9RvA92Ynm4NaGPmmsGRnZUAcwohyr
	 BKkhYAxnVKTStp7ETzUVCktT5OPxuMiQBZ4/wiofzUTC7H8V6HihOyFMMOEwKh1cC1
	 Ex6hz5DiGGRp5nfeqTsFVjm6wDEXQNHYDgwT00DCWIl+Xbq+Fx3SjhJatsMGrNDBoD
	 R0Xl/+ZjJEyaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tp2BkG5kwkUS; Wed, 30 Nov 2022 14:04:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7277040127;
	Wed, 30 Nov 2022 14:04:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7277040127
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A73121BF359
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 14:04:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 815A7608A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 14:04:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 815A7608A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fb5sy84i8Tj2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 14:04:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E03D607F0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E03D607F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 14:04:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="295097725"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="295097725"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 06:04:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="676830058"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="676830058"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 30 Nov 2022 06:04:17 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p0NhA-000BFL-1L;
 Wed, 30 Nov 2022 14:04:16 +0000
Date: Wed, 30 Nov 2022 22:03:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <638762b9.UaAwK4RaZzkucmFf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669817072; x=1701353072;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=LJaZJGWL23mHWgNwG7+SQWsXBbm77SxYcnB+5Dr6MyA=;
 b=HpyBf+QS+kGBgsoPWixKfH209t1OZT3n310F83GzncFwd1nsZqn7dS9N
 Bj7o/V6kTriCzJ6/OdChBSET8nIhJr0SWgNNKYNgY47BOVcTW5WOOvX+T
 bl2W8fYKc2a2UDDQJ4vhtplMrv/AS54NdX/hYMH/3Q3otWWBC9Usmtz2S
 uWae6khBh1TyIgY9AkCcKN1KIgDAz+A7QfKJYY+XJv3AM1iU5Q5c9B0ft
 FtdUibafVTd1dk4xGvRfYx/eN0edCONqipoRDTkquVe14K8CMVjA3Onx2
 pLq60vBf4a9Hr8C6X1tNIfD6+emxkOJb8TmR3i6zcS3Z5UD9Ibm6T9BvZ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HpyBf+QS
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 da5b9df6ec59ffcc83c09b4fe41dbc2bcf46d1df
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
branch HEAD: da5b9df6ec59ffcc83c09b4fe41dbc2bcf46d1df  ice: Fix broken link in ice NAPI doc

elapsed time: 743m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
ia64                             allmodconfig
x86_64                           allyesconfig
arc                  randconfig-r043-20221128
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                            allnoconfig
i386                                defconfig
x86_64               randconfig-a002-20221128
x86_64               randconfig-a001-20221128
x86_64               randconfig-a004-20221128
x86_64               randconfig-a006-20221128
x86_64               randconfig-a005-20221128
x86_64               randconfig-a003-20221128
i386                 randconfig-a001-20221128
i386                 randconfig-a005-20221128
i386                 randconfig-a006-20221128
i386                 randconfig-a004-20221128
i386                 randconfig-a003-20221128
i386                 randconfig-a002-20221128
x86_64                        randconfig-a013
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                             allyesconfig
x86_64                        randconfig-a011
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                        randconfig-a015

clang tested configs:
hexagon              randconfig-r045-20221128
riscv                randconfig-r042-20221128
hexagon              randconfig-r041-20221128
s390                 randconfig-r044-20221128
i386                 randconfig-a012-20221128
i386                 randconfig-a014-20221128
i386                 randconfig-a011-20221128
i386                 randconfig-a013-20221128
i386                 randconfig-a016-20221128
i386                 randconfig-a015-20221128
x86_64               randconfig-a011-20221128
x86_64               randconfig-a014-20221128
x86_64               randconfig-a012-20221128
x86_64               randconfig-a013-20221128
x86_64               randconfig-a016-20221128
x86_64               randconfig-a015-20221128
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
