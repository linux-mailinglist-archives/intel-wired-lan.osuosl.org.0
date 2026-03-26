Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCvdB93MxGnb3wQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 07:06:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9707232F915
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 07:06:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D476E40A0A;
	Thu, 26 Mar 2026 06:06:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YJVGjJOt7VYC; Thu, 26 Mar 2026 06:06:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55AB140A0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774505173;
	bh=R8W2f1DgzKxSwUB9ktzuZi8EFMNwvMpT6FnZ/Q04nyA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WuIRVfIFJ63HM30X0RZeU1lHC/gD2eaTx2psXRelVc62sWXqI01rrA6DPoTSFsykt
	 wZIKQMTkvbyAQGPm1tRq3wmaUbuC8QdN5PjELweaUNz2keWbKtRJQAwpMhY/2ZZ1w1
	 OsUzsER5LHaqcPR+mdQVlYo80M7HaI6u5iyQFql7urqMvr076tP/Es4+h1d2qRJBcY
	 GFd1lapTmAb8dzumRyqV/H0QVeEDqnHVUFAd+X7RSto84nleAi97/5uC+6FEQoKn+u
	 ETBbKVLNQD+P54Z3TMwogMrqC0jMCC7J7HwlMtcEhdyJjuDTYNWN5XH86rsnRE6CfX
	 AbGXLPkxC5T4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55AB140A0E;
	Thu, 26 Mar 2026 06:06:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2609F1D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 06:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE2A74024E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 06:06:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KasNKNa7SjBH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 06:06:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D5AFF4016F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5AFF4016F
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5AFF4016F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 06:06:07 +0000 (UTC)
Received: from [192.168.2.229] (p57bd9c29.dip0.t-ipconnect.de [87.189.156.41])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 788C54C2C37D70;
 Thu, 26 Mar 2026 07:05:21 +0100 (CET)
Message-ID: <d59fc665-3400-4513-844e-a9529b7498ce@molgen.mpg.de>
Date: Thu, 26 Mar 2026 07:05:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shannon Nelson <sln@onemain.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, kohei.enju@gmail.com
References: <20260325205054.109822-1-kohei@enjuk.jp>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260325205054.109822-1-kohei@enjuk.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: don't advertise
 IFF_SUPP_NOFCS
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:sln@onemain.com,m:jesse.brandeburg@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,molgen.mpg.de:mid,osuosl.org:dkim];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,onemain.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 9707232F915
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dear Kohei,


Thank you for your patch.

Am 25.03.26 um 21:50 schrieb Kohei Enju:
> i40e advertises IFF_SUPP_NOFCS, allowing users to use the SO_NOFCS
> socket option. However, this option is silently ignored, as the driver
> does not check skb->no_fcs, and always enables FCS insertion offload.
> 
> Fix this by removing the advertisement of IFF_SUPP_NOFCS.
> 
> This behavior can be reproduced with a simple AF_PACKET socket:
> 
>    import socket
>    s = socket.socket(socket.AF_PACKET, socket.SOCK_RAW)
>    s.setsockopt(socket.SOL_SOCKET, 43, 1) # SO_NOFCS
>    s.bind(("eth0", 0))
>    s.send(b'\xff' * 64)
> 
> Previously, send() succeeds but the driver ignores SO_NOFCS.

Would I check that with tcpdump?

> With this change, send() fails with -EPROTONOSUPPORT, as expected.

Great commit message! Thank you.

One question, did you look into, what is needed to implement working 
SO_NOFC support?

> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 3749f32ef95a..a3c52aa6255b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -13831,7 +13831,6 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
>   	netdev->neigh_priv_len = sizeof(u32) * 4;
>   
>   	netdev->priv_flags |= IFF_UNICAST_FLT;
> -	netdev->priv_flags |= IFF_SUPP_NOFCS;
>   	/* Setup netdev TC information */
>   	i40e_vsi_config_netdev_tc(vsi, vsi->tc_config.enabled_tc);

Nice catch.


Kind regards,

Paul
