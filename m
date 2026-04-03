Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLbkBUq+z2nd0AYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:19:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBD33945F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:19:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0784660909;
	Fri,  3 Apr 2026 13:19:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AdZIMSsH_TJX; Fri,  3 Apr 2026 13:19:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7487B608FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775222343;
	bh=te7LE8wDADStaGGb4qjEVnc6wYWw+UkBvDSQtGw+Kg4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cUIGPNS+bowFnj1WIOUrye6AEDsXR2lNvONQTrufgsA2KPbJhxl9GvT2/PQuOxr7C
	 b/meoIBWjRqRQlvVsyqIDruohLM5RFFgD12BJFxtWvyIojkI6vWpK9CZJczn5U6epf
	 pAnBdfBBV2Hy5gYro/PKKgGj+IUYLCdj3OohX67HoXpHnOyiUE2Ws8mhu9nYC6msGi
	 FxRN3Rp6Qc5Z49/sUMu1fhUEMENx+/wG7UUceqi603cV8/H8XdLIv/50+PqeB9N6IM
	 379OtorXeMO4ctWlWojRfIPwnXvDFCcEmmuT1Py2VnUqdjsh1h+1IrUAQzw/WmZYCe
	 OtRsBALq0j3Zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7487B608FA;
	Fri,  3 Apr 2026 13:19:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 47CA21A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 26D54402DD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:19:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CfDf79rgwWdJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 13:19:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 785054003D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 785054003D
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 785054003D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:19:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A42A8409B4;
 Fri,  3 Apr 2026 13:19:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87C51C4CEF7;
 Fri,  3 Apr 2026 13:18:59 +0000 (UTC)
Date: Fri, 3 Apr 2026 14:18:57 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260403131857.GB113102@horms.kernel.org>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
 <20260327073046.134085-11-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260327073046.134085-11-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775222340;
 bh=g1nTip99Zbu1z+sH7Y5JE6BpjHLM/Tk8483oMhcrWfQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q11as0GMEFuBHP7c3Dwe7+zIKVYzMkaVTZFyDG+S69gQdGy5h1R56b16cJhMQoqJG
 jaM7BXrymI93BiW1rJ+apAo7EaNXEpAq9yUR1FXpAOEZUAlec1NXmk9nN3aptwe0pi
 TzqRlg/VaV0V8/w11pWVkpeAUf0RVrIvJ8xSeYS+8qKS3YIjiu/NFaCtDDeTV58JDF
 E4d63yTaLQsLlcB31PpN32w5E7Gs8jM3Eq85xDYmeR88V1W4uS9y1+Y9K9kFivtrTa
 LuDP/jz6LGyGzW3A3X+b4V0lUMeXGcwATIyhEboOForoPL3XGAFYxI9qFq80JUL4ic
 5dCogCWmFlg9Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=q11as0GM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: fix ITR value
 overflow in adaptive interrupt throttling
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,intel.com:email,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7FBD33945F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 08:30:45AM +0100, Aleksandr Loktionov wrote:
> ixgbe_update_itr() packs a mode flag (IXGBE_ITR_ADAPTIVE_LATENCY, bit 7)
> and a usecs delay (bits [6:0]) into an unsigned int, then stores it in
> ring_container->itr which is u8.  Values above 0xFF wrap, corrupting both
> the delay and the mode-flag on the next readback.
> 
> Separate the mode bits from the usecs sub-field; clamp only the latter to
> [0, IXGBE_ITR_ADAPTIVE_LATENCY - 1] via min_t(unsigned int, ...) so
> overflow cannot bleed into bit 7.  Add a WARN_ONCE() when the raw usecs
> value exceeds U8_MAX so out-of-range ITR computations are visible in
> dmesg during development and testing.
> 
> Fixes: b4ded8327fea ("ixgbe: Update adaptive ITR algorithm")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Somehow - perhaps because there is no m/n notation present in the [] in the
subject - Patchwork has treated each patch in this series as it's own
patch-set.

And in the case of this patch, it didn't apply - I assume
because in order to do so an earlier patch in the series
needs to be present.

So CI didn't run on this patch :(
