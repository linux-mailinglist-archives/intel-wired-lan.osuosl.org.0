Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4BF62B41C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 08:45:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15D6B41766;
	Wed, 16 Nov 2022 07:45:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15D6B41766
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668584705;
	bh=G3x+Mi3shLnKoi2JDkJiUojRuoi+Poy4lwHIn2vAAwc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PvepYOaclVozj4+fhePqJ9ZQEJHeJ0nSlNEW5oFwL/n4WGanf3s5cdyo/DO2bTFnA
	 aRryPEOwQBx6NFmseBpgzHGqAqPxo07OOppwR2AQzgm0cVu5FuYkFk5yH6RCEfYLJ3
	 5rqvxHskYkxbJRSpMiCJyU0h3289ZSicIT7bMH5fo0Mkl2mr0LwwlmP9UqTDxPLLm8
	 PeAcXw8TWB39Q9ScYD7Jf+zv872PA9v/LownaZ2QBwfxd+/WFRxMbMhf0l9PYAJ1ko
	 gZRBrsVxMWNx16c0D+2kB+LNtO3gh5YKLIXE0F2rWdg/l92d4N2rMDioSnthPF7BJw
	 F2jWk/8/yWTVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VBKgJphr3h3w; Wed, 16 Nov 2022 07:45:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5E1B4097F;
	Wed, 16 Nov 2022 07:45:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5E1B4097F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 916EE1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 07:44:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 696A04097F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 07:44:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 696A04097F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DlSbuZdex-U9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 07:44:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3153F408F3
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3153F408F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 07:44:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="310105251"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="310105251"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 23:44:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="744944611"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="744944611"
Received: from lkp-server01.sh.intel.com (HELO ebd99836cbe0) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 15 Nov 2022 23:44:54 -0800
Received: from kbuild by ebd99836cbe0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ovD6M-00028A-0A;
 Wed, 16 Nov 2022 07:44:54 +0000
Date: Wed, 16 Nov 2022 15:44:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <637494d6.iyUqXPsSJW0pBcV4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668584696; x=1700120696;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=yxJlXwKVK5C66AhWhNboxNKb1sbbWi/b0iGSbi2BtyY=;
 b=RQlmnTi4gBobf4vRhx4iZoijA0o0hKRLSuiOi/5tP/1wganeAZ2LHxxf
 C7CD9NouUzRj80VTR7ku/SDBIswvMMj79HUAW5hC0ag6rsE8Ela/x5b/1
 zjP0ZJSIgRCvPjbbQpvcEZignP2lSRlj87P0z/gPkpMYzGh12jOhGTGrR
 bmOMr6HNZ4o+i66XqLCGmGr2V6KMgX9DTLO7UtoeXkIrhSdybsdy70hK0
 fo8J+PNwit/Z2rKOHxZeG92YEea2naPJ/rF7Zsi7R1VZ6bx5as8hDp8j3
 wih7cVRY6cMHANHF0mPnTjedTcF1HmoFmwCOFXAiWnHxSI6JVgK8G0DtV
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RQlmnTi4
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 9d45921ee4cb364910097e7d1b7558559c2f9fd2
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
branch HEAD: 9d45921ee4cb364910097e7d1b7558559c2f9fd2  bridge: switchdev: Fix memory leaks when changing VLAN protocol

elapsed time: 1122m

configs tested: 54
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
i386                          randconfig-a001
x86_64                        randconfig-a002
i386                          randconfig-a003
x86_64                        randconfig-a006
x86_64                        randconfig-a004
arc                  randconfig-r043-20221115
x86_64                           rhel-8.3-kvm
i386                          randconfig-a005
riscv                randconfig-r042-20221115
x86_64                         rhel-8.3-kunit
s390                 randconfig-r044-20221115
x86_64                           rhel-8.3-syz
i386                                defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                             allyesconfig
arm                                 defconfig
arc                                 defconfig
alpha                               defconfig
arm                              allyesconfig
arm64                            allyesconfig
s390                                defconfig
s390                             allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
s390                             allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allyesconfig

clang tested configs:
x86_64               randconfig-a014-20221114
x86_64               randconfig-a016-20221114
x86_64               randconfig-a015-20221114
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r041-20221115
i386                          randconfig-a002
hexagon              randconfig-r045-20221115
i386                          randconfig-a006
i386                          randconfig-a004
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
