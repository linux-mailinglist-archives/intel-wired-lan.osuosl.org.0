Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aN3zKufbxGlf4gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 08:10:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 892E9330474
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 08:10:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E548660828;
	Thu, 26 Mar 2026 07:10:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Prq75EY6vK8j; Thu, 26 Mar 2026 07:10:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33CD66086B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774509026;
	bh=8umtFd6Ur3YrE/ozmw1yW90cnv5VFGVsJSjl6l19isU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fizCpW0Su99sq9k+cUOb0sKkI8FFv9ZVkyw1t1z8YH6eADFs+K49wR97mz6VQw89t
	 41m1gCZYjEN2grH07gSuvq6dWzfeTy2W/4yEcPHw3EhvhLaODjQoG9an4RdGA3c6bL
	 xHeFODAjeWC+SwbWM3NMo4jAoRBabJ8+dKuZ1Nx2K0RWlKlkmIq4813pWDA3OLcLex
	 CwXYSF6i/LDnMz4XYYl4zdijArt3X1usuCBUXQ8Zcl40c+NcTURu2ylWYq61OJm0/x
	 H2YayBiB8G2flZqZ3Jt1iZY5ea04DVgX0/TYv8jR9mLz8lV5Maniex2zhWnmsohPIF
	 WFfVpKKtXhWsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33CD66086B;
	Thu, 26 Mar 2026 07:10:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A12BEF5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:10:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8712B4016F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:10:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0cR5SO91DGp3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 07:10:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 69BDB40015
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69BDB40015
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 69BDB40015
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:10:22 +0000 (UTC)
Received: from x1 (122.24.31.150.dy.iij4u.or.jp [150.31.24.122])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 62Q7A2nV082388
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 26 Mar 2026 16:10:03 +0900 (JST) (envelope-from kohei@enjuk.jp)
Date: Thu, 26 Mar 2026 16:10:02 +0900
From: Kohei Enju <kohei@enjuk.jp>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shannon Nelson <sln@onemain.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, kohei.enju@gmail.com
Message-ID: <acTUtLuuoNfnRSpT@x1>
References: <20260325205054.109822-1-kohei@enjuk.jp>
 <d59fc665-3400-4513-844e-a9529b7498ce@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <d59fc665-3400-4513-844e-a9529b7498ce@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=8umtFd6Ur3YrE/ozmw1yW90cnv5VFGVsJSjl6l19isU=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1774509004; v=1;
 b=jDIfeIp15deFap2yz2++rd7BkthM2arhKVLU+TuFzzU8YsFFpVopN1fx6PFOktS5
 vq+Zr9adaqUM1TCQk/ZBBlp8nbiq6Mn9LCXBZt0QscZZC9AtS6hziFHJpa2VKRkP
 vWskLgUOUH2C6AprFBRkwxQ4kNbiDMbAJsr7+eJGY5ga43GUmOy29Ha9Xqt13Reh
 I1SfoKKlKnmpUkYRVLyesHcWy0avzFsd/eqZeM6ly5JsrOd80QbyIZ+MJe3ruE3x
 10xGEq2KwOC1MDQ1AB0C0uizOdIYsbDniJbWguCeSJKfFBUmILTa5R8HoM/I26jl
 PP8N0x1EHzalffCXbhNuRQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=jDIfeIp1
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:sln@onemain.com,m:jesse.brandeburg@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,onemain.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 892E9330474
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/26 07:05, Paul Menzel wrote:
> Dear Kohei,
> 
> 
> Thank you for your patch.
> 
> Am 25.03.26 um 21:50 schrieb Kohei Enju:
> > i40e advertises IFF_SUPP_NOFCS, allowing users to use the SO_NOFCS
> > socket option. However, this option is silently ignored, as the driver
> > does not check skb->no_fcs, and always enables FCS insertion offload.
> > 
> > Fix this by removing the advertisement of IFF_SUPP_NOFCS.
> > 
> > This behavior can be reproduced with a simple AF_PACKET socket:
> > 
> >    import socket
> >    s = socket.socket(socket.AF_PACKET, socket.SOCK_RAW)
> >    s.setsockopt(socket.SOL_SOCKET, 43, 1) # SO_NOFCS
> >    s.bind(("eth0", 0))
> >    s.send(b'\xff' * 64)
> > 
> > Previously, send() succeeds but the driver ignores SO_NOFCS.
> 
> Would I check that with tcpdump?

On the RX side, it can be possible to observe such frames using tcpdump,
if the RX device supports:
  - rx-all (accepting all frames including bad frames)
  - keeping the FCS (not stripping it)

On the TX side, however, the hardware-generated FCS is not visible to
tcpdump.

In my setup, I verified that the CRC error stats didn't increase on the
RX side when using the script above. If SO_NOFCS were actually honored,
we would expect frames with invalid/custom CRC to be transmitted, and
the RX side device should report CRC errors.

> 
> > With this change, send() fails with -EPROTONOSUPPORT, as expected.
> 
> Great commit message! Thank you.
> 
> One question, did you look into, what is needed to implement working SO_NOFC
> support?

From the driver implementation, it looks like clearing
I40E_TX_DESC_CMD_ICRC when skb->no_fcs is set could enable the expected
behavior.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/net/ethernet/intel/i40e/i40e_txrx.c#n3936

However, implementing proper support would require careful validation,
and also may impact the TX fast path slightly. So this patch focuses on
just correcting netdev->priv_flags.

> 
> > Fixes: 41c445ff0f48 ("i40e: main driver core")
> > Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_main.c | 1 -
> >   1 file changed, 1 deletion(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index 3749f32ef95a..a3c52aa6255b 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -13831,7 +13831,6 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
> >   	netdev->neigh_priv_len = sizeof(u32) * 4;
> >   	netdev->priv_flags |= IFF_UNICAST_FLT;
> > -	netdev->priv_flags |= IFF_SUPP_NOFCS;
> >   	/* Setup netdev TC information */
> >   	i40e_vsi_config_netdev_tc(vsi, vsi->tc_config.enabled_tc);
> 
> Nice catch.
> 
> 
> Kind regards,
> 
> Paul
