Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KM/WHa1M5mkgugEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 17:56:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9AC42EBC1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 17:56:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77C7F82923;
	Mon, 20 Apr 2026 15:56:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vRIACwet_l7Y; Mon, 20 Apr 2026 15:56:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C10FC82C21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776700586;
	bh=QtC6e8MpcAXtuF9Y3/YJXdsJokgg6hm3QJ4Wa2lKWIc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eNY7gZ6kwPQTxzdUJOB4Yvr+ZlnEEaw3H6SzfD+g89GM4wbdy/9jg3UNhtfdeL2aa
	 Y3C6arHPqDgAtoi8O9KBEvE6MlPqv97LQkYwdwpi4wg7Zn93QEdPLGFJvstk/lgREf
	 0UWSOLcNzA7p6ns/Ua6mzAFsqA+Qd/3zi/uhjAlibD+pleuw6hR0SgAcYvzWBybyd6
	 MWNquSqgf6QHGr9XW287s3TIyaadIvCT5S0RKmecA74I43pgjcsviUndxjTKdI94tP
	 vOhn8t21zN4UudJKCfB8ASbN9t2DstjlmY7oQdsfLH8CzIRsn+wKrO3t3Kb6t2EVIW
	 VZEc6zKe5042w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C10FC82C21;
	Mon, 20 Apr 2026 15:56:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 74421355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 15:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 661C96105F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 15:56:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1dxKefuiJRzB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 15:56:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9887E60ABB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9887E60ABB
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9887E60ABB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 15:56:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 952E260018;
 Mon, 20 Apr 2026 15:56:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E37D6C19425;
 Mon, 20 Apr 2026 15:56:21 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, jan.glaza@intel.com
Date: Mon, 20 Apr 2026 16:56:04 +0100
Message-ID: <20260420155604.576318-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260417062954.1241900-4-aleksandr.loktionov@intel.com>
References: <20260417062954.1241900-4-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776700583;
 bh=9Qgqeri4ieAdo6+5MWuNmYIp4MCTl3DLSaPutxRqWfM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ksmEw8KYLFBEBK2tCdF7SXGEKmpxM7ZICe3lhvRKln9sXBeFa2xWxzLFjbC5vrc13
 /WbPEX4nslhLuPVukFOPgxQiWh5raYTvk3f+21U1GLBrIyhe+B05EMYDrgo1N3hrlQ
 JkYk+tUCAhA29Y6fn8UCJiw6xLCidkOv6vXTr3p9XGs1J6vmnh2AjGXW8LEiyFjZaT
 uHuqXIP4CqZtieutBJ7lO/MyogE32IXEa7NFgXQ+L4jZmJp5bqONbZdibB471R6oGv
 k1fOEYGPzteio9nK9ycuEf7mAZiYKqr5YhQWPlrUY7n+YBqvp6ELPuvez97WFtyOfI
 j8qUoiy9mbmMA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ksmEw8KY
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/4] ice: support RDMA on
 4+-port E830 devices
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jan.glaza@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-0.742];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,sashiko.dev:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DE9AC42EBC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ice: support RDMA on 4+-port E830 devices

This patch narrows the RDMA capability check to keep RDMA enabled for E830
devices configured with more than 4 ports, as they do not share the
limitations of E810 and E82X devices.

> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2509,7 +2509,7 @@ ice_recalc_port_limited_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps)
>  		caps->maxtc = 4;
>  		ice_debug(hw, ICE_DBG_INIT, "reducing maxtc to %d (based on #ports)\n",
>  			  caps->maxtc);
> -		if (caps->rdma) {
> +		if (caps->rdma && hw->mac_type != ICE_MAC_E830) {
>  			ice_debug(hw, ICE_DBG_INIT, "forcing RDMA off\n");
>  			caps->rdma = 0;
>  		}

Does this leave the diagnostic message further down out of sync with the
new condition?

If the device is an E830 with more than 4 ports, RDMA remains enabled, but
because the dev_info() call just below this block is evaluated for all
devices with more than 4 ports:

ice_recalc_port_limited_caps() {
	if (hw->dev_caps.num_funcs > 4) {
		...
		if (caps->rdma && hw->mac_type != ICE_MAC_E830) {
			ice_debug(hw, ICE_DBG_INIT, "forcing RDMA off\n");
			caps->rdma = 0;
		}

		/* print message only when processing device capabilities
		 * during initialization.
		 */
		if (caps == &hw->dev_caps.common_cap)
			dev_info(ice_hw_to_dev(hw), "RDMA functionality is not available with the current device configuration.\n");
	}
}

Could this cause confusion by logging a warning about RDMA being disabled
when it is actually active?
