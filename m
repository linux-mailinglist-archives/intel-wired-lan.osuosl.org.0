Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C450CB2D419
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 08:33:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 837CF40D77;
	Wed, 20 Aug 2025 06:33:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GwBDZEl6rz-R; Wed, 20 Aug 2025 06:33:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAD0840D5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755671615;
	bh=G2nNJRJsbV6UyEAPygrjwY+LCDdIb5yV0jg1yCoZC4Y=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=stVxxHkYVwObiqyd4pCQGD81QIfpPyTmNQwsL5AO4ONW7g7j8Ud+xsUno7bDzEy1q
	 NKnBStmDfDVFcgTxo39xk1DXytUvF+UWSgwZK7CWi3JgfiNDAewG4sJIOBfC14GDe5
	 318hlLssFmwIhajcrLRh8ntXkAOHIkH8PF/XfE/oTKX2BiTSmCAiC8A4E9wuD5lnIM
	 M72MWM1Z9gCfMrMaPaXo1ror7RkxcWsR1K8IrYIw+ajZq1K3uupqvwR8uHUPM0c1zi
	 puCu83Sikb5vG7iv59L95KGbTA2wojBVRyxecxi4SEhrpybDYz2xIz81pOqcLSE20W
	 naasGtrq7Q0cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAD0840D5E;
	Wed, 20 Aug 2025 06:33:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 131FD7AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 06:33:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1054B81489
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 06:33:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x9R8ZGAA73XT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 06:33:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E400082716
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E400082716
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E400082716
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 06:33:32 +0000 (UTC)
X-CSE-ConnectionGUID: VP7BW2KURHG+qjr1lkyOtw==
X-CSE-MsgGUID: PCXxbXNTQ6qjAuJSz+E0KA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="83354499"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="83354499"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 23:33:32 -0700
X-CSE-ConnectionGUID: 2tfBd9kqSqeT2yEJVt8q0A==
X-CSE-MsgGUID: sXOGxt+oRsy0onNmpuv57w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="167549499"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa007.fm.intel.com with ESMTP; 19 Aug 2025 23:33:31 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uocO0-000IHx-1h;
 Wed, 20 Aug 2025 06:33:28 +0000
Date: Wed, 20 Aug 2025 14:33:01 +0800
From: kernel test robot <lkp@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <202508201414.zlbWHBW2-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755671612; x=1787207612;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=uA0UjmNx0kbYw5NYMjUU+v29EC3x6PKGFE63TybS2+Q=;
 b=RHYrSP577A4WBMt0T78visD8oedELme32WATQGcWecn89Aa0+Rp7XnSM
 PRYoWoo+Ai1iPP414Opel9uuxKoh/S6DUbvUEfev3FdMhlPhVuUxrmncz
 pPqgcNmjZQwiQ26h2c+d5LEG2wi8k4L0FdRWRTGzXQWHQjRPSTDQgQhZV
 1iSWudm7lxU+IKsQc+ZsGHGec12nn6vM83bhvVshSc+esNfJEtT1LOS5G
 SEU8BySMaQAO033wD9o0Grb+3u+MZ0EifRLLcjnKZtZHHtnItpum1b6gH
 VD9W+KZOYwXqPrzgkNDHKgc+XlZ98JT/LamFPfxigYp+umdpA4jeMo06O
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RHYrSP57
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 87/89] ERROR:
 modpost: "libie_fwlog_init" [drivers/net/ethernet/intel/ixgbe/ixgbe.ko]
 undefined!
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   e4c70369624f069154c2d91173f9862318b807f8
commit: 19d6fe03db7e99f56f4898bec0208a1a036096ca [87/89] ixgbe: fwlog support for e610
config: um-randconfig-r051-20250820 (https://download.01.org/0day-ci/archive/20250820/202508201414.zlbWHBW2-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14+deb12u1) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250820/202508201414.zlbWHBW2-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202508201414.zlbWHBW2-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "libie_fwlog_init" [drivers/net/ethernet/intel/ixgbe/ixgbe.ko] undefined!
>> ERROR: modpost: "libie_get_fwlog_data" [drivers/net/ethernet/intel/ixgbe/ixgbe.ko] undefined!
>> ERROR: modpost: "libie_fwlog_deinit" [drivers/net/ethernet/intel/ixgbe/ixgbe.ko] undefined!
ERROR: modpost: "libie_aq_str" [drivers/net/ethernet/intel/i40e/i40e.ko] undefined!
ERROR: modpost: "libie_aq_str" [drivers/net/ethernet/intel/iavf/iavf.ko] undefined!
ERROR: modpost: "libie_aq_str" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "libie_fwlog_init" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "libie_get_fwlog_data" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "libie_fwlog_deinit" [drivers/net/ethernet/intel/ice/ice.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
