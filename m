Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJ9LIGE19mk5TAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 02 May 2026 19:33:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4BA4B3128
	for <lists+intel-wired-lan@lfdr.de>; Sat, 02 May 2026 19:33:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BCC06109F;
	Sat,  2 May 2026 17:33:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rqj-44XAC_4H; Sat,  2 May 2026 17:33:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C54CD610A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777743198;
	bh=/Exg41egA6G17ZDU7QMyAP7XFBW8OqfDkkHuAGI7Bb4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q5O3inOuY8rSIvrcvCXKTP8F1GKz1ASxpdNORjvjVoRQBaRv4ucpJGtR8jN437VGE
	 AxdPCzqzgqFoXDSWviYf7tW4LWLDy23kfccV70D6RN7qcNwlCeZHFdiMd72viATk0W
	 xfxzcfaQvyckRGdAmGp6KZ2t5EIkTl4o1nv24GN3OJTkcKMfoJC5ETU0i6irMdMXWi
	 2QScOGosKHhVbbAcqUxlWswDYPaxGFkabIux7xvwu/YHoxkANMMvcb9nMqr98TbyiU
	 Fxo9QFkuzqnZncMsIfWluTFaya4diQ/IXW7vqBJ6haHef1Hfwe9p89OKv5Om6AiW6d
	 nc+1MytwXloQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C54CD610A1;
	Sat,  2 May 2026 17:33:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C1815190
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A7E21412D9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:33:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HJ_IxavKG1Hn for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 May 2026 17:33:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A1043412D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1043412D7
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A1043412D7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:33:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 584F160123;
 Sat,  2 May 2026 17:33:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 395ADC2BCC7;
 Sat,  2 May 2026 17:33:13 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: grzegorz.nitka@intel.com
Cc: Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 ivecera@redhat.com, vadim.fedorenko@linux.dev, jiri@resnulli.us,
 edumazet@google.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 andrew+netdev@lunn.ch, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Date: Sat,  2 May 2026 10:33:11 -0700
Message-ID: <20260502173312.3849706-1-kuba@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260430094238.987976-6-grzegorz.nitka@intel.com>
References: <20260430094238.987976-6-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1777743194;
 bh=W5YQwY+NaEOTeucgKLvW84thEHUjrp0B5t7n8D+dVpo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mKkRYvVNJSnZJKkxuYjDY/9XCVLKWGLnF5R3qC4CTKWbUbmbTJ5c+yKLnfTjk29Uy
 VoJU/KD1CcvXtQ6Mucf73EiHhzhD+pmZkipqptFzDsN0V07DhMulbR+OftXMaPvQMA
 rCYkGxOrk1J8NfODLKr0LvlVml72lmvjMdzBxUp7AnnWTYYlf8luhG+wkrNHTVSwm2
 fJNfjWzxHGfSli7/OU3VIv6e+4v1jvh9F+ZQ9LUkElCUMM3at7zTm26ga45/7HgHbQ
 lMFpPpH//F3j1v+HvnXNp1CaIAbPTltFtikLxsVDbiRsypGlvMvZrsJrrQCH7dqUze
 +gzxQ9EsQeE2g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=mKkRYvVN
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 5/8] ice: introduce TXC
 DPLL device and TX ref clock pin framework for E825
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
X-Rspamd-Queue-Id: 0F4BA4B3128
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,redhat.com,linux.dev,resnulli.us,google.com,intel.com,gmail.com,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.993];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
---
ice: introduce TXC DPLL device and TX ref clock pin framework for E825

This patch adds a new TXC DPLL device of DPLL_TYPE_GENERIC for E825
devices, together with a TXCLK pin type and two TX reference pins
(EXT_EREF0 and a fwnode-described SYNCE pin). Pin state callbacks and
TXC lock status are placeholders at this stage.

> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 62f75701d652..d839b50187ba 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c

[ ... ]

> @@ -3199,19 +3276,40 @@ static bool ice_dpll_is_fwnode_pin(struct ice_dpll_pin *pin)
>  	return !IS_ERR_OR_NULL(pin->fwnode);
>  }
>  
> +static bool ice_dpll_fwnode_eq(const struct fwnode_handle *a,
> +			       const struct fwnode_handle *b)
> +{
> +	return a && b && a == b;
> +}
> +
>  static void ice_dpll_pin_notify_work(struct work_struct *work)
>  {
>  	struct ice_dpll_pin_work *w = container_of(work,
>  						   struct ice_dpll_pin_work,
>  						   work);
>  	struct ice_dpll_pin *pin, *parent = w->pin;
> +	bool is_tx_synce_parent = false;
>  	struct ice_pf *pf = parent->pf;
> +	bool is_rclk_parent = false;
>  	int ret;
>  
>  	wait_for_completion(&pf->dplls.dpll_init);
>  	if (!test_bit(ICE_FLAG_DPLL, pf->flags))
>  		goto out; /* DPLL initialization failed */
>  
> +	/* Decide which parent we are handling, defensively checking FWNs */

[ ... ]

> +		} else if (is_tx_synce_parent) {
> +			/* Register TX-CLK SYNCE pin directly to TXC DPLL */
> +			pin = &pf->dplls.txclks[E825_EXT_SYNCE_PIN_IDX];
> +			ret = dpll_pin_register(pf->dplls.txc.dpll, pin->pin,
> +						&ice_dpll_txclk_ops, pin);
> +			if (ret) {
> +				dev_err(ice_pf_to_dev(pf),
> +					"TX SYNCE pin register failed: %pe\n",
> +					ERR_PTR(ret));
> +				goto drop_parent_ref;
> +			}
>  		}
>  		break;

[ ... ]

> @@ -3401,6 +3524,19 @@ ice_dpll_deinit_fwnode_pins(struct ice_pf *pf, struct ice_dpll_pin *pins,
>  	destroy_workqueue(pf->dplls.wq);
>  }
>  
> +static int ice_dpll_deinit_txclk_pins(struct ice_pf *pf)
> +{
> +	struct ice_dpll_pin *synce_pin = &pf->dplls.txclks[E825_EXT_SYNCE_PIN_IDX];
> +	struct ice_dpll *dt = &pf->dplls.txc;
> +
> +	ice_dpll_unregister_pins(dt->dpll, pf->dplls.txclks,
> +				 &ice_dpll_txclk_ops,
> +				 ARRAY_SIZE(pf->dplls.txclks));
> +	ice_dpll_release_pins(&pf->dplls.txclks[E825_EXT_EREF_PIN_IDX], 1);
> +	ice_dpll_deinit_fwnode_pin(synce_pin);
> +	return 0;
> +}

Is there a teardown race between this function and a concurrent
ice_dpll_pin_notify_work() that is about to register the SYNCE pin on
the TXC DPLL?

The work's registration path runs:

	parent->pin = fwnode_dpll_pin_find(parent->fwnode,
					   &parent->tracker);
	...
	} else if (is_tx_synce_parent) {
		pin = &pf->dplls.txclks[E825_EXT_SYNCE_PIN_IDX];
		ret = dpll_pin_register(pf->dplls.txc.dpll, pin->pin,
					&ice_dpll_txclk_ops, pin);

while ice_dpll_deinit_txclk_pins() first scans pf->dplls.txclks[] with
ice_dpll_unregister_pins(), which skips any slot where pins[i].pin is
still NULL:

	for (i = 0; i < count; i++) {
		if (pins[i].hidden)
			continue;
		if (IS_ERR_OR_NULL(pins[i].pin))
			continue;
		dpll_pin_unregister(dpll, pins[i].pin, ops, &pins[i]);
	}

Only afterward does it call ice_dpll_deinit_fwnode_pin(synce_pin), which
unregisters the notifier and flushes pf->dplls.wq.

If an external fwnode DPLL provider emits a DPLL_PIN_CREATED for
clk_ref_synce between the two steps, can this sequence occur?

  deinit thread                    notifier work
  -------------                    -------------
  ice_dpll_unregister_pins(txclks)
     sees txclks[1].pin == NULL
     skips SYNCE slot
                                   parent->pin = fwnode_dpll_pin_find()
                                   dpll_pin_register(txc->dpll,
                                       pin->pin, &ops, pin)
                                     -> adds to txc->dpll->pin_refs
                                        and pin->dpll_refs
  ice_dpll_release_pins(EREF0, 1)
  ice_dpll_deinit_fwnode_pin(synce_pin)
     unregister_dpll_notifier()
     flush_workqueue()   /* no work pending */
     dpll_pin_put(synce_pin->pin, ...)

After this, dpll_pin_put() only drops the pin refcount; it does not call
dpll_pin_unregister(). So the TXC dpll's pin_refs still contains the
SYNCE entry when ice_dpll_deinit_dpll(pf, &pf->dplls.txc, false) later
runs dpll_device_unregister() and dpll_device_put(). Does this trip
WARN_ON_ONCE(!xa_empty(&dpll->pin_refs)) in __dpll_device_put() and then
free the dpll_device while pin->dpll_refs still references it, leaving a
use-after-free on any subsequent walk of pin->dpll_refs?

Would it be safer to call ice_dpll_deinit_fwnode_pin(synce_pin) first so
the notifier is torn down and pf->dplls.wq drained before txclks[] is
scanned, or to hold pf->dplls.lock across both the deinit scan and the
work's parent->pin = ...; dpll_pin_register(...) sequence?

A similar structural race exists for the rclk path via
dpll_pin_on_pin_register(), but this patch introduces a new instance on
the direct-on-TXC SYNCE registration. The ordering in
ice_dpll_deinit_txclk_pins() appears unchanged by later patches in the
series, so the same race seems to persist beyond this commit.
