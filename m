Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E685F0DBB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Sep 2022 16:40:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D7DA40B9D;
	Fri, 30 Sep 2022 14:40:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D7DA40B9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664548828;
	bh=EcReoXi40+EC4LYHuQqFngTVRUwOL+WfwRu0XL/YW3w=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WUfmabBBAs0Dn3wlV3qYfn5tU1Djx7t3AnXb/vbFQqH2AOLCQMEs8zWWJJz4P1i9V
	 +ZktzZ4f5eLWpug2UhlAwIDiHUgaUaz3pY13KGb5Wj1eecklOcabnpQANFdh7mrsGT
	 XJzpp4v7qvFBnQ2h8Qh5bB/UBBqQDiP+wbWGW8NkIXWwH/f5bCPVJgK+b+/gC3qygl
	 y4OR6NhasADYWVWf/+HNZL2Ie00RBbGHQRcqiux2mjz/EE0klKZUo41e/9Q2EbwSg9
	 9T4nWBECoW14ambfs99HmW6ZuNgspmHsK2ZFfFpXCH8Qa0eJgwMymwmADAiLO9eEYc
	 3V2hno0IBlQsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kf4HlcOzOHfY; Fri, 30 Sep 2022 14:40:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1193C40A8A;
	Fri, 30 Sep 2022 14:40:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1193C40A8A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 904991BF291
 for <intel-wired-lan@osuosl.org>; Fri, 30 Sep 2022 14:40:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69FA540A8A
 for <intel-wired-lan@osuosl.org>; Fri, 30 Sep 2022 14:40:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69FA540A8A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n9lI2KcCwM2G for <intel-wired-lan@osuosl.org>;
 Fri, 30 Sep 2022 14:40:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75FD4404D1
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 75FD4404D1
 for <intel-wired-lan@osuosl.org>; Fri, 30 Sep 2022 14:40:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E3871B82784;
 Fri, 30 Sep 2022 14:40:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A7FAC433C1;
 Fri, 30 Sep 2022 14:40:16 +0000 (UTC)
Date: Fri, 30 Sep 2022 07:40:16 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20220930074016.295cbfab@kernel.org>
In-Reply-To: <SJ1PR11MB61808A055419C257F6B653CCB8569@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20220927130656.32567-1-muhammad.husaini.zulkifli@intel.com>
 <20220927170919.3a1dbcc3@kernel.org>
 <SJ1PR11MB6180CAE122C465AB7CB58B1BB8579@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20220929065615.0a717655@kernel.org>
 <SJ1PR11MB61808A055419C257F6B653CCB8569@SJ1PR11MB6180.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1664548817;
 bh=W555OV5c79V04dKJclc+ytcVQBgyKBrd1P+JSgO7yEs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LgVUmsNhdNqPAma5rkA7V6rCllf7c5e/CWPDwtrPFZJesdRHqs30mTciJ/g+h+p9u
 kW8eCf6l0AvvZF/gvRnGJWgyt1vWpydb0Tbi6yWHQaWxFBzbFvxM/J2xutUukrzjl0
 D5iISukkBoe9oB6s+3tjFog/h8lX7IAuPYjkDrMit8Qtnfyi5Wj6aHPaGsItZKsK86
 3rDU++vMI8E0YKRAzejdqLcoRr81TIzs3C4HZl8O6q4vaffsCag67aNeLzNLk6X4Wt
 ZrTwKpdyhaiWgiI+HsL296jkGbDLCdyEal+SY5F8Va3frlZp4DJ6iGnB0jzOVBIHGT
 othsHvoPyu78w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=LgVUmsNh
Subject: Re: [Intel-wired-lan] [PATCH v1 0/4] Add support for DMA timestamp
 for non-PTP packets
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 Richard Cochran <richardcochran@gmail.com>, Saeed Mahameed <saeed@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, Gal Pressman <gal@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michael Chan <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 Andy Gospodarek <andy@greyhouse.net>, "Ahmad Tarmizi,
 Noor Azura" <noor.azura.ahmad.tarmizi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 30 Sep 2022 08:52:38 +0000 Zulkifli, Muhammad Husaini wrote:
> > > Yes. HW timestamps always can be assume equivalent to PTP quality.
> > > Could you provide additional information regarding SFD crosses the RS  
> > > layer?
> > 
> > I mean true PTP timestamps, rather than captured somewhere in the NIC
> > pipeline or at the DMA engine.  
> 
> When SOF_TIMESTAMPING_TX_HARDWARE is been used, we guaranteed a PTP quality
> Timestamps (timestamp capture when packet leave the wire upon sensing the SFD).
> As of SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH, it is not a PTP quality because
> the HW timestamp reported in this case, is a time when the data is
> DMA'ed into the NIC packet buffer.

I understand that _your_ device does it right.
But there are vendors out there who treat SOF_TIMESTAMPING_TX_HARDWARE
as your new SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH.

> > > Yes, you're right. Are you suggesting that we add a new tx_type to
> > > specify Only MAC/PHY timestamp ? Ex. HWTSTAMP_TX_PHY/MAC_ON.  
> > 
> > Perhaps we can call them HWTSTAMP_TX_PTP_* ? Was the general time
> > stamping requirement specified in IEEE 1588 or 802.1 (AS?)?
> > 
> > Both MAC and PHY can provide the time stamps IIUC, so picking one of those
> > will not be entirely fortunate. In fact perhaps embedded folks will use this
> > opportunity to disambiguate the two..  
> 
> With the help of SOF_TIMESTAMPING_TX_HARDWARE, we will get the 
> PHY level timestamp(PTP quality) while using SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH,
> we will get the timestamp at a point in the NIC pipeline.
> 
> Linuxptp application uses SOF_TIMESTAMPING_TX_HARDWARE for their socket option.
> And this can guarantee a PTP quality timestamp. 
> 
> Can we just use a SOF_TIMESTAMPING to identify which timestamp that we want rather 
> than creating a new tx_type?

Hm, perhaps, yes, we can stick to that.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
