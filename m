Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEviNlKGwWn+TgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 19:28:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E112FB4B3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 19:28:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9759A40BF6;
	Mon, 23 Mar 2026 18:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zTRiJISGX7ca; Mon, 23 Mar 2026 18:28:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2270F40BF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774290512;
	bh=tVKv4h6csSNr26F3fg2SyyHjtvzkcdDJQ8W+IAxz4h4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uvQL57astkbidPX0XgwPmdloHiEGbyZLRZKKyV4SVM59wXPtE8DHUoj59NrsrG7xI
	 XYOh0nl6z8fqZOy7GuKIl5PBz+kt1I0cecFDk9WB2uWFoJKUlrXlx8ov5E1x9cz0u5
	 SfldawOUTfOzY7Eea2BjTcMkzIGxRFrycubkx1TJqkU1NO/b1UEyLo/+dzBT0SkmHG
	 w/iri9xN1+DnQEhr4j8ZQ+fkd2eGRmkupRx7TTUHPuMe1KPlYMQF8e2UtDXGI+0VIE
	 v6XuUcu/awKuNEG6HK8flZeJf3/3YfStzXLjlHZooyM7cXSSLWmD6pTlZV+ERpB/rq
	 mNeY13GBT+Pew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2270F40BF8;
	Mon, 23 Mar 2026 18:28:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D7A721D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 18:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD42C821A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 18:28:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hPtwmZ5pVX_Y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 18:28:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=technoboy85@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E1D828219F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1D828219F
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E1D828219F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 18:28:28 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-4852e9ca034so29615465e9.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 11:28:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774290507; x=1774895307;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tVKv4h6csSNr26F3fg2SyyHjtvzkcdDJQ8W+IAxz4h4=;
 b=Y9OL1sIERlOYWYnJRZWOF1rP0cJ74S4/t4sg4wlb7n9De0EFF0jTkSDpEzkw/N9CgR
 nXOYb98eLlKgtkmmX4ztFyCW2gyXOEfeDXzchZakuHK2cMMBHbASWjXj4xHzQhS22DyA
 oLqyvn3k9RBsPv62w8VkZl08EpDs0cLZXuQRjghiZBASq9Fuvyj5POHsqfiLQL83LJ23
 trQwm/xL7y+HPSgmQxPa0X/2QKvZe9xj2CMLJnN5oehgxnE6Pbv4ecWUjVFEbWTXboLm
 Y6aCNYsTkJZi5ZdkGqkEqHGjoapLci/ClrGJza0P5dqSaw0YvwI32T4J4ELUf24fB2zu
 tBvQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVUTPCL5mXQBUWXeQ8GjQvf9jxeKmdzh0zOJIowioJwJuwBa1CuFXr8I4nlLBmvHg12UecCARrWAX0Ul4r9eJw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YztMOmHwmawEPYe/muoGTHdkNo+SZgLonz+G89o3/QJtq/BvVTw
 VkDdAnOa/itxXt7KZ8yIq23NbIbRneNAHqEd0d4NKYysIini7KVFDbRi
X-Gm-Gg: ATEYQzzaQdg+vpOXltKHBUtpEoGzRxsUO6tfFrBl6ylZ96G4DWWDjXXZ6WaqxHHtx0H
 /nCp3wjrlGQcT1Vbh6pKKo74onFCR+TRjM7rszLwhe87UbcFN6eFQ9UnnJZLQRe06lm2XJPDL4S
 KM/PAdzXcqAFKaYLWhcFPlVA2DN0kdiYoZgL2m3N0pHtbWXlpK2jNh+ZV7CKmtvnmUHeDsodYNA
 wAils5SFh2aFiJIAllh5y3blUxSjRVWolEu6irgi8NcbWEidCq03+1DRR9Jfb+BRcpMaxHF5PEg
 jUM9kbp3BFmuyW0vqhyfxJzGbqKIya2jN+wbVsSPEx8kFN8tIaHWdKfkffLeJy9voJGTWrfiKGh
 3AADJGmLhnpLLcaeeJAJleFaaqK2Mx3+NhpYzz2q0uePddqAaV6Yd+tmkULB4c4LuYdKbgf3qHK
 ifF9kCfWcfrRjNCInuWSK/tY3kV18n66PMhb2wCmQNWDC6tAccsE/3UJ8KbiqaTgdN35tn0Z7AG
 Wg=
X-Received: by 2002:a05:600c:3b07:b0:485:3abe:ab86 with SMTP id
 5b1f17b1804b1-486fedab424mr187730755e9.4.1774290506520; 
 Mon, 23 Mar 2026 11:28:26 -0700 (PDT)
Received: from turbo.teknoraver.net (net-37-119-137-97.cust.vodafonedsl.it.
 [37.119.137.97]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43b64714decsm28448751f8f.31.2026.03.23.11.28.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2026 11:28:25 -0700 (PDT)
From: Matteo Croce <technoboy85@gmail.com>
X-Google-Original-From: Matteo Croce <teknoraver@meta.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Mohsin Bashir <mohsin.bashr@gmail.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Date: Mon, 23 Mar 2026 19:28:21 +0100
Message-ID: <20260323182823.5813-1-teknoraver@meta.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774290507; x=1774895307; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=tVKv4h6csSNr26F3fg2SyyHjtvzkcdDJQ8W+IAxz4h4=;
 b=VbIafx7cjxk3HlDbihE3/9Wl9vgBbgvmwfGeCnJ7/9NzFAixSNtZukV8/4ZGTrqJ59
 YCZAimC6vuQXbwn6j1fFYm9ypnPWeiiHwX/SdgLmjrMHavhqAglBMHcv+tCp8iNfSOND
 NCTrrWSIORNhW6Hqo0XSAbiNDaD/MLjNxFfF5i1BncjvY9JfCg0S49mlZxCRigZ3d7El
 E7iC4N/r92eJtRlrNrX6BjO72Q7WJtJj3W8IOVsyodTF/dVL34cPmvg76ky3z6sqyjpv
 Rtn6tpJtjVQpPeGdqD2Ae3xEKhYbeE9TdX/hEqHVsJaQ82n/esIZ8zyP7pQq81wh1Fmx
 IU0Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=VbIafx7c
Subject: [Intel-wired-lan] [PATCH net-next v4 0/2] e1000e: add XDP support
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:mohsin.bashr@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com];
	FORGED_SENDER(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E9E112FB4B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add XDP support to e1000e driver. First patch adds basic XDP support,
while the second one adds support for AF_XDP.
Tested on an Intel 82574L Gigabit card with xdp-bench and xdp-trafficgen

v2: added a missing 'select PAGE_POOL' which triggered a build failure
with some configurations.
v3: removed a leftover file.
v4: bugfixes

Matteo Croce (2):
  e1000e: add basic XDP support
  e1000e: add XDP_REDIRECT support

 drivers/net/ethernet/intel/Kconfig         |   1 +
 drivers/net/ethernet/intel/e1000e/e1000.h  |  18 +-
 drivers/net/ethernet/intel/e1000e/netdev.c | 610 ++++++++++++++++++++-
 3 files changed, 617 insertions(+), 12 deletions(-)

-- 
2.53.0

