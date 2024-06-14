Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DAF90808C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 03:14:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DA1580BF9;
	Fri, 14 Jun 2024 01:14:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xlnguu0vYXf9; Fri, 14 Jun 2024 01:14:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A485580BF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718327674;
	bh=lyjCXAhxN2qqCP/rVNg1GTSufUxNC1f/Q+p0HtrAowY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ciCUAss5Ye09O+oOnZCwv1j7s9sjJ5JHBqHIH4sxjs6hvEoI3ngrJiqUkY8IQoGk9
	 4OiDK+UelYzUYce1GdkHKNj9LWG8gwQ6EAgmizNLAXo8yIU5KV0OPpakQkU0cxiQEb
	 q3f8H/etlsSeERLFuVpwOnfDXFvap1IUiQmxa853K5Yfm5CQdi6TLaE83zDxYYRvC/
	 RUKHQ3P3Mq9PVaeZQ2MM13q2RoV0JqwGZFvViPwcdXwQr7A9i4wTZkncsyMNFIDrc8
	 /eBSORRyY485sA+HCnx/ovIXTjGrqzyc3If8vSQLFajdYNcrJjMEuF9hOFoRItUwov
	 rl4X7zCaQQMew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A485580BF0;
	Fri, 14 Jun 2024 01:14:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7774F1BF33C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 01:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CBE480BEC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 01:14:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fek-PPjgG-aG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 01:14:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5CC0D80BEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CC0D80BEA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5CC0D80BEA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 01:14:31 +0000 (UTC)
X-CSE-ConnectionGUID: uyaCsgWaT4e4CslsauF5kg==
X-CSE-MsgGUID: e+Y40I6SQHSmyYGMd51K4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="26595994"
X-IronPort-AV: E=Sophos;i="6.08,236,1712646000"; d="scan'208";a="26595994"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 18:14:26 -0700
X-CSE-ConnectionGUID: HxoAdzYcSXuX8YNxWxI+wA==
X-CSE-MsgGUID: XeAu3nBPTsyqqkxc87s0Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,236,1712646000"; d="scan'208";a="45258237"
Received: from lkp-server01.sh.intel.com (HELO 9e3ee4e9e062) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 13 Jun 2024 18:14:24 -0700
Received: from kbuild by 9e3ee4e9e062 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sHvWH-0000cp-1O;
 Fri, 14 Jun 2024 01:14:21 +0000
Date: Fri, 14 Jun 2024 09:13:59 +0800
From: kernel test robot <lkp@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <202406140913.c9jJ4gWg-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718327671; x=1749863671;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=8KfC9VFndm2twvD1DZSOT4YgBFoMsM0rh3VvPrRYA60=;
 b=BEy4pXr0Q4pIOVdgI6R/J9s7Q8c9GGPSiwYQhFtPlt4qNKf29SA11+hP
 Qo+269XBe82tv76BbNNUzC8syUq3UDsQTbqiY0MHUKehSF9v9LHsY0VIF
 H4Erkj9tigF3HkPMNBgpmzcrtBPZOBqdMLOJVVCwtc3RGgr9qNpfl0vkq
 46X0TvsApGHcQJ+yn6L0WcIdT4THu8BD9yoePb/J2PXDAOsyCspi0hNL9
 NQ21lziQYT51YOTO7RJOKd16KoU/NB0ozYSraZuWYp/qEXT4yuVOdspRT
 wk9qf/BdrDNxYaMpPZqQ/dwUHt4r1Qz3QKeQJwtSl0l5Wa8YhfbCrGtRM
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BEy4pXr0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 52/84] ld.lld: error:
 undefined symbol: ptp_clock_register
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, llvm@lists.linux.dev,
 Sai Krishna <saikrishnag@marvell.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   5f94b437aa6a1f7a19022db2b3524417ca06d232
commit: 709eab0aad17cbe55b6ffe6a9bab375640d9216a [52/84] iavf: add initial framework for registering PTP clock
config: i386-randconfig-016-20240614 (https://download.01.org/0day-ci/archive/20240614/202406140913.c9jJ4gWg-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240614/202406140913.c9jJ4gWg-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406140913.c9jJ4gWg-lkp@intel.com/

All errors (new ones prefixed by >>):

>> ld.lld: error: undefined symbol: ptp_clock_register
   >>> referenced by iavf_ptp.c:43 (drivers/net/ethernet/intel/iavf/iavf_ptp.c:43)
   >>>               drivers/net/ethernet/intel/iavf/iavf_ptp.o:(iavf_ptp_init) in archive vmlinux.a
--
>> ld.lld: error: undefined symbol: ptp_clock_unregister
   >>> referenced by iavf_ptp.c:97 (drivers/net/ethernet/intel/iavf/iavf_ptp.c:97)
   >>>               drivers/net/ethernet/intel/iavf/iavf_ptp.o:(iavf_ptp_release) in archive vmlinux.a
   >>> referenced by iavf_ptp.c:97 (drivers/net/ethernet/intel/iavf/iavf_ptp.c:97)
   >>>               drivers/net/ethernet/intel/iavf/iavf_ptp.o:(iavf_ptp_process_caps) in archive vmlinux.a

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
