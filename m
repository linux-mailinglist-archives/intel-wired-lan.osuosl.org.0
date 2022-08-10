Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F2858E6BB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 07:26:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFDCC415E5;
	Wed, 10 Aug 2022 05:26:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFDCC415E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660109185;
	bh=5Bl7cxDKRnI8wxFHzo8eKDKjh5T0tbYMd9QyWK28MM8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dxEUKvlgxvIRGIjxMcECem4y0/vl2os9ad20YeypV99aAoBPysac1DIdve+tRkvnQ
	 hwUpEYXcQyHGMRK30vDr+L7GGLLbAH4pByob4qcRYl1GpIyunFc9lJ8A1gIPW/3vdJ
	 Z3c5aiuUrYK4cor6YRzeN/iPJWJjUnu5EbZFaKOFD0HwHdpkER/RSa3xtHkxfNYdlL
	 KfXH4NH1YO/rA0MH/dQ5UgeYQukfYAsMDz4PN22C25wcDsAtK0/fe3acJwL0ZTUQy3
	 e6OaG2mPaIQxV7OpwDSR/ybeD0RSnh8f7aptlA4zyABoFljX7yzxiSze88maQOIeCq
	 XoITZVCgfs4Tg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vTH7IS4GYEcD; Wed, 10 Aug 2022 05:26:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99A8041506;
	Wed, 10 Aug 2022 05:26:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99A8041506
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D52A1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 05:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 04F4A40347
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 05:26:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04F4A40347
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id toem_qT8aek1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 05:26:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 052B9408A5
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 052B9408A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 05:26:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="270774811"
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="270774811"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 22:26:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="581091948"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 09 Aug 2022 22:26:11 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oLeEM-000NYl-2L;
 Wed, 10 Aug 2022 05:26:10 +0000
Date: Wed, 10 Aug 2022 13:25:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62f34138.baCZr7hsxN5kYh1E%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660109173; x=1691645173;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=aetiwP1I7q134nq7c9rDM9YH+xUzApAFZK1BhCUPzdE=;
 b=Y5zW6gmYw3H3TeHBAacPmPWtBy3wRF+w1xCqIGLarjpxcIR7U1t6iLGO
 K26arCpqv779/evloMR0BCNGZjr40gStdWANJXg6gyPjzy5XUJ+thSXGk
 /4Kn6aQEt9pSgPYe2DrjsLtU/eJy4KFiONMss7+p3TMzXHWGj0Bc23G6V
 b0XIsj2grrYWOR3s1By5DOccjvvr3RkOewEIDN8jaXbedYRbzIjMy/nUX
 B6Xqlypqmk+cTeJ1rPxwYcHMR2hbjPxbciBefgVoNQToPIAw1emP1A1pQ
 HHSBAmz3lNeqmI/cmPzPy558BJnra6ndfstKDw2Dm4kKy7r5VDGchHo2X
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y5zW6gmY
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 11c9126719de8e4f349b6fa36cd71e5701385e63
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 11c9126719de8e4f349b6fa36cd71e5701385e63  igc: Remove IGC_MDIC_INT_EN definition

elapsed time: 709m

configs tested: 51
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arm                                 defconfig
arc                  randconfig-r043-20220810
x86_64                          rhel-8.3-func
s390                 randconfig-r044-20220810
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                          randconfig-a014
riscv                randconfig-r042-20220810
x86_64                        randconfig-a015
i386                          randconfig-a012
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a013
i386                          randconfig-a016
x86_64                        randconfig-a011
x86_64                           rhel-8.3-syz
arm                              allyesconfig
arm64                            allyesconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
x86_64                        randconfig-a004
i386                          randconfig-a003
i386                          randconfig-a005
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                              defconfig
m68k                             allmodconfig
arc                              allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220808
hexagon              randconfig-r041-20220810
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220810
i386                          randconfig-a011
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a001
x86_64                        randconfig-a005
i386                          randconfig-a002
x86_64                        randconfig-a003
i386                          randconfig-a004
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
