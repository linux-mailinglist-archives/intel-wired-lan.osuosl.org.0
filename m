Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QM43LWVe82lT1wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 15:51:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0824A3AC6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 15:51:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFFB8848E1;
	Thu, 30 Apr 2026 13:51:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wKKRl3Bow9am; Thu, 30 Apr 2026 13:51:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14973848CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777557090;
	bh=2gpl6ecnESTQHCbj5QgP26RaK2btvuHx+iR2+B7DLRE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4N1ipQE6GgxRohcylZDI6DEC11WTiZCpD57xxAjl8hkLJmaL/YgD/e2omI0QhRwHx
	 2CGTPzC31Cu+KXw9x0XkTKAjsUSbdQXLfzs1o1BpYflKiQFJR/jeVeuXw/5VKmWQdC
	 E3trwARo5ykLIote1phKqh06M4qWX91yDjFLERBcugOf+aoCRaIB4W/HTFgthrI2EJ
	 S/dp1sC8U/e+xPZSHJ3Kc/XfpQ4qB3Jf5sR3mKIeeHAJAedOn7n1JQnpirj8lL2BW/
	 Aw554xD4T3yKHXOMORhusNbRMo+fh5w4/F03HoutRgcPNecrAXoTMQBKLpeBnAmENj
	 sKKI+yzlztyHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14973848CE;
	Thu, 30 Apr 2026 13:51:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B3D77192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 13:51:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B240342986
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 13:51:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r7eYU4TM-Z4r for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 13:51:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A6C7742945
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6C7742945
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6C7742945
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 13:51:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 0909260180;
 Thu, 30 Apr 2026 13:51:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC959C2BCB3;
 Thu, 30 Apr 2026 13:51:22 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: khai.wen.tan@linux.intel.com
Cc: 'Simon Horman' <horms@kernel.org>, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 faizal.abdul.rahim@intel.com, hong.aun.looi@intel.com,
 khai.wen.tan@intel.com, faizal.abdul.rahim@linux.intel.com
Date: Thu, 30 Apr 2026 14:50:57 +0100
Message-ID: <20260430135057.1653330-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260428060009.311393-4-khai.wen.tan@linux.intel.com>
References: <20260428060009.311393-4-khai.wen.tan@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1777557085;
 bh=sGKecohrPFm0s7IoeAxyxJmKcE8tQ35JCJLbT5iR9m8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=abCfbkozqqeclATf5iyy8Ha/AMdrHQ3m0RD8bvbJIyrPqg+uVcr4sO2JtNVvAcXQ2
 FPitsgA0/L+mbeCgryRresXrbPEC1qRrBGA/ldr5+8LT7j0nr9WYTD4O6e93rsn4Ia
 gTi5g0IXuljAIKwHuhwKn7Sw+Wp2pBdb44W6JpA7p4C/V3aeW0baSLoK9qFj4pMi0k
 YGTgV7UpUCNw/N31Nd8XjyFY9llWLwEHHSaijxwH+Fe4ft/j/3iRRdvFet4qqm5QK/
 AR8x/a1MXEQ4hVkqCAwy00DypdxgIsE6AYT5mn60s5UUfs7yCwUfUqp/TUCucbI/DZ
 T/Wep7zefQqvQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=abCfbkoz
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
X-Rspamd-Queue-Id: BB0824A3AC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:khai.wen.tan@linux.intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
igc: add support for forcing link speed without autonegotiation

This commit allows users to force 10/100 Mb/s link speed and duplex via
ethtool when autonegotiation is disabled. Previously, the driver rejected
these requests.

> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index cfcbf2fdad6e..9997ebbdf778 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
[ ... ]
> @@ -2000,6 +2013,41 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>  	return 0;
>  }
>  
> +/**
> + * igc_handle_autoneg_disabled - Configure forced speed/duplex settings
> + * @adapter: private driver structure
> + * @speed: requested speed (must be SPEED_10 or SPEED_100)
> + * @duplex: requested duplex
> + *
> + * Records forced speed/duplex when autoneg is disabled.
> + * Caller must validate speed before calling this function.
> + */
> +static void igc_handle_autoneg_disabled(struct igc_adapter *adapter, u32 speed,
> +					u8 duplex)
> +{
> +	struct igc_mac_info *mac = &adapter->hw.mac;
> +
> +	switch (speed) {
> +	case SPEED_10:
> +		mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
> +			IGC_FORCED_10F : IGC_FORCED_10H;
> +		break;
> +	case SPEED_100:
> +		mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
> +			IGC_FORCED_100F : IGC_FORCED_100H;
> +		break;
> +	default:
> +		WARN_ONCE(1, "Unsupported speed %u\n", speed);
> +		return;
> +	}
> +
> +	mac->autoneg_enabled = false;
> +
> +	/* Half-duplex cannot support flow control per IEEE 802.3 */
> +	if (duplex != DUPLEX_FULL)
> +		adapter->hw.fc.requested_mode = igc_fc_none;

Does this permanently overwrite the user's flow control preference?

If half-duplex is requested, requested_mode is set to igc_fc_none. Because
requested_mode represents the persistent state for the user's flow control
preference, the user might permanently lose their configuration. If they later
switch back to full-duplex, requested_mode remains igc_fc_none, and flow
control stays disabled.

Would it be better to dynamically override hw->fc.current_mode to
igc_fc_none during link configuration instead of mutating requested_mode?

> +}
[ ... ]
> @@ -2071,14 +2126,20 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
>  		}
>  	}
>  
> +	if (cmd->base.autoneg == AUTONEG_DISABLE &&
> +	    cmd->base.speed != SPEED_10 && cmd->base.speed != SPEED_100) {
> +		netdev_info(dev, "Unsupported speed for forced link\n");
> +		return -EINVAL;
> +	}
> +

Should we also validate cmd->base.duplex here to prevent a fallback to
half-duplex?

If a user runs a command like "ethtool -s eth0 speed 100 autoneg off" while
the link is down, ethtool queries and preserves the current duplex value,
which is DUPLEX_UNKNOWN (0xff).

In igc_handle_autoneg_disabled(), the code checks if duplex == DUPLEX_FULL,
which evaluates to false, and forces the interface to 100 Mbps half-duplex.

Could we explicitly check that cmd->base.duplex is either DUPLEX_HALF or
DUPLEX_FULL and return -EINVAL otherwise?

>  	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
>  		usleep_range(1000, 2000);

This isn't a bug introduced by this patch, but does this ad-hoc
synchronization loop reimplement locking without fairness or lockdep support?

According to the Networking Subsystem Guidelines, using bit operations as a
substitute for real locks violates core kernel locking rules and introduces
potential races.

Could this be replaced with a proper concurrency mechanism such as a mutex?

>  
> -	if (cmd->base.autoneg == AUTONEG_ENABLE) {
> +	if (cmd->base.autoneg == AUTONEG_ENABLE)
>  		igc_handle_autoneg_enabled(adapter, cmd);
> -	} else {
> -		netdev_info(dev, "Force mode currently not supported\n");
> -	}
> +	else
> +		igc_handle_autoneg_disabled(adapter, cmd->base.speed,
> +					    cmd->base.duplex);
>  
>  	/* MDI-X => 2; MDI => 1; Auto => 3 */
>  	if (cmd->base.eth_tp_mdix_ctrl) {
