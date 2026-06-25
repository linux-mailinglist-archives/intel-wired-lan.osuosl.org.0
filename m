Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id H96kADEFPWqJvwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 12:38:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 631AA6C4B84
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 12:38:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=K27BEd8r;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BCC460FF1;
	Thu, 25 Jun 2026 10:38:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GAELnAeAG5Cr; Thu, 25 Jun 2026 10:38:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0BB560FEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782383916;
	bh=TEQzGGFrxNtB6gMa9EEbVW6dodrdivVnbfUJXkNVajM=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=K27BEd8ra9CBGu6aag5n8ReXQMrI63Ep5PN19FYMgBev6PJVuRh9pRuc7Ukpbqohk
	 V5J6wMHfVgUs3uYcISzWBS0jjVQi4YaVU+MGhbIfeAc38gyzy4NF7HjfHcg6wgbP4z
	 pvXXDBBaR9p7cWeMRFTi0nXWgxR2CudgqO4fe1wPpi7BKzFL9PKd4XNkOgZ1nKrkuD
	 42A6h+zWHVLjdxNLeOi7t15bCqfLHbgSSmSPeCjErFtzM2eBUXn7rO4w2W9PnMuVKS
	 m/BM6R7BG7ARvjGp5s1G/rJ+cUkDzZdxCyQs96gxqqN5TzmyCNqr88IQVRqL+r7lUb
	 BGxwV64+uWQDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0BB560FEC;
	Thu, 25 Jun 2026 10:38:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B9BAC18F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 10:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB5584073B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 10:38:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z2bY7K_yJfWx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2026 10:38:35 +0000 (UTC)
X-Greylist: delayed 306 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 25 Jun 2026 10:38:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 46FB1400A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46FB1400A5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.226;
 helo=mta-64-226.siemens.flowmailer.net;
 envelope-from=fm-1335312-20260625103322b06980181500020783-0zjz0u@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-226.siemens.flowmailer.net
 (mta-64-226.siemens.flowmailer.net [185.136.64.226])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 46FB1400A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 10:38:33 +0000 (UTC)
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id
 20260625103322b06980181500020783
 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2026 12:33:23 +0200
Date: Thu, 25 Jun 2026 18:33:14 +0800
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Florian Bezdeka <florian.bezdeka@siemens.com>, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 jan.kiszka@siemens.com, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, wq.wang@siemens.com
Message-ID: <guqc6o3b7hfl66qiuglb46apqdlufiuyhxeuhme66jvjkb67a7@owd45vcy7uv6>
References: <20260622041718.6106-1-meng.ding@siemens.com>
 <40abd0b5-7f3f-4cd4-9975-9db4498d15d3@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <40abd0b5-7f3f-4cd4-9975-9db4498d15d3@molgen.mpg.de>
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1335312:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=meng.ding@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Cc:References:In-Reply-To;
 bh=TEQzGGFrxNtB6gMa9EEbVW6dodrdivVnbfUJXkNVajM=;
 b=tGJizTwjajXkLUyXQ7+sSEQj7hAdSllHPHz0LNjsFt/xqf+XDKzvaivZAIL3QBrg09Qyxk
 1XaxIWfsEjYnZEffaZ5dL3vjZfxWzyIFco75yVhOb5q7AzDOdvu4dvxzgXTIGX5YnQ5z885c
 YZ/9SYuHoz5/tadqXwXzVzYxLnP7HcfkJ+pX6ZEUvyKDGvc3hPMAonSdqo2HmQd55SvscbeR
 ddr/3qBtf22rxnrCeKn2wb16Rvg4WFe2x/BGFV4Rt/sFQr9kSGuZhTwqwh0SMCCXa/LPs9iP
 940TJzzziXEIXKdPgqQb6FAcm6WUE2oyo6MU6rLTGVm6Yi/kiiuguzMw==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=meng.ding@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=tGJizTwj
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
From: Ding Meng via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Ding Meng <meng.ding@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:florian.bezdeka@siemens.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jan.kiszka@siemens.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:wq.wang@siemens.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[owd45vcy7uv6:mid,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[meng.ding@siemens.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 631AA6C4B84

Dear Paul,

Thanks for your comments.

On Mon, Jun 22, 2026 at 05:59:53PM +0200, Paul Menzel wrote: 
> Am 22.06.26 um 06:13 schrieb Ding Meng via Intel-wired-lan:
> > When CONFIG_NET_RX_BUSY_POLL is deactivated, fetching RX HW timestamps
> > from the NIC no longer works as expected.
> 
> Maybe paste some logs/errors, so it can be easier found by people with the
> same issue.

Will do.
 
> > This occurs because disabling CONFIG_NET_RX_BUSY_POLL disables the
> > SKB NAPI mapping in __skb_mark_napi_id(). Consequently, get_timestamp()
> > fails to perform its driver lookup, and the igc driver's struct
> > net_device_ops::ndo_get_tstamp is never invoked.
> > 
> > Instead, get_timestamp() falls back to use shhwtstamps(skb)->hwtstamp,
> > a field that the driver has not populated.
> > 
> > Fix this by populating the hwtstamp field with the correct timestamp
> > in the default timer when CONFIG_NET_RX_BUSY_POLL is disabled.
> 
> Maybe detail, why the adapter needs to be passed now.
> 
> Also, please describe a test case to check the change.

Will do.

> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 8ac16808023..1da8d7aa76d 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -1992,7 +1992,26 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
> >   	return skb;
> >   }
> > -static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
> > +static void igc_construct_skb_timestamps(struct igc_adapter *adapter,
> > +					 struct sk_buff *skb,
> > +					 struct igc_xdp_buff *ctx)
> > +{
> > +	if (!ctx->rx_ts)
> > +		return;
> > +#ifdef CONFIG_NET_RX_BUSY_POLL
> 
> Is there a way to do this in C instead of the pre-processor. That way all
> the code gets build tested. (Is there a config with disabled
> NET_RX_BUSY_POLL?)
> 
 
How about defining a function to replace the pre-processor:

static inline bool is_net_rx_busy_poll()
{
#ifdef CONFIG_NET_RX_BUSY_POLL
        return true;
#else
        return false;
#endif
}

CONFIG_PREEMPT_RT=y && CONFIG_NETCONSOLE=y will cause NET_RX_BUSY_POLL
disabled.


Kind regards,
 
Ding Meng
