Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFtBOwh8vWmt9wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 17:55:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C642DE116
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 17:55:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C39461BA9;
	Fri, 20 Mar 2026 16:55:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AAMkHYGTjQGR; Fri, 20 Mar 2026 16:55:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF37161BAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774025731;
	bh=GWE7a9BsVv3lM+FOwmabC864qF5a1Tkom2fREJIkC5U=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W7miVFy1a9Pl07YSk+y1QYo9z3DY637svLGSDMlmJepbOOcjjDEYLdb7ApBJQX1yV
	 xftm5BjOmqK2u9udl+fO4wnrABbtdD0BLhs+5VYRpmXtQAQTGgT+NDgn5HcVc7oyZo
	 QW5qGREC+Bk6rByWqUeA9MCu/9EXB0vuKjQ8Tktsqqc2qoW0+2e/1hrLAoZkH1yFP4
	 aQ0hbP4GoaxObZnslwfWH4mTHlzo/pZEBvCHDcBur5gPyuT0Z79DTSh7w/j5IqEmR1
	 BqdAFH5H6y3XaTtmbdo0Nh6IC9CEhhS90Y0FNfY/aReyZRBr3nyvcLCHqJSdwPjqQk
	 qKI9cLurPuGGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF37161BAB;
	Fri, 20 Mar 2026 16:55:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 95928265
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 16:55:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7B14A61BA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 16:55:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hf7dfd86a5oJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 16:55:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 94FE961BA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94FE961BA7
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94FE961BA7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 16:55:28 +0000 (UTC)
Received: from x1 (122.24.31.150.dy.iij4u.or.jp [150.31.24.122])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 62KGt2Qj017124
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 21 Mar 2026 01:55:03 +0900 (JST) (envelope-from kohei@enjuk.jp)
Date: Sat, 21 Mar 2026 01:55:01 +0900
From: Kohei Enju <kohei@enjuk.jp>
To: Bart Van Assche <bvanassche@acm.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <ab148uuvjby_nMMW@x1>
References: <20260320160707.3047815-1-bvanassche@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260320160707.3047815-1-bvanassche@acm.org>
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=GWE7a9BsVv3lM+FOwmabC864qF5a1Tkom2fREJIkC5U=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1774025703; v=1;
 b=MpmmoCibtMchXyW21Pse9JiCYr0v+KsnOYGbx2vMx9DrWPaO7nQfVuXgZZlFYnP5
 pOg4V4/ynGdePAAOTvXub7OTJCONgwYoCr2x+AEXx8oubc6wEP9sFZOxTcQ1YxCy
 FKsDrqS5SU1dRbIqT6veLVbrqAAJ7YLU5SILueM9FEQuTUimME6kyrIkGSVJ+3gb
 +7Wq9S2DWc45/Z0WP5ntbL9ggrqKWOskpxqvAsuw8BpWP3JWM9WvN8Ayb8rpPq6m
 qjueE3JrGuF9U3cyr4ZNXIEPGmrPulMo526jecGkM7yncg7pBYbv2BpsW/osBH7C
 u0VtPFfXPiuBkjSKnBLnmQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=MpmmoCib
Subject: Re: [Intel-wired-lan] [PATCH] iwl-net: ice: fix locking in
 ice_dcb_rebuild()
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bvanassche@acm.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 08C642DE116
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/20 09:07, Bart Van Assche via Intel-wired-lan wrote:
> Move the mutex_lock() call up to prevent that DCB settings change after
> the first ice_query_port_ets() call. The second ice_query_port_ets()
> call in ice_dcb_rebuild() is already protected by pf->tc_mutex.
> 
> This also fixes a bug in an error path, as before taking the first
> "goto dcb_error" in the function jumped over mutex_lock() to
> mutex_unlock().
> 
> This bug has been detected by the clang thread-safety analyzer.

nit:
I believe the subject should be 
  [PATCH iwl-net] ice: fix locking in ice_dcb_rebuild()
since iwl-net is the target tree name.
