Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E490F6BE0A5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Mar 2023 06:31:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 026974046A;
	Fri, 17 Mar 2023 05:31:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 026974046A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679031096;
	bh=75pe4nbtLvhsStj+2+CvViPsWEamKhN8qzUklst3dRE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HOtQpTtf0gihXsferLBs22qcZOgZshqZ7nILF4N8895xStX1cWN8Jiw6i0gp5CtGi
	 4GluIZWlgdW0qz/wrXG+mhEtz0PGXtKiQH8N9uOdfslzegnAsZ1OYidbK3LGg7r0l2
	 2BQJru+9h7q0HcxGumlsg9BOCAlPmq8G32yLj/ui5Dh3Q+07ETWQ9H9oferKZZS/2f
	 hfdrtXGESCfRmcgolUqXPiBSwMaEQMtgpTE02e6sXuke34oMIz0uzj4Kb8F87oMFvS
	 9sUGERVw4WqbRc4/ATZQ8AbCUYaiiXbBA37IRRobqUsOP2MUBIh2SyXscSvYE5Glyu
	 ijmnEntMuK2AQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oFWtqJxANay6; Fri, 17 Mar 2023 05:31:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F4165403A9;
	Fri, 17 Mar 2023 05:31:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F4165403A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D8A111BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 05:31:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AFA7F416D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 05:31:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFA7F416D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yI_rMeaNROHK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Mar 2023 05:31:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D67C410A1
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D67C410A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 05:31:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="317841097"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="317841097"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 22:30:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="1009512135"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="1009512135"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 16 Mar 2023 22:30:58 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pd2g5-00097s-2G;
 Fri, 17 Mar 2023 05:30:57 +0000
Date: Fri, 17 Mar 2023 13:30:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6413faf0./I6PtAqcbkczr9I+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679031088; x=1710567088;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=WuS826wE7BLJbi48lECSfeQeyzK9gdO1QcOkI45e67o=;
 b=jnrnHSa7zTcPo9rAoEzcp1L1Rzyyr/oaqiO+6NCbRtpOWgz783IBKROH
 otNETGIQ5JPQrCX7IBweG09B4FGCjeHB7DZrU6LqG+I89FKVkmYe4v3Tz
 B/5cfcumZ2lDFj3l3Ln0EtsfM/zn2Zw+Uq9LBADkzeX6FUo0LnrEVae+w
 ooj8KACm1o0T0uUDDb4p31PGTDJXkFr5lJv+Rhuc4mS1exZ5H1RovQlM0
 MlRR+SHSPwXSWmg7x6Uui1WRPuLIX617wh5GC+T8sdOOeVe3V+G3xnZRp
 NH9vDhxtL23VPDXmOHz8X6etj6WUosJDXXzQ+0p65OKiUkST1SyphxRs6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jnrnHSa7
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 964290ff32d132bf971d45b29f7de39756dab7c8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 964290ff32d132bf971d45b29f7de39756dab7c8  iavf: do not track VLAN 0 filters

elapsed time: 732m

configs tested: 49
configs skipped: 3

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
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230313   gcc  
x86_64               randconfig-a002-20230313   gcc  
x86_64               randconfig-a003-20230313   gcc  
x86_64               randconfig-a004-20230313   gcc  
x86_64               randconfig-a005-20230313   gcc  
x86_64               randconfig-a006-20230313   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
