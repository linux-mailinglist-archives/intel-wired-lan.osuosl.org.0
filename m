Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C9465960F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Dec 2022 09:05:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3191B40132;
	Fri, 30 Dec 2022 08:05:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3191B40132
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672387517;
	bh=8LmWKzZJyiWunPFWgl6YLgPuiXXmhGdBhWnzcPNixzE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7b2xq5c/pSu5IOFqzHuZ3l332ed2i5p1/et5kSuEgS4JRDXVSKgQ/grkM/4NfNMrR
	 NTLncL9CDZaKAK1qtSZwpZpBTrqEnIHmrPn+CKe+ykw8UFlOQkcRWIfGm7X1l20iHj
	 LPi21v6VZWDDZdsOr1j1/sMAF4nwho6aqrASfhLT53l0LE+l5gPeVjSaIOUduIzT92
	 YlqnKrDcvuoy5bXcbjxTiZ3HgCaWeONQ2ooP9Aw3H7KaZzKOv/mDmU1lOnFLlewu0s
	 Cdlwy7qyHO0KTixtKRjy4UwaNah5imiLrHK8RORnTIhg7EXEYEKETl+wT8WfkqtoBK
	 xSo4c/lOVuRSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E-agjvx0EPE0; Fri, 30 Dec 2022 08:05:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E66640103;
	Fri, 30 Dec 2022 08:05:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E66640103
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF2381BF310
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Dec 2022 08:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98F5F60640
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Dec 2022 08:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98F5F60640
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M8dbLGWemqgy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Dec 2022 08:05:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96EFB60625
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 96EFB60625
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Dec 2022 08:05:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="348384088"
X-IronPort-AV: E=Sophos;i="5.96,286,1665471600"; d="scan'208";a="348384088"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 00:05:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="684411604"
X-IronPort-AV: E=Sophos;i="5.96,286,1665471600"; d="scan'208";a="684411604"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 30 Dec 2022 00:05:08 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pBAO3-000Hhn-20;
 Fri, 30 Dec 2022 08:05:07 +0000
Date: Fri, 30 Dec 2022 16:05:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ae9bae.5hmVJy4Uj+d1Efsh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672387510; x=1703923510;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=pyr/DDplKegp66a0TS6CBITx/DeXSkNfoHVW3jD60OA=;
 b=U7rZH4EESn9XvWf+4B5zqyIl/VckDgZ/VV+WtQzlA82GGQvBAQqAbDEF
 KGFWTm/+GdBJtKybfD7k5/xXzbYF1MUwp9CO+x1OtpqG8+Hn3nUjK9IT3
 ba5FmUWWKaA5yLPMporf6j5u1vCkapMLJUvYNY/P7GQ0ra6kZffOLdzrF
 eFCUyjQrs87cjhG/eQH+GlmybqihugitbQkxq6OaL6Ofe5+KjCZj79b+c
 uRsSlWatLRw2s67+NKOyO/GDDL6ByRj9qVqWt8s1g+YzAeYFOFg+4CXkX
 Rs1rmxqmpcOFXbt13iD8ofENTIPSQ1gHI514rFvpFPtCV/+NqTwTo+1JF
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U7rZH4EE
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1663c47b0ac101409c65a0041bf5565340b86c0b
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
branch HEAD: 1663c47b0ac101409c65a0041bf5565340b86c0b  iavf/iavf_main: actually log ->src mask when talking about it

elapsed time: 721m

configs tested: 55
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
powerpc                           allnoconfig
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
m68k                             allyesconfig
sh                               allmodconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
mips                             allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a012-20221226
i386                 randconfig-a011-20221226
i386                 randconfig-a013-20221226
i386                 randconfig-a014-20221226
i386                 randconfig-a016-20221226
i386                 randconfig-a015-20221226
ia64                             allmodconfig
i386                                defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
i386                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a014-20221226
x86_64               randconfig-a013-20221226
x86_64               randconfig-a011-20221226
x86_64               randconfig-a012-20221226
x86_64                           allyesconfig
x86_64               randconfig-a016-20221226
arm                                 defconfig
x86_64               randconfig-a015-20221226
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64               randconfig-a002-20221226
x86_64               randconfig-a003-20221226
x86_64               randconfig-a001-20221226
x86_64               randconfig-a004-20221226
x86_64               randconfig-a005-20221226
x86_64               randconfig-a006-20221226
i386                 randconfig-a004-20221226
i386                 randconfig-a001-20221226
i386                 randconfig-a003-20221226
x86_64                          rhel-8.3-rust
i386                 randconfig-a002-20221226
i386                 randconfig-a006-20221226
i386                 randconfig-a005-20221226

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
