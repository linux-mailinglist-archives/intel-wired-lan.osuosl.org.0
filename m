Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CM4MuEYjmnV/QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 19:16:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5F3130364
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 19:16:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50A3983F7C;
	Thu, 12 Feb 2026 18:15:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NVuntYYjqjQa; Thu, 12 Feb 2026 18:15:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5E1583F84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770920157;
	bh=/PMhWk2VZPsZ+TAzvsScOq7W0/3YeG9m/nhud6FUxxU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WYUjXIEGq/EslOVizi+C8itK558GsDjIIWzf5EimAxkgQByxGtXuyETKVMDcWsGhe
	 pf7I7qqwVHLI8JMdUjixkLUwibnZpq8gEUyeJpGG2LkPi3Z67ran25OIFxh/YQY1C8
	 n6grmkLlQOg8vS6ZMAoq4zWwGrT+3SzPUfm58nKtkATtjS/UP+T6zNGNA796kGHbWv
	 zXtj2cDzRD7y8r1L8oijAKOUjtFlPfJKxJazH9bkKVxEHYhZampHzAiaMpy27bWTOC
	 KNIEDh2orRwqPTma0dtlpPwr2e+YGvbHY+j5fC+Q0ZEnrC3wzptD100/6E+yd0K6Rw
	 8Nue7FbLXhSOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5E1583F84;
	Thu, 12 Feb 2026 18:15:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 91D1D23D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 18:15:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7679E83F79
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 18:15:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hQrwrZadGf-n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 18:15:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B8E4F83F76
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8E4F83F76
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8E4F83F76
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 18:15:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 443F360010;
 Thu, 12 Feb 2026 18:15:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87DAEC4CEF7;
 Thu, 12 Feb 2026 18:15:51 +0000 (UTC)
Date: Thu, 12 Feb 2026 18:15:49 +0000
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <kohei@enjuk.jp>
Cc: aleksander.lobakin@intel.com, andrew+netdev@lunn.ch,
 anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 kohei.enju@gmail.com, kuba@kernel.org, netdev@vger.kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com
Message-ID: <aY4Y1a8QbN18kkPm@horms.kernel.org>
References: <c48f08ad-b402-4cfe-a362-4cb0c3a7801f@intel.com>
 <20260210170603.149842-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210170603.149842-1-kohei@enjuk.jp>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770920154;
 bh=tEAzlX5yySCeP0MGLIHfkvTTcVSoKsrQmENpamyS9M4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=csnD6ELXWMk5Xry2taM2yu6mgKghYM80bdIZzLVGajErL88mLZ4o2oDS63tNAIl+J
 GxoqYvJQN3S9a4savA/dDYZh3hkcvm05KmYPqPAAxUrcE8m7Dh9BjIWtwBonUaVw3p
 rjQYQp8+oCBQFREcaX4P1Wst8eJA4QX8JMsI1si7c3pHN4E123zxtQCufTrK/itcro
 mX2+zbfIHNzYeuig+Vt+8rI0GUmd3SVGXDRmnw+y9LNqivPl9kCA9Ue1R3aDEDRl7O
 yYx9BwY6FbbR3wfmR6b1s7/W75UiBKFLkM8uerU2ilUZhpebQ5Q/nwMrt/cEbJzsyr
 H9zGYXgs6Ojow==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=csnD6ELX
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] iavf: fix netdev->max_mtu
 to respect actual
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,lists.osuosl.org,gmail.com,kernel.org,vger.kernel.org,redhat.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:aleksander.lobakin@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kohei.enju@gmail.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3B5F3130364
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 05:05:55PM +0000, Kohei Enju wrote:
> On Tue, 10 Feb 2026 17:37:23 +0100, Alexander Lobakin wrote:
> 
> > From: Kohei Enju <kohei@enjuk.jp>
> > Date: Tue, 10 Feb 2026 15:57:14 +0000
> > 
> > > iavf sets LIBIE_MAX_MTU as netdev->max_mtu, ignoring vf_res->max_mtu
> > > from PF [1]. This allows setting an MTU beyond the actual hardware
> > > limit, causing TX queue timeouts [2].
> > > 
> > > Set correct netdev->max_mtu using vf_res->max_mtu from the PF.
> > > 
> > > Note that currently PF drivers such as ice/i40e set the frame size in
> > > vf_res->max_mtu, not MTU. Convert vf_res->max_mtu to MTU before setting
> > > netdev->max_mtu.
> > > 
> > > [1]
> > >  # ip -j -d link show $DEV | jq '.[0].max_mtu'
> > >  16356
> > > 
> > > [2]
> > >  iavf 0000:00:05.0 enp0s5: NETDEV WATCHDOG: CPU: 1: transmit queue 0 timed out 5692 ms
> > >  iavf 0000:00:05.0 enp0s5: NIC Link is Up Speed is 10 Gbps Full Duplex
> > >  iavf 0000:00:05.0 enp0s5: NETDEV WATCHDOG: CPU: 6: transmit queue 3 timed out 5312 ms
> > >  iavf 0000:00:05.0 enp0s5: NIC Link is Up Speed is 10 Gbps Full Duplex
> > >  ...
> > > 
> > > Fixes: 5fa4caff59f2 ("iavf: switch to Page Pool")
> > > Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> > 
> > Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > 
> > Although I'm not sure the 'Fixes:' tag is correct. Was vs_res->max_mtu
> > accounted before switching to Page Pool? If so, then yes, my fault.
> > Otherwise, this issue is older than libie.
> 
> You're right that vf_res->mtu was also not accounted before the commit.
> 
> The commit changes:
> -       netdev->max_mtu = IAVF_MAX_RXBUFFER - IAVF_PACKET_HDR_PAD;
> +       netdev->max_mtu = LIBIE_MAX_MTU;
> ...
> -#define IAVF_MAX_RXBUFFER   9728  /* largest size for single descriptor */
> 
> and thus netdev->max_mtu was already hardcoded, but just because
> IAVF_MAX_RXBUFFER was valid for VFs there hadn't been any issues, and
> invalid MTU could start to be set after the commit.
> 
> > I'm asking as IIRC before I did set max_mtu to the libie definition,
> > there was a hardcoded value already.
> 
> Yea, as far as I checked the value was hardcoded from the beginning
> (91c527a55664 ("ethernet/intel: use core min/max MTU checking")).
> 
> Although I'm not attached to the exact commit as the Fixes: tag, I chose
> that since (coincidently) that commit made this regression.

That seems like a reasonable approach to me.

Reviewed-by: Simon Horman <horms@kernel.org>

