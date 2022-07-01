Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C10495631E1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 12:48:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0361B418B6;
	Fri,  1 Jul 2022 10:48:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0361B418B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656672530;
	bh=jdwCWLoxioC6AcK9Wd88jWaNNjJMaoLvsF5XydKWK5Q=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nmExSc4zFgK36uuQNRgogPf8Uuwa/lbH42T+1DFMY5V1wa3hehq3sDpi7bqHStIyq
	 MGDYCp53lbXzFaEuX6SF4uGKqLzhRmwB7/yrobG9UT5TbH+5WEum9WlBZb6/9kXcB4
	 KQYH3lD41NFAGS93SjX/pXtbxFHMQYMtkv8iBrfqO9l4fCRiW2Gj+8U8NUh8d3xIdA
	 GfU2VYO5e65YY/vuYfbHgVghBd5riuFeDLWS3pRFzB5Yb0Ad/zxPWHl6s/5Lr7VbAS
	 +bk6IGaxyMVV5PEcsosiYWMHhMSSzKQvONgZ3PQkYHQeHDWTpvZfED2gL4ov2YQnGJ
	 FvD91fwZFQxrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5zK6kYSv7mJJ; Fri,  1 Jul 2022 10:48:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9ED6F418B4;
	Fri,  1 Jul 2022 10:48:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ED6F418B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 714E91BF267
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 10:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4AD50404EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 10:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AD50404EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ud0rwue9W3jx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 10:48:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D757404C5
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D757404C5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 10:48:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="368942042"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="368942042"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 03:48:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="659394525"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jul 2022 03:48:41 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o7ECW-000Drc-E8;
 Fri, 01 Jul 2022 10:48:40 +0000
Date: Fri, 01 Jul 2022 18:48:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62bed0e8.pKOHhGJSUanMzoY2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656672522; x=1688208522;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ymBlqWcMOz6c4lmAadZxWJeoOLv6SuZtKZYpVCdkay8=;
 b=j+lYkmv6P1kYdyME/2V3KcaFiaj2hgoHuJUsXVsbA/qi0ZeFHX8UlEv+
 q5LDt/kMKSCY22KHfp31ecoKJOjrEeROSItQgPJbVf/pDpNW0Y5z6i3Rv
 0FIsx8Ce6eRPkpeyJ6SiKUPHvCd9aM+6pLGWpeAQb/l/QBqal9K16+KVT
 2tLrqVAPkTQCvnFCG8YjrA8C7R+t/aJQM+fadD5y6pW75Al5oybeQXUL+
 xe5hPHNlVC28Y725YgwxSvn5PEKEJQ7gMfl1ZUcbLd/THH2ip4FN1VzwQ
 q8VJ77+Ab6VFZHmyrmuGfz03Dfy6d4rNHJUnxCv+S5Ocozu4sE11DVwqx
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j+lYkmv6
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7387cb8c5b65df570a9b8cfd63eff074bd60d64e
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
branch HEAD: 7387cb8c5b65df570a9b8cfd63eff074bd60d64e  ice: Remove pci_aer_clear_nonfatal_status() call

elapsed time: 720m

configs tested: 51
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220629
s390                 randconfig-r044-20220629
riscv                randconfig-r042-20220629
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220629
hexagon              randconfig-r041-20220629

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
