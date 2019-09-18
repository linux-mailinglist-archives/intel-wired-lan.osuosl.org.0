Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8B9B6C8B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2019 21:29:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 252A286840;
	Wed, 18 Sep 2019 19:29:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xYrgZooNJsoM; Wed, 18 Sep 2019 19:29:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E326D8686A;
	Wed, 18 Sep 2019 19:29:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FF141BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 19:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7BC5821FAC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 19:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RqCCmGjt4+HE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Sep 2019 19:29:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by silver.osuosl.org (Postfix) with ESMTPS id 809B721F5A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 19:29:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CFB3F369DA;
 Wed, 18 Sep 2019 19:29:35 +0000 (UTC)
Received: from darcari.bos.csb (dhcp-17-162.bos.redhat.com [10.18.17.162])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 11F3E60933;
 Wed, 18 Sep 2019 19:29:34 +0000 (UTC)
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20190910070512.31391-1-sasha.neftin@intel.com>
From: David Arcari <darcari@redhat.com>
Organization: Red Hat
Message-ID: <d0ecf9ed-f12f-f204-5223-6f845150a56d@redhat.com>
Date: Wed, 18 Sep 2019 15:29:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190910070512.31391-1-sasha.neftin@intel.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Wed, 18 Sep 2019 19:29:35 +0000 (UTC)
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add set_rx_mode support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 09/10/2019 03:05 AM, Sasha Neftin wrote:
> Add multicast addresses list to the MTA table.
> Implement promiscious mode and add basic rx mode support.
> Add option for ipv6 address settings.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>

This seems to break ipv4 communication over vlans:

On side A (foxville):

ip link set dev p5p1 up
ip link add link p5p1 name p5p1.10 type vlan id 10
ip addr add 192.168.110.1/24 dev p5p1.10
ip link set dev p5p1.10 up


On side B (foxville):

ip link set dev p4p1 up
ip link add link p4p1 name p4p1.10 type vlan id 10
ip addr add 192.168.110.2/24 dev p4p1.10
ip link set dev p4p1.10 up


I am unable to ping the remote ip with this commit applied (the problem goes
away if I revert it).

Also worth nothing, if I set both interfaces in promisc mode, the ping begins to
work.

From 192.168.110.1 icmp_seq=9 Destination Host Unreachable
From 192.168.110.1 icmp_seq=10 Destination Host Unreachable
From 192.168.110.1 icmp_seq=11 Destination Host Unreachable
From 192.168.110.1 icmp_seq=12 Destination Host Unreachable
64 bytes from 192.168.110.2: icmp_seq=13 ttl=64 time=0.230 ms
64 bytes from 192.168.110.2: icmp_seq=14 ttl=64 time=0.102 ms
64 bytes from 192.168.110.2: icmp_seq=15 ttl=64 time=0.093 ms


-Dave

> ---
>  drivers/net/ethernet/intel/igc/igc.h         |   4 +
>  drivers/net/ethernet/intel/igc/igc_base.c    |   1 +
>  drivers/net/ethernet/intel/igc/igc_defines.h |   6 +
>  drivers/net/ethernet/intel/igc/igc_hw.h      |   2 +
>  drivers/net/ethernet/intel/igc/igc_mac.c     | 125 +++++++++++-
>  drivers/net/ethernet/intel/igc/igc_mac.h     |   3 +
>  drivers/net/ethernet/intel/igc/igc_main.c    | 271 +++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_regs.h    |   2 +
>  8 files changed, 413 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 7e16345d836e..0fc3db2efcae 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -10,6 +10,7 @@
>  #include <linux/vmalloc.h>
>  #include <linux/ethtool.h>
>  #include <linux/sctp.h>
> +#include <linux/if_vlan.h>
>  
>  #include "igc_hw.h"
>  
> @@ -391,6 +392,9 @@ struct igc_adapter {
>  	u32 max_frame_size;
>  	u32 min_frame_size;
>  
> +	u16 mng_vlan_id;
> +	unsigned long active_vlans[BITS_TO_LONGS(VLAN_N_VID)];
> +
>  	/* OS defined structs */
>  	struct pci_dev *pdev;
>  	/* lock for statistics */
> diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
> index db289bcce21d..574b5928df42 100644
> --- a/drivers/net/ethernet/intel/igc/igc_base.c
> +++ b/drivers/net/ethernet/intel/igc/igc_base.c
> @@ -405,6 +405,7 @@ static struct igc_mac_operations igc_mac_ops_base = {
>  	.check_for_link		= igc_check_for_copper_link,
>  	.rar_set		= igc_rar_set,
>  	.read_mac_addr		= igc_read_mac_addr,
> +	.write_vfta		= igc_write_vfta,
>  	.get_speed_and_duplex	= igc_get_speed_and_duplex_copper,
>  };
>  
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index f3f2325fe567..0d6fa739b210 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -402,4 +402,10 @@
>  #define IGC_ADVTXD_TUCMD_L4T_TCP	0x00000800  /* L4 Packet Type of TCP */
>  #define IGC_ADVTXD_TUCMD_L4T_SCTP	0x00001000 /* L4 packet TYPE of SCTP */
>  
> +/* Maximum size of the MTA register table in all supported adapters */
> +#define MAX_MTA_REG			128
> +#define IGC_VLAN_FILTER_TBL_SIZE	128  /* VLAN Filter Table (4096 bits) */
> +#define IGC_VFTA_BLOCK_SIZE		8
> +#define IGC_RCTL_VFE			0x00040000    /* vlan filter enable */
> +
>  #endif /* _IGC_DEFINES_H_ */
> diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
> index abb2d72911ff..452d3750e8ca 100644
> --- a/drivers/net/ethernet/intel/igc/igc_hw.h
> +++ b/drivers/net/ethernet/intel/igc/igc_hw.h
> @@ -36,6 +36,7 @@ struct igc_mac_operations {
>  				    u16 *duplex);
>  	s32 (*acquire_swfw_sync)(struct igc_hw *hw, u16 mask);
>  	void (*release_swfw_sync)(struct igc_hw *hw, u16 mask);
> +	void (*write_vfta)(struct igc_hw *hw, u32 offset, u32 value);
>  };
>  
>  enum igc_mac_type {
> @@ -91,6 +92,7 @@ struct igc_mac_info {
>  	u16 mta_reg_count;
>  	u16 uta_reg_count;
>  
> +	u32 mta_shadow[MAX_MTA_REG];
>  	u16 rar_entry_count;
>  
>  	u8 forced_speed_duplex;
> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
> index 5eeb4c8caf4a..cbf9b96d6686 100644
> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
> @@ -5,7 +5,7 @@
>  #include <linux/delay.h>
>  
>  #include "igc_mac.h"
> -#include "igc_hw.h"
> +#include "igc.h"
>  
>  /**
>   * igc_disable_pcie_master - Disables PCI-express master access
> @@ -784,3 +784,126 @@ bool igc_enable_mng_pass_thru(struct igc_hw *hw)
>  out:
>  	return ret_val;
>  }
> +
> +/**
> + *  igc_hash_mc_addr - Generate a multicast hash value
> + *  @hw: pointer to the HW structure
> + *  @mc_addr: pointer to a multicast address
> + *
> + *  Generates a multicast address hash value which is used to determine
> + *  the multicast filter table array address and new table value.  See
> + *  igc_mta_set()
> + **/
> +static u32 igc_hash_mc_addr(struct igc_hw *hw, u8 *mc_addr)
> +{
> +	u32 hash_value, hash_mask;
> +	u8 bit_shift = 0;
> +
> +	/* Register count multiplied by bits per register */
> +	hash_mask = (hw->mac.mta_reg_count * 32) - 1;
> +
> +	/* For a mc_filter_type of 0, bit_shift is the number of left-shifts
> +	 * where 0xFF would still fall within the hash mask.
> +	 */
> +	while (hash_mask >> bit_shift != 0xFF)
> +		bit_shift++;
> +
> +	/* The portion of the address that is used for the hash table
> +	 * is determined by the mc_filter_type setting.
> +	 * The algorithm is such that there is a total of 8 bits of shifting.
> +	 * The bit_shift for a mc_filter_type of 0 represents the number of
> +	 * left-shifts where the MSB of mc_addr[5] would still fall within
> +	 * the hash_mask.  Case 0 does this exactly.  Since there are a total
> +	 * of 8 bits of shifting, then mc_addr[4] will shift right the
> +	 * remaining number of bits. Thus 8 - bit_shift.  The rest of the
> +	 * cases are a variation of this algorithm...essentially raising the
> +	 * number of bits to shift mc_addr[5] left, while still keeping the
> +	 * 8-bit shifting total.
> +	 *
> +	 * For example, given the following Destination MAC Address and an
> +	 * mta register count of 128 (thus a 4096-bit vector and 0xFFF mask),
> +	 * we can see that the bit_shift for case 0 is 4.  These are the hash
> +	 * values resulting from each mc_filter_type...
> +	 * [0] [1] [2] [3] [4] [5]
> +	 * 01  AA  00  12  34  56
> +	 * LSB                 MSB
> +	 *
> +	 * case 0: hash_value = ((0x34 >> 4) | (0x56 << 4)) & 0xFFF = 0x563
> +	 * case 1: hash_value = ((0x34 >> 3) | (0x56 << 5)) & 0xFFF = 0xAC6
> +	 * case 2: hash_value = ((0x34 >> 2) | (0x56 << 6)) & 0xFFF = 0x163
> +	 * case 3: hash_value = ((0x34 >> 0) | (0x56 << 8)) & 0xFFF = 0x634
> +	 */
> +	switch (hw->mac.mc_filter_type) {
> +	default:
> +	case 0:
> +		break;
> +	case 1:
> +		bit_shift += 1;
> +		break;
> +	case 2:
> +		bit_shift += 2;
> +		break;
> +	case 3:
> +		bit_shift += 4;
> +		break;
> +	}
> +
> +	hash_value = hash_mask & (((mc_addr[4] >> (8 - bit_shift)) |
> +				  (((u16)mc_addr[5]) << bit_shift)));
> +
> +	return hash_value;
> +}
> +
> +/**
> + *  igc_update_mc_addr_list - Update Multicast addresses
> + *  @hw: pointer to the HW structure
> + *  @mc_addr_list: array of multicast addresses to program
> + *  @mc_addr_count: number of multicast addresses to program
> + *
> + *  Updates entire Multicast Table Array.
> + *  The caller must have a packed mc_addr_list of multicast addresses.
> + **/
> +void igc_update_mc_addr_list(struct igc_hw *hw,
> +			     u8 *mc_addr_list, u32 mc_addr_count)
> +{
> +	u32 hash_value, hash_bit, hash_reg;
> +	int i;
> +
> +	/* clear mta_shadow */
> +	memset(&hw->mac.mta_shadow, 0, sizeof(hw->mac.mta_shadow));
> +
> +	/* update mta_shadow from mc_addr_list */
> +	for (i = 0; (u32)i < mc_addr_count; i++) {
> +		hash_value = igc_hash_mc_addr(hw, mc_addr_list);
> +
> +		hash_reg = (hash_value >> 5) & (hw->mac.mta_reg_count - 1);
> +		hash_bit = hash_value & 0x1F;
> +
> +		hw->mac.mta_shadow[hash_reg] |= BIT(hash_bit);
> +		mc_addr_list += (ETH_ALEN);
> +	}
> +
> +	/* replace the entire MTA table */
> +	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
> +		array_wr32(IGC_MTA, i, hw->mac.mta_shadow[i]);
> +	wrfl();
> +}
> +
> +/**
> + *  igc_write_vfta - Write value to VLAN filter table
> + *  @hw: pointer to the HW structure
> + *  @offset: register offset in VLAN filter table
> + *  @value: register value written to VLAN filter table
> + *
> + *  Writes value at the given offset in the register array which stores
> + *  the VLAN filter table.
> + **/
> +void igc_write_vfta(struct igc_hw *hw, u32 offset, u32 value)
> +{
> +	struct igc_adapter *adapter = hw->back;
> +
> +	array_wr32(IGC_VFTA, offset, value);
> +	wrfl();
> +
> +	adapter->shadow_vfta[offset] = value;
> +}
> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.h b/drivers/net/ethernet/intel/igc/igc_mac.h
> index 782bc995badc..c701d946b720 100644
> --- a/drivers/net/ethernet/intel/igc/igc_mac.h
> +++ b/drivers/net/ethernet/intel/igc/igc_mac.h
> @@ -29,6 +29,9 @@ s32 igc_get_speed_and_duplex_copper(struct igc_hw *hw, u16 *speed,
>  				    u16 *duplex);
>  
>  bool igc_enable_mng_pass_thru(struct igc_hw *hw);
> +void igc_update_mc_addr_list(struct igc_hw *hw,
> +			     u8 *mc_addr_list, u32 mc_addr_count);
> +void igc_write_vfta(struct igc_hw *hw, u32 offset, u32 value);
>  
>  enum igc_mng_mode {
>  	igc_mng_mode_none = 0,
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 18082163316c..37d98a6eea56 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -795,6 +795,44 @@ static int igc_set_mac(struct net_device *netdev, void *p)
>  	return 0;
>  }
>  
> +/**
> + *  igc_write_mc_addr_list - write multicast addresses to MTA
> + *  @netdev: network interface device structure
> + *
> + *  Writes multicast address list to the MTA hash table.
> + *  Returns: -ENOMEM on failure
> + *           0 on no addresses written
> + *           X on writing X addresses to MTA
> + **/
> +static int igc_write_mc_addr_list(struct net_device *netdev)
> +{
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +	struct igc_hw *hw = &adapter->hw;
> +	struct netdev_hw_addr *ha;
> +	u8  *mta_list;
> +	int i;
> +
> +	if (netdev_mc_empty(netdev)) {
> +		/* nothing to program, so clear mc list */
> +		igc_update_mc_addr_list(hw, NULL, 0);
> +		return 0;
> +	}
> +
> +	mta_list = kcalloc(netdev_mc_count(netdev), 6, GFP_ATOMIC);
> +	if (!mta_list)
> +		return -ENOMEM;
> +
> +	/* The shared function expects a packed array of only addresses. */
> +	i = 0;
> +	netdev_for_each_mc_addr(ha, netdev)
> +		memcpy(mta_list + (i++ * ETH_ALEN), ha->addr, ETH_ALEN);
> +
> +	igc_update_mc_addr_list(hw, mta_list, i);
> +	kfree(mta_list);
> +
> +	return netdev_mc_count(netdev);
> +}
> +
>  static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
>  			    struct igc_tx_buffer *first,
>  			    u32 vlan_macip_lens, u32 type_tucmd,
> @@ -2518,6 +2556,179 @@ int igc_del_mac_steering_filter(struct igc_adapter *adapter,
>  					IGC_MAC_STATE_QUEUE_STEERING | flags);
>  }
>  
> +static int igc_vlan_promisc_enable(struct igc_adapter *adapter)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 i;
> +
> +	switch (hw->mac.type) {
> +	case igc_i225:
> +		/* VLAN filtering needed for VLAN prio filter */
> +		if (adapter->netdev->features & NETIF_F_NTUPLE)
> +			break;
> +		/* fall through */
> +	default:
> +		return 1;
> +	}
> +
> +	/* We are already in VLAN promisc, nothing to do */
> +	if (adapter->flags & IGC_FLAG_VLAN_PROMISC)
> +		return 0;
> +
> +	/* Set all bits in the VLAN filter table array */
> +	for (i = IGC_VLAN_FILTER_TBL_SIZE; i--;)
> +		hw->mac.ops.write_vfta(hw, i, ~0U);
> +
> +	/* Set flag so we don't redo unnecessary work */
> +	adapter->flags |= IGC_FLAG_VLAN_PROMISC;
> +
> +	return 0;
> +}
> +
> +static void igc_scrub_vfta(struct igc_adapter *adapter, u32 vfta_offset)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 vfta[IGC_VFTA_BLOCK_SIZE] = { 0 };
> +	u32 vid_start = vfta_offset * 32;
> +	u32 vid_end = vid_start + (IGC_VFTA_BLOCK_SIZE * 32);
> +	u32 i, vid, word, bits;
> +
> +	/* guarantee that we don't scrub out management VLAN */
> +	vid = adapter->mng_vlan_id;
> +	if (vid >= vid_start && vid < vid_end)
> +		vfta[(vid - vid_start) / 32] |= BIT(vid % 32);
> +
> +	/* extract values from active_vlans and write back to VFTA */
> +	for (i = IGC_VFTA_BLOCK_SIZE; i--;) {
> +		vid = (vfta_offset + i) * 32;
> +		word = vid / BITS_PER_LONG;
> +		bits = vid % BITS_PER_LONG;
> +
> +		vfta[i] |= adapter->active_vlans[word] >> bits;
> +
> +		hw->mac.ops.write_vfta(hw, vfta_offset + i, vfta[i]);
> +	}
> +}
> +
> +static void igc_vlan_promisc_disable(struct igc_adapter *adapter)
> +{
> +	u32 i;
> +
> +	/* We are not in VLAN promisc, nothing to do */
> +	if (!(adapter->flags & IGC_FLAG_VLAN_PROMISC))
> +		return;
> +
> +	/* Set flag so we don't redo unnecessary work */
> +	adapter->flags &= ~IGC_FLAG_VLAN_PROMISC;
> +
> +	for (i = 0; i < IGC_VLAN_FILTER_TBL_SIZE; i += IGC_VFTA_BLOCK_SIZE)
> +		igc_scrub_vfta(adapter, i);
> +}
> +
> +/* Add a MAC filter for 'addr' directing matching traffic to 'queue',
> + * 'flags' is used to indicate what kind of match is made, match is by
> + * default for the destination address, if matching by source address
> + * is desired the flag IGC_MAC_STATE_SRC_ADDR can be used.
> + */
> +static int igc_add_mac_filter(struct igc_adapter *adapter,
> +			      const u8 *addr, const u8 queue)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	int rar_entries = hw->mac.rar_entry_count;
> +	int i;
> +
> +	if (is_zero_ether_addr(addr))
> +		return -EINVAL;
> +
> +	/* Search for the first empty entry in the MAC table.
> +	 * Do not touch entries at the end of the table reserved for the VF MAC
> +	 * addresses.
> +	 */
> +	for (i = 0; i < rar_entries; i++) {
> +		if (!igc_mac_entry_can_be_used(&adapter->mac_table[i],
> +					       addr, 0))
> +			continue;
> +
> +		ether_addr_copy(adapter->mac_table[i].addr, addr);
> +		adapter->mac_table[i].queue = queue;
> +		adapter->mac_table[i].state |= IGC_MAC_STATE_IN_USE;
> +
> +		igc_rar_set_index(adapter, i);
> +		return i;
> +	}
> +
> +	return -ENOSPC;
> +}
> +
> +/* Remove a MAC filter for 'addr' directing matching traffic to
> + * 'queue', 'flags' is used to indicate what kind of match need to be
> + * removed, match is by default for the destination address, if
> + * matching by source address is to be removed the flag
> + * IGC_MAC_STATE_SRC_ADDR can be used.
> + */
> +static int igc_del_mac_filter(struct igc_adapter *adapter,
> +			      const u8 *addr, const u8 queue)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	int rar_entries = hw->mac.rar_entry_count;
> +	int i;
> +
> +	if (is_zero_ether_addr(addr))
> +		return -EINVAL;
> +
> +	/* Search for matching entry in the MAC table based on given address
> +	 * and queue. Do not touch entries at the end of the table reserved
> +	 * for the VF MAC addresses.
> +	 */
> +	for (i = 0; i < rar_entries; i++) {
> +		if (!(adapter->mac_table[i].state & IGC_MAC_STATE_IN_USE))
> +			continue;
> +		if (adapter->mac_table[i].state != 0)
> +			continue;
> +		if (adapter->mac_table[i].queue != queue)
> +			continue;
> +		if (!ether_addr_equal(adapter->mac_table[i].addr, addr))
> +			continue;
> +
> +		/* When a filter for the default address is "deleted",
> +		 * we return it to its initial configuration
> +		 */
> +		if (adapter->mac_table[i].state & IGC_MAC_STATE_DEFAULT) {
> +			adapter->mac_table[i].state =
> +				IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
> +			adapter->mac_table[i].queue = 0;
> +		} else {
> +			adapter->mac_table[i].state = 0;
> +			adapter->mac_table[i].queue = 0;
> +			memset(adapter->mac_table[i].addr, 0, ETH_ALEN);
> +		}
> +
> +		igc_rar_set_index(adapter, i);
> +		return 0;
> +	}
> +
> +	return -ENOENT;
> +}
> +
> +static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
> +{
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +	int ret;
> +
> +	ret = igc_add_mac_filter(adapter, addr, adapter->num_rx_queues);
> +
> +	return min_t(int, ret, 0);
> +}
> +
> +static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
> +{
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +
> +	igc_del_mac_filter(adapter, addr, adapter->num_rx_queues);
> +
> +	return 0;
> +}
> +
>  /**
>   * igc_set_rx_mode - Secondary Unicast, Multicast and Promiscuous mode set
>   * @netdev: network interface device structure
> @@ -2529,6 +2740,58 @@ int igc_del_mac_steering_filter(struct igc_adapter *adapter,
>   */
>  static void igc_set_rx_mode(struct net_device *netdev)
>  {
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 rctl = 0, rlpml = MAX_JUMBO_FRAME_SIZE;
> +	int count;
> +
> +	/* Check for Promiscuous and All Multicast modes */
> +	if (netdev->flags & IFF_PROMISC) {
> +		rctl |= IGC_RCTL_UPE | IGC_RCTL_MPE;
> +	} else {
> +		if (netdev->flags & IFF_ALLMULTI) {
> +			rctl |= IGC_RCTL_MPE;
> +		} else {
> +			/* Write addresses to the MTA, if the attempt fails
> +			 * then we should just turn on promiscuous mode so
> +			 * that we can at least receive multicast traffic
> +			 */
> +			count = igc_write_mc_addr_list(netdev);
> +			if (count < 0)
> +				rctl |= IGC_RCTL_MPE;
> +		}
> +	}
> +
> +	/* Write addresses to available RAR registers, if there is not
> +	 * sufficient space to store all the addresses then enable
> +	 * unicast promiscuous mode
> +	 */
> +	if (__dev_uc_sync(netdev, igc_uc_sync, igc_uc_unsync))
> +		rctl |= IGC_RCTL_UPE;
> +
> +	/* enable VLAN filtering by default */
> +	rctl |= IGC_RCTL_VFE;
> +
> +	/* disable VLAN filtering for modes that require it */
> +	if ((netdev->flags & IFF_PROMISC) ||
> +	    (netdev->features & NETIF_F_RXALL)) {
> +		/* if we fail to set all rules then just clear VFE */
> +		if (igc_vlan_promisc_enable(adapter))
> +			rctl &= ~IGC_RCTL_VFE;
> +	} else {
> +		igc_vlan_promisc_disable(adapter);
> +	}
> +
> +	/* update state of unicast, multicast, and VLAN filtering modes */
> +	rctl |= rd32(IGC_RCTL) & ~(IGC_RCTL_UPE | IGC_RCTL_MPE |
> +				     IGC_RCTL_VFE);
> +	wr32(IGC_RCTL, rctl);
> +
> +#if (PAGE_SIZE < 8192)
> +	if (adapter->max_frame_size <= IGC_MAX_FRAME_BUILD_SKB)
> +		rlpml = IGC_MAX_FRAME_BUILD_SKB;
> +#endif
> +	wr32(IGC_RLPML, rlpml);
>  }
>  
>  /**
> @@ -3982,6 +4245,7 @@ static const struct net_device_ops igc_netdev_ops = {
>  	.ndo_open		= igc_open,
>  	.ndo_stop		= igc_close,
>  	.ndo_start_xmit		= igc_xmit_frame,
> +	.ndo_set_rx_mode	= igc_set_rx_mode,
>  	.ndo_set_mac_address	= igc_set_mac,
>  	.ndo_change_mtu		= igc_change_mtu,
>  	.ndo_get_stats		= igc_get_stats,
> @@ -4304,6 +4568,7 @@ static int igc_probe(struct pci_dev *pdev,
>  		igc_reset_phy(hw);
>  err_sw_init:
>  	igc_clear_interrupt_scheme(adapter);
> +	kfree(adapter->shadow_vfta);
>  	iounmap(adapter->io_addr);
>  err_ioremap:
>  	free_netdev(netdev);
> @@ -4442,6 +4707,12 @@ static int igc_sw_init(struct igc_adapter *adapter)
>  
>  	igc_init_queue_configuration(adapter);
>  
> +	/* Setup and initialize a copy of the hw vlan table array */
> +	adapter->shadow_vfta = kcalloc(IGC_VLAN_FILTER_TBL_SIZE, sizeof(u32),
> +				       GFP_KERNEL);
> +	if (!adapter->shadow_vfta)
> +		return -ENOMEM;
> +
>  	/* This call may decrease the number of queues */
>  	if (igc_init_interrupt_scheme(adapter, true)) {
>  		dev_err(&pdev->dev, "Unable to allocate memory for queues\n");
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
> index 50d7c04dccf5..cec788f1fb5b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -215,6 +215,8 @@
>  /* Shadow Ram Write Register - RW */
>  #define IGC_SRWR	0x12018
>  
> +#define IGC_VFTA	0x05600  /* VLAN Filter Table Array - RW Array */
> +
>  /* forward declaration */
>  struct igc_hw;
>  u32 igc_rd32(struct igc_hw *hw, u32 reg);
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
