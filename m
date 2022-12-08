Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B026647260
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 16:01:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 908AA82081;
	Thu,  8 Dec 2022 15:01:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 908AA82081
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670511708;
	bh=bN+2x1+VzalyKAV5DMPJPzJh7Ew+Ax9RIprAvNoYo3w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XpcJDXNUQE25HWcPX2uNAIK8Y+9njh2iTpQWlqtsMv4hk7YzKFTNeflsRd//Fv2nY
	 XDT4VhQXh+lc927MKzQa3uBiJZN1zgsTQzT/gQ1i6yO2rlVjdhKYoiCvxajYvG8E4+
	 /Bx954uduoqO2oGbr5ZHm6u3Js2SwgaVKjQJ5BtmrdEt9BWVQ2IsRo/7iPn/BSOykp
	 rVZXC7RO0qmo7gbSYvemX2hJVYlblhyOGDGD+N/jHEKW8TP6lEMDeLrV8hThVWjWGo
	 iX8yZcHgr607odk14Wa5HBIY4ZtpHjXR3Zcz8/szb0jFp8GJjsoWX/IHGj0IUGGRqc
	 x5whK38+V+lyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0riQxMgPzKG4; Thu,  8 Dec 2022 15:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C6B182086;
	Thu,  8 Dec 2022 15:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C6B182086
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B9BD01BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 15:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A0BD982010
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 15:01:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0BD982010
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BbGsxUi_MZXU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 15:01:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9457781FFD
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9457781FFD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 15:01:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="304835968"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="304835968"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 06:26:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="597360090"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="597360090"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 08 Dec 2022 06:26:46 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3HrJ-0001CC-1v;
 Thu, 08 Dec 2022 14:26:45 +0000
Date: Thu, 08 Dec 2022 22:26:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6391f3fd.XEsHIN1Mg3pjQ5Ph%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670511701; x=1702047701;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=KCG9PB8q4aVD4Cr0zanaRpoQjdVzUyO8ihVo+0o+yXc=;
 b=d5MkH0IZ0zy/eYnLM3KTr74EM6mU/G+aO7YyoK63j6LjQmDq+TFkrb/h
 3rQw0MeK2kyUkYDrnH8WvksIjdJtTHN/gTRCxpZ/xC1t0T0Lfzb1K1tBH
 N7aJEaf/bLgqclEdh86DqdwP7y4IdfxmfauPtnvtSt6HigS1C4qVwqpI8
 N/rXJPPCPBmgnDwDQGAJ8LK4wEA2WCMSOSEl4kmKaGytsYhU5PbRuzS3j
 hzzEK5mWJmX/v1MINKWsaJAU1M0e2B7HZZdQnU9xaFSCvEqIJLs1k7Rv5
 PW5ogw+C2VbnKthcIE8Xa+mtIAVhysjC6aRZrKEgSzxaRpTBSzjLdTvbj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d5MkH0IZ
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 1d0d9fb3e600e711b9df743d7dc367a5d90d7b4a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 1d0d9fb3e600e711b9df743d7dc367a5d90d7b4a  ice: reschedule ice_ptp_wait_for_offset_valid during reset

elapsed time: 722m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arc                                 defconfig
s390                             allmodconfig
powerpc                           allnoconfig
alpha                               defconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                              defconfig
arc                  randconfig-r043-20221207
x86_64                        randconfig-a015
riscv                randconfig-r042-20221207
i386                          randconfig-a014
s390                 randconfig-r044-20221207
x86_64                               rhel-8.3
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a004
x86_64                           allyesconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                                defconfig
ia64                             allmodconfig
x86_64                          rhel-8.3-rust
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a001
x86_64                          rhel-8.3-func
i386                          randconfig-a003
i386                          randconfig-a005
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64                            allnoconfig

clang tested configs:
x86_64                        randconfig-a012
arm                  randconfig-r046-20221207
x86_64                        randconfig-a014
hexagon              randconfig-r041-20221207
x86_64                        randconfig-a016
i386                          randconfig-a013
hexagon              randconfig-r045-20221207
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
