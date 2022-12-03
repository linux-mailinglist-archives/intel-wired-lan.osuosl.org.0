Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1D76416DC
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Dec 2022 14:21:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE46F4185F;
	Sat,  3 Dec 2022 13:21:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE46F4185F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670073708;
	bh=U+aUDKP80y9tBz6mDDkv5IFcgmlsVBCNnE1RzMWjhTs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3N7xjsrxmtGvpXlsyGpwFFky5PdDuIqwA2B42KEhMKDVB7xHMZ/tSA7YdUQIcFx+x
	 SUz57odqgBz3aDO/IBuQdHAzdgrUo7pmbNt22uUa9JHWSf2ob5glHVQQbWz5JYxVR3
	 jbuhkR33UvjvYMyyEuDwC8xBMrzFgiKmEikqTvbnkFtaleYdJSUv1UhfxbpHm3MUbZ
	 Uc3+7B3+H8/4wRbouPLKGa4DCDumEVVX9l0BpSOy/1ZDtOymHfgqZNh+++QwvGc7NC
	 MUhya6ZeQF25hjZdmhNyFQEI3XiBXFCRkHtpPwZHs+NCsEk8fLm8HPBhEvp1uX3V/p
	 Q4Yl+uZcNCJfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5INKo-MmTN5h; Sat,  3 Dec 2022 13:21:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 852B741840;
	Sat,  3 Dec 2022 13:21:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 852B741840
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 856321BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 13:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5ED0840158
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 13:21:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5ED0840158
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ltef0GVgNiMT for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Dec 2022 13:21:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA5B4400E2
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA5B4400E2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 13:21:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="378272060"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="378272060"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2022 05:21:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="890458434"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="890458434"
Received: from lkp-server01.sh.intel.com (HELO 4d912534d779) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 03 Dec 2022 05:21:38 -0800
Received: from kbuild by 4d912534d779 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p1SSX-00004Q-2W;
 Sat, 03 Dec 2022 13:21:37 +0000
Date: Sat, 03 Dec 2022 21:20:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <638b4d36.UffXnAOvnXirZS36%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670073700; x=1701609700;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=STLv8RRA2sYs47famzACuNJc+dICD/4YBIwOOr4ryiE=;
 b=UDoQStvQEb94eilQo5rN4YO/wVCItdLTfhBR+Zr14qWi8x3C62Z3Ubes
 xFEYN3mvVNWHNzy18YaYsxfW+iBx01j+nHjtqjQn9rTlSvZhQYcq0BmrX
 ERl+Bwwo+OHswhhdet9BOGpXKCAkPsFAIqygDcNBIjvajqY4k8L3X6gfN
 OEeVYwQPKetOdRUT50VWRh/mG8bf/yH8gOsTvcF7kS9o4fVvavy7Vx8xd
 OxV6jqDEF8ZW5Z1jYyg/grpdDhBK1xlFLgu4bCU9cX5nbOYPqwcSVGA7h
 C3HqJP3HgnWjB7zL089ctfZ2XJ0eCDIBzc+ESP4KMF1xFnBNdhDW5yO3s
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UDoQStvQ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 979874a9e0a4acf00427fdd860866c146f3651ba
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 979874a9e0a4acf00427fdd860866c146f3651ba  igbvf: Regard vf reset nack as success

elapsed time: 720m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
powerpc                           allnoconfig
s390                             allmodconfig
s390                                defconfig
m68k                             allmodconfig
alpha                            allyesconfig
m68k                             allyesconfig
arc                              allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
s390                             allyesconfig
x86_64                              defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                               rhel-8.3
x86_64                        randconfig-a013
sh                               allmodconfig
x86_64                        randconfig-a011
ia64                             allmodconfig
arc                  randconfig-r043-20221201
x86_64                           allyesconfig
mips                             allyesconfig
x86_64                        randconfig-a015
powerpc                          allmodconfig
s390                 randconfig-r044-20221201
x86_64                        randconfig-a004
riscv                randconfig-r042-20221201
x86_64                        randconfig-a002
i386                                defconfig
x86_64                        randconfig-a006
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a001
i386                          randconfig-a016
i386                          randconfig-a003
i386                          randconfig-a005
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
hexagon              randconfig-r045-20221201
hexagon              randconfig-r041-20221201
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a015
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
