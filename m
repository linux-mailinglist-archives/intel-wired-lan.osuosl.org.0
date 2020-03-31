Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65985199A5A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 17:53:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 61D9D2157D;
	Tue, 31 Mar 2020 15:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id li7fY1k1SwI2; Tue, 31 Mar 2020 15:53:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4155D24E08;
	Tue, 31 Mar 2020 15:53:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 216281BF831
 for <intel-wired-lan@osuosl.org>; Tue, 31 Mar 2020 15:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1B0FA87734
 for <intel-wired-lan@osuosl.org>; Tue, 31 Mar 2020 15:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uIoZtbrf-gY7 for <intel-wired-lan@osuosl.org>;
 Tue, 31 Mar 2020 15:53:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3DB3D87618
 for <intel-wired-lan@osuosl.org>; Tue, 31 Mar 2020 15:53:14 +0000 (UTC)
IronPort-SDR: ob7W1rDIUggQQ6rlQo9ENONJY23fNGtvq50oeDiNHKObC9MX1KDrA/oqeS1b8QPOb2BKlRNT7+
 MoMIxxaJ3IGw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 08:53:13 -0700
IronPort-SDR: 4VLP288Ja6IGNFnu1boO+lEkQ5S3x6CHS+QoMJBVqNsU+mpeWDwH/gT0Bes/OwXn3Cg9A+Ve8u
 lY24BCkHICKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,328,1580803200"; d="scan'208";a="242408052"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.214.226.159])
 ([10.214.226.159])
 by orsmga008.jf.intel.com with ESMTP; 31 Mar 2020 08:53:11 -0700
To: intel-wired-lan@osuosl.org, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>, "Avivi, Amir" <amir.avivi@intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-8-andre.guedes@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <7d8b419b-a4e4-0222-c6b5-a6c422232ff7@intel.com>
Date: Tue, 31 Mar 2020 18:53:10 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200318230102.36952-8-andre.guedes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 07/12] igc: Remove 'queue' check in
 igc_del_mac_filter()
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
> igc_add_mac_filter() doesn't allow us to have more than one entry with
> the same address and address type in adapter->mac_table so checking if
> 'queue' matches in igc_del_mac_filter() isn't necessary. This patch
> removes that check.
> 
> This patch also takes the opportunity to improve the igc_del_mac_filter
> documentation and remove comment which is not applicable to this I225
> controller.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 27 ++++++++++-------------
>   1 file changed, 12 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index a71f1a5ca27c..8a3cae2367d4 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2234,14 +2234,17 @@ static int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
>   	return -ENOSPC;
>   }
>   
> -/* Remove a MAC filter for 'addr' directing matching traffic to
> - * 'queue', 'flags' is used to indicate what kind of match need to be
> - * removed, match is by default for the destination address, if
> - * matching by source address is to be removed the flag
> - * IGC_MAC_STATE_SRC_ADDR can be used.
> - */
> +/* Delete MAC address filter from adapter.
> + *
> + * @adapter: Pointer to adapter where the filter should be deleted from.
> + * @addr: MAC address.
> + * @flags: Set IGC_MAC_STATE_SRC_ADDR bit to indicate @address is a source
> + * address.
> + *
> + * In case of success, returns 0. Otherwise, it returns a negative errno code.
Block comments should align the * on each line (please, remove one space 
before *)
> +  */ >   static int igc_del_mac_filter(struct igc_adapter *adapter, const u8 
*addr,
> -			      const u8 queue, const u8 flags)
> +			      const u8 flags)
>   {
>   	struct igc_hw *hw = &adapter->hw;
>   	int rar_entries = hw->mac.rar_entry_count;
> @@ -2250,17 +2253,11 @@ static int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
>   	if (!is_valid_ether_addr(addr))
>   		return -EINVAL;
>   
> -	/* Search for matching entry in the MAC table based on given address
> -	 * and queue. Do not touch entries at the end of the table reserved
> -	 * for the VF MAC addresses.
> -	 */
>   	for (i = 0; i < rar_entries; i++) {
>   		if (!(adapter->mac_table[i].state & IGC_MAC_STATE_IN_USE))
>   			continue;
>   		if (flags && (adapter->mac_table[i].state & flags) != flags)
>   			continue;
> -		if (adapter->mac_table[i].queue != queue)
> -			continue;
>   		if (!ether_addr_equal(adapter->mac_table[i].addr, addr))
>   			continue;
>   
> @@ -2296,7 +2293,7 @@ static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
>   {
>   	struct igc_adapter *adapter = netdev_priv(netdev);
>   
> -	return igc_del_mac_filter(adapter, addr, adapter->num_rx_queues, 0);
> +	return igc_del_mac_filter(adapter, addr, 0);
>   }
>   
>   /**
> @@ -3741,7 +3738,7 @@ int igc_add_mac_steering_filter(struct igc_adapter *adapter,
>   int igc_del_mac_steering_filter(struct igc_adapter *adapter,
>   				const u8 *addr, u8 queue, u8 flags)
>   {
> -	return igc_del_mac_filter(adapter, addr, queue,
> +	return igc_del_mac_filter(adapter, addr,
>   				  IGC_MAC_STATE_QUEUE_STEERING | flags);
>   }
>   
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
