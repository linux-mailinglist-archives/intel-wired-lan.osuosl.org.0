Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1AE90907E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 18:37:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78F8E415BB;
	Fri, 14 Jun 2024 16:37:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2W7CuXEtt4u6; Fri, 14 Jun 2024 16:37:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 311C04158D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718383034;
	bh=k8+y5JAM5UGs/WdaniMImiNNnpbcpTQPdHbFNNVv2fM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XC4nFQmWYTVLDqL7ZhXVCx9Q6lojMlFsLoQxCSqqvW+HjwFDWmIc2LhboIWbpLa3x
	 y0fA7JcUNYMgQQWiFhKqITWg1vclgKgzSVJat87ZF2MMfp++X6q5YTPIZQufmHkjBk
	 +ev3XAPaVbW3hXvFBu7dFb/R8pXg5bY+URQb+E8MUw+bjbLT33H4XP2DgSH9yRvixa
	 6qYARd43hhnr5VKrmX02JXBRHykJh/D3iN6/Q3OQkQGQkZe/DF2MvbnZsh0iHZSNlA
	 bs4kQ9VeXu1CgfaZmjxe1g8erZOOETwJnGqAJmGlAaDtaGFcIJY067l7xUvcTG8fSb
	 o3+IOTiIpXOUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 311C04158D;
	Fri, 14 Jun 2024 16:37:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9C1C1BF35E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 16:37:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D6DCE61114
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 16:37:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ri7S-FQOv8y0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 16:37:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A21826077A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A21826077A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A21826077A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 16:37:10 +0000 (UTC)
X-CSE-ConnectionGUID: VzHnZmFfQ1GuOqtMed4y0A==
X-CSE-MsgGUID: LOpDCzDTQmKVkyTrE6VSpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="18200806"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="18200806"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 09:37:09 -0700
X-CSE-ConnectionGUID: J5LiPC/7RWynw5tX1ucWuQ==
X-CSE-MsgGUID: rLbQLSPgSt6WSXrjrHAZEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="45470732"
Received: from lkp-server01.sh.intel.com (HELO 9e3ee4e9e062) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 14 Jun 2024 09:37:08 -0700
Received: from kbuild by 9e3ee4e9e062 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sI9vG-0001W1-1I
 for intel-wired-lan@lists.osuosl.org; Fri, 14 Jun 2024 16:37:06 +0000
Date: Sat, 15 Jun 2024 00:36:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406150019.GzSxades-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718383031; x=1749919031;
 h=date:from:to:subject:message-id;
 bh=d05FLKu95OLGc1glInjUP6KZ6cxnEWxrJKzN+oTZRzY=;
 b=GTwu03RbkRGQz0AJUqUl3fvNoYh8AGMyUYhTcM8q7SyPgQHKNc0GTr5/
 Z3+KxAdqpxuanlRxwe/nAlk7DvTjqSpl5etceVo8ftJ3onTMQcCrEESEn
 XyvkC0syXpKHFfCl3NuQSByRIqnw+urat+RPLFKVYsUaBLsmp9zt5QV/R
 zypt1YuRHuAcrNdE4SC1KeYu62ZA1HCtF6dDnFnE4zBm0BKm/qJqkikFQ
 mVARh2Xqx6P6VOuOAtf6hCmpMbKRWb4M5OFttkfRt9nw2NT/tlbmcZvbc
 76feyC6LOc07mMSkSZul3KmykpLWw28pyrGhrModjCh88YlgeHr42iqE4
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GTwu03Rb
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 a9b9741854a9fe9df948af49ca5514e0ed0429df
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: a9b9741854a9fe9df948af49ca5514e0ed0429df  bnxt_en: Adjust logging of firmware messages in case of released token in __hwrm_send()

elapsed time: 1494m

configs tested: 41
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                                 defconfig   clang-14
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
hexagon                           allnoconfig   clang-19
hexagon                             defconfig   clang-19
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
s390                              allnoconfig   clang-19
s390                                defconfig   clang-19
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                           x86_64_defconfig   clang-15
xtensa                            allnoconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
