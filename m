Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BCE62D945
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 12:20:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C5DD60AB1;
	Thu, 17 Nov 2022 11:20:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C5DD60AB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668684006;
	bh=ec1m2w7udunVWoMHWufCDXg+UiUyWT9FAPHBAKrwPPc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=P44kLXg8Nu/Mf6TI1d9t0QHzptIBdYGs/oALy6SbH8bSwLrajdSDDXUEQ8hbxXw/8
	 GvvtRboelhAR/vLR5bwzQBMn8JA6OW3jFyeG5nArDdcdFpkxLgvsWQ3tpdoTlMfMl9
	 nW6zVc0kcZw7KTuEo2YMb5hk6JZ6I305qrgw4cDRwnr/P5Nkc3t4h3rJFIMGfXL7VU
	 6VW6RN71b9FgJCcmntv3VfAAZOczVL6ZntLCoGZsB+SPC8AnM8RGkoG1jO5x7tErTq
	 +0pYMbhnQ5+VwKlgcExDNq84K5woTOC5fC2q8j2VWQISTZSkQBNFiCbK6T/d3/XmnI
	 RquAfLiaXoUaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jKe3s5cZIKME; Thu, 17 Nov 2022 11:20:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08CA86102F;
	Thu, 17 Nov 2022 11:20:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08CA86102F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E32D1BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 698EB60AB1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 698EB60AB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pKt61xA8A-k5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 11:19:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AB8E6102F
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5AB8E6102F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:19:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="377090249"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="377090249"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 03:19:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="708579073"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="708579073"
Received: from lkp-server01.sh.intel.com (HELO 55744f5052f8) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 17 Nov 2022 03:19:53 -0800
Received: from kbuild by 55744f5052f8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ovcvw-0000FT-2H;
 Thu, 17 Nov 2022 11:19:52 +0000
Date: Thu, 17 Nov 2022 19:18:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6376189f.EufUiUPEOFrMVPwx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668683996; x=1700219996;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=KIl5F7qB87LFFpP2+bSSCruaxwCYwPZGh6WKCJMcUwk=;
 b=N5uoaQsSCuFs1alt9Ee4L32i2sv769pdxFw75ggBqdIuehZY+xw/SnW0
 ul3H3wQkFDUItuu2C1HJ+MRE7Wni8NHZ6DqcLTDFyJX0B4fhj6RK6lpz7
 f1tlm71A6XnF6oKknYrG3sFckSIb2tXhaaj+rnfOvHZj7ZknIyHa7J+oL
 ZUsxyOO2pFAvmfxrpCCKh7kAtOu44A4efwF3qqjhPQ9JkBw/cejxmsJzI
 lQ5FoDOIN3vA13OsIEgOK64WKy8hfGcp+3vcr6YWCWnKPYCHuW/FpACAv
 9QumMYT3Fnoft1oZx8tc/jj/5kccQaQ3v+6imnG0HZN8l6qK+65wxX2t0
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N5uoaQsS
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD REGRESSION
 d82303df06481235fe7cbaf605075e0c2c87e99b
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
branch HEAD: d82303df06481235fe7cbaf605075e0c2c87e99b  mlxsw: update adjfine to use adjust_by_scaled_ppm

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202211151913.CCNjaoPq-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

include/net/sock.h:387:37: error: 'const struct sock_common' has no member named 'skc_v6_rcv_saddr'; did you mean 'skc_rcv_saddr'?

Unverified Error/Warning (likely false positive, please contact us if interested):

net/core/dev.c:6409 napi_disable() error: uninitialized symbol 'new'.

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-defconfig
|   `-- include-net-sock.h:error:const-struct-sock_common-has-no-member-named-skc_v6_rcv_saddr
|-- arc-defconfig
|   `-- include-net-sock.h:error:const-struct-sock_common-has-no-member-named-skc_v6_rcv_saddr
`-- i386-randconfig-m021
    `-- net-core-dev.c-napi_disable()-error:uninitialized-symbol-new-.

elapsed time: 877m

configs tested: 34
configs skipped: 2

gcc tested configs:
arc                  randconfig-r043-20221117
riscv                randconfig-r042-20221117
s390                 randconfig-r044-20221117
alpha                               defconfig
arc                                 defconfig
s390                             allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
s390                                defconfig
x86_64                          rhel-8.3-func
s390                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                          allmodconfig
m68k                             allyesconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
x86_64                              defconfig
arm                                 defconfig
i386                             allyesconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
arm                              allyesconfig
x86_64                           allyesconfig

clang tested configs:
x86_64                        randconfig-a016
hexagon              randconfig-r041-20221117
hexagon              randconfig-r045-20221117

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
