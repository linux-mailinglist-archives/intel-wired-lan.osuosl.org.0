Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A17363839B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Nov 2022 06:47:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 853FA40235;
	Fri, 25 Nov 2022 05:47:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 853FA40235
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669355226;
	bh=jDvaM3EsQUHw2NUku78IgP8s/oQRsY2rhdIgwNp1WgE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pIgdwi/XFeqdV1twnhHO5H0GlAe3rhiIu8di4W/rB3lHXI427YsJnzjfvt65f3oWs
	 bP2k11KjshBMiyExsbMpZNj8b5YNjrssoiwTmHF6GGzsCaIV13wvp8LAgPHme42C48
	 AkjwNSjxxPGq5OPcM3FFhrksrzpd/Cqtb0tFOBw8SJbeiTttC6ygNsmHX9szmTFudf
	 gL9lmzAXJA3KadoDCIFYgWCN9cGx0PMSDBEUV/dtCDUx/JxPe6jwMgC40yyjVkxJU2
	 zWhF7Sy1OQ2AqCqjKUeywdjzOuv0tps3VsU1nI7Zxl9XYzioAXHjTW04jENOqxpvyq
	 upkZlM+PWsGTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wPLiHS-i4PSi; Fri, 25 Nov 2022 05:47:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7829940242;
	Fri, 25 Nov 2022 05:47:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7829940242
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10CD81BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 05:47:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DEB9160E8F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 05:47:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEB9160E8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id axL21IL3ru7d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Nov 2022 05:46:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A902C60DB7
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A902C60DB7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 05:46:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="297772591"
X-IronPort-AV: E=Sophos;i="5.96,192,1665471600"; d="scan'208";a="297772591"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 21:46:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="705963152"
X-IronPort-AV: E=Sophos;i="5.96,192,1665471600"; d="scan'208";a="705963152"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 24 Nov 2022 21:46:57 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oyRY8-0004iY-2F;
 Fri, 25 Nov 2022 05:46:56 +0000
Date: Fri, 25 Nov 2022 13:45:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63805697.gczpCgPff5ZVEo2Z%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669355219; x=1700891219;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=BhC9+DieigZTQ6IbAEXNk0AS4oYcGKTCRCvZ/Tnufmk=;
 b=WpCxWPqiuqfwyo+rDg7u1rj+Fb0Djku4L0fOTF6A7U87lSc78ChVokR/
 OpjDLnO1/aK9oeoSYuVrjfqpTUBVQA72Xn6g8cFswFALyf+3GPrFAXinA
 vKeCclBKxnLYTqjx7GD/oRFgXrH68FiWrYcubdVHEc1Q1HpRT7xeyVdhx
 QQUsvViS2cOXCYG+4siZKJvtLdtnkvnkIDLHud3GlRkm5XIPq7PLP6fm1
 73P152WvfAQwzVhgGtCl8wFpv9c+5Oi3++EB32QN+oqfoOv8V5v0GehEW
 aDprI9PjmFxnuJ1GGZg6ukxcTY2UpuWUtKngZykp6pUIImg4RTKcDlFPP
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WpCxWPqi
Subject: [Intel-wired-lan] [tnguy-net-queue:10GbE] BUILD SUCCESS
 45605c75c52c7ae7bfe902214343aabcfe5ba0ff
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 10GbE
branch HEAD: 45605c75c52c7ae7bfe902214343aabcfe5ba0ff  e100: Fix possible use after free in e100_xmit_prepare

elapsed time: 2021m

configs tested: 54
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
um                             i386_defconfig
alpha                               defconfig
um                           x86_64_defconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
ia64                             allmodconfig
x86_64                           rhel-8.3-kvm
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20221124
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                              defconfig
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                                defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                             allyesconfig
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20221124
hexagon              randconfig-r041-20221124
hexagon              randconfig-r045-20221124
s390                 randconfig-r044-20221124
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
