Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA94C5B4542
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Sep 2022 10:39:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1646C610AF;
	Sat, 10 Sep 2022 08:39:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1646C610AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662799146;
	bh=4vxj+J/J9dAKOvML4RFkHtgxSjIPXFCCLDFRlKz0Blo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Yqu72AUDtjnlarZ9OAiu2mLlmfXTvPKYq8kZvqR6+VKr2ZPNZFAB3n84yNq8WUZlB
	 G0NpMNYkaIV8dSo/BiRGeZLGUOR2cgnuOJwwSLG13s1ihbZYscQJRt/sjNdvFbDJJT
	 W0urssoqqDIllmgFQNffjiEAxHB5SqFjxRCwnzptJSLe+KrLBTjXxfCmcFywFgnija
	 c92p7BSSi6J+s4IXeFBWmrrYlTAWnx5oF1JKlIOiZ997R+lJnNsGcDq7whdMIfYsnd
	 QANzV5egmT3VYSawGVIAhdb/liyjR76MMDcl7GockG1BB3wKIYpMY/Y8QzgoByBdy0
	 J5YhgXbMAZLyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GhoQEjVqi4IZ; Sat, 10 Sep 2022 08:39:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB25260F25;
	Sat, 10 Sep 2022 08:39:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB25260F25
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA32B1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Sep 2022 08:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8370540133
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Sep 2022 08:38:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8370540133
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pYRInmwnTIe8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Sep 2022 08:38:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C5B44012E
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C5B44012E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Sep 2022 08:38:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="296363682"
X-IronPort-AV: E=Sophos;i="5.93,305,1654585200"; d="scan'208";a="296363682"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2022 01:38:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,305,1654585200"; d="scan'208";a="645826919"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 10 Sep 2022 01:38:47 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWw0l-0002K1-08;
 Sat, 10 Sep 2022 08:38:47 +0000
Date: Sat, 10 Sep 2022 16:38:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <631c4d03.jVheP8suzyspd6fH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662799137; x=1694335137;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vh31bGxw70dOlcmYhrxuWu1MT8DJJcZ8VV3HPR00OHk=;
 b=InU/lla/0gsxP3D/8RZDUFTImnvr8po9IIlXMzvL2MGg1C+gpktG6wXY
 a3PYAWHVeA33luD5gov+y2sZcOSzNRqgv/uECVHSbm3B/AsPjCByXWcBW
 B6ZSouC4ggs00qE6iDVM81M/8BxfWWnOjdd/+I55YVAO4QMRplcb2qn39
 nzWB+uFPjtrXFXhbuCMMtWnNUgStsKuxRR9bR4oDo6yl1LAnEft7s9uZS
 8sN+YbIGyBV9ylq/vGjYz9IeQBeGcqUEvkTFQ9TS3g3m+KkDP7ecvMgN3
 PQH55Le/R//8PmOCnxJ9OonZRjqdKS8a2v7Ofi+cBO9II7nM7P1edELif
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=InU/lla/
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7def824e315b047b1562b5215e6df8f2637d25a8
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
branch HEAD: 7def824e315b047b1562b5215e6df8f2637d25a8  i40e: Add appropriate error message logged for incorrect duplex setting

elapsed time: 891m

configs tested: 57
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                           allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
i386                                defconfig
sh                               allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                             allyesconfig
arm                                 defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
arc                  randconfig-r043-20220907
arm                              allyesconfig
arm64                            allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a013
i386                          randconfig-a014
x86_64                        randconfig-a011
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a015
ia64                             allmodconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
hexagon              randconfig-r041-20220907
x86_64                        randconfig-a001
hexagon              randconfig-r045-20220907
x86_64                        randconfig-a003
riscv                randconfig-r042-20220907
x86_64                        randconfig-a005
s390                 randconfig-r044-20220907
i386                          randconfig-a013
riscv                randconfig-r042-20220909
hexagon              randconfig-r041-20220909
hexagon              randconfig-r045-20220909
s390                 randconfig-r044-20220909
x86_64                        randconfig-a012
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a016
x86_64                        randconfig-a014

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
