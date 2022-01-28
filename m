Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9647A49FA9E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 14:21:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E15F416E1;
	Fri, 28 Jan 2022 13:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ew0j0vPilZo; Fri, 28 Jan 2022 13:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97D1D416D2;
	Fri, 28 Jan 2022 13:21:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 66B181BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 13:21:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 457E0416D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 13:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pYZ-4hhg8tgm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 13:21:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED0084018C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 13:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643376098; x=1674912098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bbOJZm/eJ3hu7mPFtkFbzZCxqbzPyBs+Jbz/Qwp5ShI=;
 b=NmSkeO2rx9Hzp3IpAqgYNUtkV0goIX+0sGwdSijO3RBWVPeib2P+I6f2
 Xcnty5yT77juclqC4Zbjrx/9l/qOwEurv3cW/JV9G6bbmVrLsu/eYXXyz
 RwtttDRGBNzK3Pi1h78MpvA8Je2JaZrgCBn3kjPG/lYgeUlsO45eYIUUH
 E6Lgldb7EMt8e5H7jFWaZJGSUtsC0e2Le6byVVtSgpUnkbOR/yqk3y7rv
 baBMBZjwuRrz2FtVVSwhJX8q9z4VNBzgt8i25lhLX78XRKSDXvk5MiW3l
 klSAcshhpKJh1BBLCEiNWtBxRhs+i9aoffn1lODAn7+ohWE8XIHvIez9x Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="247339717"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="247339717"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 05:21:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="564192976"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 28 Jan 2022 05:21:35 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20SDLYqb004799; Fri, 28 Jan 2022 13:21:34 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri, 28 Jan 2022 14:19:55 +0100
Message-Id: <20220128131955.21949-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128001009.721392-8-alan.brady@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-8-alan.brady@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/19] iecm: finish virtchnl
 messages
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
Cc: Madhu Chittim <madhu.chittim@intel.com>, intel-wired-lan@lists.osuosl.org,
 Phani Burra <phani.r.burra@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 27 Jan 2022 16:09:57 -0800

> This adds the rest of the needed virtchnl messages mostly related to
> negotiating ptypes and initializing queue registers.
> 
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/iecm/iecm_lib.c    |   21 +-
>  drivers/net/ethernet/intel/iecm/iecm_txrx.c   |  226 +++-
>  .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 1187 ++++++++++++++++-
>  drivers/net/ethernet/intel/include/iecm.h     |   36 +
>  .../net/ethernet/intel/include/iecm_txrx.h    |  198 ++-
>  5 files changed, 1635 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> index 4e9cc7f2d138..aab8ee40424e 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> @@ -10,6 +10,25 @@ const char * const iecm_vport_vc_state_str[] = {
>  };
>  EXPORT_SYMBOL(iecm_vport_vc_state_str);
>  
> +/**
> + * iecm_is_feature_ena - Determine if a particular feature is enabled
> + * @vport: vport to check
> + * @feature: netdev flag to check
> + *
> + * Returns true or false if a particular feature is enabled.
> + */
> +bool iecm_is_feature_ena(struct iecm_vport *vport, netdev_features_t feature)
> +{
> +	bool ena;
> +
> +	switch (feature) {
> +	default:
> +		ena = vport->netdev->features & feature;
> +		break;
> +	}
> +	return ena;
> +}

This makes absolutely no sense, please rewrite to

	return vport->netdev->features & feature;

If it will be expanded later, convert it to a switch-case only then.

> +
>  /**
>   * iecm_cfg_hw - Initialize HW struct
>   * @adapter: adapter to setup hw struct for
> @@ -132,7 +151,7 @@ iecm_vport_alloc(struct iecm_adapter *adapter, int vport_id)
>  	adapter->num_alloc_vport++;
>  
>  	/* Setup default MSIX irq handler for the vport */
> -	vport->irq_q_handler = iecm_vport_intr_clean_queues;
> +	vport->irq_q_handler = NULL;
>  	vport->q_vector_base = IECM_NONQ_VEC;
>  
>  	mutex_init(&vport->stop_mutex);
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_txrx.c b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> index 2dfb0be002e3..bd0cfd89bf03 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> @@ -3,22 +3,220 @@
>  
>  #include "iecm.h"
>  
> -/**
> - * iecm_vport_intr_clean_queues - MSIX mode Interrupt Handler
> - * @irq: interrupt number
> - * @data: pointer to a q_vector
> - *
> - */
> -irqreturn_t
> -iecm_vport_intr_clean_queues(int __always_unused irq, void *data)
> -{
> -	struct iecm_q_vector *q_vector = (struct iecm_q_vector *)data;
> +const struct iecm_rx_ptype_decoded iecm_ptype_lookup[IECM_RX_MAX_PTYPE] = {
> +	/* ptype indices are dynamic and package dependent. Indices represented
> +	 * in this lookup table are for reference and will be replaced by the
> +	 * values which CP sends. Also these values are static for older
> +	 * versions of virtchnl and if VIRTCHNL2_CAP_PTYPE is not set in
> +	 * virtchnl2_get_capabilities.
> +	 */
> +	/* L2 Packet types */
> +	IECM_PTT_UNUSED_ENTRY(0),
> +	IECM_PTT(1,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
> +	IECM_PTT(2,  L2, NONE, NOF, NONE, NONE, NOF, TS,   PAY2),
> +	IECM_PTT(3,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
> +	IECM_PTT_UNUSED_ENTRY(4),
> +	IECM_PTT_UNUSED_ENTRY(5),
> +	IECM_PTT(6,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
> +	IECM_PTT(7,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
> +	IECM_PTT_UNUSED_ENTRY(8),
> +	IECM_PTT_UNUSED_ENTRY(9),
> +	IECM_PTT(10, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
> +	IECM_PTT(11, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),
> +	IECM_PTT(12, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(13, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(14, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(15, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(16, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(17, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(18, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(19, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(20, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(21, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
>  
> -	q_vector->total_events++;
> -	napi_schedule(&q_vector->napi);
> +	/* Non Tunneled IPv4 */
> +	IECM_PTT(22, IP, IPV4, FRG, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(23, IP, IPV4, NOF, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(24, IP, IPV4, NOF, NONE, NONE, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(25),
> +	IECM_PTT(26, IP, IPV4, NOF, NONE, NONE, NOF, TCP,  PAY4),
> +	IECM_PTT(27, IP, IPV4, NOF, NONE, NONE, NOF, SCTP, PAY4),
> +	IECM_PTT(28, IP, IPV4, NOF, NONE, NONE, NOF, ICMP, PAY4),
>  
> -	return IRQ_HANDLED;
> -}
> +	/* IPv4 --> IPv4 */
> +	IECM_PTT(29, IP, IPV4, NOF, IP_IP, IPV4, FRG, NONE, PAY3),
> +	IECM_PTT(30, IP, IPV4, NOF, IP_IP, IPV4, NOF, NONE, PAY3),
> +	IECM_PTT(31, IP, IPV4, NOF, IP_IP, IPV4, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(32),
> +	IECM_PTT(33, IP, IPV4, NOF, IP_IP, IPV4, NOF, TCP,  PAY4),
> +	IECM_PTT(34, IP, IPV4, NOF, IP_IP, IPV4, NOF, SCTP, PAY4),
> +	IECM_PTT(35, IP, IPV4, NOF, IP_IP, IPV4, NOF, ICMP, PAY4),
> +
> +	/* IPv4 --> IPv6 */
> +	IECM_PTT(36, IP, IPV4, NOF, IP_IP, IPV6, FRG, NONE, PAY3),
> +	IECM_PTT(37, IP, IPV4, NOF, IP_IP, IPV6, NOF, NONE, PAY3),
> +	IECM_PTT(38, IP, IPV4, NOF, IP_IP, IPV6, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(39),
> +	IECM_PTT(40, IP, IPV4, NOF, IP_IP, IPV6, NOF, TCP,  PAY4),
> +	IECM_PTT(41, IP, IPV4, NOF, IP_IP, IPV6, NOF, SCTP, PAY4),
> +	IECM_PTT(42, IP, IPV4, NOF, IP_IP, IPV6, NOF, ICMP, PAY4),
> +
> +	/* IPv4 --> GRE/NAT */
> +	IECM_PTT(43, IP, IPV4, NOF, IP_GRENAT, NONE, NOF, NONE, PAY3),
> +
> +	/* IPv4 --> GRE/NAT --> IPv4 */
> +	IECM_PTT(44, IP, IPV4, NOF, IP_GRENAT, IPV4, FRG, NONE, PAY3),
> +	IECM_PTT(45, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, NONE, PAY3),
> +	IECM_PTT(46, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(47),
> +	IECM_PTT(48, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, TCP,  PAY4),
> +	IECM_PTT(49, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, SCTP, PAY4),
> +	IECM_PTT(50, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, ICMP, PAY4),
> +
> +	/* IPv4 --> GRE/NAT --> IPv6 */
> +	IECM_PTT(51, IP, IPV4, NOF, IP_GRENAT, IPV6, FRG, NONE, PAY3),
> +	IECM_PTT(52, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, NONE, PAY3),
> +	IECM_PTT(53, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(54),
> +	IECM_PTT(55, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, TCP,  PAY4),
> +	IECM_PTT(56, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, SCTP, PAY4),
> +	IECM_PTT(57, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, ICMP, PAY4),
> +
> +	/* IPv4 --> GRE/NAT --> MAC */
> +	IECM_PTT(58, IP, IPV4, NOF, IP_GRENAT_MAC, NONE, NOF, NONE, PAY3),
> +
> +	/* IPv4 --> GRE/NAT --> MAC --> IPv4 */
> +	IECM_PTT(59, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, FRG, NONE, PAY3),
> +	IECM_PTT(60, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, NONE, PAY3),
> +	IECM_PTT(61, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(62),
> +	IECM_PTT(63, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, TCP,  PAY4),
> +	IECM_PTT(64, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, SCTP, PAY4),
> +	IECM_PTT(65, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, ICMP, PAY4),
> +
> +	/* IPv4 --> GRE/NAT -> MAC --> IPv6 */
> +	IECM_PTT(66, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, FRG, NONE, PAY3),
> +	IECM_PTT(67, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, NONE, PAY3),
> +	IECM_PTT(68, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(69),
> +	IECM_PTT(70, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, TCP,  PAY4),
> +	IECM_PTT(71, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, SCTP, PAY4),
> +	IECM_PTT(72, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, ICMP, PAY4),
> +
> +	/* IPv4 --> GRE/NAT --> MAC/VLAN */
> +	IECM_PTT(73, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, NONE, NOF, NONE, PAY3),
> +
> +	/* IPv4 ---> GRE/NAT -> MAC/VLAN --> IPv4 */
> +	IECM_PTT(74, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, FRG, NONE, PAY3),
> +	IECM_PTT(75, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, NONE, PAY3),
> +	IECM_PTT(76, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(77),
> +	IECM_PTT(78, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, TCP,  PAY4),
> +	IECM_PTT(79, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, SCTP, PAY4),
> +	IECM_PTT(80, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, ICMP, PAY4),
> +
> +	/* IPv4 -> GRE/NAT -> MAC/VLAN --> IPv6 */
> +	IECM_PTT(81, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, FRG, NONE, PAY3),
> +	IECM_PTT(82, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, NONE, PAY3),
> +	IECM_PTT(83, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(84),
> +	IECM_PTT(85, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, TCP,  PAY4),
> +	IECM_PTT(86, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, SCTP, PAY4),
> +	IECM_PTT(87, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),
> +
> +	/* Non Tunneled IPv6 */
> +	IECM_PTT(88, IP, IPV6, FRG, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(89, IP, IPV6, NOF, NONE, NONE, NOF, NONE, PAY3),
> +	IECM_PTT(90, IP, IPV6, NOF, NONE, NONE, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(91),
> +	IECM_PTT(92, IP, IPV6, NOF, NONE, NONE, NOF, TCP,  PAY4),
> +	IECM_PTT(93, IP, IPV6, NOF, NONE, NONE, NOF, SCTP, PAY4),
> +	IECM_PTT(94, IP, IPV6, NOF, NONE, NONE, NOF, ICMP, PAY4),
> +
> +	/* IPv6 --> IPv4 */
> +	IECM_PTT(95,  IP, IPV6, NOF, IP_IP, IPV4, FRG, NONE, PAY3),
> +	IECM_PTT(96,  IP, IPV6, NOF, IP_IP, IPV4, NOF, NONE, PAY3),
> +	IECM_PTT(97,  IP, IPV6, NOF, IP_IP, IPV4, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(98),
> +	IECM_PTT(99,  IP, IPV6, NOF, IP_IP, IPV4, NOF, TCP,  PAY4),
> +	IECM_PTT(100, IP, IPV6, NOF, IP_IP, IPV4, NOF, SCTP, PAY4),
> +	IECM_PTT(101, IP, IPV6, NOF, IP_IP, IPV4, NOF, ICMP, PAY4),
> +
> +	/* IPv6 --> IPv6 */
> +	IECM_PTT(102, IP, IPV6, NOF, IP_IP, IPV6, FRG, NONE, PAY3),
> +	IECM_PTT(103, IP, IPV6, NOF, IP_IP, IPV6, NOF, NONE, PAY3),
> +	IECM_PTT(104, IP, IPV6, NOF, IP_IP, IPV6, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(105),
> +	IECM_PTT(106, IP, IPV6, NOF, IP_IP, IPV6, NOF, TCP,  PAY4),
> +	IECM_PTT(107, IP, IPV6, NOF, IP_IP, IPV6, NOF, SCTP, PAY4),
> +	IECM_PTT(108, IP, IPV6, NOF, IP_IP, IPV6, NOF, ICMP, PAY4),
> +
> +	/* IPv6 --> GRE/NAT */
> +	IECM_PTT(109, IP, IPV6, NOF, IP_GRENAT, NONE, NOF, NONE, PAY3),
> +
> +	/* IPv6 --> GRE/NAT -> IPv4 */
> +	IECM_PTT(110, IP, IPV6, NOF, IP_GRENAT, IPV4, FRG, NONE, PAY3),
> +	IECM_PTT(111, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, NONE, PAY3),
> +	IECM_PTT(112, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(113),
> +	IECM_PTT(114, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, TCP,  PAY4),
> +	IECM_PTT(115, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, SCTP, PAY4),
> +	IECM_PTT(116, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, ICMP, PAY4),
> +
> +	/* IPv6 --> GRE/NAT -> IPv6 */
> +	IECM_PTT(117, IP, IPV6, NOF, IP_GRENAT, IPV6, FRG, NONE, PAY3),
> +	IECM_PTT(118, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, NONE, PAY3),
> +	IECM_PTT(119, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(120),
> +	IECM_PTT(121, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, TCP,  PAY4),
> +	IECM_PTT(122, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, SCTP, PAY4),
> +	IECM_PTT(123, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, ICMP, PAY4),
> +
> +	/* IPv6 --> GRE/NAT -> MAC */
> +	IECM_PTT(124, IP, IPV6, NOF, IP_GRENAT_MAC, NONE, NOF, NONE, PAY3),
> +
> +	/* IPv6 --> GRE/NAT -> MAC -> IPv4 */
> +	IECM_PTT(125, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, FRG, NONE, PAY3),
> +	IECM_PTT(126, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, NONE, PAY3),
> +	IECM_PTT(127, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(128),
> +	IECM_PTT(129, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, TCP,  PAY4),
> +	IECM_PTT(130, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, SCTP, PAY4),
> +	IECM_PTT(131, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, ICMP, PAY4),
> +
> +	/* IPv6 --> GRE/NAT -> MAC -> IPv6 */
> +	IECM_PTT(132, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, FRG, NONE, PAY3),
> +	IECM_PTT(133, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, NONE, PAY3),
> +	IECM_PTT(134, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(135),
> +	IECM_PTT(136, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, TCP,  PAY4),
> +	IECM_PTT(137, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, SCTP, PAY4),
> +	IECM_PTT(138, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, ICMP, PAY4),
> +
> +	/* IPv6 --> GRE/NAT -> MAC/VLAN */
> +	IECM_PTT(139, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, NONE, NOF, NONE, PAY3),
> +
> +	/* IPv6 --> GRE/NAT -> MAC/VLAN --> IPv4 */
> +	IECM_PTT(140, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, FRG, NONE, PAY3),
> +	IECM_PTT(141, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, NONE, PAY3),
> +	IECM_PTT(142, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(143),
> +	IECM_PTT(144, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, TCP,  PAY4),
> +	IECM_PTT(145, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, SCTP, PAY4),
> +	IECM_PTT(146, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, ICMP, PAY4),
> +
> +	/* IPv6 --> GRE/NAT -> MAC/VLAN --> IPv6 */
> +	IECM_PTT(147, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, FRG, NONE, PAY3),
> +	IECM_PTT(148, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, NONE, PAY3),
> +	IECM_PTT(149, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, UDP,  PAY4),
> +	IECM_PTT_UNUSED_ENTRY(150),
> +	IECM_PTT(151, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, TCP,  PAY4),
> +	IECM_PTT(152, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, SCTP, PAY4),
> +	IECM_PTT(153, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),
> +
> +	/* rest of the entries are unused */
> +};
> +EXPORT_SYMBOL(iecm_ptype_lookup);
>  
>  /**
>   * iecm_vport_init_num_qs - Initialize number of queues
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> index d8152e657e24..c4ae56897d1b 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> @@ -859,6 +859,15 @@ static int iecm_recv_get_caps_msg(struct iecm_adapter *adapter)
>  				sizeof(struct virtchnl2_get_capabilities));
>  }
>  
> +/**
> + * iecm_vport_init_max_qs - Initialize max queues supported on this device
> + * @adapter: Driver specific private structure
> + */
> +static void iecm_vport_init_max_qs(struct iecm_adapter *adapter)
> +{
> +	adapter->max_queue_limit = IECM_MAX_Q;
> +}
> +
>  /**
>   * iecm_get_reg_intr_vecs - Get vector queue register offset
>   * @vport: virtual port structure
> @@ -901,6 +910,199 @@ int iecm_get_reg_intr_vecs(struct iecm_vport *vport,
>  }
>  EXPORT_SYMBOL(iecm_get_reg_intr_vecs);
>  
> +/**
> + * iecm_vport_get_q_reg - Get the queue registers for the vport
> + * @reg_vals: register values needing to be set
> + * @num_regs: amount we expect to fill
> + * @q_type: queue model
> + * @chunks: queue regs received over mailbox
> + */
> +static int
> +iecm_vport_get_q_reg(u32 *reg_vals, int num_regs, u32 q_type,
> +		     struct virtchnl2_queue_reg_chunks *chunks)
> +{
> +	u16 num_chunks = le16_to_cpu(chunks->num_chunks);
> +	int reg_filled = 0, i;
> +	u32 reg_val;
> +	u16 num_q;
> +
> +	while (num_chunks) {
> +		struct virtchnl2_queue_reg_chunk *chunk = &chunks->chunks[num_chunks - 1];
> +
> +		if (le32_to_cpu(chunk->type) == q_type) {
> +			num_q = le32_to_cpu(chunk->num_queues);
> +			reg_val = le64_to_cpu(chunk->qtail_reg_start);
> +			for (i = 0; i < num_q; i++) {
> +				if (reg_filled == num_regs)
> +					break;
> +				reg_vals[reg_filled++] = reg_val;
> +				reg_val +=
> +					le32_to_cpu(chunk->qtail_reg_spacing);
> +			}
> +		}
> +		num_chunks--;
> +	}

	while (num_chunks--) {
		struct ... = ... [num_chunks];

		if (le32_to_cpu(chunk->type) != q_type)
			continue;

		...
	}

-1 indent level, -complexity.

> +
> +	return reg_filled;
> +}
> +
> +/**
> + * __iecm_queue_reg_init - initialize queue registers
> + * @vport: virtual port structure
> + * @reg_vals: registers we are initializing
> + * @num_regs: how many registers there are in total
> + * @q_type: queue model
> + *
> + * Return number of queues that are initialized
> + */
> +static int
> +__iecm_queue_reg_init(struct iecm_vport *vport, u32 *reg_vals,
> +		      int num_regs, u32 q_type)
> +{
> +	struct iecm_hw *hw = &vport->adapter->hw;
> +	struct iecm_queue *q;
> +	int i, j, k = 0;
> +
> +	switch (q_type) {
> +	case VIRTCHNL2_QUEUE_TYPE_TX:
> +		for (i = 0; i < vport->num_txq_grp; i++) {
> +			struct iecm_txq_group *tx_qgrp = &vport->txq_grps[i];
> +
> +			for (j = 0; j < tx_qgrp->num_txq; j++) {
> +				if (k == num_regs)
> +					break;
> +
> +				tx_qgrp->txqs[j]->tail =
> +				  (__force u8 __iomem *)(hw->hw_addr +
> +							 reg_vals[k]);
> +				k++;
> +			}
> +		}
> +		break;
> +	case VIRTCHNL2_QUEUE_TYPE_RX:
> +		for (i = 0; i < vport->num_rxq_grp; i++) {
> +			struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> +			int num_rxq = rx_qgrp->singleq.num_rxq;
> +
> +			for (j = 0; j < num_rxq; j++) {
> +				if (k == num_regs)
> +					break;
> +
> +				q = rx_qgrp->singleq.rxqs[j];
> +				q->tail = (__force u8 __iomem *)(hw->hw_addr +
> +								 reg_vals[k]);
> +				k++;
> +			}
> +		}
> +		break;
> +	case VIRTCHNL2_QUEUE_TYPE_RX_BUFFER:
> +		for (i = 0; i < vport->num_rxq_grp; i++) {
> +			struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> +
> +			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
> +				if (k == num_regs)
> +					break;
> +
> +				q = &rx_qgrp->splitq.bufq_sets[j].bufq;
> +				q->tail = (__force u8 __iomem *)(hw->hw_addr +
> +								 reg_vals[k]);
> +				k++;
> +			}
> +		}
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	return k;
> +}
> +
> +/**
> + * iecm_queue_reg_init - initialize queue registers
> + * @vport: virtual port structure
> + *
> + * Return 0 on success, negative on failure
> + */
> +static int iecm_queue_reg_init(struct iecm_vport *vport)
> +{
> +	struct virtchnl2_create_vport *vport_params;
> +	struct virtchnl2_queue_reg_chunks *chunks;
> +	int num_regs, ret = 0;
> +	u32 *reg_vals;
> +
> +	/* We may never deal with more than 256 same type of queues */
> +	reg_vals = kmalloc(sizeof(void *) * IECM_LARGE_MAX_Q,
> +			   GFP_KERNEL);
> +	if (!reg_vals)
> +		return -ENOMEM;
> +
> +	if (vport->adapter->config_data.req_qs_chunks) {
> +		struct virtchnl2_add_queues *vc_aq =
> +		  (struct virtchnl2_add_queues *)
> +		  vport->adapter->config_data.req_qs_chunks;
> +		chunks = &vc_aq->chunks;
> +	} else {
> +		vport_params = (struct virtchnl2_create_vport *)
> +			vport->adapter->vport_params_recvd[0];
> +		chunks = &vport_params->chunks;
> +	}
> +
> +	/* Initialize Tx queue tail register address */
> +	num_regs = iecm_vport_get_q_reg(reg_vals, IECM_LARGE_MAX_Q,
> +					VIRTCHNL2_QUEUE_TYPE_TX,
> +					chunks);
> +	if (num_regs < vport->num_txq) {
> +		ret = -EINVAL;
> +		goto free_reg_vals;
> +	}
> +
> +	num_regs = __iecm_queue_reg_init(vport, reg_vals, num_regs,
> +					 VIRTCHNL2_QUEUE_TYPE_TX);
> +	if (num_regs < vport->num_txq) {
> +		ret = -EINVAL;
> +		goto free_reg_vals;
> +	}
> +
> +	/* Initialize Rx/buffer queue tail register address based on Rx queue
> +	 * model
> +	 */
> +	if (iecm_is_queue_model_split(vport->rxq_model)) {
> +		num_regs = iecm_vport_get_q_reg(reg_vals, IECM_LARGE_MAX_Q,
> +						VIRTCHNL2_QUEUE_TYPE_RX_BUFFER,
> +						chunks);
> +		if (num_regs < vport->num_bufq) {
> +			ret = -EINVAL;
> +			goto free_reg_vals;
> +		}
> +
> +		num_regs = __iecm_queue_reg_init(vport, reg_vals, num_regs,
> +						 VIRTCHNL2_QUEUE_TYPE_RX_BUFFER);
> +		if (num_regs < vport->num_bufq) {
> +			ret = -EINVAL;
> +			goto free_reg_vals;
> +		}
> +	} else {
> +		num_regs = iecm_vport_get_q_reg(reg_vals, IECM_LARGE_MAX_Q,
> +						VIRTCHNL2_QUEUE_TYPE_RX,
> +						chunks);
> +		if (num_regs < vport->num_rxq) {
> +			ret = -EINVAL;
> +			goto free_reg_vals;
> +		}
> +
> +		num_regs = __iecm_queue_reg_init(vport, reg_vals, num_regs,
> +						 VIRTCHNL2_QUEUE_TYPE_RX);
> +		if (num_regs < vport->num_rxq) {
> +			ret = -EINVAL;
> +			goto free_reg_vals;
> +		}
> +	}
> +
> +free_reg_vals:
> +	kfree(reg_vals);
> +	return ret;
> +}
> +
>  /**
>   * iecm_send_create_vport_msg - Send virtchnl create vport message
>   * @adapter: Driver specific private structure
> @@ -943,6 +1145,66 @@ static int iecm_send_create_vport_msg(struct iecm_adapter *adapter)
>  				(u8 *)vport_msg);
>  }
>  
> +/**
> + * iecm_check_descs - Verify we have the descriptor support required
> + * @vport: virtual port structure
> + * @rx_desc_ids: Rx descriptor ids to check
> + * @tx_desc_ids: Tx descriptor ids to check
> + * @rxq_model: Rx queue model
> + * @txq_model: Tx queue model
> + *
> + * Returns 0 on success, negative if we didn't get sufficient descriptor
> + * support.
> + */
> +int iecm_check_descs(struct iecm_vport *vport, u64 rx_desc_ids,
> +		     u64 tx_desc_ids, u16 rxq_model, u16 txq_model)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +
> +	if (rxq_model == VIRTCHNL2_QUEUE_MODEL_SPLIT) {
> +		if (!(rx_desc_ids & VIRTCHNL2_RXDID_1_FLEX_SPLITQ_M)) {
> +			dev_err(&adapter->pdev->dev, "No supported RX descriptors provided");
> +			return -EINVAL;
> +		}
> +	} else {
> +		if (!(rx_desc_ids & VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M))
> +			vport->base_rxd = true;
> +	}
> +
> +	if (txq_model == VIRTCHNL2_QUEUE_MODEL_SPLIT) {
> +#define MIN_SUPPORT_TXDID (\
> +		VIRTCHNL2_TXDID_FLEX_FLOW_SCHED |\
> +		VIRTCHNL2_TXDID_FLEX_TSO_CTX |\
> +		VIRTCHNL2_TXDID_FLEX_DATA)
> +		if ((tx_desc_ids & MIN_SUPPORT_TXDID) != MIN_SUPPORT_TXDID) {
> +			dev_err(&adapter->pdev->dev, "Minimum TX descriptor support not provided");
> +			return -EINVAL;
> +		}
> +	}
> +	return 0;
> +}
> +EXPORT_SYMBOL(iecm_check_descs);
> +
> +/**
> + * iecm_get_supported_desc_ids - Get supported Rx and Tx descriptor ids
> + * @vport: virtual port structure
> + *
> + * Return 0 on success, error on failure
> + */
> +static int iecm_get_supported_desc_ids(struct iecm_vport *vport)
> +{
> +	struct virtchnl2_create_vport *vport_msg;
> +
> +	vport_msg = (struct virtchnl2_create_vport *)
> +			vport->adapter->vport_params_recvd[0];
> +	vport_msg->rx_desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_1_FLEX_SPLITQ_M);
> +	vport_msg->tx_desc_ids = cpu_to_le64(MIN_SUPPORT_TXDID);
> +
> +	return iecm_check_descs(vport, le64_to_cpu(vport_msg->rx_desc_ids),
> +				le64_to_cpu(vport_msg->tx_desc_ids),
> +				vport->rxq_model, vport->txq_model);
> +}
> +
>  /**
>   * iecm_recv_create_vport_msg - Receive virtchnl create vport message
>   * @adapter: Driver specific private structure
> @@ -1333,6 +1595,9 @@ int iecm_send_config_rx_queues_msg(struct iecm_vport *vport)
>  					bufq->rx_buf_stride;
>  				qi[k].rx_buffer_low_watermark =
>  					cpu_to_le16(bufq->rx_buffer_low_watermark);
> +				if (iecm_is_feature_ena(vport, NETIF_F_GRO_HW))
> +					qi[k].qflags |=
> +						cpu_to_le16(VIRTCHNL2_RXQ_RSC);
>  			}
>  		}
>  
> @@ -1361,6 +1626,9 @@ int iecm_send_config_rx_queues_msg(struct iecm_vport *vport)
>  					qi[k].hdr_buffer_size =
>  						cpu_to_le16(rxq->rx_hbuf_size);
>  				}
> +				if (iecm_is_feature_ena(vport, NETIF_F_GRO_HW))
> +					qi[k].qflags |=
> +						cpu_to_le16(VIRTCHNL2_RXQ_RSC);
>  			} else {
>  				rxq = rx_qgrp->singleq.rxqs[j];
>  			}
> @@ -1968,6 +2236,765 @@ int iecm_send_add_queues_msg(struct iecm_vport *vport, u16 num_tx_q,
>  	return err;
>  }
>  
> +/**
> + * iecm_send_alloc_vectors_msg - Send virtchnl alloc vectors message
> + * @adapter: Driver specific private structure
> + * @num_vectors: number of vectors to be allocated
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +int iecm_send_alloc_vectors_msg(struct iecm_adapter *adapter, u16 num_vectors)
> +{
> +	struct virtchnl2_alloc_vectors *alloc_vec;
> +	struct virtchnl2_alloc_vectors ac = {0};
> +	int size, err;
> +
> +	ac.num_vectors = cpu_to_le16(num_vectors);
> +
> +	err = iecm_send_mb_msg(adapter, VIRTCHNL2_OP_ALLOC_VECTORS,
> +			       sizeof(ac), (u8 *)&ac);
> +	if (err)
> +		return err;
> +
> +	err = iecm_wait_for_event(adapter, IECM_VC_ALLOC_VECTORS,
> +				  IECM_VC_ALLOC_VECTORS_ERR);
> +	if (err)
> +		return err;
> +
> +	size = sizeof(struct virtchnl2_alloc_vectors) +
> +		((num_vectors - 1) *
> +		sizeof(struct virtchnl2_vector_chunk));
> +
> +	kfree(adapter->req_vec_chunks);
> +	adapter->req_vec_chunks = NULL;
> +	adapter->req_vec_chunks = kzalloc(size, GFP_KERNEL);
> +	if (!adapter->req_vec_chunks) {
> +		err = -ENOMEM;
> +		goto error;
> +	}
> +	memcpy(adapter->req_vec_chunks, adapter->vc_msg, size);
> +
> +	alloc_vec = adapter->req_vec_chunks;
> +	if (le16_to_cpu(alloc_vec->num_vectors) < num_vectors) {
> +		kfree(adapter->req_vec_chunks);
> +		adapter->req_vec_chunks = NULL;
> +		err = -EINVAL;
> +	}
> +error:
> +	clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> +	return err;
> +}
> +
> +/**
> + * iecm_send_dealloc_vectors_msg - Send virtchnl de allocate vectors message
> + * @adapter: Driver specific private structure
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +int iecm_send_dealloc_vectors_msg(struct iecm_adapter *adapter)
> +{
> +	struct virtchnl2_vector_chunks *vcs;
> +	struct virtchnl2_alloc_vectors *ac;
> +	int buf_size, err;
> +
> +	ac = adapter->req_vec_chunks;
> +	vcs = &ac->vchunks;
> +
> +	buf_size = sizeof(struct virtchnl2_vector_chunks) +
> +			((le16_to_cpu(vcs->num_vchunks) - 1) *
> +			sizeof(struct virtchnl2_vector_chunk));
> +
> +	err = iecm_send_mb_msg(adapter, VIRTCHNL2_OP_DEALLOC_VECTORS, buf_size,
> +			       (u8 *)vcs);
> +	if (err)
> +		return err;
> +	err = iecm_min_wait_for_event(adapter, IECM_VC_DEALLOC_VECTORS,
> +				      IECM_VC_DEALLOC_VECTORS_ERR);
> +	if (err)
> +		return err;
> +
> +	kfree(adapter->req_vec_chunks);
> +	adapter->req_vec_chunks = NULL;
> +	return 0;
> +}
> +
> +/**
> + * iecm_send_get_stats_msg - Send virtchnl get statistics message
> + * @vport: vport to get stats for
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +int iecm_send_get_stats_msg(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct virtchnl2_vport_stats *stats;
> +	int err = 0;
> +
> +	stats = (struct virtchnl2_vport_stats *)adapter->vc_msg;
> +
> +	/* Don't send get_stats message if one is pending or the
> +	 * link is down
> +	 */
> +	if (test_bit(IECM_VC_GET_STATS, adapter->vc_state) ||
> +	    adapter->state <= __IECM_DOWN)
> +		goto error;
> +
> +	stats->vport_id = cpu_to_le32(vport->vport_id);
> +
> +	err = iecm_send_mb_msg(adapter, VIRTCHNL2_OP_GET_STATS,
> +			       sizeof(stats), (u8 *)&stats);
> +	if (err)
> +		goto error;
> +
> +	err = iecm_wait_for_event(adapter, IECM_VC_GET_STATS,
> +				  IECM_VC_GET_STATS_ERR);
> +	if (err)
> +		goto error;
> +
> +	vport->netstats.rx_packets = le64_to_cpu(stats->rx_unicast) +
> +				     le64_to_cpu(stats->rx_multicast) +
> +				     le64_to_cpu(stats->rx_broadcast);
> +	vport->netstats.tx_packets = le64_to_cpu(stats->tx_unicast) +
> +				     le64_to_cpu(stats->tx_multicast) +
> +				     le64_to_cpu(stats->tx_broadcast);
> +	vport->netstats.rx_bytes = le64_to_cpu(stats->rx_bytes);
> +	vport->netstats.tx_bytes = le64_to_cpu(stats->tx_bytes);
> +	vport->netstats.tx_errors = le64_to_cpu(stats->tx_errors);
> +	vport->netstats.rx_dropped = le64_to_cpu(stats->rx_discards);
> +	vport->netstats.tx_dropped = le64_to_cpu(stats->tx_discards);
> +	vport->port_stats.vport_stats = *stats;
> +	clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> +error:
> +	clear_bit(__IECM_MB_STATS_PENDING, vport->adapter->flags);
> +
> +	return err;
> +}
> +
> +/**
> + * iecm_send_get_set_rss_hash_msg - Send set or get rss hash message
> + * @vport: virtual port data structure
> + * @get: flag to get or set rss hash
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +int iecm_send_get_set_rss_hash_msg(struct iecm_vport *vport, bool get)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct virtchnl2_rss_hash rh = {0};
> +	int err;
> +
> +	rh.vport_id = cpu_to_le32(vport->vport_id);
> +	rh.ptype_groups = cpu_to_le64(adapter->rss_data.rss_hash);
> +
> +	if (get) {
> +		err = iecm_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_HASH,
> +				       sizeof(rh), (u8 *)&rh);
> +		if (err)
> +			return err;
> +
> +		err = iecm_wait_for_event(adapter, IECM_VC_GET_RSS_HASH,
> +					  IECM_VC_GET_RSS_HASH_ERR);
> +		if (err)
> +			return err;
> +
> +		memcpy(&rh, adapter->vc_msg, sizeof(rh));
> +		adapter->rss_data.rss_hash = le64_to_cpu(rh.ptype_groups);
> +		/* Leave the buffer clean for next message */
> +		memset(adapter->vc_msg, 0, IECM_DFLT_MBX_BUF_SIZE);
> +		clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> +
> +		return 0;
> +	}
> +
> +	err = iecm_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_HASH,
> +			       sizeof(rh), (u8 *)&rh);
> +	if (err)
> +		return err;
> +
> +	return  iecm_wait_for_event(adapter, IECM_VC_SET_RSS_HASH,
> +				    IECM_VC_SET_RSS_HASH_ERR);
> +}
> +
> +/**
> + * iecm_send_get_set_rss_lut_msg - Send virtchnl get or set rss lut message
> + * @vport: virtual port data structure
> + * @get: flag to set or get rss look up table
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +int iecm_send_get_set_rss_lut_msg(struct iecm_vport *vport, bool get)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct virtchnl2_rss_lut *recv_rl;
> +	struct virtchnl2_rss_lut *rl;
> +	int buf_size, lut_buf_size;
> +	int i, err = 0;
> +
> +	buf_size = sizeof(struct virtchnl2_rss_lut) +
> +		       (sizeof(u32) * (adapter->rss_data.rss_lut_size - 1));
> +	rl = kzalloc(buf_size, GFP_KERNEL);
> +	if (!rl)
> +		return -ENOMEM;
> +
> +	if (!get) {
> +		rl->lut_entries = cpu_to_le16(adapter->rss_data.rss_lut_size);
> +		for (i = 0; i < adapter->rss_data.rss_lut_size; i++)
> +			rl->lut[i] = cpu_to_le32(adapter->rss_data.rss_lut[i]);
> +	}
> +	rl->vport_id = cpu_to_le32(vport->vport_id);
> +
> +	if (get) {
> +		err = iecm_send_mb_msg(vport->adapter, VIRTCHNL2_OP_GET_RSS_LUT,
> +				       buf_size, (u8 *)rl);
> +		if (err)
> +			goto error;
> +
> +		err = iecm_wait_for_event(adapter, IECM_VC_GET_RSS_LUT,
> +					  IECM_VC_GET_RSS_LUT_ERR);
> +		if (err)
> +			goto error;
> +
> +		recv_rl = (struct virtchnl2_rss_lut *)adapter->vc_msg;
> +		if (adapter->rss_data.rss_lut_size !=
> +		    le16_to_cpu(recv_rl->lut_entries)) {
> +			adapter->rss_data.rss_lut_size =
> +				le16_to_cpu(recv_rl->lut_entries);
> +			kfree(adapter->rss_data.rss_lut);
> +
> +			lut_buf_size = adapter->rss_data.rss_lut_size *
> +					sizeof(u32);
> +			adapter->rss_data.rss_lut = kzalloc(lut_buf_size,
> +							    GFP_KERNEL);
> +			if (!adapter->rss_data.rss_lut) {
> +				adapter->rss_data.rss_lut_size = 0;
> +				/* Leave the buffer clean */
> +				memset(adapter->vc_msg, 0,
> +				       IECM_DFLT_MBX_BUF_SIZE);
> +				clear_bit(__IECM_VC_MSG_PENDING,
> +					  adapter->flags);
> +				err = -ENOMEM;
> +				goto error;
> +			}
> +		}
> +		memcpy(adapter->rss_data.rss_lut, adapter->vc_msg,
> +		       adapter->rss_data.rss_lut_size);
> +		/* Leave the buffer clean for next message */
> +		memset(adapter->vc_msg, 0, IECM_DFLT_MBX_BUF_SIZE);
> +		clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> +	} else {
> +		err = iecm_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_LUT,
> +				       buf_size, (u8 *)rl);
> +		if (err)
> +			goto error;
> +
> +		err = iecm_wait_for_event(adapter, IECM_VC_SET_RSS_LUT,
> +					  IECM_VC_SET_RSS_LUT_ERR);
> +	}
> +error:
> +	kfree(rl);
> +	return err;
> +}
> +
> +/**
> + * iecm_send_get_set_rss_key_msg - Send virtchnl get or set rss key message
> + * @vport: virtual port data structure
> + * @get: flag to set or get rss look up table
> + *
> + * Returns 0 on success, negative on failure
> + */
> +int iecm_send_get_set_rss_key_msg(struct iecm_vport *vport, bool get)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct virtchnl2_rss_key *recv_rk;
> +	struct virtchnl2_rss_key *rk;
> +	int i, buf_size, err = 0;
> +
> +	buf_size = sizeof(struct virtchnl2_rss_key) +
> +		       (sizeof(u8) * (adapter->rss_data.rss_key_size - 1));
> +	rk = kzalloc(buf_size, GFP_KERNEL);
> +	if (!rk)
> +		return -ENOMEM;
> +	rk->vport_id = cpu_to_le32(vport->vport_id);
> +
> +	if (get) {
> +		err = iecm_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_KEY,
> +				       buf_size, (u8 *)rk);
> +		if (err)
> +			goto error;
> +
> +		err = iecm_wait_for_event(adapter, IECM_VC_GET_RSS_KEY,
> +					  IECM_VC_GET_RSS_KEY_ERR);
> +		if (err)
> +			goto error;
> +
> +		recv_rk = (struct virtchnl2_rss_key *)adapter->vc_msg;
> +		if (adapter->rss_data.rss_key_size !=
> +		    le16_to_cpu(recv_rk->key_len)) {
> +			adapter->rss_data.rss_key_size =
> +				min_t(u16, NETDEV_RSS_KEY_LEN,
> +				      le16_to_cpu(recv_rk->key_len));
> +			kfree(adapter->rss_data.rss_key);
> +			adapter->rss_data.rss_key = kzalloc(adapter->rss_data.rss_key_size,
> +							    GFP_KERNEL);
> +			if (!adapter->rss_data.rss_key) {
> +				adapter->rss_data.rss_key_size = 0;
> +				/* Leave the buffer clean */
> +				memset(adapter->vc_msg, 0,
> +				       IECM_DFLT_MBX_BUF_SIZE);
> +				clear_bit(__IECM_VC_MSG_PENDING,
> +					  adapter->flags);
> +				err = -ENOMEM;
> +				goto error;
> +			}
> +		}
> +		memcpy(adapter->rss_data.rss_key, adapter->vc_msg,
> +		       adapter->rss_data.rss_key_size);
> +		/* Leave the buffer clean for next message */
> +		memset(adapter->vc_msg, 0, IECM_DFLT_MBX_BUF_SIZE);
> +		clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> +	} else {
> +		rk->key_len = cpu_to_le16(adapter->rss_data.rss_key_size);
> +		for (i = 0; i < adapter->rss_data.rss_key_size; i++)
> +			rk->key[i] = adapter->rss_data.rss_key[i];
> +
> +		err = iecm_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_KEY,
> +				       buf_size, (u8 *)rk);
> +		if (err)
> +			goto error;
> +
> +		err = iecm_wait_for_event(adapter, IECM_VC_SET_RSS_KEY,
> +					  IECM_VC_SET_RSS_KEY_ERR);
> +	}
> +error:
> +	kfree(rk);
> +	return err;
> +}
> +
> +/**
> + * iecm_tpid_to_ethertype - transform from VLAN TPID to virtchnl ethertype
> + * @tpid: VLAN TPID (i.e. 0x8100, 0x88a8, etc.)
> + *
> + * Return virtchnl ethertype
> + */
> +static u32 iecm_tpid_to_ethertype(u16 tpid)
> +{
> +	switch (tpid) {
> +	case ETH_P_8021Q:
> +		return VIRTCHNL_VLAN_ETHERTYPE_8100;
> +	case ETH_P_8021AD:
> +		return VIRTCHNL_VLAN_ETHERTYPE_88A8;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * iecm_set_vlan_offload_ethertype - set ethertype for offload message
> + * @adapter: adapter structure
> + * @msg: message structure used for updating offloads
> + * @offload_op: opcode used to determine which support structure to check
> + *
> + * Return 0 on success, negative on failure.
> + */
> +static int
> +iecm_set_vlan_offload_ethertype(struct iecm_adapter *adapter,
> +				struct virtchnl_vlan_setting *msg,
> +				enum virtchnl_ops offload_op)
> +{
> +	struct virtchnl_vlan_supported_caps *offload_support;
> +	u16 tpid = adapter->config_data.vlan_ethertype;
> +	u32 vc_ethertype;
> +
> +	vc_ethertype = iecm_tpid_to_ethertype(tpid);
> +	/* reference the correct offload support structure */
> +	switch (offload_op) {
> +	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2:
> +	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2:
> +		offload_support =
> +			&adapter->vlan_caps->offloads.stripping_support;
> +		break;
> +	case VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2:
> +	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
> +		offload_support =
> +			&adapter->vlan_caps->offloads.insertion_support;
> +		break;
> +	default:
> +		dev_err(&adapter->pdev->dev, "Invalid opcode %d for setting virtchnl ethertype to enable/disable VLAN offloads\n",
> +			offload_op);
> +		return -EINVAL;
> +	}
> +
> +	/* make sure ethertype is supported and turning feature on/off
> +	 * is allowed
> +	 */
> +	if ((offload_support->outer & vc_ethertype) &&
> +	    (offload_support->outer & VIRTCHNL_VLAN_TOGGLE)) {
> +		msg->outer_ethertype_setting = vc_ethertype;
> +	} else if ((offload_support->inner & vc_ethertype) &&
> +		   (offload_support->inner & VIRTCHNL_VLAN_TOGGLE)) {
> +		msg->inner_ethertype_setting = vc_ethertype;
> +	} else {
> +		dev_err(&adapter->pdev->dev, "opcode %d unsupported for VLAN TPID 0x%04x\n",
> +			offload_op, tpid);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * iecm_send_strip_vlan_msg - Send enable/disable vlan stripping message
> + * @vport: vport structure
> + * @ena: enable or disable vlan stripping
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +static int iecm_send_strip_vlan_msg(struct iecm_vport *vport, bool ena)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	enum iecm_vport_vc_state vc, vc_err;
> +	struct virtchnl_vlan_setting *msg;
> +	enum virtchnl_ops vop;
> +	int err, len;
> +
> +	len = sizeof(struct virtchnl_vlan_setting);
> +	msg = kzalloc(sizeof(*msg), GFP_KERNEL);
> +
> +	if (!msg)
> +		return -ENOMEM;
> +
> +	msg->vport_id = vport->vport_id;
> +	if (ena) {
> +		vop = VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2;
> +		vc = IECM_VC_STRIPPING_ENA_VLAN_V2;
> +		vc_err = IECM_VC_STRIPPING_ENA_VLAN_V2_ERR;
> +	} else {
> +		vop = VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2;
> +		vc = IECM_VC_STRIPPING_DIS_VLAN_V2;
> +		vc_err = IECM_VC_STRIPPING_DIS_VLAN_V2_ERR;
> +	}
> +
> +	err = iecm_set_vlan_offload_ethertype(adapter, msg, vop);
> +	if (!err) {
> +		err = iecm_send_mb_msg(adapter, vop, len, (u8 *)msg);
> +		if (!err)
> +			err = iecm_wait_for_event(adapter, vc, vc_err);
> +	}
> +
> +	kfree(msg);
> +
> +	return err;
> +}
> +
> +/**
> + * iecm_send_insert_vlan_msg - Send enable/disable vlan insertion message
> + * @vport: vport structure
> + * @ena: enable/disable vlan insertion
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +static int iecm_send_insert_vlan_msg(struct iecm_vport *vport, bool ena)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	enum iecm_vport_vc_state vc, vc_err;
> +	struct virtchnl_vlan_setting *msg;
> +	enum virtchnl_ops vop;
> +	int err, len;
> +
> +	len = sizeof(struct virtchnl_vlan_setting);
> +	msg = kzalloc(sizeof(*msg), GFP_KERNEL);
> +
> +	if (!msg)
> +		return -ENOMEM;
> +
> +	msg->vport_id = vport->vport_id;
> +
> +	if (ena) {
> +		vop = VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2;
> +		vc = IECM_VC_INSERTION_ENA_VLAN_V2;
> +		vc_err = IECM_VC_INSERTION_ENA_VLAN_V2_ERR;
> +	} else {
> +		vop = VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2;
> +		vc = IECM_VC_INSERTION_DIS_VLAN_V2;
> +		vc_err = IECM_VC_INSERTION_DIS_VLAN_V2_ERR;
> +	}
> +
> +	err = iecm_set_vlan_offload_ethertype(adapter, msg, vop);
> +	if (!err) {
> +		err = iecm_send_mb_msg(adapter, vop, len, (u8 *)msg);
> +		if (!err)
> +			err = iecm_wait_for_event(adapter, vc, vc_err);
> +	}
> +
> +	kfree(msg);
> +
> +	return err;
> +}
> +
> +/**
> + * iecm_fill_ptype_lookup - Fill L3 specific fields in ptype lookup table
> + * @ptype: ptype lookup table
> + * @pstate: state machine for ptype lookup table
> + * @ipv4: ipv4 or ipv6
> + * @frag: fragmentation allowed
> + *
> + */
> +static void iecm_fill_ptype_lookup(struct iecm_rx_ptype_decoded *ptype,
> +				   struct iecm_ptype_state *pstate,
> +				   bool ipv4, bool frag)
> +{
> +	if (!pstate->outer_ip || !pstate->outer_frag) {
> +		ptype->outer_ip = IECM_RX_PTYPE_OUTER_IP;
> +		pstate->outer_ip = true;
> +
> +		if (ipv4)
> +			ptype->outer_ip_ver = IECM_RX_PTYPE_OUTER_IPV4;
> +		else
> +			ptype->outer_ip_ver = IECM_RX_PTYPE_OUTER_IPV6;
> +
> +		if (frag) {
> +			ptype->outer_frag = IECM_RX_PTYPE_FRAG;
> +			pstate->outer_frag = true;
> +		}
> +	} else {
> +		ptype->tunnel_type = IECM_RX_PTYPE_TUNNEL_IP_IP;
> +		pstate->tunnel_state = IECM_PTYPE_TUNNEL_IP;
> +
> +		if (ipv4)
> +			ptype->tunnel_end_prot =
> +					IECM_RX_PTYPE_TUNNEL_END_IPV4;
> +		else
> +			ptype->tunnel_end_prot =
> +					IECM_RX_PTYPE_TUNNEL_END_IPV6;
> +
> +		if (frag)
> +			ptype->tunnel_end_frag = IECM_RX_PTYPE_FRAG;
> +	}
> +}
> +
> +/**
> + * iecm_send_get_rx_ptype_msg - Send virtchnl for ptype info
> + * @vport: virtual port data structure
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +int iecm_send_get_rx_ptype_msg(struct iecm_vport *vport)
> +{
> +	struct iecm_rx_ptype_decoded *ptype_lkup = vport->rx_ptype_lkup;
> +	struct virtchnl2_get_ptype_info *get_ptype_info, *ptype_info;
> +	int max_ptype, ptypes_recvd = 0, len, ptype_offset;
> +	struct iecm_adapter *adapter = vport->adapter;
> +	int err = 0, i, j, k = 0;
> +
> +	if (iecm_is_queue_model_split(vport->rxq_model))
> +		max_ptype = IECM_RX_MAX_PTYPE;
> +	else
> +		max_ptype = IECM_RX_MAX_BASE_PTYPE;
> +
> +	for (i = 0; i < max_ptype; i++)
> +		ptype_lkup[i] = iecm_ptype_lookup[0];
> +
> +	len = sizeof(struct virtchnl2_get_ptype_info);
> +	get_ptype_info = kzalloc(len, GFP_KERNEL);
> +	if (!get_ptype_info)
> +		return -ENOMEM;
> +
> +	get_ptype_info->start_ptype_id = 0;
> +	get_ptype_info->num_ptypes = cpu_to_le16(max_ptype);
> +
> +	err = iecm_send_mb_msg(adapter, VIRTCHNL2_OP_GET_PTYPE_INFO,
> +			       len, (u8 *)get_ptype_info);
> +	if (err)
> +		goto get_ptype_rel;
> +
> +	while (ptypes_recvd < max_ptype) {
> +		err = iecm_wait_for_event(adapter, IECM_VC_GET_PTYPE_INFO,
> +					  IECM_VC_GET_PTYPE_INFO_ERR);
> +		if (err)
> +			goto get_ptype_rel;
> +
> +		len = IECM_DFLT_MBX_BUF_SIZE;
> +		ptype_info = kzalloc(len, GFP_KERNEL);
> +		if (!ptype_info) {
> +			err = -ENOMEM;
> +			goto clear_vc_flag;
> +		}
> +
> +		memcpy(ptype_info, adapter->vc_msg, len);
> +
> +		ptypes_recvd += le16_to_cpu(ptype_info->num_ptypes);
> +		if (ptypes_recvd > max_ptype) {
> +			err = -EINVAL;
> +			goto ptype_rel;
> +		}
> +
> +		ptype_offset = sizeof(struct virtchnl2_get_ptype_info) -
> +						sizeof(struct virtchnl2_ptype);
> +
> +		for (i = 0; i < le16_to_cpu(ptype_info->num_ptypes); i++) {
> +			struct iecm_ptype_state pstate = { 0 };
> +			struct virtchnl2_ptype *ptype;
> +			u16 id;
> +
> +			ptype = (struct virtchnl2_ptype *)
> +					((u8 *)ptype_info + ptype_offset);
> +
> +			ptype_offset += IECM_GET_PTYPE_SIZE(ptype);
> +			if (ptype_offset > len) {
> +				err = -EINVAL;
> +				goto ptype_rel;
> +			}
> +
> +			if (le16_to_cpu(ptype->ptype_id_10) == 0xFFFF)
> +				goto ptype_rel;
> +
> +			if (iecm_is_queue_model_split(vport->rxq_model))
> +				k = le16_to_cpu(ptype->ptype_id_10);
> +			else
> +				k = ptype->ptype_id_8;
> +
> +			if (ptype->proto_id_count)
> +				ptype_lkup[k].known = 1;
> +
> +			for (j = 0; j < ptype->proto_id_count; j++) {
> +				id = le16_to_cpu(ptype->proto_id[j]);
> +				switch (id) {
> +				case VIRTCHNL2_PROTO_HDR_GRE:
> +					if (pstate.tunnel_state ==
> +							IECM_PTYPE_TUNNEL_IP) {
> +						ptype_lkup[k].tunnel_type =
> +						IECM_RX_PTYPE_TUNNEL_IP_GRENAT;
> +						pstate.tunnel_state |=
> +						IECM_PTYPE_TUNNEL_IP_GRENAT;
> +					}
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_MAC:
> +					ptype_lkup[k].outer_ip =
> +						IECM_RX_PTYPE_OUTER_L2;
> +					if (pstate.tunnel_state ==
> +							IECM_TUN_IP_GRE) {
> +						ptype_lkup[k].tunnel_type =
> +						IECM_RX_PTYPE_TUNNEL_IP_GRENAT_MAC;
> +						pstate.tunnel_state |=
> +						IECM_PTYPE_TUNNEL_IP_GRENAT_MAC;
> +					}
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_VLAN:
> +					if (pstate.tunnel_state ==
> +							IECM_TUN_IP_GRE_MAC) {
> +						ptype_lkup[k].tunnel_type =
> +						IECM_RX_PTYPE_TUNNEL_IP_GRENAT_MAC_VLAN;
> +						pstate.tunnel_state |=
> +						IECM_PTYPE_TUNNEL_IP_GRENAT_MAC_VLAN;
> +					}
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_IPV4:
> +					iecm_fill_ptype_lookup(&ptype_lkup[k],
> +							       &pstate, true,
> +							       false);
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_IPV6:
> +					iecm_fill_ptype_lookup(&ptype_lkup[k],
> +							       &pstate, false,
> +							       false);
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_IPV4_FRAG:
> +					iecm_fill_ptype_lookup(&ptype_lkup[k],
> +							       &pstate, true,
> +							       true);
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_IPV6_FRAG:
> +					iecm_fill_ptype_lookup(&ptype_lkup[k],
> +							       &pstate, false,
> +							       true);
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_UDP:
> +					ptype_lkup[k].inner_prot =
> +					IECM_RX_PTYPE_INNER_PROT_UDP;
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_TCP:
> +					ptype_lkup[k].inner_prot =
> +					IECM_RX_PTYPE_INNER_PROT_TCP;
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_SCTP:
> +					ptype_lkup[k].inner_prot =
> +					IECM_RX_PTYPE_INNER_PROT_SCTP;
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_ICMP:
> +					ptype_lkup[k].inner_prot =
> +					IECM_RX_PTYPE_INNER_PROT_ICMP;
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_PAY:
> +					ptype_lkup[k].payload_layer =
> +						IECM_RX_PTYPE_PAYLOAD_LAYER_PAY2;
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_ICMPV6:
> +				case VIRTCHNL2_PROTO_HDR_IPV6_EH:
> +				case VIRTCHNL2_PROTO_HDR_PRE_MAC:
> +				case VIRTCHNL2_PROTO_HDR_POST_MAC:
> +				case VIRTCHNL2_PROTO_HDR_ETHERTYPE:
> +				case VIRTCHNL2_PROTO_HDR_SVLAN:
> +				case VIRTCHNL2_PROTO_HDR_CVLAN:
> +				case VIRTCHNL2_PROTO_HDR_MPLS:
> +				case VIRTCHNL2_PROTO_HDR_MMPLS:
> +				case VIRTCHNL2_PROTO_HDR_PTP:
> +				case VIRTCHNL2_PROTO_HDR_CTRL:
> +				case VIRTCHNL2_PROTO_HDR_LLDP:
> +				case VIRTCHNL2_PROTO_HDR_ARP:
> +				case VIRTCHNL2_PROTO_HDR_ECP:
> +				case VIRTCHNL2_PROTO_HDR_EAPOL:
> +				case VIRTCHNL2_PROTO_HDR_PPPOD:
> +				case VIRTCHNL2_PROTO_HDR_PPPOE:
> +				case VIRTCHNL2_PROTO_HDR_IGMP:
> +				case VIRTCHNL2_PROTO_HDR_AH:
> +				case VIRTCHNL2_PROTO_HDR_ESP:
> +				case VIRTCHNL2_PROTO_HDR_IKE:
> +				case VIRTCHNL2_PROTO_HDR_NATT_KEEP:
> +				case VIRTCHNL2_PROTO_HDR_L2TPV2:
> +				case VIRTCHNL2_PROTO_HDR_L2TPV2_CONTROL:
> +				case VIRTCHNL2_PROTO_HDR_L2TPV3:
> +				case VIRTCHNL2_PROTO_HDR_GTP:
> +				case VIRTCHNL2_PROTO_HDR_GTP_EH:
> +				case VIRTCHNL2_PROTO_HDR_GTPCV2:
> +				case VIRTCHNL2_PROTO_HDR_GTPC_TEID:
> +				case VIRTCHNL2_PROTO_HDR_GTPU:
> +				case VIRTCHNL2_PROTO_HDR_GTPU_UL:
> +				case VIRTCHNL2_PROTO_HDR_GTPU_DL:
> +				case VIRTCHNL2_PROTO_HDR_ECPRI:
> +				case VIRTCHNL2_PROTO_HDR_VRRP:
> +				case VIRTCHNL2_PROTO_HDR_OSPF:
> +				case VIRTCHNL2_PROTO_HDR_TUN:
> +				case VIRTCHNL2_PROTO_HDR_NVGRE:
> +				case VIRTCHNL2_PROTO_HDR_VXLAN:
> +				case VIRTCHNL2_PROTO_HDR_VXLAN_GPE:
> +				case VIRTCHNL2_PROTO_HDR_GENEVE:
> +				case VIRTCHNL2_PROTO_HDR_NSH:
> +				case VIRTCHNL2_PROTO_HDR_QUIC:
> +				case VIRTCHNL2_PROTO_HDR_PFCP:
> +				case VIRTCHNL2_PROTO_HDR_PFCP_NODE:
> +				case VIRTCHNL2_PROTO_HDR_PFCP_SESSION:
> +				case VIRTCHNL2_PROTO_HDR_RTP:
> +				case VIRTCHNL2_PROTO_HDR_NO_PROTO:
> +				default:
> +					continue;
> +				}
> +			}
> +		}
> +		clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> +		kfree(ptype_info);
> +	}
> +	kfree(get_ptype_info);
> +	return 0;
> +
> +ptype_rel:
> +	kfree(ptype_info);
> +clear_vc_flag:
> +	clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> +get_ptype_rel:
> +	kfree(get_ptype_info);
> +	return err;
> +}
> +
>  /**
>   * iecm_find_ctlq - Given a type and id, find ctlq info
>   * @hw: hardware struct
> @@ -2478,6 +3505,25 @@ static int iecm_vport_queue_ids_init(struct iecm_vport *vport)
>  	return 0;
>  }
>  
> +/**
> + * iecm_vport_adjust_qs - Adjust to new requested queues
> + * @vport: virtual port data struct
> + *
> + * Renegotiate queues.  Returns 0 on success, negative on failure.
> + */
> +void iecm_vport_adjust_qs(struct iecm_vport *vport)
> +{
> +	struct virtchnl2_create_vport vport_msg;
> +
> +	vport_msg.txq_model = cpu_to_le16(vport->txq_model);
> +	vport_msg.rxq_model = cpu_to_le16(vport->rxq_model);
> +	iecm_vport_calc_total_qs(vport->adapter, &vport_msg);
> +
> +	iecm_vport_init_num_qs(vport, &vport_msg);
> +	iecm_vport_calc_num_q_groups(vport);
> +	iecm_vport_calc_num_q_vec(vport);
> +}
> +
>  /**
>   * iecm_is_capability_ena - Default implementation of capability checking
>   * @adapter: Private data struct
> @@ -2522,6 +3568,117 @@ static u16 iecm_get_reserved_vectors(struct iecm_adapter *adapter)
>  	return le16_to_cpu(caps->num_allocated_vectors);
>  }
>  
> +/**
> + * iecm_get_max_tx_bufs - Max scatter-gather TX buffers
> + * @adapter: Private data struct
> + *
> + * Return maximum number of buffers that can be used in scatter-gather before
> + * they need to be linearized for hardware.
> + */
> +static unsigned int iecm_get_max_tx_bufs(struct iecm_adapter *adapter)
> +{
> +	return ((struct virtchnl2_get_capabilities *)adapter->caps)->max_sg_bufs_per_tx_pkt;

93-cols line here, you can introduce some interm variables to reduce
the burden.

> +}
> +
> +/**
> + * iecm_add_del_vlans - Add or delete vlan filter
> + * @vport: vport structure
> + * @add: add or delete
> + *
> + * Request that the PF add one or more VLAN filters to our VSI.
> + */
> +static void iecm_add_del_vlans(struct iecm_vport *vport, bool add)
> +{
> +	struct virtchnl_vlan_supported_caps *filtering_support;
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct virtchnl_vlan_filter_list_v2 *vvfl_v2;
> +	int total_vlans = 0, num_vlans, i, len;
> +	struct iecm_vlan_filter *f, *ftmp;
> +	struct virtchnl_vlan *vlan;
> +	enum virtchnl_ops vop;
> +	int err = 0;
> +
> +	spin_lock_bh(&adapter->vlan_list_lock);
> +
> +	list_for_each_entry(f, &adapter->config_data.vlan_filter_list, list) {
> +		if ((add && f->add) || (!add && f->remove))
> +			total_vlans++;
> +	}

Braces are redundant, if-something is one command from the outer view.

> +
> +	if (!total_vlans) {
> +		spin_unlock_bh(&adapter->vlan_list_lock);
> +		return;
> +	}
> +
> +	len = sizeof(struct virtchnl_vlan_filter_list_v2) +
> +		(IECM_VLANS_PER_MSG * sizeof(struct virtchnl_vlan_filter));
> +	vvfl_v2 = kzalloc(len, GFP_ATOMIC);
> +
> +	if (!vvfl_v2) {
> +		err = -ENOMEM;
> +		goto error;
> +	}
> +
> +	if (add)
> +		vop = VIRTCHNL_OP_ADD_VLAN_V2;
> +	else
> +		vop = VIRTCHNL_OP_DEL_VLAN_V2;
> +
> +	while (total_vlans) {
> +		if (total_vlans > IECM_VLANS_PER_MSG)
> +			num_vlans = IECM_VLANS_PER_MSG;
> +		else
> +			num_vlans = total_vlans;
> +		total_vlans -= num_vlans;
> +
> +		len = sizeof(struct virtchnl_vlan_filter_list_v2) +
> +			((num_vlans - 1) * sizeof(struct virtchnl_vlan_filter));
> +		vvfl_v2->vport_id = vport->vport_id;
> +		vvfl_v2->num_elements = num_vlans;
> +		i = 0;
> +		list_for_each_entry_safe(f, ftmp,
> +					 &adapter->config_data.vlan_filter_list,
> +					 list) {
> +			filtering_support =
> +			&adapter->vlan_caps->filtering.filtering_support;
> +			if (add && f->add) {
> +				/* give priority over outer if it's enabled */
> +				if (filtering_support->outer)
> +					vlan = &vvfl_v2->filters[i].outer;
> +				else
> +					vlan = &vvfl_v2->filters[i].inner;
> +				vlan->tci = f->vlan.vid;
> +				vlan->tpid = f->vlan.tpid;
> +				i++;
> +				f->add = false;
> +			} else if (!add && f->remove) {
> +				/* give priority over outer if it's enabled */
> +				if (filtering_support->outer)
> +					vlan = &vvfl_v2->filters[i].outer;
> +				else
> +					vlan = &vvfl_v2->filters[i].inner;
> +				vlan->tci = f->vlan.vid;
> +				vlan->tpid = f->vlan.tpid;
> +				i++;
> +				f->remove = false;
> +			}
> +			if (i == num_vlans)
> +				break;
> +		}
> +		spin_unlock_bh(&adapter->vlan_list_lock);
> +		iecm_send_mb_msg(adapter, vop, len, (u8 *)vvfl_v2);
> +		spin_lock_bh(&adapter->vlan_list_lock);
> +	}
> +	spin_unlock_bh(&adapter->vlan_list_lock);
> +	kfree(vvfl_v2);
> +	return;
> +error:
> +	spin_unlock_bh(&adapter->vlan_list_lock);
> +	if (err)
> +		dev_err(&adapter->pdev->dev,
> +			"Failed to add or del vlan filters %d", err);
> +}
> +
>  /**
>   * iecm_vc_ops_init - Initialize virtchnl common api
>   * @adapter: Driver specific private structure
> @@ -2548,21 +3705,21 @@ void iecm_vc_ops_init(struct iecm_adapter *adapter)
>  	vc_ops->enable_vport = iecm_send_enable_vport_msg;
>  	vc_ops->disable_vport = iecm_send_disable_vport_msg;
>  	vc_ops->destroy_vport = iecm_send_destroy_vport_msg;
> -	vc_ops->get_ptype = NULL;
> -	vc_ops->get_set_rss_key = NULL;
> -	vc_ops->get_set_rss_lut = NULL;
> -	vc_ops->get_set_rss_hash = NULL;
> -	vc_ops->adjust_qs = NULL;
> -	vc_ops->add_del_vlans = NULL;
> -	vc_ops->strip_vlan_msg = NULL;
> -	vc_ops->insert_vlan_msg = NULL;
> -	vc_ops->init_max_queues = NULL;
> -	vc_ops->get_max_tx_bufs = NULL;
> -	vc_ops->vportq_reg_init = NULL;
> -	vc_ops->alloc_vectors = NULL;
> -	vc_ops->dealloc_vectors = NULL;
> -	vc_ops->get_supported_desc_ids = NULL;
> -	vc_ops->get_stats_msg = NULL;
> +	vc_ops->get_ptype = iecm_send_get_rx_ptype_msg;
> +	vc_ops->get_set_rss_key = iecm_send_get_set_rss_key_msg;
> +	vc_ops->get_set_rss_lut = iecm_send_get_set_rss_lut_msg;
> +	vc_ops->get_set_rss_hash = iecm_send_get_set_rss_hash_msg;
> +	vc_ops->adjust_qs = iecm_vport_adjust_qs;
> +	vc_ops->add_del_vlans = iecm_add_del_vlans;
> +	vc_ops->strip_vlan_msg = iecm_send_strip_vlan_msg;
> +	vc_ops->insert_vlan_msg = iecm_send_insert_vlan_msg;
> +	vc_ops->init_max_queues = iecm_vport_init_max_qs;
> +	vc_ops->get_max_tx_bufs = iecm_get_max_tx_bufs;
> +	vc_ops->vportq_reg_init = iecm_queue_reg_init;
> +	vc_ops->alloc_vectors = iecm_send_alloc_vectors_msg;
> +	vc_ops->dealloc_vectors = iecm_send_dealloc_vectors_msg;
> +	vc_ops->get_supported_desc_ids = iecm_get_supported_desc_ids;
> +	vc_ops->get_stats_msg = iecm_send_get_stats_msg;
>  	vc_ops->recv_mbx_msg = NULL;
>  }
>  EXPORT_SYMBOL(iecm_vc_ops_init);
> diff --git a/drivers/net/ethernet/intel/include/iecm.h b/drivers/net/ethernet/intel/include/iecm.h
> index 8dd6272db7d3..d736db65da06 100644
> --- a/drivers/net/ethernet/intel/include/iecm.h
> +++ b/drivers/net/ethernet/intel/include/iecm.h
> @@ -346,6 +346,7 @@ struct iecm_vport {
>  	int num_rxq_grp;
>  	struct iecm_rxq_group *rxq_grps;
>  	u32 rxq_model;
> +	struct iecm_rx_ptype_decoded rx_ptype_lkup[IECM_RX_MAX_PTYPE];
>  
>  	struct iecm_adapter *adapter;
>  	struct net_device *netdev;
> @@ -382,6 +383,30 @@ enum iecm_user_flags {
>  	__IECM_USER_FLAGS_NBITS,
>  };
>  
> +#define IECM_GET_PTYPE_SIZE(p) \
> +	(sizeof(struct virtchnl2_ptype) + \
> +	(((p)->proto_id_count ? ((p)->proto_id_count - 1) : 0) * sizeof(u16)))
> +
> +#define IECM_TUN_IP_GRE (\
> +	IECM_PTYPE_TUNNEL_IP |\
> +	IECM_PTYPE_TUNNEL_IP_GRENAT)
> +
> +#define IECM_TUN_IP_GRE_MAC (\
> +	IECM_TUN_IP_GRE |\
> +	IECM_PTYPE_TUNNEL_IP_GRENAT_MAC)
> +
> +enum iecm_tunnel_state {
> +	IECM_PTYPE_TUNNEL_IP                    = BIT(0),
> +	IECM_PTYPE_TUNNEL_IP_GRENAT             = BIT(1),
> +	IECM_PTYPE_TUNNEL_IP_GRENAT_MAC         = BIT(2),
> +	IECM_PTYPE_TUNNEL_IP_GRENAT_MAC_VLAN    = BIT(3),
> +};
> +
> +struct iecm_ptype_state {
> +	bool outer_ip;
> +	bool outer_frag;
> +	u8 tunnel_state;
> +};
>  /* User defined configuration values */
>  struct iecm_user_config_data {
>  	u32 num_req_tx_qs; /* user requested TX queues through ethtool */
> @@ -534,6 +559,7 @@ int iecm_probe(struct pci_dev *pdev,
>  	       const struct pci_device_id __always_unused *ent,
>  	       struct iecm_adapter *adapter);
>  void iecm_remove(struct pci_dev *pdev);
> +void iecm_vport_adjust_qs(struct iecm_vport *vport);
>  int iecm_init_dflt_mbx(struct iecm_adapter *adapter);
>  void iecm_deinit_dflt_mbx(struct iecm_adapter *adapter);
>  void iecm_vc_ops_init(struct iecm_adapter *adapter);
> @@ -555,8 +581,15 @@ int iecm_send_config_rx_queues_msg(struct iecm_vport *vport);
>  int iecm_send_enable_vport_msg(struct iecm_vport *vport);
>  int iecm_send_disable_vport_msg(struct iecm_vport *vport);
>  int iecm_send_destroy_vport_msg(struct iecm_vport *vport);
> +int iecm_send_get_rx_ptype_msg(struct iecm_vport *vport);
> +int iecm_send_get_set_rss_key_msg(struct iecm_vport *vport, bool get);
> +int iecm_send_get_set_rss_lut_msg(struct iecm_vport *vport, bool get);
> +int iecm_send_get_set_rss_hash_msg(struct iecm_vport *vport, bool get);
> +int iecm_send_dealloc_vectors_msg(struct iecm_adapter *adapter);
> +int iecm_send_alloc_vectors_msg(struct iecm_adapter *adapter, u16 num_vectors);
>  int iecm_vport_params_buf_alloc(struct iecm_adapter *adapter);
>  void iecm_vport_params_buf_rel(struct iecm_adapter *adapter);
> +int iecm_send_get_stats_msg(struct iecm_vport *vport);
>  int iecm_get_vec_ids(struct iecm_adapter *adapter,
>  		     u16 *vecids, int num_vecids,
>  		     struct virtchnl2_vector_chunks *chunks);
> @@ -567,6 +600,9 @@ int iecm_send_mb_msg(struct iecm_adapter *adapter, enum virtchnl_ops op,
>  void iecm_vport_set_hsplit(struct iecm_vport *vport, bool ena);
>  int iecm_send_enable_channels_msg(struct iecm_vport *vport);
>  int iecm_send_disable_channels_msg(struct iecm_vport *vport);
> +bool iecm_is_feature_ena(struct iecm_vport *vport, netdev_features_t feature);
> +int iecm_check_descs(struct iecm_vport *vport, u64 rx_desc_ids,
> +		     u64 tx_desc_ids, u16 rxq_model, u16 txq_model);
>  int iecm_set_msg_pending(struct iecm_adapter *adapter,
>  			 struct iecm_ctlq_msg *ctlq_msg,
>  			 enum iecm_vport_vc_state err_enum);
> diff --git a/drivers/net/ethernet/intel/include/iecm_txrx.h b/drivers/net/ethernet/intel/include/iecm_txrx.h
> index 448cae0bf6e7..9f3086bfe575 100644
> --- a/drivers/net/ethernet/intel/include/iecm_txrx.h
> +++ b/drivers/net/ethernet/intel/include/iecm_txrx.h
> @@ -4,6 +4,9 @@
>  #ifndef _IECM_TXRX_H_
>  #define _IECM_TXRX_H_
>  
> +#include "virtchnl_lan_desc.h"
> +#include <linux/indirect_call_wrapper.h>
> +
>  #define IECM_LARGE_MAX_Q			256
>  #define IECM_MAX_Q				16
>  /* Mailbox Queue */
> @@ -77,9 +80,200 @@
>  #define IECM_MAX_RXBUFFER			9728
>  #define IECM_MAX_MTU		\
>  	(IECM_MAX_RXBUFFER - IECM_PACKET_HDR_PAD)
> -#define IECM_INT_NAME_STR_LEN	(IFNAMSIZ + 16)
> +
> +#define MAKEMASK(m, s)	((m) << (s))
> +
> +/* Checksum offload bits decoded from the receive descriptor. */
> +struct iecm_rx_csum_decoded {
> +	u8 l3l4p : 1;
> +	u8 ipe : 1;
> +	u8 eipe : 1;
> +	u8 eudpe : 1;
> +	u8 ipv6exadd : 1;
> +	u8 l4e : 1;
> +	u8 pprs : 1;
> +	u8 nat : 1;
> +	u8 rsc : 1;
> +	u8 raw_csum_inv : 1;
> +	u16 raw_csum;
> +};
> +
> +struct iecm_rx_extracted {
> +	unsigned int size;
> +	u16 vlan_tag;
> +	u16 rx_ptype;
> +};
>  
>  #define IECM_TX_COMPLQ_CLEAN_BUDGET	256
> +#define IECM_TX_MIN_LEN			17
> +#define IECM_TX_DESCS_FOR_SKB_DATA_PTR	1
> +#define IECM_TX_MAX_BUF			8
> +#define IECM_TX_DESCS_PER_CACHE_LINE	4
> +#define IECM_TX_DESCS_FOR_CTX		1
> +/* TX descriptors needed, worst case */
> +#define IECM_TX_DESC_NEEDED (MAX_SKB_FRAGS + IECM_TX_DESCS_FOR_CTX + \
> +			     IECM_TX_DESCS_PER_CACHE_LINE + \
> +			     IECM_TX_DESCS_FOR_SKB_DATA_PTR)
> +
> +/* The size limit for a transmit buffer in a descriptor is (16K - 1).
> + * In order to align with the read requests we will align the value to
> + * the nearest 4K which represents our maximum read request size.
> + */
> +#define IECM_TX_MAX_READ_REQ_SIZE	4096
> +#define IECM_TX_MAX_DESC_DATA		(16 * 1024 - 1)
> +#define IECM_TX_MAX_DESC_DATA_ALIGNED \
> +	(~(IECM_TX_MAX_READ_REQ_SIZE - 1) & IECM_TX_MAX_DESC_DATA)
> +
> +#define IECM_RX_DMA_ATTR \
> +	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
> +#define IECM_RX_DESC(R, i)	\
> +	(&(((union virtchnl2_rx_desc *)((R)->desc_ring))[i]))
> +
> +struct iecm_page_info {
> +	dma_addr_t dma;
> +	struct page *page;
> +	unsigned int page_offset;
> +	u16 pagecnt_bias;
> +};
> +
> +struct iecm_rx_buf {
> +#define IECM_RX_BUF_MAX_PAGES 2
> +	struct iecm_page_info page_info[IECM_RX_BUF_MAX_PAGES];

As I said previously, it will most likely be rejected upstream. They
will either suggest using compounds or page_pool (it uses compounds
for non-zero-order pages) or maybe introduce folio support to the
networking stack or so, but not such stuff.

> +	u8 page_indx;
> +	u16 buf_id;
> +	u16 buf_size;
> +	struct sk_buff *skb;
> +};
> +
> +/* Packet type non-ip values */
> +enum iecm_rx_ptype_l2 {
> +	IECM_RX_PTYPE_L2_RESERVED	= 0,
> +	IECM_RX_PTYPE_L2_MAC_PAY2	= 1,
> +	IECM_RX_PTYPE_L2_TIMESYNC_PAY2	= 2,
> +	IECM_RX_PTYPE_L2_FIP_PAY2	= 3,
> +	IECM_RX_PTYPE_L2_OUI_PAY2	= 4,
> +	IECM_RX_PTYPE_L2_MACCNTRL_PAY2	= 5,
> +	IECM_RX_PTYPE_L2_LLDP_PAY2	= 6,
> +	IECM_RX_PTYPE_L2_ECP_PAY2	= 7,
> +	IECM_RX_PTYPE_L2_EVB_PAY2	= 8,
> +	IECM_RX_PTYPE_L2_QCN_PAY2	= 9,
> +	IECM_RX_PTYPE_L2_EAPOL_PAY2	= 10,
> +	IECM_RX_PTYPE_L2_ARP		= 11,
> +};
> +
> +enum iecm_rx_ptype_outer_ip {
> +	IECM_RX_PTYPE_OUTER_L2	= 0,
> +	IECM_RX_PTYPE_OUTER_IP	= 1,
> +};
> +
> +enum iecm_rx_ptype_outer_ip_ver {
> +	IECM_RX_PTYPE_OUTER_NONE	= 0,
> +	IECM_RX_PTYPE_OUTER_IPV4	= 1,
> +	IECM_RX_PTYPE_OUTER_IPV6	= 2,
> +};
> +
> +enum iecm_rx_ptype_outer_fragmented {
> +	IECM_RX_PTYPE_NOT_FRAG	= 0,
> +	IECM_RX_PTYPE_FRAG	= 1,
> +};
> +
> +enum iecm_rx_ptype_tunnel_type {
> +	IECM_RX_PTYPE_TUNNEL_NONE		= 0,
> +	IECM_RX_PTYPE_TUNNEL_IP_IP		= 1,
> +	IECM_RX_PTYPE_TUNNEL_IP_GRENAT		= 2,
> +	IECM_RX_PTYPE_TUNNEL_IP_GRENAT_MAC	= 3,
> +	IECM_RX_PTYPE_TUNNEL_IP_GRENAT_MAC_VLAN	= 4,
> +};
> +
> +enum iecm_rx_ptype_tunnel_end_prot {
> +	IECM_RX_PTYPE_TUNNEL_END_NONE	= 0,
> +	IECM_RX_PTYPE_TUNNEL_END_IPV4	= 1,
> +	IECM_RX_PTYPE_TUNNEL_END_IPV6	= 2,
> +};
> +
> +enum iecm_rx_ptype_inner_prot {
> +	IECM_RX_PTYPE_INNER_PROT_NONE		= 0,
> +	IECM_RX_PTYPE_INNER_PROT_UDP		= 1,
> +	IECM_RX_PTYPE_INNER_PROT_TCP		= 2,
> +	IECM_RX_PTYPE_INNER_PROT_SCTP		= 3,
> +	IECM_RX_PTYPE_INNER_PROT_ICMP		= 4,
> +	IECM_RX_PTYPE_INNER_PROT_TIMESYNC	= 5,
> +};
> +
> +enum iecm_rx_ptype_payload_layer {
> +	IECM_RX_PTYPE_PAYLOAD_LAYER_NONE	= 0,
> +	IECM_RX_PTYPE_PAYLOAD_LAYER_PAY2	= 1,
> +	IECM_RX_PTYPE_PAYLOAD_LAYER_PAY3	= 2,
> +	IECM_RX_PTYPE_PAYLOAD_LAYER_PAY4	= 3,
> +};
> +
> +struct iecm_rx_ptype_decoded {
> +	u32 ptype:10;
> +	u32 known:1;
> +	u32 outer_ip:1;
> +	u32 outer_ip_ver:2;
> +	u32 outer_frag:1;
> +	u32 tunnel_type:3;
> +	u32 tunnel_end_prot:2;
> +	u32 tunnel_end_frag:1;
> +	u32 inner_prot:4;
> +	u32 payload_layer:3;
> +};
> +
> +enum iecm_rx_hsplit {
> +	IECM_RX_NO_HDR_SPLIT = 0,
> +	IECM_RX_HDR_SPLIT = 1,
> +};
> +
> +/* The iecm_ptype_lkup table is used to convert from the 10-bit ptype in the
> + * hardware to a bit-field that can be used by SW to more easily determine the
> + * packet type.
> + *
> + * Macros are used to shorten the table lines and make this table human
> + * readable.
> + *
> + * We store the PTYPE in the top byte of the bit field - this is just so that
> + * we can check that the table doesn't have a row missing, as the index into
> + * the table should be the PTYPE.
> + *
> + * Typical work flow:
> + *
> + * IF NOT iecm_ptype_lkup[ptype].known
> + * THEN
> + *      Packet is unknown
> + * ELSE IF iecm_ptype_lkup[ptype].outer_ip == IECM_RX_PTYPE_OUTER_IP
> + *      Use the rest of the fields to look at the tunnels, inner protocols, etc
> + * ELSE
> + *      Use the enum iecm_rx_ptype_l2 to decode the packet type
> + * ENDIF
> + */
> +/* macro to make the table lines short */
> +#define IECM_PTT(PTYPE, OUTER_IP, OUTER_IP_VER, OUTER_FRAG, T, TE, TEF, I, PL)\
> +	{	PTYPE, \
> +		1, \
> +		IECM_RX_PTYPE_OUTER_##OUTER_IP, \
> +		IECM_RX_PTYPE_OUTER_##OUTER_IP_VER, \
> +		IECM_RX_PTYPE_##OUTER_FRAG, \
> +		IECM_RX_PTYPE_TUNNEL_##T, \
> +		IECM_RX_PTYPE_TUNNEL_END_##TE, \
> +		IECM_RX_PTYPE_##TEF, \
> +		IECM_RX_PTYPE_INNER_PROT_##I, \
> +		IECM_RX_PTYPE_PAYLOAD_LAYER_##PL }
> +
> +#define IECM_PTT_UNUSED_ENTRY(PTYPE) { PTYPE, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
> +
> +/* shorter macros makes the table fit but are terse */
> +#define IECM_RX_PTYPE_NOF		IECM_RX_PTYPE_NOT_FRAG
> +#define IECM_RX_PTYPE_FRG		IECM_RX_PTYPE_FRAG
> +#define IECM_RX_PTYPE_INNER_PROT_TS	IECM_RX_PTYPE_INNER_PROT_TIMESYNC
> +#define IECM_RX_SUPP_PTYPE		18
> +#define IECM_RX_MAX_PTYPE		1024
> +#define IECM_RX_MAX_BASE_PTYPE		256
> +
> +#define IECM_INT_NAME_STR_LEN	(IFNAMSIZ + 16)
> +
> +/* Lookup table mapping the HW PTYPE to the bit field for decoding */
> +extern const struct iecm_rx_ptype_decoded iecm_ptype_lookup[IECM_RX_MAX_PTYPE];
>  
>  enum iecm_queue_flags_t {
>  	__IECM_Q_GEN_CHK,
> @@ -318,6 +512,4 @@ void iecm_vport_calc_total_qs(struct iecm_adapter *adapter,
>  			      struct virtchnl2_create_vport *vport_msg);
>  void iecm_vport_calc_num_q_groups(struct iecm_vport *vport);
>  void iecm_vport_calc_num_q_vec(struct iecm_vport *vport);
> -irqreturn_t
> -iecm_vport_intr_clean_queues(int __always_unused irq, void *data);
>  #endif /* !_IECM_TXRX_H_ */
> -- 
> 2.33.0

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
