Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8CE68D5EB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 12:47:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA84460B9A;
	Tue,  7 Feb 2023 11:47:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA84460B9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675770449;
	bh=109WTSzh42BbSq8KhUfyri3HDANDRTUP4UHTkiRFj8g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2UZV8Wk8n6vWFzOQOJgycCWI6zjm1AyPLgTaYbJZgmCqnHyd7WE7u/v41o+hXj9KP
	 jTc1kR5Of4c/PFlvTu2/8zygHSxfwmhtZhcZ5xxsVZdmpWoQkpfh52PVFzCjFB57RS
	 546SXSHZ48g3Ty55dajGGTyTYYQ5fBtGyi2Blc9osFwiIaFN2Degb8iSHh+zx/MCvb
	 QlhTaDGcROdUqsEtj7ZaozloEroSNf/ftiJx4mmH1cDHw9YBBqZ0/wApUEnX75em0n
	 k/+kZF90UErfoThMXB+RzW6FxTGBzxg86eWOtz0emR1KV9aP4uPSWPfNZ9lqeZw3Qc
	 jnehDQuRm8PQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JSDeEdRcomg7; Tue,  7 Feb 2023 11:47:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C85FC60B96;
	Tue,  7 Feb 2023 11:47:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C85FC60B96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B8581BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 11:47:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B8F6408A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 11:47:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B8F6408A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L_v_vyK_y1k9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 11:47:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FFEC4061D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FFEC4061D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 11:47:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="317502041"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="317502041"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 03:47:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="790781691"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="790781691"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 07 Feb 2023 03:47:00 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pPMR9-0003WA-0u;
 Tue, 07 Feb 2023 11:46:59 +0000
Date: Tue, 07 Feb 2023 19:46:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e23a2d.Z2YP2is84dOl/edb%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675770441; x=1707306441;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=QJbQgwAAlG4hUGpDQGg5x2Or7iEj+W71vQFQ+kgMDog=;
 b=LIRYjJd1z+DzJi7LfTbuU1eumgZmD9phA2VZSBHh0gSugNorMOovMmx8
 LNcGyh8n1Ixi+8ymNKWPIREV5XzZlJHSuKsoLbMDSunw+KuzdVHVT7S5J
 9OHFUNeRqZCH2ob+78WUB/MhOde3K6rnKeSw8jGNf5H6JbapiLKbA+Akb
 yCZwUvmrx5VzfersN8NJEYTj3XrU629wXADN7SEMhbq7KHVMUIIANDxxf
 BswWMYllUf/ME7Bz1Z8XxJpVZkiWTggUQRzQaGkHAnHAu8tCV18E5926q
 52yWETh/RegJAsaH4MUniS2r/oqLh5NL0jYNCoQgtNGkhySs5ziqMzptF
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LIRYjJd1
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 4a606ce68426c88ff2563382b33cc34f3485fe57
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
branch HEAD: 4a606ce68426c88ff2563382b33cc34f3485fe57  ice: switch: fix potential memleak in ice_add_adv_recipe()

elapsed time: 724m

configs tested: 71
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                           rhel-8.3-bpf
x86_64                            allnoconfig
x86_64                              defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                 randconfig-a011-20230206
x86_64                               rhel-8.3
i386                 randconfig-a014-20230206
i386                 randconfig-a012-20230206
i386                 randconfig-a013-20230206
x86_64               randconfig-a013-20230206
i386                 randconfig-a016-20230206
x86_64               randconfig-a011-20230206
x86_64               randconfig-a014-20230206
i386                 randconfig-a015-20230206
x86_64                           allyesconfig
ia64                             allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a012-20230206
powerpc                          allmodconfig
x86_64               randconfig-a016-20230206
mips                             allyesconfig
x86_64               randconfig-a015-20230206
riscv                randconfig-r042-20230204
sh                               allmodconfig
arc                  randconfig-r043-20230204
arc                  randconfig-r043-20230206
s390                 randconfig-r044-20230204
riscv                randconfig-r042-20230206
s390                 randconfig-r044-20230206
i386                                defconfig
i386                             allyesconfig
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
m68k                             allmodconfig
x86_64                          rhel-8.3-func
alpha                            allyesconfig
x86_64                    rhel-8.3-kselftests
m68k                             allyesconfig
arc                              allyesconfig

clang tested configs:
x86_64               randconfig-a001-20230206
x86_64               randconfig-a002-20230206
x86_64               randconfig-a004-20230206
x86_64               randconfig-a003-20230206
x86_64               randconfig-a005-20230206
x86_64               randconfig-a006-20230206
i386                 randconfig-a005-20230206
i386                 randconfig-a004-20230206
i386                 randconfig-a003-20230206
i386                 randconfig-a001-20230206
hexagon              randconfig-r045-20230206
i386                 randconfig-a002-20230206
hexagon              randconfig-r041-20230206
hexagon              randconfig-r041-20230204
i386                 randconfig-a006-20230206
arm                  randconfig-r046-20230204
arm                  randconfig-r046-20230206
hexagon              randconfig-r045-20230204
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
