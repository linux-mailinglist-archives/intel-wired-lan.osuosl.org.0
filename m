Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 417536A0B62
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Feb 2023 15:00:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A33C41B9C;
	Thu, 23 Feb 2023 14:00:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A33C41B9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677160812;
	bh=YVEzXaMJHzKSgzlAbR+qIwNWULATycwAYDzZp+jlNjQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fHPzKfg7jYA2Ib6Ri7jO+wQvvAHvm6I89rysme3LM18fduPgz2XMbhg7rWfIUxzSR
	 fm/8vvjELoVAUToMeBpotGmCbJs1YbqrcF6XYjNPmpXSD6cvwSI327u6IMIPg1W3Ai
	 T2+gSFUD3gk7c46pUouO5FxOGsBmVQidFjFIj5t8QWmvPxvwyYc6ur52Dh7VgCPWDK
	 rVWM0vbzkNUmdiT6wwsFQZyOS2rG//3qNalnmgKJN79xjl1JScs/dFQlu6o7b6SbAr
	 Yy2glj4TdLPbpbM98xuljhctgcy3K1J1TbV73DgUvY0A8SH9klGlZtV7/LaWZ4ZE2q
	 lD4l517Qx9DZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BYc5zJpIYBl6; Thu, 23 Feb 2023 14:00:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D74741B8F;
	Thu, 23 Feb 2023 14:00:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D74741B8F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52C701BF41A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 14:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 258C38135B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 14:00:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 258C38135B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ul3KjDvxsK2h for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Feb 2023 14:00:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 342988134D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 342988134D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 14:00:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334584335"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334584335"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 06:00:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="781889739"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="781889739"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 23 Feb 2023 06:00:02 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pVC8f-0001NF-24;
 Thu, 23 Feb 2023 14:00:01 +0000
Date: Thu, 23 Feb 2023 21:59:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63f7712f.+HRL2x6ITB/pnt3B%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677160804; x=1708696804;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=flB8dRVGiYdKRCD+0Jos33j749GPQ1JW0n83Z3oGKzk=;
 b=cZMlPK69FAJKo9nn0EOc8vhA77yaDk0PfjHaOYs3g6p0AD5v/AcCvQiB
 jR5UUF9UcNIr0LLNVdiSio5pPmkF4MR/c3gzqbW6a8Nkn0OrBaiUG8ezC
 4fuQYLJzk7QArlB9uxzFxmDm3uC2uRA07GMVSqgVcSy5ZBBwSPwy1T1PZ
 9tMsLhNx8cU02byfmWmMChlWiFa0+q4Myxsonj1/bM4biQ5x3AkHm0j3O
 TpJ7XJVxFgaX5ox4ouYcyeWd65/UlS/uE4EgMJlZ4QghcWxz2j3rDikq1
 pfikRjeI/jFMBXaAqwoSGZFb6oYSURKodQDf1Pkbp1NV04Vej1ye2UZPR
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cZMlPK69
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 302ea1554fbca5ca4d5b78429f6450de9ed6ab18
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
branch HEAD: 302ea1554fbca5ca4d5b78429f6450de9ed6ab18  ice: remove unnecessary CONFIG_ICE_GNSS

elapsed time: 720m

configs tested: 67
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230222
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230222
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                               rhel-8.3

clang tested configs:
hexagon              randconfig-r041-20230222
hexagon              randconfig-r045-20230222
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
riscv                randconfig-r042-20230222
s390                 randconfig-r044-20230222
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
