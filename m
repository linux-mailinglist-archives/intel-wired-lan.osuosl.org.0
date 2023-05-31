Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17910717824
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 09:27:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A634C40A01;
	Wed, 31 May 2023 07:27:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A634C40A01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685518035;
	bh=vg1OPkvxynO3V4f3RfJhEac0zndEdBpTlccocBHmH6I=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7bdqyQxxrARvaxCcvzuPoqdQWcRt6pcYtXRvYfiXcHG1fW+FrIcWMtbGsMrUd60QD
	 4z2tnRzduJ51cwpF6/jgEXp9vmnLbELgMW3qOEFdSJ50XhSec3TFeoriYzxELtOZtg
	 a8fklHQQ0FYTN4f7ymSxcqwnjLvkRVuqKBT5eowj+8RNGn+jZ5WCnZ6Jxfh3oAORXi
	 J1pTsExbJWbFau8fYHMob6zhhBiUNZu1HPTtGa3Hrtq48Hx6GkVIvx6+lVWXlih1EJ
	 1bK6DxBjGPBcytk/Ahau7RwiZ8exinBI57ZUD81U1vmC9QaYNyQdWTGaxqQ5Ys2llY
	 RCvKe2jRT0AVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XLVJrCuabFr7; Wed, 31 May 2023 07:27:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88E3940482;
	Wed, 31 May 2023 07:27:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88E3940482
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7632B1BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 07:27:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E15F61108
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 07:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E15F61108
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DzCfl0dbp5hE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 07:27:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BFF36112F
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BFF36112F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 07:27:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="334782211"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="334782211"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 00:27:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="1036932462"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="1036932462"
Received: from lkp-server01.sh.intel.com (HELO fb1ced2c09fb) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 31 May 2023 00:27:03 -0700
Received: from kbuild by fb1ced2c09fb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q4GEZ-000195-0s
 for intel-wired-lan@lists.osuosl.org; Wed, 31 May 2023 07:27:03 +0000
Date: Wed, 31 May 2023 15:26:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230531072616.Eaa0r%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685518026; x=1717054026;
 h=date:from:to:subject:message-id;
 bh=cpOKo8I9tHvGX0bPoONWl5651inwDQuNUFll3pG/jZY=;
 b=btfa84dGJiEgI6tJGUfNXULzsKQ6nH7Z8ipXgc9/FcNXl1Txcs+wBeHl
 z5Ru6jIdz5XiBldfaSL0u1yzwEGysSxNH8zdqX76Dprkvybkfk9PH/kWb
 d6uO4HluGZCFM8n0UAA18sFbqtcNIBx4xxsy60fO1vPpWLk+A71VZUKRg
 nGLgCo1i0mWumJuZ5fcGuP5o2WMYp2PoAZU/+3PrUgAv4yERdfXD0EeCH
 u7CfEmMMbao9dhNKykAnZoete/hikdVTQIr/RUPIp+EHIJqrfEshfR8cX
 Ya56cZn+2HKXCUmovXP0iiuhvjgBxKm0GeOBYQwb91IYb/b8yksX/tgN+
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=btfa84dG
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 19659742c97f5f04e9508e8b4721fc332bd77c90
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 19659742c97f5f04e9508e8b4721fc332bd77c90  igc: Add workaround for missing timestamps

elapsed time: 725m

configs tested: 40
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
