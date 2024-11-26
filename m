Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 872089D9754
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 13:36:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD5EB403EE;
	Tue, 26 Nov 2024 12:36:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i__Ax9NhLwBT; Tue, 26 Nov 2024 12:36:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5926403B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732624611;
	bh=ozhiOzUvPiSjGEwHI/BiHxs3AYtQPdi1zzAIohD0CYM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=58hr7gAnAloT1kmo97VMmku3Y1LGVuAaLQMxynen7OFSz3hWnqqagM39uixPkx+LL
	 EQ71CBeem06sphV0qobLyWhWdd9T3YsT6LcX5XdNAByqHogh86XB9ukXHWrFUhV0i1
	 GuB8AJJayozykqQs+JtGqt6poQ2Ofn1nXnzZv69K7xpGLaLZJCLH/+/P8Mebbphw2x
	 /xHG+MQ2wg7RcqFlXgGtTzki6MIKQxmUhZ+3b9Ukjf3L43GU8QxN7ZXdCTn+GQKrhC
	 hhHFqpAykhIVNnhWD9DL4HtKEdmJrZinNttrX2p1i8eeZULFCRzOLRcZ5oGSIwpBbR
	 y7x/CgnJuZ6nQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5926403B6;
	Tue, 26 Nov 2024 12:36:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 03419DB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 12:36:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD2E461556
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 12:36:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nat2RZAJG-u9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2024 12:36:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::bd; helo=out-189.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E9E9C60825
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9E9C60825
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::bd])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E9E9C60825
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 12:36:44 +0000 (UTC)
Message-ID: <5ff2a800-815c-462f-a4f1-da8f478f48f8@linux.dev>
Date: Tue, 26 Nov 2024 12:36:36 +0000
MIME-Version: 1.0
To: Milena Olech <milena.olech@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Josh Hay <joshua.a.hay@intel.com>
References: <20241126035849.6441-1-milena.olech@intel.com>
 <20241126035849.6441-9-milena.olech@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20241126035849.6441-9-milena.olech@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1732624601;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ozhiOzUvPiSjGEwHI/BiHxs3AYtQPdi1zzAIohD0CYM=;
 b=hi83Jqseck8qc6hjUhdSJ9cXfvQGjiTKcXJDfX4cU4mSs24Hk2ED+0QQ4874iXhtb2XU6H
 tPFrYfD3/B4cnkvm2zBjnjbfy95fI6YLNnWEk6xwbY4fgxeg5F1CwjDE2VsZg8pf+J/H5K
 U+FOBWY3WSQFg1wPeLKOXTsI+/PdI50=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=hi83Jqse
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 08/10] idpf: add Tx
 timestamp flows
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

On 26/11/2024 03:58, Milena Olech wrote:
> Add functions to request Tx timestamp for the PTP packets, read the Tx
> timestamp when the completion tag for that packet is being received,
> extend the Tx timestamp value and set the supported timestamping modes.
> 
> Tx timestamp is requested for the PTP packets by setting a TSYN bit and
> index value in the Tx context descriptor. The driver assumption is that
> the Tx timestamp value is ready to be read when the completion tag is
> received. Then the driver schedules delayed work and the Tx timestamp
> value read is requested through virtchnl message. At the end, the Tx
> timestamp value is extended to 64-bit and provided back to the skb.
> 
> Co-developed-by: Josh Hay <joshua.a.hay@intel.com>
> Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> v1 -> v2: add timestamping stats, use ndo_hwtamp_get/ndo_hwstamp_set
> 
>   drivers/net/ethernet/intel/idpf/idpf.h        |  19 ++
>   .../net/ethernet/intel/idpf/idpf_ethtool.c    |  65 +++++
>   .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  13 +-
>   drivers/net/ethernet/intel/idpf/idpf_lib.c    |  47 ++++
>   drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 229 ++++++++++++++++-
>   drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  52 ++++
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 138 ++++++++++-
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  10 +-
>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   |   6 +-
>   .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 234 ++++++++++++++++++
>   10 files changed, 800 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index 14b82e93dab5..21ceaf14f501 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -249,6 +249,19 @@ struct idpf_port_stats {
>   	struct virtchnl2_vport_stats vport_stats;
>   };
>   
> +/**
> + * struct idpf_tx_tstamp_stats - Tx timestamp statistics
> + * @tx_hwtstamp_skipped: number of Tx time stamp requests skipped
> + * @tx_hwtstamp_skipped: number of Tx skbs discarded due to cached PHC time

Shoule be @tx_hwtstamp_discarded:

> + *			 being too old to correctly extend timestamp
> + * @tx_hwtstamp_flushed: number of Tx skbs flushed due to interface closed
> + */
> +struct idpf_tx_tstamp_stats {
> +	u32 tx_hwtstamp_skipped;
> +	u32 tx_hwtstamp_discarded;
> +	u32 tx_hwtstamp_flushed;
> +};
> +
>   /**
>    * struct idpf_vport - Handle for netdevices and queue resources
>    * @num_txq: Number of allocated TX queues
> @@ -293,6 +306,9 @@ struct idpf_port_stats {
>    * @link_up: True if link is up
>    * @sw_marker_wq: workqueue for marker packets
>    * @tx_tstamp_caps: The capabilities negotiated for Tx timestamping
> + * @tstamp_config: The Tx tstamp config
> + * @tstamp_task: Tx timestamping task
> + * @tstamp_stats: Tx timestamping statistics
>    */
>   struct idpf_vport {
>   	u16 num_txq;
> @@ -339,6 +355,9 @@ struct idpf_vport {
>   	wait_queue_head_t sw_marker_wq;
>   
>   	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
> +	struct kernel_hwtstamp_config tstamp_config;
> +	struct work_struct tstamp_task;
> +	struct idpf_tx_tstamp_stats tstamp_stats;
>   };
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> index b3ed1d9a80ae..31056fba484e 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> @@ -2,6 +2,7 @@
>   /* Copyright (C) 2023 Intel Corporation */
>   
>   #include "idpf.h"
> +#include "idpf_ptp.h"
>   
>   /**
>    * idpf_get_rxnfc - command to get RX flow classification rules
> @@ -480,6 +481,9 @@ static const struct idpf_stats idpf_gstrings_port_stats[] = {
>   	IDPF_PORT_STAT("tx-unicast_pkts", port_stats.vport_stats.tx_unicast),
>   	IDPF_PORT_STAT("tx-multicast_pkts", port_stats.vport_stats.tx_multicast),
>   	IDPF_PORT_STAT("tx-broadcast_pkts", port_stats.vport_stats.tx_broadcast),
> +	IDPF_PORT_STAT("tx_hwtstamp_skipped", tstamp_stats.tx_hwtstamp_skipped),
> +	IDPF_PORT_STAT("tx_hwtstamp_flushed", tstamp_stats.tx_hwtstamp_flushed),
> +	IDPF_PORT_STAT("tx_hwtstamp_discarded", tstamp_stats.tx_hwtstamp_discarded),
>   };
>   
>   #define IDPF_PORT_STATS_LEN ARRAY_SIZE(idpf_gstrings_port_stats)
> @@ -1317,6 +1321,66 @@ static int idpf_get_link_ksettings(struct net_device *netdev,
>   	return 0;
>   }
>   
> +/**
> + * idpf_set_timestamp_filters - Set the supported timestamping mode
> + * @vport: Virtual port structure
> + * @info: ethtool timestamping info structure
> + *
> + * Set the Tx/Rx timestamp filters.
> + */
> +static void idpf_set_timestamp_filters(const struct idpf_vport *vport,
> +				       struct kernel_ethtool_ts_info *info)
> +{
> +	if (!vport->tx_tstamp_caps ||
> +	    vport->adapter->ptp->tx_tstamp_access == IDPF_PTP_NONE)
> +		return;
> +
> +	info->so_timestamping = SOF_TIMESTAMPING_TX_SOFTWARE |
> +				SOF_TIMESTAMPING_TX_HARDWARE |
> +				SOF_TIMESTAMPING_RX_HARDWARE |
> +				SOF_TIMESTAMPING_RAW_HARDWARE;
> +
> +	info->tx_types = BIT(HWTSTAMP_TX_OFF) | BIT(HWTSTAMP_TX_ON);
> +}
> +
> +/**
> + * idpf_get_ts_info - Get device PHC association
> + * @netdev: network interface device structure
> + * @info: ethtool timestamping info structure
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +static int idpf_get_ts_info(struct net_device *netdev,
> +			    struct kernel_ethtool_ts_info *info)
> +{
> +	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
> +	struct idpf_vport *vport;
> +	int err = 0;
> +
> +	idpf_vport_cfg_lock(adapter);
> +	vport = idpf_netdev_to_vport(netdev);
> +
> +	if (!vport->adapter->ptp) {
> +		err = -EOPNOTSUPP;
> +		goto unlock;
> +	}
> +
> +	idpf_set_timestamp_filters(vport, info);
> +
> +	if (idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_PTP) &&
> +	    vport->adapter->ptp->clock) {
> +		info->phc_index = ptp_clock_index(vport->adapter->ptp->clock);
> +	} else {
> +		pci_dbg(vport->adapter->pdev, "PTP clock not detected\n");
> +		err = ethtool_op_get_ts_info(netdev, info);
> +	}
> +
> +unlock:
> +	idpf_vport_cfg_unlock(adapter);
> +
> +	return err;
> +}
> +
>   static const struct ethtool_ops idpf_ethtool_ops = {
>   	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
>   				     ETHTOOL_COALESCE_USE_ADAPTIVE,
> @@ -1341,6 +1405,7 @@ static const struct ethtool_ops idpf_ethtool_ops = {
>   	.get_ringparam		= idpf_get_ringparam,
>   	.set_ringparam		= idpf_set_ringparam,
>   	.get_link_ksettings	= idpf_get_link_ksettings,
> +	.get_ts_info		= idpf_get_ts_info,
>   };
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
> index 8c7f8ef8f1a1..7492d1713243 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
> @@ -282,7 +282,18 @@ struct idpf_flex_tx_tso_ctx_qw {
>   	u8 flex;
>   };
>   
> -struct idpf_flex_tx_ctx_desc {
> +union idpf_flex_tx_ctx_desc {
> +	/* DTYPE = IDPF_TX_DESC_DTYPE_CTX (0x01) */
> +	struct {
> +		__le64 qw0;
> +#define IDPF_TX_CTX_L2TAG2_M	GENMASK_ULL(47, 32)
> +		__le64 qw1;
> +#define IDPF_TX_CTX_DTYPE_M	GENMASK_ULL(3, 0)
> +#define IDPF_TX_CTX_CMD_M	GENMASK_ULL(15, 4)
> +#define IDPF_TX_CTX_TSYN_REG_M	GENMASK_ULL(47, 30)
> +#define IDPF_TX_CTX_MSS_M	GENMASK_ULL(50, 63)
> +	} tsyn;
> +
>   	/* DTYPE = IDPF_TX_DESC_DTYPE_FLEX_TSO_CTX (0x05) */
>   	struct {
>   		struct idpf_flex_tx_tso_ctx_qw qw0;
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 931d0f988c95..8c755ba113ea 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -3,6 +3,7 @@
>   
>   #include "idpf.h"
>   #include "idpf_virtchnl.h"
> +#include "idpf_ptp.h"
>   
>   static const struct net_device_ops idpf_netdev_ops;
>   
> @@ -2371,6 +2372,50 @@ void idpf_free_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem)
>   	mem->pa = 0;
>   }
>   
> +static int idpf_hwtstamp_set(struct net_device *netdev,
> +			     struct kernel_hwtstamp_config *config,
> +			     struct netlink_ext_ack *extack)
> +{
> +	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
> +	struct idpf_vport *vport;
> +	int err;
> +
> +	idpf_vport_cfg_lock(adapter);
> +	vport = idpf_netdev_to_vport(netdev);
> +
> +	if (!idpf_ptp_get_vport_tstamp_capability(vport)) {
> +		idpf_vport_cfg_unlock(adapter);
> +		return -EOPNOTSUPP;
> +	}
> +
> +	err = idpf_ptp_set_timestamp_mode(vport, config);
> +
> +	idpf_vport_cfg_unlock(adapter);
> +
> +	return err;
> +}
> +
> +static int idpf_hwtstamp_get(struct net_device *netdev,
> +			     struct kernel_hwtstamp_config *config)
> +{
> +	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
> +	struct idpf_vport *vport;
> +
> +	idpf_vport_cfg_lock(adapter);
> +	vport = idpf_netdev_to_vport(netdev);
> +
> +	if (!idpf_ptp_get_vport_tstamp_capability(vport)) {
> +		idpf_vport_cfg_unlock(adapter);
> +		return -EOPNOTSUPP;
> +	}
> +
> +	*config = vport->tstamp_config;
> +
> +	idpf_vport_cfg_unlock(adapter);
> +
> +	return 0;
> +}
> +
>   static const struct net_device_ops idpf_netdev_ops = {
>   	.ndo_open = idpf_open,
>   	.ndo_stop = idpf_stop,
> @@ -2383,4 +2428,6 @@ static const struct net_device_ops idpf_netdev_ops = {
>   	.ndo_get_stats64 = idpf_get_stats64,
>   	.ndo_set_features = idpf_set_features,
>   	.ndo_tx_timeout = idpf_tx_timeout,
> +	.ndo_hwtstamp_get = idpf_hwtstamp_get,
> +	.ndo_hwtstamp_set = idpf_hwtstamp_set,
>   };
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> index cf8d5fea02f8..2460d27f004f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> @@ -317,6 +317,37 @@ static int idpf_ptp_gettimex64(struct ptp_clock_info *info,
>   	return 0;
>   }
>   
> +/**
> + * idpf_ptp_update_cached_phctime - Update the cached PHC time values
> + * @adapter: Driver specific private structure
> + *
> + * This function updates the system time values which are cached in the adapter
> + * structure.
> + *
> + * This function must be called periodically to ensure that the cached value
> + * is never more than 2 seconds old.
> + *
> + * Return 0 on success, negative otherwise.
> + */
> +static int idpf_ptp_update_cached_phctime(struct idpf_adapter *adapter)
> +{
> +	u64 systime;
> +	int err;
> +
> +	err = idpf_ptp_read_src_clk_reg(adapter, &systime, NULL);
> +	if (err)
> +		return -EACCES;
> +
> +	/* Update the cached PHC time stored in the adapter structure.
> +	 * These values are used to extend Tx timestamp values to 64 bit
> +	 * expected by the stack.
> +	 */
> +	WRITE_ONCE(adapter->ptp->cached_phc_time, systime);
> +	WRITE_ONCE(adapter->ptp->cached_phc_jiffies, jiffies);
> +
> +	return 0;
> +}
> +
>   /**
>    * idpf_ptp_settime64 - Set the time of the clock
>    * @info: the driver's PTP info structure
> @@ -347,6 +378,11 @@ static int idpf_ptp_settime64(struct ptp_clock_info *info,
>   		return err;
>   	}
>   
> +	err = idpf_ptp_update_cached_phctime(adapter);
> +	if (err)
> +		pci_warn(adapter->pdev,
> +			 "Unable to immediately update cached PHC time\n");
> +
>   	return 0;
>   }
>   
> @@ -402,6 +438,11 @@ static int idpf_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
>   		return err;
>   	}
>   
> +	err = idpf_ptp_update_cached_phctime(adapter);
> +	if (err)
> +		pci_warn(adapter->pdev,
> +			 "Unable to immediately update cached PHC time\n");
> +
>   	return 0;
>   }
>   
> @@ -465,6 +506,159 @@ static int idpf_ptp_gpio_enable(struct ptp_clock_info *info,
>   	return -EOPNOTSUPP;
>   }
>   
> +/**
> + * idpf_ptp_tstamp_extend_32b_to_64b - Convert a 32b nanoseconds Tx timestamp
> + *				       to 64b.
> + * @cached_phc_time: recently cached copy of PHC time
> + * @in_timestamp: Ingress/egress 32b nanoseconds timestamp value
> + *
> + * Hardware captures timestamps which contain only 32 bits of nominal
> + * nanoseconds, as opposed to the 64bit timestamps that the stack expects.
> + *
> + * Return: Tx timestamp value extended to 64 bits based on cached PHC time.
> + */
> +u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time, u32 in_timestamp)
> +{
> +	u32 delta, phc_lo;
> +	u64 ns;
> +
> +	phc_lo = lower_32_bits(cached_phc_time);
> +	delta = in_timestamp - phc_lo;
> +
> +	if (delta > S32_MAX) {
> +		delta = phc_lo - in_timestamp;
> +		ns = cached_phc_time - delta;
> +	} else {
> +		ns = cached_phc_time + delta;
> +	}
> +
> +	return ns;
> +}
> +
> +/**
> + * idpf_ptp_extend_ts - Convert a 40b timestamp to 64b nanoseconds
> + * @vport: Virtual port structure
> + * @in_tstamp: Ingress/egress timestamp value
> + *
> + * It is assumed that the caller verifies the timestamp is valid prior to
> + * calling this function.
> + *
> + * Extract the 32bit nominal nanoseconds and extend them. Use the cached PHC
> + * time stored in the device private PTP structure as the basis for timestamp
> + * extension.
> + *
> + * Return: Tx timestamp value extended to 64 bits.
> + */
> +u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp)
> +{
> +	struct idpf_ptp *ptp = vport->adapter->ptp;
> +	unsigned long discard_time;
> +
> +	discard_time = ptp->cached_phc_jiffies + 2 * HZ;
> +
> +	if (time_is_before_jiffies(discard_time)) {
> +		vport->tstamp_stats.tx_hwtstamp_discarded++;
> +		return 0;
> +	}
> +
> +	return idpf_ptp_tstamp_extend_32b_to_64b(ptp->cached_phc_time,
> +						 lower_32_bits(in_tstamp));
> +}
> +
> +/**
> + * idpf_ptp_request_ts - Request an available Tx timestamp index
> + * @tx_q: Transmit queue on which the Tx timestamp is requested
> + * @skb: The SKB to associate with this timestamp request
> + * @idx: Index of the Tx timestamp latch
> + *
> + * Request tx timestamp index negotiated during PTP init that will be set into
> + * Tx descriptor.
> + *
> + * Return: 0 and the index that can be provided to Tx descriptor on success,
> + * -errno otherwise.
> + */
> +int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
> +			u32 *idx)
> +{
> +	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
> +	struct list_head *head;
> +
> +	head = &tx_q->cached_tstamp_caps->latches_free;
> +	if (list_empty(head))
> +		return -ENOBUFS;
> +
> +	/* Get the index from the free latches list */
> +	spin_lock_bh(&tx_q->cached_tstamp_caps->lock_free);
> +	ptp_tx_tstamp = list_first_entry(head, struct idpf_ptp_tx_tstamp,
> +					 list_member);
> +	list_del(&ptp_tx_tstamp->list_member);
> +	spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_free);
> +
> +	ptp_tx_tstamp->skb = skb_get(skb);
> +	skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
> +
> +	/* Move the element to the used latches list */
> +	spin_lock_bh(&tx_q->cached_tstamp_caps->lock_in_use);
> +	list_add(&ptp_tx_tstamp->list_member,
> +		 &tx_q->cached_tstamp_caps->latches_in_use);
> +	spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_in_use);
> +
> +	*idx = ptp_tx_tstamp->idx;
> +
> +	return 0;
> +}
> +
> +/**
> + * idpf_ptp_set_timestamp_mode - Setup driver for requested timestamp mode
> + * @vport: Virtual port structure
> + * @config: Hwtstamp settings requested or saved
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
> +				struct kernel_hwtstamp_config *config)
> +{
> +	switch (config->tx_type) {
> +	case HWTSTAMP_TX_OFF:
> +	case HWTSTAMP_TX_ON:
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	vport->tstamp_config.tx_type = config->tx_type;
> +
> +	return 0;
> +}
> +
> +/**
> + * idpf_tstamp_task - Delayed task to handle Tx tstamps
> + * @work: work_struct handle
> + */
> +void idpf_tstamp_task(struct work_struct *work)
> +{
> +	struct idpf_vport *vport;
> +
> +	vport = container_of(work, struct idpf_vport, tstamp_task);
> +
> +	idpf_ptp_get_tx_tstamp(vport);
> +}
> +
> +/**
> + * idpf_ptp_do_aux_work - Do PTP periodic work
> + * @info: Driver's PTP info structure
> + *
> + * Return: Number of jiffies to periodic work.
> + */
> +static long idpf_ptp_do_aux_work(struct ptp_clock_info *info)
> +{
> +	struct idpf_adapter *adapter = idpf_ptp_info_to_adapter(info);
> +
> +	idpf_ptp_update_cached_phctime(adapter);
> +
> +	return msecs_to_jiffies(500);
> +}
> +
>   /**
>    * idpf_ptp_set_caps - Set PTP capabilities
>    * @adapter: Driver specific private structure
> @@ -486,6 +680,7 @@ static void idpf_ptp_set_caps(const struct idpf_adapter *adapter)
>   	info->adjtime = idpf_ptp_adjtime;
>   	info->verify = idpf_ptp_verify_pin;
>   	info->enable = idpf_ptp_gpio_enable;
> +	info->do_aux_work = idpf_ptp_do_aux_work;
>   
>   #if IS_ENABLED(CONFIG_ARM_ARCH_TIMER)
>   	info->getcrosststamp = idpf_ptp_get_crosststamp;
> @@ -540,6 +735,8 @@ static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
>   	if (!idpf_ptp_get_vport_tstamp_capability(vport))
>   		return;
>   
> +	cancel_work_sync(&vport->tstamp_task);
> +
>   	/* Remove list with free latches */
>   	spin_lock(&vport->tx_tstamp_caps->lock_free);
>   
> @@ -556,6 +753,7 @@ static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
>   
>   	head = &vport->tx_tstamp_caps->latches_in_use;
>   	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
> +		vport->tstamp_stats.tx_hwtstamp_flushed++;
>   		list_del(&ptp_tx_tstamp->list_member);
>   		kfree(ptp_tx_tstamp);
>   	}
> @@ -583,6 +781,27 @@ static void idpf_ptp_release_tstamp(struct idpf_adapter *adapter)
>   	}
>   }
>   
> +/**
> + * idpf_ptp_get_txq_tstamp_capability - Verify the timestamping capability
> + *					for a given tx queue.
> + * @txq: Transmit queue
> + *
> + * Since performing timestamp flows requires reading the device clock value and
> + * the support in the Control Plane, the function checks both factors and
> + * summarizes the support for the timestamping.
> + *
> + * Return: true if the timestamping is supported, false otherwise.
> + */
> +bool idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq)
> +{
> +	if (!txq || !txq->cached_tstamp_caps)
> +		return false;
> +	else if (txq->cached_tstamp_caps->access)
> +		return true;
> +	else
> +		return false;

nit: this can be

	if (!txq || !txq->cached_tstamp_caps)
		return false;

	return !!txq->cached_tstamp_caps->access;

> +}
> +
>   /**
>    * idpf_ptp_init - Initialize PTP hardware clock support
>    * @adapter: Driver specific private structure
> @@ -623,6 +842,8 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
>   	if (err)
>   		goto free_ptp;
>   
> +	ptp_schedule_worker(adapter->ptp->clock, 0);
> +
>   	/* Write the default increment time value if the clock adjustments
>   	 * are enabled.
>   	 */
> @@ -646,6 +867,7 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
>   	return 0;
>   
>   remove_clock:
> +	ptp_cancel_worker_sync(adapter->ptp->clock);
>   	ptp_clock_unregister(adapter->ptp->clock);
>   	adapter->ptp->clock = NULL;
>   
> @@ -667,11 +889,14 @@ void idpf_ptp_release(struct idpf_adapter *adapter)
>   	if (!ptp)
>   		return;
>   
> -	if (ptp->tx_tstamp_access != IDPF_PTP_NONE)
> +	if (ptp->tx_tstamp_access != IDPF_PTP_NONE &&
> +	    ptp->get_dev_clk_time_access != IDPF_PTP_NONE)
>   		idpf_ptp_release_tstamp(adapter);
>   
> -	if (ptp->clock)
> +	if (ptp->clock) {
> +		ptp_cancel_worker_sync(adapter->ptp->clock);
>   		ptp_clock_unregister(ptp->clock);
> +	}
>   
>   	kfree(ptp);
>   	adapter->ptp = NULL;
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> index 057d1c546417..73d263586b94 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> @@ -131,6 +131,7 @@ struct idpf_ptp_tx_tstamp {
>    * @lock_in_use: the lock to the used latches list
>    * @lock_free: the lock to free the latches list
>    * @lock_status: the lock to the status tracker
> + * @access: indicates an access to Tx timestamp
>    * @latches_free: the list of the free Tx timestamps latches
>    * @latches_in_use: the list of the used Tx timestamps latches
>    * @tx_tstamp_status: Tx tstamp status tracker
> @@ -142,6 +143,7 @@ struct idpf_ptp_vport_tx_tstamp_caps {
>   	spinlock_t lock_in_use;
>   	spinlock_t lock_free;
>   	spinlock_t lock_status;
> +	bool access:1;
>   	struct list_head latches_free;
>   	struct list_head latches_in_use;
>   	struct idpf_ptp_tx_tstamp_status tx_tstamp_status[];
> @@ -155,6 +157,8 @@ struct idpf_ptp_vport_tx_tstamp_caps {
>    * @base_incval: base increment value of the PTP clock
>    * @max_adj: maximum adjustment of the PTP clock
>    * @cmd: HW specific command masks
> + * @cached_phc_time: a cached copy of the PHC time for timestamp extension
> + * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
>    * @dev_clk_regs: the set of registers to access the device clock
>    * @caps: PTP capabilities negotiated with the Control Plane
>    * @get_dev_clk_time_access: access type for getting the device clock time
> @@ -172,6 +176,8 @@ struct idpf_ptp {
>   	u64 base_incval;
>   	u64 max_adj;
>   	struct idpf_ptp_cmd cmd;
> +	u64 cached_phc_time;
> +	unsigned long cached_phc_jiffies;
>   	struct idpf_ptp_dev_clk_regs dev_clk_regs;
>   	u32 caps;
>   	enum idpf_ptp_access get_dev_clk_time_access:2;
> @@ -181,6 +187,7 @@ struct idpf_ptp {
>   	enum idpf_ptp_access tx_tstamp_access:2;
>   	u8 rsv:6;
>   	struct idpf_ptp_secondary_mbx secondary_mbx;
> +

Extra empty line is not needed...

>   };
>   
>   /**
> @@ -234,6 +241,7 @@ int idpf_ptp_init(struct idpf_adapter *adapter);
>   void idpf_ptp_release(struct idpf_adapter *adapter);
>   int idpf_ptp_get_caps(struct idpf_adapter *adapter);
>   void idpf_ptp_get_features_access(const struct idpf_adapter *adapter);
> +bool idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq);
>   int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
>   			      struct idpf_ptp_dev_timers *dev_clk_time);
>   int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
> @@ -242,6 +250,14 @@ int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time);
>   int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval);
>   int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta);
>   int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport);
> +int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport);
> +int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
> +				struct kernel_hwtstamp_config *config);
> +u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp);
> +u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time, u32 in_timestamp);
> +int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
> +			u32 *idx);
> +void idpf_tstamp_task(struct work_struct *work);
>   #else /* CONFIG_PTP_1588_CLOCK */
>   static inline int idpf_ptp_init(struct idpf_adapter *adapter)
>   {
> @@ -258,6 +274,12 @@ static inline int idpf_ptp_get_caps(struct idpf_adapter *adapter)
>   static inline void
>   idpf_ptp_get_features_access(const struct idpf_adapter *adapter) { }
>   
> +static inline bool
> +idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq)
> +{
> +	return false;
> +}
> +
>   static inline int
>   idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
>   			  struct idpf_ptp_dev_timers *dev_clk_time)
> @@ -295,5 +317,35 @@ static inline int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
>   	return -EOPNOTSUPP;
>   }
>   
> +static inline int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline int
> +idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
> +			    struct kernel_hwtstamp_config *config)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u32 in_tstamp)
> +{
> +	return 0;
> +}
> +
> +static inline u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time,
> +						    u32 in_timestamp)
> +{
> +	return 0;
> +}
> +
> +static inline int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q,
> +				      struct sk_buff *skb, u32 *idx)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline void idpf_tstamp_task(struct work_struct *work) { }
>   #endif /* CONFIG_PTP_1588_CLOCK */
>   #endif /* _IDPF_PTP_H */
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index a8989dd98272..ab0a4228fac4 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -5,6 +5,7 @@
>   #include <net/libeth/tx.h>
>   
>   #include "idpf.h"
> +#include "idpf_ptp.h"
>   #include "idpf_virtchnl.h"
>   
>   struct idpf_tx_stash {
> @@ -1107,6 +1108,8 @@ void idpf_vport_queues_rel(struct idpf_vport *vport)
>    */
>   static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport)
>   {
> +	struct idpf_ptp_vport_tx_tstamp_caps *caps = vport->tx_tstamp_caps;
> +	struct work_struct *tstamp_task = &vport->tstamp_task;
>   	int i, j, k = 0;
>   
>   	vport->txqs = kcalloc(vport->num_txq, sizeof(*vport->txqs),
> @@ -1121,6 +1124,12 @@ static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport)
>   		for (j = 0; j < tx_grp->num_txq; j++, k++) {
>   			vport->txqs[k] = tx_grp->txqs[j];
>   			vport->txqs[k]->idx = k;
> +
> +			if (!caps)
> +				continue;
> +
> +			vport->txqs[k]->cached_tstamp_caps = caps;
> +			vport->txqs[k]->tstamp_task = tstamp_task;
>   		}
>   	}
>   
> @@ -1654,6 +1663,40 @@ static void idpf_tx_handle_sw_marker(struct idpf_tx_queue *tx_q)
>   	wake_up(&vport->sw_marker_wq);
>   }
>   
> +/**
> + * idpf_tx_read_tstamp - schedule a work to read Tx timestamp value
> + * @txq: queue to read the timestamp from
> + * @skb: socket buffer to provide Tx timestamp value
> + *
> + * Schedule a work to read Tx timestamp value generated once the packet is
> + * transmitted.
> + */
> +static void idpf_tx_read_tstamp(struct idpf_tx_queue *txq, struct sk_buff *skb)
> +{
> +	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
> +	struct idpf_ptp_tx_tstamp_status *tx_tstamp_status;
> +
> +	tx_tstamp_caps = txq->cached_tstamp_caps;
> +	spin_lock_bh(&tx_tstamp_caps->lock_status);
> +
> +	for (u32 i = 0; i < tx_tstamp_caps->num_entries; i++) {
> +		tx_tstamp_status = &tx_tstamp_caps->tx_tstamp_status[i];
> +		if (tx_tstamp_status->state != IDPF_PTP_FREE)
> +			continue;
> +
> +		tx_tstamp_status->skb = skb;
> +		tx_tstamp_status->state = IDPF_PTP_REQUEST;
> +
> +		/* Fetch timestamp from completion descriptor through
> +		 * virtchnl msg to report to stack.
> +		 */
> +		queue_work(system_unbound_wq, txq->tstamp_task);
> +		break;
> +	}
> +
> +	spin_unlock_bh(&tx_tstamp_caps->lock_status);
> +}
> +
>   /**
>    * idpf_tx_clean_stashed_bufs - clean bufs that were stored for
>    * out of order completions
> @@ -1682,6 +1725,11 @@ static void idpf_tx_clean_stashed_bufs(struct idpf_tx_queue *txq,
>   			continue;
>   
>   		hash_del(&stash->hlist);
> +
> +		if (stash->buf.type == LIBETH_SQE_SKB &&
> +		    (skb_shinfo(stash->buf.skb)->tx_flags & SKBTX_IN_PROGRESS))
> +			idpf_tx_read_tstamp(txq, stash->buf.skb);
> +
>   		libeth_tx_complete(&stash->buf, &cp);
>   
>   		/* Push shadow buf back onto stack */
> @@ -1876,8 +1924,12 @@ static bool idpf_tx_clean_buf_ring(struct idpf_tx_queue *txq, u16 compl_tag,
>   		     idpf_tx_buf_compl_tag(tx_buf) != compl_tag))
>   		return false;
>   
> -	if (tx_buf->type == LIBETH_SQE_SKB)
> +	if (tx_buf->type == LIBETH_SQE_SKB) {
> +		if (skb_shinfo(tx_buf->skb)->tx_flags & SKBTX_IN_PROGRESS)
> +			idpf_tx_read_tstamp(txq, tx_buf->skb);
> +
>   		libeth_tx_complete(tx_buf, &cp);
> +	}
>   
>   	idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
>   
> @@ -2296,7 +2348,7 @@ void idpf_tx_dma_map_error(struct idpf_tx_queue *txq, struct sk_buff *skb,
>   		 * descriptor. Reset that here.
>   		 */
>   		tx_desc = &txq->flex_tx[idx];
> -		memset(tx_desc, 0, sizeof(struct idpf_flex_tx_ctx_desc));
> +		memset(tx_desc, 0, sizeof(*tx_desc));
>   		if (idx == 0)
>   			idx = txq->desc_count;
>   		idx--;
> @@ -2699,10 +2751,10 @@ static bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
>    * Since the TX buffer rings mimics the descriptor ring, update the tx buffer
>    * ring entry to reflect that this index is a context descriptor
>    */
> -static struct idpf_flex_tx_ctx_desc *
> +static union idpf_flex_tx_ctx_desc *
>   idpf_tx_splitq_get_ctx_desc(struct idpf_tx_queue *txq)
>   {
> -	struct idpf_flex_tx_ctx_desc *desc;
> +	union idpf_flex_tx_ctx_desc *desc;
>   	int i = txq->next_to_use;
>   
>   	txq->tx_buf[i].type = LIBETH_SQE_CTX;
> @@ -2732,6 +2784,72 @@ netdev_tx_t idpf_tx_drop_skb(struct idpf_tx_queue *tx_q, struct sk_buff *skb)
>   	return NETDEV_TX_OK;
>   }
>   
> +#if (IS_ENABLED(CONFIG_PTP_1588_CLOCK))
> +/**
> + * idpf_tx_tstamp - set up context descriptor for hardware timestamp
> + * @tx_q: queue to send buffer on
> + * @skb: pointer to the SKB we're sending
> + * @off: pointer to the offload struct
> + *
> + * Return: Positive index number on success, negative otherwise.
> + */
> +static int idpf_tx_tstamp(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
> +			  struct idpf_tx_offload_params *off)
> +{
> +	int err, idx;
> +
> +	/* only timestamp the outbound packet if the user has requested it */
> +	if (likely(!(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)))
> +		return -1;
> +
> +	if (!idpf_ptp_get_txq_tstamp_capability(tx_q))
> +		return -1;
> +
> +	/* Tx timestamps cannot be sampled when doing TSO */
> +	if (off->tx_flags & IDPF_TX_FLAGS_TSO)
> +		return -1;
> +
> +	/* Grab an open timestamp slot */
> +	err = idpf_ptp_request_ts(tx_q, skb, &idx);
> +	if (err) {
> +		tx_q->txq_grp->vport->tstamp_stats.tx_hwtstamp_skipped++;
> +		return -1;
> +	}
> +
> +	off->tx_flags |= IDPF_TX_FLAGS_TSYN;
> +
> +	return idx;
> +}
> +
> +/**
> + * idpf_tx_set_tstamp_desc - Set the Tx descriptor fields needed to generate
> + *			     PHY Tx timestamp
> + * @ctx_desc: Context descriptor
> + * @idx: Index of the Tx timestamp latch
> + */
> +static void idpf_tx_set_tstamp_desc(union idpf_flex_tx_ctx_desc *ctx_desc,
> +				    u32 idx)
> +{
> +	ctx_desc->tsyn.qw1 = le64_encode_bits(IDPF_TX_DESC_DTYPE_CTX,
> +					      IDPF_TX_CTX_DTYPE_M) |
> +			     le64_encode_bits(IDPF_TX_CTX_DESC_TSYN,
> +					      IDPF_TX_CTX_CMD_M) |
> +			     le64_encode_bits(idx, IDPF_TX_CTX_TSYN_REG_M);
> +}
> +#else /* CONFIG_PTP_1588_CLOCK */
> +static int idpf_tx_tstamp(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
> +			  struct idpf_tx_offload_params *off)
> +{
> +	return -1;
> +}
> +
> +static void idpf_tx_set_tstamp_desc(union idpf_flex_tx_ctx_desc *ctx_desc,
> +				    u32 idx)
> +{
> +	return;
> +}
> +#endif /* CONFIG_PTP_1588_CLOCK */
> +
>   /**
>    * idpf_tx_splitq_frame - Sends buffer on Tx ring using flex descriptors
>    * @skb: send buffer
> @@ -2743,9 +2861,10 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
>   					struct idpf_tx_queue *tx_q)
>   {
>   	struct idpf_tx_splitq_params tx_params = { };
> +	union idpf_flex_tx_ctx_desc *ctx_desc;
>   	struct idpf_tx_buf *first;
>   	unsigned int count;
> -	int tso;
> +	int tso, idx;
>   
>   	count = idpf_tx_desc_count_required(tx_q, skb);
>   	if (unlikely(!count))
> @@ -2765,8 +2884,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
>   
>   	if (tso) {
>   		/* If tso is needed, set up context desc */
> -		struct idpf_flex_tx_ctx_desc *ctx_desc =
> -			idpf_tx_splitq_get_ctx_desc(tx_q);
> +		ctx_desc = idpf_tx_splitq_get_ctx_desc(tx_q);
>   
>   		ctx_desc->tso.qw1.cmd_dtype =
>   				cpu_to_le16(IDPF_TX_DESC_DTYPE_FLEX_TSO_CTX |
> @@ -2784,6 +2902,12 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
>   		u64_stats_update_end(&tx_q->stats_sync);
>   	}
>   
> +	idx = idpf_tx_tstamp(tx_q, skb, &tx_params.offload);
> +	if (idx != -1) {
> +		ctx_desc = idpf_tx_splitq_get_ctx_desc(tx_q);
> +		idpf_tx_set_tstamp_desc(ctx_desc, idx);
> +	}
> +
>   	/* record the location of the first descriptor for this packet */
>   	first = &tx_q->tx_buf[tx_q->next_to_use];
>   	first->skb = skb;
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index b59aa7d8de2c..2f8f2eab3d09 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -142,6 +142,7 @@ do {								\
>   #define IDPF_TX_FLAGS_IPV4		BIT(1)
>   #define IDPF_TX_FLAGS_IPV6		BIT(2)
>   #define IDPF_TX_FLAGS_TUNNEL		BIT(3)
> +#define IDPF_TX_FLAGS_TSYN		BIT(4)
>   
>   union idpf_tx_flex_desc {
>   	struct idpf_flex_tx_desc q; /* queue based scheduling */
> @@ -613,6 +614,8 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
>    * @compl_tag_bufid_m: Completion tag buffer id mask
>    * @compl_tag_cur_gen: Used to keep track of current completion tag generation
>    * @compl_tag_gen_max: To determine when compl_tag_cur_gen should be reset
> + * @cached_tstamp_caps: Tx timestamp capabilities negotiated with the CP
> + * @tstamp_task: Work that handles Tx timestamp read
>    * @stats_sync: See struct u64_stats_sync
>    * @q_stats: See union idpf_tx_queue_stats
>    * @q_id: Queue id
> @@ -626,7 +629,7 @@ struct idpf_tx_queue {
>   		struct idpf_base_tx_desc *base_tx;
>   		struct idpf_base_tx_ctx_desc *base_ctx;
>   		union idpf_tx_flex_desc *flex_tx;
> -		struct idpf_flex_tx_ctx_desc *flex_ctx;
> +		union idpf_flex_tx_ctx_desc *flex_ctx;
>   
>   		void *desc_ring;
>   	};
> @@ -662,6 +665,9 @@ struct idpf_tx_queue {
>   	u16 compl_tag_cur_gen;
>   	u16 compl_tag_gen_max;
>   
> +	struct idpf_ptp_vport_tx_tstamp_caps *cached_tstamp_caps;
> +	struct work_struct *tstamp_task;
> +
>   	struct u64_stats_sync stats_sync;
>   	struct idpf_tx_queue_stats q_stats;
>   	__cacheline_group_end_aligned(read_write);
> @@ -675,7 +681,7 @@ struct idpf_tx_queue {
>   	__cacheline_group_end_aligned(cold);
>   };
>   libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
> -			    88 + sizeof(struct u64_stats_sync),
> +			    104 + sizeof(struct u64_stats_sync),
>   			    24);
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index a60d4e87869d..5b1f619b8f20 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -3163,8 +3163,12 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
>   		return;
>   
>   	err = idpf_ptp_get_vport_tstamps_caps(vport);
> -	if (err)
> +	if (err) {
>   		pci_dbg(vport->adapter->pdev, "Tx timestamping not supported\n");
> +		return;
> +	}
> +
> +	INIT_WORK(&vport->tstamp_task, idpf_tstamp_task);
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> index de741910b79f..b6c5fcbfa488 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> @@ -382,7 +382,9 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
>   		goto get_tstamp_caps_out;
>   	}
>   
> +	tstamp_caps->access = true;
>   	tstamp_caps->num_entries = num_latches;
> +
>   	INIT_LIST_HEAD(&tstamp_caps->latches_in_use);
>   	INIT_LIST_HEAD(&tstamp_caps->latches_free);
>   
> @@ -440,3 +442,235 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
>   
>   	return err;
>   }
> +
> +/**
> + * idpf_ptp_update_tstamp_tracker - Update the Tx timestamp tracker based on
> + *				    the skb compatibility.
> + * @caps: Tx timestamp capabilities that monitor the latch status
> + * @skb: skb for which the tstamp value is returned through virtchnl message
> + * @current_state: Current state of the Tx timestamp latch
> + * @expected_state: Expected state of the Tx timestamp latch
> + *
> + * Find a proper skb tracker for which the Tx timestamp is received and change
> + * the state to expected value.
> + *
> + * Return: true if the tracker has been found and updated, false otherwise.
> + */
> +static bool
> +idpf_ptp_update_tstamp_tracker(struct idpf_ptp_vport_tx_tstamp_caps *caps,
> +			       struct sk_buff *skb,
> +			       enum idpf_ptp_tx_tstamp_state current_state,
> +			       enum idpf_ptp_tx_tstamp_state expected_state)
> +{
> +	bool updated = false;
> +
> +	spin_lock(&caps->lock_status);
> +	for (u16 i = 0; i < caps->num_entries; i++) {
> +		struct idpf_ptp_tx_tstamp_status *status;
> +
> +		status = &caps->tx_tstamp_status[i];
> +
> +		if (skb == status->skb && status->state == current_state) {
> +			status->state = expected_state;
> +			updated = true;
> +			break;
> +		}
> +	}
> +	spin_unlock(&caps->lock_status);
> +
> +	return updated;
> +}
> +
> +/**
> + * idpf_ptp_get_tstamp_value - Get the Tx timestamp value and provide it
> + *			       back to the skb.
> + * @vport: Virtual port structure
> + * @tstamp_latch: Tx timestamp latch structure fulfilled by the Control Plane
> + * @ptp_tx_tstamp: Tx timestamp latch to add to the free list
> + *
> + * Read the value of the Tx timestamp for a given latch received from the
> + * Control Plane, extend it to 64 bit and provide back to the skb.
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +static int
> +idpf_ptp_get_tstamp_value(struct idpf_vport *vport,
> +			  struct virtchnl2_ptp_tx_tstamp_latch *tstamp_latch,
> +			  struct idpf_ptp_tx_tstamp *ptp_tx_tstamp)
> +{
> +	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
> +	struct skb_shared_hwtstamps shhwtstamps;
> +	bool state_upd = false;
> +	u8 tstamp_ns_lo_bit;
> +	u64 tstamp;
> +
> +	tx_tstamp_caps = vport->tx_tstamp_caps;
> +	tstamp_ns_lo_bit = tx_tstamp_caps->tstamp_ns_lo_bit;
> +
> +	ptp_tx_tstamp->tstamp = le64_to_cpu(tstamp_latch->tstamp);
> +	ptp_tx_tstamp->tstamp >>= tstamp_ns_lo_bit;
> +
> +	state_upd = idpf_ptp_update_tstamp_tracker(tx_tstamp_caps,
> +						   ptp_tx_tstamp->skb,
> +						   IDPF_PTP_READ_VALUE,
> +						   IDPF_PTP_FREE);
> +	if (!state_upd)
> +		return -EINVAL;
> +
> +	tstamp = idpf_ptp_extend_ts(vport, ptp_tx_tstamp->tstamp);
> +	shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
> +	skb_tstamp_tx(ptp_tx_tstamp->skb, &shhwtstamps);
> +	consume_skb(ptp_tx_tstamp->skb);
> +
> +	spin_lock(&tx_tstamp_caps->lock_free);
> +	list_add(&ptp_tx_tstamp->list_member,
> +		 &tx_tstamp_caps->latches_free);
> +	spin_unlock(&tx_tstamp_caps->lock_free);
> +
> +	return 0;
> +}
> +
> +/**
> + * idpf_ptp_get_tx_tstamp_async_handler - Async callback for getting Tx tstamps
> + * @adapter: Driver specific private structure
> + * @xn: transaction for message
> + * @ctlq_msg: received message
> + *
> + * Read the tstamps Tx tstamp values from a received message and put them
> + * directly to the skb. The number of timestamps to read is specified by
> + * the virtchnl message.
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +static int
> +idpf_ptp_get_tx_tstamp_async_handler(struct idpf_adapter *adapter,
> +				     struct idpf_vc_xn *xn,
> +				     const struct idpf_ctlq_msg *ctlq_msg)
> +{
> +	struct virtchnl2_ptp_get_vport_tx_tstamp_latches *recv_tx_tstamp_msg;
> +	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
> +	struct virtchnl2_ptp_tx_tstamp_latch tstamp_latch;
> +	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
> +	struct idpf_vport *tstamp_vport = NULL;
> +	struct list_head *head;
> +	u16 num_latches;
> +	u32 vport_id;
> +	int err, i;
> +
> +	recv_tx_tstamp_msg = ctlq_msg->ctx.indirect.payload->va;
> +	vport_id = le32_to_cpu(recv_tx_tstamp_msg->vport_id);
> +
> +	idpf_for_each_vport(adapter, i) {
> +		struct idpf_vport *vport = adapter->vports[i];
> +
> +		if (!vport)
> +			continue;
> +
> +		if (vport->vport_id == vport_id) {
> +			tstamp_vport = vport;
> +			break;
> +		}
> +	}
> +
> +	if (!tstamp_vport || !tstamp_vport->tx_tstamp_caps)
> +		return -EINVAL;
> +
> +	tx_tstamp_caps = tstamp_vport->tx_tstamp_caps;
> +	num_latches = le16_to_cpu(recv_tx_tstamp_msg->num_latches);
> +
> +	head = &tx_tstamp_caps->latches_in_use;
> +	spin_lock(&tx_tstamp_caps->lock_in_use);
> +
> +	for (u16 i = 0; i < num_latches; i++) {
> +		tstamp_latch = recv_tx_tstamp_msg->tstamp_latches[i];
> +
> +		if (!tstamp_latch.valid)
> +			continue;
> +
> +		if (list_empty(head)) {
> +			err = -ENOBUFS;
> +			goto unlock;
> +		}
> +
> +		list_for_each_entry(ptp_tx_tstamp, head, list_member) {
> +			if (tstamp_latch.index == ptp_tx_tstamp->idx) {
> +				list_del(&ptp_tx_tstamp->list_member);
> +				err = idpf_ptp_get_tstamp_value(tstamp_vport,
> +								&tstamp_latch,
> +								ptp_tx_tstamp);
> +				if (err)
> +					goto unlock;
> +
> +				break;
> +			}
> +		}
> +	}
> +
> +unlock:
> +	spin_unlock(&tx_tstamp_caps->lock_in_use);
> +
> +	return err;
> +}
> +
> +/**
> + * idpf_ptp_get_tx_tstamp - Send virtchnl get Tx timestamp latches message
> + * @vport: Virtual port structure
> + *
> + * Send virtchnl get Tx tstamp message to read the value of the HW timestamp.
> + * The message contains a list of indexes set in the Tx descriptors.
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport)
> +{
> +	struct virtchnl2_ptp_get_vport_tx_tstamp_latches *send_tx_tstamp_msg;
> +	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
> +	struct idpf_vc_xn_params xn_params = {
> +		.vc_op = VIRTCHNL2_OP_PTP_GET_VPORT_TX_TSTAMP,
> +		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
> +		.async = true,
> +		.async_handler = idpf_ptp_get_tx_tstamp_async_handler,
> +	};
> +	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
> +	int reply_sz, size, msg_size;
> +	struct list_head *head;
> +	bool state_upd;
> +	u16 id = 0;
> +
> +	tx_tstamp_caps = vport->tx_tstamp_caps;
> +	head = &tx_tstamp_caps->latches_in_use;
> +
> +	size = struct_size(send_tx_tstamp_msg, tstamp_latches,
> +			   tx_tstamp_caps->num_entries);
> +	send_tx_tstamp_msg = kzalloc(size, GFP_KERNEL);
> +	if (!send_tx_tstamp_msg)
> +		return -ENOMEM;
> +
> +	spin_lock(&tx_tstamp_caps->lock_in_use);
> +	list_for_each_entry(ptp_tx_tstamp, head, list_member) {
> +		u8 idx;
> +
> +		state_upd = idpf_ptp_update_tstamp_tracker(tx_tstamp_caps,
> +							   ptp_tx_tstamp->skb,
> +							   IDPF_PTP_REQUEST,
> +							   IDPF_PTP_READ_VALUE);
> +		if (!state_upd)
> +			continue;
> +
> +		idx = ptp_tx_tstamp->idx;
> +		send_tx_tstamp_msg->tstamp_latches[id].index = idx;
> +		id++;
> +	}
> +	spin_unlock(&tx_tstamp_caps->lock_in_use);
> +
> +	msg_size = struct_size(send_tx_tstamp_msg, tstamp_latches, id);
> +	send_tx_tstamp_msg->vport_id = cpu_to_le32(vport->vport_id);
> +	send_tx_tstamp_msg->num_latches = cpu_to_le16(id);
> +	xn_params.send_buf.iov_base = send_tx_tstamp_msg;
> +	xn_params.send_buf.iov_len = msg_size;
> +
> +	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
> +	kfree(send_tx_tstamp_msg);
> +
> +	return min(reply_sz, 0);
> +}

