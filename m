Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOyGDDgQt2mXMAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Mar 2026 21:02:00 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39585292499
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Mar 2026 21:01:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCAE840AE1;
	Sun, 15 Mar 2026 20:01:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M53Hf0DrID5x; Sun, 15 Mar 2026 20:01:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EA4240AC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773604915;
	bh=03dIZEuf3IMigPuXNXr6U1nIEU52V05F0xQlKItD48k=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G3VooLvbXsKPX2UaONncajx13HjUxgK4vznk4lWfsOFsrVURDTcEPtTu2FrEkAulq
	 AcR4b6ggx0EF6/B5a1r6boulRb0+sOfuUWxwPaAcx6GXCSAD7VWcPM9hQdORz2vkIH
	 BuC9EootSRaciYYXHw0t6/efNDn7bRPQPTe/roF5T+DeRV2blYx3IZ4SLGN5tBvUOL
	 Qq+qLjfpN/ogmW+6ooO27ilfTBO0o0n0FaqF1rGarOI4ETszQmQAqAaLXFxeywgiRw
	 wRM6YTwCauJ5zbvhLbJgElVPnpwnPX5p5R018d4MHCTBBQqrl8jKVT5mFnf8r/uRAK
	 ZnxXqO3I0LRGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EA4240AC8;
	Sun, 15 Mar 2026 20:01:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D5DA11B2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 20:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7A564075D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 20:01:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1valiRQxmZ-n for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Mar 2026 20:01:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3C173405B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C173405B0
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C173405B0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 20:01:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 641DB4403C;
 Sun, 15 Mar 2026 20:01:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C55CC4CEF7;
 Sun, 15 Mar 2026 20:01:51 +0000 (UTC)
Date: Sun, 15 Mar 2026 13:01:50 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: intel-wired-lan@lists.osuosl.org, michal.swiatkowski@linux.intel.com
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 jacob.e.keller@intel.com, anthony.l.nguyen@intel.com
Message-ID: <20260315130150.12829f88@kernel.org>
In-Reply-To: <20260315125451.3741843c@kernel.org>
References: <20260315125451.3741843c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773604911;
 bh=RCgHiY7jVjrvekH8ESAe1BxUdVhTVpI6uzVWbL430zU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jRuQkWJh382nPBstVDUrEqZp5NUH6enPNGgGPfakoJAc8Kesv7WahD8NFgYMYwIaq
 WHfSDHVZinp+cRXUqfmljQhwDvvtM2rcIIxn7TemFByy9DBrfoL61YtNH+/8Sd6DNp
 rSrChJpxhe3Kbr9kNf9eAakQXtYFz3JuH6TVQLoD8YxFl4HCYpORnBz6FuKMUkwzpp
 TlaY5u+SMzo8rcSSxO/HH7FJZJlCBA2VaMwkJa+WXx7Cm0+YgXIt5tj83OzS60XRZN
 GgT91N+IPflwEcct4k9gYB86FywbJ6f7OM4VuVWEug8+4QMDPbt8IJn4gw49CAcvSB
 LPLTPRUtoDcJg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jRuQkWJh
Subject: Re: [Intel-wired-lan] ice crashes when not enough IRQs
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 39585292499
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 15 Mar 2026 12:54:51 -0700 Jakub Kicinski wrote:
> Trying to build a minimal kernel I dropped CONFIG_IRQ_REMAP=y from 
> my config, and (on AMD) that caused IRQ shortage. 
> 
> This seems to crash ice after commit ad61cd9c67ad ("ice: get rid of
> num_lan_msix field"). Sorry for the lack of line numbers, I also
> dropped DEBUG_INFO. But I think the problem itself is pretty obvious.
> The fix less so, short of reverting ad61cd9c67ad. We can't just clamp
> the queues in ice_vsi_alloc_q_vectors() because AFAICT that would make
> ethtool -L succeed but driver would have a lower queue count than
> requested.

Hm, maybe it's not just CONFIG_IRQ_REMAP=y
Enabling it makes no difference. Let me try to see what state the IRQ
allocation machinery is in on this kernel. On distro kernel ice gets
all the IRQs it wants at boot. But it also barfs something RDMA so
I can't really compare..
