Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C95C26254D9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Nov 2022 09:04:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4766A4160F;
	Fri, 11 Nov 2022 08:04:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4766A4160F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668153850;
	bh=YILblXVEtv+0tVZtxhfD0cWreQqsC9zkTtnwjRMqOl8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lfnI8gSSKWzpKDGDWK33M6QldwaaWf28lXs4wdB1Q4S5HkL0wRSnWWnt0VQWqvGDl
	 Y5aPj/YdHi8xkl2wVKn0nkKkCWBEehql4HVuaJ3rIuDrwyYZaLbge+TygGasennXsp
	 eJZ6n5L2FX4qgk4NxipYPml42PzGB34IK7eAFUtLRax6c6hyV91Sej4qVYi06+KOW3
	 DFQK9ysGV5Sigi2zPGMK+OJpu27ZrrQ3rJu174pUfQVUqk7qr58QTzivG815Fs8h3I
	 cUkIUH2PZpZoLgIjbaulfqnc7C+Q7oAsdI7EFlSTpwovupFWECDn68GPE/K6urCe9N
	 5T0vHxyuf/cNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vvIn0X7hBcsz; Fri, 11 Nov 2022 08:04:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E31554155F;
	Fri, 11 Nov 2022 08:04:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E31554155F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A9031BF85D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 08:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5447280FA8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 08:04:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5447280FA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bFn3HXRfQGsN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Nov 2022 08:04:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B18580DAD
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B18580DAD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 08:04:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="313338591"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="313338591"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 00:04:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="670671063"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="670671063"
Received: from lkp-server01.sh.intel.com (HELO e783503266e8) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 11 Nov 2022 00:03:59 -0800
Received: from kbuild by e783503266e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1otP14-0003kX-33;
 Fri, 11 Nov 2022 08:03:58 +0000
Date: Fri, 11 Nov 2022 16:03:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <636e01c2.qr1TYG3ThPAwL4AF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668153841; x=1699689841;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=lxjcz0VPn2rI1xBDI9jGJY2VomNRfZQFAosd8wA7rxw=;
 b=cU3VWSQtXdh60ALMJa8NUGT5MWfozYX91Fi2rj8MewaQjagUmOUTGQ3K
 aU5c8l6zrOIwDfFr4lfvWYlLUJ4tqYq1SPwpSmH64C4Jp2eobTTXsFXVQ
 QfGF2TbQCZj3B+kogU2lS0YQ8TbUDggbF+2uYyRZ1EcDRv1jx0S3oGH1l
 TUhA39uCLYAUBhQsm4rOSdmF73o5oWd/GOp5nziIoB+Vl9u9UlYPULwNP
 ifR7jPp6/Lpn7Xtyzg3aT2adOKW05iBUpO/+fKhb4DNJ200NFH4+93ERp
 gp2GGIffAj4UMo006XfIB6R8zoItNAt/Fh4q0/7dl8Tq5Dic4mxq+k+6p
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cU3VWSQt
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 8121c60d61269dc91c5757bd0c4120bdaf00ce73
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
branch HEAD: 8121c60d61269dc91c5757bd0c4120bdaf00ce73  ice: fix handling of burst Tx timestamps

elapsed time: 725m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
m68k                             allmodconfig
alpha                            allyesconfig
m68k                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
sh                               allmodconfig
x86_64                            allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arc                              allyesconfig
sh                           se7724_defconfig
parisc                           alldefconfig
arm                          pxa910_defconfig
powerpc                    amigaone_defconfig
arm                           viper_defconfig
i386                             allyesconfig
i386                                defconfig
arc                        nsimosci_defconfig
ia64                             allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
sh                   secureedge5410_defconfig
powerpc                 mpc837x_rdb_defconfig
xtensa                    xip_kc705_defconfig
powerpc                 mpc834x_mds_defconfig
microblaze                          defconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20221110
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc              randconfig-c003-20221111

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
hexagon              randconfig-r041-20221110
hexagon              randconfig-r045-20221110

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
