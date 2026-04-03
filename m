Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEsuOHayz2lczgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 14:28:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C65A9393FFF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 14:28:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2069608DA;
	Fri,  3 Apr 2026 12:28:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xEO28ofAZVZD; Fri,  3 Apr 2026 12:28:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D59E608F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775219314;
	bh=ZH8ZytRXdyFwyPojfULAQSMUQCklFBLMAatkOZCirnA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ak0N85EJtlGTtgSOMDxCV4CJWlh1YhZiaeolFv+WDAzAT4tglsM0IDD8vjcR7oCbg
	 SAVIyQ3cAMuvmVFXlS4xz3GfXt+vES06FKpmIS8fAEb5qy7nk8/put5hJrV7oFPwCN
	 F4oLl+net3MqxkUcV8l+xwLKzIktaMpgGVP5dVzJ1hSYqCE7As7gbzK9EUgyFYoc9V
	 X6MfPNSsm8sOar8I2sZNpNsYwLMvCIzSYmqnyU7RQif+9SXECAdWwoZXkbTVt7uBEX
	 0L8KGs50AZUGwD5qLdm056Y2EP00sNcYPT3IQ4qwoMGsj5g1DOvLymYe6Nu8V2Pwec
	 izNmJTOumEg2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D59E608F5;
	Fri,  3 Apr 2026 12:28:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E90BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C552840DAB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Poydjxfe5oUO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 12:28:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2714C40DA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2714C40DA6
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2714C40DA6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:28:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 2BE2D60008;
 Fri,  3 Apr 2026 12:28:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB730C4CEF7;
 Fri,  3 Apr 2026 12:28:29 +0000 (UTC)
Date: Fri, 3 Apr 2026 13:28:27 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@intel.com>
Message-ID: <20260403122827.GA85281@horms.kernel.org>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-5-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260327072332.130320-5-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775219310;
 bh=F8iAS6pGjjZT/iyWHDVcTqPA4wqEVTbdVw3IDnLF1gY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sbmE9LQfsSQmlOrk1+mqZopEkGj6UWlRErrTj/zoKIqPbXRnvOVtJoPvk889CM3dW
 K/I40NZC5kkc2UmIF9hR6uKWDoL2I36noxC86NJnHEPwSMuBOBREPiO6b663fIvvy5
 r8HyljcB/XAr05GemW855eifOOYWl9z27l/UiHAIzXncPBXJLo2MTDtQWS9WcdBBUK
 97Z2j1ppg18/H9Te41Kq49R+d4TfhHoaW8AA5e7B97phIsTImSRadc40I65fsXUKQE
 FcGs2rLBvhDfla91t++y1hfFo1qedsBPU8Sfe6VbRO18aKGI86IdpH2Iest4rJAuiN
 HE2pocYfAMkkw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sbmE9LQf
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix setting promisc mode
 while adding VID filter
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:marcin.szycik@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C65A9393FFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 08:23:28AM +0100, Aleksandr Loktionov wrote:
> From: Marcin Szycik <marcin.szycik@intel.com>
> 
> There are at least two paths through which VSI promiscuous mode can be
> independently configured via ice_fltr_set_vsi_promisc():
> - ice_vlan_rx_add_vid() (netdev op)
> - ice_service_task() -> ... -> ice_set_promisc()
> 
> Both paths may try to program promiscuous mode concurrently. One such
> scenario is:
> 
> 1. Add ice netdev to bond
> 2. Add the bond netdev to bridge
> 3. ice netdev enters allmulticast mode (IFF_ALLMULTI)
> 4. Service task programs promisc mode filter
> 5. Bridge -> bond calls ice_vlan_rx_add_vid()
> 
> Crucially, ice_vlan_rx_add_vid() fails if ice_fltr_set_vsi_promisc()
> returns any error, including -EEXIST. This causes VLAN filtering setup
> to fail on the bond interface. ice_set_promisc() already handles -EEXIST
> correctly.
> 
> Fix by adding the same -EEXIST check to ice_vlan_rx_add_vid(): if the
> promisc filter is already programmed, continue without returning error.
> 
> Fixes: 1273f89578f2 ("ice: Fix broken IFF_ALLMULTI handling")
> Cc: stable@vger.kernel.org
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

