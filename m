Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9294BAFDDC7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jul 2025 05:03:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AAEB8115C;
	Wed,  9 Jul 2025 03:03:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b1TfKYpFE9EU; Wed,  9 Jul 2025 03:03:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED7218116B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752030217;
	bh=cfm0zb/m+RhyGTppeh4DfJ1QuFlcmx6SqXuSao/tX+U=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=orj4g9Nd/EFfYg2QVd4DA3ue4nrWvPSKeikJt6hIOPL/e8cSfAM5oEwki+mjUWAbu
	 yqnhpRAopRNT9i5Jk88I8wmpH4Ccbvv448nbDbUqdmplqi9SLwb9YkINfSgV2i0aFo
	 Doq1EruhENk5GeGJ3z7TKidGQITqId7h5mrHnfp7NYm2HXonPywq5nMh/J4VugbGKa
	 399grSrj+hUmyy9Y/tmjPsonI00p5kc5QbIkcgX5WpAiW21QAiKqPoZWQSiTNSxeMt
	 rKVLRaPMAUiaZpfcqUxSezVsPlCq7ikRFuiS+djDm9tVpZsTsA63Vk363BFrEI2WkK
	 ZvCx6beOKjHAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED7218116B;
	Wed,  9 Jul 2025 03:03:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 13A7B15F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 03:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE1BE607AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 03:03:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yxfjJsQOv6RZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jul 2025 03:03:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1F19B60794
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F19B60794
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F19B60794
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 03:03:33 +0000 (UTC)
X-CSE-ConnectionGUID: kLz2qZfkQQuzzUMWQtXRSg==
X-CSE-MsgGUID: o/XwdGZIQGapPEo9/NGHzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="56887614"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="56887614"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 20:03:33 -0700
X-CSE-ConnectionGUID: AF4LIbfdR2OXu4UASMSicA==
X-CSE-MsgGUID: 3fGwvMpQTW+jbBZUovUC5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="156384912"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 08 Jul 2025 20:03:30 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uZL5j-000319-2w;
 Wed, 09 Jul 2025 03:03:27 +0000
Date: Wed, 9 Jul 2025 11:03:16 +0800
From: kernel test robot <lkp@intel.com>
To: Jacek Kowalski <jacek@jacekk.info>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Message-ID: <202507091034.uiPhnpcc-lkp@intel.com>
References: <e199da76-00d0-43d3-8f61-f433bc0352ad@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e199da76-00d0-43d3-8f61-f433bc0352ad@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752030214; x=1783566214;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aIRy4P+mVHLYqEJlA1GuRMWQ8jpHGslA2lnonIu+p34=;
 b=bOJNn0N2PhU5/U80crGorG4l/0GVbV1YVbYCXz4D9NHhR4wUQbpRpav1
 En+4FKv1Uil5azyffCZJjz3fzc2JxyTqUCvKpLm2eoJL514iI5XsdEcpd
 1K/yeyCzGeKhEpGfNmFuOBIpKo54SW+Jb5/mwVNAxYFfMyMqjPuXv47QO
 QbLPDJSucY7LEZFZGY6QtQMuvWdc+6rhqgmsqh5A/kb1GyYrOOoZO9emN
 q4pBR2KDqq+5tybuDftFPKk0vlfYpbNd9vH3GN/RFB//FIOgy/PiW/Bt2
 POq/6EQnfJyNQAwhxGNzicWZ+CPsiWi38CklpHHGhC4IkALI9gU3115Uo
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bOJNn0N2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/5] e1000: drop
 unnecessary constant casts to u16
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

Hi Jacek,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Jacek-Kowalski/e1000-drop-unnecessary-constant-casts-to-u16/20250708-161919
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/e199da76-00d0-43d3-8f61-f433bc0352ad%40jacekk.info
patch subject: [PATCH iwl-next v2 1/5] e1000: drop unnecessary constant casts to u16
config: riscv-randconfig-002-20250709 (https://download.01.org/0day-ci/archive/20250709/202507091034.uiPhnpcc-lkp@intel.com/config)
compiler: clang version 21.0.0git (https://github.com/llvm/llvm-project 01c97b4953e87ae455bd4c41e3de3f0f0f29c61c)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250709/202507091034.uiPhnpcc-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507091034.uiPhnpcc-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/e1000/e1000_main.c:316:16: warning: result of comparison of constant -1 with expression of type 'u16' (aka 'unsigned short') is always true [-Wtautological-constant-out-of-range-compare]
     316 |                 if ((old_vid != E1000_MNG_VLAN_NONE) &&
         |                      ~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +316 drivers/net/ethernet/intel/e1000/e1000_main.c

   297	
   298	static void e1000_update_mng_vlan(struct e1000_adapter *adapter)
   299	{
   300		struct e1000_hw *hw = &adapter->hw;
   301		struct net_device *netdev = adapter->netdev;
   302		u16 vid = hw->mng_cookie.vlan_id;
   303		u16 old_vid = adapter->mng_vlan_id;
   304	
   305		if (!e1000_vlan_used(adapter))
   306			return;
   307	
   308		if (!test_bit(vid, adapter->active_vlans)) {
   309			if (hw->mng_cookie.status &
   310			    E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT) {
   311				e1000_vlan_rx_add_vid(netdev, htons(ETH_P_8021Q), vid);
   312				adapter->mng_vlan_id = vid;
   313			} else {
   314				adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
   315			}
 > 316			if ((old_vid != E1000_MNG_VLAN_NONE) &&
   317			    (vid != old_vid) &&
   318			    !test_bit(old_vid, adapter->active_vlans))
   319				e1000_vlan_rx_kill_vid(netdev, htons(ETH_P_8021Q),
   320						       old_vid);
   321		} else {
   322			adapter->mng_vlan_id = vid;
   323		}
   324	}
   325	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
