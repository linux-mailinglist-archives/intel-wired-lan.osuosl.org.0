Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C279865D194
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jan 2023 12:38:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C8B04177A;
	Wed,  4 Jan 2023 11:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C8B04177A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672832286;
	bh=Ohxc3xR1cL1ipkE9Z14fkHh4wbFjseyRfdMfp45Y898=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bxybF9TScWE+2QO8zI9WaNA23uWkmprvH+BQDvHe9fC4oRNyZLYlMxbpBzDz5fRmc
	 VRcA+7HTRNY/IRMYNRBUQ3xgH2+iugHSP1ttxY76I+88wKQyhyRywwOmJVg37PxGl4
	 TSkwgJqf2poOwyGgXSvhIAtBKiuH9sBjHmcRufExtHTJoAWwL3ghSwRB/fxZYv/qTD
	 dLy8wnGJ6YO6y+GpOzbody0uJ+Qd5DSNvnrBGXaMBRkNMnGVoJSdGIK7DRuWjLxj9H
	 wfFKSx58830zToOFhkMpfgvYJ6oQw9559cqa+wDKXZHdfUrqSxGoGD+yAvt6H1W0AW
	 8l2T56t30RyYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BrXiFTpm3V3u; Wed,  4 Jan 2023 11:38:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBDE64148D;
	Wed,  4 Jan 2023 11:38:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBDE64148D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B61D61BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 11:37:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 916854035D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 11:37:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 916854035D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mVwsS4UuZecw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jan 2023 11:37:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FFBA408E2
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FFBA408E2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 11:37:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="321981877"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="321981877"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 03:37:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="687499375"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="687499375"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 04 Jan 2023 03:37:47 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pD25a-0000J7-2y;
 Wed, 04 Jan 2023 11:37:46 +0000
Date: Wed, 04 Jan 2023 19:37:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63b564f9.evvgMAKZhzj7VXuc%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672832270; x=1704368270;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=cMfMZ+7xI61MaSRAcKN3INAnbAlCLyR/o0hsL3q96dA=;
 b=GMmZyxAKlzwf1AYO6v1acERE+nVdx4tF/HGdw2IddDwlUrXLq5OrAku7
 S6NvAqEnkBvVTO5yGBK9OIuMIPWF558tvzQWWgHaD6H3118mK6zql/j7r
 hU6A0B9V8iw3cZfHQnSKkr/F1aaGjw+9C5L80VLH7x6gKlzV/hwjyncML
 +hJcuooj/k2D8qR57tfQkO8SMR4u/7+wJjhm/H4WEhRDPDh4iWRuIxbIC
 Y+yAhvxd1lVUgF4guFdwkAkDWr0UZvrup3xWtbv7tosNXgliVadrfVVCT
 e6H8Rwex4JQwGLQepTvPiq9kwMxKMX0PLrcsXX18R8Emo1OX5ci7O9Vn7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GMmZyxAK
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 49be1d0346bf2bb3ec1669628aa0556a4e2bd657
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 49be1d0346bf2bb3ec1669628aa0556a4e2bd657  ice: Fix broken link in ice NAPI doc

elapsed time: 726m

configs tested: 67
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
sh                               allmodconfig
mips                             allyesconfig
s390                             allyesconfig
m68k                             allmodconfig
powerpc                          allmodconfig
m68k                             allyesconfig
alpha                            allyesconfig
arc                              allyesconfig
i386                                defconfig
arm                                 defconfig
i386                 randconfig-a004-20230102
i386                 randconfig-a003-20230102
i386                 randconfig-a002-20230102
i386                 randconfig-a001-20230102
i386                 randconfig-a005-20230102
i386                 randconfig-a006-20230102
x86_64                              defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-bpf
ia64                             allmodconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           allyesconfig
arm64                            allyesconfig
x86_64               randconfig-a003-20230102
arm                              allyesconfig
x86_64               randconfig-a001-20230102
x86_64               randconfig-a004-20230102
x86_64               randconfig-a002-20230102
x86_64               randconfig-a005-20230102
x86_64               randconfig-a006-20230102
riscv                randconfig-r042-20230101
arc                  randconfig-r043-20230102
arm                  randconfig-r046-20230102
arc                  randconfig-r043-20230101
s390                 randconfig-r044-20230101
i386                             allyesconfig

clang tested configs:
i386                 randconfig-a013-20230102
i386                 randconfig-a012-20230102
i386                 randconfig-a011-20230102
i386                 randconfig-a014-20230102
i386                 randconfig-a015-20230102
i386                 randconfig-a016-20230102
x86_64               randconfig-a011-20230102
x86_64                          rhel-8.3-rust
x86_64               randconfig-a015-20230102
x86_64               randconfig-a014-20230102
x86_64               randconfig-a012-20230102
x86_64               randconfig-a013-20230102
x86_64               randconfig-a016-20230102
hexagon              randconfig-r041-20230102
hexagon              randconfig-r045-20230101
hexagon              randconfig-r045-20230102
arm                  randconfig-r046-20230101
hexagon              randconfig-r041-20230101
s390                 randconfig-r044-20230102
riscv                randconfig-r042-20230102

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
