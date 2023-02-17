Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACDC69A59A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 07:28:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81D7860BC0;
	Fri, 17 Feb 2023 06:28:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81D7860BC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676615298;
	bh=UPzE1joSSSX5OQQ8nuZZ7bPx1BAnWUVrWt5ukxbvhpQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bcH0PHjTKZwGbDpibfBkBWo2eWc9VYp6LGu4cFGebgGMdNyD8Wo17XpsXBfxpK28v
	 AXieZViHdAs4dL0BQl9eD+iF1B/QLnZou/dzr906sTz8lCAlsYU21DKbbb0k+lO/VJ
	 xUOYPhQmIoUm46HJwuowQserB5/rKEMP2Cbh4zW4ufgxZ6usJ5DSkgkbvN5/F1INrH
	 z7GbHJBhJMm2T6A0mpwq5dra8aXx6+K5bXcJxsujdeS9UVD+7HOfLgxzvVR7PF3xGK
	 iAejUuTsrIJAGLyVvoNWJ8ZN0XD03Quevf4lVw6JCRw4WR6DPB6T2SsGR7gqA250/4
	 SAH4vW74eh3Bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BnvvnGV34tec; Fri, 17 Feb 2023 06:28:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B9C4607C9;
	Fri, 17 Feb 2023 06:28:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B9C4607C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C3151BF363
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 06:28:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1438F40217
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 06:28:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1438F40217
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ThxxxYrHP23f for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 06:28:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5B56400A4
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E5B56400A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 06:28:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="320023920"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="320023920"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 22:28:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="759253048"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="759253048"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Feb 2023 22:28:01 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pSuDx-000BAx-0P;
 Fri, 17 Feb 2023 06:28:01 +0000
Date: Fri, 17 Feb 2023 14:27:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ef1e39.HilOK33TfTs1e/o9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676615290; x=1708151290;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=KfAv31IRGp/j5Mw2WDMe20G+wZFimNF4mIKIjYqUz5g=;
 b=cSwYAGsj9gMwlDCt2Ya9GDO+h0h6CEteHcxQ1vhKXipKnvIsgk8U4Jbc
 JZ6hGRQVz2xaJOwp6UE27dvB/P8BSJG7BKe0zBsNj6bbcyGBo/+Ahr6sD
 HsOBAGySBCzL9EDhmSFJ6rXRgeW3ZX5tcFld9yusEpJ4/+UV5FqsUmMMl
 YKbkCecwoF4ZdIwshtdlxGWjTTBu4UX6iYO0fsE0lTOwcazCW1tVJv1NN
 Pa2C+B4jGAYLKIcxlSKE7DbfG4dXdgMVxX0QsKXGg6ob7o/TJt9QLPGyD
 Xt/et9LcUSMreLKCW99IOpowmLrh9RQgQaORHpaZocpjLTgJ0u109cQbn
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cSwYAGsj
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ea76b424d091cde672c159c8b093ea3ed2ebed5e
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
branch HEAD: ea76b424d091cde672c159c8b093ea3ed2ebed5e  ice: avoid bonding causing auxiliary plug/unplug under RTNL lock

elapsed time: 752m

configs tested: 73
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230212
arc                  randconfig-r043-20230213
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230212
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                 randconfig-a011-20230213
i386                 randconfig-a012-20230213
i386                 randconfig-a013-20230213
i386                 randconfig-a014-20230213
i386                 randconfig-a015-20230213
i386                 randconfig-a016-20230213
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
riscv                randconfig-r042-20230213
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
s390                 randconfig-r044-20230213
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64               randconfig-a011-20230213
x86_64               randconfig-a012-20230213
x86_64               randconfig-a013-20230213
x86_64               randconfig-a014-20230213
x86_64               randconfig-a015-20230213
x86_64               randconfig-a016-20230213
x86_64                               rhel-8.3

clang tested configs:
arm                  randconfig-r046-20230213
hexagon              randconfig-r041-20230212
hexagon              randconfig-r041-20230213
hexagon              randconfig-r045-20230212
hexagon              randconfig-r045-20230213
riscv                randconfig-r042-20230212
s390                 randconfig-r044-20230212
x86_64               randconfig-a001-20230213
x86_64               randconfig-a002-20230213
x86_64               randconfig-a003-20230213
x86_64               randconfig-a004-20230213
x86_64               randconfig-a005-20230213
x86_64               randconfig-a006-20230213

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
