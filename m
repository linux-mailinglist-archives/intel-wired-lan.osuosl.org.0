Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIFPGmNqgWnHGAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 04:24:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5873AD4175
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 04:24:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8AA8607D1;
	Tue,  3 Feb 2026 03:24:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tg8KXKPQTn4F; Tue,  3 Feb 2026 03:24:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 326A2607D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770089056;
	bh=r8R9mdHzi1BanaqnL4M8yh0UPiyKYCb+NNWJzWjF+Sw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aGWVRRihJLoMvB9MG4INR6GKom+aSBF4ztzGShf0nHcFEy7AQDrCCpgv/itWFOo8j
	 9ugZymYiLkpDliq9Fsko3rcTdTpgFv0nz/XMzAWPVi8SeSRmFKDQMcbLIHyewsrtfa
	 kolmeWffHx+QR+ENQfwRQgWNiRnrxtmY8o5mM7Jw3Yz5XYfG9OrTGzRHVMnm+znTdO
	 6o6FaLnusjc9BaIuSEc/tSrc9Q1K6kWzk0FPq65m+NT2T8ptQ4VulwzuY399Ew1k5k
	 u4P/nNTuRjpETMoesUZv65/ta9dK1QkRPNojPhwfaqkIWo7dP7uyMlvUY58uZSIMyi
	 CCQ/4gWhr1gZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 326A2607D5;
	Tue,  3 Feb 2026 03:24:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 40D991A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 03:24:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 231D8607D0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 03:24:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YGpDHrA2Imb1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 03:24:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 27C47607AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27C47607AB
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 27C47607AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 03:24:12 +0000 (UTC)
Received: from ms-a2 (182.51.30.125.dy.iij4u.or.jp [125.30.51.182])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 6133NoIm047314
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 3 Feb 2026 12:23:51 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: jacob.e.keller@intel.com
Cc: aleksander.lobakin@intel.com, aleksandr.loktionov@intel.com,
 andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 kohei.enju@gmail.com, kohei@enjuk.jp, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com
Date: Tue,  3 Feb 2026 03:23:35 +0000
Message-ID: <20260203032350.3221-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <bcefc3ee-4704-483a-8271-01677e47eb8b@intel.com>
References: <bcefc3ee-4704-483a-8271-01677e47eb8b@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=r8R9mdHzi1BanaqnL4M8yh0UPiyKYCb+NNWJzWjF+Sw=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1770089031; v=1;
 b=d66njHCGVShvbGRQ+ySH/5sqN0sBG/oUj2nU5hUCNmMhxM1IWjZJEZsQl1PGHdAr
 XFTvXL7d/+sjRHIgqLH4NqE/oS9lxoqeKj/Pm6Q4QFdFbiu82tQ25vYsnf+Yd17R
 p6SGkOPXlUYFcPUxO8OyHynb//4vMgAvVLNZvv43O68lfMR+CcoiHpQJMEBX39Lr
 Vif60gGuZxinMi5PvrhjGeZeEp1A96PS5t/i0PPdqB5+kmDS3RZcWv1MLCOjqRHQ
 8gRqx65KyZ/qXxRa6hcl96OqdcYzTRnhgo8Nrf/0aWeW1jSH/BbTHOE0iM+l5Abz
 n8xTh37bqSowjEV0XoN2YA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=d66njHCG
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next] ice: fix NULL pointer
 dereference when
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:aleksander.lobakin@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kohei.enju@gmail.com,m:kohei@enjuk.jp,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,lists.osuosl.org,gmail.com,enjuk.jp,kernel.org,vger.kernel.org,redhat.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,enjuk.jp:mid];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 5873AD4175
X-Rspamd-Action: no action

On Mon, 2 Feb 2026 16:31:39 -0800, Jacob Keller wrote:

> > I see the Fixes: commit exists in only tnguy/next-queue.git, so I'm
> > sending this patch to iwl-next, not iwl-net.
> > 
> > Also IIUC dev-queue in tnguy/next-queue.git is rebased continuously, so
> > the commit hash will be stale soon, and I don't know how to handle this.
> > 
> 
> Yea. Including the full subject line should be sufficient for Tony to 
> find this.

I see :)

> 
> > I'd appreciate it if iwl-folks know the way to handle it. Thanks!
> 
> Ideally we can squash this in with the implementation patches and 
> include your Co-developed-by and Signed-off-by tags if you would agree 
> to that?

That sounds good, and I agree to do so.
If I need to take some actions, please let me know.
