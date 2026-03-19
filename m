Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIAJMHk0vGl3uwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:38:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF372D01E3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:38:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BCE440A19;
	Thu, 19 Mar 2026 17:37:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RKD8pyPL8YYB; Thu, 19 Mar 2026 17:37:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9851C40A1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773941878;
	bh=sIA0VxEHalwtbwebz3Ub5SoOTN0LXVwz+kEtQHlQMXQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n5P3PGsgp1URomA21cqnoifIQyqXKEMzTEPASfm2UsK1ipym6eStLL/K5VvtPkdoE
	 ULRs8CzIJSmcEUpIdsAfvFLOldFCqPdR6b5MegFofoeoNcHbCiVL69InLR71LFgm6m
	 yKxtqTYR69Sa/6zOKWFdPabq2q70t91vk7KL26pSmob9GJGHh6YDyGyIK7fBCqlTXT
	 A1nQ98AlVRT5+NpiSvZhkM5se3xmIRy+0X0b1azurJfUiUgK0GCqRgZmh8eaZ97f9E
	 EOoZXBoxE3nDSvGdaooHu7HDcu6xiCkZLqR2nb3TFn4VijWW40bP6QQgK4L5K+ohs1
	 LoYOkXJj+0qLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9851C40A1E;
	Thu, 19 Mar 2026 17:37:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A34D265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B7BB60DB8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:37:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2moHofJ8jW3P for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 17:37:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3560860D6C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3560860D6C
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3560860D6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:37:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 853A340B2D;
 Thu, 19 Mar 2026 17:37:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A63A6C19424;
 Thu, 19 Mar 2026 17:37:51 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: grzegorz.nitka@intel.com
Date: Thu, 19 Mar 2026 17:37:34 +0000
Message-ID: <20260319173734.2004456-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260318090654.611349-6-grzegorz.nitka@intel.com>
References: <20260318090654.611349-6-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773941875;
 bh=UpJlN5QiJI2YcSqqnnHxI8WchZ3Wjht+c7y2Lbl/boA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lg3TL/Dy1/XvD51t7OUfcJXnlrxtgNapvFF4OwpNH4QAHK5u5EGkL3dY4QyGxpBxB
 gG5YQiXM3DLI0XiTciPWS5T7IiXNDj3HoIA9R3mNxU3ynUa+We/PSl7P6/D1wsI4AN
 rsYbEEUTJ2FZHCwUYOkc+tqu56x5FPzj9hIe8j0Q1LwCo5PtsUSXzLN7cTQIvCS1LT
 v3j4ZXkSzUsGdUfv735t8stkHzX4dYMlmxURIpxxmYfJC2d+OiFRCxHrIRGJVTk0Tm
 nQbRN7UJP4RMW65BTnbG0DjvGi/IAEpu7AIuH158FkvpJyX/O1bV3TagEBbtEi+gL5
 opn0c3/TWXd/g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lg3TL/Dy
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/8] ice: add TX clock (TXC)
 DPLL interface for E825 devices
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, jiri@resnulli.us,
 netdev@vger.kernel.org, richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 aleksandr.loktionov@intel.com, andrew+netdev@lunn.ch,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>, kuba@kernel.org,
 przemyslaw.kitszel@intel.com, Prathosh.Satish@microchip.com, pabeni@redhat.com,
 davem@davemloft.net, intel-wired-lan@lists.osuosl.org
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
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:przemyslaw.kitszel@intel.com,m:Prathosh.Satish@microchip.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,linux.dev:url];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,vger.kernel.org,gmail.com,intel.com,lunn.ch,kernel.org,microchip.com,davemloft.net,lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.995];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CEF372D01E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
ice: add TX clock (TXC) DPLL interface for E825 devices

This commit introduces a TX clock DPLL instance and pins for E825-based
devices. The TXC domain exposes two reference pins: EXT_EREF0 (board
external electrical reference) and SYNCE (port-derived reference,
described via fwnode). A new pin type and pin ops are added to support
TX clock references.

> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 62f75701d652..a1258f2e03a9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c

[ ... ]

> @@ -3552,6 +3686,39 @@ ice_dpll_init_fwnode_pins(struct ice_pf *pf, struct ice_dpll_pin *pins,
>  	return ret;
>  }
>
> +static int ice_dpll_init_txclk_pins(struct ice_pf *pf, int start_idx)
> +{
> +	struct ice_dpll_pin *ref_pin = pf->dplls.txclks;
> +	struct ice_dpll *txc = &pf->dplls.txc;
> +	int ret = 0;
> +
> +	/* configure EXT_EREF0 pin */
> +	ret = ice_dpll_get_pins(pf, ref_pin, start_idx, 1, pf->dplls.clock_id);
> +	if (ret)
> +		return ret;
> +	ret = dpll_pin_register(txc->dpll, ref_pin->pin, &ice_dpll_txclk_ops,
> +				ref_pin);
> +	if (ret)
> +		return ret;
> +
> +	/* configure EXT_SYNCE pin which is based on fwnode pin */
> +	ref_pin++;
> +	ret = ice_dpll_init_fwnode_pin(ref_pin, ice_dpll_fwnode_ext_synce);
> +	if (ret)
> +		return ret;
> +
> +	ret = dpll_pin_register(txc->dpll, ref_pin->pin, &ice_dpll_txclk_ops,
> +				ref_pin);
> +	if (ret)
> +		return ret;

Does ice_dpll_init_txclk_pins leak the EXT_EREF0 pin on error?

If dpll_pin_register for the EXT_SYNCE pin fails, the function returns
the error without cleaning up the EXT_EREF0 pin that was already
successfully registered. Looking at the call chain:

ice_dpll_init_pins_e825() calls:
    ice_dpll_init_txclk_pins()
        ice_dpll_get_pins() -> acquires pin reference for EXT_EREF0
        dpll_pin_register() -> registers EXT_EREF0 with TXC DPLL
        ice_dpll_init_fwnode_pin() -> may fail here
        dpll_pin_register() -> or may fail here for EXT_SYNCE

If either of the last two steps fail, the function returns the error
directly without calling dpll_pin_unregister or ice_dpll_release_pins
for the EXT_EREF0 pin.

The caller ice_dpll_init_pins_e825() also doesn't compensate - on
txclk init failure it only calls ice_dpll_deinit_rclk_pin() and
ice_dpll_deinit_fwnode_pins(), neither of which clean up txclk
resources.

Compare with ice_dpll_init_fwnode_pins() and ice_dpll_get_pins() which
both have proper error-path rollback using goto labels.

> +
> +	if (IS_ERR_OR_NULL(ref_pin->pin))
> +		dev_dbg(ice_pf_to_dev(pf),
> +			"Tx-clk mux pin not registered yet\n");

Can this cause a NULL pointer dereference?

The IS_ERR_OR_NULL check appears after calling dpll_pin_register with
ref_pin->pin. Looking at the code flow:

ice_dpll_init_fwnode_pin() returns 0 (success) even when
fwnode_dpll_pin_find() returns NULL and sets ref_pin->pin = NULL. This
is the expected case - the commit message states "The SYNCE pin is
registered when its fwnode becomes available" and the code prints "DPLL
pin for %pfwp not registered yet".

However, the code unconditionally calls:

    dpll_pin_register(txc->dpll, ref_pin->pin, ...)

where ref_pin->pin is NULL. Looking at dpll_pin_register in
dpll_core.c:

    int dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin, ...)
    {
        ...
        ret = dpll_pin_fwnode_register(dpll, pin, &ice_dpll_txclk_ops, pin_priv);
        ...
    }

which then calls code that dereferences pin->fwnode without a NULL
check, causing a kernel oops.

The IS_ERR_OR_NULL guard at line 3716 was clearly intended to protect
the dpll_pin_register call but was placed after it instead of before it.

> +
> +	return 0;
> +}

[ ... ]
