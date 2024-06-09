Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED2A901428
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jun 2024 03:51:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49F8860736;
	Sun,  9 Jun 2024 01:51:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BQabC57Ff8bW; Sun,  9 Jun 2024 01:51:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0AA9660741
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717897903;
	bh=eFbYCH2gQThoPlFcXbQlPkr6oH+f8ARWQRZLPzlmd5c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=he7OTrNmjiJ+7351SZe+NyHK609OdVO7yHJksCUyqpIU0092qOOu8kho8cD76CV4R
	 6qN2NzHBMzNpMSN1XOG0FHKLHQgK1BXsEYhdZV3pF635dBcFrPYXqsxJ1uPPMpool3
	 MdOhXhH6L/0es9B10xcxSuOEjXGxII+QyjUlQyV5oBs0jIsLYISi0xjj2bsFq1r5qQ
	 x0XH/PgtVBddmEm6r8V7h7jeio8/jlO2c7k6rNA6JLRL/GvkglZacfa02yYPS3uDUO
	 G+QDQYdCFh2Pe/sGsT5cJc9Zy6hPVv22qEIX45ZCTDIYgIRL2UQLNrBq7NZMBawO2V
	 Hh8YvPVlkmp0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AA9660741;
	Sun,  9 Jun 2024 01:51:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E1831BF400
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 01:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 574ED406EF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 01:51:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jgfyKrAZPteR for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 01:51:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C6886406EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6886406EA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6886406EA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 01:51:37 +0000 (UTC)
X-CSE-ConnectionGUID: 1yHKkUNOTYiJbnQS0PxF9g==
X-CSE-MsgGUID: OgSqwVZvTAKP2NAp68MwlA==
X-IronPort-AV: E=McAfee;i="6600,9927,11097"; a="25695569"
X-IronPort-AV: E=Sophos;i="6.08,224,1712646000"; d="scan'208";a="25695569"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2024 18:51:37 -0700
X-CSE-ConnectionGUID: 0PMC3yJuQoSGjYP8uVwhOw==
X-CSE-MsgGUID: OKofvQVZTXW34etSZZxTBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,224,1712646000"; d="scan'208";a="43140493"
Received: from lkp-server01.sh.intel.com (HELO 8967fbab76b3) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 08 Jun 2024 18:51:36 -0700
Received: from kbuild by 8967fbab76b3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sG7iX-0000kN-2r
 for intel-wired-lan@lists.osuosl.org; Sun, 09 Jun 2024 01:51:33 +0000
Date: Sun, 09 Jun 2024 09:51:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406090908.lTF492HT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717897899; x=1749433899;
 h=date:from:to:subject:message-id;
 bh=kkQuZWK4+dDw6nGz1FEWlnSsJ8g5tAyTTKevnwk1erw=;
 b=GbgNT68FiQ4ftTeQtwRmkwckQQsTfwZz0luD0av6uJ2swUGppiDx2q2q
 HBTz6ZFjR/zUSrcVEhP20i7J+AoYMEre/9jgyeXx7/MbXVj58xZSpcacp
 XyeCJs2YbYSfp50oOub943O4iQUDSTFCiQOJu9lryIFJ2YuzaPTmta9Z0
 hHr041Qk7wze5m/XXmVJKsce4HymVLKwu5gVOHLYCIIIrbpDmnNZxD6gN
 PPlJTQ1svrFvDe13DHAPy9FJyEc3ZAzu96ebN4MRnn/ZGnlrvznDxhBGI
 y92mdqq2MZSUab5Fiugg8O1JwE9NsvaCRpF+t6Bvp8HQepNdIpSXw5wCg
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GbgNT68F
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3480b86d0ad6df1f7fd4978557bc016ad1ed8c64
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 3480b86d0ad6df1f7fd4978557bc016ad1ed8c64  ice: Do not get coalesce settings while in reset

elapsed time: 1621m

configs tested: 22
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
i386         buildonly-randconfig-001-20240609   gcc  
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   clang
s390                              allnoconfig   clang
s390                                defconfig   clang
sh                                allnoconfig   gcc  
sh                                  defconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
