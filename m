Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 475995A7AD4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 12:03:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A1AC4187A;
	Wed, 31 Aug 2022 10:03:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A1AC4187A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661940193;
	bh=V0hZMUr/fqLnqI1wiyjjTQVxWQh3iVuJ2PIHgM+M8Ik=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=p/naXC3XHO6idnX5rPPcp9YQ6DodqHntvn4qMl2A52ANXw2xLlBvqHBY4aBWS5ekw
	 ppyjGbe/fAIObWPlRp+z9NI9oRSwb0FWq2ihxvlAdjNK+sdD63x0KuegCK7MNDwqj/
	 2yorCsNqmF8WiiNjGVi3Mz7zH1iHWqXZZ/VVLzhZQJxnKWjAgDsv58W47493ChL5DI
	 /tTWGowAASMM5dvOlrgipp3adQt/SqNvdOyMjtJLsLL7oGEMCnibgYbWUDmYOjzPrL
	 fJPat365QPj+m0QK4nee/TUcsC6cwR+VLwFkRHeJEQPqYNa3ZZKAJrLDX2ClNGiMMY
	 0NkGRNaNLNQxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2nUdOHvw7o4t; Wed, 31 Aug 2022 10:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAFCD41729;
	Wed, 31 Aug 2022 10:03:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAFCD41729
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 320511BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:03:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BF5540C18
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:03:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BF5540C18
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uAVHVvJHAJy9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 10:03:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 301B640497
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 301B640497
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:03:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="296695009"
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="296695009"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 03:03:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="701317190"
Received: from lkp-server02.sh.intel.com (HELO 811e2ceaf0e5) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Aug 2022 03:03:03 -0700
Received: from kbuild by 811e2ceaf0e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oTKYo-0000Be-2L;
 Wed, 31 Aug 2022 10:03:02 +0000
Date: Wed, 31 Aug 2022 18:02:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <630f31ac.Leba478a9zdbxyCG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661940185; x=1693476185;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xU4uw7E6UWwrsM6J3Ft2g+ToPsBJ7H9lI1drEBZ2fSQ=;
 b=MReD4slJK91ycv5Dmrs7I91/2ROo3q7KIm5hE0cQLcN15m/kj/RH7Ijd
 +KjQ9CDqWSK0wLuP06ico97h4i2Q4PJ3DZRM7SzDn1Zhh6enGeZ6N5ZX8
 kMCOHEQurbpCbb9ZLYPmWQ5V5doB17TIUxrvZOwt/e955qKEkh5QAa0aw
 cNmaNAQULLV1U2fUoiLMOSLrIlvanIAIZKArIMIdbHHEt6Dgc7WIQWuRp
 eE/C6HxDpkZCWdhwCiq3FZdW5+sgBkw+v+u5RApgO3eyedgJZIYtFvrky
 xLee6qu3dvwm7TLfKd9KgXmD3EqPdAgMOEkJ2q3bg28yzctaIJeKqDSxL
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MReD4slJ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 04e489b29334a8d4fdb003d89fa6f90261b514d4
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
branch HEAD: 04e489b29334a8d4fdb003d89fa6f90261b514d4  ice: Add set_termios tty operations handle to GNSS

elapsed time: 989m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220830
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
arc                              allyesconfig
alpha                            allyesconfig
i386                                defconfig
m68k                             allyesconfig
x86_64                              defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                             allyesconfig
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
arm                                 defconfig
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
arm                              allyesconfig
x86_64                           rhel-8.3-kvm
arm64                            allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
ia64                             allmodconfig
m68k                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220830
hexagon              randconfig-r041-20220830
s390                 randconfig-r044-20220830
riscv                randconfig-r042-20220830
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a012
i386                          randconfig-a006
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
