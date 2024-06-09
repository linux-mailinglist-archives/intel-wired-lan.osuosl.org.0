Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 178C9901412
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jun 2024 02:18:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99D5D6063E;
	Sun,  9 Jun 2024 00:18:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ek3AgAmkmIWs; Sun,  9 Jun 2024 00:18:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E777F605E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717892320;
	bh=lAoISua1VVvVMkxagLMGE31B10lU2I5PJRQq/oxvjJk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cUryh/MI+k3WvYR1+NLiYReSRuhNCC6Od/AwlaUZ7UYAVH12Vdjsbo4uX+UxsTHTE
	 hBW8OC/E8xaHRvnxSMFs1cg0ZJxtfBbZ+4yXQKYujDTmaMXQY/sjLqby8+WVEQSfr1
	 bqmyjzy2ueYfxH6ggc1h1ILYcc2WXB9Q701npTwl9qkm+KkCEn9OzThPNTP7lQNXSN
	 xY8Z2T21ZBIMTXsrThloUA655zGIu7LQCjpBqlgqq6fsMrPW4ghdjC0Xw5lk5ItN3C
	 nr9XPKE45FtKyb1XVm7o5v3yBVwdUI4yHVqH1/EWG5kAG5g/TPBjkxoLRG+EIUfgJt
	 qgVlX2Pna0H4w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E777F605E7;
	Sun,  9 Jun 2024 00:18:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A230E1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 00:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C50C4036A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 00:18:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YbDOXMPaMpM7 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 00:18:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0760B40182
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0760B40182
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0760B40182
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 00:18:35 +0000 (UTC)
X-CSE-ConnectionGUID: aoVMXR/ZRy+ikKZqnF1zGw==
X-CSE-MsgGUID: 1Df3Es/YQxGufaJyOksV4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11097"; a="14706944"
X-IronPort-AV: E=Sophos;i="6.08,224,1712646000"; d="scan'208";a="14706944"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2024 17:18:35 -0700
X-CSE-ConnectionGUID: 2XYMYvBUST6/fbwwK4jQxg==
X-CSE-MsgGUID: UJfjhhEgRQ+OeKdbZY9Hag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,224,1712646000"; d="scan'208";a="76165290"
Received: from lkp-server01.sh.intel.com (HELO 8967fbab76b3) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 08 Jun 2024 17:18:33 -0700
Received: from kbuild by 8967fbab76b3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sG6GV-0000gI-1q
 for intel-wired-lan@lists.osuosl.org; Sun, 09 Jun 2024 00:18:31 +0000
Date: Sun, 09 Jun 2024 08:17:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406090834.FZ3gexkR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717892317; x=1749428317;
 h=date:from:to:subject:message-id;
 bh=EMkU+5k7zwz1ly3+e8u2lpmqKj99p72wYb9CnE7kgvk=;
 b=DpxQx6ihmQ5aMx1ASf/12XwxORlqdELEnMqgS8Xiry0CDHhCWfCmZiBZ
 K23qERH/blASRGuKqYpesxEr3DhtNECDDQ5CI9+CWrAHS+9hZRsKD6fZC
 EUB8K9tVYc/cscd0Fp0laT9/z//WAkVgVDtrkGjtShN81HWJYPVQyAJb/
 MkVn710BEpCLon8Q2jlTcC21Y2xJ5/Ab/68fG7UmUcCJXCXuAl6iz7lzA
 N/yOPJo4/KKyhp3TdUdIkiReud7yricyJn2cAFunq/v644OIA2jKx9Pb+
 Pd/L7z4lKcGjyouDFynvLndvWtsWTOMiC6gYTTTTkg7QImQQ+RXbrLFDT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DpxQx6ih
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 2746dc17cbf54ef20cc09a7ec6862477a326fae1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 2746dc17cbf54ef20cc09a7ec6862477a326fae1  igb: Add MII write support

elapsed time: 1454m

configs tested: 91
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arm                             mxs_defconfig   clang
arm                         nhk8815_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-002-20240608   clang
i386         buildonly-randconfig-005-20240608   clang
i386                  randconfig-001-20240608   clang
i386                  randconfig-004-20240608   clang
i386                  randconfig-011-20240608   clang
i386                  randconfig-012-20240608   clang
i386                  randconfig-013-20240608   clang
i386                  randconfig-015-20240608   clang
i386                  randconfig-016-20240608   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                           jazz_defconfig   clang
mips                      maltaaprp_defconfig   clang
mips                         rt305x_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                 linkstation_defconfig   clang
powerpc                 mpc834x_itx_defconfig   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64       buildonly-randconfig-001-20240608   clang
x86_64       buildonly-randconfig-003-20240608   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240608   clang
x86_64                randconfig-005-20240608   clang
x86_64                randconfig-012-20240608   clang
x86_64                randconfig-015-20240608   clang
x86_64                randconfig-073-20240608   clang
x86_64                randconfig-075-20240608   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
