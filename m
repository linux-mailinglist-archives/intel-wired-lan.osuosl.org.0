Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C3F563201
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 12:55:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 657A160FFD;
	Fri,  1 Jul 2022 10:55:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 657A160FFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656672949;
	bh=rn648EG2MFcaAUKXWWil0OnSL5VwDblqlpIHqsi95i8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tU/w802nx4RrMzYFqYv9dEjbG5tELSlUELF7gV/CvjpwTHDTvrOIHt0EqPf2eU2qY
	 SqEAMS0K3rG/nCE9T0wfkhCt4FM2PQllEV7L+IGilWLh7U0WLmDFXqCyO+Edm2EGXU
	 S0oH5v443w8TQXG6QOXSOWsyOsjp7/4A+jybixeXr0S/W09blm09X6eCm0J2ndAOm1
	 JfSWm59897lHwj3jWFrzhgR7JxJrcGOfj4KZ5UHFKX8yRJPxrYnrqt3GCMtG4v+hFe
	 LAjEtaHEBMnIQ6qbt8AMffehUOYFL4awyuYjqP97Fb6tR7tI11mDIaKGeOLMgO4ulv
	 +uH7e9Aq93OIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lokcrAkfhZCI; Fri,  1 Jul 2022 10:55:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F0E760F19;
	Fri,  1 Jul 2022 10:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F0E760F19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 968671BF267
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 10:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6397840436
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 10:55:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6397840436
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dhV12qpXkyvt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 10:55:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71853400E2
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 71853400E2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 10:55:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="282655338"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="282655338"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 03:55:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="838006004"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 01 Jul 2022 03:55:41 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o7EJI-000Ds8-LF;
 Fri, 01 Jul 2022 10:55:40 +0000
Date: Fri, 01 Jul 2022 18:55:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62bed296.xhE0aUM1sbV05H4F%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656672942; x=1688208942;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mEaA3i6jvEARD5++9YD/spoeEIjSbJPP2dmNH3O4soI=;
 b=YL/VGoSf30vtY5tOnJp/wf/oWC2UXJ0YdPa7bjECVQcmUTVITISosd7E
 Fh/TMN4zTndx4jzhZYCsDhxeBU/BqZkolWLDUqp/Pi6Xeb5M/URmW6tUe
 eP0EfLAZ1AIOcHnPaAi+gemnS0ZOSkVY+e6yS4X0PXdXfsIL4zrJNUdcC
 3/oJK7Qr5l9zaBETZ1TB0YgXvcWkf9ILwwD+yyR+4Z3HPdx7NNJOPjdtG
 b1esN87GIsFA9urviG2r3FFnl2VptiZFYJi4iv6/JDMV4rwialVRaYHvh
 xQ/vKcAXnRSW9zNEp0MZYPi/4EwA5lZy+YfXYO8TIxb9ZHfKPrScRCxC5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YL/VGoSf
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 b7d78b46d5e8dc77c656c13885d31e931923b915
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: b7d78b46d5e8dc77c656c13885d31e931923b915  net: phylink: fix NULL pl->pcs dereference during phylink_pcs_poll_start

elapsed time: 877m

configs tested: 27
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                          randconfig-a005
x86_64                        randconfig-a015
i386                          randconfig-a016
x86_64                        randconfig-a006
arc                  randconfig-r043-20220629
s390                 randconfig-r044-20220629
riscv                randconfig-r042-20220629
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
i386                          randconfig-a006
x86_64                        randconfig-a016
i386                          randconfig-a015
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220629
hexagon              randconfig-r041-20220629

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
