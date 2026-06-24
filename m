Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4b05JkKfO2ruaQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 11:11:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B24F6BCD67
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 11:11:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=bmD06FtM;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F21B8405A9;
	Wed, 24 Jun 2026 09:11:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OzJUBNMnzZ-V; Wed, 24 Jun 2026 09:11:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C7F5405D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782292285;
	bh=vaGEfv49Djl7XHA+73D3Wb5KsXWur6bTFEQS2FZ+C7s=;
	h=To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=bmD06FtMOPP1VKTyaMRQKlJ2zKPXVUK6EfMeQ7qZelVufsdfM++/dkMUZv+HQ4cT9
	 wg0sSmjKkTu57910o2Eui5jwbLwWQkDQheUxQzWNYEdynz5huqYnLeOkqYCG8HLBy6
	 a4sTsgKSu78RREmUZfbShs3arYfHqVic2Xu7ialW1jSf6zB0Rzdl6sPtKzomIlxxjg
	 7GLUz2pG1W7AammLNzXVCb9yt+N99KCZ8IhzcIHg25iF9Oek6u0TuM7Lcuu2pzvcwV
	 8lnnIygkPSY3dGBHAK844oKbL1TuAWN9cVYu7bGPMPdpulAI/21nTPKIRZckTM4msl
	 v8e+H/IzdsEmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C7F5405D7;
	Wed, 24 Jun 2026 09:11:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B85B6363
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 09:11:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A1A4A60BB1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 09:11:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4SEacmrM1S51 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2026 09:11:22 +0000 (UTC)
X-Greylist: delayed 315 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 24 Jun 2026 09:11:19 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 56CCE60BB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56CCE60BB0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.225;
 helo=mta-64-225.siemens.flowmailer.net;
 envelope-from=fm-68982-20260624090548cac0262779000207cb-_mbvkx@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-225.siemens.flowmailer.net
 (mta-64-225.siemens.flowmailer.net [185.136.64.225])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56CCE60BB0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 09:11:19 +0000 (UTC)
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id
 20260624090548cac0262779000207cb
 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2026 11:05:48 +0200
Message-ID: <d058b0fa9ad923514084a44f51c78ae8355c4ebb.camel@siemens.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>, Ding Meng	
 <meng.ding@siemens.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"	
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>, 
 "kuba@kernel.org"	 <kuba@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "Kiszka, Jan"	 <jan.kiszka@siemens.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "wq.wang@siemens.com" <wq.wang@siemens.com>
Date: Wed, 24 Jun 2026 11:05:47 +0200
In-Reply-To: <BL1PR11MB59796B99C5A7709B07000D68F3EE2@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20260622041718.6106-1-meng.ding@siemens.com>
 <BL1PR11MB59796B99C5A7709B07000D68F3EE2@BL1PR11MB5979.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-68982:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=florian.bezdeka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=vaGEfv49Djl7XHA+73D3Wb5KsXWur6bTFEQS2FZ+C7s=;
 b=WOD+7mbcMXGo8W/tbSW9q6lm68GGIhbjhsH/RzXQlMMZWqPPgiwT52thc4GmWTX8IxMXiq
 5foW8l0aaVV/SbWotttfe3W3pmkfyX70rTEIHKLNIARIUHYnilWMgqFe/js+Llne+PoX5dUw
 0HTJ574wQMznPRpMR5Bz/axqYdCvXPeivrnsAyiN7jvCCdjOep8qcJWetpR0Oh6TZYaDbJbC
 8wL1v3WMYsy+wGh24bNJTFT8DfuGwkY5iV0URrO03L1Ymgxfo6GqvbH8JqpKYuJGHzejcJYY
 4WYV0x07tGIFeJHvLFD737euqgPiBE+JVOaYXtq+QZXqxyiOtMcP99rQ==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=florian.bezdeka@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=WOD+7mbc
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Fix RX HW timestamp
 reporting when NET_RX_BUSY_POLL is disabled
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
From: Florian Bezdeka via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Florian Bezdeka <florian.bezdeka@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:piotr.kwapulinski@intel.com,m:meng.ding@siemens.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jan.kiszka@siemens.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:wq.wang@siemens.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[florian.bezdeka@siemens.com];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B24F6BCD67

On Tue, 2026-06-23 at 09:46 +0000, Kwapulinski, Piotr wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of=
 Ding Meng via Intel-wired-lan
> > Sent: Monday, June 22, 2026 6:13 AM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw=
 <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net=
; edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Kiszka, Jan <jan=
.kiszka@siemens.com>; Bezdeka, Florian <florian.bezdeka@siemens.com>
> > Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; net=
dev@vger.kernel.org; meng.ding@siemens.com; wq.wang@siemens.com
> > Subject: [Intel-wired-lan] [PATCH net] igc: Fix RX HW timestamp reporti=
ng when NET_RX_BUSY_POLL is disabled
> >=20
> > When CONFIG_NET_RX_BUSY_POLL is deactivated, fetching RX HW timestamps =
from the NIC no longer works as expected.
> >=20
> > This occurs because disabling CONFIG_NET_RX_BUSY_POLL disables the SKB =
NAPI mapping in __skb_mark_napi_id(). Consequently, get_timestamp() fails t=
o perform its driver lookup, and the igc driver's struct net_device_ops::nd=
o_get_tstamp is never invoked.
> >=20
> > Instead, get_timestamp() falls back to use shhwtstamps(skb)->hwtstamp, =
a field that the driver has not populated.
> >=20
> > Fix this by populating the hwtstamp field with the correct timestamp in=
 the default timer when CONFIG_NET_RX_BUSY_POLL is disabled.
> >=20
> > Fixes: 069b142f5819 ("igc: Add support for PTP .getcyclesx64()")
> > Co-developed-by: Florian Bezdeka <florian.bezdeka@siemens.com>
> > Signed-off-by: Florian Bezdeka <florian.bezdeka@siemens.com>
> > Signed-off-by: Ding Meng <meng.ding@siemens.com>
> > ---
> > drivers/net/ethernet/intel/igc/igc_main.c | 38 ++++++++++++++++-------
> > 1 file changed, 26 insertions(+), 12 deletions(-)
> >=20
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/et=
hernet/intel/igc/igc_main.c
> > index 8ac16808023..1da8d7aa76d 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -1992,7 +1992,26 @@ static struct sk_buff *igc_build_skb(struct igc_=
ring *rx_ring,
> > 	return skb;
> > }
> >=20
> > -static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
> > +static void igc_construct_skb_timestamps(struct igc_adapter *adapter,
> > +					 struct sk_buff *skb,
> > +					 struct igc_xdp_buff *ctx)
> > +{
> > +	if (!ctx->rx_ts)
> > +		return;
> > +#ifdef CONFIG_NET_RX_BUSY_POLL
> > +	skb_shinfo(skb)->tx_flags |=3D SKBTX_HW_TSTAMP_NETDEV;
> > +	skb_hwtstamps(skb)->netdev_data =3D ctx->rx_ts; #else
> > +	struct igc_inline_rx_tstamps *tstamps;
> Please move at the top of the function and add:

That would trigger a "unused variable" warning in the
CONFIG_NET_RX_BUSY_POLL case.

Btw: I was really confused that the #else statement moved to the end of
the previous line. Might someone be using a wrongly configured mail
client here?

Florian

> Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com
>=20
> > +
> > +	tstamps =3D ctx->rx_ts;
> > +	skb_hwtstamps(skb)->hwtstamp =3D igc_ptp_rx_pktstamp(adapter,
> > +							   tstamps->timer0);
> > +#endif
> > +}
> > +

[snip]
