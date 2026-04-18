Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id suO2FQV542lhHQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Apr 2026 14:28:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C137B42116A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Apr 2026 14:28:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2EE4C60F04;
	Sat, 18 Apr 2026 12:28:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mBuCv1SryevU; Sat, 18 Apr 2026 12:28:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3BDB60F38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776515330;
	bh=tTNM3wWu961Uj6RztSTjbggRBgtBsCRotUuNmdklGAU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=az9G3XV7THh3+4gjKDC/F8GKU/TzFje79vtuubx8JMowUlcjktEbphFFVcf7milJD
	 yab8YVvf0rAlMjvdRXpKzEpSZv5fNVGojGnMd8pcPk+57dojMc5ZhUBVmudo1/J8ev
	 eeXPJM5S/adrY9Y7lljntQP8JZeml6EMx+cDdN0QFMhlVK+jvBObtxzqZ/EEIBNBhY
	 UR/f6fnOsYasdAsdznEOJNeQM6nREAjd7tu9vbR+R462JPY4KKdfLZZ7b5i26Jjpw/
	 yyXJXdbNVND/IKSZ0Du2vVwZsObdd0cGTMAZL8SGNkdMyb2ay/9/hB8KJ483F42S4w
	 /mwUayZb2/ZUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3BDB60F38;
	Sat, 18 Apr 2026 12:28:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 847FB347
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 12:28:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 824B660EF9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 12:28:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RqlO5hwAw7za for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Apr 2026 12:28:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E33EA60E85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E33EA60E85
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E33EA60E85
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 12:28:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 27C0943630;
 Sat, 18 Apr 2026 12:28:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8945C19424;
 Sat, 18 Apr 2026 12:28:46 +0000 (UTC)
Date: Sat, 18 Apr 2026 13:28:44 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260418122844.GD280379@horms.kernel.org>
References: <20260415142841.3222399-1-aleksandr.loktionov@intel.com>
 <20260415142841.3222399-4-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260415142841.3222399-4-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776515328;
 bh=rCG4Rh/heETZ9U5/libATa8KrgxSzbUI5XQZax8lu+w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k0NaPH65AwtUCCw3BS6vhQ3tyaMHgvpdM07vZb3PdDWcmO2/ztvJuAI3PNnUHX6Xz
 dqpZFHTBXg6LUSyMedWfb78jN3McatGLnev0Eg805z+aG4h37YJQkuHtpiUK15g75D
 uzpY0tz/HgZar2/YTl3zBqvaG6AXRZFnIWFZNk4V/4tleQ6ICGcwSdp4InkJzW7B6X
 sTdAqbbhUO4boWjJb50Ft75W8h8/P2dS36k1frywkcVOQfv76LTEgcYQNDdaHwUdUy
 8lpuw3EYKNyR+Nn/LtTgU/Y9r1uNio/z9RctEhBJlTnaJlQxHccsvE45SwFPHAUGFG
 MdMXQHgTvV67w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=k0NaPH65
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 3/6] ixgbe: call
 ixgbe_setup_fc() before fc_enable() after NVM update
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,horms.kernel.org:mid,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
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
X-Rspamd-Queue-Id: C137B42116A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 04:28:38PM +0200, Aleksandr Loktionov wrote:
> During an NVM update the PHY reset clears the Technology Ability Field
> (IEEE 802.3 clause 37 register 7.10) back to hardware defaults.  When
> the driver subsequently calls only hw->mac.ops.fc_enable() the SRRCTL
> register is recalculated from stale autonegotiated capability bits,
> which the MDD (Malicious Driver Detect) logic treats as an invalid
> change and halts traffic on the PF.
> 
> Fix by calling ixgbe_setup_fc() immediately before fc_enable() in
> ixgbe_watchdog_update_link() so that flow-control autoneg and the PHY
> registers are re-programmed in the correct order after any reset.
> 
> Skip setup_fc() on backplane links: on 82599 backplane interfaces
> setup_fc() resolves to prot_autoc_write() ->
> ixgbe_reset_pipeline_82599() which toggles IXGBE_AUTOC_AN_RESTART.
> Calling it unconditionally on link-up creates an infinite link-flap
> loop because each AN-restart triggers another link-up event.  Guard
> with a get_media_type() check and skip setup_fc() when the media type
> is ixgbe_media_type_backplane; fc_enable() is still called.
> 
> Also handle the failure path: if setup_fc() returns an error its output
> is invalid and calling fc_enable() on the unchanged hardware state would
> repeat the exact MDD-triggering condition the fix is meant to prevent.
> Skip fc_enable() in that case while still calling
> ixgbe_set_rx_drop_en() which configures the independent RX-drop
> behaviour.
> 
> Fixes: 93c52dd0033b ("ixgbe: Merge watchdog functionality into service task")
> Suggested-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2 -> v3:
>  - Skip setup_fc() for ixgbe_media_type_backplane: unconditional call on
>    82599 backplane links triggers prot_autoc_write() ->
>    ixgbe_reset_pipeline_82599() -> IXGBE_AUTOC_AN_RESTART, causing an
>    infinite link-flap loop (Simon Horman).

Reviewed-by: Simon Horman <horms@kernel.org>

(Unsurprisingly) Sashiko has a number of things to say about this patchset.
But I believe they can all be analysed as part of follow-up work: no need
to block progress of this patchset IMHO.
