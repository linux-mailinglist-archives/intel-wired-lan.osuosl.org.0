Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHi0Gpv53GnXYgkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 16:11:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A873ED1FA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 16:11:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C06EA84791;
	Mon, 13 Apr 2026 14:11:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g1sMO7q6u7Qq; Mon, 13 Apr 2026 14:11:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E64EF84797
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776089494;
	bh=DS+S0BRyZHRR76xF3fsEAk6msLD+shY5kdGfLkw+59M=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5IrH54aTBDhuladj5r410PFwdQDg0R7uSXxEAeBWNN2I8RRCxLbAzM3aFramTELSz
	 wZUphAE6rNkpYlVzToxorXuP3gNoRKVhw5UPga4NwhAMAgeckY1Vfot+4ZFm6Qp4X1
	 iZjwuAUlT+fsdLGk165GDp7yUaiWcpYYsDtCQooYSRCnD9aYusuRhuRGgdrTHc7szu
	 FyqKSLnufTYuddgvpZ5zRaFLnAQVyiFxho0r3kVGhY50UQeLgKVTDIZ3tk1/amPodX
	 cQAyzj2YOJM5E3AkeUdpUGb6+F45cnULA2IrAba0kJXbN5zxTTG5svzPMKPotuhoDk
	 pW+/C4kfGsvxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E64EF84797;
	Mon, 13 Apr 2026 14:11:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4130F237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:11:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3245D422AE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:11:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iOIBPHzOVTR4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 14:11:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7242E41F54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7242E41F54
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7242E41F54
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:11:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7BC0260172;
 Mon, 13 Apr 2026 14:11:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD6D9C2BCAF;
 Mon, 13 Apr 2026 14:11:28 +0000 (UTC)
Date: Mon, 13 Apr 2026 15:11:26 +0100
From: Simon Horman <horms@kernel.org>
To: Matt Fleming <matt@readmodwrite.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-team@cloudflare.com,
 Matt Fleming <mfleming@cloudflare.com>
Message-ID: <20260413141126.GR469338@kernel.org>
References: <20260408190214.1287708-1-matt@readmodwrite.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260408190214.1287708-1-matt@readmodwrite.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776089491;
 bh=gFRvrKXlOfg+aEGi39wpVj9CoHvkfV4SW9XjwhO71Bg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Vuz8JIgyGFQs79J7jNYhLXjVTEJKcIy7q5fIMQvp69Rs6UAmh9zywB6sRRJyuSPZ2
 g+pdHQ203cM48BifuF+R1XKrQAour1unMgz1Hs9HNTMCQzb2M3F4CRrv4S2bN2AAfT
 29qhXHvawfyEttE99sA2TD0YgSFFuxY+c2+oUt2NwsZH5HNRQi85n8aohpaOvSd32v
 fM9Vygo51KBRkcEEhB8B9OMaZ7kqOmtJ3ZeRTprb2EqP88EMVtZe1TDG9WyHnoQiru
 RKdLCkyaoXwYB6kV24hu8LH8p1H1q0ApAoO5ee8ZbPe7R36iMv9CJbvNo5XyKF14mn
 aGz59T8PyA/0w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Vuz8JIgy
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix missing 1's complement
 negation in GCS raw checksum
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:kernel-team@cloudflare.com,m:mfleming@cloudflare.com,m:andrew@lunn.ch,s:lists@lfdr.de];
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
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C9A873ED1FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 08:02:14PM +0100, Matt Fleming wrote:
> From: Matt Fleming <mfleming@cloudflare.com>
> 
> Commit 905d1a220e8d ("ice: Add E830 checksum offload support") added
> Generic Checksum (GCS) support for E830 NICs but omitted the 1's
> complement negation (~) when converting the hardware raw_csum to
> skb->csum for CHECKSUM_COMPLETE.
> 
> Without the negation, every CHECKSUM_COMPLETE packet fails the
> fast-path validation in nf_ip_checksum() and falls through to software
> checksumming via __skb_checksum_complete(), which triggers the
> rate-limited "hw csum failure" warning. Packets are still accepted
> (the software recheck passes) but hardware checksum offload is
> effectively disabled and the warning floods dmesg on systems running
> nf_conntrack on VLAN sub-interfaces.
> 
> Multiple other drivers (idpf, ehea, iwlwifi, cassini, sunhme, enetc)
> also apply ~ for CHECKSUM_COMPLETE. The ice driver was the only in-tree
> user of csum_unfold() for CHECKSUM_COMPLETE that omitted it.
> 
> Fixes: 905d1a220e8d ("ice: Add E830 checksum offload support")
> Signed-off-by: Matt Fleming <mfleming@cloudflare.com>

Reviewed-by: Simon Horman <horms@kernel.org>

