Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 350E663F367
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 16:15:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 353CC41581;
	Thu,  1 Dec 2022 15:14:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 353CC41581
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669907697;
	bh=UpuOWCoOh+fANNmD6Eutwu6VETqStL+mQfwVnIc/l20=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=y1XLoL+Any8NTulFnuiMJmbDxEW49UOtXiDxwMGXpM2CzUOGHbxVqdkBxnUChwycD
	 kNUIuOtz6v/hoojTrJbU5/Y9Enttyql7ZtdzfhZUl8ZbbOIk7Ai/Pg9R46fi1SaZR3
	 8E0ZpE8BWe7GeGnJO0pDnq/svyALwW7SoErJZMVjcQ4A2nj/58VW3xTq2ooksFV5hh
	 2wBmfaj4EDuoo2E7tHqpPxDvq68CI1h2QnrVuM01OzBXggrQgCGVrQfmS1GTKNTvQX
	 nO8TvxeDIJq5kn1GI5JdpKHtKEInc1h+U8yHzKKg167+51Yxc04+8AvPOzdAEt+wI/
	 CbK5xOtx6nmKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IsX6RI3BxZyG; Thu,  1 Dec 2022 15:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF9C440879;
	Thu,  1 Dec 2022 15:14:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF9C440879
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3F591BF83E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 15:14:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB7ED6109B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 15:14:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB7ED6109B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vZL_u2v0E_l7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 15:14:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04A1760C04
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04A1760C04
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 15:14:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="342637507"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="342637507"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 07:14:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="889769582"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="889769582"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2022 07:14:31 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p0lGg-000CfX-1W;
 Thu, 01 Dec 2022 15:14:30 +0000
Date: Thu, 01 Dec 2022 23:14:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6388c4d1.SX+FopvTuIq+M7XZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669907688; x=1701443688;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xCQzU66dRCfJ5cXDW10F9WY1Je9zO5AqQKz3PkoxiTQ=;
 b=JKXVbYt7eX+LW1XbIAG7rECEXjL6d1LpZyGKv9FjPbyIyqaX3TTZqfIZ
 rEzD8eP6XlwJq5wiZ9T4bNXbp1oZzKWFrMtQRnBgJT/x8F6uq7nVv2bCG
 0+LWujC68F4x3bIlfTdYw0dMijruLJnDe4jOSmTVIPYqUduU28DrPEjMT
 BnnesIk2XbgSJC395Y6K0wAiOfpeeWoRudKBL7S9hXdyMZ8FdnPMhTs7y
 KPuXX/wghoE9BkntaRPTOgfCR2szbpiXnIKdWILGBbhyqVqUd4yvFcgy9
 TzSNy9YQA9MCvYr/bVUlp34eLqF87vb4Arj37L9anoGl48r2x+rwOMQA6
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JKXVbYt7
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 7ac75c81931b4afd32d714d90f96b0daa4db2f17
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 7ac75c81931b4afd32d714d90f96b0daa4db2f17  ice: reschedule ice_ptp_wait_for_offset_valid during reset

elapsed time: 1032m

configs tested: 82
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
powerpc                           allnoconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                              defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
sh                               allmodconfig
arc                              allyesconfig
mips                             allyesconfig
alpha                            allyesconfig
powerpc                          allmodconfig
m68k                             allyesconfig
arc                  randconfig-r043-20221128
ia64                             allmodconfig
i386                 randconfig-a002-20221128
i386                 randconfig-a003-20221128
i386                 randconfig-a001-20221128
i386                 randconfig-a004-20221128
i386                 randconfig-a005-20221128
i386                 randconfig-a006-20221128
m68k                             allmodconfig
i386                                defconfig
x86_64                            allnoconfig
arm                                 defconfig
arc                        nsim_700_defconfig
arm                           h3600_defconfig
arc                  randconfig-r043-20221201
riscv                randconfig-r042-20221201
s390                 randconfig-r044-20221201
i386                             allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
m68k                          hp300_defconfig
sh                          r7785rp_defconfig
powerpc                 mpc837x_rdb_defconfig
xtensa                       common_defconfig
sparc                       sparc64_defconfig
alpha                             allnoconfig
sh                 kfr2r09-romimage_defconfig
powerpc                       holly_defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
powerpc                    adder875_defconfig
arc                              alldefconfig
microblaze                      mmu_defconfig
powerpc                     tqm8555_defconfig
i386                          randconfig-c001
arm64                            allyesconfig
arm                              allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func

clang tested configs:
hexagon              randconfig-r045-20221128
hexagon              randconfig-r041-20221128
riscv                randconfig-r042-20221128
s390                 randconfig-r044-20221128
x86_64               randconfig-a013-20221128
x86_64               randconfig-a012-20221128
x86_64               randconfig-a014-20221128
x86_64               randconfig-a011-20221128
x86_64               randconfig-a015-20221128
x86_64               randconfig-a016-20221128
arm                  colibri_pxa300_defconfig
powerpc                 mpc836x_rdk_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
