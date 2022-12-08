Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 994DA6468B6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 06:44:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B18D081433;
	Thu,  8 Dec 2022 05:44:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B18D081433
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670478290;
	bh=1vVgYuf7BwWFyXPXoGcZcTPbE4RzippB/fGrB6kiLwk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YTSQYY3eZZ9xNrl2CpwjYfvET+XHAgYipiprMaMLwp4VZy97oI9Jmx6S4PQQdhrpX
	 wfMP8E8DxwkaMS5CEoEum5ZY47RSfdyuajfkqWBlsnCCTGq/aoVMFhFDoUT1/R9uze
	 MjHQAvxQY/MCML1cJLg4YE2bThJGqHCfB+zMuxpiRF74RMiZjH4Y34P4+SwXGeMybz
	 5cF6wBwfowAxEOoQuZk7SMJ3D4EFM+krKvLY1SvbRCANG+1f/laEk17OiVtO2zA8gS
	 6JoURr0lfdin8zZ7R0QTAcjbnhUi+kH40Dg1vx9WU/BgC1YPiTV75h16gp/FUQ7Q2o
	 xnZT3nW8FxGGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cZqMJKVsLVoY; Thu,  8 Dec 2022 05:44:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FAA18142F;
	Thu,  8 Dec 2022 05:44:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FAA18142F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A2B5D1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 05:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47A12400EE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 05:44:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47A12400EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ouf4E_9yiK0v for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 05:44:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAA21417BD
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EAA21417BD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 05:44:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="296775968"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="296775968"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 21:44:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="771360493"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="771360493"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 07 Dec 2022 21:44:34 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p39hx-0000tH-1k;
 Thu, 08 Dec 2022 05:44:33 +0000
Date: Thu, 08 Dec 2022 13:44:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <639179a0.SRWjTW6d0gtp1LUt%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670478277; x=1702014277;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=w6AeYm+ymGvFpSw6ig2PKd5DBpRPLYlIzqhV7Zr0I2c=;
 b=iLl0O4IR5rb5Y7vLV7TzDv8vuRGCzEXGNRzwCljy6tg0rJcnrBkl3WYX
 H/wQ6jxMu7/AIVlK//N9RBUSckT7zZYgPTTcUWb5OKAa+AWx3T7to/aje
 4kQVfiZbxl6rPGmDMyMmxAUmm+0bw/3Pb3VwZIVgTeuOnFkoV9hydutNh
 5uDeLT5rY2LCWGOHGrEuqfCtR04EjAmsN7kpDoTH02eo+y9LRdbrnvRv3
 dEgh4a/j6ijZt8IWkzGTwbkqWSGjdihH5hBv2OOrA28EG/E9deYmbtpmh
 HvN3Km99zKXLnQIRfhx9y78VAQ6B2ryAFtNYYeynLX/Wac9ToEnqKoQr5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iLl0O4IR
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 a2220b54589b1d2a404f6eb5f6bc3c0ace2b504f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: a2220b54589b1d2a404f6eb5f6bc3c0ace2b504f  Merge branch 'cn10kb-mac-block-support'

elapsed time: 1018m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
alpha                               defconfig
arc                                 defconfig
s390                                defconfig
s390                             allmodconfig
m68k                             allmodconfig
alpha                            allyesconfig
m68k                             allyesconfig
arc                              allyesconfig
s390                             allyesconfig
ia64                             allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arc                  randconfig-r043-20221207
riscv                randconfig-r042-20221207
s390                 randconfig-r044-20221207
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                             allyesconfig
i386                                defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-rust
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                            allnoconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
arm                  randconfig-r046-20221207
hexagon              randconfig-r045-20221207
hexagon              randconfig-r041-20221207

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
