Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAZiG/LvDmqmDQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 13:43:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BD35A42BD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 13:43:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A22DC61747;
	Thu, 21 May 2026 11:43:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VLhRDb4G51mv; Thu, 21 May 2026 11:43:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDAF7616A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779363822;
	bh=gNwhZlZNvRf30NjRud00r64+zMtRvb84BXByEUe94wE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0nQp0PG/pS1JP0LMwODQmftjxEe6F+9vG2hLiwmzue9UJnn+XU327fmx47x/8i11/
	 s1Gzfe6CVrdouPiHBQfif0IDALPeB+SzLcm7Gdy+vIvoe6ti7mZFHa0ddjzpe47ZdL
	 Rh7RHm1gRyTRPbI3SmeU7ANuCyaGhSJ1T4s1XsthHKm2gXCmUcNma7Q20MYZBONMtD
	 4nQZhuEn6aNXaXSO9hrx961Td0hIL8Ywwaf2v4UJlmKG512MKL0ISyVEIh3ikvjJWf
	 Q/pQkB5iFcsz0LanOYG3HUcY/qaQMAevrJ/TN5gFyD9Y18KB8f+ZVpUJZ465fyfM64
	 GZK9BPea9JeWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDAF7616A8;
	Thu, 21 May 2026 11:43:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AE74265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 11:43:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8C39661599
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 11:43:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5e5DjH1X_o4N for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2026 11:43:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F098461564
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F098461564
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F098461564
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 11:43:39 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 117DB429D6;
 Thu, 21 May 2026 11:43:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1384C1F000E9;
 Thu, 21 May 2026 11:43:34 +0000 (UTC)
Date: Thu, 21 May 2026 12:43:32 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260521114332.GC1506108@horms.kernel.org>
References: <20260518111506.65284-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260518111506.65284-1-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779363818;
 bh=gNwhZlZNvRf30NjRud00r64+zMtRvb84BXByEUe94wE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=KVWGSSQkk7z2naqeJYJq6xHDJDJnA4c1yP3WGTzwMTrL5NehmGY25IXM4PaHiJoCq
 YE0sw3ITwkOvRbHQZWO83SC6dGNMEj2Iy1VHSmkGYDKstDCs35IYnLwRhAzHnLJ3dR
 S4yKQ0MPhoL6xXVBQ/9tGpNPgPsCIMtwHgl7pjkaxic9P1I5ZVsNNGVPkV/qcT/dec
 vTeUU5zXzfe6PEbTRV1jMgdWwu1K/vogJsjUrjACNhBQNNdg/YdWhHDFXXjKCGBuYN
 Ao2f1ASEDBeCTTaMBqIMc09I0BinuzmIroz9wyaBVfGwoa8+SAZitgo3kMfCP3qo52
 XEC7f9RVp5Sjw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20260515 header.b=KVWGSSQk
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ixgbe: do not configure xps
 for XDP queues
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
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lists.osuosl.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:aleksander.lobakin@intel.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
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
X-Rspamd-Queue-Id: 90BD35A42BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 18, 2026 at 01:15:04PM +0200, Larysa Zaremba wrote:
> netif_set_xps_queue() should not be called for an XDP Tx queue, since such
> queues are not netdev-exposed. On systems with number of CPUs >=64, on E610
> adapter, netdev is configured with maximum number queue pairs being 63
> (due to MSI-X assignment), but configuring XDP results in 64 XDP queues.
> 
> So, during XDP program load, when netif_set_xps_queue() is called for the
> last XDP queue, we get a WARNING with a call trace and KASAN report
> afterwards (if enabled).
> 
> [ 2012.699800] WARNING: net/core/dev.c:2854 at __netif_set_xps_queue+0x116a/0x1e40, CPU#36: xdpsock/103668

...

> 
> Skip XPS configuration for XDP Tx queues.
> 
> Fixes: 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

