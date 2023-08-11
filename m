Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27620778709
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 07:45:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 927F741E35;
	Fri, 11 Aug 2023 05:45:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 927F741E35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691732749;
	bh=6NyMKuZgGStb90i4VnJeYR7MqK+fGJ1DlNOa1nVGu4c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PO8Gsdvmk2ZTHcMyoPHbtSSeQVwF8x+JP5blopAWQhb4UrWjBjxs3rsj+1VJDILft
	 4oL51wNDZW6Gw1DdelJkJXll32Oh1fuM4W2yv6+uSX4uV7sdBgceUlMno4+4QXu2Nr
	 IGvPJAXPK3J8WOWVbKl+yGPeHEHVtWzvT7TVZLtsH8Ck3aUx7uWC16bD1rfnO2P+Gl
	 0VaVYua0fUVhOHEjY3Z2H0oJYsrvWlE/y2KIhu/Zcg7f3ITLxdFX6NrTiKOgdPWHol
	 K+rZuEZSIj7b8YY9Vc1upInaU1th2GuM324fUV0SxftvKdTTpokqUGMdeHWIPhB9/E
	 I82DPtBJ1dz6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JqaTleOGtrDM; Fri, 11 Aug 2023 05:45:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29CD041D9E;
	Fri, 11 Aug 2023 05:45:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29CD041D9E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D9B41BF410
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 05:45:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 038C041D9E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 05:45:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 038C041D9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rsi92fLKWHDM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 05:45:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 942C241D9C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 05:45:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 942C241D9C
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="356566934"
X-IronPort-AV: E=Sophos;i="6.01,164,1684825200"; d="scan'208";a="356566934"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 22:45:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="1063198828"
X-IronPort-AV: E=Sophos;i="6.01,164,1684825200"; d="scan'208";a="1063198828"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 10 Aug 2023 22:45:31 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qUKxm-0007Xl-39
 for intel-wired-lan@lists.osuosl.org; Fri, 11 Aug 2023 05:45:30 +0000
Date: Fri, 11 Aug 2023 13:45:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308111321.FFYVly5R-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691732741; x=1723268741;
 h=date:from:to:subject:message-id;
 bh=uTnrG7rq6qPC/A4IKYJJXI7udVz4ubZYqgsFC8m7q0c=;
 b=IUnLGwbmmxPfQri4XU4tAgJa6SL6kQqhgfqH24vW7Px57q8vA/jcyFt+
 tGXoWsrTmwvZbheTwNnNpdZpcQo+QEIpcSdRu8IZlNaezR7l0LCDdLYgU
 so44BOm/3FOglnnz/8alpJsjSBK/Opzf0RjGR8cV+kW+nGBXHTunJ3kxb
 1e2sMpbf1Hoh8L6Q2bhaV6AFL8kjPAIPY4Kv/lBJ4xm36GFanv6hAmV7Z
 xzJgdlGbpyOgCQpSnV+uwRuzBjKf/rR5NUw0vsCkSzrr25gV7UOrXtYTv
 zhizWFxxkisr8R3CbPyiBOcL76WT8A9m8sC5Ug660Oy9JnTmmXMoHxEnh
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IUnLGwbm
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 bfdaaff75b83723394c0036cab6574b0dfc16130
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: bfdaaff75b83723394c0036cab6574b0dfc16130  i40e: fix misleading debug logs

elapsed time: 722m

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
