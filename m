Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6BF65D192
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jan 2023 12:37:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D16EC40AD9;
	Wed,  4 Jan 2023 11:37:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D16EC40AD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672832277;
	bh=aWToPKv/IHSazvG8pSbAwm5T2UoSXzEIz3kVZngYP3Q=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GO+tvy/AcyclknEOxHnOsasdlF1101dqgF06Mzj5GjmjZOcvfIp5O0UXCdswY2ToV
	 qvmWb2KUl4COFv+Hf2cbbYA1JmfaUto229Sj1tMFitys5MtpS+YbD3Jw+qSHCVD+LD
	 3jd/4YIFmrOEMxNJh6YBnUH1s6T9QLdl40vD/guhRLLZ2wnyL1iw3dcaitGExXxZ7t
	 AC7B6Op2mNH9f4j9mrbw3MTMgFJ1vo+V8wQYUTnRkZyh7fpxJ5DhGTjg8zTpwUtneR
	 WsUjoJ30ts7LVK7ORTFWdCuJ8Rg2rhWoVidgmoDBmUgiGXqLSNsF5Xfoa3pvgYdSfN
	 k92Qc5ZlgokFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fvb5zytMLgiF; Wed,  4 Jan 2023 11:37:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C11A4403F9;
	Wed,  4 Jan 2023 11:37:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C11A4403F9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 671271BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 11:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4122360A64
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 11:37:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4122360A64
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cyj02c6XizQJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jan 2023 11:37:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52E70608D8
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 52E70608D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 11:37:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="323916539"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="323916539"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 03:37:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="779189144"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="779189144"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 04 Jan 2023 03:37:47 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pD25a-0000JG-3A;
 Wed, 04 Jan 2023 11:37:46 +0000
Date: Wed, 04 Jan 2023 19:37:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63b564ef.KEyhLfw8+4h/xgV5%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672832270; x=1704368270;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Ez1vuP7Pxe9A/vODvT4Ux+B2pZRbYzzW4PV7u3gDqeo=;
 b=FO8Sv8/i/W13fBZFcfyMckGurMApQ/wAqqexnyQrkAFOMVpAhi3dcuoX
 hqDjp5HgIS917DlI1z7cI2h/zoKHjxp2xAdzszdLZz2RjlTmObpMfJB88
 km81YQ4l1E3Xu11KwUiqv3xNcgpT/y0VuO4E+VyGc9EjOaOBWCGLCyFdw
 K+t6PcT4d5cI/jzmAhtj6OPXy24ydgjMuoMBkALrir1g/jVHSSbiLvdAB
 w18x1BFWsp4IcZIq9dLl0OCTNK90cCrjaSRW0yZk0fAPzoG2kagU7BYba
 BKAL/YVJymMKxEB7nNUZhXAsLhkhZWPrNveGbyPQRJyyDvgRXczIjNTGq
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FO8Sv8/i
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 1d1b4c63ba739c6ca695cb2ea13fefa9dfbff60d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 1d1b4c63ba739c6ca695cb2ea13fefa9dfbff60d  igc: Remove reset adapter task for i226 during disable tsn config

elapsed time: 724m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
arm                                 defconfig
powerpc                           allnoconfig
arm64                            allyesconfig
um                           x86_64_defconfig
i386                 randconfig-a004-20230102
um                             i386_defconfig
i386                 randconfig-a003-20230102
i386                 randconfig-a001-20230102
i386                 randconfig-a002-20230102
s390                             allmodconfig
i386                 randconfig-a005-20230102
s390                                defconfig
i386                 randconfig-a006-20230102
arm                              allyesconfig
x86_64                              defconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
x86_64                           rhel-8.3-bpf
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                               rhel-8.3
ia64                             allmodconfig
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
s390                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                           allyesconfig
arc                  randconfig-r043-20230103
riscv                randconfig-r042-20230103
s390                 randconfig-r044-20230103
i386                                defconfig
sh                               allmodconfig
x86_64               randconfig-a003-20230102
x86_64               randconfig-a001-20230102
x86_64               randconfig-a004-20230102
mips                             allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a002-20230102
x86_64               randconfig-a005-20230102
x86_64               randconfig-a006-20230102
i386                             allyesconfig

clang tested configs:
i386                 randconfig-a013-20230102
i386                 randconfig-a012-20230102
i386                 randconfig-a011-20230102
i386                 randconfig-a014-20230102
x86_64                          rhel-8.3-rust
i386                 randconfig-a015-20230102
i386                 randconfig-a016-20230102
arm                  randconfig-r046-20230103
hexagon              randconfig-r045-20230103
hexagon              randconfig-r041-20230103
x86_64               randconfig-a011-20230102
x86_64               randconfig-a014-20230102
x86_64               randconfig-a012-20230102
x86_64               randconfig-a013-20230102
x86_64               randconfig-a015-20230102
x86_64               randconfig-a016-20230102

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
