Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kODyMgylAGo8LQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 May 2026 17:32:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D692F504DA3
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 May 2026 17:32:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 301F16082D;
	Sun, 10 May 2026 15:32:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GX0bATaonmOm; Sun, 10 May 2026 15:32:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3DD76082B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778427145;
	bh=X8MCjomDKc3YbrPEOJhgqzctMGU9fxon0zN6o0Xni7Y=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UfTpcYzS9mVs5KKiOgGLJUx+w4QUDvyr5P0XpXG/4e1SKhAJJ4fF7ktsflh+txDxL
	 pgeiHhuXDLCi0tOPKM6HyY6nxZLmDl1n8kPM960VgEu7pN9AOD1cTQb4GagS/Dbk66
	 oJnz9mBmNIVIThQqSNzdm1j64j5ANEV0cOgWJoezUBFPiiKNrDVjedM0OWT2WPKqcM
	 Afo1GSzRNzo1bDKickvPKLikekAWUYMMBtKJMYFndFOZFp1Ljl3hpLCF3RuVq75GTP
	 dtJYlJBFBBH1fxFhNa6hZm2YmARPRdcuZqS508GbK76zgYV2MsqyzSe7e4D3m10RiE
	 52XVMVOrBDDBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3DD76082B;
	Sun, 10 May 2026 15:32:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 56FA5272
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 May 2026 15:32:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3CE5C41C3D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 May 2026 15:32:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3zA0WiJyHMzA for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 May 2026 15:32:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5447641BED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5447641BED
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5447641BED
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 May 2026 15:32:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C084D6001A;
 Sun, 10 May 2026 15:32:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C78E7C2BCB8;
 Sun, 10 May 2026 15:32:18 +0000 (UTC)
Date: Sun, 10 May 2026 16:32:16 +0100
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, richardcochran@gmail.com,
 jacob.e.keller@intel.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260510153216.GU15617@horms.kernel.org>
References: <20260507081653.1717172-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260507081653.1717172-1-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778427141;
 bh=IP9ymPdhjEvlsXziBwpZgl3VeAVkIzU9wywqT4QOBtE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F67ppo9pcFhYGh5QQ+R/kDruLnCYONRpYIMakk04BzmRRzyGvDRzYpvPObfZYGyPM
 xkwrcKlLXL1U4LyEiqzK4mbmzJtOEyJV464lde8Ahl35J0Tdaj5l+SA8nvmI8TsMT4
 PffOXiNV7C3PuVzUen0IEDHSsFXsBfZ1PpvFzt749yUo5YbCOtAYZsY8k/17/wNUOR
 udpf1xuOV8namHBU2mcfOY5zHN87Fnm5NsAqtuU64UzDTxlFKbBpFeiPoK1tm4O4c4
 uc9aiqEj58jkVfzLO78PXLnTwQenuFb/exRSrr8F7i3PMwaTQMt8222R5nUK1RPEVk
 i0deBd1uPN43g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=F67ppo9p
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: restore PTP Rx timestamp
 config after ethtool set-channels
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
X-Rspamd-Queue-Id: D692F504DA3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sashiko.dev:url,osuosl.org:dkim];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:jacob.e.keller@intel.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Thu, May 07, 2026 at 10:16:53AM +0200, Grzegorz Nitka wrote:
> When ethtool -L changes queue counts, ice_vsi_recfg_qs() closes and
> rebuilds the VSI, reallocating Rx rings. The newly allocated rings have
> ptp_rx cleared, so RX hardware timestamps are no longer attached to skb
> until hwtstamp configuration is applied again.
> 
> Restore timestamp mode after ice_vsi_open() in the queue reconfiguration
> path, matching reset/rebuild behavior and ensuring newly rebuilt Rx rings
> have PTP RX timestamping re-enabled.
> 
> Testing hints:
> - run ptp4l application in client synchronization mode:
> 	 ptp4l -i ethX -m -s
> - run PTP traffic
> - change queue number on ethX netdev interface:
> 	ethtool -L ethX combined new_queue_size
> - observe ptp4l output
> - expected result: no "received DELAY_REQ without timestamp" messages
> 
> Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
> Cc: stable@vger.kernel.org
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

FTR: There is an AI-generated review of this patch available on sashiko.dev.
     I do not believe any of the issues raised there should block progress
     of this patch.
