Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C35C9584B15
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 07:26:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07CC941586;
	Fri, 29 Jul 2022 05:26:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07CC941586
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659072394;
	bh=1RrtkCWik3MebXp82LhABRYbxUmN4qz47fKwiN9BYDk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=say2VguuT16XeS87ewPtN+qtAv2dInGamvEtdBoEYjZ9gpxZgrN3fL59AjUccEVp/
	 fMkNIPXhSv9tB/C7ipq/kcmpAMuxLAWjDY+s/3w7QhNDtyWXr9WeST2TFinEP11YIg
	 8WoVonslLES0m6LkwREPDWx8IYcN0eYkl2dHxSSPn60r3EZiPIX6x65ZVzVAFC7aOl
	 QBkqQex1CNEov3+DCbPvSChyEZ+MRwlu9iJ70XaCxz8DwDrNXWjqeXLxyQfuZG66On
	 6cnUi+nnLhvEspUGNuv0txkfzlBCphB2Nbok1+KR1Ff5IdQaFc3FfkzpEp8QSQbm2J
	 MdlPTz9DvD75A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkecylajKkX6; Fri, 29 Jul 2022 05:26:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DC144183B;
	Fri, 29 Jul 2022 05:26:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DC144183B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA2101BF34A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 05:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 83B1283EFF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 05:26:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83B1283EFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7tDSBRDf58E9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 05:26:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B10383EFA
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B10383EFA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 05:26:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="286244413"
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="286244413"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 22:26:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="629238291"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 28 Jul 2022 22:26:24 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oHIVz-000B93-1U;
 Fri, 29 Jul 2022 05:26:23 +0000
Date: Fri, 29 Jul 2022 13:25:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62e36f5e.ZznlJ4YIiPtppl60%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659072385; x=1690608385;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=c8lEVunkxWOFtupGNqZa++q8oZLj0mGpc4GdvuqZwwU=;
 b=VMdojryJYfo2l79/mbd9fHhmMe+oJWknxGRgKp3tmXUbBt5AUb1aa3dq
 rkn7X336RSnjK8isNX7rn3sCmyzOpK7FvIFQePHSdzCgxqqfG5rZ5iQPS
 fAPo1hjjVRyUcyPiIuLrg+pYFrTFZpxbAdOOxxjq/BDY9wOW9FtmH0hQv
 Zb3cb6CPGTTjgk9qMBU0UBgDIbBFk7gR/sefdW90ysn+0A0dV7Rj/NSul
 NDvliktSfGjkRP+a02Ff836zXzTgLmztCZ/r8XT2OvEGHmEzLex6KcHtF
 P9Gn3CQkT1i7WN9lgW5m98q5KseAvuWcdkGzOtqDocDwuEUKzfujbL4bZ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VMdojryJ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ab7d66bfb5ffc763d2a373906000c9d374bf0971
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
branch HEAD: ab7d66bfb5ffc763d2a373906000c9d374bf0971  i40e: Fix tunnel checksum offload with fragmented traffic

elapsed time: 717m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
i386                             allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a002
x86_64                          rhel-8.3-func
x86_64                        randconfig-a011
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arc                  randconfig-r043-20220728
riscv                randconfig-r042-20220728
x86_64                    rhel-8.3-kselftests
s390                 randconfig-r044-20220728
x86_64                        randconfig-a015
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a006
i386                          randconfig-a012
x86_64                        randconfig-a004
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
hexagon              randconfig-r041-20220728
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a014
hexagon              randconfig-r045-20220728
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a003
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
