Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGi1JkM1k2mV2gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 16:18:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6751455E4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 16:18:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 345A560BC8;
	Mon, 16 Feb 2026 15:18:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2_e1VW79qO6i; Mon, 16 Feb 2026 15:18:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3FC060B6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771255104;
	bh=m/n8MKEJn0WJ7xvqjv3qtGNNa5RsDItXC/ssgM6lK7Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N49IZ/s4i/mhhaAFp4LLOmY4MtXyYyzglJXE186gijGzMwOCAWP2V1fo375h1clkT
	 RNrfxkVksjV6YyRvu4ca5Yy0IBr169VDjAsPTNy8MpZE3Qu8IjzKUcw8ohSqIelRH3
	 BsjKE0T+B/AcFI0xHjWVlKVqK5pAHRXR6fECOwlxrHuyhYXhQHTXHSjOSpovxSvAdQ
	 6rU0mPJ5kXuMfbJSKshNcouav+QAt5zZUSvn4YSg1ZbO/5jEt27KNSdwL1CNFs52+L
	 sygqUPLUtfDzls+D0bM4lEkyFM//CfOn8tQMt1IvwSQMhKx0JK3zp+fNI2Dx62PZu2
	 vrsetg/GIC5kg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3FC060B6E;
	Mon, 16 Feb 2026 15:18:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E3EBC1EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 15:18:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE2D6406B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 15:18:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6xzvkanwnXWi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Feb 2026 15:18:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 05A80405BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05A80405BC
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 05A80405BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 15:18:21 +0000 (UTC)
Received: from ms-a2 (211.4.31.150.dy.iij4u.or.jp [150.31.4.211])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 61GFI3X6062805
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 17 Feb 2026 00:18:03 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: kohei@enjuk.jp
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, jedrzej.jagielski@intel.com,
 kohei.enju@gmail.com, kuba@kernel.org, mateusz.palczewski@intel.com,
 netdev@vger.kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, przemyslawx.patynowski@intel.com,
 witoldx.fijalkowski@intel.com
Date: Mon, 16 Feb 2026 15:17:31 +0000
Message-ID: <20260216151802.24884-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260216144457.19871-1-kohei@enjuk.jp>
References: <20260216144457.19871-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=m/n8MKEJn0WJ7xvqjv3qtGNNa5RsDItXC/ssgM6lK7Q=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1771255083; v=1;
 b=F9UMX6ya72x+x2gUSm1dkXAaAJxSVe7eNgrggINHxJS+/spMQPWJX+qjBJAXvVB3
 i/j1oSRGAP1eAdl7lf9CRxSU7wmotZzR87QsDUdyFdzd9ggpQarIoXJmRcMadl5V
 uzGzNHbbrnXm8KVbvoA8y2WFbqTlOFY82OuMHaKoBt2uHDbjEghmitiabUE/uaTT
 TB3b9jbiq2RQD8g4OTdOCFtFMlHaBwaZV29yp5w6Wd64toY8GfwbuWyPu07Ic7Ie
 UsWcGFlnPNhQdw8bE+twxFNeYMxaOXIyGSAoWNOVOJIH7SHvFKJn7LtbqySblK8h
 DcFTn4kaHubYXilEgq5D5Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=F9UMX6ya
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] iavf: fix out-of-bounds
 writes in iavf_get_ethtool_stats()
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:jedrzej.jagielski@intel.com,m:kohei.enju@gmail.com,m:kuba@kernel.org,m:mateusz.palczewski@intel.com,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:przemyslawx.patynowski@intel.com,m:witoldx.fijalkowski@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[lunn.ch,intel.com,davemloft.net,google.com,kernel.org,lists.osuosl.org,gmail.com,vger.kernel.org,redhat.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: AB6751455E4
X-Rspamd-Action: no action

On Mon, 16 Feb 2026 14:44:57 +0000, Kohei Enju wrote:

> The scenario flow lacked netdev_(un)lock, my bad.
> 
> Thread 1 (ethtool -L)       Thread 2 (work)        Thread 3 (ethtool -S)
> netdev_lock()
> iavf_set_channels()
> ...
> iavf_alloc_queues()
> -> alloc {tx,rx}_rings
> -> num_active_queues = 8
> iavf_schedule_finish_config()
> netdev_unlock()
>                                                    netdev_lock()
>                                                    iavf_get_sset_count()
>                                                    real_num_tx_queues: 1
>                                                    -> buffer for 1 queue
>                                                    iavf_get_ethtool_stats()
>                                                    num_active_queues: 8
>                                                    -> out-of-bounds!
>                                                    netdev_unlock()
>                             iavf_finish_config()
>                             netdev_lock()
>                             -> real_num_tx_queues = 8
>                             netdev_unlock()

Note that the flow of Thread 1 is based on a recent commit
b542fa9dd830 ("iavf: fix incorrect reset handling in callbacks") in
tnguy/net-queue.git.
