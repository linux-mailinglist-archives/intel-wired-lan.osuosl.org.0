Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJCHKMVH5mnSuAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 17:35:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BF242E5D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 17:35:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8A8E610F3;
	Mon, 20 Apr 2026 15:35:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wGapIkFAez6o; Mon, 20 Apr 2026 15:35:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC256610F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776699330;
	bh=N3trZqLikRis3QLAdPWoS4PuGAy+fE3neMliF1UAJyA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aDZ7XlbhrLqh2Wzh0uKnJOJONx9IzYWnfk+mfVEP99/XzunHJ67iX1RyN16P4/0GJ
	 PxCzUHC7ML5mPf4OkidnNf4HDZd7HGyVVtcPJ+IWCoO8mBI4MZu9X11ND7Zbubt8Hj
	 exs9m0C2C+iBgqRWMFHqT4h0hzqG6kxrUHVw9Yd22u11BCGj7J/SoHBqiW9K/D5gfW
	 8nNBrx6UcPSErYczSmZZHFAy9TQAv4SccE5cW0MIIfr2pIJ4RT1Bznzv6F7nElp4F6
	 dEKqsaip7ssfsBR1tVI3ivSkrBlNY4fxPad6NBh4+U7svVb25+yNoWwIITiK5K1qcA
	 J7QKNSD5REVNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC256610F0;
	Mon, 20 Apr 2026 15:35:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 71CA6259
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 15:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 582E240B78
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 15:35:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I_80v6ZWGWaz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 15:35:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7BDAA40B57
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BDAA40B57
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BDAA40B57
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 15:35:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D5D5D44108;
 Mon, 20 Apr 2026 15:35:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DF54C2BCB4;
 Mon, 20 Apr 2026 15:35:23 +0000 (UTC)
Date: Mon, 20 Apr 2026 16:35:20 +0100
From: Simon Horman <horms@kernel.org>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
Cc: khai.wen.tan@linux.intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 faizal.abdul.rahim@intel.com, hong.aun.looi@intel.com,
 khai.wen.tan@intel.com
Message-ID: <20260420153520.GR280379@horms.kernel.org>
References: <20260416015520.6090-4-khai.wen.tan@linux.intel.com>
 <20260418164837.380985-2-horms@kernel.org>
 <3481ae84-5c36-4591-94c1-78b70fff4d7b@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3481ae84-5c36-4591-94c1-78b70fff4d7b@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776699326;
 bh=IGDlVa4/d0HT3rb4xC7h1M2d+XyUMQQkRyNMsH9Y984=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KwYpiejqS9shzOnNgUMfR3fw6CPxszOp5vtWLAMWNP7WGEJRiI9ooz/L3XCqmKmFV
 OHPbGvr5/3C0evuskGsuj1B3HnfhjNtLfQtnORK3/y9dSj1mvfovc90KbkFNZ4Y6R8
 CjiPQANuKe50YJ0TaqZgSkvHWiP2HuOk4xWrpld3qMHpwe174zh3Ia/YSY3MzkL+G1
 syTcSRc0MAytBXGwsDMoDp04FLN4wCTI+y9d4XBI20Q4VFk58/KIiQxYhzIQ7PjfED
 wJWgWE1jJLGdp0BnsUsr8URNYL0JbAaKYyKHz6dRJnxiVSM2WHah4lufe9f7Qgn2fn
 9XfahCH1sDWLA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KwYpiejq
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igc: add support for
 forcing link speed without autonegotiation
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:faizal.abdul.rahim@linux.intel.com,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.821];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 74BF242E5D3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 20, 2026 at 11:20:07AM +0800, Abdul Rahim, Faizal wrote:
> 
> 
> On 19/4/2026 12:48 am, Simon Horman wrote:
> > From: 'Simon Horman' <horms@kernel.org>
> > 
> > This is an AI-generated review of your patch. The human sending this
> > email has considered the AI review valid, or at least plausible.
> > Full review at: https://sashiko.dev
> > ---
> > igc: add support for forcing link speed without autonegotiation
> > 
> > This commit adds support to allow users to force 10/100 Mb/s link speed
> > and duplex via ethtool when autonegotiation is disabled.
> > 
> > > diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > > index cfcbf2fdad6ea..5bd37d1be1688 100644
> > > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > 
> > [ ... ]
> > 
> > > @@ -2000,6 +2013,41 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
> > >   	return 0;
> > >   }
> > > +/**
> > > + * igc_handle_autoneg_disabled - Configure forced speed/duplex settings
> > > + * @adapter: private driver structure
> > > + * @speed: requested speed (must be SPEED_10 or SPEED_100)
> > > + * @duplex: requested duplex
> > > + *
> > > + * Records forced speed/duplex when autoneg is disabled.
> > > + * Caller must validate speed before calling this function.
> > > + */
> > > +static void igc_handle_autoneg_disabled(struct igc_adapter *adapter, u32 speed,
> > > +					u8 duplex)
> > > +{
> > > +	struct igc_mac_info *mac = &adapter->hw.mac;
> > > +
> > > +	switch (speed) {
> > > +	case SPEED_10:
> > > +		mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
> > > +			IGC_FORCED_10F : IGC_FORCED_10H;
> > > +		break;
> > > +	case SPEED_100:
> > > +		mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
> > > +			IGC_FORCED_100F : IGC_FORCED_100H;
> > > +		break;
> > > +	default:
> > > +		WARN_ONCE(1, "Unsupported speed %u\n", speed);
> > > +		return;
> > > +	}
> > > +
> > > +	mac->autoneg_enabled = false;
> > > +
> > > +	/* Half-duplex cannot support flow control per IEEE 802.3 */
> > > +	if (duplex == DUPLEX_HALF)
> > > +		adapter->hw.fc.requested_mode = igc_fc_none;
> > > +}
> > 
> > If userspace issues an ethtool command without specifying duplex, the duplex
> > value can be DUPLEX_UNKNOWN. In this case, forced_speed_duplex correctly
> > defaults to half-duplex since duplex == DUPLEX_FULL evaluates to false.
> > 
> > However, since DUPLEX_UNKNOWN is not equal to DUPLEX_HALF, the check above
> > fails, and the requested flow control mode remains unchanged. Could this leave
> > flow control enabled on a forced half-duplex link, violating IEEE 802.3?
> > Should this check be based on the resolved mac->forced_speed_duplex state
> > instead?
> > 
> 
> You're right, thanks for pointing that out.
> 
> That said, it feels simpler to address it with [1]:
> if (duplex != DUPLEX_FULL)
>     adapter->hw.fc.requested_mode = igc_fc_none;
> 
> Rather than [2]:
>  if (mac->forced_speed_duplex == IGC_FORCED_10H ||
>         mac->forced_speed_duplex == IGC_FORCED_100H)
>         adapter->hw.fc.requested_mode = igc_fc_none;
> 
> Are you okay with [1] ?

Yes, [1] sounds sensible to me.

> 
> > [ ... ]
> > 
> > > @@ -2071,14 +2120,20 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
> > >   		}
> > >   	}
> > > +	if (cmd->base.autoneg == AUTONEG_DISABLE &&
> > > +	    cmd->base.speed != SPEED_10 && cmd->base.speed != SPEED_100) {
> > > +		netdev_info(dev, "Unsupported speed for forced link\n");
> > > +		return -EINVAL;
> > > +	}
> > > +
> > >   	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
> > >   		usleep_range(1000, 2000);
> > 
> > This isn't a bug introduced by this patch, but does this ad-hoc
> > synchronization using bit flags circumvent proper locking guarantees? The
> > networking subsystem guidelines forbid using bit flags as ad-hoc locks.
> > 
> > Using a bit flag in a polling loop bypasses lockdep analysis, fairness, and
> > strict memory ordering. Could this be replaced with a real synchronization
> > mechanism like a mutex?
> 
> It looks like a worthwhile cleanup. However, it likely doesn’t belong in
> this series, since the synchronization pattern predates these patches and is
> used throughout the igc driver (set_ringparam, set_pauseparam, set_channels,
> etc.). We could address it in different patch series and align the other
> code paths at the same time ?

Yes, agreed.
