Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1BD1DB424
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 14:50:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 79516203C7;
	Wed, 20 May 2020 12:50:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RkJMY7WJYreq; Wed, 20 May 2020 12:50:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AB164204C8;
	Wed, 20 May 2020 12:50:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C1801BF31E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 12:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 821AB84FD2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 12:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YkI-vD2crl6P for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 12:50:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 15B4B88898
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 12:50:30 +0000 (UTC)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04KCoSm9119777;
 Wed, 20 May 2020 07:50:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589979028;
 bh=1HPHxke/GLTndyiadBmZjj59LiCjt8Qr0u6wBUQqrnk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=VQ4gHkMEM4yqTablEOJ04136nTG7hsJ9igM0ba5Fs9MrZ0jkWlPTNNt6VVMe8kHdd
 +JGWa95Ala3Tdq2ovgz6XCI08klr0MibWmXgCKpe1/qCJK3EgPMe4e6k0WHx6kuTAo
 XqyIjrRsQw23DWtOIFfgugabw3F1u7Hc6cfKt6JM=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04KCoSpv008369
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 07:50:28 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 07:50:27 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 07:50:27 -0500
Received: from [10.250.74.234] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KCoRHb117631;
 Wed, 20 May 2020 07:50:27 -0500
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516012948.3173993-5-vinicius.gomes@intel.com>
From: Murali Karicheri <m-karicheri2@ti.com>
Message-ID: <92daa9e5-fd76-3801-a485-36f1be59cfd6@ti.com>
Date: Wed, 20 May 2020 08:50:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200516012948.3173993-5-vinicius.gomes@intel.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Subject: Re: [Intel-wired-lan] [next-queue RFC 4/4] igc: Add support for
 exposing frame preemption stats registers
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

Hi Vinicious,

On 5/15/20 9:29 PM, Vinicius Costa Gomes wrote:
> [WIP]
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c |  9 +++++++++
>   drivers/net/ethernet/intel/igc/igc_regs.h    | 10 ++++++++++
>   2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 48d5d18..09d72f7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -322,6 +322,15 @@ static void igc_ethtool_get_regs(struct net_device *netdev,
>   
>   	for (i = 0; i < 8; i++)
>   		regs_buff[205 + i] = rd32(IGC_ETQF(i));
> +
> +	regs_buff[214] = rd32(IGC_PRMPTDTCNT);
> +	regs_buff[215] = rd32(IGC_PRMEVNTTCNT);
> +	regs_buff[216] = rd32(IGC_PRMPTDRCNT);
> +	regs_buff[217] = rd32(IGC_PRMEVNTRCNT);
> +	regs_buff[218] = rd32(IGC_PRMPBLTCNT);
> +	regs_buff[219] = rd32(IGC_PRMPBLRCNT);
> +	regs_buff[220] = rd32(IGC_PRMEXPTCNT);
> +	regs_buff[221] = rd32(IGC_PRMEXPRCNT);
>   }
>   
>   static void igc_ethtool_get_wol(struct net_device *netdev,
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
> index 7f999cf..010bb48 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -211,6 +211,16 @@
>   
>   #define IGC_FTQF(_n)	(0x059E0 + (4 * (_n)))  /* 5-tuple Queue Fltr */
>   
> +/* Time sync registers - preemption statistics */
> +#define IGC_PRMPTDTCNT	0x04280  /* Good TX Preempted Packets */
> +#define IGC_PRMEVNTTCNT	0x04298  /* TX Preemption event counter */
> +#define IGC_PRMPTDRCNT	0x04284  /* Good RX Preempted Packets */
> +#define IGC_PRMEVNTRCNT	0x0429C  /* RX Preemption event counter */
> +#define IGC_PRMPBLTCNT	0x04288  /* Good TX Preemptable Packets */
> +#define IGC_PRMPBLRCNT	0x0428C  /* Good RX Preemptable Packets */
> +#define IGC_PRMEXPTCNT	0x04290  /* Good TX Express Packets */
> +#define IGC_PRMEXPRCNT	0x042A0  /* Preemption Exception Counter */
> +
>   /* Transmit Scheduling Registers */
>   #define IGC_TQAVCTRL		0x3570
>   #define IGC_TXQCTL(_n)		(0x3344 + 0x4 * (_n))
> 
There are some statistics supported by AM65 CPSW as well. So do you plan
to add this to ethtool stats that is dumped using ethtool -S option?

Thanks and regards,
-- 
Murali Karicheri
Texas Instruments
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
