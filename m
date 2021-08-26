Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 291B83F8BAB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Aug 2021 18:18:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 858676145A;
	Thu, 26 Aug 2021 16:18:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Nimb_gmiBZX; Thu, 26 Aug 2021 16:18:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 711746145C;
	Thu, 26 Aug 2021 16:18:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EEE791BF855
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 16:18:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E8D5D40129
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 16:18:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3VnEqqXX6Q3X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Aug 2021 16:18:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DDB2E4020B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 16:18:22 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id r13so2784892pff.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 09:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dOyIpQNn1Wv/pADBDK73i6xsgkcQlLak+x+jp44hVCc=;
 b=bE2i9Y6FpKsaXS3UjsA1KPXFLrFcJMKSvIU8iMbzjz1VFSN5OvDPKLvYbkTeysQFqb
 bqRy8g4xO3osIKTfzDkrb3IWqq9dzZpua8YlIle/aFPPuD5E8zCPXo5BYzgu6XIuJ98a
 2Ss1w8Yg8VvCFyQR3B8t0ja9DInfgSx/mUF208h0bWvaXLG466vd36Vnol54HuZOB10I
 BBKTtz+CAkjvCt1nmy6EhnHpMZIQQ25hA2mSquuBRyHfTA1ZSgY7mWSQLzJR2p//qiFr
 0kJA4VqFibMNUcCQlGBQE9KhG1yv04o2CyFa1AUQS4P52F0GJnm5Jadvby9rLqYinldT
 4fqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dOyIpQNn1Wv/pADBDK73i6xsgkcQlLak+x+jp44hVCc=;
 b=G3l98CqiSEtu0ZvyJ6TbWM5/2y1QDQ5ayIwVs6AmYxy/Y00EaZb3U4Du4W0ne/KvkT
 cJBStXJXHfD51sOpss/1ldoPXnIgb+pAK1qAaib0AsJamd7Wvep73Y6Tk8kXVLV1Jv8O
 iHSSIuedsDLbktxqNBNfwiR0EyWELSJJO2vR3clsp8HR0/Dp1xTfzRWDOfu+J1J1HBfQ
 AQ5HofFes+UA+WoTJ1Pldsl092uiS63YyMSSRqfRfZxHTMDeQWqee9Jr/+N9JXCx4ZOh
 gyCDRvCxD6tCXHycwZ1NO+aC5bJ0oPYoZSCCw+K7Xsr72b6h92CF9CzpMSKy7z6qEh9R
 Z9qA==
X-Gm-Message-State: AOAM533nckq5xqVQSjf3HlOngIYmYXnu3C0uLAlGDWchrhK6adJ5zqMD
 59NnbTMOOOzLxZKsbGlwaVk=
X-Google-Smtp-Source: ABdhPJwcKlndbk9gwN6SyO3+bdthDmcnVOq1T77Rx4GVlTCUYigx9bEWdomUjGHW032/Qu8CChs9QA==
X-Received: by 2002:a63:cf44:: with SMTP id b4mr3892793pgj.215.1629994702325; 
 Thu, 26 Aug 2021 09:18:22 -0700 (PDT)
Received: from [192.168.86.235] (c-73-241-150-58.hsd1.ca.comcast.net.
 [73.241.150.58])
 by smtp.gmail.com with ESMTPSA id b7sm1525236pgs.64.2021.08.26.09.18.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Aug 2021 09:18:21 -0700 (PDT)
To: kerneljasonxing@gmail.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, kpsingh@kernel.org
References: <20210826141623.8151-1-kerneljasonxing@gmail.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <00890ff4-3264-337a-19cc-521a6434d1d0@gmail.com>
Date: Thu, 26 Aug 2021 09:18:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210826141623.8151-1-kerneljasonxing@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v4] ixgbe: let the xdpdrv work with
 more than 64 cpus
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
Cc: Shujin Li <lishujin@kuaishou.com>, Jason Xing <xingwanli@kuaishou.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/26/21 7:16 AM, kerneljasonxing@gmail.com wrote:
> From: Jason Xing <xingwanli@kuaishou.com>
> 
> Originally, ixgbe driver doesn't allow the mounting of xdpdrv if the
> server is equipped with more than 64 cpus online. So it turns out that
> the loading of xdpdrv causes the "NOMEM" failure.
> 
> Actually, we can adjust the algorithm and then make it work through
> mapping the current cpu to some xdp ring with the protect of @tx_lock.
> 
> v4:
> - Update the wrong commit messages. (Jason)
> 
> v3:
> - Change nr_cpu_ids to num_online_cpus() (Maciej)

I suspect this is wrong.

> - Rename MAX_XDP_QUEUES to IXGBE_MAX_XDP_QS (Maciej)
> - Rename ixgbe_determine_xdp_cpu() to ixgbe_determine_xdp_q_idx() (Maciej)
> - Wrap ixgbe_xdp_ring_update_tail() with lock into one function (Maciej)
> 
> v2:
> - Adjust cpu id in ixgbe_xdp_xmit(). (Jesper)
> - Add a fallback path. (Maciej)
> - Adjust other parts related to xdp ring.
> 
> Fixes: 33fdc82f08 ("ixgbe: add support for XDP_TX action")
> Co-developed-by: Shujin Li <lishujin@kuaishou.com>
> Signed-off-by: Shujin Li <lishujin@kuaishou.com>
> Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h           | 15 ++++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c       |  9 ++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 64 ++++++++++++++++------
>  .../net/ethernet/intel/ixgbe/ixgbe_txrx_common.h   |  1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c       |  9 +--
>  5 files changed, 73 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index a604552..5f7f181 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -82,6 +82,8 @@
>  #define IXGBE_2K_TOO_SMALL_WITH_PADDING \
>  ((NET_SKB_PAD + IXGBE_RXBUFFER_1536) > SKB_WITH_OVERHEAD(IXGBE_RXBUFFER_2K))
>  
> +DECLARE_STATIC_KEY_FALSE(ixgbe_xdp_locking_key);
> +
>  static inline int ixgbe_compute_pad(int rx_buf_len)
>  {
>  	int page_size, pad_size;
> @@ -351,6 +353,7 @@ struct ixgbe_ring {
>  	};
>  	u16 rx_offset;
>  	struct xdp_rxq_info xdp_rxq;
> +	spinlock_t tx_lock;	/* used in XDP mode */
>  	struct xsk_buff_pool *xsk_pool;
>  	u16 ring_idx;		/* {rx,tx,xdp}_ring back reference idx */
>  	u16 rx_buf_len;
> @@ -375,7 +378,7 @@ enum ixgbe_ring_f_enum {
>  #define IXGBE_MAX_FCOE_INDICES		8
>  #define MAX_RX_QUEUES			(IXGBE_MAX_FDIR_INDICES + 1)
>  #define MAX_TX_QUEUES			(IXGBE_MAX_FDIR_INDICES + 1)
> -#define MAX_XDP_QUEUES			(IXGBE_MAX_FDIR_INDICES + 1)
> +#define IXGBE_MAX_XDP_QS		(IXGBE_MAX_FDIR_INDICES + 1)
>  #define IXGBE_MAX_L2A_QUEUES		4
>  #define IXGBE_BAD_L2A_QUEUE		3
>  #define IXGBE_MAX_MACVLANS		63
> @@ -629,7 +632,7 @@ struct ixgbe_adapter {
>  
>  	/* XDP */
>  	int num_xdp_queues;
> -	struct ixgbe_ring *xdp_ring[MAX_XDP_QUEUES];
> +	struct ixgbe_ring *xdp_ring[IXGBE_MAX_XDP_QS];
>  	unsigned long *af_xdp_zc_qps; /* tracks AF_XDP ZC enabled rings */
>  
>  	/* TX */
> @@ -772,6 +775,14 @@ struct ixgbe_adapter {
>  #endif /* CONFIG_IXGBE_IPSEC */
>  };
>  
> +static inline int ixgbe_determine_xdp_q_idx(int cpu)
> +{
> +	if (static_key_enabled(&ixgbe_xdp_locking_key))
> +		return cpu % IXGBE_MAX_XDP_QS;
> +	else
> +		return cpu;

Even if num_online_cpus() is 8, the returned cpu here could be

0, 32, 64, 96, 128, 161, 197, 224

Are we sure this will still be ok ?

> +}
> +
>  static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
>  {
>  	switch (adapter->hw.mac.type) {
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> index 0218f6c..884bf99 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> @@ -299,7 +299,10 @@ static void ixgbe_cache_ring_register(struct ixgbe_adapter *adapter)
>  
>  static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
>  {
> -	return adapter->xdp_prog ? nr_cpu_ids : 0;
> +	int queues;
> +
> +	queues = min_t(int, IXGBE_MAX_XDP_QS, num_online_cpus());

num_online_cpus() might change later...




> +	return adapter->xdp_prog ? queues : 0;
>  }
>  
>  #define IXGBE_RSS_64Q_MASK	0x3F
> @@ -947,6 +950,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
>  		ring->count = adapter->tx_ring_count;
>  		ring->queue_index = xdp_idx;
>  		set_ring_xdp(ring);
> +		spin_lock_init(&ring->tx_lock);
>  
>  		/* assign ring to adapter */
>  		WRITE_ONCE(adapter->xdp_ring[xdp_idx], ring);
> @@ -1032,6 +1036,9 @@ static void ixgbe_free_q_vector(struct ixgbe_adapter *adapter, int v_idx)
>  	adapter->q_vector[v_idx] = NULL;
>  	__netif_napi_del(&q_vector->napi);
>  
> +	if (static_key_enabled(&ixgbe_xdp_locking_key))
> +		static_branch_dec(&ixgbe_xdp_locking_key);
> +
>  	/*
>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
