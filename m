Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFt3KSw2vGl3uwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:45:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32ED52D0369
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:45:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8FA341934;
	Thu, 19 Mar 2026 17:45:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eB0HakkUehNh; Thu, 19 Mar 2026 17:45:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36BD141935
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773942314;
	bh=jcyjoy7P/IC49C66iLPkXEnlXcTxq1RgRmHR52vk+TQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eusJCNVLdeLB0jX5HNnRWkTzuW8DM/idzwl3DA1OmppLbXTucG1sgS2h09ThSfYVZ
	 QmuiGkY6ebdBC/UcNODrZDoBXEw/IdMAcLByRFPeu64Mk2B8KWWjqJOVGn7u0BQeA8
	 xN2wEP/8WznEvWFNrPQi5ffIVosdT0qAj30vgCDELnMs55mMYPeudZ4zTLg3ZQ4Sur
	 8hN2BmJOrIHA+aWy7ctp0GlK2Cc3LL/IGNmFkNd78KwBvusYN5yPdbb/9rDJtiFZNe
	 TvPTiJyj+SnphDRA1mMYiXTOKr3RtjkD1JGlgtYlHZicTVg07SLViS0c/3UDGekdkN
	 RcHbO8NLt9XGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36BD141935;
	Thu, 19 Mar 2026 17:45:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D8A2C265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7CCC41932
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:45:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2dwJTRoyZGcs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 17:45:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 02FD541933
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02FD541933
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 02FD541933
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:45:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id F14F260097;
 Thu, 19 Mar 2026 17:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A374C19424;
 Thu, 19 Mar 2026 17:45:06 +0000 (UTC)
Date: Thu, 19 Mar 2026 17:45:03 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <20260319174503.GO1753385@horms.kernel.org>
References: <20260318090654.611349-1-grzegorz.nitka@intel.com>
 <20260318090654.611349-2-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318090654.611349-2-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773942309;
 bh=6CGzvuEPGSvPA+dPivezYFQso4zqZF1AmoyPvpSIKUo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aLzsGnyWnfIxc0yii4POgMlCmyEmqsjjz5FNpgiHFKrD5PottLn2hCw7gRilC/wAg
 J3nA5q4HyKWtYIdGsSronhYen6j8GdjtcFIN4Sh6bsNqQ4UGiRFJba0KwsYK/ybB/R
 laluDYr7Y97QGZecW8uNAzneNoHcUGxOeWstN/5SHi9CrBnxz0QNXV3wr6EDGGNTbm
 WV23wAu1L5jKlqDm7JFl30wOWFqD15cJSL7DyqHWuJmIH72UwsxH6yRwnIlZvlJaI8
 IHb4g4Jp9l4C+4GsUPAkkZx3bBeiTEly3M5eNbgjNdZIE73zMWAohND94+GNYQrsOA
 jhCoM5mcYibNA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=aLzsGnyW
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/8] dpll: add new DPLL type
 for transmit clock (TXC) usage
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
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 Prathosh.Satish@microchip.com, andrew+netdev@lunn.ch,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
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
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,intel.com,vger.kernel.org,gmail.com,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,horms.kernel.org:mid,intel.com:email,osuosl.org:dkim];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 32ED52D0369
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 10:06:47AM +0100, Grzegorz Nitka wrote:
> Extend the DPLL subsystem with a new DPLL type, DPLL_TYPE_TXC,
> representing devices that drive a transmit reference clock. Certain
> PHYs, MACs and SerDes blocks use a dedicated TX reference clock for
> link operation, and this clock domain is distinct from PPS- and
> EEC-driven synchronization sources. Defining a dedicated type allows
> user space and drivers to correctly classify and configure DPLLs
> intended for TX clock generation.
> 
> The corresponding netlink specification is updated to expose "txc"
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  Documentation/netlink/specs/dpll.yaml | 3 +++
>  include/uapi/linux/dpll.h             | 2 ++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
> index 3dd48a32f783..2a2ee37a1fc0 100644
> --- a/Documentation/netlink/specs/dpll.yaml
> +++ b/Documentation/netlink/specs/dpll.yaml
> @@ -138,6 +138,9 @@ definitions:
>        -
>          name: eec
>          doc: dpll drives the Ethernet Equipment Clock
> +      -
> +        name: txc
> +        doc: dpll drives Tx reference clock
>      render-max: true
>    -
>      type: enum
> diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
> index de0005f28e5c..a277d08ac264 100644
> --- a/include/uapi/linux/dpll.h
> +++ b/include/uapi/linux/dpll.h
> @@ -109,10 +109,12 @@ enum dpll_clock_quality_level {
>   * enum dpll_type - type of dpll, valid values for DPLL_A_TYPE attribute
>   * @DPLL_TYPE_PPS: dpll produces Pulse-Per-Second signal
>   * @DPLL_TYPE_EEC: dpll drives the Ethernet Equipment Clock
> + * @DPLL_TYPE_TXC: dpll drives Tx reference clock signal
>   */
>  enum dpll_type {
>  	DPLL_TYPE_PPS = 1,
>  	DPLL_TYPE_EEC,
> +	DPLL_TYPE_TXC,
>  
>  	/* private: */
>  	__DPLL_TYPE_MAX,

I think that the spec and source code changes are inconsistent in this
patch.

With it applied I see:

./tools/net/ynl/ynl-regen.sh -f && git diff
diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
index a2b22d492114..4182bdbb6dbb 100644
--- a/drivers/dpll/dpll_nl.c
+++ b/drivers/dpll/dpll_nl.c
@@ -34,7 +34,7 @@ const struct nla_policy dpll_reference_sync_nl_policy[DPLL_A_PIN_STATE + 1] = {
 static const struct nla_policy dpll_device_id_get_nl_policy[DPLL_A_TYPE + 1] = {
        [DPLL_A_MODULE_NAME] = { .type = NLA_NUL_STRING, },
        [DPLL_A_CLOCK_ID] = { .type = NLA_U64, },
-       [DPLL_A_TYPE] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
+       [DPLL_A_TYPE] = NLA_POLICY_RANGE(NLA_U32, 1, 3),
 };

 /* DPLL_CMD_DEVICE_GET - do */
diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
index a277d08ac264..8f6db5d5bf0c 100644
--- a/include/uapi/linux/dpll.h
+++ b/include/uapi/linux/dpll.h
@@ -109,7 +109,7 @@ enum dpll_clock_quality_level {
  * enum dpll_type - type of dpll, valid values for DPLL_A_TYPE attribute
  * @DPLL_TYPE_PPS: dpll produces Pulse-Per-Second signal
  * @DPLL_TYPE_EEC: dpll drives the Ethernet Equipment Clock
- * @DPLL_TYPE_TXC: dpll drives Tx reference clock signal
+ * @DPLL_TYPE_TXC: dpll drives Tx reference clock
  */
 enum dpll_type {
        DPLL_TYPE_PPS = 1,

-- 
pw-bot: changes-requested
