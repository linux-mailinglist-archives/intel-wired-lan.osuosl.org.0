Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDKaI+66eWnoygEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 08:29:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAC29DBF9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 08:29:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2199D4052C;
	Wed, 28 Jan 2026 07:29:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 263j2xnhPaRz; Wed, 28 Jan 2026 07:29:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 697EB404F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769585387;
	bh=cPiwWLDvghmCGt9oewTVK5ZkSP/BPQjzSlyP0s5Xx/0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AaaqV89VoCvjmjANGG75N68mNIAL1Tcbep/DYfqttsynyehxhvx2bc49hQQeDglrr
	 rJXfGbT33UJBqujJdr1ANH8T0IuuMvuiErC2+VKwX5YDLsBMt6zvXY2YMx+VlfKHs2
	 CfOaj6X593s6HzD3IaRvI3EPsdszPvMrK9x9XoHDCUReI10pRlbdGwpsfzfj4mdf2Z
	 nLS+1lyKAeWXYDwfZ0ll/vQJGRLDIRjDoTT0roJLVIgAHd8epl4EjjQauqowmukdiJ
	 IDlSWlUirggx5ajTt7eFj1r29PZ+x6zYxfOPbAJ9WM7R2hzLKeiIzgrBCpeA2AJGgk
	 mwrFdiTXwodPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 697EB404F2;
	Wed, 28 Jan 2026 07:29:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A62B118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 07:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2938F40245
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 07:29:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I12VH_Y7cQd8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 07:29:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 05C6F40024
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05C6F40024
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 05C6F40024
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 07:29:43 +0000 (UTC)
Received: from ms-a2 (85.154.13.160.dy.iij4u.or.jp [160.13.154.85])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 60S7TDIC049913
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 28 Jan 2026 16:29:14 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: takkozu@amazon.com
Cc: aleksandr.loktionov@intel.com, andrew+netdev@lunn.ch,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 enjuk@amazon.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, piotr.kwapulinski@intel.com,
 pmenzel@molgen.mpg.de, przemyslaw.kitszel@intel.com,
 Kohei Enju <kohei@enjuk.jp>
Date: Wed, 28 Jan 2026 07:27:36 +0000
Message-ID: <20260128072908.50245-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260127085410.79645-8-takkozu@amazon.com>
References: <20260127085410.79645-8-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=cPiwWLDvghmCGt9oewTVK5ZkSP/BPQjzSlyP0s5Xx/0=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1769585355; v=1;
 b=Ao6pv7wipYUxJGx2OOpfIlSMY6dOYa2Mna0t4f39SGgg7HJ5ip+6Xbxl5i0NIIxV
 v/3iGuW3XEC0GIwalC9Ng9BKaKRbPcpK4acRKah4OLAvtP9v/6tSy/dHLPxykUKu
 S2p00kY5ZG5wGsF+3zgIyikIiJkB7q6eVLX6Qcn131L4le6jq/knG2j2tHYSgI78
 xUVdzgMkYxeaDNdBcbw/bSCcxRgQliXfqx52l6WGaspMnSnTaRojD7CGM/3PeUHO
 7forZjVeBhBinQEv1c5YK2pTlf9EiXgX/VowSc/FRtnyXlyn+mWOKK5o0NzlR+UO
 Qe/s2uVs6qDxdQ8LggW7WQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=Ao6pv7wi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 3/3] igb: allow
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:takkozu@amazon.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:enjuk@amazon.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:piotr.kwapulinski@intel.com,m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:kohei@enjuk.jp,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[toeplitz.py:url,rss_api.py:url,enjuk.jp:mid,enjuk.jp:email];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 7AAC29DBF9
X-Rspamd-Action: no action

On Tue, 27 Jan 2026 17:54:10 +0900, Takashi Kozu wrote:

> Change igc_set_rxfh() to accept and save a userspace-provided
> RSS key. When a key is provided, store it in the adapter and write the
> E1000 registers accordingly.
> 
> This can be tested using `ethtool -X <dev> hkey <key>`.
> 
> Signed-off-by: Takashi Kozu <takkozu@amazon.com>

Tested with Intel Corporation I350 Gigabit Network Connection and
confirmed that toeplitz.py and test_rxfh_nl_set_key in rss_api.py
succeeded.

 # tools/testing/selftests/drivers/net/hw/toeplitz.py | grep -E "^# Totals"
 # Totals: pass:12 fail:0 xfail:0 xpass:0 skip:0 error:0

 # tools/testing/selftests/drivers/net/hw/rss_api.py | grep test_rxfh_nl_set_key
 ok 6 rss_api.test_rxfh_nl_set_key

Also checked that RSS hash key remains through admin down & up.
 # ethtool -X $DEV hkey be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef
 # ethtool -x $DEV | grep key -A 1
 RSS hash key:
 be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef
 # ip link set dev $DEV down && ip link set dev $DEV up
 # ethtool -x $DEV | grep key -A 1
 RSS hash key:
 be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef

Tested-by: Kohei Enju <kohei@enjuk.jp>

Note: 
Toeplitz test needs correct handling of setting skb->hash and its rss
type, so I applied the patch below in advance.

https://lore.kernel.org/intel-wired-lan/20260122134809.7765-1-kohei@enjuk.jp/
