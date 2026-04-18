Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCTvFby242mVKAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Apr 2026 18:52:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32045421B29
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Apr 2026 18:52:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8CC440F87;
	Sat, 18 Apr 2026 16:52:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vnfmd4UDm9dn; Sat, 18 Apr 2026 16:52:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E74C240F76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776531129;
	bh=lJT6eUZ8/0wb0gv+fWpBt8xji6v9X7XIoCnYmfmk5Gg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H8KErcTtmOL/dKY8I1pTFbMa5hmRycZv6G0eLLB4Wam3JC7qug1gbSnKDjnPwNICl
	 ucT81q+ZUQVfMzHtgJS8oRLusphO3wvnOnM6248b29LpSx615p+rdocA+8X9X8w9cS
	 gt/oecG8I4ELqTQr/sxGopSwhZUGGEawAwuJxfpD4Oi93YEahHAKsvKKQLjdGvynMy
	 wN6QpYXtQl2QyS7Ng03QNwiZkfTsrkv8hK4ot6BmG24c6Cp6zH0DTxLYhW8eTlPFqi
	 Ar6okpMw+C/zRKDSFZT/r3zmnxmeDFAcIBoIFRbGiGIVOnWiRS5p5gmfUhh7PA2pG8
	 KhCjVToNNWVRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E74C240F76;
	Sat, 18 Apr 2026 16:52:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 77E2A259
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 16:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5DD5440F70
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 16:52:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MEiJEYzwKfkm for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Apr 2026 16:52:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 60A0D40F6C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60A0D40F6C
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 60A0D40F6C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 16:52:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8AE7360138;
 Sat, 18 Apr 2026 16:52:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DB15C19424;
 Sat, 18 Apr 2026 16:52:00 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: khai.wen.tan@linux.intel.com
Cc: 'Simon Horman' <horms@kernel.org>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, faizal.abdul.rahim@intel.com,
 hong.aun.looi@intel.com, khai.wen.tan@intel.com,
 faizal.abdul.rahim@linux.intel.com
Date: Sat, 18 Apr 2026 17:48:38 +0100
Message-ID: <20260418164837.380985-2-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260416015520.6090-4-khai.wen.tan@linux.intel.com>
References: <20260416015520.6090-4-khai.wen.tan@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776531124;
 bh=XMTZj1YxPkY22L6vssswSQjk4oTxVG3RPZgGbSOfif8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rKzdxscKKp1giWSsuSCO3jKQUC4b8sL/u/GsH00AIPnDBiOFJoqb+6gaZ64Cr6ODv
 K4N1QExtkRpDDRwGOlvYHPsn+kQOOUeOFYwtQza7gw7DCyUCcQQltn08GGsU8FNvX9
 XFH4j7PYOg+Mg4sCJDgKFHcgbadra4WCrK94J4fAkuf8JCj0ow8UCP1ehX1OCtAgT/
 dSf1NBAr93ssqP8u0Z7P8dOZ1mFG3FAivCr/GSgm2zRV8CJE4MpIsnM1ATPPng9N68
 xtinbU1VIwcPW6/o2Jqq708tUrlauGyQ7aipfDdgZ4LnQrCcJG7lco/Bhk63vOq04c
 TZ5P6Z7j6yNsg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=rKzdxscK
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
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:khai.wen.tan@linux.intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 32045421B29
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
igc: add support for forcing link speed without autonegotiation

This commit adds support to allow users to force 10/100 Mb/s link speed
and duplex via ethtool when autonegotiation is disabled.

> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index cfcbf2fdad6ea..5bd37d1be1688 100644
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
> +	if (duplex == DUPLEX_HALF)
> +		adapter->hw.fc.requested_mode = igc_fc_none;
> +}

If userspace issues an ethtool command without specifying duplex, the duplex
value can be DUPLEX_UNKNOWN. In this case, forced_speed_duplex correctly
defaults to half-duplex since duplex == DUPLEX_FULL evaluates to false. 

However, since DUPLEX_UNKNOWN is not equal to DUPLEX_HALF, the check above
fails, and the requested flow control mode remains unchanged. Could this leave
flow control enabled on a forced half-duplex link, violating IEEE 802.3?
Should this check be based on the resolved mac->forced_speed_duplex state
instead?

[ ... ]

> @@ -2071,14 +2120,20 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
>  		}
>  	}
>  
> +	if (cmd->base.autoneg == AUTONEG_DISABLE &&
> +	    cmd->base.speed != SPEED_10 && cmd->base.speed != SPEED_100) {
> +		netdev_info(dev, "Unsupported speed for forced link\n");
> +		return -EINVAL;
> +	}
> +
>  	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
>  		usleep_range(1000, 2000);

This isn't a bug introduced by this patch, but does this ad-hoc
synchronization using bit flags circumvent proper locking guarantees? The
networking subsystem guidelines forbid using bit flags as ad-hoc locks. 

Using a bit flag in a polling loop bypasses lockdep analysis, fairness, and
strict memory ordering. Could this be replaced with a real synchronization
mechanism like a mutex?
