Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGgUGkFq/Gn0PgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 12:32:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5BA4E6CF8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 12:32:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28E02410CA;
	Thu,  7 May 2026 10:32:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tbAeLu0WYOHD; Thu,  7 May 2026 10:32:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58636410D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778149950;
	bh=n7B3DEl6ammNILVmd+A0p8Qwn/zlBMq72dBW/en3/Zg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vBMZKb1GjwzeurCoa0313zUbiAlNJBb8sONdrTI6+U0KPlxB9HnC70vh6i7lHIsLX
	 gdT+6sihyvpBB05vhGEqv+qFOH6RT30g1eJZoW7VsEUVi2beaKzVt7ypD3dZGIDWUC
	 otbwn2v5QRhjCzHhMCVmjbOWxHGLgANoz2FHEi69ohoy6z0z1bz4X9xLu+UBB6oiRz
	 LIjNUXy1xNeuBr7VCiNWTCXQUc0UgT3kqv7xTsP3aZsslc/QRBXr7D7G6T7nhEyg5w
	 SDb5zqfaP98U+1hrx5CA1ZQa4ZKTqC8U0g4c03WNVGmm3HDM+yXvwoFXAQqop7MX0g
	 HKvTnFfkVsmxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58636410D1;
	Thu,  7 May 2026 10:32:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D4A15317
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 10:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C28B483684
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 10:32:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0sIqSPiJTWxv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 10:32:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DB482834E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB482834E8
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB482834E8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 10:32:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A1F7B438F4;
 Thu,  7 May 2026 10:32:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E57C8C2BCB2;
 Thu,  7 May 2026 10:32:23 +0000 (UTC)
Date: Thu, 7 May 2026 11:32:21 +0100
From: Simon Horman <horms@kernel.org>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
Cc: khai.wen.tan@linux.intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, faizal.abdul.rahim@intel.com,
 hong.aun.looi@intel.com, khai.wen.tan@intel.com
Message-ID: <20260507103221.GJ15617@horms.kernel.org>
References: <20260428060009.311393-4-khai.wen.tan@linux.intel.com>
 <20260430135057.1653330-1-horms@kernel.org>
 <16b18088-8fe3-4a38-9eb9-d39842e6b94f@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <16b18088-8fe3-4a38-9eb9-d39842e6b94f@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778149946;
 bh=in0biBZ5KRChoMmc9KgpTQGWMkI7BtYNg69sNv8gMbM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e/1dKtL6ySpO2w2Lvwj17bD1ZI8PA1dnyseT03SJBkRPtKo/mrJY1kRM4HcJiO03V
 wjjfiquumMnB2b3CC+aOCIXRSyHayGreDdpKcj1kjIYzfZPqqRyKl6nW4VBi3Yoss5
 h063FuRFRDHVsfHhYTp8j5u8qwf+7FvOfYAyXlLrrLbPNKCIq9oDn1dGgnEndd2qKn
 rhohUhUZ/G3zWvy+jn4Ac0izYHMXJ5/4VP2uUfJu8al9Lunc0mmxL4P/gYo9ZH80LU
 d0Amo3Beeg57poW1W8S/zo3m1JnHeLC1zNKv0SPltuxX7biTckHAmyAkrKyEtdc/3B
 wD+V+0XcpFa7A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=e/1dKtL6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/3] igc: add support for
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
X-Rspamd-Queue-Id: AD5BA4E6CF8
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:faizal.abdul.rahim@linux.intel.com,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,osuosl.org:dkim];
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
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, May 06, 2026 at 02:25:23PM +0800, Abdul Rahim, Faizal wrote:
> 
> 
> On 30/4/2026 9:50 pm, Simon Horman wrote:
> > From: 'Simon Horman' <horms@kernel.org>
> > 
> > This is an AI-generated review of your patch. The human sending this
> > email has considered the AI review valid, or at least plausible.
> > Full review at: https://sashiko.dev
> > ---
> > igc: add support for forcing link speed without autonegotiation
> > 
> > This commit allows users to force 10/100 Mb/s link speed and duplex via
> > ethtool when autonegotiation is disabled. Previously, the driver rejected
> > these requests.
> > 
> >> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> >> index cfcbf2fdad6e..9997ebbdf778 100644
> >> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> >> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > [ ... ]
> >> @@ -2000,6 +2013,41 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
> >>  	return 0;
> >>  }
> >>  
> >> +/**
> >> + * igc_handle_autoneg_disabled - Configure forced speed/duplex settings
> >> + * @adapter: private driver structure
> >> + * @speed: requested speed (must be SPEED_10 or SPEED_100)
> >> + * @duplex: requested duplex
> >> + *
> >> + * Records forced speed/duplex when autoneg is disabled.
> >> + * Caller must validate speed before calling this function.
> >> + */
> >> +static void igc_handle_autoneg_disabled(struct igc_adapter *adapter, u32 speed,
> >> +					u8 duplex)
> >> +{
> >> +	struct igc_mac_info *mac = &adapter->hw.mac;
> >> +
> >> +	switch (speed) {
> >> +	case SPEED_10:
> >> +		mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
> >> +			IGC_FORCED_10F : IGC_FORCED_10H;
> >> +		break;
> >> +	case SPEED_100:
> >> +		mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
> >> +			IGC_FORCED_100F : IGC_FORCED_100H;
> >> +		break;
> >> +	default:
> >> +		WARN_ONCE(1, "Unsupported speed %u\n", speed);
> >> +		return;
> >> +	}
> >> +
> >> +	mac->autoneg_enabled = false;
> >> +
> >> +	/* Half-duplex cannot support flow control per IEEE 802.3 */
> >> +	if (duplex != DUPLEX_FULL)
> >> +		adapter->hw.fc.requested_mode = igc_fc_none;
> > 
> > Does this permanently overwrite the user's flow control preference?
> > 
> > If half-duplex is requested, requested_mode is set to igc_fc_none. Because
> > requested_mode represents the persistent state for the user's flow control
> > preference, the user might permanently lose their configuration. If they later
> > switch back to full-duplex, requested_mode remains igc_fc_none, and flow
> > control stays disabled.
> > 
> > Would it be better to dynamically override hw->fc.current_mode to
> > igc_fc_none during link configuration instead of mutating requested_mode?
> > 
> 
> Yes you're right, thanks, will update.
> 
> >> +}
> > [ ... ]
> >> @@ -2071,14 +2126,20 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
> >>  		}
> >>  	}
> >>  
> >> +	if (cmd->base.autoneg == AUTONEG_DISABLE &&
> >> +	    cmd->base.speed != SPEED_10 && cmd->base.speed != SPEED_100) {
> >> +		netdev_info(dev, "Unsupported speed for forced link\n");
> >> +		return -EINVAL;
> >> +	}
> >> +
> > 
> > Should we also validate cmd->base.duplex here to prevent a fallback to
> > half-duplex?
> > 
> > If a user runs a command like "ethtool -s eth0 speed 100 autoneg off" while
> > the link is down, ethtool queries and preserves the current duplex value,
> > which is DUPLEX_UNKNOWN (0xff).
> > 
> > In igc_handle_autoneg_disabled(), the code checks if duplex == DUPLEX_FULL,
> > which evaluates to false, and forces the interface to 100 Mbps half-duplex.
> > 
> > Could we explicitly check that cmd->base.duplex is either DUPLEX_HALF or
> > DUPLEX_FULL and return -EINVAL otherwise?
> 
> Will update.
> 
> > 
> >>  	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
> >>  		usleep_range(1000, 2000);
> > 
> > This isn't a bug introduced by this patch, but does this ad-hoc
> > synchronization loop reimplement locking without fairness or lockdep support?
> > 
> > According to the Networking Subsystem Guidelines, using bit operations as a
> > substitute for real locks violates core kernel locking rules and introduces
> > potential races.
> > 
> > Could this be replaced with a proper concurrency mechanism such as a mutex?
> > 
> 
> Hi Simon, you've raised this issue in v2, and after discussion, you've
> agreed that this change doesn't belong in this patch series.
> 
> Not sure if I missed anything?

Sorry, my bad. I missed that we'd already covered this one.
