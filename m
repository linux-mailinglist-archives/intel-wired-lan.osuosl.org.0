Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7134868A855
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Feb 2023 06:26:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2058341676;
	Sat,  4 Feb 2023 05:26:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2058341676
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675488405;
	bh=Xt2B2SsiXkd5m9L0KTx6SsmQ6MxR36tVXGv1kT8Ywv8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gL7UsPn5mshpqxwsH9t8GXZp45VxOhv2cUbnH07vfzYWDWjLBnHulX1TzLk46L8AP
	 a8ob8+wWZUsilSgQ62vQOX8fv6993UrcHcryC+dY/E6r4+s9SIVwaRO8y5jmUAqGVi
	 Kd0dM5S2nDSgd1Zxs7bPZls3H7Fm73qahYx6mqE9jP4uXvTkpO4s96LYj3cC3p7tWS
	 x+JId6nS2cLgtSNOUsu5PYTNvdGzh12O5IizktEdQn+Z/Rv548CQbJoYdkF/QvCASO
	 aVdwf8Smiv6NobvXmZ3DYVkv9Vw3P7ghlcfMt8BExQSsygWVk7CcUUL4QyigtsDfqh
	 DAh+IfrBS57FQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CxZ6Gq-_s9Rp; Sat,  4 Feb 2023 05:26:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8248409EB;
	Sat,  4 Feb 2023 05:26:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8248409EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D737D1BF33F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 05:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7771760BFF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 05:26:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7771760BFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IbiW_PCiYWJX for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Feb 2023 05:26:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8559E60BFA
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8559E60BFA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 05:26:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="330210630"
X-IronPort-AV: E=Sophos;i="5.97,272,1669104000"; d="scan'208";a="330210630"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 21:26:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="774570369"
X-IronPort-AV: E=Sophos;i="5.97,272,1669104000"; d="scan'208";a="774570369"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 03 Feb 2023 21:26:33 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pOB4K-00014D-1B;
 Sat, 04 Feb 2023 05:26:32 +0000
Date: Sat, 04 Feb 2023 13:25:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ddec64.FrFKBFUay0cop9YM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675488395; x=1707024395;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CxSTyidSa1jZHfzgl/coZVmYOnS++APVse4Ql8mH/Q0=;
 b=naxGlkGwlYdKJxid3RAbmL31Exk3MMAOUbPxUzYUPFWLwzNYG35X0bii
 3vWRzMfSd8NJ/l3TcMHAuvU/FmYwyIcNS6r7b4abhqvlqhHGwKl0ZcGC3
 YBSkn2cua0eXpss3jvCjcY7R/Y36FmOuoo4Nra3nscmiDgzUMQHYmZOHJ
 f0ErF7Q/vvMrHICJELzFVnOy9ptL4TFPzx6dUAL05uU0X0OnBtJ96fJmo
 f2jL2C5Ejpo4/aHRCp5PtufJpt6qaGrx93PIyOfs7dapgeMPwfq8wV/0H
 Z5rUBA9grzK5yW8bpYYblLBf7gGzbfoLyinborX8xGbXDOD/DqDepHYfV
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=naxGlkGw
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 10301ebe5c12f2670ba5da084a6bef95231fc2b1
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
branch HEAD: 10301ebe5c12f2670ba5da084a6bef95231fc2b1  igb: Fix PPS input and output using 3rd and 4th SDP

elapsed time: 760m

configs tested: 66
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                              defconfig
s390                             allyesconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
x86_64                           allyesconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
arc                  randconfig-r043-20230204
s390                 randconfig-r044-20230204
riscv                randconfig-r042-20230204
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
m68k                             allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
powerpc                     taishan_defconfig
sparc                       sparc64_defconfig
sh                           sh2007_defconfig
i386                             allyesconfig
i386                                defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
sh                        edosk7760_defconfig
powerpc                       eiger_defconfig
mips                  maltasmvp_eva_defconfig
i386                          randconfig-c001
sh                   sh7724_generic_defconfig
powerpc                         ps3_defconfig
powerpc                 mpc85xx_cds_defconfig
mips                 decstation_r4k_defconfig
alpha                            alldefconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r041-20230204
arm                  randconfig-r046-20230204
hexagon              randconfig-r045-20230204
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
