Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9689F7778A8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 14:39:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20B3B40A5F;
	Thu, 10 Aug 2023 12:39:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20B3B40A5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691671161;
	bh=liPj7dU1yVk71gd91xPZoRLHjNdXq8CiPcbpvb6mGzk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2vgMN+5EzvhJZU0dTscyPgBrFrOWLQyxpAE8C8BTYuVfSAnP1qVWZ28DVOv3f7GOc
	 YW6ln7TaNesqEoAxU4XxhViIeOJJeP2hPN1eG1PkFogSRPA2XgQgUoJuCcp2k2j1uG
	 Wxk/7jcolLqfspHt+IG9J2zF1+6UEKRFMHLWSw81vIa3m1FqzQwatiKb99Z+kAqPd0
	 CC7LSCdZfy1ophSXMUSQwXJ1kopfYdixbCmGS9M3tof1IqEopxPkfzeRGOogYaOOlc
	 u8Pc/6+1oW2N9Hsc/CnATtIhoMfgQoRYOECgvlmnRCk/R2LQlRqVvB3xgY4GjNk9dP
	 /PCNTbKWPELeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VbSu3MloIZFO; Thu, 10 Aug 2023 12:39:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9B34400FC;
	Thu, 10 Aug 2023 12:39:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9B34400FC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 013BE1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 12:39:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD3D540A5F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 12:39:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD3D540A5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bohnhAYarVOL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 12:39:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 64D7940191
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 12:39:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64D7940191
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="375104078"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="375104078"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 05:39:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="855922485"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="855922485"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 10 Aug 2023 05:39:11 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qU4wX-00070W-2k
 for intel-wired-lan@lists.osuosl.org; Thu, 10 Aug 2023 12:39:09 +0000
Date: Thu, 10 Aug 2023 20:38:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308102024.fRvQw0Fd-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691671152; x=1723207152;
 h=date:from:to:subject:message-id;
 bh=mnnp0WxTfd1sYfCelT39+U16kKPv7LD7iLuY3HoF6Io=;
 b=FQ7tofqMH8HfCyNg0tUujBxQ6P2OfxCujGUHTtcoqzj09Thqa/QSGIxF
 Kc6AepKe/TXSuM1oBdkxBSQKAImD/BQxPv1TpIJ7fLtAezkL9UpHcZ5I6
 IN9Ae/TZqX5aq7py5FM1Y21npVpvpudm1JaeN/8/oJyD9JwHSlRJhiAMK
 L2lH3iydcZUa6fkhKoG/ZpqwgfTU9T2M7TkwduAnF/j77By9ixrAOe2eh
 GEj9YDcnPgAgxJB5008zIcfz/V4qw6Bb/YU0SFVCwGQXd3srUT1h+gJj/
 WTX60+LqM/oWKNq5N1dBK3w+/nKF/nSSvNE9rqkzqFsOrosuvOBgc1h0k
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FQ7tofqM
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ae72b4e8fea83c128143989377b51276e3e22ee8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: ae72b4e8fea83c128143989377b51276e3e22ee8  ice: split ice_aq_wait_for_event() func into two

elapsed time: 898m

configs tested: 110
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r021-20230809   gcc  
arc                  randconfig-r043-20230809   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g4_defconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r015-20230809   gcc  
arm                  randconfig-r023-20230809   gcc  
arm                  randconfig-r035-20230809   clang
arm                  randconfig-r046-20230809   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r006-20230809   clang
hexagon              randconfig-r041-20230809   clang
hexagon              randconfig-r045-20230809   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230809   gcc  
i386         buildonly-randconfig-r005-20230809   gcc  
i386         buildonly-randconfig-r006-20230809   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230809   gcc  
i386                 randconfig-i002-20230809   gcc  
i386                 randconfig-i003-20230809   gcc  
i386                 randconfig-i004-20230809   gcc  
i386                 randconfig-i005-20230809   gcc  
i386                 randconfig-i006-20230809   gcc  
i386                 randconfig-i011-20230809   clang
i386                 randconfig-i012-20230809   clang
i386                 randconfig-i013-20230809   clang
i386                 randconfig-i014-20230809   clang
i386                 randconfig-i015-20230809   clang
i386                 randconfig-i016-20230809   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230809   gcc  
m68k                 randconfig-r026-20230809   gcc  
m68k                 randconfig-r033-20230809   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r014-20230809   gcc  
mips                 randconfig-r025-20230809   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230809   gcc  
nios2                randconfig-r005-20230809   gcc  
nios2                randconfig-r011-20230809   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                        fsp2_defconfig   gcc  
powerpc                      obs600_defconfig   gcc  
powerpc              randconfig-r024-20230809   clang
powerpc              randconfig-r032-20230809   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230809   gcc  
riscv                randconfig-r042-20230809   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230809   gcc  
s390                 randconfig-r022-20230809   clang
s390                 randconfig-r044-20230809   clang
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r013-20230809   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230809   gcc  
x86_64       buildonly-randconfig-r002-20230809   gcc  
x86_64       buildonly-randconfig-r003-20230809   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r036-20230809   gcc  
x86_64               randconfig-x001-20230809   clang
x86_64               randconfig-x002-20230809   clang
x86_64               randconfig-x003-20230809   clang
x86_64               randconfig-x004-20230809   clang
x86_64               randconfig-x005-20230809   clang
x86_64               randconfig-x006-20230809   clang
x86_64               randconfig-x011-20230809   gcc  
x86_64               randconfig-x012-20230809   gcc  
x86_64               randconfig-x013-20230809   gcc  
x86_64               randconfig-x014-20230809   gcc  
x86_64               randconfig-x015-20230809   gcc  
x86_64               randconfig-x016-20230809   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                  audio_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
