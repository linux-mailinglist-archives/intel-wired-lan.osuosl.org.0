Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF0E68168E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jan 2023 17:38:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B08B81D18;
	Mon, 30 Jan 2023 16:38:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B08B81D18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675096738;
	bh=k05otfgvDWSbGcVjZYHNpN0hux7dvKK4so5MbgWlDZc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PjFV+lF7CNHlBLiZttMn7VbcPghg95eJt0/46LowEmxQaVf63HqgTkLRD5Vt8PCTI
	 md6/Odgh/pB5mU3uRO8deD8iXCxwN2SoDr520L1wIrL56L/kplCurKNp6H6rjxaGUl
	 A0+rKu6vORrgDIQzJ0qsqLxq4WqFWcJ8bxuHnh0x5Xe0aalZLnQggUFdTi3DV0HGN5
	 igkGisz6sQXn6joxgSKuJq1eZWI/OL7wH9mHR+5+5Gw9ebLuauUC+nZSCY2vBSnr2Y
	 ihG7ToZ0jGc0ind8c1vF9DypJ0vwBman7nsbgedi1HBpdUZjGgo8k1GOpWy9tGgUAC
	 seHipMhhvFY1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vy605I10sx39; Mon, 30 Jan 2023 16:38:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BA6881D11;
	Mon, 30 Jan 2023 16:38:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BA6881D11
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 41C591BF37C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 14:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B5C640A1B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 14:10:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B5C640A1B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NBOEkfM9AQoo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jan 2023 14:10:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED21040A1E
Received: from mx05lb.world4you.com (mx05lb.world4you.com [81.19.149.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED21040A1E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 14:10:10 +0000 (UTC)
Received: from [81.19.149.42] (helo=webmail.world4you.com)
 by mx05lb.world4you.com with esmtpa (Exim 4.94.2)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1pMUql-0002na-QU; Mon, 30 Jan 2023 15:09:35 +0100
MIME-Version: 1.0
Date: Mon, 30 Jan 2023 15:09:35 +0100
From: Gerhard Engleder <gerhard@engleder-embedded.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
In-Reply-To: <Y9ZvA7+RMwbNlFoy@lore-desk>
References: <cover.1674606193.git.lorenzo@kernel.org>
 <c1171111f8af76da11331277b1e4a930c10f3c30.1674606197.git.lorenzo@kernel.org>
 <28eedfd5-4444-112b-bfbc-1c7682385c88@engleder-embedded.com>
 <Y9ZvA7+RMwbNlFoy@lore-desk>
User-Agent: World4You Webmail
Message-ID: <6e2e5b8f5735fc3243dea3a050399e34@engleder-embedded.com>
X-Sender: gerhard@engleder-embedded.com
X-SA-Do-Not-Run: Yes
X-AV-Do-Run: Yes
X-Mailman-Approved-At: Mon, 30 Jan 2023 16:38:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dX5joPSrXHt51h5qeLC3Xq8xdcevddD07C/9Rn/Wh2A=; b=m46iI2brqSGyfUUajUeA7OZa3t
 vcYvSFW2JLP/W4gBxZjJX9vF13bZh+kZTCC+XSSxAUr73cW9EuaJuiRFnXdafpbjZuH/BctPcwJnC
 C0Nxl72vj+dhI4aFem34n+hOI/pGP5lUrqDsrjZXzMMUbl10Wxf88529acWRhPIgF2Po=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=engleder-embedded.com
 header.i=@engleder-embedded.com header.a=rsa-sha256 header.s=dkim11
 header.b=m46iI2br
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf-next 2/8] drivers: net: turn on
 XDP features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 29.01.2023 14:05, Lorenzo Bianconi wrote:
>> On 25.01.23 01:33, Lorenzo Bianconi wrote:
>> > From: Marek Majtyka <alardam@gmail.com>
>> >
>> > A summary of the flags being set for various drivers is given below.
>> > Note that XDP_F_REDIRECT_TARGET and XDP_F_FRAG_TARGET are features
>> > that can be turned off and on at runtime. This means that these flags
>> > may be set and unset under RTNL lock protection by the driver. Hence,
>> > READ_ONCE must be used by code loading the flag value.
>> >
>> > Also, these flags are not used for synchronization against the availability
>> > of XDP resources on a device. It is merely a hint, and hence the read
>> > may race with the actual teardown of XDP resources on the device. This
>> > may change in the future, e.g. operations taking a reference on the XDP
>> > resources of the driver, and in turn inhibiting turning off this flag.
>> > However, for now, it can only be used as a hint to check whether device
>> > supports becoming a redirection target.
>> >
>> > Turn 'hw-offload' feature flag on for:
>> >   - netronome (nfp)
>> >   - netdevsim.
>> >
>> > Turn 'native' and 'zerocopy' features flags on for:
>> >   - intel (i40e, ice, ixgbe, igc)
>> >   - mellanox (mlx5).
>> >   - stmmac
>> >
>> > Turn 'native' features flags on for:
>> >   - amazon (ena)
>> >   - broadcom (bnxt)
>> >   - freescale (dpaa, dpaa2, enetc)
>> >   - funeth
>> >   - intel (igb)
>> >   - marvell (mvneta, mvpp2, octeontx2)
>> >   - mellanox (mlx4)
>> >   - qlogic (qede)
>> >   - sfc
>> >   - socionext (netsec)
>> >   - ti (cpsw)
>> >   - tap
>> >   - veth
>> >   - xen
>> >   - virtio_net.
>> >
>> > Turn 'basic' (tx, pass, aborted and drop) features flags on for:
>> >   - netronome (nfp)
>> >   - cavium (thunder)
>> >   - hyperv.
>> >
>> > Turn 'redirect_target' feature flag on for:
>> >   - amanzon (ena)
>> >   - broadcom (bnxt)
>> >   - freescale (dpaa, dpaa2)
>> >   - intel (i40e, ice, igb, ixgbe)
>> >   - ti (cpsw)
>> >   - marvell (mvneta, mvpp2)
>> >   - sfc
>> >   - socionext (netsec)
>> >   - qlogic (qede)
>> >   - mellanox (mlx5)
>> >   - tap
>> >   - veth
>> >   - virtio_net
>> >   - xen
>> 
>> XDP support for tsnep was merged to net-next last week. So this driver
>> cannot get XDP feature support in bpf-next as it is not there 
>> currently.
>> Should I add these flags with a fix afterwards? Or would net-next be 
>> the
>> better target for this patch series?
> 
> bpf-next has been rebased on top of net-next so we can add tsnep 
> support to the
> series. Do you think the patch below is fine?
> 
> Regards,
> Lorenzo
> 
> diff --git a/drivers/net/ethernet/engleder/tsnep_main.c
> b/drivers/net/ethernet/engleder/tsnep_main.c
> index c3cf427a9409..6982aaa928b5 100644
> --- a/drivers/net/ethernet/engleder/tsnep_main.c
> +++ b/drivers/net/ethernet/engleder/tsnep_main.c
> @@ -1926,6 +1926,10 @@ static int tsnep_probe(struct platform_device 
> *pdev)
>  	netdev->features = NETIF_F_SG;
>  	netdev->hw_features = netdev->features | NETIF_F_LOOPBACK;
> 
> +	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT 
> |
> +			       NETDEV_XDP_ACT_NDO_XMIT |
> +			       NETDEV_XDP_ACT_NDO_XMIT_SG;
> +

Looks good. Thanks!

Gerhard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
