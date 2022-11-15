Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F17A629E9A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 17:15:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A13FD40AF0;
	Tue, 15 Nov 2022 16:15:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A13FD40AF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668528919;
	bh=qXf4HpOcObP89oQ9MuHaQRZdo1TZJWzkvws2y+TjRxY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FPEL92Cz2VBeGhAJMAQ0B+FaDX5JDf3NiyZZWOFiml2Ca+rIM9SIkSkXQmWyg7qIB
	 lKcDjbgmkHTX+LFr5Wd+cFlciLSknLzbk8yb7J3nMQeVYbJfkOZvdWYbKHye/3k4oi
	 nlJbBWQeCx7CG2LNQHLERQDLwXI5KamAdvlvXMTCDzb659wo1RltpYYhlAnBnuUPoi
	 HaXtjiLakHm6IGtULHgk4m9CKUOFy/qkN00n9CRoT8Hd5/wYzBnKfjdUEaz+s+OBHA
	 QndrpdHWAjJN97twx8EsTqQD067icSy2YCZe6Z3AdRwRIWhyrgqsK9GHmMiGUgKuYh
	 NMZLvWOzbprpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1-h9AcBEByx2; Tue, 15 Nov 2022 16:15:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B075A4026A;
	Tue, 15 Nov 2022 16:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B075A4026A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C03911BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 16:15:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A655D41690
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 16:15:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A655D41690
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PaOo1XRf8eN9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 16:15:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 937E84168F
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 937E84168F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 16:15:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="339091929"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="339091929"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 08:15:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="781393881"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="781393881"
Received: from lkp-server01.sh.intel.com (HELO ebd99836cbe0) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2022 08:15:10 -0800
Received: from kbuild by ebd99836cbe0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ouyac-0001Tf-0H;
 Tue, 15 Nov 2022 16:15:10 +0000
Date: Wed, 16 Nov 2022 00:14:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6373bafa.BawfAp6QT+G8H523%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668528912; x=1700064912;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tcOSC3w2LhYKknj+WuChNSZgPxScaePl6uEb5Arzrrs=;
 b=gcR5WiHEpOZwqI4k+V3tloBstIPU9la4QZHHYNcQBzdIk48bZk6JMxOF
 WKWGTgRU0rJgZ96g4eXjj5sthbAbac1Q5djXFIae9wCsFiOwY3rb9n1Ox
 lCE4iHWZOja9QXklfo3Kosz7XFl3NQLl7uhVZtGsrT9MeDt2tfT32N2gM
 SJ4HLB8xoRwfjcvGUC/YCXb1PaiTNPXTBwL2N3IuiREwUe2tqglminXvi
 C7AOf0DOVaz5V8qNI65j2DBs1zU2BYgwbd2qpdp1ZjySDW4flIuH/Fe4T
 TEU27JgGq90LrAjGDFt1R2fUQYww0l0qfzY1S5QWJ/1rUMSXGiQxQXpIU
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gcR5WiHE
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 65bf0870a6a0335a8c37d30e3fabd155f5594fe7
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
branch HEAD: 65bf0870a6a0335a8c37d30e3fabd155f5594fe7  ice: Use ICE_RLAN_BASE_S instead of magic number

elapsed time: 936m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
powerpc                           allnoconfig
s390                             allmodconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
s390                 randconfig-r044-20221115
riscv                randconfig-r042-20221115
arc                  randconfig-r043-20221115
m68k                             allyesconfig
x86_64               randconfig-a002-20221114
x86_64               randconfig-a001-20221114
i386                                defconfig
x86_64               randconfig-a003-20221114
i386                 randconfig-a001-20221114
x86_64               randconfig-a004-20221114
i386                 randconfig-a002-20221114
i386                 randconfig-a005-20221114
i386                 randconfig-a006-20221114
x86_64               randconfig-a005-20221114
i386                 randconfig-a003-20221114
i386                 randconfig-a004-20221114
x86_64               randconfig-a006-20221114
ia64                             allmodconfig
i386                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
hexagon              randconfig-r041-20221115
hexagon              randconfig-r045-20221115
i386                 randconfig-a011-20221114
i386                 randconfig-a014-20221114
i386                 randconfig-a013-20221114
i386                 randconfig-a012-20221114
i386                 randconfig-a015-20221114
i386                 randconfig-a016-20221114
x86_64               randconfig-a012-20221114
x86_64               randconfig-a013-20221114
x86_64               randconfig-a011-20221114
x86_64               randconfig-a014-20221114
x86_64               randconfig-a016-20221114
x86_64               randconfig-a015-20221114

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
