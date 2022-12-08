Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F0564726A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 16:04:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 338C240BF0;
	Thu,  8 Dec 2022 15:04:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 338C240BF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670511853;
	bh=8Pu/NjLjNlhGlcRixO7UJGjOlMKsfG9waxA5q0Sa6QI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Fmo1YfK8l/H+5K6UkS0O9lqvYN+TT50DvtQCFSHvWn6YyId71MKkntlwBWLAFlshZ
	 dZgxPbW4fy19j6vAnskT9BxYOP/mVV1jCF+4LdnJE7p3EDMDsbtJHEfKyOQ0+w0Lb+
	 sVDxTwt+7PHur6E5IKKQrS/0XSW1GNx4CZZVApRzmuBBC6w/5Ocw9Zjo7BRf1ZP98j
	 CfVcjhzj7SFVzDQQRnRRtzvfYlGrBMs2nTImuobPWqdfcAsnPRmVGPi2KcQDYv7r9s
	 C6zM0GFy9gER7WqM37BYH3Cli8RAjPBvALMZKtBXy+oqW6X7GZM3fmKhtunKwk7sds
	 unPrWG7ypmTFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oa69R1cgXLu5; Thu,  8 Dec 2022 15:04:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2859540BF4;
	Thu,  8 Dec 2022 15:04:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2859540BF4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 302D11BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 15:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 145F661111
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 15:04:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 145F661111
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QssuRrblL4Wg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 15:04:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E57CF6110F
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E57CF6110F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 15:04:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="381495876"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="381495876"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 06:26:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="735812702"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="735812702"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Dec 2022 06:26:46 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3HrJ-0001C9-1r;
 Thu, 08 Dec 2022 14:26:45 +0000
Date: Thu, 08 Dec 2022 22:25:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6391f3f6.x/ARSq9o9esTxJ1V%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670511843; x=1702047843;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=EjkZ+WJWaXlUCYz6zOFDYzYhtfqKvjdI6j9wgNjmE3Q=;
 b=GIkhhUfaqzYd8f0ugZ2WTCSxft0aJHL0xVLkBwJM5kc5/Hcqv4Ndg2X/
 hMFEcQuOmFIqWzUztS5oy4E4Y2yVd0FQzjgr+uvMNEXHiipChsHOuiQcs
 GnDm2sdhcNnVwf2as6KNTdbcyERLDNDIo7Qt7ur9Y7ODc+vDG1zFbslVU
 er7xCyk0UM+vp8ZvxwnTMqhXahITYiH+g+MsMQ7f1oKn0m4UgxWU7aq2o
 kpMyRwU6/Qqd8PZXrhrnYCzNn059iBAK1ZnM8bNWCFYyuUX2Zq6iZ3kVb
 4TLmnhstfWbGCYmRGjCH7q/NRbIQ+I9hijikfBKc2rPFsxNFUW/BU+Lt4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GIkhhUfa
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 c2478f53ce3397e2d15287b3f297e7386902b658
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: c2478f53ce3397e2d15287b3f297e7386902b658  ice: Fix broken link in ice NAPI doc

elapsed time: 721m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
um                             i386_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
s390                             allyesconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                              defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a006
arm                                 defconfig
arc                  randconfig-r043-20221207
x86_64                               rhel-8.3
i386                          randconfig-a005
x86_64                           allyesconfig
riscv                randconfig-r042-20221207
i386                          randconfig-a014
ia64                             allmodconfig
s390                 randconfig-r044-20221207
x86_64                          rhel-8.3-rust
i386                          randconfig-a012
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
arm                              allyesconfig
i386                          randconfig-a016
x86_64                           rhel-8.3-kvm
arm64                            allyesconfig
i386                             allyesconfig
x86_64                            allnoconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
arm                  randconfig-r046-20221207
i386                          randconfig-a004
hexagon              randconfig-r041-20221207
x86_64                        randconfig-a005
hexagon              randconfig-r045-20221207
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a006
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
