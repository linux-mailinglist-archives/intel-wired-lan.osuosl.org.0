Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 725556786FE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 21:01:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5EAB60FBB;
	Mon, 23 Jan 2023 20:01:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5EAB60FBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674504074;
	bh=MAQ1n+JhgjAaAHRkIgJ6VJF9in/W1whFAc/k4uxKgxE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mFCRw8LdxR51SQeaLMMN9ZYFqbGt/nekA8KXiEjrVh2UB47bP8kR522miF/OcWC1h
	 eFrALBHnfDhSyRNYGzbAl8phGj5RM07gEieYiVPIfJUAeOO2waOQHVXQUNGMVcjHb5
	 d4u9lTyPYFOfcfrs6BmnfEMc3kzTTZqMvSWht7BcsG2Z0iM+vXotqnUT/kKiHRFQSY
	 Z9a8G65AQVymTwaB4QRah2QvD9GtByBBUzbdH4xLBUiSHwWu89oisYb6T3amqy43RU
	 k7qHP1WxrYGO0EcT3BJeH2e4DnNLYqxT0beb5Tsm7xKMAbSC3Ywg4M+tpow6gBEXEo
	 OF4qDG7xznGMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nyDF1fsCmtNW; Mon, 23 Jan 2023 20:01:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA7F760FB9;
	Mon, 23 Jan 2023 20:01:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA7F760FB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C37B61BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 20:01:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 389AA81FDB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 20:01:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 389AA81FDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tV1N83ejzAaO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 20:01:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C0A281FCC
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C0A281FCC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 20:01:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 83A47B80E8F;
 Mon, 23 Jan 2023 20:01:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A959C433D2;
 Mon, 23 Jan 2023 20:01:02 +0000 (UTC)
Date: Mon, 23 Jan 2023 12:01:01 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Message-ID: <20230123120101.555a3446@kernel.org>
In-Reply-To: <Y82//2EX6QQoZkV/@lore-desk>
References: <cover.1674234430.git.lorenzo@kernel.org>
 <272fa19f57de2d14e9666b4cd9b1ae8a61a94807.1674234430.git.lorenzo@kernel.org>
 <20230120191126.06c9d514@kernel.org> <Y82//2EX6QQoZkV/@lore-desk>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674504064;
 bh=vqEimsY5LBzrTAQ7n4n4VvmHMDNV84XzmYU29KVrP4o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=J0QoGS06LIl1BueKN5MFAcpX4Ogp8CU3WelsF2LwNSdERuAftghnW3CYLzYKWVjsP
 xmYh4JPOTbCxgDdKDLsDkCEH2WgmpxvdtzsGtQnxaOy3b9P+TKf63yK8lNYpNBczVP
 m5K6UGP/becSfip52jknwldqowODhQ2YPxvzkkcJziUY5WOQbtoQx9wXAByMbfGLt8
 1T8WYReqxfsXnq8fWpc3byv7cuYMIY5hd2WMDUh+O2HvNJU74UaNn2Ym5t+OnQ135q
 LKyCMduIKpK6k0SJZ6xNwuz1q+YmLJSLuMkfgnrfl7abQvT/HP8225kuw7TN2HJTbg
 qUSddea5BV1Yw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=J0QoGS06
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/7] netdev-genl: create a
 simple family for netdev stuff
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
 niklas.soderlund@corigine.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 23 Jan 2023 00:00:15 +0100 Lorenzo Bianconi wrote:
> > FWIW I'm not 100% sure if we should scope the family to all of netdev
> > or just xdp. Same for the name of the op, should we call the op dev_get
> > or dev_xdp_get..  
> 
> is it likely we are going to add non-xdp info here in the near future? If not
> I would say we can target just xdp for the moment.

What brought it to mind for me was offloads like the NVMe/DDP for
instance. Whether that stuff should live in ethtool or a netdev
family is a bit unclear.

> > These defines don't belong in uAPI. Especially the use of BIT().  
> 
> since netdev xdp_features is a bitmask, can we use 'flags' as type for definitions in
> netdev.yaml so we can get rid of this BIT() definitions for both user and
> kernel space?

If you have no use for the bit numbers - definitely.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
