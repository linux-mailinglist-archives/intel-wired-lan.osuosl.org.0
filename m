Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB161685EEA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 06:32:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFD3960BE2;
	Wed,  1 Feb 2023 05:32:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFD3960BE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675229548;
	bh=jbjj1QRx05UBgGF7+z6We8O7AGztca6wQqYot5D+HVU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xnAsutHM3hly6X5tY2f0nPt0F3Ki7joqc20DJKOWzQTr56OTwv9EBHVu+gZjXNsNY
	 XBv5lm3QDjiSXPr3hRTG83grrGUri7edv1DxoZQsp/WWDQl1fZUBrkXQh+bGpNiRka
	 HIab5ZrQWPpFO7OOL4niebzll6WxbSBJgqx69zghDwgzKGIfcxdK802w3SXahq3UNr
	 8QIjP00TT88icEZwVDWems4GHR16TBcK0Oke3cNbc1zHDjCNYpPyjeKcvHHD1IpoGJ
	 pUymKyq7MigvcKIf3sZ328GLdvY8ezz4yp1hKwYimm3xm/QZ/UJ3EvoLw3EVhcToQk
	 X/Ye+vFOXHmVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pQfkQ6UPRpFe; Wed,  1 Feb 2023 05:32:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2B5960BD8;
	Wed,  1 Feb 2023 05:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2B5960BD8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B55761BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 05:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AEE240355
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 05:32:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AEE240355
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pX17oOJrc1gS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 05:32:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 470AB4034F
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 470AB4034F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 05:32:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="355379458"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="355379458"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 21:32:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="697105668"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="697105668"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2023 21:32:05 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pN5j3-00056w-0k;
 Wed, 01 Feb 2023 05:32:05 +0000
Date: Wed, 01 Feb 2023 13:31:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d9f92a.mllT//K7m3nSllDS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675229541; x=1706765541;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Qw505KFhOcKn7/uBpXUynXPC5B5OpVec/VzOXyWCOIU=;
 b=oCxVl5qIOgHwefi0S2KRfLh4ED8dKFlQG+Z/WE7f8DrdTJlOLn/6zQg3
 ijltJR+Z0kpoOHpWFn+bXVup442viLG4UTDq10obnK8cPqoerJQ1mW3Bm
 k51IDgAdKtwgQ1y8OJJmkl1+my5oPBievZmsJu0PLewQ6C5iZi2wxbMmP
 KcTBgCLKD/FLwFosRIv8yxgOZoq6v7W5nIySlY+vnPe0tzIiP3xoC6mkp
 5y3loSpSpf9bVCAnju/Jk/wR3lSe89gEMcWLDpkLkqrOayObvSnUxnhS2
 VpCADo7VX7KeZ0f+ykVR44u5Rx53gekB3HNzXeuOFc4mUTS3rNsQrT0aW
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oCxVl5qI
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 df54fde451db9534f2fd9838d4c7d2a10ccfb6e8
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
branch HEAD: df54fde451db9534f2fd9838d4c7d2a10ccfb6e8  net: ipa: use dev PM wakeirq handling

elapsed time: 875m

configs tested: 73
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
x86_64               randconfig-a006-20230130
i386                 randconfig-a006-20230130
arc                  randconfig-r043-20230129
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
i386                 randconfig-a003-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a002-20230130
i386                 randconfig-a005-20230130
x86_64                           allyesconfig
arm                                 defconfig
i386                                defconfig
x86_64                          rhel-8.3-func
m68k                             allyesconfig
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
i386                             allyesconfig
arm                              allyesconfig
x86_64                           rhel-8.3-syz
x86_64               randconfig-a004-20230130
x86_64               randconfig-a005-20230130
x86_64               randconfig-a002-20230130
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
powerpc                           allnoconfig
i386                          randconfig-c001
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig

clang tested configs:
hexagon              randconfig-r041-20230129
riscv                randconfig-r042-20230129
riscv                randconfig-r042-20230130
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a016-20230130
x86_64               randconfig-a016-20230130
arm                          pxa168_defconfig
powerpc                          allyesconfig
mips                          malta_defconfig
powerpc                    ge_imp3a_defconfig
x86_64               randconfig-a014-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a012-20230130
x86_64                          rhel-8.3-rust
i386                 randconfig-a013-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a011-20230130

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
