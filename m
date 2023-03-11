Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A5A6B5E08
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Mar 2023 17:44:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 862DC414FA;
	Sat, 11 Mar 2023 16:44:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 862DC414FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678553047;
	bh=x3mGhdXInOXpw7uQ6AkdugKcDHT4OGfdZSj4gPO5SR0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CZfFOJMk4JmzHuTJkXpXgMh5pi+K7/3G94qytnZ0SW0iPfrrwCzD2dnULppIT7NNG
	 xCCfFQmvC/6MpZyLEC0XvhDxGPPTuzrNWqTvJMXDPInwTwBgyC644b96BU4hSN7RZB
	 lSxsTJLG5pSxYT+F8wCmLlCdc38mv6RZJnvF0pfXhxVRekk34C6AyXEzPgsIHDPs71
	 8QzdBy4PxGPrSmNOYxU7YSLfNcwnbDFNq+Vd3MTmaUis09pWrBubMprF6vigSvfGCT
	 +pnr2phi0YFtbmxOKramxr7OJgn20v8Y0GSNg1cVf2zX2Ywyj9jOx+085hXjbbMx2E
	 PsBg1ilw58IhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id woZv7p3h0Fwv; Sat, 11 Mar 2023 16:44:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24438414E5;
	Sat, 11 Mar 2023 16:44:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24438414E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 323F01BF392
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Mar 2023 16:44:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A5FE4049B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Mar 2023 16:44:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A5FE4049B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pfjj9oUUJUIb for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Mar 2023 16:43:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56784400C4
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56784400C4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Mar 2023 16:43:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10646"; a="364576801"
X-IronPort-AV: E=Sophos;i="5.98,252,1673942400"; d="scan'208";a="364576801"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2023 08:43:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10646"; a="680533714"
X-IronPort-AV: E=Sophos;i="5.98,252,1673942400"; d="scan'208";a="680533714"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 11 Mar 2023 08:43:57 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pb2K4-0004hD-26;
 Sat, 11 Mar 2023 16:43:56 +0000
Date: Sun, 12 Mar 2023 00:43:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <640cafad.mh8OVpxjtgsnoNgD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678553039; x=1710089039;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=TgXOZ2ua/XhUECUmFfn8pwkZWizyHX3AX3fEHXlDLDM=;
 b=C2ouityBpgs35tNerryC+w60e1gM2aBg7VfxUUi3eikIp3rtXidvlKc2
 ugsITGJ//ZiMFKAQSj/bZ9sV82+Js+LEEg3LsMjsh8bkpTrby0h3UuQDZ
 TwJUFzBFxz74p+K0Q3mk37PoaBDJElSpP/ZyBoK3/5mXtPXDiZwwCW/5G
 /0hzDoOn5EkkxD97vgkhYglvKBEpi5URAyVcr3OjOgqTATL8b8CH6vegX
 jATWr5qyQNdS/7JSA7/tWNSjaSl3mcMlMLLAt2uabnrKIwJXnrM9NaVos
 h/ypP5L+FdEnb7MUAr40j7bc/8VoYIRq4ijbP35PsRH+NYVzUybPkNT2A
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C2ouityB
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3590dca7139a4aa60ae42fe54bbc52339e42fc45
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 3590dca7139a4aa60ae42fe54bbc52339e42fc45  igb: refactor igb_ptp_adjfine_82580 to use diff_by_scaled_ppm

elapsed time: 1363m

configs tested: 77
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r023-20230310   gcc  
arc                  randconfig-r043-20230310   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230310   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230310   gcc  
csky                 randconfig-r022-20230310   gcc  
csky                 randconfig-r025-20230310   gcc  
hexagon              randconfig-r041-20230310   clang
hexagon              randconfig-r045-20230310   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230310   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230310   gcc  
loongarch            randconfig-r006-20230310   gcc  
loongarch            randconfig-r013-20230310   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230310   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r034-20230310   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r012-20230310   clang
mips                 randconfig-r016-20230310   clang
nios2        buildonly-randconfig-r002-20230310   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r021-20230310   gcc  
nios2                randconfig-r032-20230310   gcc  
nios2                randconfig-r033-20230310   gcc  
openrisc             randconfig-r004-20230310   gcc  
openrisc             randconfig-r015-20230310   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230310   gcc  
parisc               randconfig-r024-20230310   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r011-20230310   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r004-20230310   gcc  
riscv        buildonly-randconfig-r006-20230310   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230310   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230310   gcc  
s390                 randconfig-r031-20230310   clang
s390                 randconfig-r044-20230310   gcc  
sh                               allmodconfig   gcc  
sparc        buildonly-randconfig-r005-20230310   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r026-20230310   gcc  
xtensa               randconfig-r035-20230310   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
