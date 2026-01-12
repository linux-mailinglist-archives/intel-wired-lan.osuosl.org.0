Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B430D14E41
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 20:20:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D510B60FFE;
	Mon, 12 Jan 2026 19:19:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mucA_VLC2zzc; Mon, 12 Jan 2026 19:19:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1446261001
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768245598;
	bh=midBKx0eViyxE2C7N7t9o/dP3KGvtjHDdocbIALJsdU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Deztk7mpfsVFOMahRxnx/0iJnA+lpf6Ju+mjEJbBSnJ4N0bQGJ396T95eVBN9E4VU
	 2IPC7lVtucc7UIGS/TUoxgaNubbBLHdjfAp24KhZm+F4oRCJRpb0JOnEDQP5ETBn9L
	 jUhWUfQ4mpr1ZJDobFyqUCKo2FEj+JZeOcTPqiI2spXTNkiY6o4ZHN3Hy4nGjlZ1Zk
	 48avevCC217eusWxUxHR65eOlRgM5BvJcxeYbgHNwq0xgOs1STJ0b3S5i9QZPMLQg+
	 v4aRQr4Gx4+KxtHfDQa5pWJyFZfNDtY3ST0OULpMktE1QKsAF+DTEBDdk9dHxkZ68e
	 ZTwyQt0XUkQ7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1446261001;
	Mon, 12 Jan 2026 19:19:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 853FD1CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 19:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6FC5280DEC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 19:19:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ucvlizCrmDRJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 19:19:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 89C0880D72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89C0880D72
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 89C0880D72
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 19:19:55 +0000 (UTC)
X-CSE-ConnectionGUID: vzyj71uIQYCoPClhv/R1NA==
X-CSE-MsgGUID: 3h4unWJoSlevJu0FtO+ZZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="69450956"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="69450956"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 11:19:54 -0800
X-CSE-ConnectionGUID: MXpzZ1xnR9iTu7OhIX4rXg==
X-CSE-MsgGUID: +gG6zgHgS7iFR/wRaFE7Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="203987512"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 12 Jan 2026 11:19:49 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vfNS6-00000000Dme-1S2R;
 Mon, 12 Jan 2026 19:19:46 +0000
Date: Tue, 13 Jan 2026 03:19:09 +0800
From: kernel test robot <lkp@intel.com>
To: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Rob Herring <robh@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>
Message-ID: <202601130301.7QjXjwFp-lkp@intel.com>
References: <20260108182318.20935-7-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260108182318.20935-7-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768245595; x=1799781595;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8XdDuYY8o16AHBqptf2+Lenxj/jSJqYCRVV3ayhVeHI=;
 b=XS+YUEDZNxhxbsC4JtXJI7ooqwUfvcznQA4qW8/Ro9Yx6M11Xg7Ma8cA
 WfND+gInN9G+oOs4D4Sm3Y+wHcW0/wCKMio2h1mplhF5jdmVSBAdGU0Uw
 BQ7LipdcRMiqUjLAYmCRF51wn4BrpkRcCRP+hRlst3JahV+TpyJnMJU3J
 5olN/Q0W2xH3TTNVDoEhtNnONeAD+CJNvAOLN3Dk9jRoCzjIy6XrOhRuC
 P7hkGu1JPSYDxTF8yhySiKhZTi19jCZhOonQeI4ZVEI0fmpZjHs5VNgb/
 w7Kh//8+pA2ulJprBoiYBovPPEId7m7131PyCyVShP0gr/gRNoPRFiuv6
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XS+YUEDZ
Subject: Re: [Intel-wired-lan] [PATCH net-next 06/12] dpll: Support dynamic
 pin index allocation
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

Hi Ivan,

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ivan-Vecera/dt-bindings-dpll-add-common-dpll-pin-consumer-schema/20260109-022618
base:   net-next/main
patch link:    https://lore.kernel.org/r/20260108182318.20935-7-ivecera%40redhat.com
patch subject: [Intel-wired-lan] [PATCH net-next 06/12] dpll: Support dynamic pin index allocation
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20260113/202601130301.7QjXjwFp-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260113/202601130301.7QjXjwFp-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601130301.7QjXjwFp-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/dpll/dpll_core.c:499:21: warning: overflow in expression; result is -2147483648 with type 'int' [-Winteger-overflow]
     499 |         pin_idx -= INT_MAX + 1;
         |                            ^
   1 warning generated.


vim +/int +499 drivers/dpll/dpll_core.c

   490	
   491	static void dpll_pin_idx_free(u32 pin_idx)
   492	{
   493		if (pin_idx <= INT_MAX)
   494			return; /* Not a dynamic pin index */
   495	
   496		/* Map the index value from dynamic pin index range to IDA range and
   497		 * free it.
   498		 */
 > 499		pin_idx -= INT_MAX + 1;
   500		ida_free(&dpll_pin_idx_ida, pin_idx);
   501	}
   502	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
