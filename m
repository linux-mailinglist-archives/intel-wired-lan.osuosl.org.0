Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E51D7788B4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 10:04:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD18260B97;
	Fri, 11 Aug 2023 08:04:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD18260B97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691741094;
	bh=g2KMqpnc/oNnqsZjnk8wAQnXULMFpJnGlub9puoGwA0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=R0AtVuKTFkfxfAnp2Huerkj+w08e4YNMd1ysllmnvAL36AWgJakV3CXBi1f6HHu7n
	 AkhE7Rty2ZznyOuKpZb92uZXn/dXmhcFPw2Ova0rej9Kfo/AiSDyA5Gdp1I0OYoiCN
	 KpGqJ4T9+mLmTZmBCd0GlcMAq+VMK3xQYbKcHyMW5U2EnRZJH329Z1Eu8HGYCZKgt1
	 t7egfHmaml3MEagPVxpgwEocAlUQMbA6zmbxKHQmSMAWhG7+OecGFHrC1y8QhIhEY3
	 D0HqxoiR1RWug36HvPCjvyBuR63wI+iDpB4X+M1IDiwjzMw3ZcjO2+2vVujF6IJd86
	 dJ/9No35H7KXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cZL5rWEPg_bK; Fri, 11 Aug 2023 08:04:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89AA260A68;
	Fri, 11 Aug 2023 08:04:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89AA260A68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D8121BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 08:04:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5348440189
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 08:04:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5348440189
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z9M30mRN6kp0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 08:04:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5056400D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 08:04:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5056400D1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="361764481"
X-IronPort-AV: E=Sophos;i="6.01,164,1684825200"; d="scan'208";a="361764481"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 01:04:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="709453835"
X-IronPort-AV: E=Sophos;i="6.01,164,1684825200"; d="scan'208";a="709453835"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 11 Aug 2023 01:04:36 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qUN8O-0007cw-01
 for intel-wired-lan@lists.osuosl.org; Fri, 11 Aug 2023 08:04:36 +0000
Date: Fri, 11 Aug 2023 16:03:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308111651.yzWGhqez-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691741086; x=1723277086;
 h=date:from:to:subject:message-id;
 bh=cqeLn/Ca/uvYWsRayZmng4zyNJPK2DISvhPd7BMWWjk=;
 b=Vw1JPV999wzM0BM9eMAcUuppkQyQKTgmiMOKf3t3Uhw+mTRlurogLgNI
 I+JU7QLLPT9Somxv713fnufB7hyzRqttQXONgNdfkDAmdC5lH9ZizyTdC
 KPwM5apbHJq2hoUpZrU6+6wH6TwUMb6dnn3lEwjU8mE7lLs2TkfokfMo5
 A7Ah9/YA0qk03T8MyH5GkUmRTbxwY/ed5P4IRkNT1mC/Bf6CK4qYxdudX
 xVnP9xRZbQBqeewK47TnQjTDoIZjeVRZbWDNEqtqJZQ8vq5HfrCT9ahYc
 Nal8wjxdO3PCcWzGmNmdWkm4s/y9k2wwZWV5cKYshC/EqSVjKFUERU00Y
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vw1JPV99
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 1d2c34e67b1d432db49c8973c70fbeb0bcfc2809
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 1d2c34e67b1d432db49c8973c70fbeb0bcfc2809  e1000e: Use PME poll to circumvent unreliable ACPI wake

elapsed time: 861m

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
