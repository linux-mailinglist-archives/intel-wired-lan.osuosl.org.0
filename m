Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2B7686453
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 11:34:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCBA160F4E;
	Wed,  1 Feb 2023 10:34:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCBA160F4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675247645;
	bh=xxd2gRKiOAGV6gMnPsgoWMhY989Gx8ctz2kUIX6sAGI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=u+oMciGdbDkrKmc/YAGmqbj/jFgiJ51Mo8w6JoNf/CIJ28OBs/LoMsyv65WuVolgl
	 piPPmXvg2kKM4BOlqsh0KRJjZDO7WWXb9Tck1n5HBmxUe+0T4SSuL0ZPmTOSKHM8Uu
	 W25I45o30avm1vrznsdXfyocMEkFfVgtp1vZgexgd6VeN/lzIDXt0qNFSxIj/IkJJQ
	 R0ktxikgBRVUjlpYPeApidhn9aHCWAHq/jDl8JwQ5xKsb+4hvxZqSuAoTZBg07Vwq1
	 LcCMaXJWoKU/fyOaV5XTwjKsTZxBntDmbmRPhgwzfDsVwBBBQD0TQH52i2n1mc/Hjc
	 YdsTixGn4vxJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7JTj-SntSyPn; Wed,  1 Feb 2023 10:34:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87A5F60E61;
	Wed,  1 Feb 2023 10:34:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87A5F60E61
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD6F11BF59C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98388417E7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:33:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98388417E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k1CKKmsdm4XZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 10:33:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29DAF416F3
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29DAF416F3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:33:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="325808142"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="325808142"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 02:33:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="788830057"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="788830057"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 01 Feb 2023 02:27:20 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNAKm-0005LQ-0l;
 Wed, 01 Feb 2023 10:27:20 +0000
Date: Wed, 01 Feb 2023 18:26:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63da3e73.DgfjCeKYfRYRKNQW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675247636; x=1706783636;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uQlov8/SF/cbbi16kz/dGU7v6QppjlPX8FtlG9rw8NU=;
 b=Q3uPHnaMAEfrl+NzGd46sl8kQk6G9gDD6j0Ynv1NJABGcUNTsq2nLD3h
 Kn1IrhI60XESrkH287x5ux9E1ETkxbzUiAFHeJqcDmyhvUgFSuFwpLybH
 nLL5Z5uBcn7h+N3kL/hgmqWoMtaNFSvOYmkWwBTKTdbf+pplKxMnHgQNb
 gUFWfLpEDQlA1C/En3ZII25rcwL6X2l48BSdbBRsBX0iXRevqb6UX61GZ
 jhz6WVQKM3xfm3CFotNsS0b0aOV3VqSXs5RZSq54yo8zSsSwhJb0ToKJd
 DrwxU8x2k4/3TyaxXcZdxOJyLcn/b/6JmULlR6Fr/Bg+uPbPwpjhsUv9/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q3uPHnaM
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 4fec0e2279a29e31e60d988bd0a89812df39e3c6
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
branch HEAD: 4fec0e2279a29e31e60d988bd0a89812df39e3c6  ice: Fix DSCP PFC TLV creation

elapsed time: 722m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
x86_64               randconfig-a001-20230130
um                           x86_64_defconfig
x86_64               randconfig-a003-20230130
x86_64               randconfig-a002-20230130
x86_64                              defconfig
m68k                             allyesconfig
x86_64               randconfig-a006-20230130
m68k                             allmodconfig
x86_64               randconfig-a004-20230130
arc                              allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a005-20230130
alpha                            allyesconfig
arc                                 defconfig
x86_64                          rhel-8.3-func
s390                             allmodconfig
x86_64                               rhel-8.3
alpha                               defconfig
powerpc                           allnoconfig
ia64                             allmodconfig
s390                                defconfig
x86_64                           allyesconfig
s390                             allyesconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a002-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a003-20230130
i386                 randconfig-a005-20230130
i386                 randconfig-a006-20230130
i386                                defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
arc                  randconfig-r043-20230129
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
i386                 randconfig-a013-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a011-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
hexagon              randconfig-r041-20230129
riscv                randconfig-r042-20230129
riscv                randconfig-r042-20230130
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a014-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
