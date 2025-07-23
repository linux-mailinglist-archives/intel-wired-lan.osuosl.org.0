Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4CDB0E7AE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 02:46:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DAC060ACA;
	Wed, 23 Jul 2025 00:46:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eil_ZfO8uzVi; Wed, 23 Jul 2025 00:46:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C76960AE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753231570;
	bh=EzVYKRPUoLMbZhMXhnqZLUvf4Ph0hmmnJRRw1r0LqQQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7pOtGKKnD8k/7Fhp5VNqZuEEOWFjThHXMnI6HN4mb8TI4P9Y3K3ms/BGIQ9nqUpuG
	 sxk4SjrMrXBZHhD4AR6TIzyKNXSoJz1PuaPpIMYJ7P2Uno5x0KLw+Aogwc4GOf5/bW
	 djxo9CxdodChmT10g0Fv0BKBfouneMgeP63QcYD7HRCX4OvkDgOFB94rDfm3si9VWc
	 ZKnqi1RiVKCWBUPGdHo+Aao5oJ26a+isV349iH+juhCXEtfl8WGbPubEX4hM7BgurW
	 7E5TUtseyEW5Ury/+8yh3goO/7rhemWb4giPLnL0Kx5Yj5kRws6IiymF33JzB96rZk
	 +2Ec6p1QIWM4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C76960AE2;
	Wed, 23 Jul 2025 00:46:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CE2D7DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:46:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B48FB4022D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:46:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pTBqSmkEBd3U for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 00:46:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7CEF140365
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CEF140365
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7CEF140365
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:46:06 +0000 (UTC)
X-CSE-ConnectionGUID: 8XJTK8z4TreqnyRqisfqIQ==
X-CSE-MsgGUID: AFnc8fdwQpq7FugNPoeHkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="73070999"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="73070999"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 17:46:06 -0700
X-CSE-ConnectionGUID: gP2NMNzdQ0qN6ZacAGwNYw==
X-CSE-MsgGUID: S+cN/JPRQpSdoF+7BjI3UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="163521129"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 22 Jul 2025 17:46:04 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ueNcP-000IpX-1p;
 Wed, 23 Jul 2025 00:46:01 +0000
Date: Wed, 23 Jul 2025 08:45:06 +0800
From: kernel test robot <lkp@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <202507230823.PGjL5fXz-lkp@intel.com>
References: <20250722104600.10141-16-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250722104600.10141-16-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753231567; x=1784767567;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7XyjFlMsulsdWRKzxiiAS8MziCD9vuAz5vMiVUvsDrE=;
 b=ZK3X9fZj810VLSHh/KDBBJGWCeLKydxBefD2ggNEYGaQ/isQH7ybbz6l
 gZK3xEqaCMU4q5eN4k1jmse5ve4tTRPcIZz6s2elYPSu0IwkdSb+hA0FK
 i6zJ4dBQk0bCX015N5KibKneU6SfeeGNmU1IU/DgaPEoQYhEyxG958l4t
 6ODptpzojyUj86m1XTNU3D+Y24RCysSGAW0Igusnwbbbk7cEG89j3tdMu
 moHbS1qMRH3W8Sp3Pv1ih+yqBOAYBASYhBFMVK0aFdb6o2BF9V27KDq/7
 cpvgWLHCAetez/xc4Q71falp26iVmmkJzs4Q+6iqtQC4puGpBlfD7X5jb
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZK3X9fZj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 15/15] ixgbe: fwlog
 support for e610
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

Hi Michal,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Michal-Swiatkowski/ice-make-fwlog-functions-static/20250722-191011
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20250722104600.10141-16-michal.swiatkowski%40linux.intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v1 15/15] ixgbe: fwlog support for e610
config: powerpc-randconfig-002-20250722 (https://download.01.org/0day-ci/archive/20250723/202507230823.PGjL5fXz-lkp@intel.com/config)
compiler: clang version 22.0.0git (https://github.com/llvm/llvm-project 853c343b45b3e83cc5eeef5a52fc8cc9d8a09252)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250723/202507230823.PGjL5fXz-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507230823.PGjL5fXz-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "libie_aq_str" [drivers/net/ethernet/intel/i40e/i40e.ko] undefined!
>> ERROR: modpost: "libie_aq_str" [drivers/net/ethernet/intel/iavf/iavf.ko] undefined!
>> ERROR: modpost: "libie_aq_str" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
>> ERROR: modpost: "libie_get_fwlog_data" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
>> ERROR: modpost: "libie_fwlog_init" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
>> ERROR: modpost: "libie_fwlog_deinit" [drivers/net/ethernet/intel/ice/ice.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
