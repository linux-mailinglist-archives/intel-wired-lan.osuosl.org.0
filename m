Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0335682D89
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 14:16:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6681D81441;
	Tue, 31 Jan 2023 13:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6681D81441
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675171003;
	bh=aKutSIZ/ANOkZWS+38n4WTFLOaW4Vil2JxCdiv7mM2s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Qb2bJVVOC7XXAQ7aWv1LACTCEGuHRAIXr1zGM/0WN5UPPh96yM4FriKypy73luNeo
	 jDgUibox+UzRn9cQPW1o6vKcQJ89A26DRH+4eSNEwNBDX0nQ7XLELu+36Kbwzf/FKv
	 bwdOm8B6Feeim3r1ZM/6NUQE4LofLFaRjPy7EwJi4s5b644Kf58MEPvStbNfBB2k1o
	 7gvsd42Rkj6J7m4qJ7NyCXuhgvXQ3DRJwn7Cd/w14jqtujisxftFq7u2au0YhZMiPS
	 kh8T4KDmjamXaiTyz2j6Ju7PyMYFHoNYWS8HThs0qYYgHTEVsCnPry8s+ujt/ksV42
	 iJrbN1RuxdKeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nbZRlCW1_6zD; Tue, 31 Jan 2023 13:16:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 511F181443;
	Tue, 31 Jan 2023 13:16:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 511F181443
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AAEA81BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 13:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8454440253
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 13:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8454440253
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id US2Bc5NtjXkg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 13:16:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 76FA440134
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 76FA440134
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 13:16:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="355163724"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="355163724"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 05:15:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="993263613"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="993263613"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jan 2023 05:15:53 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pMqUL-0004Rg-0H;
 Tue, 31 Jan 2023 13:15:53 +0000
Date: Tue, 31 Jan 2023 21:15:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d91470.dXdMwygZ3vZilMIU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675170995; x=1706706995;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tQQsypWVGuixif4G79Yei0voxa6JDYCte0K1+3O+bdQ=;
 b=XNaBd2OgIUUrse09++puMQD/xuRRpcpA8R1nRrYUXLeTx2QeSRBqGDsu
 CqQqhnmfbTHM+5iOje62Ovh9AE7Th3PLj/YqScQnfoYN+dv0EqoUeSs5C
 vCPIwwBmsTpYqHLMDx8uBlHscYey4unDEaVmqsq12DYlMwzNVTkOi4w6+
 2AGRcnmIbAUyYm024DzKH30DUSvcZQ2ZprqaIwPHiuH8AQ5XHBT01N8U3
 rapqNm0TpUK4QFKXs8kRi6VqlXv8mmGonY5aKx6W7gu+OpGLc4get2yak
 gCIkBZP0Qpn/G/IxlgO+kG2FBEpZ9fc4ianJzpZJz3BdJ/LcXcNNwQySD
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XNaBd2Og
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 de24229a4b8b03d7dd133c3500f2f1bc3c3f2d7b
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
branch HEAD: de24229a4b8b03d7dd133c3500f2f1bc3c3f2d7b  ice: Fix check for weight and priority of a scheduling node

elapsed time: 722m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
powerpc                           allnoconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
x86_64                           allyesconfig
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
m68k                             allyesconfig
x86_64               randconfig-a004-20230130
m68k                             allmodconfig
x86_64               randconfig-a002-20230130
arc                              allyesconfig
x86_64               randconfig-a006-20230130
alpha                            allyesconfig
x86_64               randconfig-a005-20230130
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
i386                                defconfig
arc                  randconfig-r043-20230129
arm                  randconfig-r046-20230129
sh                               allmodconfig
x86_64                           rhel-8.3-syz
arm                  randconfig-r046-20230130
x86_64                         rhel-8.3-kunit
arc                  randconfig-r043-20230130
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
mips                             allyesconfig
powerpc                          allmodconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                             allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64               randconfig-a014-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a012-20230130
i386                 randconfig-a013-20230130
hexagon              randconfig-r041-20230129
i386                 randconfig-a012-20230130
riscv                randconfig-r042-20230129
i386                 randconfig-a014-20230130
i386                 randconfig-a015-20230130
riscv                randconfig-r042-20230130
i386                 randconfig-a011-20230130
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
x86_64               randconfig-a015-20230130
i386                 randconfig-a016-20230130
x86_64               randconfig-a016-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
