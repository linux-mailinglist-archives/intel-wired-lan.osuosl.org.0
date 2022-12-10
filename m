Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B907648E7D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Dec 2022 12:43:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F0C7415DC;
	Sat, 10 Dec 2022 11:43:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F0C7415DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670672636;
	bh=p0DBOwGIqoqhhuwt4CpdTCcSGGLLFxPfleTWsG8zP44=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lkmwoGdFqbF9GV9PQLIz/FrXWU2VQy8AEmTkpWz0PwJ1vB1Hp2uFxUptim0S6xAcK
	 KA276V1sPqc4hi4/lx4lySIvd2S27u3JdYx5R/C8U3cDmImetKxQsqR3tm7zlg62t1
	 UQFS6wBlsV7OVQMTqhSbVJnlsKpbNvQWIuL4RuVLvSiyoN50imTa3mskCSByy7twug
	 bdcwfyuEVe0y8cLH9dCm6YEejmgVANrODmSwuyhijbIxxV6q1NCURWLByNxzcPlxWP
	 UEYJwM4UO1n29owwYZBmnwIbwopUWcY4sanP+ovE+V4piXjUHJvj3hiSYzzEaA4lVh
	 u4uw4upuIvOpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M8WROoWed62g; Sat, 10 Dec 2022 11:43:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22CBA41553;
	Sat, 10 Dec 2022 11:43:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22CBA41553
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D63BB1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Dec 2022 11:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BDDD760736
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Dec 2022 11:43:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDDD760736
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N-3oNXVmPveY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Dec 2022 11:43:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1597F6059F
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1597F6059F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Dec 2022 11:43:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="305258121"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="305258121"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2022 03:43:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="892953269"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="892953269"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 10 Dec 2022 03:43:46 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3yGf-0002Pv-1E;
 Sat, 10 Dec 2022 11:43:45 +0000
Date: Sat, 10 Dec 2022 19:43:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <639470e6.3hqhvEZQB8qk+GOI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670672628; x=1702208628;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Ch12Jz98eo8ZkYdbFggS76Cl4/yCyfo0iPVqzkFjub4=;
 b=TQpqpUN5FgkAURihnXQBysTy18lIgVTK/NV67+y1vIW8DlSHuPkI5JpI
 RH2wbEUk/hQ+7kUkYjcUT6wrIVsC5CyACXb6wPWecZTtQY/KhTKsYZgSE
 eM+w+0YUTnRWTlqKDsAXNuI6Gt2wrO1zt1kJ/0LLI2js7hKCRFWGje0ev
 akdDU7XKh5YX9hsl+Ou4ZFFgmM6E/iffXB+0ehQeXTupVahLNZ4C2Dln5
 4mMbZ5v8ytXnP5TPgIajpOHH9a/4vNMlQK8XHvsBvwWnSkna+EONhFnpy
 A76wRGaFIW098UMsrTpx8URwI7pK2QgN0CtDnhmd9f8d5bTfaT5M6RazC
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TQpqpUN5
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5eba11e8c8d43bebc6e78e17fa1760773bb30cec
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
branch HEAD: 5eba11e8c8d43bebc6e78e17fa1760773bb30cec  igb: conditionalize I2C bit banging on external thermal sensor support

elapsed time: 796m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
arc                                 defconfig
alpha                               defconfig
arm                                 defconfig
i386                                defconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                           rhel-8.3-kvm
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                          rhel-8.3-rust
arm64                            allyesconfig
arc                              allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
arm                              allyesconfig
alpha                            allyesconfig
x86_64                          rhel-8.3-func
s390                                defconfig
ia64                             allmodconfig
x86_64                        randconfig-a004
s390                             allmodconfig
x86_64                           allyesconfig
x86_64                        randconfig-a002
s390                             allyesconfig
s390                 randconfig-r044-20221209
riscv                randconfig-r042-20221209
x86_64                        randconfig-a006
arc                  randconfig-r043-20221209
x86_64                        randconfig-a013
x86_64                        randconfig-a011
sh                               allmodconfig
x86_64                        randconfig-a015
i386                             allyesconfig
mips                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
powerpc                          allmodconfig

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
arm                  randconfig-r046-20221209
hexagon              randconfig-r041-20221209
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20221209
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
