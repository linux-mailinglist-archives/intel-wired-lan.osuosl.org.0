Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAFDA1994E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jan 2025 20:43:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 980AE8446A;
	Wed, 22 Jan 2025 19:43:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Il4xN2JrRl6N; Wed, 22 Jan 2025 19:43:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40CBC84049
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737574998;
	bh=ZUc8bAXGbWsFwhGDzK1TckoNHLR9Fo90s1eI4GGiTC4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KXwUrQdoMWMWpq6b+ozCbKdDSa6dHeZ1MRvxRF/IpwhE3MvtYUw1EWNMzM1aj5jQx
	 L6A5Gg1riOir945bYhAz8OU3OqubwFoXOKBAGUq+17okgTtWBgyoZzMigkUgIJhMCg
	 rdBwBWsVvm5JbnAdeuhSda6dyK+AkNCc6pZMMV1B7ymo5iNuakm9pEYhn5/NtiDhPA
	 fFRo9NrYl+xzjWATgHqUTDS3U2KSU94naPXNiOJIMQNmqGoqr99lINFY3FLelDrf2W
	 ZHZkTtphMZ5fnQuJVxEmVHy+KNvLrs/owPXUW/pDpC+DS8KZctL3oiFDvbgIZjHLB1
	 QYT4vb6Fu9yOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40CBC84049;
	Wed, 22 Jan 2025 19:43:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 057F0F08
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 19:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DAD4984038
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 19:43:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 27nLIr8FUnny for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2025 19:43:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7942E84035
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7942E84035
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7942E84035
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 19:43:13 +0000 (UTC)
X-CSE-ConnectionGUID: x3AUuxjoQMeWaSANZk7jPg==
X-CSE-MsgGUID: oveXhelNSfC8uxUJchaD2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38155554"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38155554"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 11:43:13 -0800
X-CSE-ConnectionGUID: TTmjtc7YR/SMvhbs5frwqg==
X-CSE-MsgGUID: h2g96EbxTHCyeixHwFzB0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,226,1732608000"; d="scan'208";a="107244525"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 22 Jan 2025 11:43:11 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tagd2-000aGd-1i;
 Wed, 22 Jan 2025 19:43:08 +0000
Date: Thu, 23 Jan 2025 03:42:10 +0800
From: kernel test robot <lkp@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: oe-kbuild-all@lists.linux.dev,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 netdev@vger.kernel.org, xudu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 jmaxwell@redhat.com, magnus.karlsson@intel.com
Message-ID: <202501230352.vJJRWiRa-lkp@intel.com>
References: <20250122151046.574061-4-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250122151046.574061-4-maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737574995; x=1769110995;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qBF5AECtnCJtJmpXFHBOPzaFhxJuA2z1Z7BD0sAPIdo=;
 b=mMN7+q6ftk5hSO1tgjKJaOGCYw4rDaG7ffMH3vwjOjR3g7TSen3uxDQI
 rpn8rXL9/ubRDc2f1hRgai1T/+LEgVAGVy5QM8OWF3mFT2YX/pMjhT8H7
 oH1KEefPjeOh4bvCbo3tMHwPtnTlg/Ahw/0az67H7V1BPPA+KZIBQyBRE
 ZhQycRyap9DXmvAw5loPhRCBQ6gftzvchqG6nGapiXiJbtR3Wx+4CXaVn
 JGIKVD5zYZc1wNiaqQppj6RAnU92rRUCJdPI7LOFEihl/6RQZdPiN2QUk
 ky+lImSNNV/k7WfR+F6wf38VIFIV5DNYy4UeiPODhFbynfj4MrCq7qcun
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mMN7+q6f
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net 3/3] ice: stop storing XDP
 verdict within ice_rx_buf
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

Hi Maciej,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-net-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Maciej-Fijalkowski/ice-put-Rx-buffers-after-being-done-with-current-frame/20250122-231406
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20250122151046.574061-4-maciej.fijalkowski%40intel.com
patch subject: [Intel-wired-lan] [PATCH v4 iwl-net 3/3] ice: stop storing XDP verdict within ice_rx_buf
config: s390-allyesconfig (https://download.01.org/0day-ci/archive/20250123/202501230352.vJJRWiRa-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250123/202501230352.vJJRWiRa-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202501230352.vJJRWiRa-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_txrx.c:1140: warning: Function parameter or struct member 'verdict' not described in 'ice_put_rx_mbuf'


vim +1140 drivers/net/ethernet/intel/ice/ice_txrx.c

2b245cb29421ab Anirudh Venkataramanan 2018-03-20  1126  
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1127  /**
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1128   * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all frame frags
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1129   * @rx_ring: Rx ring with all the auxiliary data
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1130   * @xdp: XDP buffer carrying linear + frags part
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1131   * @xdp_xmit: XDP_TX/XDP_REDIRECT verdict storage
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1132   * @ntc: a current next_to_clean value to be stored at rx_ring
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1133   *
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1134   * Walk through gathered fragments and satisfy internal page
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1135   * recycle mechanism; we take here an action related to verdict
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1136   * returned by XDP program;
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1137   */
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1138  static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1139  			    u32 *xdp_xmit, u32 ntc, u32 verdict)
bee8fb85c01733 Maciej Fijalkowski     2025-01-22 @1140  {
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1141  	u32 nr_frags = rx_ring->nr_frags + 1;
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1142  	u32 idx = rx_ring->first_desc;
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1143  	u32 cnt = rx_ring->count;
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1144  	u32 post_xdp_frags = 1;
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1145  	struct ice_rx_buf *buf;
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1146  	int i;
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1147  
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1148  	if (unlikely(xdp_buff_has_frags(xdp)))
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1149  		post_xdp_frags += xdp_get_shared_info_from_buff(xdp)->nr_frags;
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1150  
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1151  	for (i = 0; i < post_xdp_frags; i++) {
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1152  		buf = &rx_ring->rx_buf[idx];
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1153  
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1154  		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR)) {
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1155  			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1156  			*xdp_xmit |= verdict;
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1157  		} else if (verdict & ICE_XDP_CONSUMED) {
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1158  			buf->pagecnt_bias++;
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1159  		} else if (verdict == ICE_XDP_PASS) {
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1160  			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1161  		}
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1162  
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1163  		ice_put_rx_buf(rx_ring, buf);
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1164  
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1165  		if (++idx == cnt)
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1166  			idx = 0;
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1167  	}
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1168  	/* handle buffers that represented frags released by XDP prog;
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1169  	 * for these we keep pagecnt_bias as-is; refcount from struct page
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1170  	 * has been decremented within XDP prog and we do not have to increase
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1171  	 * the biased refcnt
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1172  	 */
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1173  	for (; i < nr_frags; i++) {
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1174  		buf = &rx_ring->rx_buf[idx];
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1175  		ice_put_rx_buf(rx_ring, buf);
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1176  		if (++idx == cnt)
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1177  			idx = 0;
3dab6a1cb7698e Maciej Fijalkowski     2025-01-22  1178  	}
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1179  
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1180  	xdp->data = NULL;
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1181  	rx_ring->first_desc = ntc;
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1182  	rx_ring->nr_frags = 0;
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1183  }
bee8fb85c01733 Maciej Fijalkowski     2025-01-22  1184  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
