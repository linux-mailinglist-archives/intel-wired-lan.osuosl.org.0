Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 746BB81DCE8
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Dec 2023 23:52:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F1D281B23;
	Sun, 24 Dec 2023 22:52:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F1D281B23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703458337;
	bh=vM35Yt7UsKTy3g/ymTEzHu6aknVJGz2H3seR+m0njVM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=f1xmbow5RCliFRcOtoEL4j2vLKBjVIGForBFKN+LxU6g0pKV42D+oz6E8U6gWKxRl
	 TomfZh4ZXS/gghm/3mLt4jGwJuZ6rhZfUOPdS92YNFveRGgBYR+A7kxZ0Bz/C0h87V
	 Be43Z51n36T9lQmMFUO/LOpl4qrs9oXDFzhSVASqbjFsB1vDNKG6xnblf5GH3yXegF
	 G8WqDs5TQu/8JiFaogut5OFDkXYx40bWArtTGB/4PhAsONjgM99eUWwh4NGxTePASw
	 kqgfnl6waqba8dWnL8QxqccYw+gXCOdpzwqI31m2pPNuVspRArWCvw9zKugg37jh8d
	 RxV3koR4KkfAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i_AwGYj1-dD1; Sun, 24 Dec 2023 22:52:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEED081AF4;
	Sun, 24 Dec 2023 22:52:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEED081AF4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BAC5D1BF380
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Dec 2023 22:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8290B40446
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Dec 2023 22:52:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8290B40446
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZptmcjuWVb6S for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Dec 2023 22:52:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9038E40018
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Dec 2023 22:52:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9038E40018
X-IronPort-AV: E=McAfee;i="6600,9927,10934"; a="3068769"
X-IronPort-AV: E=Sophos;i="6.04,302,1695711600"; 
   d="scan'208";a="3068769"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2023 14:51:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10934"; a="781123316"
X-IronPort-AV: E=Sophos;i="6.04,302,1695711600"; d="scan'208";a="781123316"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 24 Dec 2023 14:51:57 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rHXJt-000Chv-0k
 for intel-wired-lan@lists.osuosl.org; Sun, 24 Dec 2023 22:51:49 +0000
Date: Mon, 25 Dec 2023 06:49:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312250630.K6sR6udx-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703458328; x=1734994328;
 h=date:from:to:subject:message-id;
 bh=l10/t+++l2cAnHq5c2YVtpsax1WAMNyEr9H+RX1eC/Q=;
 b=fGSQI31Nl3qlskk2lvXZji3lzqkx9BAdlKkw1+3tAqVFl4MUSoMosHiA
 Q1t95RzBzyPvq9ElZsglfbSNWO0OFGRSBKD0wmJTSYV2PA0GF186hcAaY
 NMnbusOcb/x7SkXhfnGX1PUlZWZysoUbEv28ldWxAQ+7ULP/mzUgFVxCC
 x9vuIJkmfcgPlHtTvqCPLyf+YE+JUnwbSulKIl3G4K8Qs7UunUQ+jdegx
 sYc2sMmD4Sh0wmg8D+S38a4FHDuLZms0+bOlvv+ggDWJ/9ELfHV8yGgIt
 q50CH3jZi9UH+XqOtImMVSRyYO7No12SGAI6eluajVAJzlWs7frbz//qi
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fGSQI31N
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1a6c31d324dd123ab34e0e280e2bd2799fc733fe
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
branch HEAD: 1a6c31d324dd123ab34e0e280e2bd2799fc733fe  ice: dpll: fix phase offset value

elapsed time: 2743m

configs tested: 97
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231224   gcc  
arc                   randconfig-002-20231224   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20231224   gcc  
arm                   randconfig-002-20231224   gcc  
arm                   randconfig-003-20231224   gcc  
arm                   randconfig-004-20231224   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231224   gcc  
arm64                 randconfig-002-20231224   gcc  
arm64                 randconfig-003-20231224   gcc  
arm64                 randconfig-004-20231224   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231224   gcc  
csky                  randconfig-002-20231224   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231224   clang
hexagon               randconfig-002-20231224   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386                                defconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231224   gcc  
loongarch             randconfig-002-20231224   gcc  
m68k                              allnoconfig   gcc  
m68k                                defconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
nios2                             allnoconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231224   gcc  
nios2                 randconfig-002-20231224   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231224   gcc  
parisc                randconfig-002-20231224   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc               randconfig-001-20231224   gcc  
powerpc               randconfig-002-20231224   gcc  
powerpc               randconfig-003-20231224   gcc  
powerpc64             randconfig-001-20231224   gcc  
powerpc64             randconfig-002-20231224   gcc  
powerpc64             randconfig-003-20231224   gcc  
riscv                             allnoconfig   clang
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231224   gcc  
riscv                 randconfig-002-20231224   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231224   clang
s390                  randconfig-002-20231224   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231224   gcc  
sh                    randconfig-002-20231224   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231224   gcc  
sparc64               randconfig-002-20231224   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231224   gcc  
um                    randconfig-002-20231224   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20231224   gcc  
xtensa                randconfig-002-20231224   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
