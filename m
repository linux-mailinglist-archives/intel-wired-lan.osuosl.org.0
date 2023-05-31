Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1851717C7C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 11:55:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 59C5D4049D;
	Wed, 31 May 2023 09:55:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59C5D4049D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685526924;
	bh=FXCkrJggQ4pjqOJ9EEONSBNfdUeb8u0jIdE+P2k64EM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3X/XHbl8SXa/Sagm4M+ogS2FUmiD8yRXiZWEPw9rzDoV/dtNU2/lBrIWhw3RxN/6b
	 upJ6kyKyWjF9Tlx4auT0+n+2hq10DA1PXes16NhyLlZsdPFqgAYWBr5KPQkCG9SXtd
	 8LrlYBYE6tEqmGQQ8tj5w14vOv1qYNRzyUJVqmftAJ+1sp2Z21Ojvmm+VjYkFayP+t
	 mQeHAAF1RkEm97T7vaEPHIwGGT/LHGk/GXFXsC7ojfehSchR5SEOz5B5U5txfdyBUd
	 ijl+gpV8K0YpqDpSFKihGgt4RvhfcEjV+bWwQJwCg21Q8ZZHq1fFeW/JhoY0otZjuh
	 tgev2BlCooifQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0HrMuG1ghVx6; Wed, 31 May 2023 09:55:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E6DA4042B;
	Wed, 31 May 2023 09:55:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E6DA4042B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EBA51BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 09:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2107A4175C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 09:55:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2107A4175C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKXaruMQSPjT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 09:55:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A957B4171B
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A957B4171B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 09:55:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="355198571"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="355198571"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 02:55:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="657264393"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="657264393"
Received: from lkp-server01.sh.intel.com (HELO fb1ced2c09fb) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 31 May 2023 02:55:14 -0700
Received: from kbuild by fb1ced2c09fb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q4IXy-0001FG-0U
 for intel-wired-lan@lists.osuosl.org; Wed, 31 May 2023 09:55:14 +0000
Date: Wed, 31 May 2023 17:55:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230531095504.Rykpx%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685526916; x=1717062916;
 h=date:from:to:subject:message-id;
 bh=Tb+hGbPWYoOg8r4uSHzczoygZTryrw/ZyNFQMArEG8I=;
 b=hpQh3NeN/BiVYR6J8GHvdjCiUb6o+I/Rk+FfF5iiNecvVJ41CbMnORf0
 6Oq3E+FpRh1nIf5+gNVuyaSeShxdj5/Y6il26DVf6iApH/AVMGWIyjX1P
 g0W5vO5/rdY9Y8+YLe2F07HVbR1Jm3EevVlEnz2XBUXfrX5XTHYd0DVaz
 Kjs/RsMcl1TcDrb6qJTAgtVRPhJZtv512Mrv2tR3MCK27TJNX0nrOzyc5
 qu86VlinpIROqx/8tqKYLsEWq5JtMrMMlHdpZADSxdPT34y944Bb6ySQc
 bnYsSHuv/CowtKkgw/Wz09P016JYvc12fFc/kz5KAS8+6Q39hto4+Usiv
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hpQh3NeN
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 313ab1c0eccfbdf2e74a4ca77460ecc6fdb90822
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
branch HEAD: 313ab1c0eccfbdf2e74a4ca77460ecc6fdb90822  ice: Don't dereference NULL in ice_gns_read error path

elapsed time: 722m

configs tested: 40
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
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
