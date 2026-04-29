Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ON63Dj/e8Wn3kwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 12:32:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9690492FB1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 12:32:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72AC56154B;
	Wed, 29 Apr 2026 10:32:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id urUxxlgspLa7; Wed, 29 Apr 2026 10:32:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7A156154C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777458744;
	bh=vxxeK/frimSyziqidYBFVM7MXycT03WdfpbEA8GIFWQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6tMXSoSZeXfra4aYS0FgBP6SYC4b/zIg7M7nAOvluuGhIQtVVjDsVRyXWly64MYqD
	 gn629Rak0khq6aNzUjSSoOAw6a3Dqr196qagNry8TGEZZH63/B5JFZc2DDRRxcmpAu
	 wGt3iwAjZu/dUJgaZi13Hvb3tVEWn6Isyyh/Sno5ZCLR69QRdET/KvwLPqHt3p3bFu
	 jtNX2i3nCk+mHB2vGTnFSw4r/Z6aKmcPTsce2RrdjGrq3GhzsTwgKit6MR15kpAAFA
	 ORtV8yF11+LDxHGJCB0Yq7roK74YjvduLu1E0l6w+T8sJQsdEf7PbxIHjNtQtHrugP
	 KTiBKY+w4udAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7A156154C;
	Wed, 29 Apr 2026 10:32:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2EBEA231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 10:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 148934230C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 10:32:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JITDBv2C0uyr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 10:32:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4B80642301
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B80642301
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4B80642301
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 10:32:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 9D3E260018;
 Wed, 29 Apr 2026 10:32:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0034AC19425;
 Wed, 29 Apr 2026 10:32:17 +0000 (UTC)
Date: Wed, 29 Apr 2026 11:32:15 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <20260429103215.GY900403@horms.kernel.org>
References: <20260427151827.43342-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260427151827.43342-1-mschmidt@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1777458740;
 bh=duAsDJqmbqNJ9PlYMKXHs5Ry2vjSnimCTEf03ja5FRg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BDSdjthwmycI1JuMkY+YoDIMxrV1zeGppZFXcAlagvK0BOvUCw0EICd1Da+IjHAqL
 Nl/cHxSqotsKTTxJZnMV5zmmfot+IhZebTQ2sZqZyVmgzwTnCBs7HiknXhpIJI6M6J
 O14UMbwWo68lWQHPX24mFeirz8BK84v6OwGSU1IbHzNmiZGH/WH+cagv0FxNZqqY5k
 Rr9MKZwVGMF89IjlZPsjFmV7I/JLRAmqLteA2SpIh/vtDMJDwHhCtw1UMaPvac1XKY
 miLFtDFJHCPTjxdY/u3kh1A76JTASCGaYN1kzv0CUD2cwTrZ4qV6ZaSUs5eZJNDsWM
 3j3wBk9RUb/BA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=BDSdjthw
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix stats array overflow
 when VF requests more queues
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: D9690492FB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,sashiko.dev:url,horms.kernel.org:mid,atlassian.net:url];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:mschmidt@redhat.com,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
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
	NEURAL_HAM(-0.00)[-0.985];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

On Mon, Apr 27, 2026 at 05:18:26PM +0200, Michal Schmidt wrote:
> When a VF increases its queue count via VIRTCHNL_OP_REQUEST_QUEUES,
> ice_vc_request_qs_msg() sets vf->num_req_qs and triggers a VF reset.
> The reset calls ice_vf_reconfig_vsi(), which does ice_vsi_decfg()
> followed by ice_vsi_cfg(). ice_vsi_decfg() does not free the per-ring
> stats arrays. Inside ice_vsi_cfg_def(), ice_vsi_set_num_qs() updates
> alloc_txq/alloc_rxq to the new larger value, but
> ice_vsi_alloc_stat_arrays() returns early because the stats already
> exist. ice_vsi_alloc_ring_stats() then iterates using the new larger
> alloc_txq and writes beyond the bounds of the old, smaller
> tx_ring_stats/rx_ring_stats pointer arrays, corrupting adjacent SLUB
> metadata.

...

> See the linked RHEL Jira item for a reproducer.
> 
> Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()")
> Closes: https://redhat.atlassian.net/browse/RHEL-164321
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> Assisted-by: Claude:claude-opus-4-6 semcode

Reviewed-by: Simon Horman <horms@kernel.org>


FTR: There is an AI generated review of this patch available on sashiko.dev.
I believe the issues flagged there pre-date this patch and do not impact
this patch. So while I do not think they should block progress of this
patch I suggest looking over them to see if any follow-up is warranted.
