Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJl1BeV3GGo8kQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 19:14:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECF45F5766
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 19:14:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 846FB61BBB;
	Thu, 28 May 2026 17:14:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5hyuk_EebTzx; Thu, 28 May 2026 17:14:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C405D61BBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779988449;
	bh=x3XecCey7V1jOhn3zE1GAiTBEWrdYTpPoYi4jvRTnPE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KWxQa6fsf5GsQfxqlLKt8fFTnpy0al1QFQPOP6hN6bZOvTcBdV0oWEzvfCQvWvQU8
	 FVsFazjXaupWr9tDCl6PcWsM/QvnWP1RqoVejgLL3QjY0P17zS4WBwAYddoI7gcVsQ
	 D42czenNjK81dnIIq4VOKZjsKO+f/Y/6f7NrYIh0FW4JwspXzifErDqL99rBmuWeuE
	 uU7PVBwRPFyHYdKWyS3CsULsywsBZ5Bh1s3SNFtNE3ZrU1kqzgxHanRdlSI77EZJRn
	 aM5Q6x8tMFL5uBX9wkq1wPPc/8NryJdFwsyMYIqDQ1IUyjGuKIZPhjlrs6oBPs/Vq/
	 WJBxKDGqwykkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C405D61BBC;
	Thu, 28 May 2026 17:14:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 153312E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 17:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF3CD61BBA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 17:14:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mjEHpk4RXiRy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 17:14:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 292B961BB9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 292B961BB9
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 292B961BB9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 17:14:06 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 51644419C1;
 Thu, 28 May 2026 17:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBE5B1F000E9;
 Thu, 28 May 2026 17:14:03 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: zhaojinming@uniontech.com
Cc: 'Simon Horman' <horms@kernel.org>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu, 28 May 2026 18:12:04 +0100
Message-ID: <20260528171202.2659491-3-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260526021154.2774526-1-zhaojinming@uniontech.com>
References: <20260526021154.2774526-1-zhaojinming@uniontech.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779988446;
 bh=x3XecCey7V1jOhn3zE1GAiTBEWrdYTpPoYi4jvRTnPE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=cdooFQ0tmujdG4wbgACHhQWY7nU+DQjiOofHK77kakdcPnTvUlOrkTzlgFBK56u8m
 T1mN2I/7L9oV1WmUv/090/d7j0P44pp/Np4HIDfb4xI/UmyGablZQV9/SjbePDwN8r
 C3OQtuUCRDhNirwPdOnV2ODN4m2zgYtw+ZuVCG9opek5uyeuHfCa75gG6Uwu3pFF+s
 i8vde1HivO3Y1DIKfy1BzUQN2B/ibVpjrE5XjMlIAcgyM7ErDHL/unEDDxP9OtlZ9T
 /eo7ebv/frvML8UJQsy/517fldAj8GBsAFIIbQgG8uWVyKBpDnQ5hgtyDgKoINXTa4
 Rb/FebhNCedyw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=cdooFQ0t
Subject: Re: [Intel-wired-lan] [PATCH net] ice: dpll: fix memory leak in
 ice_dpll_init_info error paths
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
X-Spamd-Result: default: False [3.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:zhaojinming@uniontech.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7ECF45F5766
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ice: dpll: fix memory leak in ice_dpll_init_info error paths

This commit fixes memory leaks in several error return paths of
ice_dpll_init_info() by routing them to the deinit_info label. This
ensures previously allocated resources are correctly freed.

> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
[ ... ]
> @@ -4341,12 +4341,16 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
>  
>  	alloc_size = sizeof(*de->input_prio) * d->num_inputs;
>  	de->input_prio = kzalloc(alloc_size, GFP_KERNEL);
> -	if (!de->input_prio)
> -		return -ENOMEM;
> +	if (!de->input_prio) {
> +		ret = -ENOMEM;
> +		goto deinit_info;
> +	}

Simon says: Although this is a pre-existing issue I believe it needs
            to be assessed in the context of this patch.

	    If it is valid then I would suggest a separate patch,
	    preceding this one in a patch-set, to address it.

[Severity: Critical]
This is a pre-existing issue, but does jumping to deinit_info here expose a
double-free risk during driver resets?

When a driver reset occurs, ice_dpll_deinit_info() frees the pointers in
pf->dplls (like d->inputs, d->outputs, de->input_prio, and dp->input_prio)
but does not set them to NULL.

During the subsequent reset recovery, ice_dpll_init_info() is called. If
allocation fails here at de->input_prio, the code jumps to deinit_info
and calls ice_dpll_deinit_info() again.

Because d->outputs and dp->input_prio have not yet been overwritten with
new allocations during this init sequence, they still hold the old dangling
pointers from before the reset. Will calling ice_dpll_deinit_info() again
attempt to kfree() these old pointers, resulting in a double-free?

[ ... ]
