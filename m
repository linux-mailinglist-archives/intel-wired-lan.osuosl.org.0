Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D69E58F739
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 07:16:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 289D7410A1;
	Thu, 11 Aug 2022 05:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 289D7410A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660194968;
	bh=ZnmfweJ0sQC9tRAiIpCXl/SEuws65Ja8tqtYvM+lDoo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MCIxP0IxLxUhzafNnKGWKkFbAYt7EztDHRoiZPtnoItig8lxZeGJQzVIRzTFohPBZ
	 hkCjBwfeSt2K8tA1UKqHmQ9gIEbaGrZQM8FTGpg1xz4fCXxGEtiKoBuIiWihABQMxu
	 PKtgI7ntxMELARwnidFPYozBCgWJ47TPq29TbV70Y+NC0w8bQ6bDElqnORJq7vbodG
	 M+7SUXzBbmCZj76SDbmwd20Uitxf6r4+2n4VySekcNDa8LjvdG79dLQRARepHsYsza
	 Ge8vC6BOa4U10Rr8PLcd9v4H81YzxvOts157t3xTH+fWoFCtrBVZ4ar4v0sET+kSF0
	 wtqAmcSQNiVVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ac-ufDyNdfQO; Thu, 11 Aug 2022 05:16:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B33BC408F0;
	Thu, 11 Aug 2022 05:16:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B33BC408F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB21B1BF94B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 05:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F0E682CFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 05:16:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F0E682CFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oK2cHa7XmPS8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 05:16:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AAB7827C6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8AAB7827C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 05:16:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="291260795"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="291260795"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 22:15:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="581519261"
Received: from lkp-server02.sh.intel.com (HELO fd81f3f03c75) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 10 Aug 2022 22:15:58 -0700
Received: from kbuild by fd81f3f03c75 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oM0Y2-00001Y-06;
 Thu, 11 Aug 2022 05:15:58 +0000
Date: Thu, 11 Aug 2022 13:15:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62f49058.PXjTz/gpf54jgPN9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660194960; x=1691730960;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=2DeSY0pIrvzjbfAP4/T1C9220mm67O2b540QHrenL5c=;
 b=bP48Ugj+qUZLwf83kJjI153PsVli+j9tzoXV9ZPQwzdM1iurBhZDCRo2
 oacMEp9xDPiJC6lxXiG7P+kbTwSx8XLk1gj6jT1RDTMyIRfyKwbfMq7F7
 lLXjqHMJ0JbVGBAh63T6lLjKDZu3k5inUpc/RLiTPXDeYcsXjyUrv1vXg
 Yreoj/ZjFUeQ2vxQ8+7VyUkIqSC7WWzPIzEHmvbEyUnUGGBxeCjVlBobs
 aOcoptj0oDkgtKYwumb0gH38sFirdts7y8aY5FRzQmPmUZ5Xi48HAZLyR
 GPeI36kuKvmnld1efrTaC7u5JsaGjzdl7uAnUOMXIjEFIQMFlWQywvM4c
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bP48Ugj+
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 478761054ced7cf2a2c6b9f46b1307d294cc549e
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
branch HEAD: 478761054ced7cf2a2c6b9f46b1307d294cc549e  ice: Don't double unplug aux on peer initiated reset

elapsed time: 717m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a014
um                           x86_64_defconfig
um                             i386_defconfig
i386                          randconfig-a012
i386                          randconfig-a016
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
arc                  randconfig-r043-20220810
s390                 randconfig-r044-20220810
riscv                randconfig-r042-20220810
x86_64                           allyesconfig
x86_64                        randconfig-a002
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a004
i386                          randconfig-a001
x86_64                        randconfig-a006
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
powerpc                           allnoconfig
mips                             allyesconfig
x86_64                        randconfig-a015
powerpc                          allmodconfig
sh                               allmodconfig
arm                                 defconfig
ia64                             allmodconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220810
hexagon              randconfig-r041-20220810
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a012
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
