Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 819F85BFE62
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 14:51:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B483C8249E;
	Wed, 21 Sep 2022 12:51:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B483C8249E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663764696;
	bh=bViYszQ2BqAOxlCBzbGphR5QONP0n6uquldjDX3iSp4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6Bg1FQIBP0btLao1ConmRwanu/6+mn9HSgNm+A3Zn09WQu+Chf20no0P6ILvxFJO/
	 Tw7N/1HLUe+E93bjgH1lmtF5DAMJzjS3fC/TQlJTqEOPT/1bIdZ4u7LYK9QVyCSKRM
	 GDvn6/mp/hGAR76ktXtiKpVWonEDTv3xuoKPXTXVId+Lv2fkpe9nDcC8gecbKTkXpw
	 mclPohZyIHnvRF5uJrIFwxy+aNPVHvFHjpa0O0n8PHIJZTvYaextbEixCy2ZRfV/iU
	 F+KHoyRT26fGcAxQAADiVUeqbKnvsZWgvPyyC3U0f8aV0C3fw8P3rXA/81GavYR4UO
	 CO+psnkWTFWdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bNucVzirVYpq; Wed, 21 Sep 2022 12:51:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90C75823E3;
	Wed, 21 Sep 2022 12:51:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90C75823E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A48E1BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 12:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7EE94157D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 12:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7EE94157D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hhON5ABStwT1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Sep 2022 12:51:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCEC4410A1
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DCEC4410A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 12:51:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="280364368"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="280364368"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 05:51:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="570521985"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 21 Sep 2022 05:51:21 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oazCD-0003bh-0u;
 Wed, 21 Sep 2022 12:51:21 +0000
Date: Wed, 21 Sep 2022 20:50:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632b08b2.om6OMx2Nk5RvfGkF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663764683; x=1695300683;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=hEEO7IW1YtN9JPC6WJ29fvCCCNQaAZVOZcywVx8FtRM=;
 b=cMPp2aO7ThdUx0w6pAQpPs+2ZUHCN6vbUbwReC0LWqT9pGRqM4s0/Jt4
 +PxH3z6SpGeuGstBRT/xkVc/0/eVRivmQEIhcBUD2AnKIrk0SJPNWT3pS
 HBsJrCTv096Ublyo2PAQhp584XZGGvXsenYnPDnaZhgk43yGNw4hn/R/q
 w2McP6VUJa8bSEa1kXGKA1guJWAUQ6DXlZGy1QnJvjWBQ8GbvIA2zT9Pd
 yupcGjVZ2TVBJmTIrCuDD7nXF6g86eHjxfApQYFSFgVzS8MJ0W/aoSTtM
 Ey4l00niahgsj+PJ/8guQKkKlcte/PBH74wP722EZW8Le54oizuS2a8bx
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cMPp2aO7
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 da202a07465edd94595fc22d9e003b1372b35750
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
branch HEAD: da202a07465edd94595fc22d9e003b1372b35750  e1000e: Remove unnecessary use of kmap_atomic()

Error/Warning reports:

https://lore.kernel.org/lkml/202209211139.VPM7En0j-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

csky-linux-ld: (.text+0x4d64): undefined reference to `ice_gnss_is_gps_present'
csky-linux-ld: ice_main.c:(.text+0x5210): undefined reference to `ice_gnss_exit'
csky-linux-ld: ice_main.c:(.text+0x5928): undefined reference to `ice_gnss_init'
ice_main.c:(.text+0x519c): undefined reference to `ice_gnss_exit'
ice_main.c:(.text+0x581a): undefined reference to `ice_gnss_init'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- csky-buildonly-randconfig-r002-20220921
    |-- csky-linux-ld:(.text):undefined-reference-to-ice_gnss_is_gps_present
    |-- csky-linux-ld:ice_main.c:(.text):undefined-reference-to-ice_gnss_exit
    |-- csky-linux-ld:ice_main.c:(.text):undefined-reference-to-ice_gnss_init
    |-- ice_main.c:(.text):undefined-reference-to-ice_gnss_exit
    `-- ice_main.c:(.text):undefined-reference-to-ice_gnss_init

elapsed time: 723m

configs tested: 51
configs skipped: 2

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220921
riscv                randconfig-r042-20220921
s390                 randconfig-r044-20220921
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                             allyesconfig
s390                                defconfig
arc                              allyesconfig
powerpc                           allnoconfig
alpha                            allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a004
ia64                             allmodconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016

clang tested configs:
hexagon              randconfig-r041-20220921
hexagon              randconfig-r045-20220921
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
