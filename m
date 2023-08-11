Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F567791D9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 16:29:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C511284062;
	Fri, 11 Aug 2023 14:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C511284062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691764193;
	bh=YQKRUfmb6kpck0aUPKdCZBiUYTpDGD+QA8Y7xRLtt50=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eC94+H21hP4lYR5UnOZTpxD1zrMHrXQ0kFDAXHtP9NhwqXDJIdC1QN4UlfuBBf9UN
	 YfZW4aTppODlAGRj0r1Kc/wRnFiG+S2uLjtjb3+8Yjox8IztxQdi52wtPxl2hbbmh2
	 ieiw3W7Cq+ttNMz3KRzwsd0Hm+Dcgb8i6EuvLRWZsbpYZ/rvqVx5yu72WTmZt7gaPJ
	 WJlyefUl6nmaT9cp06cEn3PmFVTdJhaLrSO538RJ0wH1KVUjC5P9LhL334At4iqG1Y
	 eBm2nDYrmVvpUgfFjbzafvvMxiex3pFM5tTDpZyUSLC+jXgp2lY1ldDRCiV7QI7sqo
	 vKFFYjv5G7zyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNNpSio4Ss0U; Fri, 11 Aug 2023 14:29:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93781833D3;
	Fri, 11 Aug 2023 14:29:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93781833D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C9E41BF295
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 14:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 741DD60A8C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 14:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 741DD60A8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZUC2Gud83yOO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 14:29:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B14E460A7F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 14:29:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B14E460A7F
X-IronPort-AV: E=McAfee;i="6600,9927,10799"; a="351289664"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="351289664"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 07:29:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10799"; a="856318730"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="856318730"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 11 Aug 2023 07:29:43 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qUT95-0007pj-0G
 for intel-wired-lan@lists.osuosl.org; Fri, 11 Aug 2023 14:29:43 +0000
Date: Fri, 11 Aug 2023 22:29:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308112236.GamxbVal-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691764185; x=1723300185;
 h=date:from:to:subject:message-id;
 bh=qdOaUmnZZDDhbZVRqPWfrS5QAqYNzzJBgPiYFxNnG4U=;
 b=Q0ebbFvvddyYjToBVx2EUUwTx+3EQ7qgIdjMkc9vlXD64WXHeL8s86Tp
 aEp/IoYi5euZdqR8t/Z/n5SIv6OJ1SXK17WlQMU9Lr7Nbur8WZ//OqnVl
 tHccA/pzoUL0R0KLeVy3nfADWYChSDBCUgDc4flQPpG1BH+x4hq4tbzVC
 WthQbxeo5biwlAx4KtO61FoiF5N9Spdsh/qelF6/6rRVqmMtxImEjfBwm
 lrCuSnAB63R900MTRTM0FnLlgA60ChMDgztuZpVFqqvXVMdLc6jAlh/uk
 l5K1dsw1AaD1kPEh9peZpUVfB/qERLVO0M5g44nCVrGogg4sK64v9rpc9
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q0ebbFvv
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 4bb28b27040bb070477ce9610173e7360b02ba9b
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 4bb28b27040bb070477ce9610173e7360b02ba9b  i40e: Replace one-element array with flex-array member in struct i40e_profile_aq_section

elapsed time: 1173m

configs tested: 49
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
