Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 602AC6A1E21
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 16:10:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A55F410CB;
	Fri, 24 Feb 2023 15:10:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A55F410CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677251406;
	bh=bgEa1GIDzltIQlW2zRzRd977exMSu13YuNwtw6cgCEI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qpwlhdvlF7J+Jk+KU1ldcC1ge2oyOK9tx72NBMn71ZG5/W/PzQBMbcIAvHIXVA/hk
	 LOFDnn/IZeLV1mgtQHftEGQvhy87bkpcSHXcmGEf793SfwGdlCG6jnlo4Rvlnjl/Vy
	 fQQU/yaqIkoNe5d1Q6u06g+jqxGLc4C2e0rkagvbtBxpxuJdftLIotxiINeMMWn7+M
	 TwZZ7MVu7X9kwckF5l91feqLwMtUm2sLzmBE9X2I3qKclQKFHdkr9pCgKM/rJZBKdH
	 i+v7RxkjgfkE8hIfx5sTTfP+3KAIwZtv+BSdGINHWgqHZ0sKjzItR8zfXwdm1/b7lx
	 APTiKi/LmBCCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YDC8whHdMzXY; Fri, 24 Feb 2023 15:10:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44806409AC;
	Fri, 24 Feb 2023 15:10:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44806409AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68E9A1BF282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 15:10:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E8CB82155
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 15:10:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E8CB82155
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wyua1vvyBTfU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 15:09:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8323682154
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8323682154
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 15:09:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="419726380"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="419726380"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 07:09:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="782386925"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="782386925"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 24 Feb 2023 07:09:54 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pVZhp-0002UH-22;
 Fri, 24 Feb 2023 15:09:53 +0000
Date: Fri, 24 Feb 2023 23:09:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63f8d341.ALH3zKHaZo3LMzzk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677251399; x=1708787399;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fEgy+BjTW/y88v6y8KzKPtBmV7zQ4dLtltPzVQrFanU=;
 b=CDs98fJSlsGfHJZne+uGdt9LL8yGKxXEAhOYtmlkXXEjOWBxsC1ue9X3
 UKr3Ph7uguGY855tZs/FVCMtQw9VI+HevGoeoCnbZ6aHeqQRhPJr3e+9V
 oRWZ3ddlAeJzpg2PQNYYL4gA+MtaomHdbegm70RsLWaxlWTz6tyOY0j4P
 RhiTFUU7mtK9MSZr8agQcElBeyfrsXhRRCvhoiVL21O1/4jednnuOkCt6
 BQvEarU7DokWEXzZvi8qrigF39APTZ7Ty1bJ4haBQY4tWk12l5lLD4T19
 th945znDXRmx4GJbhLJSlG4AegcffYE9wWxataVUmhEk/CyKTkFYcVztA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CDs98fJS
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 4481cc4cca9e0f785ed201f3ef0abcfe0e3ca3f9
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
branch HEAD: 4481cc4cca9e0f785ed201f3ef0abcfe0e3ca3f9  ice: remove unnecessary CONFIG_ICE_GNSS

elapsed time: 818m

configs tested: 19
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
clang                                   alpha   defconfig
gcc                                       arc   defconfig
gcc                                       arm   defconfig
gcc                                     arm64   defconfig
gcc                                      csky   defconfig
gcc                                      i386   defconfig
gcc                                      ia64   defconfig
gcc                                 loongarch   defconfig
gcc                                      m68k   defconfig
gcc                                     nios2   defconfig
gcc                                    parisc   defconfig
gcc                                  parisc64   defconfig
gcc                                     riscv   defconfig
gcc                                     riscv   rv32_defconfig
gcc                                      s390   defconfig
gcc                                     sparc   defconfig
gcc                                        um   i386_defconfig
gcc                                        um   x86_64_defconfig
gcc                                    x86_64   defconfig
gcc                                                  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
