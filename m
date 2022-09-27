Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F925EB981
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Sep 2022 07:20:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D19741887;
	Tue, 27 Sep 2022 05:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D19741887
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664256055;
	bh=L3iFLPa4dYjnqBq3CnOGwO+fP5uCVLF7cb13b6gHoLk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=d9wnsSjV725cZKtDu6PQSyXF4SuurWFmg19GfIkzfDBBgtLawgx3RcX9Yr09zgYgS
	 pskPtbIDwjVPbIjkxWR54IeC/cBJyX5k9RzqEKud4qEA3xPuaB2Tj+EHDsPYRNTRUT
	 NJoH7aIk0U8pA51L5ugUcSel8E1hQATL8gNsRKT8Yv1zHKUNPJ/dRDCwdRx92llHj/
	 10skqAR+ZmPsjvFauqlegCC9VM4APoKOaSxtMp3dHKwn61CnYbI9BlgbHIWjxITYLe
	 Ftw1ohuXsGV4U1UqCJgptVZJ4BftahBkrII2lBXmZRe8CeXKz1GTjkBzNNFc0biwlw
	 8AAqq9KEni6sA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wuWJYIoCqv3u; Tue, 27 Sep 2022 05:20:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05C8D410D4;
	Tue, 27 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05C8D410D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C8A331BF385
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 05:20:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A34A660F97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 05:20:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A34A660F97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iHgr6JR6TwtE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Sep 2022 05:20:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A11D360B3D
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A11D360B3D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 05:20:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="327579043"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="327579043"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 22:20:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="689861348"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="689861348"
Received: from lkp-server02.sh.intel.com (HELO dfa2c9fcd321) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 26 Sep 2022 22:20:25 -0700
Received: from kbuild by dfa2c9fcd321 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1od316-0000dM-1A;
 Tue, 27 Sep 2022 05:20:24 +0000
Date: Tue, 27 Sep 2022 13:20:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63328805.s7U9ZwT4tLRztKgQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664256046; x=1695792046;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=eBQ7dyrVGlW5+8s1LCajZ7/MED8nY9/xWzVSsiF0c0o=;
 b=Oz9jN7kLEk+bH6cjMAhmflLXfy0YydUbR6vcGLxvgSxRfqTVZip+VD6w
 5129Ij/KGZa7NKKZQQa9bK0sEHiTxozqO9h+ktgIva90irViJpmxw4CtD
 mF5m+Q1dPK7fOZxv3uQopXUsWSSZn+YOKEgVmDvOvfmGLJ5n5i7FBYMmp
 kMfPb4YhZtQ65Jac5bwW9VnFeISBwrj494mTvfk45Ha1Ca0vlh1dj0tRT
 pRA76aJWCg6uqhk/qdUccEKXC9WPcpDvh5lFX1sloLUl2PPwn+E8lQHjt
 yJnGU/BZp4LQlOu7DX+1L5bN4JbE82YGi0+nuyKGCg8w71aYdvGKLiFet
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Oz9jN7kL
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c81a146595aae7636e4cd936d27e3e73e3dce572
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
branch HEAD: c81a146595aae7636e4cd936d27e3e73e3dce572  i40e: Fix DMA mappings leak

elapsed time: 725m

configs tested: 66
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
um                             i386_defconfig
s390                             allmodconfig
um                           x86_64_defconfig
s390                                defconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
i386                                defconfig
powerpc                          allmodconfig
mips                             allyesconfig
x86_64                              defconfig
x86_64                           rhel-8.3-kvm
alpha                            allyesconfig
sh                               allmodconfig
x86_64                         rhel-8.3-kunit
m68k                             allmodconfig
arc                              allyesconfig
x86_64                           rhel-8.3-syz
i386                             allyesconfig
x86_64                               rhel-8.3
m68k                             allyesconfig
x86_64                           allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-a001-20220926
arm64                            allyesconfig
i386                 randconfig-a002-20220926
i386                 randconfig-a003-20220926
i386                 randconfig-a005-20220926
i386                 randconfig-a006-20220926
i386                 randconfig-a004-20220926
x86_64               randconfig-a002-20220926
x86_64               randconfig-a003-20220926
x86_64               randconfig-a001-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a006-20220926
x86_64               randconfig-a005-20220926
nios2                               defconfig
arc                  randconfig-r043-20220925
riscv                randconfig-r042-20220925
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
ia64                             allmodconfig
parisc                              defconfig
parisc64                            defconfig

clang tested configs:
i386                 randconfig-a011-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a016-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a014-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a016-20220926
x86_64               randconfig-a015-20220926
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
