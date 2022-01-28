Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CE349F8AB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 12:49:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E41F408A2;
	Fri, 28 Jan 2022 11:49:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J03VoTQ61Yy7; Fri, 28 Jan 2022 11:49:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14018408D7;
	Fri, 28 Jan 2022 11:49:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7A6F1BF338
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 11:49:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E1FF8404BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 11:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IPkiAc8lK9Z3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 11:49:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F37B40462
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 11:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370573; x=1674906573;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s7IHIXQKKVpFTJ5CvoeiCRk6kAhEfFZMZiEtvBLgE30=;
 b=E5ZAyY39wKmsakZqulIV2dEmwlJk7wFwo/uDGf4KwN0q5Ww4W9Uf4vla
 dMV6Bw7esISVC+9qw28WnGqsTIsPr3mpFRSdAsf+sArMeq82Q7sQUau6O
 jA/vXdLL1maNiM6E7U4BldhtBMlGlij6d5xzDlyI33gxoGnLsbXZysB8X
 cqWjMMLT52rHDqaCqfXEnjSKFDKnGwTI5bFE391JY2TfcyMZbYmb3s6MN
 dGzyeqzTUHEhNr5YzMQ0ZWWbqE5zDiTYs+O/AMO8rdBHDMYBcBZ3Xcht5
 pdnQ84qlwmmZXdOx4v8ufN5b4WenUMHe4UNrAeqq6nu/o96B7OGkwMgwA g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="307820966"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="307820966"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="478262738"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga003.jf.intel.com with ESMTP; 28 Jan 2022 03:49:30 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20SBnTXY015811; Fri, 28 Jan 2022 11:49:29 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri, 28 Jan 2022 12:47:42 +0100
Message-Id: <20220128001009.721392-2-alan.brady@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/19] virtchnl: Add new
 virtchnl2 ops
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
Cc: intel-wired-lan@lists.osuosl.org, Phani Burra <phani.r.burra@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 27 Jan 2022 16:09:51 -0800

> This extends the virtchnl interface to add new virtchnl ops and defines
> needed to implement virtchnl 2.0.
> 
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  MAINTAINERS                           |    1 +
>  include/linux/avf/virtchnl.h          | 1507 +++++++++++++++++++++++--
>  include/linux/avf/virtchnl_2.h        | 1243 ++++++++++++++++++++
>  include/linux/avf/virtchnl_lan_desc.h |  603 ++++++++++
>  4 files changed, 3237 insertions(+), 117 deletions(-)
>  create mode 100644 include/linux/avf/virtchnl_2.h
>  create mode 100644 include/linux/avf/virtchnl_lan_desc.h
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 0d7883977e9b..5685d64afd76 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -9602,6 +9602,7 @@ F:	Documentation/networking/device_drivers/ethernet/intel/
>  F:	drivers/net/ethernet/intel/
>  F:	drivers/net/ethernet/intel/*/
>  F:	include/linux/avf/virtchnl.h
> +F:	include/linux/avf/virtchnl_2.h
>  F:	include/linux/net/intel/iidc.h
>  
>  INTEL ETHERNET PROTOCOL DRIVER FOR RDMA
> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
> index 2ce27e8e4f19..aee5e2677e1c 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -14,8 +14,9 @@
>  #define _VIRTCHNL_H_
>  
>  /* Description:
> - * This header file describes the VF-PF communication protocol used
> - * by the drivers for all devices starting from our 40G product line
> + * This header file describes the Virtual Function (VF) - Physical Function
> + * (PF) communication protocol used by the drivers for all devices starting
> + * from our 40G product line
>   *
>   * Admin queue buffer usage:
>   * desc->opcode is always aqc_opc_send_msg_to_pf
> @@ -29,8 +30,8 @@
>   * have a maximum of sixteen queues for all of its VSIs.
>   *
>   * The PF is required to return a status code in v_retval for all messages
> - * except RESET_VF, which does not require any response. The return value
> - * is of status_code type, defined in the shared type.h.
> + * except RESET_VF, which does not require any response. The returned value
> + * is of virtchnl_status_code type, defined here.
>   *
>   * In general, VF driver initialization should roughly follow the order of
>   * these opcodes. The VF driver must first validate the API version of the
> @@ -45,7 +46,21 @@
>   * value in current and future projects
>   */
>  
> -/* Error Codes */
> +/* These macros are used to generate compilation errors if a structure/union
> + * is not exactly the correct length. It gives a divide by zero error if the
> + * structure/union is not of the correct size, otherwise it creates an enum
> + * that is never used.
> + */
> +#define VIRTCHNL_CHECK_STRUCT_LEN(n, X) enum virtchnl_static_assert_enum_##X \
> +	{ virtchnl_static_assert_##X = (n) / ((sizeof(struct X) == (n)) ? 1 : 0) }
> +#define VIRTCHNL_CHECK_UNION_LEN(n, X) enum virtchnl_static_asset_enum_##X \
> +	{ virtchnl_static_assert_##X = (n) / ((sizeof(union X) == (n)) ? 1 : 0) }
> +
> +/* Error Codes
> + * Note that many older versions of various iAVF drivers convert the reported
> + * status code directly into an iavf_status enumeration. For this reason, it
> + * is important that the values of these enumerations line up.
> + */
>  enum virtchnl_status_code {
>  	VIRTCHNL_STATUS_SUCCESS				= 0,
>  	VIRTCHNL_STATUS_ERR_PARAM			= -5,
> @@ -92,6 +107,9 @@ enum virtchnl_rx_hsplit {
>  	VIRTCHNL_RX_HSPLIT_SPLIT_SCTP    = 8,
>  };
>  
> +enum virtchnl_bw_limit_type {
> +	VIRTCHNL_BW_SHAPER = 0,
> +};
>  /* END GENERIC DEFINES */
>  
>  /* Opcodes for VF-PF communication. These are placed in the v_opcode field
> @@ -136,11 +154,14 @@ enum virtchnl_ops {
>  	VIRTCHNL_OP_DISABLE_CHANNELS = 31,
>  	VIRTCHNL_OP_ADD_CLOUD_FILTER = 32,
>  	VIRTCHNL_OP_DEL_CLOUD_FILTER = 33,
> -	/* opcode 34 - 44 are reserved */
> +	/* opcode 34 is reserved */

Here's a gap between 34 and 38. If you decided to comment gaps,
it should be mentioned as well.

> +	/* opcodes 38, 39, 40, 41, 42 and 43 are reserved */
> +	VIRTCHNL_OP_GET_SUPPORTED_RXDIDS = 44,
>  	VIRTCHNL_OP_ADD_RSS_CFG = 45,
>  	VIRTCHNL_OP_DEL_RSS_CFG = 46,
>  	VIRTCHNL_OP_ADD_FDIR_FILTER = 47,
>  	VIRTCHNL_OP_DEL_FDIR_FILTER = 48,
> +	VIRTCHNL_OP_GET_MAX_RSS_QREGION = 50,
>  	VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS = 51,
>  	VIRTCHNL_OP_ADD_VLAN_V2 = 52,
>  	VIRTCHNL_OP_DEL_VLAN_V2 = 53,
> @@ -148,31 +169,206 @@ enum virtchnl_ops {
>  	VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2 = 55,
>  	VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2 = 56,
>  	VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2 = 57,
> +	VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2 = 58,
> +	VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2 = 59,
> +	VIRTCHNL_OP_1588_PTP_GET_CAPS = 60,
> +	VIRTCHNL_OP_1588_PTP_GET_TIME = 61,
> +	VIRTCHNL_OP_1588_PTP_SET_TIME = 62,
> +	VIRTCHNL_OP_1588_PTP_ADJ_TIME = 63,
> +	VIRTCHNL_OP_1588_PTP_ADJ_FREQ = 64,
> +	VIRTCHNL_OP_1588_PTP_TX_TIMESTAMP = 65,
> +	VIRTCHNL_OP_GET_QOS_CAPS = 66,
> +	VIRTCHNL_OP_CONFIG_QUEUE_TC_MAP = 67,
> +	VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS = 68,
> +	VIRTCHNL_OP_1588_PTP_SET_PIN_CFG = 69,
> +	VIRTCHNL_OP_1588_PTP_EXT_TIMESTAMP = 70,
> +	VIRTCHNL_OP_ENABLE_QUEUES_V2 = 107,
> +	VIRTCHNL_OP_DISABLE_QUEUES_V2 = 108,
> +	VIRTCHNL_OP_MAP_QUEUE_VECTOR = 111,
> +	/* New major set of opcodes introduced and so leaving room for
> +	 * old misc opcodes to be added in future. Also these opcodes may only
> +	 * be used if both the PF and VF have successfully negotiated the
> +	 * VIRTCHNL version as 2.0 during VIRTCHNL_OP_VERSION exchange.
> +	 */
> +	VIRTCHNL2_OP_GET_CAPS = 500,
> +	VIRTCHNL2_OP_CREATE_VPORT = 501,
> +	VIRTCHNL2_OP_DESTROY_VPORT = 502,
> +	VIRTCHNL2_OP_ENABLE_VPORT = 503,
> +	VIRTCHNL2_OP_DISABLE_VPORT = 504,
> +	VIRTCHNL2_OP_CONFIG_TX_QUEUES = 505,
> +	VIRTCHNL2_OP_CONFIG_RX_QUEUES = 506,
> +	VIRTCHNL2_OP_ENABLE_QUEUES = 507,
> +	VIRTCHNL2_OP_DISABLE_QUEUES = 508,
> +	VIRTCHNL2_OP_ADD_QUEUES = 509,
> +	VIRTCHNL2_OP_DEL_QUEUES = 510,
> +	VIRTCHNL2_OP_MAP_QUEUE_VECTOR = 511,
> +	VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR = 512,
> +	VIRTCHNL2_OP_GET_RSS_KEY = 513,
> +	VIRTCHNL2_OP_SET_RSS_KEY = 514,
> +	VIRTCHNL2_OP_GET_RSS_LUT = 515,
> +	VIRTCHNL2_OP_SET_RSS_LUT = 516,
> +	VIRTCHNL2_OP_GET_RSS_HASH = 517,
> +	VIRTCHNL2_OP_SET_RSS_HASH = 518,
> +	VIRTCHNL2_OP_SET_SRIOV_VFS = 519,
> +	VIRTCHNL2_OP_ALLOC_VECTORS = 520,
> +	VIRTCHNL2_OP_DEALLOC_VECTORS = 521,
> +	VIRTCHNL2_OP_EVENT = 522,
> +	VIRTCHNL2_OP_GET_STATS = 523,
> +	VIRTCHNL2_OP_RESET_VF = 524,
> +	/* opcode 525 is reserved */
> +	VIRTCHNL2_OP_GET_PTYPE_INFO = 526,
> +	/* opcode 527 and 528 are reserved for VIRTCHNL2_OP_GET_PTYPE_ID and
> +	 * VIRTCHNL2_OP_GET_PTYPE_INFO_RAW
> +	 */
> +	/* opcodes 529, 530, and 531 are reserved */
>  	VIRTCHNL_OP_MAX,
>  };
>  
> -/* These macros are used to generate compilation errors if a structure/union
> - * is not exactly the correct length. It gives a divide by zero error if the
> - * structure/union is not of the correct size, otherwise it creates an enum
> - * that is never used.
> - */
> -#define VIRTCHNL_CHECK_STRUCT_LEN(n, X) enum virtchnl_static_assert_enum_##X \
> -	{ virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
> -#define VIRTCHNL_CHECK_UNION_LEN(n, X) enum virtchnl_static_asset_enum_##X \
> -	{ virtchnl_static_assert_##X = (n)/((sizeof(union X) == (n)) ? 1 : 0) }
> -
> -/* Virtual channel message descriptor. This overlays the admin queue
> - * descriptor. All other data is passed in external buffers.
> - */
> -
> -struct virtchnl_msg {
> -	u8 pad[8];			 /* AQ flags/opcode/len/retval fields */
> -	enum virtchnl_ops v_opcode; /* avoid confusion with desc->opcode */
> -	enum virtchnl_status_code v_retval;  /* ditto for desc->retval */
> -	u32 vfid;			 /* used by PF when sending to VF */
> -};
> +static inline const char *virtchnl_op_str(enum virtchnl_ops v_opcode)
> +{
> +	switch (v_opcode) {
> +	case VIRTCHNL_OP_UNKNOWN:
> +		return "VIRTCHNL_OP_UNKNOWN";
> +	case VIRTCHNL_OP_VERSION:
> +		return "VIRTCHNL_OP_VERSION";
> +	case VIRTCHNL_OP_RESET_VF:
> +		return "VIRTCHNL_OP_RESET_VF";
> +	case VIRTCHNL_OP_GET_VF_RESOURCES:
> +		return "VIRTCHNL_OP_GET_VF_RESOURCES";
> +	case VIRTCHNL_OP_CONFIG_TX_QUEUE:
> +		return "VIRTCHNL_OP_CONFIG_TX_QUEUE";
> +	case VIRTCHNL_OP_CONFIG_RX_QUEUE:
> +		return "VIRTCHNL_OP_CONFIG_RX_QUEUE";
> +	case VIRTCHNL_OP_CONFIG_VSI_QUEUES:
> +		return "VIRTCHNL_OP_CONFIG_VSI_QUEUES";
> +	case VIRTCHNL_OP_CONFIG_IRQ_MAP:
> +		return "VIRTCHNL_OP_CONFIG_IRQ_MAP";
> +	case VIRTCHNL_OP_ENABLE_QUEUES:
> +		return "VIRTCHNL_OP_ENABLE_QUEUES";
> +	case VIRTCHNL_OP_DISABLE_QUEUES:
> +		return "VIRTCHNL_OP_DISABLE_QUEUES";
> +	case VIRTCHNL_OP_ADD_ETH_ADDR:
> +		return "VIRTCHNL_OP_ADD_ETH_ADDR";
> +	case VIRTCHNL_OP_DEL_ETH_ADDR:
> +		return "VIRTCHNL_OP_DEL_ETH_ADDR";
> +	case VIRTCHNL_OP_ADD_VLAN:
> +		return "VIRTCHNL_OP_ADD_VLAN";
> +	case VIRTCHNL_OP_DEL_VLAN:
> +		return "VIRTCHNL_OP_DEL_VLAN";
> +	case VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE:
> +		return "VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE";
> +	case VIRTCHNL_OP_GET_STATS:
> +		return "VIRTCHNL_OP_GET_STATS";
> +	case VIRTCHNL_OP_RSVD:
> +		return "VIRTCHNL_OP_RSVD";
> +	case VIRTCHNL_OP_EVENT:
> +		return "VIRTCHNL_OP_EVENT";
> +	case VIRTCHNL_OP_CONFIG_RSS_KEY:
> +		return "VIRTCHNL_OP_CONFIG_RSS_KEY";
> +	case VIRTCHNL_OP_CONFIG_RSS_LUT:
> +		return "VIRTCHNL_OP_CONFIG_RSS_LUT";
> +	case VIRTCHNL_OP_GET_RSS_HENA_CAPS:
> +		return "VIRTCHNL_OP_GET_RSS_HENA_CAPS";
> +	case VIRTCHNL_OP_SET_RSS_HENA:
> +		return "VIRTCHNL_OP_SET_RSS_HENA";
> +	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
> +		return "VIRTCHNL_OP_ENABLE_VLAN_STRIPPING";
> +	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
> +		return "VIRTCHNL_OP_DISABLE_VLAN_STRIPPING";
> +	case VIRTCHNL_OP_REQUEST_QUEUES:
> +		return "VIRTCHNL_OP_REQUEST_QUEUES";
> +	case VIRTCHNL_OP_ENABLE_CHANNELS:
> +		return "VIRTCHNL_OP_ENABLE_CHANNELS";
> +	case VIRTCHNL_OP_DISABLE_CHANNELS:
> +		return "VIRTCHNL_OP_DISABLE_CHANNELS";
> +	case VIRTCHNL_OP_ADD_CLOUD_FILTER:
> +		return "VIRTCHNL_OP_ADD_CLOUD_FILTER";
> +	case VIRTCHNL_OP_DEL_CLOUD_FILTER:
> +		return "VIRTCHNL_OP_DEL_CLOUD_FILTER";
> +	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
> +		return "VIRTCHNL_OP_GET_SUPPORTED_RXDIDS";
> +	case VIRTCHNL_OP_ADD_RSS_CFG:
> +		return "VIRTCHNL_OP_ADD_RSS_CFG";
> +	case VIRTCHNL_OP_DEL_RSS_CFG:
> +		return "VIRTCHNL_OP_DEL_RSS_CFG";
> +	case VIRTCHNL_OP_ADD_FDIR_FILTER:
> +		return "VIRTCHNL_OP_ADD_FDIR_FILTER";
> +	case VIRTCHNL_OP_DEL_FDIR_FILTER:
> +		return "VIRTCHNL_OP_DEL_FDIR_FILTER";
> +	case VIRTCHNL_OP_GET_MAX_RSS_QREGION:
> +		return "VIRTCHNL_OP_GET_MAX_RSS_QREGION";
> +	case VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS:
> +		return "VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS";
> +	case VIRTCHNL_OP_ADD_VLAN_V2:
> +		return "VIRTCHNL_OP_ADD_VLAN_V2";
> +	case VIRTCHNL_OP_DEL_VLAN_V2:
> +		return "VIRTCHNL_OP_DEL_VLAN_V2";
> +	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2:
> +		return "VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2";
> +	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2:
> +		return "VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2";
> +	case VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2:
> +		return "VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2";
> +	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
> +		return "VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2";
> +	case VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2:
> +		return "VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2";
> +	case VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2:
> +		return "VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2";
> +	case VIRTCHNL_OP_1588_PTP_GET_CAPS:
> +		return "VIRTCHNL_OP_1588_PTP_GET_CAPS";
> +	case VIRTCHNL_OP_1588_PTP_GET_TIME:
> +		return "VIRTCHNL_OP_1588_PTP_GET_TIME";
> +	case VIRTCHNL_OP_1588_PTP_SET_TIME:
> +		return "VIRTCHNL_OP_1588_PTP_SET_TIME";
> +	case VIRTCHNL_OP_1588_PTP_ADJ_TIME:
> +		return "VIRTCHNL_OP_1588_PTP_ADJ_TIME";
> +	case VIRTCHNL_OP_1588_PTP_ADJ_FREQ:
> +		return "VIRTCHNL_OP_1588_PTP_ADJ_FREQ";
> +	case VIRTCHNL_OP_1588_PTP_TX_TIMESTAMP:
> +		return "VIRTCHNL_OP_1588_PTP_TX_TIMESTAMP";
> +	case VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS:
> +		return "VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS";
> +	case VIRTCHNL_OP_1588_PTP_SET_PIN_CFG:
> +		return "VIRTCHNL_OP_1588_PTP_SET_PIN_CFG";
> +	case VIRTCHNL_OP_1588_PTP_EXT_TIMESTAMP:
> +		return "VIRTCHNL_OP_1588_PTP_EXT_TIMESTAMP";
> +	case VIRTCHNL_OP_ENABLE_QUEUES_V2:
> +		return "VIRTCHNL_OP_ENABLE_QUEUES_V2";
> +	case VIRTCHNL_OP_DISABLE_QUEUES_V2:
> +		return "VIRTCHNL_OP_DISABLE_QUEUES_V2";
> +	case VIRTCHNL_OP_MAP_QUEUE_VECTOR:
> +		return "VIRTCHNL_OP_MAP_QUEUE_VECTOR";
> +	case VIRTCHNL_OP_MAX:
> +		return "VIRTCHNL_OP_MAX";
> +	default:
> +		return "Unsupported (update virtchnl.h)";
> +	}
> +}

This static inline will result in bloated functions and text
(code). As it's far from hotpath, it should be moved into a C
file.
Moreover, all those could be defined in an array to reduce text
size even more and compressed via definition.

#define VIRTCHNL_OP_STR(op)	\
	[VIRTCHNL_OP_##op] = "VIRTCHNL_OP_" #op

static const char * const virtchnl_op_strings[] = {
	VIRTCHNL_OP_STR(UNKNOWN),
	...
};

const char *virtchnl_op_str(enum virtchnl_ops v_opcode)
{
	/* Will be NULL for not defined codes */
	return virtchnl_op_strings[v_opcode] ? :
	       "Unsupported (update virtchnl.h)";
}

>  
> -VIRTCHNL_CHECK_STRUCT_LEN(20, virtchnl_msg);
> +static inline const char *virtchnl_stat_str(enum virtchnl_status_code v_status)
> +{
> +	switch (v_status) {
> +	case VIRTCHNL_STATUS_SUCCESS:
> +		return "VIRTCHNL_STATUS_SUCCESS";
> +	case VIRTCHNL_STATUS_ERR_PARAM:
> +		return "VIRTCHNL_STATUS_ERR_PARAM";
> +	case VIRTCHNL_STATUS_ERR_NO_MEMORY:
> +		return "VIRTCHNL_STATUS_ERR_NO_MEMORY";
> +	case VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH:
> +		return "VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH";
> +	case VIRTCHNL_STATUS_ERR_CQP_COMPL_ERROR:
> +		return "VIRTCHNL_STATUS_ERR_CQP_COMPL_ERROR";
> +	case VIRTCHNL_STATUS_ERR_INVALID_VF_ID:
> +		return "VIRTCHNL_STATUS_ERR_INVALID_VF_ID";
> +	case VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR:
> +		return "VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR";
> +	case VIRTCHNL_STATUS_ERR_NOT_SUPPORTED:
> +		return "VIRTCHNL_STATUS_ERR_NOT_SUPPORTED";
> +	default:
> +		return "Unknown status code (update virtchnl.h)";
> +	}
> +}

Same here.

>  
>  /* Message descriptions and data structures. */
>  

--- 8< ---

> @@ -538,17 +851,17 @@ VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_vlan_filter_list);
>   */
>  enum virtchnl_vlan_support {
>  	VIRTCHNL_VLAN_UNSUPPORTED =		0,
> -	VIRTCHNL_VLAN_ETHERTYPE_8100 =		BIT(0),
> -	VIRTCHNL_VLAN_ETHERTYPE_88A8 =		BIT(1),
> -	VIRTCHNL_VLAN_ETHERTYPE_9100 =		BIT(2),
> -	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1 =	BIT(8),
> -	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2 =	BIT(9),
> -	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2 =	BIT(10),
> -	VIRTCHNL_VLAN_PRIO =			BIT(24),
> -	VIRTCHNL_VLAN_FILTER_MASK =		BIT(28),
> -	VIRTCHNL_VLAN_ETHERTYPE_AND =		BIT(29),
> -	VIRTCHNL_VLAN_ETHERTYPE_XOR =		BIT(30),
> -	VIRTCHNL_VLAN_TOGGLE =			BIT(31),
> +	VIRTCHNL_VLAN_ETHERTYPE_8100 =		0x00000001,
> +	VIRTCHNL_VLAN_ETHERTYPE_88A8 =		0x00000002,
> +	VIRTCHNL_VLAN_ETHERTYPE_9100 =		0x00000004,
> +	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1 =	0x00000100,
> +	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2 =	0x00000200,
> +	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2 =	0x00000400,
> +	VIRTCHNL_VLAN_PRIO =			0x01000000,
> +	VIRTCHNL_VLAN_FILTER_MASK =		0x10000000,
> +	VIRTCHNL_VLAN_ETHERTYPE_AND =		0x20000000,
> +	VIRTCHNL_VLAN_ETHERTYPE_XOR =		0x40000000,
> +	VIRTCHNL_VLAN_TOGGLE =			0x80000000

Any particular reason for reverting this? Upstream maintainers
would most likely ask the same.

>  };
>  
>  /* This structure is used as part of the VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS

--- 8< ---

> +
> +static inline const char *virtchnl2_op_str(enum virtchnl_ops v_opcode)
> +{
> +	switch (v_opcode) {
> +	case VIRTCHNL2_OP_GET_CAPS:
> +		return "VIRTCHNL2_OP_GET_CAPS";
> +	case VIRTCHNL2_OP_CREATE_VPORT:
> +		return "VIRTCHNL2_OP_CREATE_VPORT";
> +	case VIRTCHNL2_OP_DESTROY_VPORT:
> +		return "VIRTCHNL2_OP_DESTROY_VPORT";
> +	case VIRTCHNL2_OP_ENABLE_VPORT:
> +		return "VIRTCHNL2_OP_ENABLE_VPORT";
> +	case VIRTCHNL2_OP_DISABLE_VPORT:
> +		return "VIRTCHNL2_OP_DISABLE_VPORT";
> +	case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
> +		return "VIRTCHNL2_OP_CONFIG_TX_QUEUES";
> +	case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
> +		return "VIRTCHNL2_OP_CONFIG_RX_QUEUES";
> +	case VIRTCHNL2_OP_ENABLE_QUEUES:
> +		return "VIRTCHNL2_OP_ENABLE_QUEUES";
> +	case VIRTCHNL2_OP_DISABLE_QUEUES:
> +		return "VIRTCHNL2_OP_DISABLE_QUEUES";
> +	case VIRTCHNL2_OP_ADD_QUEUES:
> +		return "VIRTCHNL2_OP_ADD_QUEUES";
> +	case VIRTCHNL2_OP_DEL_QUEUES:
> +		return "VIRTCHNL2_OP_DEL_QUEUES";
> +	case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
> +		return "VIRTCHNL2_OP_MAP_QUEUE_VECTOR";
> +	case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
> +		return "VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR";
> +	case VIRTCHNL2_OP_GET_RSS_KEY:
> +		return "VIRTCHNL2_OP_GET_RSS_KEY";
> +	case VIRTCHNL2_OP_SET_RSS_KEY:
> +		return "VIRTCHNL2_OP_SET_RSS_KEY";
> +	case VIRTCHNL2_OP_GET_RSS_LUT:
> +		return "VIRTCHNL2_OP_GET_RSS_LUT";
> +	case VIRTCHNL2_OP_SET_RSS_LUT:
> +		return "VIRTCHNL2_OP_SET_RSS_LUT";
> +	case VIRTCHNL2_OP_GET_RSS_HASH:
> +		return "VIRTCHNL2_OP_GET_RSS_HASH";
> +	case VIRTCHNL2_OP_SET_RSS_HASH:
> +		return "VIRTCHNL2_OP_SET_RSS_HASH";
> +	case VIRTCHNL2_OP_SET_SRIOV_VFS:
> +		return "VIRTCHNL2_OP_SET_SRIOV_VFS";
> +	case VIRTCHNL2_OP_ALLOC_VECTORS:
> +		return "VIRTCHNL2_OP_ALLOC_VECTORS";
> +	case VIRTCHNL2_OP_DEALLOC_VECTORS:
> +		return "VIRTCHNL2_OP_DEALLOC_VECTORS";
> +	case VIRTCHNL2_OP_GET_PTYPE_INFO:
> +		return "VIRTCHNL2_OP_GET_PTYPE_INFO";
> +	case VIRTCHNL2_OP_GET_STATS:
> +		return "VIRTCHNL2_OP_GET_STATS";
> +	case VIRTCHNL2_OP_EVENT:
> +		return "VIRTCHNL2_OP_EVENT";
> +	case VIRTCHNL2_OP_RESET_VF:
> +		return "VIRTCHNL2_OP_RESET_VF";
> +	default:
> +		return virtchnl_op_str(v_opcode);
> +	}
> +}

Same here (array + compression). Since v2 ops start from 500, array
indexes can be shifted by this value.

> +
> +/**
> + * virtchnl2_vc_validate_vf_msg
> + * @ver: Virtchnl version info
> + * @v_opcode: Opcode for the message
> + * @msg: pointer to the msg buffer
> + * @msglen: msg length
> + *
> + * validate msg format against struct for each opcode
> + */

--- 8< ---

> -- 
> 2.33.0

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
