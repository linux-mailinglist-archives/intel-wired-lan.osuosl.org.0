Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDFE55A82E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jun 2022 11:00:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A1DB41043;
	Sat, 25 Jun 2022 09:00:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A1DB41043
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656147618;
	bh=KRJSt2kdFe0L3TXVmednk3JViN1MZkskZf4l37BzgUU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MS3T1MKeob3GfoMCaUtd+gs/bspsZJTv/3L3sa+Wi+cssgdoTXDm+kK6lkjTFV1v2
	 HIwCJ1q2ARO5eaCiBHusCPsDUgN9nkIO/zwrWrzWEGxjw052Z9lGnyG2cx5Kizr6cS
	 SIxOwpaegRaYixo7PNWvQhDehyZUPnN5Hww2qP3xqXq4gUjQ9wJwBwIiPytD635NRV
	 TfMeE5qtylzNqT6gJUmjVKcOPKs3A3T3e3eianxgqgJ5y6vU4oR85hVeEXfvdeBlN0
	 mKxtR8PV73zYCaq0u7VmPDctEGV1BLM9lFUS2GR0MLJKjsbs8B3SELlNmdW84VPHZb
	 dJbR996YMrIig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ftYrgsIvKkrY; Sat, 25 Jun 2022 09:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A50240B08;
	Sat, 25 Jun 2022 09:00:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A50240B08
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3E0331BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 09:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1858983F66
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 09:00:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1858983F66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xPfVnzTGGZ1J for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Jun 2022 09:00:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5ED8284956
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5ED8284956
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 09:00:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="264212751"
X-IronPort-AV: E=Sophos;i="5.92,221,1650956400"; d="scan'208";a="264212751"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2022 02:00:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,221,1650956400"; d="scan'208";a="564096184"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 25 Jun 2022 02:00:00 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o51e3-0005Zq-KD;
 Sat, 25 Jun 2022 08:59:59 +0000
Date: Sat, 25 Jun 2022 16:59:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62b6ce7f.HBG2nHXVKzb27to9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656147608; x=1687683608;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ERrRG2D7BcS/RuLX8Hhprwk0a/3eQBVQmjwmHv0dBN4=;
 b=X7w5O+jHbn24p60bzPJ0lLEBm/brxYjHEscDROKnyWh3U/MYP9TdndQK
 JmvxFMMmozeWrKy9AIYn1blvudQQT3vzAz3cJWUFQjwNUEPSxb03XN9TJ
 OziMQyw2qmq7huXUOJmKWyQv4Iv8nWa4+HmvSXVogJh3vO1fyW+L2nQlw
 oekC6HXswylR5msgf7Vnpmukp5CynOH9yH69HhI2aMe0rzYJD5KdJMUrg
 anxzbk1cHRbfTP8SS3NipooqHsbrmhOTFHwhlDdQ1f8lvtWyKDBs2vEvb
 J+Ptfx4b74s5uJeNOJ9zzYzuM7poS3kzpS+Ol3AxKygfuAtudbEvtq/cE
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X7w5O+jH
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7f9a605f2d912002c67d22f21bac8e9dd3964377
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
branch HEAD: 7f9a605f2d912002c67d22f21bac8e9dd3964377  i40e: Fix erroneous adapter reinitialization during recovery process

elapsed time: 724m

configs tested: 55
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
powerpc                      arches_defconfig
m68k                          multi_defconfig
powerpc                     mpc83xx_defconfig
sh                 kfr2r09-romimage_defconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                                defconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220624
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220624
hexagon              randconfig-r045-20220624
s390                 randconfig-r044-20220624
riscv                randconfig-r042-20220624

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
