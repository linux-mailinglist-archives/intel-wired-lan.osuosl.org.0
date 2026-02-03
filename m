Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +P9JIuH9gWk7NQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 14:53:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6FBDA2FA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 14:53:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB0F560720;
	Tue,  3 Feb 2026 13:53:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pUn7FC7-t6ml; Tue,  3 Feb 2026 13:53:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFE9F60830
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770126814;
	bh=WumWOs7FJGqx0XgG1T98oPyzhxUL0T3RGf6i4vVvYrQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9cbMtQGRwB6m3jy+6W2SbhUEVSY9xV0DwjZCVkSQa5AZ6jSAMN1Lt9QGDlRUnnOaf
	 96DNX30IsiPhO96uEDa+kgdaU3ORPXxgAECad66nSfugM0cjTGLRSh/0sTL+mDbjeM
	 nr4MLP1sGZpvgEzZcrODABURtw4Nb7Pt7IodteemmgUP6o3hCWXLPc0OKCCbETKc93
	 Qg8ORkHmnYWOKf8y3QdxhaQrwLkaAdye/DEbb85QTZhMHGY2KRWg4KyBILNfr1wFbc
	 As7+lEUO1LnfoHmrlGuezP6nMUfKjHL3Aj2OBHg16NnQ7/WN5C8i9osayoMFkwXYTN
	 a2hME6ylHT+aQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFE9F60830;
	Tue,  3 Feb 2026 13:53:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AEC413D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 13:53:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 87C35606F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 13:53:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zqipVW73m6Ek for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 13:53:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7F684606D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F684606D3
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7F684606D3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 13:53:30 +0000 (UTC)
Received: from ms-a2 (182.51.30.125.dy.iij4u.or.jp [125.30.51.182])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 613Dr2n1008421
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 3 Feb 2026 22:53:04 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: takkozu@amazon.com
Cc: aleksandr.loktionov@intel.com, andrew+netdev@lunn.ch,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 enjuk@amazon.com, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, netdev@vger.kernel.org, pabeni@redhat.com,
 piotr.kwapulinski@intel.com, pmenzel@molgen.mpg.de,
 przemyslaw.kitszel@intel.com, Kohei Enju <kohei@enjuk.jp>
Date: Tue,  3 Feb 2026 13:52:49 +0000
Message-ID: <20260203135300.2849-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260203125417.37285-8-takkozu@amazon.com>
References: <20260203125417.37285-8-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=WumWOs7FJGqx0XgG1T98oPyzhxUL0T3RGf6i4vVvYrQ=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1770126785; v=1;
 b=T91IorZTIuJwtY8aCL8+p0dk3mQZ0vHFUuVjCG+igmGKyzGCIzzmmlABWZYdBEzb
 BpB/HSwLm/gS7IF9JAlIVe0OvRtrVReWNpKXX2YZWjtA7IMoMgElZYFIaUi1w43C
 qMr0wex1t6ZJmhyaU2NoDl8h5g36e6mE1X8TxHNKYC5GhR7Yl4+AJcFUa9HxIg8o
 kmLgCO2Rk/5c9O/rRNAfKGcBvX5uCfoh0zaF3KdoNkRMKum4clbI49qzzpeHpIHR
 93BjvdStkHqVETso4rdVK9naBEEy04vcFzXESp6gHCq5d6EWjVmsj2VDgOtcF46f
 2oAQRWCa2Kcq8QbGlMTSJw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=T91IorZT
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 3/3] igb: allow
 configuring RSS key via ethtool set_rxfh
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:takkozu@amazon.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:enjuk@amazon.com,m:horms@kernel.org,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:piotr.kwapulinski@intel.com,m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:kohei@enjuk.jp,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 0E6FBDA2FA
X-Rspamd-Action: no action

On Tue, 3 Feb 2026 21:54:13 +0900, Takashi Kozu wrote:

> Change igb_set_rxfh() to accept and save a userspace-provided
> RSS key. When a key is provided, store it in the adapter and write the
> E1000 registers accordingly.
> 
> This can be tested using `ethtool -X <dev> hkey <key>`.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Takashi Kozu <takkozu@amazon.com>

Tested-by: Kohei Enju <kohei@enjuk.jp>

The details of testing: 
https://lore.kernel.org/intel-wired-lan/20260128072908.50245-1-kohei@enjuk.jp/
