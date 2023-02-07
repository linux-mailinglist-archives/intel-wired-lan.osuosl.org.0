Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DA368D140
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 09:06:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E97E60DFE;
	Tue,  7 Feb 2023 08:06:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E97E60DFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675757187;
	bh=UGytO4egqJzrmp4+zIT3eWYAVph+nFgQ47q9IpHiweA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7+orEzBCgTqjrGdBYoKCciOiDiHkbdbfn8aTP2/b++4AGOKhyBx1FXv76MGmOsMSJ
	 uE46S/g0i5BqQRC1fAiQEu9dQpsNu+Raoyt35SotJ1DkYcJGOpmyquwy629SerCDCv
	 l+OrUvkiHTKFepiLjpFW1FqusEc0QuKU+b2WMm4/evZd9wiWsQGEpThlC8OQiqCqml
	 vBBAX0fM97pQPP2saORwMRjfXimwfqIn1gw9Bb/ZxYPm3b4+Dz7Xr2ZUFKOiCwnEat
	 rYwEriFOSZkYBBfagc7gdSUR1TKbZSQl7wtlKtgWdNKZNkoKceViH7Z1D402kskXb+
	 7pGIWw2rGCbfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3zKk7VD7vROE; Tue,  7 Feb 2023 08:06:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20F1360BE2;
	Tue,  7 Feb 2023 08:06:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20F1360BE2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 97B301BF30B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 08:06:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 70CE64174A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 08:06:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70CE64174A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9sFILk3KpEbt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 08:06:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A595409AF
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A595409AF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 08:06:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309081923"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309081923"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 00:05:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="775448585"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="775448585"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 07 Feb 2023 00:05:50 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pPIz7-0003KM-1x;
 Tue, 07 Feb 2023 08:05:49 +0000
Date: Tue, 07 Feb 2023 16:05:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e20642.rjwbdtZ+5EYg+Wga%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675757179; x=1707293179;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=DpGDL4YHeWpwEzZCv0zBhUta62+nPCoD8f1NBGkrMV0=;
 b=YtX45D+mbWQ47Esz4MnhPALQnXdNGCqK6Dk2T6igRnddM6eWzxk67/f1
 I8W17aJ4CYnJmAgeEBjwoilgCqBG3ZM/yEwwYf+PoWnHx7TGv2//XXwPo
 BYzmSHFcrfksyLXjjaulFvVzpj/Hy8c6L7Qx7j3Scx3azcxKOpfjtcvOz
 iu9uJdGxTSQJBiB76xW6VOh6ptu45RHv0UC3YFtVF6kEIgKgGgdqGxeSU
 TCVu39Pr4HWRbKfZHrRgkbcOKG9RO4ey908X49oaj7FoS6p+2N6hWgPlM
 hH46iZoeQSJ03PUbK1H0IgghiQEVZpPoEE9iqjNgtlkGypcs5Y22FBgsK
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YtX45D+m
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 bfb553b7c371634d277626a1bf17cac25b10802c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: bfb553b7c371634d277626a1bf17cac25b10802c  net/i40e: Replace 0-length array with flexible array

elapsed time: 724m

configs tested: 79
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
um                           x86_64_defconfig
um                             i386_defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
s390                                defconfig
mips                             allyesconfig
sh                               allmodconfig
s390                             allyesconfig
m68k                             allyesconfig
i386                 randconfig-a011-20230206
x86_64                         rhel-8.3-kunit
i386                 randconfig-a014-20230206
m68k                             allmodconfig
arc                              allyesconfig
x86_64                           rhel-8.3-kvm
alpha                            allyesconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
i386                 randconfig-a012-20230206
i386                 randconfig-a013-20230206
i386                 randconfig-a015-20230206
x86_64               randconfig-a013-20230206
x86_64                              defconfig
i386                 randconfig-a016-20230206
x86_64               randconfig-a011-20230206
x86_64               randconfig-a015-20230206
x86_64                               rhel-8.3
x86_64               randconfig-a012-20230206
x86_64               randconfig-a014-20230206
x86_64               randconfig-a016-20230206
x86_64                           allyesconfig
s390                 randconfig-r044-20230206
arc                  randconfig-r043-20230205
arm                  randconfig-r046-20230205
arc                  randconfig-r043-20230206
riscv                randconfig-r042-20230206
ia64                             allmodconfig
mips                           jazz_defconfig
sh                          r7780mp_defconfig
um                               alldefconfig
xtensa                  nommu_kc705_defconfig
arm                                 defconfig
i386                                defconfig
m68k                         amcore_defconfig
sh                           se7705_defconfig
m68k                          atari_defconfig
sh                         ap325rxa_defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func

clang tested configs:
x86_64               randconfig-a001-20230206
x86_64               randconfig-a002-20230206
x86_64               randconfig-a004-20230206
i386                 randconfig-a002-20230206
x86_64               randconfig-a003-20230206
i386                 randconfig-a004-20230206
i386                 randconfig-a003-20230206
i386                 randconfig-a001-20230206
x86_64               randconfig-a005-20230206
x86_64               randconfig-a006-20230206
i386                 randconfig-a005-20230206
hexagon              randconfig-r041-20230205
i386                 randconfig-a006-20230206
riscv                randconfig-r042-20230205
hexagon              randconfig-r045-20230206
hexagon              randconfig-r041-20230206
arm                  randconfig-r046-20230206
s390                 randconfig-r044-20230205
hexagon              randconfig-r045-20230205
powerpc                      ppc44x_defconfig
hexagon                             defconfig
powerpc                      obs600_defconfig
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
