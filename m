Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EYvKDgUy2kgDwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 02:24:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A88BB362A1E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 02:24:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D73E60E9F;
	Tue, 31 Mar 2026 00:24:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OtqKlRvGBchN; Tue, 31 Mar 2026 00:24:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECD4260EA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774916661;
	bh=x2NSZvLJb21z7sndYI+VJiSvYYr+VIQqISxq8jT0a18=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YGvpAXb3WhbYw1XuwYUHbkj706wI2r/Am8uH8CGdkLiTsnDFCWlfKVKViuAZS89E7
	 AilY8ED7gjKIIbIpj0wIDG3iFHBKo9r/eyaFmW6gnnhcXwWyGz4406zaEA5zb6lIFL
	 7OUnH0ZTKBjsnTEwkHyMAWaKM7nFBpPxWooEDDpBhoTxzvgW8OsjpERVyjquFl1LI8
	 /TIMJUNFVc42P7J+l8TyQRvFPuneRdF1KxD2eZL+8VNChudDmkIlf0eKZVsjpuONJu
	 ZbIZw7kUMmDooI9EfjmGUe/v5Isj2F4vSBUAzk2p4OU3BZ7Ri9y+itlfupzHlVnC2A
	 RJFvNT6LkvSFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECD4260EA0;
	Tue, 31 Mar 2026 00:24:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D567D4E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 00:24:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B177060E9F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 00:24:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pKtcjvrUObiv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2026 00:24:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::533; helo=mail-ed1-x533.google.com;
 envelope-from=technoboy85@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A9ED760C16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9ED760C16
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A9ED760C16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 00:24:17 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-66b941ebe79so3781158a12.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 17:24:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774916655; cv=none;
 d=google.com; s=arc-20240605;
 b=glGlYRoj1Qi2Ufe3S2OGe03QGlb+CqiNWi7JA2CvSPwGBmz4lcwx696gX7hPIWOPPj
 BvyB/8V6j9fU2+yDNs0XS7Yzao+CZIEifjWB0Zh10LK9P6G7LNJl+a2I4FXPbkti3FcH
 Ji5Xt+haXaShQ0DKTyGUnh0cPnLRLs45vmDa9/Xjk1xLp4j6IPFCIYUacSPV93PVQuFz
 H31we/ZK9IpoltakkQNaNcVlj+zS2NJxUUcetWOYiJ9qdRumIq6ZjGeGE3/zh9RbhWLG
 2MYs587VQKRTQXf6US3GxntvwR91SV2I+/zRXldaMHGGlf8UJmS1YPFSI/fzLhNp47ar
 WVYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=x2NSZvLJb21z7sndYI+VJiSvYYr+VIQqISxq8jT0a18=;
 fh=pBOmUtWCFc+VaML0Fa8lY/P7Upu9FIQ4OCD9SVH8rvk=;
 b=BizIZeyZ5QlbECWwA/q1Pr7I8mtBHZhnOl9P0VE3kMwIFcR8yjw1OweheIHuiHL/c0
 vshKZRHJoRf06rdyUKoYJMJn+AIq8TH3X9DiMNJp8nEZ8UK6xhL5rtaol++0Mc19VSVW
 S8fLzkUwMBXn7PWXCI2tTGBuHA2Sy9xc168iDc1mXMeU/rhllDPt5sIhFdAeY/UxkHy4
 h2sH8Ah9NLDtB2cETz7uJnXjkgsFryadl64oyOb1Ja8ibn9qj3hLhAD4uOMWh1QJqrn8
 OWiykoMzmf3HBVAWI2UO86zw96qwazFxS6t5fmmAsOynC/R8xhq+XZcSskV5TiAa2xib
 GTzg==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774916655; x=1775521455;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=x2NSZvLJb21z7sndYI+VJiSvYYr+VIQqISxq8jT0a18=;
 b=ORTMbAJSr/dd4kOq6BCgQ7rgDl3hHBirimMVTn02Z0+ZI4UXOPduduKUAV/w1MV/fg
 f07Wy57dCI7v6QAwcfsQq9eXhG3R1C1DIoKGn67hYesrndYJnaG6mfEJsaavTq/v+ELq
 zuCQS10LDfTRHpVoSHX0WKahzvQ3jg9nCXKb8N+HSiUe55rUz5ENmH4a8q+yvBWp1wCd
 IALyFDtfGAAmyFm7nujI68poCco30YNPsgNS5Y2OKYBC0dSATF+AaeeXgiEqFNVDqpSD
 isSgU93idwyAYa8bJ0+0OZXCOmgsD666Mm8V1XpnGRUZjoWYMEJ1jnTYzfAJexOwYD18
 Uiiw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUGo9hF4pUf5ENasZA6pkzj/uFXlNk7bx4TFA1k3w11yThtTgpxbqCYK9JdOt4Ym3uXmanXYq73ODFzBUksBJ8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxGjo1SWsZqUrkWQsWnSzhDrMAS6inVL2LY34hv44IkfLPQtkZ2
 i8Tnn1tjH2fRLhywTt+XSk0dM2TEGYuR4juyJyPGa6eVizPGM+1syNh4Jmr4hccH0v0E7dlfD5s
 qLdsoGXhxsy3K35c619oF6ArlWB4s41o=
X-Gm-Gg: ATEYQzylG33kwN6B7NGTuDlcqP3tXcQerwSOqpur1rKTaVzPCeKhFzQD2KfSytt4KiR
 +ZfCiouRzEysQiGT0yNIElBnbG7IBYQjpHc7ndOxlnbE/q2Q9FM8xolepxsiiapICKGnO17p60r
 oRntj/Rfk35VZ271HK9DpkPZmltHqxV8cPNoQ/rB6xde9VADofryyhoWIhmvG1WB1ITdjq/ddGc
 GeNce1KGxuy3zcm4txVEqW/InvfBF5Pu9aUiZcxIlNV5Rh2ztErV1q+EafXQpu2gxt+yOcjEvaz
 EK+h
X-Received: by 2002:a05:6402:6c3:b0:66b:3cb7:f638 with SMTP id
 4fb4d7f45d1cf-66b3cb7fbf3mr5656481a12.10.1774916655304; Mon, 30 Mar 2026
 17:24:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260323182823.5813-1-teknoraver@meta.com>
 <20260323182823.5813-2-teknoraver@meta.com>
 <acp5jaFFI57ilC3y@boxer>
In-Reply-To: <acp5jaFFI57ilC3y@boxer>
From: Matteo Croce <technoboy85@gmail.com>
Date: Tue, 31 Mar 2026 02:23:38 +0200
X-Gm-Features: AQROBzCByBvhb9AnuqDoT1x2BkYJrGyhggrmURO-zajvyC8YBUAFOoejzi-xIwA
Message-ID: <CAFnufp0w1qsLAANh5g2KuHYHTQ_-jAB21u2nhOja=4TBMB2gdg@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>,
 Mohsin Bashir <mohsin.bashr@gmail.com>, 
 netdev@vger.kernel.org, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774916655; x=1775521455; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=x2NSZvLJb21z7sndYI+VJiSvYYr+VIQqISxq8jT0a18=;
 b=f2J8yjG7bSNTUJMguFNbu8TLF/obDYekBRlvFWhpBjDzaNEtkQS7S7PuGXv8gvoXE4
 wVjyXHLpRymUXShtBAcC28nWi45CFf4p2y+w+a3FxB1ZLcsr2pRAnGqxV0lR4/VNx+u4
 TyxdaK8S+Ydx3lsme3+TVAbDCr2TKgPpfK7Sv5yFpCW/92RJcZivbeBSgxfzN5vVlcoD
 LcDD8GotYKCncPIUFgGm7DRRzFST19cRJf35CKP/rWcX7lvcBoPJeqthVvAInELQOQdB
 C+Am4vwZ3mWJ7kKahXPl9zDaMlmIuJn+8dmikKmFZOa52u0ZGpHakfL5+oqyl7iju478
 i11A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=f2J8yjG7
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] e1000e: add basic XDP
 support
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:mohsin.bashr@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.967];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: A88BB362A1E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Il giorno lun 30 mar 2026 alle ore 15:24 Maciej Fijalkowski
<maciej.fijalkowski@intel.com> ha scritto:
>
> On Mon, Mar 23, 2026 at 07:28:22PM +0100, Matteo Croce wrote:
> > Add XDP support to the e1000e driver covering the actions defined by
> > NETDEV_XDP_ACT_BASIC: XDP_DROP, XDP_PASS, XDP_TX and XDP_ABORTED.
> >
> > Infrastructure:
> > - e1000_xdp_setup() / e1000_xdp() for program attach/detach with
> >   MTU validation and close/open cycle
> > - ndo_bpf support in net_device_ops
> > - xdp_rxq_info registration in setup/free_rx_resources
> >
> > Receive path:
> > - e1000_alloc_rx_buffers_xdp() for page-based Rx buffer allocation
> >   with XDP_PACKET_HEADROOM
> > - e1000_clean_rx_irq_xdp() as the XDP receive handler
>
> Hi Matteo,
>
> Since you started to look onto this driver, I think we should have a
> single routine for cleaning buffers on rx. So I would ask for getting rid
> of adapter->clean_rx (or at least convince reviewers it is not possible
> for some reason) and then implement XDP support with approach as XDP being
> a first class citizen.
>

We already have e1000_clean_rx_irq, e1000_clean_jumbo_rx_irq and
e1000_clean_rx_irq_ps.
Do you mean unifying them all or just merging e1000_clean_rx_irq and
e1000_clean_rx_irq_xdp?

> Furthermore I believe all new implementations of XDP require to include
> multi-buffer support.
>

Note taken

> Last but not least, this lives in intel directory so I assume
> primitives/helpers from libie/libeth should be used for this work.
>

Only for the new XDP code or also for the existing one?
If covering also the existing code that will go into a separate
prerequisite patch.

Regards,
-- 
Matteo Croce

perl -e 'for($t=0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay
