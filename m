Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DE36381DA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Nov 2022 01:07:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA8DD41BD3;
	Fri, 25 Nov 2022 00:07:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA8DD41BD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669334874;
	bh=ZQ7hJFlWdGWPwEr2BRLQNSDA7N0nxaY4mopZSZMEksM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=O7x8esW8G+/3h1EH6hMKB0GLaPVgCqUYD8n2PrLy2gmvL6sEnsxlXZ2sRwOYB5Cj6
	 kBrY4iNWKjAPyzBR29Q+48dCsjspHrjYaXbuE22WHx3WjKjRHkfCUpDdXWV+UyvZE3
	 nAfW8ELuko9XUaC5wWwXHWYaL6tJs/0voGpOsUz5/sCCBM0qR6++crnfa0PNQLDX+7
	 CL3xl6l0P8lFhMdcYb4Iyv7ny67oM6uICQCJmMK92eVK9MBMvOG1ZHm4kJ6iomvcpG
	 wxDK/mRvVDTx7+QYFT1+oFE4R0UEWR3UUNqFKuaHlvzXPbVe4YzMxq8c4Kw6BrsLyP
	 BzQa70Kkuh4ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GP5INS3DSTsC; Fri, 25 Nov 2022 00:07:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50F9341970;
	Fri, 25 Nov 2022 00:07:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50F9341970
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 116DD1BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 00:07:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF6C7821ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 00:07:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF6C7821ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NZK7cJaj-c-Y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Nov 2022 00:07:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F71A821E4
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F71A821E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 00:07:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="297738264"
X-IronPort-AV: E=Sophos;i="5.96,191,1665471600"; d="scan'208";a="297738264"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 16:07:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="748396692"
X-IronPort-AV: E=Sophos;i="5.96,191,1665471600"; d="scan'208";a="748396692"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 24 Nov 2022 16:07:44 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oyMFr-0004Ra-1r;
 Fri, 25 Nov 2022 00:07:43 +0000
Date: Fri, 25 Nov 2022 08:06:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63800723.OsoB8fhZULvTtC+G%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669334866; x=1700870866;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=8CVYP+7b+lSP2pdHCIVGHxI3e9GxOHCbc/Ota45kyls=;
 b=Xaw2Q9MI3eEsEGOdbcKhdTkw53LNBWsH0tiv0J50aojmTVWmsnBgyJ7M
 slpEkndxiqwqa3gOA1GoKJ/nxcnFS/2zGgFsUZJL118v2frJR4j6aFrOo
 bx7ILGPfE+yz/5+9oC7FYQBcgyT9LtLxdpNJ2CTuzRaAKUMRj9rI8gk/m
 wfR2ORYtmOEmwyIIybpmJXtWa0KoGEI7pMv0Y2phdiX0rH2qEdNkcv6eJ
 2fwLBPlzBTWGpslukdSZAW/CUWF+MWRmjjqLMSbSWV6cq4L796rDB/Tqp
 T0k5bTHxM5nK6Q6dg1k62KJDJYongbM84LaINWSsnv8PYpqSXacg+tYO1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xaw2Q9MI
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d63112e0abe5809ad4e0585885f15d3d3af4ecc9
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
branch HEAD: d63112e0abe5809ad4e0585885f15d3d3af4ecc9  ice: move devlink port creation/deletion

elapsed time: 1841m

configs tested: 65
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
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
ia64                             allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                 randconfig-a011-20221121
i386                 randconfig-a013-20221121
i386                 randconfig-a012-20221121
i386                 randconfig-a014-20221121
i386                 randconfig-a015-20221121
i386                 randconfig-a016-20221121
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20221124
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                                defconfig
i386                             allyesconfig
x86_64                            allnoconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20221124
hexagon              randconfig-r045-20221124
riscv                randconfig-r042-20221124
s390                 randconfig-r044-20221124
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
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
