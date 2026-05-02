Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIdFK1419mk5TAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 02 May 2026 19:33:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 284764B3121
	for <lists+intel-wired-lan@lfdr.de>; Sat, 02 May 2026 19:33:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBAF0412DC;
	Sat,  2 May 2026 17:33:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KjJ6d6rgVLFw; Sat,  2 May 2026 17:33:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CBD9412D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777743194;
	bh=YAJqPpXt8nkWDJqJOjvzOWX0wbVRQidgBM4mnOhlqfU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bEPEnatjmvUFfNlf7IiwvKloEv9+JC8Q6MTJWpKlYnBIAsJelezdwS++5S6r9/rzS
	 jdUS0MHPYS2cRj9HJV0Q9DwgJjjXUxOib78H3+jNmmnKEdOuvpX43Xaq+rpxprQj+P
	 sr4469KSfwf7uiD4FcfUZeBdAVvjd1qm27a2LegguUwIp9+e2TxA80GQUSo6PIwMY4
	 YMSij/2db60Fs3vSjBiWv0sKk3Bb10lXrwk+Jgxr79ZWzSIuc+FwsdEa57ZWovmWq5
	 lx2UTIi+JV0aWsXcgF1LkG8EM3vJk/P64nWn2TqugLHn+GuWjScsYFtI5VkIjt/2k4
	 rvkLUnIZvOQqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CBD9412D9;
	Sat,  2 May 2026 17:33:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DE2A190
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:33:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6361483DC3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:33:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fxPRs-LuS5My for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 May 2026 17:33:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5C0E483C1F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C0E483C1F
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C0E483C1F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:33:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id DE569441CF;
 Sat,  2 May 2026 17:33:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC311C19425;
 Sat,  2 May 2026 17:33:10 +0000 (UTC)
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
Date: Sat,  2 May 2026 10:33:09 -0700
Message-ID: <20260502173309.3849677-1-kuba@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260430094238.987976-5-grzegorz.nitka@intel.com>
References: <20260430094238.987976-5-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1777743191;
 bh=UHjulvWLpJvBJU8CiE9lHSQ7XsvcJ0jHyHDPECWHrsM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rc4Z3YjMuUC4hec2lJO5HlqXf0fS4qNkli1cWXaUyaTRwGhdLX9E0JSCeMHzcvLid
 8dnI/RnnzFgTU8G2BJOJElpSpw7gfiwPVzAFpbA9aIwX7owP3YS9R0bImsp9/y17w8
 IFyi0ddJR9OE9tkI9EJ45t8Kfd/jufOgDGY1UnUuhm/LfeQDgSYGdNtKQZ60Scqd/U
 ATl347fRQCkgdR+HeZr+FLlUBhVXiS7GmtZEXOTB3JrK4QwgqI1c1xMFL/Ijc8BK6x
 Y8YkEedzoN5/YErpQ52k2o62A6Z20T0G5ercvnP7bnYYXqMr8jl6QF7aKb5lzQCzx7
 IDteOKdp7LE3g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=rc4Z3YjM
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 4/8] dpll: zl3073x: allow
 SyncE_Ref pin state change
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
X-Rspamd-Queue-Id: 284764B3121
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
---
dpll: zl3073x: allow SyncE_Ref pin state change

This patch advertises DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE on the
output-direction branch of zl3073x_pin_props_get() with the stated intent
of allowing dynamic enable/disable of the SyncE_Ref pin.

> diff --git a/drivers/dpll/zl3073x/prop.c b/drivers/dpll/zl3073x/prop.c
> index ac9d41d0f978..acd7061a741a 100644
> --- a/drivers/dpll/zl3073x/prop.c
> +++ b/drivers/dpll/zl3073x/prop.c
> @@ -215,6 +215,15 @@ struct zl3073x_pin_props *zl3073x_pin_props_get(struct zl3073x_dev *zldev,
>
>  		props->dpll_props.type = DPLL_PIN_TYPE_GNSS;
>
> +	       /*
> +		* The SyncE_Ref pin supports enabling/disabling dynamically.
> +		* Some platforms may choose to expose this through firmware
> +		* configuration later. For now, advertise this capability
> +		* universally since the hardware allows state toggling.
> +		*/
> +		props->dpll_props.capabilities |=
> +			DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;

Is this capability actually supported by the output pin ops?

Looking at drivers/dpll/zl3073x/dpll.c, the output pin ops vector does
not install a .state_on_dpll_set callback:

    static const struct dpll_pin_ops zl3073x_dpll_output_pin_ops = {
            .direction_get       = zl3073x_dpll_pin_direction_get,
            .esync_get           = zl3073x_dpll_output_pin_esync_get,
            .esync_set           = zl3073x_dpll_output_pin_esync_set,
            .frequency_get       = zl3073x_dpll_output_pin_frequency_get,
            .frequency_set       = zl3073x_dpll_output_pin_frequency_set,
            .phase_adjust_get    = zl3073x_dpll_output_pin_phase_adjust_get,
            .phase_adjust_set    = zl3073x_dpll_output_pin_phase_adjust_set,
            .state_on_dpll_get   = zl3073x_dpll_output_pin_state_on_dpll_get,
    };

and the corresponding getter hardcodes the state to CONNECTED with no
hardware read:

    zl3073x_dpll_output_pin_state_on_dpll_get(...)
    {
            /* If the output pin is registered then it is always connected */
            *state = DPLL_PIN_STATE_CONNECTED;
            return 0;
    }

On the netlink side, dpll_pin_state_set() first checks the capability
bit and then requires the setter to exist:

    if (!(DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE & pin->prop.capabilities)) {
            NL_SET_ERR_MSG(extack, "state changing is not allowed");
            return -EOPNOTSUPP;
    }
    ...
    if (!ops->state_on_dpll_set)
            return -EOPNOTSUPP;

With this patch, the capability check now passes for every output pin,
but the operation then fails with -EOPNOTSUPP because no setter is
provided, and the reported state will remain CONNECTED regardless of
what userspace requested.

Should this series also add a .state_on_dpll_set callback (and a
matching hardware path, for example via zl3073x_out_state_set or the
output-enable mailbox) before advertising the capability, so the commit
subject "allow SyncE_Ref pin state change" can actually be honored?

Separately, should the scope of this change match the commit message?

The subject and the first sentence of the new comment describe a change
scoped to the SyncE_Ref pin:

    * The SyncE_Ref pin supports enabling/disabling dynamically.

but the assignment lives in the generic else-branch of
zl3073x_pin_props_get() that runs for every output pin (SMA outputs,
1PPS outputs, internal-oscillator outputs, MUX outputs, etc.), and it
executes before the fwnode "connection-type" parsing below can classify
the pin as ext/gnss/int/synce/mux. The last sentence of the same
comment acknowledges this:

    * universally since the hardware allows state toggling.

Would it be clearer to either gate the flag on the SyncE_Ref pin
specifically (e.g., via firmware-node property, as the comment hints
at), or to update the subject and leading comment sentence to reflect
that the capability is being advertised for all output pins?

> +	       /*
> +		* The SyncE_Ref pin supports enabling/disabling dynamically.
> +		* Some platforms may choose to expose this through firmware
> +		* configuration later. For now, advertise this capability
> +		* universally since the hardware allows state toggling.
> +		*/

This isn't a bug, but the indentation of the comment block is
inconsistent. The opening "/*" is prefixed with one tab followed by
seven spaces, while the " *" continuation lines and the closing " */"
are prefixed with two tabs, so the opening "/" does not align with the
continuation asterisks. Adjacent comment blocks in the same function
(for example "The output pin phase adjustment granularity...") use pure
tab alignment.

> +		props->dpll_props.capabilities |=
> +			DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;

This isn't a bug, but props was just obtained from kzalloc_obj() and
nothing in this else-branch writes to capabilities before this point.
The symmetric input branch immediately above uses plain "=":

    props->dpll_props.capabilities =
            DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE |
            DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;

Would "=" be more consistent here, since there are no pre-existing bits
to merge with?
-- 
pw-bot: cr
