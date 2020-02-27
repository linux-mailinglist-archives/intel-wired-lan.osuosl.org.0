Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7986C170F44
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2020 04:59:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39D6B87E55;
	Thu, 27 Feb 2020 03:59:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T3WFY+7CXphU; Thu, 27 Feb 2020 03:59:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8959187E3D;
	Thu, 27 Feb 2020 03:59:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69C021BF23F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 03:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 650F086A94
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 03:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uEUY4AJR0ljN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2020 03:59:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 383C3864CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 03:59:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 19:59:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,490,1574150400"; d="scan'208";a="285204844"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Feb 2020 19:59:01 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Feb 2020 19:59:00 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.43]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.187]) with mapi id 14.03.0439.000;
 Wed, 26 Feb 2020 19:59:00 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue PATCH v3 1/2] igc: Add support
 for taprio offloading
Thread-Index: AQHV45GWH2Wd9xRfyUWRenIIXQRjvaguefsg
Date: Thu, 27 Feb 2020 03:59:00 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971FCCE4@ORSMSX103.amr.corp.intel.com>
References: <20200214235203.3910513-1-vinicius.gomes@intel.com>
 <20200214235203.3910513-2-vinicius.gomes@intel.com>
In-Reply-To: <20200214235203.3910513-2-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue PATCH v3 1/2] igc: Add support
 for taprio offloading
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vinicius Costa Gomes
> Sent: Friday, February 14, 2020 3:52 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next-queue PATCH v3 1/2] igc: Add support for
> taprio offloading
> 
> Adds support for translating taprio schedules into i225 cycles. This
> will allow schedules to run in the hardware, making the schedules
> enforcement more precise and saving CPU time.
> 
> Right now, the only simple schedules are allowed, complex schedules are
> rejected. "simple" in this context are schedules that each HW queue is
> opened and closed only once in each cycle.
> 
> Changing schedules is still not supported as well.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/Makefile      |   2 +-
>  drivers/net/ethernet/intel/igc/igc.h         |   7 +
>  drivers/net/ethernet/intel/igc/igc_defines.h |  12 ++
>  drivers/net/ethernet/intel/igc/igc_main.c    | 113 +++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_regs.h    |  12 ++
>  drivers/net/ethernet/intel/igc/igc_tsn.c     | 140 +++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_tsn.h     |   9 ++
>  7 files changed, 294 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_tsn.c
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_tsn.h

I'm using the TSN Scheduled TX Tools from https://gist.github.com/jeez/bd3afeff081ba64a695008dd8215866f, and the process (from both the README.etf and README.taprio) seems to work fine with an i210 (igb adapter) but when I try to use the same process with an i225 (igc based adapter) for the taprio session the system panics, freezing the system and leaving me a panic RIP frozen on my screen, but no hint of that panic got saved to disk (crash dump or log.)  I tried to get a capture via a serial console, but unfortunately it freezes to fast to get the trace out and instead of a full trace I am left with a single line from the panic:
[  718.732753] BUG: kernel NULL pointer dereference, address: 0000000000000008

I am able to get a jpg of the frozen screen which I can make available, though the start of the trace has scrolled off the top of the screen.  
> 
> diff --git a/drivers/net/ethernet/intel/igc/Makefile
> b/drivers/net/ethernet/intel/igc/Makefile
> index e3c164c12e10..3652f211f351 100644
> --- a/drivers/net/ethernet/intel/igc/Makefile
> +++ b/drivers/net/ethernet/intel/igc/Makefile
> @@ -8,4 +8,4 @@
>  obj-$(CONFIG_IGC) += igc.o
> 
>  igc-objs := igc_main.o igc_mac.o igc_i225.o igc_base.o igc_nvm.o igc_phy.o \
> -igc_ethtool.o igc_ptp.o igc_dump.o
> +igc_ethtool.o igc_ptp.o igc_dump.o igc_tsn.o
> diff --git a/drivers/net/ethernet/intel/igc/igc.h
> b/drivers/net/ethernet/intel/igc/igc.h
> index 0014828eec46..4c40dc8f276c 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -70,6 +70,7 @@ extern char igc_driver_version[];
>  #define IGC_FLAG_HAS_MSIX		BIT(13)
>  #define IGC_FLAG_VLAN_PROMISC		BIT(15)
>  #define IGC_FLAG_RX_LEGACY		BIT(16)
> +#define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
> 
>  #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
>  #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
> @@ -287,6 +288,9 @@ struct igc_ring {
>  	u8 reg_idx;                     /* physical index of the ring */
>  	bool launchtime_enable;		/* true if LaunchTime is
> enabled */
> 
> +	u32 start_time;
> +	u32 end_time;
> +
>  	/* everything past this point are written often */
>  	u16 next_to_clean;
>  	u16 next_to_use;
> @@ -421,6 +425,9 @@ struct igc_adapter {
>  	u32 max_frame_size;
>  	u32 min_frame_size;
> 
> +	ktime_t base_time;
> +	ktime_t cycle_time;
> +
>  	/* OS defined structs */
>  	struct pci_dev *pdev;
>  	/* lock for statistics */
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h
> b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 044c0f8d4c16..3077d0a69b04 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -377,6 +377,11 @@
>  #define I225_TXPBSIZE_DEFAULT	0x04000014 /* TXPBSIZE default */
>  #define IGC_RXPBS_CFG_TS_EN	0x80000000 /* Timestamp in Rx
> buffer */
> 
> +#define IGC_TXPBSIZE_TSN	0x04145145 /* 5k bytes buffer for each
> queue */
> +
> +#define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA
> packet size */
> +#define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */
> +
>  /* Time Sync Interrupt Causes */
>  #define IGC_TSICR_SYS_WRAP	BIT(0) /* SYSTIM Wrap around. */
>  #define IGC_TSICR_TXTS		BIT(1) /* Transmit Timestamp. */
> @@ -431,6 +436,13 @@
>  #define IGC_TSYNCTXCTL_START_SYNC		0x80000000  /*
> initiate sync */
>  #define IGC_TSYNCTXCTL_TXSYNSIG			0x00000020  /*
> Sample TX tstamp in PHY sop */
> 
> +/* Transmit Scheduling */
> +#define IGC_TQAVCTRL_TRANSMIT_MODE_TSN	0x00000001
> +#define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
> +
> +#define IGC_TXQCTL_STRICT_CYCLE		0x00000002
> +#define IGC_TXQCTL_STRICT_END		0x00000004
> +
>  /* Receive Checksum Control */
>  #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable
> */
>  #define IGC_RXCSUM_PCSD		0x00002000   /* packet checksum
> disabled */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 3407af11dff8..5fb52768de18 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -9,11 +9,13 @@
>  #include <linux/udp.h>
>  #include <linux/ip.h>
>  #include <linux/pm_runtime.h>
> +#include <net/pkt_sched.h>
> 
>  #include <net/ipv6.h>
> 
>  #include "igc.h"
>  #include "igc_hw.h"
> +#include "igc_tsn.h"
> 
>  #define DRV_VERSION	"0.0.1-k"
>  #define DRV_SUMMARY	"Intel(R) 2.5G Ethernet Linux Driver"
> @@ -106,6 +108,9 @@ void igc_reset(struct igc_adapter *adapter)
>  	/* Re-enable PTP, where applicable. */
>  	igc_ptp_reset(adapter);
> 
> +	/* Re-enable TSN offloading, where applicable. */
> +	igc_tsn_offload_apply(adapter);
> +
>  	igc_get_phy_info(hw);
>  }
> 
> @@ -4492,6 +4497,113 @@ static int igc_ioctl(struct net_device *netdev,
> struct ifreq *ifr, int cmd)
>  	}
>  }
> 
> +static bool validate_schedule(const struct tc_taprio_qopt_offload *qopt)
> +{
> +	int queue_uses[IGC_MAX_TX_QUEUES] = { };
> +	size_t n;
> +
> +	if (qopt->cycle_time_extension)
> +		return false;
> +
> +	for (n = 0; n < qopt->num_entries; n++) {
> +		const struct tc_taprio_sched_entry *e;
> +		int i;
> +
> +		e = &qopt->entries[n];
> +
> +		/* i225 only supports "global" frame preemption
> +		 * settings.
> +		 */
> +		if (e->command != TC_TAPRIO_CMD_SET_GATES)
> +			return false;
> +
> +		for (i = 0; i < IGC_MAX_TX_QUEUES; i++) {
> +			if (e->gate_mask & BIT(i))
> +				queue_uses[i]++;
> +
> +			if (queue_uses[i] > 1)
> +				return false;
> +		}
> +	}
> +
> +	return true;
> +}
> +
> +static int igc_save_qbv_schedule(struct igc_adapter *adapter,
> +				 struct tc_taprio_qopt_offload *qopt)
> +{
> +	u32 start_time = 0, end_time = 0;
> +	size_t n;
> +
> +	if (!qopt->enable) {
> +		adapter->base_time = 0;
> +		return 0;
> +	}
> +
> +	if (adapter->base_time)
> +		return -EALREADY;
> +
> +	if (!validate_schedule(qopt))
> +		return -EINVAL;
> +
> +	adapter->cycle_time = qopt->cycle_time;
> +	adapter->base_time = qopt->base_time;
> +
> +	/* FIXME: be a little smarter about cases when the gate for a
> +	 * queue stays open for more than one entry.
> +	 */
> +	for (n = 0; n < qopt->num_entries; n++) {
> +		struct tc_taprio_sched_entry *e = &qopt->entries[n];
> +		int i;
> +
> +		end_time += e->interval;
> +
> +		for (i = 0; i < IGC_MAX_TX_QUEUES; i++) {
> +			struct igc_ring *ring = adapter->tx_ring[i];
> +
> +			if (!(e->gate_mask & BIT(i)))
> +				continue;
> +
> +			ring->start_time = start_time;
> +			ring->end_time = end_time;
> +		}
> +
> +		start_time += e->interval;
> +	}
> +
> +	return 0;
> +}
> +
> +static int igc_tsn_enable_qbv_scheduling(struct igc_adapter *adapter,
> +					 struct tc_taprio_qopt_offload *qopt)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	int err;
> +
> +	if (hw->mac.type != igc_i225)
> +		return -EOPNOTSUPP;
> +
> +	err = igc_save_qbv_schedule(adapter, qopt);
> +	if (err)
> +		return err;
> +
> +	return igc_tsn_offload_apply(adapter);
> +}
> +
> +static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
> +			void *type_data)
> +{
> +	struct igc_adapter *adapter = netdev_priv(dev);
> +
> +	switch (type) {
> +	case TC_SETUP_QDISC_TAPRIO:
> +		return igc_tsn_enable_qbv_scheduling(adapter, type_data);
> +
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
>  static const struct net_device_ops igc_netdev_ops = {
>  	.ndo_open		= igc_open,
>  	.ndo_stop		= igc_close,
> @@ -4504,6 +4616,7 @@ static const struct net_device_ops igc_netdev_ops
> = {
>  	.ndo_set_features	= igc_set_features,
>  	.ndo_features_check	= igc_features_check,
>  	.ndo_do_ioctl		= igc_ioctl,
> +	.ndo_setup_tc           = igc_setup_tc,
>  };
> 
>  /* PCIe configuration access */
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h
> b/drivers/net/ethernet/intel/igc/igc_regs.h
> index d4af53a80f11..96dee3c1a5f7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -231,6 +231,18 @@
> 
>  #define IGC_RXPBS	0x02404  /* Rx Packet Buffer Size - RW */
> 
> +/* Transmit Scheduling Registers */
> +#define IGC_TQAVCTRL                   0x3570
> +#define IGC_TXQCTL(_n)                 (0x3344 + 0x4 * (_n))
> +#define IGC_BASET_L                    0x3314
> +#define IGC_BASET_H                    0x3318
> +#define IGC_QBVCYCLET                  0x331C
> +#define IGC_QBVCYCLET_S                0x3320
> +
> +#define IGC_STQT(_n)                   (0x3324 + 0x4 * (_n))
> +#define IGC_ENDQT(_n)                  (0x3334 + 0x4 * (_n))
> +#define IGC_DTXMXPKTSZ                 0x355C
> +
>  /* System Time Registers */
>  #define IGC_SYSTIML	0x0B600  /* System time register Low - RO */
>  #define IGC_SYSTIMH	0x0B604  /* System time register High - RO */
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c
> b/drivers/net/ethernet/intel/igc/igc_tsn.c
> new file mode 100644
> index 000000000000..257fe970afe8
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -0,0 +1,140 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c)  2019 Intel Corporation */
> +
> +#include "igc.h"
> +#include "igc_tsn.h"
> +
> +/* Returns the TSN specific registers to their default values after
> + * TSN offloading is disabled.
> + */
> +static int igc_tsn_disable_offload(struct igc_adapter *adapter)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 tqavctrl;
> +	int i;
> +
> +	if (!(adapter->flags & IGC_FLAG_TSN_QBV_ENABLED))
> +		return 0;
> +
> +	adapter->cycle_time = 0;
> +
> +	wr32(IGC_TXPBS, I225_TXPBSIZE_DEFAULT);
> +	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_DEFAULT);
> +
> +	tqavctrl = rd32(IGC_TQAVCTRL);
> +	tqavctrl &= ~(IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
> +		      IGC_TQAVCTRL_ENHANCED_QAV);
> +	wr32(IGC_TQAVCTRL, tqavctrl);
> +
> +	for (i = 0; i < adapter->num_tx_queues; i++) {
> +		struct igc_ring *ring = adapter->tx_ring[i];
> +
> +		ring->start_time = 0;
> +		ring->end_time = 0;
> +		ring->launchtime_enable = false;
> +
> +		wr32(IGC_TXQCTL(i), 0);
> +		wr32(IGC_STQT(i), 0);
> +		wr32(IGC_ENDQT(i), NSEC_PER_SEC);
> +	}
> +
> +	wr32(IGC_QBVCYCLET_S, NSEC_PER_SEC);
> +	wr32(IGC_QBVCYCLET, NSEC_PER_SEC);
> +
> +	adapter->flags &= ~IGC_FLAG_TSN_QBV_ENABLED;
> +
> +	return 0;
> +}
> +
> +static int igc_tsn_enable_offload(struct igc_adapter *adapter)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 tqavctrl, baset_l, baset_h;
> +	u32 sec, nsec, cycle;
> +	ktime_t base_time, systim;
> +	int i;
> +
> +	if (adapter->flags & IGC_FLAG_TSN_QBV_ENABLED)
> +		return 0;
> +
> +	cycle = adapter->cycle_time;
> +	base_time = adapter->base_time;
> +
> +	wr32(IGC_TSAUXC, 0);
> +	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
> +	wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
> +
> +	tqavctrl = rd32(IGC_TQAVCTRL);
> +	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
> IGC_TQAVCTRL_ENHANCED_QAV;
> +	wr32(IGC_TQAVCTRL, tqavctrl);
> +
> +	wr32(IGC_QBVCYCLET_S, cycle);
> +	wr32(IGC_QBVCYCLET, cycle);
> +
> +	for (i = 0; i < adapter->num_tx_queues; i++) {
> +		struct igc_ring *ring = adapter->tx_ring[i];
> +		u32 txqctl = 0;
> +
> +		wr32(IGC_STQT(i), ring->start_time);
> +		wr32(IGC_ENDQT(i), ring->end_time);
> +
> +		if (adapter->base_time) {
> +			/* If we have a base_time we are in "taprio"
> +			 * mode and we need to be strict about the
> +			 * cycles: only transmit a packet if it can be
> +			 * completed during that cycle.
> +			 */
> +			txqctl |= IGC_TXQCTL_STRICT_CYCLE |
> +				IGC_TXQCTL_STRICT_END;
> +		}
> +
> +		wr32(IGC_TXQCTL(i), txqctl);
> +	}
> +
> +	nsec = rd32(IGC_SYSTIML);
> +	sec = rd32(IGC_SYSTIMH);
> +
> +	systim = ktime_set(sec, nsec);
> +
> +	if (ktime_compare(systim, base_time) > 0) {
> +		s64 n;
> +
> +		n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
> +		base_time = ktime_add_ns(base_time, (n + 1) * cycle);
> +	}
> +
> +	baset_h = div_s64_rem(base_time, NSEC_PER_SEC, &baset_l);
> +
> +	wr32(IGC_BASET_H, baset_h);
> +	wr32(IGC_BASET_L, baset_l);
> +
> +	adapter->flags |= IGC_FLAG_TSN_QBV_ENABLED;
> +
> +	return 0;
> +}
> +
> +int igc_tsn_offload_apply(struct igc_adapter *adapter)
> +{
> +	bool is_any_enabled = adapter->base_time;
> +
> +	if (!(adapter->flags & IGC_FLAG_TSN_QBV_ENABLED) &&
> !is_any_enabled)
> +		return 0;
> +
> +	if (!is_any_enabled) {
> +		int err = igc_tsn_disable_offload(adapter);
> +
> +		if (err < 0)
> +			return err;
> +
> +		/* The BASET registers aren't cleared when writing
> +		 * into them, force a reset if the interface is
> +		 * running.
> +		 */
> +		if (netif_running(adapter->netdev))
> +			schedule_work(&adapter->reset_task);
> +
> +		return 0;
> +	}
> +
> +	return igc_tsn_enable_offload(adapter);
> +}
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h
> b/drivers/net/ethernet/intel/igc/igc_tsn.h
> new file mode 100644
> index 000000000000..f76bc86ddccd
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (c)  2020 Intel Corporation */
> +
> +#ifndef _IGC_TSN_H_
> +#define _IGC_TSN_H_
> +
> +int igc_tsn_offload_apply(struct igc_adapter *adapter);
> +
> +#endif /* _IGC_BASE_H */
> --
> 2.25.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
