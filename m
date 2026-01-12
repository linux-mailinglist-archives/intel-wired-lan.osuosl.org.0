Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 492D4D13BCF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 16:40:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 062536F6C3;
	Mon, 12 Jan 2026 15:40:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 88tyjhvUjJ97; Mon, 12 Jan 2026 15:40:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B50F6F6C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768232444;
	bh=lWLa8BFP1kgFKIVhYHsABv9gUrFzoQq7hdhn+zK+9lg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WTKSBDn1U+mh3n2UGvqMEKfva0nMKnq15egyLHHGmqco2yP+yWY0VtvgGn2TwE6Fn
	 BWE2G968yp3K8AGYIHAkxNA4oYgva9Y6amrR+kFHvIV9DzsdbE/k1yVdPnVS0UaVlx
	 KReqHtLPJ8AsU8/vR/ug0NnAje/rlMbF9jONV1zvtAj6QhbGDCjSjcGN8xvuYpUKCV
	 ZLcEYUwcONuhxRXBciZsDYFlCX06ItPB4/sQLPr4fhUvHJ1Mt2W4x0kvkwkxeyhrBL
	 BFPKBNrmHySDAyIxwXmI7xhv46V04lS7JvjlIbRZs8fcYT4s7HHuMzyoTPCCuiLuAS
	 XK4OcBzsCYZ1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B50F6F6C6;
	Mon, 12 Jan 2026 15:40:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 87D5712E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A0E385269
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:40:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cIVu4MxZseR7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 15:40:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7210B85268
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7210B85268
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7210B85268
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:40:41 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1vfK22-002V1O-Lj; Mon, 12 Jan 2026 16:40:38 +0100
Date: Mon, 12 Jan 2026 16:40:38 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <8f976990-1087-4ba0-a06d-c0538c39d2a3@lunn.ch>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
 <20260112140108.1173835-7-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260112140108.1173835-7-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=lWLa8BFP1kgFKIVhYHsABv9gUrFzoQq7hdhn+zK+9lg=; b=KDyXM7+h/r5vhFmAdBPSQ4jZFD
 YpitUKL3WbtTV7H0fQ5bhm/hVRJUlf75Mx4QvFPYKcFHH//tpB6QZE0vt3wGH+BItSpnGsJCWr67c
 aBEaFUjxR/ixOyI7MBZexiITOE6LtYpT0KHkwN4I5R/wHb/aNarRkKJk0rDo8l0AvXjI=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=KDyXM7+h
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 6/7] ixgbe: replace EEE
 enable flag with state enum
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

On Mon, Jan 12, 2026 at 03:01:07PM +0100, Jedrzej Jagielski wrote:
> Change approach from using EEE enabled flag to using newly introduced
> enum dedicated to reflect state of the EEE feature.
> 
> New enum is required to extend on/off state with new forced off state,
> which is set when EEE must be temporarily disabled due to unsupported
> conditions, but should be enabled back when possible.
> 
> Such scenario happens eg when link comes up with newly negotiated
> speed which is not one of the EEE supported link speeds.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h         | 11 ++++++++++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |  4 ++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    |  4 ++--
>  3 files changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 14d275270123..9f52da4ec711 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -324,6 +324,14 @@ enum ixgbe_ring_state_t {
>  	__IXGBE_TX_DISABLED,
>  };
>  
> +enum ixgbe_eee_state_t {
> +	IXGBE_EEE_DISABLED,	/* EEE explicitly disabled by user */
> +	IXGBE_EEE_ENABLED,	/* EEE enabled; for E610 it's default state */
> +	IXGBE_EEE_FORCED_DOWN,	/* EEE disabled by link conditions, try to
> +				 * restore when possible

This is a bit odd. What generally happens is the PHY advertises what
it supports. It receives what the link partner advertises. It then
runs a resolver to determine what the result of the negotiation is,
and then informs the MAC of the result. The configuration does not
change if the resolved state means EEE is disabled. The PHY keeps on
advertising what it was configured with. If the link changes such that
the resolved state does allow EEE, the notification to the MAC will
indicate this.

It seems to me you are mixing up configuration and state.

	Andrew
