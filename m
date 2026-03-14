Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FQNFJOItWn11QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 17:10:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B73D428DD20
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 17:10:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 946DB607BE;
	Sat, 14 Mar 2026 16:10:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wJNLMLx6_OkP; Sat, 14 Mar 2026 16:10:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7ADA3607CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773504654;
	bh=vUuiW6H+E9qWxWvj3TcDAxsvRhpeLxb2lGwQr6xrK4Y=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MloNEC7/qIZMc9hyhKOjrzP8dcol2eRJqlPITfRno54fM1tllnU27y2MdzSq5Ab5k
	 QH5dYsSvS2pvP3kC7g7XnKN36SbHikwWTqStG19MyRce94XFx79pCozybLkIuV4SBN
	 nFS7Ya3i+jzxInMLVxtWkpoRK09dwiqdgpFQ1xgB05RjqgC5poKHK3wtqWrhPVnlAQ
	 87WJO8syvO3gHHJ0cB3qMMCdFENreXFtrCpJtFmAsRAJMkTqDpTKASKx8Wc6NXa2LF
	 mWaJ2tlSrXWn4xIaMhD2f9Qw8doMmOPZKk1zJPir/wp/H/VhDum/YyneQ+5qTc4KJh
	 zYo46yDjwofFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7ADA3607CF;
	Sat, 14 Mar 2026 16:10:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 123B9201
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 16:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 03E2781B7B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 16:10:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ix7MxPQ4E9Dp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Mar 2026 16:10:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 566FE81B71
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 566FE81B71
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 566FE81B71
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 16:10:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7283D60008;
 Sat, 14 Mar 2026 16:10:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8FB0C116C6;
 Sat, 14 Mar 2026 16:10:49 +0000 (UTC)
Date: Sat, 14 Mar 2026 09:10:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew
 Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <20260314091048.235a6d0b@kernel.org>
In-Reply-To: <0ca7f92b-ec4e-469c-ad2b-648d278bcfe9@intel.com>
References: <20260313150917.271086-1-marco.crivellari@suse.com>
 <0ca7f92b-ec4e-469c-ad2b-648d278bcfe9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773504650;
 bh=vUuiW6H+E9qWxWvj3TcDAxsvRhpeLxb2lGwQr6xrK4Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=K2KbxPS1Ekd46+EHoQQlk2mgAYc+tClo7K+acRUwZHVWkmy5dhgclXLqmpnlZh1fS
 suiRlfnVM31XfZgMFTNgb9HVYcZ+k9iM9nRJzqpA7G9Hu+6PBHSy+osrNejUDLXoh9
 B9LF8M6yAxNGr2w7KiLctuYNxlXQSK/R+Sys86uRNUF5BKAIIGQEwXS6G5cqlZQu8V
 rz6xXMCPyfPY/5E+MXgfGwI00vOglAaeAYMM8DLOIZmi7KufBUbMvNmkxcgNd+s97N
 LwHHkV3ShZq/Nr/4MmUhowATdX2s5bNciknVzVwKix0Pp1HoTo7IBzMkSFrCSjO74Y
 pTXWHM7aVSkzQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=K2KbxPS1
Subject: Re: [Intel-wired-lan] [PATCH] idpf: Replace use of
 system_unbound_wq with system_dfl_wq
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B73D428DD20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 17:08:57 +0100 Przemek Kitszel wrote:
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Process question - even tho you are also a maintainer I only read
Tony's tags as "please apply directly". LMK if that's right, I'll
try to remember / make a note..
