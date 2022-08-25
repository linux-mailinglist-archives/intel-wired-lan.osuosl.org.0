Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 065D25A0D0E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Aug 2022 11:48:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89FD880C9C;
	Thu, 25 Aug 2022 09:48:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89FD880C9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661420914;
	bh=yy1ryQcd8B2Pi0/iq6Vyx0zCs1Za7eKxF0Rvh0nxUTk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TrI5hh7HLXLfrCBjbO9wKvtVeuHbXWaO440FcDh8mcTWSxvKIQFX9E1VUYcUIbQXV
	 BRAR8fmlpVlbnRqlH+J4f7uHlEWHNAIywF4GpfSt2XcYsL74befa5gK0POE9KPrMSq
	 ATdf4l3Bpz551Xe6OQadVBb1VQ3auHe9tyarrCgJGRYMIS3pjZi9kl2rFdDrnvzE+u
	 AatsW6r7kh7X3UEkNWivL8/QzYY7ICsnQ/4OaVMjfYaHjcIONf63uLqGTQgQmrM2++
	 hsvHpCDeQvEm1ddJE/i9KvJxpZCOFkzNTBKOpu9nL93fdDjOv7ZDO/7N+54TDYb5B3
	 Ne+P/2+esn1fQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HH763GWizB2G; Thu, 25 Aug 2022 09:48:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6720F80C21;
	Thu, 25 Aug 2022 09:48:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6720F80C21
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B43321C11A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 09:48:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8BFA38345D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 09:48:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BFA38345D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tV_6QVIO6zDI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Aug 2022 09:48:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DD448343F
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6DD448343F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 09:48:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="294200428"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="294200428"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 02:48:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="639524978"
Received: from lkp-server02.sh.intel.com (HELO 34e741d32628) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 25 Aug 2022 02:48:19 -0700
Received: from kbuild by 34e741d32628 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oR9TH-0001x5-0m;
 Thu, 25 Aug 2022 09:48:19 +0000
Date: Thu, 25 Aug 2022 17:47:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63074542.urwV080CRgasWu2G%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661420902; x=1692956902;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=rJ2/E7iow1Ov08UCIdbwIivnsQpzgStfYxnBHcfbt+Q=;
 b=WqhMTPfT8XqGBsT3O23Llyu1adkEZvkgcnuzhRSZGVL7H1PcsMIlZrS7
 mxggOAMsOeIeYbOm/qwx1dEn015yc7DotpSA2Nl/UGaASzsuJZF1KDlip
 X5aHeGfh0OCBXRWAlP6qtk97b8KVrntVD5fNCOUca3vPvBrcH90zd7+NU
 xnovc0Qqi+Mc4AkEQW/TuNR7p1D5LErBDQpXmT/VO+JYhKm9T6Ag0Re4o
 iWwZTtDIYSEjLgY92kSBELT8TYWM/R+ACHPxMCRt5OpnBylXPnz45CCje
 qjvO7eyp8Hsy5RwXGqjDhSUJ4B4yFskU55fjO0jiVtrj+Vg3Aqa99mOh1
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WqhMTPfT
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 f8c74ca6d31c8b0059b083b7eb8544f8108ca531
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
branch HEAD: f8c74ca6d31c8b0059b083b7eb8544f8108ca531  ice: Print human-friendly PHY types

elapsed time: 950m

configs tested: 60
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
x86_64                              defconfig
powerpc                          allmodconfig
m68k                             allyesconfig
mips                             allyesconfig
x86_64                               rhel-8.3
sh                               allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                           allyesconfig
arc                  randconfig-r043-20220824
x86_64                        randconfig-a006
x86_64                        randconfig-a015
riscv                randconfig-r042-20220824
i386                             allyesconfig
s390                 randconfig-r044-20220824
arm                                 defconfig
i386                          randconfig-a001
i386                          randconfig-a003
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-a014
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
loongarch                         allnoconfig
loongarch                           defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a005
x86_64                        randconfig-a001
hexagon              randconfig-r041-20220824
x86_64                        randconfig-a003
hexagon              randconfig-r045-20220824
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a013
i386                          randconfig-a004
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
