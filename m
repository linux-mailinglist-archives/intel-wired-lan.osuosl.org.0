Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAV/Gr1M1ml8DQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 14:40:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6533BC491
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 14:40:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B46281926;
	Wed,  8 Apr 2026 12:40:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HsIrlerYwio0; Wed,  8 Apr 2026 12:40:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87E87813D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775652026;
	bh=UDvmLFYVfQkRem5aHBdzktJlS1WKoSW4+JCHWTsN6Yk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6KWpoIXTstuk3yzl6AOVahf076wP+J+gvlqC3Tm89BoP52Um0wZdejzER0qYnFx/c
	 WuQ9hwG+PG0GKPbeObKA2nIX0hf3SruVi0HFE4nm2z7lbzeLy4vOr7MSoEtoMztxWM
	 H6h/Nx6qtQjc2dhEQuwdRQjcSf5rddPsVSXZBUpKmBMnfVrVwGEzRyJ17MO/OJ6Ug7
	 FazyDuD5XcXysiYhvO3zLOftnfrz3D1W3O2usmP9ylYfdAE1E2l0JK/qBemZNCPago
	 ++thpv4cOvJGMB7GLBbCia7llCgoHetUSAMyMHmKPNKRCIcf8aOmmwslvmJuGbedi8
	 woraCdSJTglGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87E87813D5;
	Wed,  8 Apr 2026 12:40:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E1EE41F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 12:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CABDF4008B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 12:40:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mR8Vsz12ituv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 12:40:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DD8CE400C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD8CE400C2
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD8CE400C2
 for <intel-wired-lan@osuosl.org>; Wed,  8 Apr 2026 12:40:23 +0000 (UTC)
Received: from x1 (13.3.31.150.dy.iij4u.or.jp [150.31.3.13])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 638CeGTi083232
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 8 Apr 2026 21:40:18 +0900 (JST) (envelope-from kohei@enjuk.jp)
Date: Wed, 8 Apr 2026 21:40:16 +0900
From: Kohei Enju <kohei@enjuk.jp>
To: Matt Vollrath <tactii@gmail.com>
Cc: intel-wired-lan@osuosl.org, stable@vger.kernel.org
Message-ID: <adZMbLhLzm7Oy_sE@x1>
References: <20260407161447.43645-1-tactii@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260407161447.43645-1-tactii@gmail.com>
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=UDvmLFYVfQkRem5aHBdzktJlS1WKoSW4+JCHWTsN6Yk=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1775652018; v=1;
 b=GRxqik686OuNAh+4hstxOyRNPaax3klhmJvOmspoZ+qa+rrxEa/vwOABEYGAd5i0
 QTkKEfWCQyAmLF9YiHdIeEa5H+RRg7F/4pH6qOjDGNlil/9Gz/Ncy8ophFtycY0f
 ma/EYNokDTab5LQclfEWAb6WXW5cFHw+bbt9feIkZbOBe8vPJmoCVSYwLtV2EbNz
 EW1+psWC7oX5j2Zh7xVcZZRrK+i/1ane4WJtx8O5RuOSjSWVlISaQ+y/1LI6vHtp
 kdRt0kueh9ep/WAhLH4VbXjXtxhhNln2QKj0F5svwp70Lkv3I6qjbzBHhJoPpRpp
 zNlebvNR/lYiMwuYYkuLmg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=GRxqik68
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Cleanup PTP pins on
 probe failure
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
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 5C6533BC491
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 04/07 12:14, Matt Vollrath wrote:
> PTP pin structs are allocated early in probe, but never cleaned up.
> 
> Fix this by calling i40e_ptp_free_pins in the error path.
> 
> To support this, i40e_ptp_free_pins is added to the header and
> pin_config is correctly nullified after being freed.
> 
> This has been an issue since i40e_ptp_alloc_pins was introduced.
> 
> Fixes: 1050713026a08 ("i40e: add support for PTP external synchronization clock")
> Reported-by: Kohei Enju <kohei@enjuk.jp>
> Cc: stable@vger.kernel.org
> Signed-off-by: Matt Vollrath <tactii@gmail.com>

Reviewed-by: Kohei Enju <kohei@enjuk.jp>

Thanks for updating from v1.
