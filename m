Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B9D697CFB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 14:18:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49257408BE;
	Wed, 15 Feb 2023 13:18:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49257408BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676467081;
	bh=sYWpZZ4O/5nZ5wXr9mMVHCVh29n0hn3JwNWsje6wb9A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=67XZzCwn9CyT5wIlLkNvMMYHAOj8/MCxFv75IeOiqlX4d7bgjTw3Jy5398EL1f/Xd
	 8AGne0lDZPamxKeimDk9Cpc1jhCNPfOSrHOvajKCeTjwOCvD+Ps7Y8JeS4qxl4Ct+8
	 h0/qYEDSXl4xDfs5a73UY63knAY/Xvxfnu0RsrmqUtUf/FPu5YV/ZJCjhqGWL08Ri3
	 8SnQvsn4SRmtJFW5jbVkgcsCuGqTB/tJe22s5+CxDw4EhI9CT4NJDmOt41z0kktgex
	 ZCz4rz0UtGGP0PV6cV5GJfsODmOayXL9IMy/cT6Kfbflw+jVv/r7RvUUcLo7Fd0rdU
	 9eSjcRteUgMoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hiF3omrdDfY0; Wed, 15 Feb 2023 13:17:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D34FB409BE;
	Wed, 15 Feb 2023 13:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D34FB409BE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 797261BF869
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 13:17:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5178D81990
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 13:17:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5178D81990
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hVgS9bMxlpLt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Feb 2023 13:17:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6502281DE2
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6502281DE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 13:17:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="315078061"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="315078061"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 05:17:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="647162642"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="647162642"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 15 Feb 2023 05:17:47 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pSHfO-0009OH-3B;
 Wed, 15 Feb 2023 13:17:46 +0000
Date: Wed, 15 Feb 2023 21:17:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ecdb4e.lpIsEM/0WuEsKxny%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676467069; x=1708003069;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=L9QbxOUBKahZwdZ5kfGqshPBrJSzS/IBvw0znWjdfxc=;
 b=XhgDI1gKT6tz1k/x1GTHhfnWkm3ldWbSNbI9Tz5rkdVDh3VsW8XpK3rl
 5gL5v3MnsM3Thq0toFUt9+otOUBQlhWOBasmj1ZbXyg0xYKVW2CLmN+0z
 oAS2+ih1tz4xC5DieElULwpVmWRpJ+oYJyJDfF9nJ1DQNgCjkFqQlflK0
 87V40fXuVEvCcyA/poB6jqjivIuZ/nKRShmBvrPy34Y6h+ebeUvxiZd4E
 yrEztlTtPe/KZI61Ks2I5br8kBRRN//q7UWMKx4dueHfHaggEz4p4ZBeq
 fpY/lUTa1ux/fAmYRpYrzFWhaZzVDCY6eOWbMOqek8NiDHdl6kANkwoD3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XhgDI1gK
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 337aa1adebdad1fa88e146d81e5da26a4ddd2d88
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
branch HEAD: 337aa1adebdad1fa88e146d81e5da26a4ddd2d88  ice: Fix missing cleanup routine in the case of partial memory allocation

elapsed time: 778m

configs tested: 85
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
arc                  randconfig-r043-20230214
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230212
arm                  randconfig-r046-20230214
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
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
hexagon              randconfig-r041-20230214
hexagon              randconfig-r045-20230212
hexagon              randconfig-r045-20230213
hexagon              randconfig-r045-20230214
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
riscv                randconfig-r042-20230212
riscv                randconfig-r042-20230214
s390                 randconfig-r044-20230212
s390                 randconfig-r044-20230214
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
