Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D18F71D9B18
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 17:27:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F0EA8805D;
	Tue, 19 May 2020 15:27:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c6UrHdq8tRgi; Tue, 19 May 2020 15:27:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDD0A8808D;
	Tue, 19 May 2020 15:27:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2FC21BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 15:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EE7AF88076
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 15:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TLdz+j6+wIwk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 15:27:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 121A88805D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 15:27:23 +0000 (UTC)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04JFRKOY021784;
 Tue, 19 May 2020 10:27:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589902040;
 bh=NqIe7jHq8bbuyG2WT7Q26CjYiKLu0TNTJ+StXWZ3tN4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Y8cQSiPCAV7qeg8yxjaIfhlt7liecclFzpHOkzkqcCR5ajz1WQFJBavB07o9W6M83
 vpmuSz0GLRuq/17exdIjpzSVzfut6ayrNIXb7YXbW8RSctCgO7g4NrHduFSteP9BUc
 V3WzHwgHduHAm7XLnSI1iwvcmLnRYai8zjrUVwh0=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04JFRKOk000571
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 19 May 2020 10:27:20 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 May 2020 10:27:19 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 May 2020 10:27:19 -0500
Received: from [10.250.74.234] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04JFRHPm112034;
 Tue, 19 May 2020 10:27:18 -0500
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516012948.3173993-2-vinicius.gomes@intel.com>
From: Murali Karicheri <m-karicheri2@ti.com>
Message-ID: <3d9351d6-4a04-5bd3-69a4-c30275373804@ti.com>
Date: Tue, 19 May 2020 11:27:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200516012948.3173993-2-vinicius.gomes@intel.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Subject: Re: [Intel-wired-lan] [next-queue RFC 1/4] ethtool: Add support for
 configuring frame preemption
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
Cc: Jose.Abreu@synopsys.com, netdev@vger.kernel.org, po.liu@nxp.com,
 vladimir.oltean@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

On 5/15/20 9:29 PM, Vinicius Costa Gomes wrote:
> Frame preemption (described in IEEE 802.3br-2016) defines the concept
> of preemptible and express queues. It allows traffic from express
> queues to "interrupt" traffic from preemptible queues, which are
> "resumed" after the express traffic has finished transmitting.
> 
> Frame preemption can only be used when both the local device and the
> link partner support it.
> 
> A new ethtool command was added to support the configuration
> parameters.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   include/linux/ethtool.h      |  6 ++++++
>   include/uapi/linux/ethtool.h | 25 +++++++++++++++++++++++++
>   net/ethtool/ioctl.c          | 36 ++++++++++++++++++++++++++++++++++++
>   3 files changed, 67 insertions(+)
> 
> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index a23b26e..e4a6710 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -360,6 +360,8 @@ bool ethtool_convert_link_mode_to_legacy_u32(u32 *legacy_u32,
>    * @get_ethtool_phy_stats: Return extended statistics about the PHY device.
>    *	This is only useful if the device maintains PHY statistics and
>    *	cannot use the standard PHY library helpers.
> + * @get_preempt: Get the network device Frame Preemption parameters.
> + * @set_preempt: Set the network device Frame Preemption parameters.
>    *
>    * All operations are optional (i.e. the function pointer may be set
>    * to %NULL) and callers must take this into account.  Callers must
> @@ -454,6 +456,10 @@ struct ethtool_ops {
>   				      struct ethtool_fecparam *);
>   	int	(*set_fecparam)(struct net_device *,
>   				      struct ethtool_fecparam *);
> +	int	(*get_preempt)(struct net_device *,
> +			       struct ethtool_fp *);
> +	int	(*set_preempt)(struct net_device *,
> +			       struct ethtool_fp *);
>   	void	(*get_ethtool_phy_stats)(struct net_device *,
>   					 struct ethtool_stats *, u64 *);

I understand this series for IET Preemption. But want to see if we can
also add EST parameter, queueMaxSDU, that is also configurable.

This is defined as up to 8 entries of queueMaxSDU (unsigned int) defined
in 12.29.1.1,12.29.1.1.1 of 802.1Q 2018 edition. May be
set_queue_max_sdu() with per traffic class queue value as an array
of __u16 values?


>   };
> diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
> index f4662b3..d63f9f8 100644
> --- a/include/uapi/linux/ethtool.h
> +++ b/include/uapi/linux/ethtool.h
> @@ -369,6 +369,28 @@ struct ethtool_eee {
>   	__u32	reserved[2];
>   };
>   
> +/**
> + * struct ethtool_fp - Frame Preemption information
> + * @cmd: ETHTOOL_{G,S}FP
> + * @fp_supported: If frame preemption is supported.
> + * @fp_enabled: If frame preemption should be advertised to the link partner
> + *	as enabled.
> + * @supported_queues_mask: Bitmask indicating which queues support being
> + *	configured as preemptible (bit 0 -> queue 0, bit N -> queue N).
> + * @preemptible_queues_mask: Bitmask indicating which queues are
> + *	configured as preemptible (bit 0 -> queue 0, bit N -> queue N).
> + * @min_frag_size: Minimum size for all non-final fragment size.
> + */
> +struct ethtool_fp {
> +	__u32	cmd;
> +	__u8	fp_supported;
> +	__u8	fp_enabled;

Could we add verify_supported and verify_enabled?

> +	__u32	supported_queues_mask;
> +	__u32	preemptible_queues_mask;
> +	__u32	min_frag_size;
> +	__u32	reserved[2];
> +};
> +
>   /**
>    * struct ethtool_modinfo - plugin module eeprom information
>    * @cmd: %ETHTOOL_GMODULEINFO
> @@ -1441,6 +1463,9 @@ enum ethtool_fec_config_bits {
>   #define ETHTOOL_GFECPARAM	0x00000050 /* Get FEC settings */
>   #define ETHTOOL_SFECPARAM	0x00000051 /* Set FEC settings */
>   
> +#define ETHTOOL_GFP		0x00000052 /* Get Frame Preemption settings */
> +#define ETHTOOL_SFP		0x00000053 /* Set Frame Preemption settings */
> +
>   /* compatibility with older code */
>   #define SPARC_ETH_GSET		ETHTOOL_GSET
>   #define SPARC_ETH_SSET		ETHTOOL_SSET
> diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
> index 52102ab..e15ad5c 100644
> --- a/net/ethtool/ioctl.c
> +++ b/net/ethtool/ioctl.c
> @@ -2531,6 +2531,36 @@ static int ethtool_set_fecparam(struct net_device *dev, void __user *useraddr)
>   	return dev->ethtool_ops->set_fecparam(dev, &fecparam);
>   }
>   
> +static int ethtool_get_preempt(struct net_device *dev, void __user *useraddr)
> +{
> +	struct ethtool_fp fpparam = { .cmd = ETHTOOL_GFP };
> +	int rc;
> +
> +	if (!dev->ethtool_ops->get_preempt)
> +		return -EOPNOTSUPP;
> +
> +	rc = dev->ethtool_ops->get_preempt(dev, &fpparam);
> +	if (rc)
> +		return rc;
> +
> +	if (copy_to_user(useraddr, &fpparam, sizeof(fpparam)))
> +		return -EFAULT;
> +	return 0;
> +}
> +
> +static int ethtool_set_preempt(struct net_device *dev, void __user *useraddr)
> +{
> +	struct ethtool_fp fpparam;
> +
> +	if (!dev->ethtool_ops->set_preempt)
> +		return -EOPNOTSUPP;
> +
> +	if (copy_from_user(&fpparam, useraddr, sizeof(fpparam)))
> +		return -EFAULT;
> +
> +	return dev->ethtool_ops->set_preempt(dev, &fpparam);
> +}
> +
>   /* The main entry point in this file.  Called from net/core/dev_ioctl.c */
>   
>   int dev_ethtool(struct net *net, struct ifreq *ifr)
> @@ -2810,6 +2840,12 @@ int dev_ethtool(struct net *net, struct ifreq *ifr)
>   	case ETHTOOL_SFECPARAM:
>   		rc = ethtool_set_fecparam(dev, useraddr);
>   		break;
> +	case ETHTOOL_GFP:
> +		rc = ethtool_get_preempt(dev, useraddr);
> +		break;
> +	case ETHTOOL_SFP:
> +		rc = ethtool_set_preempt(dev, useraddr);
> +		break;
>   	default:
>   		rc = -EOPNOTSUPP;
>   	}
> 

-- 
Murali Karicheri
Texas Instruments
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
