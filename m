Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D41D967FA4E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jan 2023 19:58:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EE9781EDA;
	Sat, 28 Jan 2023 18:58:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EE9781EDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674932283;
	bh=g3z5EUfuSd1nWWPp0Jph/G2z1dYhm+FuTFkz6oxuWg8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yNXuiWcJ3d52hZKhe4ImcgI4e9dEyQQS0doJ1fj1OBDwyPLJ9f4qK7KMDiJG2Ca7Z
	 Go+xFzp5t3mI9e9UkZ4+OHcIEiYmKNE7RQ8sMpD283Pj0pTb+jOAzvAgrv30B59igo
	 6uQvhhJwmf3tFzKecP1M71bLy3gzwExct7vY4i05MPofLXUtCc0cSs+xyZ978vheMN
	 6XZfJXChOZQwqg2KDT/j4msv8+4wKT/3xcJsyFnUa6nWI+ZDSxRE3k0wyWdYtKtjcl
	 dsSzFwmbvo4RCrpLVx/kLFXyDKK4VkA82uFwH3oXgHnR6xgKd8peX0mzAcz/e17wZa
	 2Nolq4pALTc/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NQUo0mL2LHwG; Sat, 28 Jan 2023 18:58:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DCE18197D;
	Sat, 28 Jan 2023 18:58:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DCE18197D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B05B1BF38A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 18:57:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A0C241701
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 18:57:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A0C241701
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zj_lOPBG_rZH for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 18:57:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3E9141703
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3E9141703
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 18:57:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="325015360"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="325015360"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2023 10:57:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="771960924"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="771960924"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2023 10:57:52 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pLqOY-000106-2g;
 Sat, 28 Jan 2023 18:57:46 +0000
Date: Sun, 29 Jan 2023 02:56:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d56ff8.3h4ZQyUjkQdjVOYn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674932275; x=1706468275;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=QXzuSwwFrh5Ia+xiDO5aVgIzEEaHgdwaCAKhtP+aGiI=;
 b=FolOdZABWmDPpXnxzYCutrVkPSFhYs0ljrGXFAFxVD5VNMwDhVDiH8UB
 TnzTGDPHMPJZtwgDiEMoe5Sbu4YrKcXIwL1mqI4AYQO4ji+OGNGnTT3fm
 qYXblBXhz8rEpxchHNm8DwOs3ry5umwQ7bmkRbXCOhtsY6JlHq2hmsd2X
 KerhZcl9xK1T1a2h3ByOrVkRYDAhJ4ubpAQk8N+vc+++ZwIDgz2dVSP6t
 IW18G0tmXa/+tp8qFr9QaUIXBLUdHMN8psXM7lQe+mAIMcWrSM7sIJ+Cs
 j3PU1p1aHxqcEavNFyOJHYw5STkegkgGxdLup611zsfN8gouoOK5k6ZGw
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FolOdZAB
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 5355e9ef6bf5099e8c6c9804358d6e47d3be12c7
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
branch HEAD: 5355e9ef6bf5099e8c6c9804358d6e47d3be12c7  igc: Clean up and optimize watchdog task

elapsed time: 1011m

configs tested: 76
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
s390                                defconfig
m68k                             allmodconfig
arc                              allyesconfig
s390                             allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
x86_64               randconfig-a002-20230123
x86_64               randconfig-a005-20230123
x86_64               randconfig-a001-20230123
x86_64               randconfig-a006-20230123
x86_64               randconfig-a003-20230123
x86_64               randconfig-a004-20230123
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                            allnoconfig
ia64                             allmodconfig
sh                               allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-a004-20230123
i386                 randconfig-a006-20230123
i386                 randconfig-a005-20230123
i386                 randconfig-a002-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a001-20230123
x86_64                           allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
m68k                         amcore_defconfig
powerpc                      makalu_defconfig
m68k                        mvme147_defconfig
m68k                          amiga_defconfig
mips                          rb532_defconfig
i386                             allyesconfig
i386                                defconfig
i386                 randconfig-c001-20230123
arc                        nsim_700_defconfig
sh                           se7724_defconfig
sh                            shmin_defconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
x86_64               randconfig-a016-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a015-20230123
x86_64               randconfig-a014-20230123
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r041-20230124
hexagon              randconfig-r045-20230124
arm                  randconfig-r046-20230124
i386                 randconfig-a013-20230123
i386                 randconfig-a016-20230123
i386                 randconfig-a012-20230123
i386                 randconfig-a015-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
x86_64               randconfig-k001-20230123
riscv                randconfig-r042-20230123
hexagon              randconfig-r041-20230123
hexagon              randconfig-r045-20230123
s390                 randconfig-r044-20230123

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
