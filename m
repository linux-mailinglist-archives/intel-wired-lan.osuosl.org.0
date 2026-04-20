Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NHFNipM5mkgugEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 17:54:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AE942EB33
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 17:54:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F6AC610F1;
	Mon, 20 Apr 2026 15:54:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kPtCSir05sDQ; Mon, 20 Apr 2026 15:54:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABBD3610F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776700455;
	bh=J7o/8KgJizxABEXyLEkezDlutD4Gutygp+NZfiPyNo8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NPMGyMzkBrxwxbj6IGt399h8WTmEP6ZVu1L8oaWEypcPsbjDWe0pC4Qwk2/IGSXy2
	 8KeZCghKx+pYatRkrR11bpz1D6EmQ21adVEZvqYfi3VE3EFAxDwSNEuEEzfIcm3sC5
	 ji2jqOIGlfG04QFfbRZQOVHUgBoK9AOi/ISS8SmmJF5i9LViOEQzro4jan8PgLOHHe
	 g77TcCZWWiPC43HwDM2HvK455PQO02lNf45jMpOb650B16RxDJJ7cxJK/F99R3+8gV
	 B49lkEM7Acf/TbJaOfctE0tAw0iWAEN+hIA0zuKW7TrccabomFMXS2x7VnRt6XCQOO
	 /y5HM0Br69EsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABBD3610F3;
	Mon, 20 Apr 2026 15:54:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AAA42355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 15:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 909BA6105F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 15:54:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u6ikNOBX7-FG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 15:54:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BBB4660AA1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBB4660AA1
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BBB4660AA1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 15:54:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6DBEB4368A;
 Mon, 20 Apr 2026 15:54:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10939C19425;
 Mon, 20 Apr 2026 15:54:11 +0000 (UTC)
Date: Mon, 20 Apr 2026 16:54:09 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>
Message-ID: <20260420155409.GT280379@horms.kernel.org>
References: <20260417062954.1241900-1-aleksandr.loktionov@intel.com>
 <20260417062954.1241900-3-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260417062954.1241900-3-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776700453;
 bh=KjHyxxjPDBim6sQ9KYPdRWv3pfyjQHkMzJZQEGKI5R0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=md5E8DjZIOSFg8J9sBuryhu60e/wjXlftP7tYt1NXoHXTc9pfr9SQohuJfb3bmkM2
 ftBxgWfg9FHJtRzqdQTWfijvvXCDRWQe0TGGpSCktRyA24k3A49qAhiL32mlYT9Mt5
 MvjhQcGoccQLUkUEnxtyZHTy+XA5hK66+4w8Lc6NiVPpIDM3gj4zrbleVx8MQbFJ57
 dKZI5TB6U1h2q/GmhVwdQf+4rbrOCD7SqkIe6y5bCwPN/HEmIqTn9zywFZQg2o6VT9
 d7TzPUtNFhnyVG84SCeAKDgKrIxUjFErptquIX8jI/uBn5UC3l77XSJUOFjOBu5B0I
 m572eY2mik9KQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=md5E8DjZ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/4] ice: fix autoneg disable
 when link partner doesn't support AN
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:konrad.knitter@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,osuosl.org:dkim,intel.com:email,horms.kernel.org:mid];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 05AE942EB33
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026 at 08:29:52AM +0200, Aleksandr Loktionov wrote:
> From: Konrad Knitter <konrad.knitter@intel.com>
> 
> Disabling autonegotiation was silently ignored when autoneg had not yet
> completed (ICE_AQ_AN_COMPLETED was not set), leaving the configuration
> unchanged with no error. This could prevent link from forming if the
> link partner requires non-autoneg mode.
> 
> Extend the condition to also allow disabling autoneg when the link
> partner reports no AN ability (ICE_AQ_LP_AN_ABILITY clear). Gate the
> ICE_AQ_LP_AN_ABILITY check on the link being up so that stale or
> zeroed an_info when link is down does not produce a false positive.
> Introduce the helper ice_autoneg_disable_allowed() to make the check
> explicit.
> 
> Fixes: f1a4a66d2310 ("ice: fix set pause param autoneg check")

AI generated code review [1] flags that this does not seem to be
the right Fixes tag and that the following seems more appropriate:

Fixes: 48cb27f2fd18 ("ice: Implement handlers for ethtool PHY/link operations")

[1] https://netdev-ai.bots.linux.dev/ai-local.html

> Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

The above not withstanding, this looks looks to me:

Reviewed-by: Simon Horman <horms@kernel.org>


I somehow feel obliged to acknowledge that Sashiko has provided
review of this patch. However, I don't believe any of the
issues flagged there should block progress of this patch.

You may wish to look over that review for possible follow-up activity.

...
