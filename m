Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE8C5542EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jun 2022 08:37:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FC7240C63;
	Wed, 22 Jun 2022 06:37:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FC7240C63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655879866;
	bh=RWQXZKsOFZnttpuuYnY8H/i77H5h5cV6cVbYk3oC21U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OqoGnyvqhjvynjceikBJ7G3AZ1/6oeqnCGPyDV2OdjP6K18IDw4VWM/7UUd8LQMZM
	 OqyzrifSiA3D6A64N/zig59JR7hKjsAL7X2n/vaSqKHXoLgRIN/wpR3b3DJCGH0qWu
	 ATFo19PeC0YrNSZPj5ZXfxLCYkSrkj2e3G+NkWhg61PjQGS4ZiKmXcYinZK99Q7hlO
	 IMH6HbyUbnJdSEFQdS7WOcfbXB4vgB1bsdJxst1ZIZxI9VIYry2lLKWvffwprdc+er
	 4Jm25aMPG1Ne+72Ur1mFDJ1KVou/Nyt4FXtuSXOEqAnKdeED6QYptsUj2Mj/16IPqt
	 FfYhIdM3QQTQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pKZJ9iJ5BAza; Wed, 22 Jun 2022 06:37:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C25640C5E;
	Wed, 22 Jun 2022 06:37:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C25640C5E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD4AF1BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 06:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0F6460ABA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 06:37:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0F6460ABA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p4hlVP1kwVPA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jun 2022 06:37:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9053561236
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9053561236
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 06:37:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="279098073"
X-IronPort-AV: E=Sophos;i="5.92,211,1650956400"; d="scan'208";a="279098073"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 23:37:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,211,1650956400"; d="scan'208";a="587315107"
Received: from lkp-server02.sh.intel.com (HELO a67cc04a5eeb) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 21 Jun 2022 23:37:35 -0700
Received: from kbuild by a67cc04a5eeb with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o3tzb-0000wL-0E;
 Wed, 22 Jun 2022 06:37:35 +0000
Date: Wed, 22 Jun 2022 14:36:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62b2b88b.4QrSMl33lCjU6oUW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655879857; x=1687415857;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=j8brFuWChJ6cL1uhFFxcicK03F9xDq9uYuAHQqp++zo=;
 b=KjjI2IO3YU1FS4HUfczB4wpdsva6oSOol5XkoCAO2EInfCCYDIY2kW1E
 V7YlJzmjj7wAb3duVN00iL6WJAzMz0JWSP/vS/Vm0EeYdGJPim97/8kXR
 1CZvBwzA8FXmjoAcHR2YpalcdBB6luBz3Qemzeemd56QdtsU2//dnNRXb
 vmMtYD7lCXkn2hLJ1/0vqMWAHVSJjNyoWeOtOhUulWfD882OuM3Re2lib
 wNVYM3NVzdHHCWwQwhVrZmAwm6nKzuYIWNIVbp74MNriG1SD7xfHt5blp
 IvZZlmSo74eDfKpbtH4Ylyw7sUCxlb33o4RQDV0DE5NIFUHC4o8qGr8O3
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KjjI2IO3
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3f1412c503c2719cf445161c5ebd69ef507a0e17
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
branch HEAD: 3f1412c503c2719cf445161c5ebd69ef507a0e17  ice: ethtool: advertise 1000M speeds properly

elapsed time: 724m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
ia64                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220622
riscv                             allnoconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220622
s390                 randconfig-r044-20220622
hexagon              randconfig-r045-20220622
riscv                randconfig-r042-20220622

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
