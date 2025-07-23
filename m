Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DA2B0EACA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 08:44:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6128580D9D;
	Wed, 23 Jul 2025 06:44:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2wDC4m1pS9f9; Wed, 23 Jul 2025 06:44:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CAF680DA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753253041;
	bh=F80HH14jMdQi88/XKKnvHtG5IgUDQ6W3ILuFgUzZufI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yWvYDkt3SWFUAQjSyRhbGl9nSSmjXWpObARYDR/igYUroKn1XlekcdbT/iAXCAssN
	 PgXCx5gsVRo3Vwm7wZQAfo9N1QzOw0M7IaDpOGzeNRBPMODlkdya8pnttlkLKGcDdL
	 1aE0SRoYm6vUZZ/QehD0aXXZ8r2kVI/VnUXvp5nuokj7wxJp5NbGvbbley/rH+wB/+
	 V/nFyOQJvgShBoiuJJk7HHLzCwcJogjhXNz2I/026JFhejjN5QEFTgh2kGFNvhfBKS
	 XEAWb/sMGBcz811QRVJ1qsR7MWtv16sZRHzN3kBufXHGM/b4ANnr+32BdkiehMcFGK
	 9B8sYA9JdabAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4CAF680DA0;
	Wed, 23 Jul 2025 06:44:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B5CDCD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 06:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01C4340C21
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 06:43:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uW_pekVKZufA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 06:43:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A7ECC40A66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7ECC40A66
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A7ECC40A66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 06:43:57 +0000 (UTC)
X-CSE-ConnectionGUID: ORCnBRn2R7W4Tmo+1ml+sw==
X-CSE-MsgGUID: UM5OC/bSSlytZh3QuTIysA==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="66092392"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="66092392"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 23:43:57 -0700
X-CSE-ConnectionGUID: tXHMz9OXQC+Uh6qT+ePj9g==
X-CSE-MsgGUID: QKUwnuowQpmUbLtCbocIvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="190342664"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 22 Jul 2025 23:43:51 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ueTCf-000J31-0Q;
 Wed, 23 Jul 2025 06:43:49 +0000
Date: Wed, 23 Jul 2025 14:43:18 +0800
From: kernel test robot <lkp@intel.com>
To: Jason Xing <kerneljasonxing@gmail.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, bjorn@kernel.org, magnus.karlsson@intel.com,
 maciej.fijalkowski@intel.com, jonathan.lemon@gmail.com,
 sdf@fomichev.me, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 linux-stm32@st-md-mailman.stormreply.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Message-ID: <202507231458.meHSJi2g-lkp@intel.com>
References: <20250722135057.85386-2-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250722135057.85386-2-kerneljasonxing@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753253037; x=1784789037;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6QQafuAcRMgNFxvhQHnvVWKRVPyC5xIwKN8D27lQ+z4=;
 b=A1MiP+VarIsc9NDg7XncqTH4BEzmdsLrvpP/s8Cwfg4E7M9AqOkUhAhE
 27VbQQ7vqp+Nk5IGme/TGqHSIcMQP1gYQfhVD5bl3+N9J3fG0TzVScll5
 L9V5MKMgq4TQZNm3fvwm78Ip+W40fy7FNvA+53tND8X0KVR/2jRjLtfgg
 5XDmsEwGW/lRWuNojUqY32pJa67cTyQgzOU9lXvq5FwKZ5MqoD1xMvcKX
 2t3tMMimeCaOaQamzg3LDXXLw8sM21gRNh4TOqH7KgmFzypF+yunN8cpx
 BNTBziXEV1R2+GfdYexonFJHOytppDhWzjlxLyPESTC59Me75vlBQihAk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A1MiP+Va
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] stmmac: xsk: fix underflow
 of budget in zerocopy mode
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

Hi Jason,

kernel test robot noticed the following build warnings:

[auto build test WARNING on net/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Jason-Xing/stmmac-xsk-fix-underflow-of-budget-in-zerocopy-mode/20250722-215348
base:   net/main
patch link:    https://lore.kernel.org/r/20250722135057.85386-2-kerneljasonxing%40gmail.com
patch subject: [Intel-wired-lan] [PATCH net v2 1/2] stmmac: xsk: fix underflow of budget in zerocopy mode
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20250723/202507231458.meHSJi2g-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250723/202507231458.meHSJi2g-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507231458.meHSJi2g-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2601:3: warning: misleading indentation; statement is not part of the previous 'for' [-Wmisleading-indentation]
    2601 |                 struct xsk_tx_metadata *meta = NULL;
         |                 ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2599:2: note: previous statement is here
    2599 |         for (; budget > 0; budget--)
         |         ^
>> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2600:34: warning: unused variable 'meta_req' [-Wunused-variable]
    2600 |                 struct stmmac_metadata_request meta_req;
         |                                                ^~~~~~~~
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2611:4: error: 'break' statement not in loop or switch statement
    2611 |                         break;
         |                         ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2615:4: error: 'break' statement not in loop or switch statement
    2615 |                         break;
         |                         ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2621:4: error: 'continue' statement not in loop statement
    2621 |                         continue;
         |                         ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2660:3: error: use of undeclared identifier 'meta_req'
    2660 |                 meta_req.priv = priv;
         |                 ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2661:3: error: use of undeclared identifier 'meta_req'
    2661 |                 meta_req.tx_desc = tx_desc;
         |                 ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2662:3: error: use of undeclared identifier 'meta_req'
    2662 |                 meta_req.set_ic = &set_ic;
         |                 ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2663:3: error: use of undeclared identifier 'meta_req'
    2663 |                 meta_req.tbs = tx_q->tbs;
         |                 ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2664:3: error: use of undeclared identifier 'meta_req'
    2664 |                 meta_req.edesc = &tx_q->dma_entx[entry];
         |                 ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2666:7: error: use of undeclared identifier 'meta_req'; did you mean 'net_eq'?
    2666 |                                         &meta_req);
         |                                          ^~~~~~~~
         |                                          net_eq
   include/net/net_namespace.h:292:5: note: 'net_eq' declared here
     292 | int net_eq(const struct net *net1, const struct net *net2)
         |     ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2685:25: error: expected parameter declarator
    2685 |         u64_stats_update_begin(&txq_stats->napi_syncp);
         |                                ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2685:25: error: expected ')'
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2685:24: note: to match this '('
    2685 |         u64_stats_update_begin(&txq_stats->napi_syncp);
         |                               ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2685:2: error: type specifier missing, defaults to 'int'; ISO C99 and later do not support implicit int [-Wimplicit-int]
    2685 |         u64_stats_update_begin(&txq_stats->napi_syncp);
         |         ^
         |         int
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2685:24: error: a function declaration without a prototype is deprecated in all versions of C [-Werror,-Wstrict-prototypes]
    2685 |         u64_stats_update_begin(&txq_stats->napi_syncp);
         |                               ^                      
         |                                                      void
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2685:2: error: a function declaration without a prototype is deprecated in all versions of C and is treated as a zero-parameter prototype in C23, conflicting with a previous declaration [-Werror,-Wdeprecated-non-prototype]
    2685 |         u64_stats_update_begin(&txq_stats->napi_syncp);
         |         ^
   include/linux/u64_stats_sync.h:181:20: note: conflicting prototype is here
     181 | static inline void u64_stats_update_begin(struct u64_stats_sync *syncp)
         |                    ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2685:2: error: conflicting types for 'u64_stats_update_begin'
    2685 |         u64_stats_update_begin(&txq_stats->napi_syncp);
         |         ^
   include/linux/u64_stats_sync.h:181:20: note: previous definition is here
     181 | static inline void u64_stats_update_begin(struct u64_stats_sync *syncp)
         |                    ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2686:16: error: expected parameter declarator
    2686 |         u64_stats_add(&txq_stats->napi.tx_set_ic_bit, tx_set_ic_bit);
         |                       ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2686:16: error: expected ')'
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2686:15: note: to match this '('
    2686 |         u64_stats_add(&txq_stats->napi.tx_set_ic_bit, tx_set_ic_bit);
         |                      ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2686:2: error: type specifier missing, defaults to 'int'; ISO C99 and later do not support implicit int [-Wimplicit-int]
    2686 |         u64_stats_add(&txq_stats->napi.tx_set_ic_bit, tx_set_ic_bit);
         |         ^
         |         int
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2686:15: error: a function declaration without a prototype is deprecated in all versions of C [-Werror,-Wstrict-prototypes]
    2686 |         u64_stats_add(&txq_stats->napi.tx_set_ic_bit, tx_set_ic_bit);
         |                      ^                                             
         |                                                                    void
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   2 warnings and 20 errors generated.


vim +/for +2601 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c

1347b419318d6af Song Yoong Siang  2023-11-27  2581  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2582  static bool stmmac_xdp_xmit_zc(struct stmmac_priv *priv, u32 queue, u32 budget)
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2583  {
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2584  	struct netdev_queue *nq = netdev_get_tx_queue(priv->dev, queue);
8531c80800c10e8 Christian Marangi 2022-07-23  2585  	struct stmmac_tx_queue *tx_q = &priv->dma_conf.tx_queue[queue];
8070274b472e2e9 Jisheng Zhang     2023-09-18  2586  	struct stmmac_txq_stats *txq_stats = &priv->xstats.txq_stats[queue];
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2587  	struct xsk_buff_pool *pool = tx_q->xsk_pool;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2588  	unsigned int entry = tx_q->cur_tx;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2589  	struct dma_desc *tx_desc = NULL;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2590  	struct xdp_desc xdp_desc;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2591  	bool work_done = true;
133466c3bbe171f Jisheng Zhang     2023-07-18  2592  	u32 tx_set_ic_bit = 0;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2593  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2594  	/* Avoids TX time-out as we are sharing with slow path */
e92af33e472cf3a Alexander Lobakin 2021-11-17  2595  	txq_trans_cond_update(nq);
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2596  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2597  	budget = min(budget, stmmac_tx_avail(priv, queue));
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2598  
9074ec4e205d86d Jason Xing        2025-07-22  2599  	for (; budget > 0; budget--)
1347b419318d6af Song Yoong Siang  2023-11-27 @2600  		struct stmmac_metadata_request meta_req;
1347b419318d6af Song Yoong Siang  2023-11-27 @2601  		struct xsk_tx_metadata *meta = NULL;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2602  		dma_addr_t dma_addr;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2603  		bool set_ic;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2604  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2605  		/* We are sharing with slow path and stop XSK TX desc submission when
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2606  		 * available TX ring is less than threshold.
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2607  		 */
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2608  		if (unlikely(stmmac_tx_avail(priv, queue) < STMMAC_TX_XSK_AVAIL) ||
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2609  		    !netif_carrier_ok(priv->dev)) {
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2610  			work_done = false;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2611  			break;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2612  		}
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2613  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2614  		if (!xsk_tx_peek_desc(pool, &xdp_desc))
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2615  			break;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2616  
bd17382ac36ed97 Xiaolei Wang      2024-05-13  2617  		if (priv->est && priv->est->enable &&
bd17382ac36ed97 Xiaolei Wang      2024-05-13  2618  		    priv->est->max_sdu[queue] &&
bd17382ac36ed97 Xiaolei Wang      2024-05-13  2619  		    xdp_desc.len > priv->est->max_sdu[queue]) {
c5c3e1bfc9e0ee7 Rohan G Thomas    2024-01-27  2620  			priv->xstats.max_sdu_txq_drop[queue]++;
c5c3e1bfc9e0ee7 Rohan G Thomas    2024-01-27  2621  			continue;
c5c3e1bfc9e0ee7 Rohan G Thomas    2024-01-27  2622  		}
c5c3e1bfc9e0ee7 Rohan G Thomas    2024-01-27  2623  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2624  		if (likely(priv->extend_desc))
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2625  			tx_desc = (struct dma_desc *)(tx_q->dma_etx + entry);
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2626  		else if (tx_q->tbs & STMMAC_TBS_AVAIL)
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2627  			tx_desc = &tx_q->dma_entx[entry].basic;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2628  		else
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2629  			tx_desc = tx_q->dma_tx + entry;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2630  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2631  		dma_addr = xsk_buff_raw_get_dma(pool, xdp_desc.addr);
1347b419318d6af Song Yoong Siang  2023-11-27  2632  		meta = xsk_buff_get_metadata(pool, xdp_desc.addr);
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2633  		xsk_buff_raw_dma_sync_for_device(pool, dma_addr, xdp_desc.len);
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2634  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2635  		tx_q->tx_skbuff_dma[entry].buf_type = STMMAC_TXBUF_T_XSK_TX;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2636  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2637  		/* To return XDP buffer to XSK pool, we simple call
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2638  		 * xsk_tx_completed(), so we don't need to fill up
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2639  		 * 'buf' and 'xdpf'.
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2640  		 */
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2641  		tx_q->tx_skbuff_dma[entry].buf = 0;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2642  		tx_q->xdpf[entry] = NULL;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2643  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2644  		tx_q->tx_skbuff_dma[entry].map_as_page = false;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2645  		tx_q->tx_skbuff_dma[entry].len = xdp_desc.len;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2646  		tx_q->tx_skbuff_dma[entry].last_segment = true;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2647  		tx_q->tx_skbuff_dma[entry].is_jumbo = false;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2648  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2649  		stmmac_set_desc_addr(priv, tx_desc, dma_addr);
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2650  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2651  		tx_q->tx_count_frames++;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2652  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2653  		if (!priv->tx_coal_frames[queue])
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2654  			set_ic = false;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2655  		else if (tx_q->tx_count_frames % priv->tx_coal_frames[queue] == 0)
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2656  			set_ic = true;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2657  		else
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2658  			set_ic = false;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2659  
1347b419318d6af Song Yoong Siang  2023-11-27  2660  		meta_req.priv = priv;
1347b419318d6af Song Yoong Siang  2023-11-27  2661  		meta_req.tx_desc = tx_desc;
1347b419318d6af Song Yoong Siang  2023-11-27  2662  		meta_req.set_ic = &set_ic;
04f64dea13640fb Song Yoong Siang  2025-02-16  2663  		meta_req.tbs = tx_q->tbs;
04f64dea13640fb Song Yoong Siang  2025-02-16  2664  		meta_req.edesc = &tx_q->dma_entx[entry];
1347b419318d6af Song Yoong Siang  2023-11-27  2665  		xsk_tx_metadata_request(meta, &stmmac_xsk_tx_metadata_ops,
1347b419318d6af Song Yoong Siang  2023-11-27  2666  					&meta_req);
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2667  		if (set_ic) {
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2668  			tx_q->tx_count_frames = 0;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2669  			stmmac_set_tx_ic(priv, tx_desc);
133466c3bbe171f Jisheng Zhang     2023-07-18  2670  			tx_set_ic_bit++;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2671  		}
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2672  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2673  		stmmac_prepare_tx_desc(priv, tx_desc, 1, xdp_desc.len,
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2674  				       true, priv->mode, true, true,
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2675  				       xdp_desc.len);
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2676  
ad72f783de06827 Yanteng Si        2024-08-07  2677  		stmmac_enable_dma_transmission(priv, priv->ioaddr, queue);
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2678  
1347b419318d6af Song Yoong Siang  2023-11-27  2679  		xsk_tx_metadata_to_compl(meta,
1347b419318d6af Song Yoong Siang  2023-11-27  2680  					 &tx_q->tx_skbuff_dma[entry].xsk_meta);
1347b419318d6af Song Yoong Siang  2023-11-27  2681  
8531c80800c10e8 Christian Marangi 2022-07-23  2682  		tx_q->cur_tx = STMMAC_GET_ENTRY(tx_q->cur_tx, priv->dma_conf.dma_tx_size);
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2683  		entry = tx_q->cur_tx;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2684  	}
38cc3c6dcc09dc3 Petr Tesarik      2024-02-03  2685  	u64_stats_update_begin(&txq_stats->napi_syncp);
38cc3c6dcc09dc3 Petr Tesarik      2024-02-03  2686  	u64_stats_add(&txq_stats->napi.tx_set_ic_bit, tx_set_ic_bit);
38cc3c6dcc09dc3 Petr Tesarik      2024-02-03  2687  	u64_stats_update_end(&txq_stats->napi_syncp);
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2688  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2689  	if (tx_desc) {
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2690  		stmmac_flush_tx_descriptors(priv, queue);
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2691  		xsk_tx_release(pool);
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2692  	}
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2693  
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2694  	/* Return true if all of the 3 conditions are met
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2695  	 *  a) TX Budget is still available
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2696  	 *  b) work_done = true when XSK TX desc peek is empty (no more
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2697  	 *     pending XSK TX for transmission)
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2698  	 */
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2699  	return !!budget && work_done;
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2700  }
132c32ee5bc09b1 Ong Boon Leong    2021-04-13  2701  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
