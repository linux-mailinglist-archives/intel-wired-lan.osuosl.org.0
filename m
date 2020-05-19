Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB891D9CF3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 18:37:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B05A387787;
	Tue, 19 May 2020 16:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lqBcrRJFwBTp; Tue, 19 May 2020 16:37:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A618877E0;
	Tue, 19 May 2020 16:37:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 203C21BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1C16186CA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IVQI7_qeF3jn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:37:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E960686C9B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:37:01 +0000 (UTC)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04JGar61095144;
 Tue, 19 May 2020 11:36:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589906214;
 bh=MjZWN4eqirmO1zuXVKMZpWj6DU/BB9Bkdv6KoUQdtQk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=skCDIsblKHQ7PUW/UG6OuYZtdGL+FSnvUL4pGkkNk6ZEwC0nPCbv7KlUwMZBDX37h
 vbNypycxgUPA46ikXXt1Gd+bWrcu3BcR1jgHloLVmKKU4g1ZukhS3D0iq+po0hFe/O
 BOaWwyfGphh4cAvwZrLH5pHnCwbDzYIgDpuOpFC4=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04JGarZK011048
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 19 May 2020 11:36:53 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 May 2020 11:36:53 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 May 2020 11:36:53 -0500
Received: from [10.250.74.234] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04JGarcv052103;
 Tue, 19 May 2020 11:36:53 -0500
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516012948.3173993-4-vinicius.gomes@intel.com>
From: Murali Karicheri <m-karicheri2@ti.com>
Message-ID: <e9e21a52-9f7f-bd5e-4656-45ca748f845b@ti.com>
Date: Tue, 19 May 2020 12:36:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200516012948.3173993-4-vinicius.gomes@intel.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Subject: Re: [Intel-wired-lan] [next-queue RFC 3/4] igc: Add support for
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
> WIP
> 
- cut -
>   
>   /* forward declaration */
>   struct igc_stats {
> @@ -1549,6 +1550,71 @@ static int igc_ethtool_set_priv_flags(struct net_device *netdev, u32 priv_flags)
>   	return 0;
>   }
>   
> +static int igc_ethtool_get_preempt(struct net_device *netdev,
> +				   struct ethtool_fp *fpcmd)
> +{
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +	int i;
> +
> +	fpcmd->fp_supported = 1;
> +	fpcmd->fp_enabled = adapter->frame_preemption_active;
> +	fpcmd->min_frag_size = adapter->min_frag_size;
> +
> +	for (i = 0; i < adapter->num_tx_queues; i++) {
> +		struct igc_ring *ring = adapter->tx_ring[i];
> +
> +		fpcmd->supported_queues_mask |= BIT(i);
> +
> +		if (ring->preemptible)
> +			fpcmd->preemptible_queues_mask |= BIT(i);
> +	}
> +
> +	return 0;
> +}
> +
Is this something that can be provided by the driver when netdevice
is registered so that a common function at net core layer be
implemented instead of duplicating this in individual device drivers?

> +static int igc_ethtool_set_preempt(struct net_device *netdev,
> +				   struct ethtool_fp *fpcmd)
> +{
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +	int i;
> +
> +	/* The formula is (Section 8.12.4 of the datasheet):
> +	 *   MIN_FRAG_SIZE = 4 + (1 + MIN_FRAG)*64
> +	 * MIN_FRAG is represented by two bits, so we can only have
> +	 * min_frag_size between 68 and 260.
> +	 */
> +	if (fpcmd->min_frag_size < 68 || fpcmd->min_frag_size > 260)
> +		return -EINVAL;

- cut-

-- 
Murali Karicheri
Texas Instruments
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
