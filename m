Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C6C19A4E7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Apr 2020 07:45:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 594AB8A19A;
	Wed,  1 Apr 2020 05:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w166K3eF8VSN; Wed,  1 Apr 2020 05:45:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13E518A182;
	Wed,  1 Apr 2020 05:45:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D47A1BF82B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 05:45:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 28E868943E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 05:45:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RrqGTsrT57dV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2020 05:44:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 54F438943D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 05:44:59 +0000 (UTC)
IronPort-SDR: SI5U4+SN8grt/rUDUiQKU9a4JsRRy3RQv6zixg0+oa2Zu87Bil/u5fIJWzsNKWOfZMr03aqUHK
 fi5Q0bz9ByTw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 22:44:59 -0700
IronPort-SDR: CE+XhvF7Oc392JQ3tyY4mwzsVmc+pta1scpuxqmQX2Ov0oRNfP6m1IXSOzjBO5osJAynxnwz9Q
 KnKdTsaGDHdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,330,1580803200"; d="scan'208";a="273025504"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.132.23])
 ([10.185.132.23])
 by fmsmga004.fm.intel.com with ESMTP; 31 Mar 2020 22:44:58 -0700
To: Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-9-andre.guedes@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <42aff8f7-4ee8-e753-10b3-8783105b0abe@intel.com>
Date: Wed, 1 Apr 2020 08:44:57 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200318230102.36952-9-andre.guedes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 08/12] igc: Remove
 IGC_MAC_STATE_QUEUE_STEERING
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/19/2020 01:00, Andre Guedes wrote:
> The IGC_MAC_STATE_QUEUE_STEERING bit in mac_table[i].state is
> utilized to indicate that frames matching the filter are assigned to
> mac_table[i].queue. This bit is not strictly necessary since we can
> convey the same information as follows: queue == -1 means queue
> assignment is disabled, otherwise it is enabled.
> 
> In addition to make the code simpler, this change fixes some awkward
> situations where we pass a complete misleading 'queue' value such as in
> igc_uc_sync().
> 
> So this patch removes IGC_MAC_STATE_QUEUE_STEERING and also takes the
> opportunity to improve the igc_add_mac_filter documentation.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  3 +-
>   drivers/net/ethernet/intel/igc/igc_main.c | 34 +++++++++++++----------
>   2 files changed, 21 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index e743f92a27c6..192cef07bdf7 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -470,14 +470,13 @@ struct igc_nfc_filter {
>   
>   struct igc_mac_addr {
>   	u8 addr[ETH_ALEN];
> -	u8 queue;
> +	s8 queue;
>   	u8 state; /* bitmask */
>   };
>   
>   #define IGC_MAC_STATE_DEFAULT		0x1
>   #define IGC_MAC_STATE_IN_USE		0x2
>   #define IGC_MAC_STATE_SRC_ADDR		0x4
> -#define IGC_MAC_STATE_QUEUE_STEERING	0x8
>   
>   #define IGC_MAX_RXNFC_FILTERS		16
>   
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 8a3cae2367d4..273817252823 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -820,8 +820,9 @@ static void igc_set_default_mac_filter(struct igc_adapter *adapter)
>   
>   	ether_addr_copy(mac_table->addr, adapter->hw.mac.addr);
>   	mac_table->state = IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
> +	mac_table->queue = -1;
>   
> -	igc_set_mac_filter_hw(adapter, 0, mac_table->addr, -1);
> +	igc_set_mac_filter_hw(adapter, 0, mac_table->addr, mac_table->queue);
>   }
>   
>   /**
> @@ -2197,13 +2198,20 @@ static bool igc_mac_entry_can_be_used(const struct igc_mac_addr *entry,
>   	return true;
>   }
>   
> -/* Add a MAC filter for 'addr' directing matching traffic to 'queue',
> - * 'flags' is used to indicate what kind of match is made, match is by
> - * default for the destination address, if matching by source address
> - * is desired the flag IGC_MAC_STATE_SRC_ADDR can be used.
> - */
Please, add /** before declaration (as we discussed in prev patches review)
> +/* Add MAC address filter to adapter.
> + *
> + * @adapter: Pointer to adapter where the filter should be added.
> + * @addr: MAC address.
> + * @queue: If non-negative, queue assignment feature is enabled and frames
> + * matching the filter are enqueued onto 'queue'. Otherwise, queue assignment
> + * is disabled.
> + * @flags: Set IGC_MAC_STATE_SRC_ADDR bit to indicate @address is a source
> + * address.
> + *
> + * In case of success, returns 0. Otherwise, it returns a negative errno code.
> +  */
>   static int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
> -			      const u8 queue, const u8 flags)
> +			      const s8 queue, const u8 flags)
>   {
>   	struct igc_hw *hw = &adapter->hw;
>   	int rar_entries = hw->mac.rar_entry_count;
> @@ -2267,11 +2275,11 @@ static int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
>   		if (adapter->mac_table[i].state & IGC_MAC_STATE_DEFAULT) {
>   			adapter->mac_table[i].state =
>   				IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
> -			adapter->mac_table[i].queue = 0;
> +			adapter->mac_table[i].queue = -1;
>   			igc_set_mac_filter_hw(adapter, 0, addr, -1);
>   		} else {
>   			adapter->mac_table[i].state = 0;
> -			adapter->mac_table[i].queue = 0;
> +			adapter->mac_table[i].queue = -1;
>   			memset(adapter->mac_table[i].addr, 0, ETH_ALEN);
>   			igc_clear_mac_filter_hw(adapter, i);
>   		}
> @@ -2286,7 +2294,7 @@ static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
>   {
>   	struct igc_adapter *adapter = netdev_priv(netdev);
>   
> -	return igc_add_mac_filter(adapter, addr, adapter->num_rx_queues, 0);
> +	return igc_add_mac_filter(adapter, addr, -1, 0);
>   }
>   
>   static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
> @@ -3731,15 +3739,13 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
>   int igc_add_mac_steering_filter(struct igc_adapter *adapter,
>   				const u8 *addr, u8 queue, u8 flags)
>   {
> -	return igc_add_mac_filter(adapter, addr, queue,
> -				  IGC_MAC_STATE_QUEUE_STEERING | flags);
> +	return igc_add_mac_filter(adapter, addr, queue, flags);
>   }
>   
>   int igc_del_mac_steering_filter(struct igc_adapter *adapter,
>   				const u8 *addr, u8 queue, u8 flags)
>   {
> -	return igc_del_mac_filter(adapter, addr,
> -				  IGC_MAC_STATE_QUEUE_STEERING | flags);
> +	return igc_del_mac_filter(adapter, addr, flags);
>   }
>   
>   static void igc_tsync_interrupt(struct igc_adapter *adapter)
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
