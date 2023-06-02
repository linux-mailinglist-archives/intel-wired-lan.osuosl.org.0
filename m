Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DD27201CD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 14:17:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4704461626;
	Fri,  2 Jun 2023 12:17:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4704461626
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685708258;
	bh=rt/pJ93zoA9vZLvG2tJhkoKpK/TpefH8Dkkhsm/1LbQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6UYsVWIR8ISikEEsG/MqSc4nAIjIJfhesEDk/LCA+mghNx5eCf19kFgFKd4xI/yPT
	 EK0v1XELjh1xXuHtXLgdsug0/OC+joK1tc2DXqltk3ikTZBBjVUGOhR8PrYdO/jQcj
	 9UI4GxkwQmfv8HWG9wCVz+mcG5/A2xAwilQqWNhYb+3aaEZ/2HTZZjNPx0SmzHULgS
	 HlXUCV3gWUwJciPS9xx5gbc8MhnHPJPt6TvF5j2gTVRLUGzx+6dvfe9YxdT6L2ttg4
	 YMvOzOczGSHfmZeCKDeFLrc6xdU72csP09bTSmdfg1Q0q25TLRZXhr7AjZhLvhqNUR
	 kanD32K4dNztQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YzE21JE43Vau; Fri,  2 Jun 2023 12:17:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C308615B0;
	Fri,  2 Jun 2023 12:17:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C308615B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C24D1BF344
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 12:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 545BE8441E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 12:17:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 545BE8441E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k1TQ4iKC0BPt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 12:17:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 539578441D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 539578441D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 12:17:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="353349578"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="353349578"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 05:17:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="707827613"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="707827613"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 02 Jun 2023 05:17:29 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q53ii-0000Qo-15
 for intel-wired-lan@lists.osuosl.org; Fri, 02 Jun 2023 12:17:28 +0000
Date: Fri, 02 Jun 2023 20:16:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230602121632.7fAFv%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685708251; x=1717244251;
 h=date:from:to:subject:message-id;
 bh=2epnjT0+n5N8DGHY+e6aVCbElcmqEJceWm6jAL7eQdU=;
 b=HpUw/Ja1XekGLT7Lszd3KJvCIock4sFm+1uetPip7+bVOxWEenqck2Hs
 rOtKNtX/kAZOfbHHNtK1BqziN/CXI5Rj3cli+3ze8yIBnHOJL9d0gMzuG
 oEYB3j0NAj+pS2ZBuyMWu78lLsP/AvFAmNS6oUZGC7iCAWD5wCRMUzeYH
 5r0PzjX4M2AfoV7OVyrCSFNGsRK0uQ0e5OqSTrU14gATOHbtsyZVQZ/89
 scM4cBl+X7R3q7hbNchC8qRZb8BAbUZLw/pKZD0xdb1pBNNATgyK71gY7
 f9NCKhGZ/Y6Dxy5l9rngT4UwTW8i9M4IvIhKHu0Vck+Mdt8hUdkqpAlly
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HpUw/Ja1
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 be8738f92ffc09f977aa5af6c7104775bae6f9d8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: be8738f92ffc09f977aa5af6c7104775bae6f9d8  ice: Don't dereference NULL in ice_gns_read error path

elapsed time: 726m

configs tested: 76
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230602   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r006-20230531   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r021-20230531   gcc  
arc                  randconfig-r043-20230531   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230531   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky         buildonly-randconfig-r001-20230531   gcc  
csky         buildonly-randconfig-r005-20230531   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r014-20230602   clang
hexagon              randconfig-r031-20230531   clang
hexagon              randconfig-r041-20230531   clang
hexagon              randconfig-r045-20230531   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230531   gcc  
i386                 randconfig-i002-20230531   gcc  
i386                 randconfig-i003-20230531   gcc  
i386                 randconfig-i004-20230531   gcc  
i386                 randconfig-i005-20230531   gcc  
i386                 randconfig-i006-20230531   gcc  
i386                 randconfig-i056-20230531   gcc  
i386                 randconfig-r003-20230531   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230531   gcc  
loongarch            randconfig-r024-20230531   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r035-20230531   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230531   clang
mips                 randconfig-r001-20230531   clang
mips                 randconfig-r013-20230602   gcc  
mips                 randconfig-r015-20230602   gcc  
mips                 randconfig-r032-20230531   clang
mips                 randconfig-r034-20230531   clang
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r004-20230531   gcc  
openrisc             randconfig-r025-20230531   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r036-20230531   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r033-20230531   gcc  
riscv                randconfig-r042-20230531   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230531   clang
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r002-20230531   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r023-20230531   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
