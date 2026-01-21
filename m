Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNyUHXgbcGkEVwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 01:19:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 016894E6F7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 01:19:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A898260C00;
	Wed, 21 Jan 2026 00:19:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id soeT-4RqvYWl; Wed, 21 Jan 2026 00:19:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 450AA60C09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768954741;
	bh=utaebAyrEiOoTCURTJd/8LSmmnZCQIXWsclarvY9VL4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5cMN1ee4/e7lYyThOSMcxocj5Bza/A+qcroe5Xm98b6sL9dTZEXWGl4E2KfMI1zW1
	 WWrqr+VDEB/+McV4JfGRqNvXJXUyMnoYDTmSqm4Z7tOmJVPHEWHyOv5zrXYP3lKraK
	 zN2beXlmvu8C5jDACEYLhoeuH4UdYjfc1AFMx5a8+c5j6E5uSOomPGddhQ7onyR/2k
	 WXyaXCYl4UcusGBp3lAnCZGr8PC0RWWSsPXHMojIJ12XgJXyJF4i/d5z3+Elk4STsx
	 8EUuVVXyzCizlc1DxytQ31YKGl215a7W/qMflLVNeLFRtb5897R7okgaME9fWTVHvf
	 9ntaHDB1j9b2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 450AA60C09;
	Wed, 21 Jan 2026 00:19:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 525FA160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 00:18:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 43EB660AC6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 00:18:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QqNkgwakmYBh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 00:18:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D310D60A7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D310D60A7B
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D310D60A7B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 00:18:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 651E444353;
 Wed, 21 Jan 2026 00:18:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC0FBC19424;
 Wed, 21 Jan 2026 00:18:55 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: ivecera@redhat.com
Date: Tue, 20 Jan 2026 16:18:54 -0800
Message-ID: <20260121001854.1905391-1-kuba@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260116184610.147591-13-ivecera@redhat.com>
References: <20260116184610.147591-13-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1768954737;
 bh=0HGVVeTAHwzSzLFOpdIyNRyTdHYdyUOMXgvp4PSevFs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JOs9JzpEXQU9eIhdVdrnpwlJd0Lx0KFCd8ly+f79aar8QjwM2HCTDp7T2RDQX6+ob
 Ef9GBFn5ZqaGH2OJ6HKk2NRVk0s19bpGE0qROw8XqoLaHrl2MbUSfdXv34sVf+DUBb
 iymuRI1xM9TuNJtGFlFnZ19X2vWr4c9tNa4QGmfzht+9hEMLeD0ymHhGU6jsqT13Mh
 5vSV+8CWuQp5z++nE3yV/gFB8Xkafkx+HVPMcvclMjBddewvQqcLVsOIlQFdW1EKkz
 xb2OLPuFdNV0gCfKRAW6XMmlONmiLocH+s3wChGXAFZTlkeKRDBO4kN2xoU7xIF4hH
 Au9H717kdzrig==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JOs9JzpE
Subject: Re: [Intel-wired-lan] [net-next, v2,
 12/12] ice: dpll: Support E825-C SyncE and dynamic pin discovery
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
Cc: edumazet@google.com, anthony.l.nguyen@intel.com, robh@kernel.org,
 leon@kernel.org, andrew+netdev@lunn.ch, linux-rdma@vger.kernel.org,
 przemyslaw.kitszel@intel.com, arkadiusz.kubalewski@intel.com,
 aleksandr.loktionov@intel.com, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, pabeni@redhat.com,
 devicetree@vger.kernel.org, conor+dt@kernel.org, jiri@resnulli.us,
 richardcochran@gmail.com, saravanak@kernel.org, Prathosh.Satish@microchip.com,
 vadim.fedorenko@linux.dev, netdev@vger.kernel.org, mbloch@nvidia.com,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, aleksander.lobakin@intel.com,
 jonathan.lemon@gmail.com, krzk+dt@kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:robh@kernel.org,m:leon@kernel.org,m:andrew+netdev@lunn.ch,m:linux-rdma@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:jiri@resnulli.us,m:richardcochran@gmail.com,m:saravanak@kernel.org,m:Prathosh.Satish@microchip.com,m:vadim.fedorenko@linux.dev,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:aleksander.lobakin@intel.com,m:jonathan.lemon@gmail.com,m:krzk+dt@kernel.org,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,m:conor@kernel.org,m:jonathanlemon@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[google.com,intel.com,kernel.org,lunn.ch,vger.kernel.org,lists.osuosl.org,redhat.com,resnulli.us,gmail.com,microchip.com,linux.dev,nvidia.com,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 016894E6F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
ice: dpll: Support E825-C SyncE and dynamic pin discovery

This patch adds DPLL support for the Intel E825-C Ethernet controller.
It implements dynamic pin discovery via firmware nodes, asynchronous
registration using a DPLL notifier chain, and hardware configuration
for CGU registers.

> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 4eca62688d83..9d82748810a3 100644

[ ... ]

> +static void ice_dpll_pin_notify_work(struct work_struct *work)
> +{
> +	struct ice_dpll_pin_work *w = container_of(work,
> +						   struct ice_dpll_pin_work,
> +						   work);
> +	struct ice_dpll_pin *pin, *parent = w->pin;
> +	struct ice_pf *pf = parent->pf;
> +	int ret;
> +
> +	switch (w->action) {
> +	case DPLL_PIN_CREATED:
> +		if (!IS_ERR_OR_NULL(parent->pin)) {
> +			/* We have already our pin registered */
> +			goto out;
> +		}
> +
> +		/* Grab reference on fwnode pin */
> +		parent->pin = fwnode_dpll_pin_find(parent->fwnode,
> +						   &parent->tracker);
> +		if (IS_ERR_OR_NULL(parent->pin)) {
> +			dev_err(ice_pf_to_dev(pf),
> +				"Cannot get fwnode pin reference\n");
> +			goto out;
> +		}
> +
> +		/* Register rclk pin */
> +		pin = &pf->dplls.rclk;
> +		ret = dpll_pin_on_pin_register(parent->pin, pin->pin,
> +					       &ice_dpll_rclk_ops, pin);

Can pin->pin (pf->dplls.rclk.pin) be NULL here? Looking at the init
order in ice_dpll_init_pins_e825():

    ret = ice_dpll_init_fwnode_pins(pf, pf->dplls.inputs, 0);
    ...
    ret = ice_dpll_init_rclk_pin(pf, DPLL_PIN_IDX_UNSPEC, ...);

The fwnode pins are initialized first, which registers notifiers. If a
DPLL_PIN_CREATED notification fires before ice_dpll_init_rclk_pin()
completes, this work handler will run while pf->dplls.rclk.pin is still
NULL (the structure is zeroed by kcalloc). Passing NULL to
dpll_pin_on_pin_register() causes a NULL dereference in
dpll_xa_ref_pin_add() when it accesses pin->parent_refs.

> +		if (ret) {
> +			dev_err(ice_pf_to_dev(pf),
> +				"Failed to register pin: %pe\n", ERR_PTR(ret));
> +			dpll_pin_put(parent->pin, &parent->tracker);
> +			parent->pin = NULL;
> +			goto out;
> +		}
> +		break;

[ ... ]

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 4c8d20f2d2c0..0eb8a9e29a52 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1341,6 +1341,35 @@ void ice_ptp_link_change(struct ice_pf *pf, bool linkup)
>  	if (pf->hw.reset_ongoing)
>  		return;
>
> +	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825) {
> +		int pin, err;
> +
> +		mutex_lock(&pf->dplls.lock);

Should this check ICE_FLAG_DPLL before using pf->dplls.lock? Looking at
ice_dpll_init_e825(), if initialization fails the mutex is destroyed:

    err = ice_dpll_init_info_e825c(pf);
    if (err)
        goto err_exit;
    ...
    err_exit:
        mutex_destroy(&d->lock);

But ICE_FLAG_DPLL is only set on success. If DPLL init fails and a link
change event occurs, this code will use a destroyed mutex.

> +		for (pin = 0; pin < ICE_SYNCE_CLK_NUM; pin++) {
> +			enum ice_synce_clk clk_pin;
> +			bool active;
> +			u8 port_num;
> +
> +			port_num = ptp_port->port_num;
> +			clk_pin = (enum ice_synce_clk)pin;
> +			err = ice_tspll_bypass_mux_active_e825c(hw,
> +								port_num,
> +								&active,
> +								clk_pin);
> +			if (WARN_ON_ONCE(err)) {
> +				mutex_unlock(&pf->dplls.lock);
> +				return;
> +			}
> +
> +			err = ice_tspll_cfg_synce_ethdiv_e825c(hw, clk_pin);
> +			if (active && WARN_ON_ONCE(err)) {
> +				mutex_unlock(&pf->dplls.lock);
> +				return;
> +			}
> +		}
> +		mutex_unlock(&pf->dplls.lock);
> +	}
