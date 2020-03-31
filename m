Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6822199544
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 13:22:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DC0BF24CD3;
	Tue, 31 Mar 2020 11:22:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h69MAsl9tJBM; Tue, 31 Mar 2020 11:22:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2C74B24C10;
	Tue, 31 Mar 2020 11:22:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 776861BF836
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 11:22:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6C42186B3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 11:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bGR_twYMQ3GP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2020 11:22:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 354AA86B24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 11:22:16 +0000 (UTC)
IronPort-SDR: AaYmQR512KzRQcSSE75jI14Iy6VKndnetd2XGGLJgEzbBbF+vzjyg881GA0EPOAjdDqdhyn52d
 KuZHI6xVYUbg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 04:22:15 -0700
IronPort-SDR: QPdCjK86s+lNdvjhBMehynYG8D8Tqarjk/12FGMu8PwFPaIVydGlthb3h3J8KrfstYLhM+H+NO
 j++9vgU1u+DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="242333207"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.214.226.159])
 ([10.214.226.159])
 by orsmga008.jf.intel.com with ESMTP; 31 Mar 2020 04:22:13 -0700
To: Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org,
 "Neftin, Sasha" <sasha.neftin@intel.com>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-6-andre.guedes@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <bddc690a-8d29-fb44-8b26-67c3cf9fdf80@intel.com>
Date: Tue, 31 Mar 2020 14:22:12 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200318230102.36952-6-andre.guedes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 05/12] igc: Refactor
 igc_rar_set_index()
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
> Current igc_rar_set_index() implementation is a bit convoluted so this
> patch does some code refactoring to improve it.
> 
> The helper igc_rar_set_index() is about writing MAC filter settings into
> hardware registers. Logic such as address validation belongs to
> functions upper in the call chain such as igc_set_mac() and
> igc_add_mac_filter(). So this patch moves the is_valid_ether_addr() call
> to igc_add_mac_filter(). No need to touch igc_set_mac() since it already
> checks it.
> 
> The variables 'rar_low' and 'rar_high' represent the value in registers
> RAL and RAH so we rename them to 'ral' and 'rah', respectivelly, to
> match the registers names.
> 
> To make it explicity, filter settings are passed as arguments to the
> function instead of reading them from adapter->mac_table "under the
> hood". Also, the function was renamed to igc_set_mac_filter_hw to make
> it more clear what it does.
> 
> Finally, the patch removes some wrfl() calls and comments not needed.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 75 +++++++++++++----------
>   1 file changed, 43 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index cc1e1b0286b3..0ca7afaf6fc7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -764,43 +764,53 @@ static void igc_setup_tctl(struct igc_adapter *adapter)
>   	wr32(IGC_TCTL, tctl);
>   }
>   
> -/**
> - * igc_rar_set_index - Sync RAL[index] and RAH[index] registers with MAC table
> - * @adapter: address of board private structure
> - * @index: Index of the RAR entry which need to be synced with MAC table
> +/* Set MAC address filter in hardware.
Small correction to be consistently. Please, keep /** line above method 
declaration line.
> + *
> + * @adapter: Pointer to adapter where the filter should be set.
> + * @index: Filter index.
> + * @addr: Destination MAC address.
> + * @queue: If non-negative, queue assignment feature is enabled and frames
> + * matching the filter are enqueued onto 'queue'. Otherwise, queue assignment
> + * is disabled.
>    */
> -static void igc_rar_set_index(struct igc_adapter *adapter, u32 index)
> +static void igc_set_mac_filter_hw(struct igc_adapter *adapter, int index,
> +				  const u8 *addr, int queue)
>   {
> -	u8 *addr = adapter->mac_table[index].addr;
>   	struct igc_hw *hw = &adapter->hw;
> -	u32 rar_low, rar_high;
> +	u32 ral, rah;
>   
> -	/* HW expects these to be in network order when they are plugged
> -	 * into the registers which are little endian.  In order to guarantee
> -	 * that ordering we need to do an leXX_to_cpup here in order to be
> -	 * ready for the byteswap that occurs with writel
> -	 */
> -	rar_low = le32_to_cpup((__le32 *)(addr));
> -	rar_high = le16_to_cpup((__le16 *)(addr + 4));
> +	if (WARN_ON(index >= hw->mac.rar_entry_count))
> +		return;
>   
> -	if (adapter->mac_table[index].state & IGC_MAC_STATE_QUEUE_STEERING) {
> -		u8 queue = adapter->mac_table[index].queue;
> -		u32 qsel = IGC_RAH_QSEL_MASK & (queue << IGC_RAH_QSEL_SHIFT);
> +	ral = le32_to_cpup((__le32 *)(addr));
> +	rah = le16_to_cpup((__le16 *)(addr + 4));
>   
> -		rar_high |= qsel;
> -		rar_high |= IGC_RAH_QSEL_ENABLE;
> +	if (queue >= 0) {
> +		rah &= ~IGC_RAH_QSEL_MASK;
> +		rah |= (queue << IGC_RAH_QSEL_SHIFT);
> +		rah |= IGC_RAH_QSEL_ENABLE;
>   	}
>   
> -	/* Indicate to hardware the Address is Valid. */
> -	if (adapter->mac_table[index].state & IGC_MAC_STATE_IN_USE) {
> -		if (is_valid_ether_addr(addr))
> -			rar_high |= IGC_RAH_AV;
> -	}
> +	rah |= IGC_RAH_AV;
>   
> -	wr32(IGC_RAL(index), rar_low);
> -	wrfl();
> -	wr32(IGC_RAH(index), rar_high);
> -	wrfl();
> +	wr32(IGC_RAL(index), ral);
> +	wr32(IGC_RAH(index), rah);
> +}
> +
> +/* Clear MAC address filter in hardware.
Same here. Small correction to be consistently. Please, keep /** line 
above method declaration line.
> + *
> + * @adapter: Pointer to adapter where the filter should be cleared.
> + * @index: Filter index.
> + */
> +static void igc_clear_mac_filter_hw(struct igc_adapter *adapter, int index)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +
> +	if (WARN_ON(index >= hw->mac.rar_entry_count))
> +		return;
> +
> +	wr32(IGC_RAL(index), 0);
> +	wr32(IGC_RAH(index), 0);
>   }
>   
>   /* Set default MAC address for the PF in the first RAR entry */
> @@ -811,7 +821,7 @@ static void igc_set_default_mac_filter(struct igc_adapter *adapter)
>   	ether_addr_copy(mac_table->addr, adapter->hw.mac.addr);
>   	mac_table->state = IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
>   
> -	igc_rar_set_index(adapter, 0);
> +	igc_set_mac_filter_hw(adapter, 0, mac_table->addr, -1);
>   }
>   
>   /**
> @@ -2199,7 +2209,7 @@ static int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
>   	int rar_entries = hw->mac.rar_entry_count;
>   	int i;
>   
> -	if (is_zero_ether_addr(addr))
> +	if (!is_valid_ether_addr(addr))
>   		return -EINVAL;
>   	if (flags & IGC_MAC_STATE_SRC_ADDR)
>   		return -ENOTSUPP;
> @@ -2217,7 +2227,7 @@ static int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
>   		adapter->mac_table[i].queue = queue;
>   		adapter->mac_table[i].state |= IGC_MAC_STATE_IN_USE | flags;
>   
> -		igc_rar_set_index(adapter, i);
> +		igc_set_mac_filter_hw(adapter, i, addr, queue);
>   		return 0;
>   	}
>   
> @@ -2261,13 +2271,14 @@ static int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
>   			adapter->mac_table[i].state =
>   				IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
>   			adapter->mac_table[i].queue = 0;
> +			igc_set_mac_filter_hw(adapter, 0, addr, -1);
>   		} else {
>   			adapter->mac_table[i].state = 0;
>   			adapter->mac_table[i].queue = 0;
>   			memset(adapter->mac_table[i].addr, 0, ETH_ALEN);
> +			igc_clear_mac_filter_hw(adapter, i);
>   		}
>   
> -		igc_rar_set_index(adapter, i);
>   		return 0;
>   	}
>   
> 
Thanks Andre - two small nitpicks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
