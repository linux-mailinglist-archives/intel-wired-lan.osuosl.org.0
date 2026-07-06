Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IEkVJqbJS2oRaQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 17:28:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FE7712976
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 17:28:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=O6DuC+5v;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DCDA60901;
	Mon,  6 Jul 2026 15:28:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zrCCTM9SRcep; Mon,  6 Jul 2026 15:28:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43EDA60903
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783351715;
	bh=uFl/PFQUMEmFax6Jn9kVRcpgfbNJOYAZpQgC+AMH3Q0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O6DuC+5vbuINoUO4jUcnncv1zGK9BvXRete66Kyb/kdtEnQYPEC6u5CUNtJ94dIwO
	 9TRg9EczG6mTaqRiOq3qoJkNEpDutvMwlk3WmDFccf4IIO/9G0w3uzOFKDCdxw8l6E
	 hOVEk6LRd0SUIbImcnrWGt4ZyHn3qWA903gaQMlwUZCnDZss1jt6C24QRICCf3+nN6
	 Eqdl+SG27oLH4WCuZi5+pq9zOXHzGsWHvC7nMPwXSmoPPcGH3S7f+WTf+XbPcfGDUC
	 zwANmZJycEZKYld0GpjcmMJ0wVO2rb4eJ/3PtTgoZ7eniu4SqDMsxg4DGPcyF2ph6p
	 dNxF2yA9j3fxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43EDA60903;
	Mon,  6 Jul 2026 15:28:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C98CA316
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 15:28:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BBB0140A7C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 15:28:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T_5cMa0QCG3t for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jul 2026 15:28:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9EFD340A66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EFD340A66
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EFD340A66
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 15:28:32 +0000 (UTC)
X-CSE-ConnectionGUID: dJJs60JiQJSx0r8HTz2SCg==
X-CSE-MsgGUID: PbaF8xB8QIm03cf/C0gk2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="83760413"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="83760413"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 08:28:32 -0700
X-CSE-ConnectionGUID: qeSsvuFKQWW/DlBsmwRgrw==
X-CSE-MsgGUID: Q8NX88hiSP+EOWE0QzcwWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="283833104"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 06 Jul 2026 08:28:30 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wglEt-00000000EUV-1S9t;
 Mon, 06 Jul 2026 15:28:07 +0000
Date: Mon, 6 Jul 2026 23:27:09 +0800
From: kernel test robot <lkp@intel.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <202607062312.8lqgVLms-lkp@intel.com>
References: <20260706094330.186341-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260706094330.186341-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783351713; x=1814887713;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Kx0R10CEtuT7dVwxzZnlGtk8d2BtAd7kwxR4Q9KdOp0=;
 b=JIUHLqkqG5UjRrYpxSlZVkVQ8WCQPEXevxZV3+ux6HvyFbwG8KZ1X7OY
 ctoWEk0XyFMEhgZnPscUW7D0PBB9T/uo+P3bvRPTQruB7kGbSoHsw8t2T
 P+D2fVBJPJMDok/eRtdIrhva4CcLky6ACsg6VA2FZdmTJ9tI3tQ7M1Wzh
 f9T2ttvRNcDoRS/rEdZg28+zw7UphBp0Sa0qbiLwQnziilVYyMELvz0l0
 cJA7H02/M/pQZLVuwaSZyIRUlkMNw5vk9SBy5jSVjVPC+/I0E3XJbzsPh
 fe/KDNVQ+a8u9a7p6T7FZmarnLaqJxIs0xh6Tn2HXV3dYPNj6GpMnYYfh
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JIUHLqkq
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: E610: force phy
 link to get down when interface is down
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:llvm@lists.linux.dev,m:oe-kbuild-all@lists.linux.dev,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid,osuosl.org:from_smtp,osuosl.org:dkim,01.org:url];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4FE7712976

Hi Jedrzej,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Jedrzej-Jagielski/ixgbe-E610-force-phy-link-to-get-down-when-interface-is-down/20260706-180351
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20260706094330.186341-1-jedrzej.jagielski%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: E610: force phy link to get down when interface is down
config: x86_64-rhel-9.4-rust (https://download.01.org/0day-ci/archive/20260706/202607062312.8lqgVLms-lkp@intel.com/config)
compiler: clang version 22.1.3 (https://github.com/llvm/llvm-project e9846648fd6183ee6d8cbdb4502213fcf902a211)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260706/202607062312.8lqgVLms-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202607062312.8lqgVLms-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:7572:4: error: call to undeclared function 'e_error'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    7572 |                         e_error(drv, "Cannot set PHY link down\n");
         |                         ^
>> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:7572:12: error: use of undeclared identifier 'drv'
    7572 |                         e_error(drv, "Cannot set PHY link down\n");
         |                                 ^~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8928:14: warning: division by zero is undefined [-Wdivision-by-zero]
    8928 |         cmd_type |= IXGBE_SET_FLAG(tx_flags, IXGBE_TX_FLAGS_HW_VLAN,
         |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    8929 |                                    IXGBE_ADVTXD_DCMD_VLE);
         |                                    ~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8918:26: note: expanded from macro 'IXGBE_SET_FLAG'
    8918 |          ((u32)(_input & _flag) / (_flag / _result)))
         |                                 ^ ~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8932:14: warning: division by zero is undefined [-Wdivision-by-zero]
    8932 |         cmd_type |= IXGBE_SET_FLAG(tx_flags, IXGBE_TX_FLAGS_TSO,
         |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    8933 |                                    IXGBE_ADVTXD_DCMD_TSE);
         |                                    ~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8918:26: note: expanded from macro 'IXGBE_SET_FLAG'
    8918 |          ((u32)(_input & _flag) / (_flag / _result)))
         |                                 ^ ~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8936:14: warning: division by zero is undefined [-Wdivision-by-zero]
    8936 |         cmd_type |= IXGBE_SET_FLAG(tx_flags, IXGBE_TX_FLAGS_TSTAMP,
         |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    8937 |                                    IXGBE_ADVTXD_MAC_TSTAMP);
         |                                    ~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8918:26: note: expanded from macro 'IXGBE_SET_FLAG'
    8918 |          ((u32)(_input & _flag) / (_flag / _result)))
         |                                 ^ ~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8940:14: warning: division by zero is undefined [-Wdivision-by-zero]
    8940 |         cmd_type ^= IXGBE_SET_FLAG(skb->no_fcs, 1, IXGBE_ADVTXD_DCMD_IFCS);
         |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8918:26: note: expanded from macro 'IXGBE_SET_FLAG'
    8918 |          ((u32)(_input & _flag) / (_flag / _result)))
         |                                 ^ ~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8951:19: warning: division by zero is undefined [-Wdivision-by-zero]
    8951 |         olinfo_status |= IXGBE_SET_FLAG(tx_flags,
         |                          ^~~~~~~~~~~~~~~~~~~~~~~~
    8952 |                                         IXGBE_TX_FLAGS_CSUM,
         |                                         ~~~~~~~~~~~~~~~~~~~~
    8953 |                                         IXGBE_ADVTXD_POPTS_TXSM);
         |                                         ~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8918:26: note: expanded from macro 'IXGBE_SET_FLAG'
    8918 |          ((u32)(_input & _flag) / (_flag / _result)))
         |                                 ^ ~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8956:19: warning: division by zero is undefined [-Wdivision-by-zero]
    8956 |         olinfo_status |= IXGBE_SET_FLAG(tx_flags,
         |                          ^~~~~~~~~~~~~~~~~~~~~~~~
    8957 |                                         IXGBE_TX_FLAGS_IPV4,
         |                                         ~~~~~~~~~~~~~~~~~~~~
    8958 |                                         IXGBE_ADVTXD_POPTS_IXSM);
         |                                         ~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8918:26: note: expanded from macro 'IXGBE_SET_FLAG'
    8918 |          ((u32)(_input & _flag) / (_flag / _result)))
         |                                 ^ ~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8961:19: warning: division by zero is undefined [-Wdivision-by-zero]
    8961 |         olinfo_status |= IXGBE_SET_FLAG(tx_flags,
         |                          ^~~~~~~~~~~~~~~~~~~~~~~~
    8962 |                                         IXGBE_TX_FLAGS_IPSEC,
         |                                         ~~~~~~~~~~~~~~~~~~~~~
    8963 |                                         IXGBE_ADVTXD_POPTS_IPSEC);
         |                                         ~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8918:26: note: expanded from macro 'IXGBE_SET_FLAG'
    8918 |          ((u32)(_input & _flag) / (_flag / _result)))
         |                                 ^ ~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8969:19: warning: division by zero is undefined [-Wdivision-by-zero]
    8969 |         olinfo_status |= IXGBE_SET_FLAG(tx_flags,
         |                          ^~~~~~~~~~~~~~~~~~~~~~~~
    8970 |                                         IXGBE_TX_FLAGS_CC,
         |                                         ~~~~~~~~~~~~~~~~~~
    8971 |                                         IXGBE_ADVTXD_CC);
         |                                         ~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8918:26: note: expanded from macro 'IXGBE_SET_FLAG'
    8918 |          ((u32)(_input & _flag) / (_flag / _result)))
         |                                 ^ ~~~~~~~~~~~~~~~~~
   8 warnings and 2 errors generated.


vim +/e_error +7572 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c

  7544	
  7545	/**
  7546	 * ixgbe_close - Disables a network interface
  7547	 * @netdev: network interface device structure
  7548	 *
  7549	 * Returns 0, this is not allowed to fail
  7550	 *
  7551	 * The close entry point is called when an interface is de-activated
  7552	 * by the OS.  The hardware is still under the drivers control, but
  7553	 * needs to be disabled.  A global MAC reset is issued to stop the
  7554	 * hardware, and all transmit and receive resources are freed.
  7555	 **/
  7556	int ixgbe_close(struct net_device *netdev)
  7557	{
  7558		struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
  7559	
  7560		ixgbe_ptp_stop(adapter);
  7561	
  7562		if (netif_device_present(netdev))
  7563			ixgbe_close_suspend(adapter);
  7564	
  7565		ixgbe_fdir_filter_exit(adapter);
  7566	
  7567		if (adapter->flags2 & IXGBE_FLAG2_LINK_DOWN_ON_CLOSE) {
  7568			int err;
  7569	
  7570			err = ixgbe_disable_phy_link(&adapter->hw);
  7571			if (err)
> 7572				e_error(drv, "Cannot set PHY link down\n");
  7573	
  7574			ixgbe_handle_link_down(adapter);
  7575		}
  7576	
  7577		ixgbe_release_hw_control(adapter);
  7578	
  7579		return 0;
  7580	}
  7581	

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
