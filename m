Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 061918D22C0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 19:45:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15E5860EFA;
	Tue, 28 May 2024 17:45:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rMTU0HzXXiln; Tue, 28 May 2024 17:45:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEA9960A6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716918342;
	bh=xlpBiK/R+XPpfCrWxMepKek7a11jmdI6mI/jhE1KdxY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DkevHf7KAbTq3nL77+82PNqj2cNBUqclaH++lvVybxgZB72bhLSM4EUex06tcWDcN
	 2D17wD0Eom9/rY0ZQwm0VX5NSRUihonmo1l38XjemjHZiP2qa0dt/ho9Tc1Qko9E5j
	 8gi2xuAA7k3jXypFl+dO5obQ7U8r6Au4ZhG16Rkgc51ds501++5GNQakYRVMPs3CRw
	 eyBnTufQFZ9shoQJJwEQ0IMlP55Wu7kDOZOS3w+w+WXxPv+0sPwbCLKbepIX6vFMNJ
	 hq8ezb64x7EHkoWSJvB2TRxk8pemQ5gJzQWgbhJQhSzSkEfS67Uu9CP/T5XEMjxNrv
	 4TID2RRgx4Tsw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEA9960A6B;
	Tue, 28 May 2024 17:45:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 437D31D17CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 17:45:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F0C94013B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 17:45:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t_sYNea0eeFj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 17:45:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CA0EC400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA0EC400B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CA0EC400B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 17:45:38 +0000 (UTC)
X-CSE-ConnectionGUID: AqwVw8jVQc6+bDotL+CSxA==
X-CSE-MsgGUID: /r0gFkFLS8qX4A6Avjcd1Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13505881"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="13505881"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 10:45:38 -0700
X-CSE-ConnectionGUID: x3/T6SLIRtCoYgVeoKLVUA==
X-CSE-MsgGUID: fhQL5Qx1StCvGMJZkuVQMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="39564722"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
 by fmviesa005.fm.intel.com with ESMTP; 28 May 2024 10:45:35 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sC0tB-000CYt-2R;
 Tue, 28 May 2024 17:45:33 +0000
Date: Wed, 29 May 2024 01:44:58 +0800
From: kernel test robot <lkp@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202405290101.PV6Uluyq-lkp@intel.com>
References: <20240528131429.3012910-7-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528131429.3012910-7-maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716918339; x=1748454339;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9vOcETVh+eilOe61R58LgMPUxUJOYEm8medA2diVors=;
 b=e0c3Cjwx3dEdFhUoFZQSHJqVzOR3vuybGYkzFhaBxOvdZ99RE4A0RNjV
 GR8zqSFXLN6zYpAsKlhNcr0lJgSZ4AMdpUBoniLpqzo/30ZzWc1Bfs+q7
 U7a3AODhlhN+GxQt8FIHad3LVlJob6ilvcfusiqC0j/fqfKVMbAijOTNp
 i4XsweBp/FAsc0ZkM1X9PNdALGrulcxyKn/9rwxYFUwm4QYoU9wrxlAIi
 FCEHW3ZBsdJ9x+mDnk/NSg5IczncHLjP3MEfbeEk+XHzv6rF3ZXfWl9jA
 FppiYHltfvF3Awb0w4MJWcgpDIDrdwpblZCcWIevbHlNX8e+YbBUsEGpA
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e0c3Cjwx
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 06/11] ice: improve updating
 ice_{t, r}x_ring::xsk_pool
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 oe-kbuild-all@lists.linux.dev, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Maciej,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-net-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Maciej-Fijalkowski/ice-respect-netif-readiness-in-AF_XDP-ZC-related-ndo-s/20240528-211914
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20240528131429.3012910-7-maciej.fijalkowski%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-net 06/11] ice: improve updating ice_{t, r}x_ring::xsk_pool
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20240529/202405290101.PV6Uluyq-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240529/202405290101.PV6Uluyq-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202405290101.PV6Uluyq-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_xsk.c:476: warning: Function parameter or struct member 'xsk_pool' not described in '__ice_alloc_rx_bufs_zc'
>> drivers/net/ethernet/intel/ice/ice_xsk.c:525: warning: Function parameter or struct member 'xsk_pool' not described in 'ice_alloc_rx_bufs_zc'
>> drivers/net/ethernet/intel/ice/ice_xsk.c:980: warning: Function parameter or struct member 'xsk_pool' not described in 'ice_xmit_pkt'
>> drivers/net/ethernet/intel/ice/ice_xsk.c:1005: warning: Function parameter or struct member 'xsk_pool' not described in 'ice_xmit_pkt_batch'
>> drivers/net/ethernet/intel/ice/ice_xsk.c:1038: warning: Function parameter or struct member 'xsk_pool' not described in 'ice_fill_tx_hw_ring'


vim +476 drivers/net/ethernet/intel/ice/ice_xsk.c

3876ff525de70ae Maciej Fijalkowski     2022-01-25  462  
3876ff525de70ae Maciej Fijalkowski     2022-01-25  463  /**
3876ff525de70ae Maciej Fijalkowski     2022-01-25  464   * __ice_alloc_rx_bufs_zc - allocate a number of Rx buffers
3876ff525de70ae Maciej Fijalkowski     2022-01-25  465   * @rx_ring: Rx ring
3876ff525de70ae Maciej Fijalkowski     2022-01-25  466   * @count: The number of buffers to allocate
3876ff525de70ae Maciej Fijalkowski     2022-01-25  467   *
3876ff525de70ae Maciej Fijalkowski     2022-01-25  468   * Place the @count of descriptors onto Rx ring. Handle the ring wrap
3876ff525de70ae Maciej Fijalkowski     2022-01-25  469   * for case where space from next_to_use up to the end of ring is less
3876ff525de70ae Maciej Fijalkowski     2022-01-25  470   * than @count. Finally do a tail bump.
3876ff525de70ae Maciej Fijalkowski     2022-01-25  471   *
3876ff525de70ae Maciej Fijalkowski     2022-01-25  472   * Returns true if all allocations were successful, false if any fail.
3876ff525de70ae Maciej Fijalkowski     2022-01-25  473   */
290b7dad8f9f257 Maciej Fijalkowski     2024-05-28  474  static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
290b7dad8f9f257 Maciej Fijalkowski     2024-05-28  475  				   struct xsk_buff_pool *xsk_pool,  u16 count)
3876ff525de70ae Maciej Fijalkowski     2022-01-25 @476  {
d1fc4c6feac18f8 Maciej Fijalkowski     2022-03-17  477  	u32 nb_buffs_extra = 0, nb_buffs = 0;
3876ff525de70ae Maciej Fijalkowski     2022-01-25  478  	union ice_32b_rx_flex_desc *rx_desc;
3876ff525de70ae Maciej Fijalkowski     2022-01-25  479  	u16 ntu = rx_ring->next_to_use;
3876ff525de70ae Maciej Fijalkowski     2022-01-25  480  	u16 total_count = count;
3876ff525de70ae Maciej Fijalkowski     2022-01-25  481  	struct xdp_buff **xdp;
3876ff525de70ae Maciej Fijalkowski     2022-01-25  482  
3876ff525de70ae Maciej Fijalkowski     2022-01-25  483  	rx_desc = ICE_RX_DESC(rx_ring, ntu);
3876ff525de70ae Maciej Fijalkowski     2022-01-25  484  	xdp = ice_xdp_buf(rx_ring, ntu);
3876ff525de70ae Maciej Fijalkowski     2022-01-25  485  
3876ff525de70ae Maciej Fijalkowski     2022-01-25  486  	if (ntu + count >= rx_ring->count) {
290b7dad8f9f257 Maciej Fijalkowski     2024-05-28  487  		nb_buffs_extra = ice_fill_rx_descs(xsk_pool, xdp, rx_desc,
3876ff525de70ae Maciej Fijalkowski     2022-01-25  488  						   rx_ring->count - ntu);
d1fc4c6feac18f8 Maciej Fijalkowski     2022-03-17  489  		if (nb_buffs_extra != rx_ring->count - ntu) {
d1fc4c6feac18f8 Maciej Fijalkowski     2022-03-17  490  			ntu += nb_buffs_extra;
d1fc4c6feac18f8 Maciej Fijalkowski     2022-03-17  491  			goto exit;
d1fc4c6feac18f8 Maciej Fijalkowski     2022-03-17  492  		}
3876ff525de70ae Maciej Fijalkowski     2022-01-25  493  		rx_desc = ICE_RX_DESC(rx_ring, 0);
3876ff525de70ae Maciej Fijalkowski     2022-01-25  494  		xdp = ice_xdp_buf(rx_ring, 0);
3876ff525de70ae Maciej Fijalkowski     2022-01-25  495  		ntu = 0;
3876ff525de70ae Maciej Fijalkowski     2022-01-25  496  		count -= nb_buffs_extra;
3876ff525de70ae Maciej Fijalkowski     2022-01-25  497  		ice_release_rx_desc(rx_ring, 0);
3876ff525de70ae Maciej Fijalkowski     2022-01-25  498  	}
3876ff525de70ae Maciej Fijalkowski     2022-01-25  499  
290b7dad8f9f257 Maciej Fijalkowski     2024-05-28  500  	nb_buffs = ice_fill_rx_descs(xsk_pool, xdp, rx_desc, count);
3876ff525de70ae Maciej Fijalkowski     2022-01-25  501  
db804cfc21e969a Magnus Karlsson        2021-09-22  502  	ntu += nb_buffs;
8b51a13c37c24c0 Maciej Fijalkowski     2021-12-13  503  	if (ntu == rx_ring->count)
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  504  		ntu = 0;
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  505  
d1fc4c6feac18f8 Maciej Fijalkowski     2022-03-17  506  exit:
3876ff525de70ae Maciej Fijalkowski     2022-01-25  507  	if (rx_ring->next_to_use != ntu)
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  508  		ice_release_rx_desc(rx_ring, ntu);
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  509  
3876ff525de70ae Maciej Fijalkowski     2022-01-25  510  	return total_count == (nb_buffs_extra + nb_buffs);
3876ff525de70ae Maciej Fijalkowski     2022-01-25  511  }
3876ff525de70ae Maciej Fijalkowski     2022-01-25  512  
3876ff525de70ae Maciej Fijalkowski     2022-01-25  513  /**
3876ff525de70ae Maciej Fijalkowski     2022-01-25  514   * ice_alloc_rx_bufs_zc - allocate a number of Rx buffers
3876ff525de70ae Maciej Fijalkowski     2022-01-25  515   * @rx_ring: Rx ring
3876ff525de70ae Maciej Fijalkowski     2022-01-25  516   * @count: The number of buffers to allocate
3876ff525de70ae Maciej Fijalkowski     2022-01-25  517   *
3876ff525de70ae Maciej Fijalkowski     2022-01-25  518   * Wrapper for internal allocation routine; figure out how many tail
3876ff525de70ae Maciej Fijalkowski     2022-01-25  519   * bumps should take place based on the given threshold
3876ff525de70ae Maciej Fijalkowski     2022-01-25  520   *
3876ff525de70ae Maciej Fijalkowski     2022-01-25  521   * Returns true if all calls to internal alloc routine succeeded
3876ff525de70ae Maciej Fijalkowski     2022-01-25  522   */
290b7dad8f9f257 Maciej Fijalkowski     2024-05-28  523  bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
290b7dad8f9f257 Maciej Fijalkowski     2024-05-28  524  			  struct xsk_buff_pool *xsk_pool, u16 count)
3876ff525de70ae Maciej Fijalkowski     2022-01-25 @525  {
3876ff525de70ae Maciej Fijalkowski     2022-01-25  526  	u16 rx_thresh = ICE_RING_QUARTER(rx_ring);
b3056ae2b57858b Maciej Fijalkowski     2022-09-01  527  	u16 leftover, i, tail_bumps;
3876ff525de70ae Maciej Fijalkowski     2022-01-25  528  
b3056ae2b57858b Maciej Fijalkowski     2022-09-01  529  	tail_bumps = count / rx_thresh;
b3056ae2b57858b Maciej Fijalkowski     2022-09-01  530  	leftover = count - (tail_bumps * rx_thresh);
3876ff525de70ae Maciej Fijalkowski     2022-01-25  531  
3876ff525de70ae Maciej Fijalkowski     2022-01-25  532  	for (i = 0; i < tail_bumps; i++)
290b7dad8f9f257 Maciej Fijalkowski     2024-05-28  533  		if (!__ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, rx_thresh))
3876ff525de70ae Maciej Fijalkowski     2022-01-25  534  			return false;
290b7dad8f9f257 Maciej Fijalkowski     2024-05-28  535  	return __ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, leftover);
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  536  }
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  537  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
