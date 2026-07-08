Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eiSHJpBgTmpSLgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 16:37:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 174B1727764
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 16:37:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=EzU6EULY;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0C0C817A9;
	Wed,  8 Jul 2026 14:37:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P7lqVIzosoBV; Wed,  8 Jul 2026 14:37:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C089A8143A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783521421;
	bh=exnNu2I5aI5H24F1WtiUJW2O63f75UQrbEQvXGcBk5s=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EzU6EULYReSgxtZgRZt68EyoVXkgg/4Cs7w+PWyjMs95twuXmrGHkEebCbr55u8qA
	 9rqNItRyTGOxEUK0lvAWyD9SAKkjLxNTerS1rkq6lQVZ//vmWiPdOXQ4NJB/YxBu7f
	 R/EqsWUf37ym/z99ciJMNKhH61MfhVM192+aIFzdGJYzlyWBgrSITkMNPWycDtS6sc
	 b42zyLzu/bwB5LNoyGjaOZ+7G8YJ26sZRk/uVRlR+1fi4/Dao/gZh8VoiHJf5wpak7
	 HQ8G2kSYEGhQXZzk3DMQhNBkXAtANnNuBtazJ0AtdlvgqpjQ18eNEE//2F0zvnk1bc
	 o3pRjfK5xX6Cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C089A8143A;
	Wed,  8 Jul 2026 14:37:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D08DC315
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 14:37:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B69FE40E6D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 14:37:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qli1iT2pvZ5h for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 14:36:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F74040E52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F74040E52
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F74040E52
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 14:36:59 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id BE2C860008;
 Wed,  8 Jul 2026 14:36:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 072261F000E9;
 Wed,  8 Jul 2026 14:36:54 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: mheib@redhat.com
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, jiri@resnulli.us, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, corbet@lwn.net,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch
Date: Wed,  8 Jul 2026 15:36:51 +0100
Message-ID: <20260708143651.1491857-1-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701093830.948756-2-mheib@redhat.com>
References: <20260701093830.948756-2-mheib@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1783521417;
 bh=exnNu2I5aI5H24F1WtiUJW2O63f75UQrbEQvXGcBk5s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=bf0Y7f8LcK5njMeKKfJmq+s6ioYdgQLclm1vrgIVwKCC9dIAQv/DWPWNfgO/WLO6W
 CumTgWja4ZYeg2DRgEINH10R5BEwyG2Qal4dSILLMNpud5LoQWUfgE4BWpQ8o1xSiR
 fN4BPeU+dcpycQF3lCX+8o/Z1kJMATH5MdEAFzO866liybnj3pwTCewDNtoAFdl9Up
 CjntL4QoqsBvjeHhGjOW3NP0vyJ7sUZD7OY/MSJFb+XUz97jpQHqDZn/w2A82szYRR
 d90PaZhfzowdC3Ph4KHJrGpZyr8fWbnLCoviNrDL1MCRsVYdm7OyhMbpNj0jWHO7Pl
 eNvTxgDHXsF2w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=bf0Y7f8L
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/2] i40e: add devlink
 parameter for Flow Director ATR sample rate
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:mheib@redhat.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:corbet@lwn.net,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 174B1727764

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
i40e: add devlink parameter for Flow Director ATR sample rate

This commit introduces a runtime devlink parameter to tune the Flow Director
ATR sample rate. This allows dynamic adjustments to the sampling interval
without rebuilding the driver, which can help reduce TCP packet reordering
on systems with high-rate workloads.

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> index 229179ccc1319..cf487efdd803d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
[ ... ]
> @@ -33,12 +33,48 @@ static int i40e_max_mac_per_vf_get(struct devlink *devlink,
>  	return 0;
>  }
>  
> +static int i40e_atr_sample_rate_set(struct devlink *devlink,
> +				    u32 id,
> +				    struct devlink_param_gset_ctx *ctx,
> +				    struct netlink_ext_ack *extack)
> +{
> +	struct i40e_pf *pf = devlink_priv(devlink);
> +	u32 sample_rate = ctx->val.vu32;
> +
> +	pf->atr_sample_rate = sample_rate;

[Severity: Low]
Does modifying pf->atr_sample_rate concurrently with the Tx fast path
introduce a data race?

In the Tx fast path, i40e_atr() reads this value locklessly. If the devlink
callback sets this to 0 between the two reads in i40e_atr():

drivers/net/ethernet/intel/i40e/i40e_txrx.c:i40e_atr() {
        if (!pf->atr_sample_rate)
                return;
        ...
        if (tx_ring->atr_count < pf->atr_sample_rate)
        ...
}

Could this race lead to a situation where the second check evaluates
tx_ring->atr_count against 0, unintentionally programming an extra Flow
Director filter?

While the functional impact might just be a single extra sampled packet,
should we use READ_ONCE() in the fast path and WRITE_ONCE() here to avoid
KCSAN data race warnings and ensure a consistent value is used throughout
the function?

> +	return 0;
> +}

[ ... ]
