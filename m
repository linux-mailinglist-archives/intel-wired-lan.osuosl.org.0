Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB82729158
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 09:40:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C96A42468;
	Fri,  9 Jun 2023 07:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C96A42468
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686296398;
	bh=X/vuvc1ekOnTRjq8RMP7ANSi0wAt/TAqkU3iDKZmUxQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BazP53dx6hGK/mvcnCsPok2WmqvwIRVofeImue3JTklSRUcVHO5o5JciB1F8X9PWn
	 qt0JHbt4dtp/4wZDa0uzUuP3ZrdCh+Q0a2BowxbKBkaMAAW872ezU4DRzsHWfC09JZ
	 e1RSBhXYqddeM69PqbJFz3tNCEJvoGvicorq21xehyu+LJkpNB2SxvrHu4mQ52c8jv
	 sNxohHrXQajjq+8Dhu5gWyrUkF4oRUqKhYD/3gzICRrWqUBBSR3BowpCqEO5OhTRAB
	 WTf09dFuTCDia5yvddJUdFCIWMzB4V5cZYDku5Dq724nb7hX3IYWdbSH33nHBol8iL
	 R8eiz/q9EzLTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XyIcuO63PhGa; Fri,  9 Jun 2023 07:39:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0132B420F5;
	Fri,  9 Jun 2023 07:39:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0132B420F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 42AAD1BF388
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 07:39:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1A89083C8D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 07:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A89083C8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kXoNwhYujIxZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 07:39:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F389C83C83
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F389C83C83
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 07:39:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="337175327"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="337175327"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 00:39:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="740086614"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="740086614"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 09 Jun 2023 00:39:49 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q7Wiq-0008mU-1o
 for intel-wired-lan@lists.osuosl.org; Fri, 09 Jun 2023 07:39:48 +0000
Date: Fri, 09 Jun 2023 15:39:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306091525.vrFzUQZn-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686296390; x=1717832390;
 h=date:from:to:subject:message-id;
 bh=VuDlOIz+LSeYHrmtbXOX+BG4jWaeeVVmSIdmqy1mUsU=;
 b=X4YiIrYEWCZsnJxke5itso3F/IiDG9nrbhZ0tR6nxovJmRpC6q3DsMvL
 o0ZcsdOjCZkVy8Y/zWlFrf032udVD/gnCE+KI7cWc/uqCKvdd+k0yt6JI
 OTJvF+s9MzhconVSuudHDjxlzGS0XHROoNDlIspFbaV4J20DVGLpG+6Ut
 C5B55OE4UoTrdLFpyJfKeHFftNRzaGNaevN9DQWWMmme+TrZHAk5oJmHR
 yYpGcKb9b5Hb05lribanFU1S6FuBRvzvc+sX1vH6ssJ0dE6hS0f2mW5rs
 pq7Ycv9NCIJpSDy2P0LOc8EAxZh8XxxSZzuRpCfkhbF5+YChrcTzIN7o1
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X4YiIrYE
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 78c50d6961fc05491ebbc71c35d87324b1a4f49a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 78c50d6961fc05491ebbc71c35d87324b1a4f49a  ice: Fix XDP memory leak when NIC is brought up and down

elapsed time: 724m

configs tested: 45
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
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
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
