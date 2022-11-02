Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C916161664A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 16:36:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2652A40A1B;
	Wed,  2 Nov 2022 15:36:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2652A40A1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667403370;
	bh=szl/74EJhK3xxeC1bleIZMj1L4bPCuvpO2uRwvi8j+I=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eAk0C2ZAXBOeOuGU2KWW94g1xuvCDkcZA1qFTl3l8wapS+Iqk7jt7df4taVa9+sSz
	 LuKZdwgARVenJCWT4rqhr2gAYlkHH6G4LcMzqk0DcZ3T6LahCoTy9DF0EgxGRmeFD+
	 zyN6YFP4qfxKHRY5mnx+UeEHqgVNrhmvLlI5TURoVFNpA4ka+JX1TmFccYcyBUDURT
	 HFTo0FlUylHC3hW0cK3qxjNYo2F2jqMNl2Kqnj30XPepBAkreoKxee1kMJT4beZj0+
	 Ynu7tPgkYBJw/cIwzgldADfK3HUCVMUkWsmLIY14ypdsnG1fOaVayAP3BNnyJw2xjf
	 ihmWM8J1ZHE0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9yu-GABZda1B; Wed,  2 Nov 2022 15:36:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 181D940A8D;
	Wed,  2 Nov 2022 15:36:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 181D940A8D
X-Original-To: Intel-wired-lan@osuosl.org
Delivered-To: Intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8CB9B1BF3DB
 for <Intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 10:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 73DBE402E7
 for <Intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 10:18:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73DBE402E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HWAVbsHFBKM3 for <Intel-wired-lan@osuosl.org>;
 Wed,  2 Nov 2022 10:18:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96D8F400E4
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 96D8F400E4
 for <Intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 10:18:45 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id q9so44070087ejd.0
 for <Intel-wired-lan@osuosl.org>; Wed, 02 Nov 2022 03:18:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:date:message-id:subject:mime-version:content-transfer-encoding
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MS71m6Xz/eAlqZp5cWZsVXBfS3768AcWxlB/kO8yxC0=;
 b=OKlqg7yf6ROEJQXAAFc0TxtS/34sia35ZfwQ3SXozOOo+pTj/0ThSt7CCIDsu7d/ar
 TPE5BvL+NkhilVhRcK8/RXdyxo+pV0A6bIT30wF1PA4UAT5cxARpSCOCQCFZTVEyAjcG
 HoGbMsD3rrj+m5hjqrHSaDe5/Th9T8wEer2RI3jwLbXLk907yU6kjQDGROYbltydE4jo
 qmZUuH7ueHlxV6C2lgAc5ER9lMq487g3fgZNiMK5JmVSrSqTs01tKikM2F0mWDGroyki
 BN72haVPtFJUlC4j2NvC3MQH9SnQr4jtGIi8WwdPGibYCVL9WQJgU8Wql80OSUQDaq9L
 33JA==
X-Gm-Message-State: ACrzQf2PT8L0TE4N6S06AO65AICmoW9pDXJcvZKUkZGvlrCULGWoBczK
 hEIGzyTXMG+ahgOqYskIYoI=
X-Google-Smtp-Source: AMsMyM7wW0G4lVtRUDjnLKv7gdgx6iMdZT4nL19seZc0Wp/BRw74DA/zBwqO+7IkShfbvBpTGEPKSg==
X-Received: by 2002:a17:907:e93:b0:7ad:923a:5908 with SMTP id
 ho19-20020a1709070e9300b007ad923a5908mr23383356ejc.396.1667384323832; 
 Wed, 02 Nov 2022 03:18:43 -0700 (PDT)
Received: from smtpclient.apple ([178.254.237.20])
 by smtp.gmail.com with ESMTPSA id
 j1-20020a17090623e100b007adbd01c566sm834223ejg.146.2022.11.02.03.18.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Nov 2022 03:18:43 -0700 (PDT)
From: Martin Zaharinov <micron10@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Message-Id: <5806E6B7-C64D-4DE2-A5FC-ECD1723DE325@gmail.com>
Date: Wed, 2 Nov 2022 12:18:42 +0200
To: Eric Dumazet <edumazet@google.com>, Wei Wang <weiwan@google.com>,
 Intel-wired-lan@osuosl.org, david.switzer@intel.com,
 netdev <netdev@vger.kernel.org>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Mailman-Approved-At: Wed, 02 Nov 2022 15:36:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:date:message-id:subject:mime-version:content-transfer-encoding
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=MS71m6Xz/eAlqZp5cWZsVXBfS3768AcWxlB/kO8yxC0=;
 b=DG2XlJ2ru/I5xYW2PUv3oiyqA2kOIN1SuCQc+uGGy1CB/Up3oGtftX0S2YrbO44Pf7
 j58JJMzTeNbAz4RDPdqRaPa4DdtqhBtL1HZcqVW7GxRcFLasxK1Gs1lKuGy/F7N1BK4Q
 +XTzEdRIdDfLc8HN09kQz7q0sjcNadOZUquJLMq5vzOqDB9ozPRq7hKUGXXShARQA1Ip
 DQ6tSrnnQQBg0FUzl0P+WsEFr2leInnRMeSFJFiDVDTVoAeC0z1n16CIlYN/TSuOQ1sW
 QlIhNiPKbnEm7Iygo4+qWH9W2fqP54vfPSu8q67zcCeQX6n2YhZPXgUiQxKEnd7cMXXq
 s9ew==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=DG2XlJ2r
Subject: [Intel-wired-lan] Bug Report napi_pool i40e gro
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgVGVhbSAKUmVwb3J0IG9uZSBidWcgLCBpZiBmaW5kIGEgcHJvYmxlbSBhbmQgbWFrZSBmaXgg
YWRkIG1lIC4KCls5ODIxOC40NTA3NTddIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0t
LS0tLQpbOTgyMTguNTA0MDc3XSBsaXN0X2FkZCBkb3VibGUgYWRkOiBuZXc9ZmZmZjhiMjQ1NWEw
MjkwMCwgcHJldj1mZmZmOGIyNDU1YTAyOTAwLCBuZXh0PWZmZmY4YjI0MDU5OGQ5MTguCls5ODIx
OC41NTg2ODJdIFdBUk5JTkc6IENQVTogMCBQSUQ6IDI2NDQgYXQgbGliL2xpc3RfZGVidWcuYzoz
MyBfX2xpc3RfYWRkX3ZhbGlkKzB4OTAvMHhhMApbOTgyMTguNjEyNzM3XSBNb2R1bGVzIGxpbmtl
ZCBpbjogbmZ0X2xpbWl0ICBwcHBvZSBwcHBveCBwcHBfZ2VuZXJpYyBzbGhjIG5mdF9mbG93X29m
ZmxvYWQgbmZfZmxvd190YWJsZV9pbmV0IG5mX2Zsb3dfdGFibGUgbmZ0X29ianJlZiBuZnRfbmF0
IG5mdF9jdCBuZnRfY2hhaW5fbmF0IG5mX3RhYmxlcyBuZXRjb25zb2xlIGNvcmV0ZW1wIGJvbmRp
bmcgaTQwIGl4Z2JlIG1kaW9fZGV2cmVzIGxpYnBoeSBtZGlvIG5mX25hdF9zaXAgbmZfY29ubnRy
YWNrX3NpcCBuZl9uYXRfcHB0cCBuZl9jb25udHJhY2tfcHB0cCBuZl9uYXRfdGZ0cCBuZl9jb25u
dHJhY2tfdGZ0cCBuZl9uYXRfZnRwIG5mX2Nvbm50cmFja19mdHAgbmZfbmF0IG5mX2Nvbm50cmFj
ayBuZl9kZWZyYWdfaXB2NiBuZl9kZWZyYWdfaXB2NCBhY3BpX2lwbWkgaXBtaV9zaSBpcG1pX2Rl
dmludGYgaXBtaV9tc2doYW5kbGVyIHJ0Y19jbW9zCls5ODIxOC44ODU0NzddIENQVTogMCBQSUQ6
IDI2NDQgQ29tbTogbmFwaS9ldGgxLTYxMiBUYWludGVkOiBHICAgICAgICBXICBPICAgICAgIDYu
MC42ICMxCls5ODIxOC45NDA4MTddIEhhcmR3YXJlIG5hbWU6IFN1cGVybWljcm8gU1lTLTYwMjhU
Ui1IVFIvWDEwRFJULUgsIEJJT1MgMy4zIDEwLzI0LzIwMjAKWzk4MjE4Ljk5NTU0Ml0gUklQOiAw
MDEwOl9fbGlzdF9hZGRfdmFsaWQrMHg5MC8weGEwCls5ODIxOS4wNDkyNTRdIENvZGU6IDg5IGM2
IDRjIDg5IGMyIDQ4IGM3IGM3IDYwIDAzIDA3IGE3IGU4IDViIDE0IDRmIDAwIDBmIDBiIGViIGMx
IDQ4IDg5IGYyIDQ4IDg5IGMxIDQ4IDg5IGZlIDQ4IGM3IGM3IGIwIDAzIDA3IGE3IGU4IDQyIDE0
IDRmIDAwIDwwZj4gMGIgZWIgYTggNjYgNjYgMmUgMGYgMWYgODQgMDAgMDAgMDAgMDAgMDAgOTAg
NDggOGIgMTcgNDggOGIgNGYKWzk4MjE5LjE1NzkwNF0gUlNQOiAwMDE4OmZmZmZhZmEyY2NiMWJl
MTggRUZMQUdTOiAwMDAxMDI5NgpbOTgyMTkuMjEyNjkwXSBSQVg6IDAwMDAwMDAwMDAwMDAwNTgg
UkJYOiBmZmZmOGIyNDU1YTAyOTAwIFJDWDogMDAwMDAwMDBmZmVmZmZmZgpbOTgyMTkuMjY3MDI4
XSBSRFg6IDAwMDAwMDAwZmZlZmZmZmYgUlNJOiAwMDAwMDAwMDAwMDAwMDAxIFJESTogMDAwMDAw
MDBmZmZmZmZlYQpbOTgyMTkuMzIwMzEzXSBSQlA6IGZmZmY4YjI0MDU5OGQ4MTAgUjA4OiAwMDAw
MDAwMDAwMDAwMDAwIFIwOTogMDAwMDAwMDBmZmVmZmZmZgpbOTgyMTkuMzcyNTI1XSBSMTA6IGZm
ZmY4YjMzNTY2MDAwMDAgUjExOiAwMDAwMDAwMDAwMDAwMDAzIFIxMjogMDAwMDAwMDAwMDAwMDAw
MwpbOTgyMTkuNDIzNjA5XSBSMTM6IGZmZmY4YjI0MDU5OGQ5MTggUjE0OiBmZmZmOGIyNDU1YTAy
OTAwIFIxNTogMDAwMDAwMDAwMDAwMDAwMApbOTgyMTkuNDc0NzY3XSBGUzogIDAwMDAwMDAwMDAw
MDAwMDAoMDAwMCkgR1M6ZmZmZjhiMmI1ZjYwMDAwMCgwMDAwKSBrbmxHUzowMDAwMDAwMDAwMDAw
MDAwCls5ODIxOS41MjU0MjZdIENTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAw
MDAwODAwNTAwMzMKWzk4MjE5LjU3NTAzNV0gQ1IyOiAwMDAwMDAwMDAwOThmNzkwIENSMzogMDAw
MDAwMDkxM2JjODAwNSBDUjQ6IDAwMDAwMDAwMDAxNzA2ZjAKWzk4MjE5LjYyNTIwM10gQ2FsbCBU
cmFjZToKWzk4MjE5LjY3NDAyM10gIDxUQVNLPgpbOTgyMTkuNzIxNjk4XSAgbmFwaV9ncm9fcmVj
ZWl2ZSsweDgzLzB4MTgwCls5ODIxOS43Njk0ODhdICBpNDBlX25hcGlfcG9sbCsweDMxMC8weDdi
MCBbaTQwZV0KWzk4MjE5LjgxNjM0MF0gID8gX19uYXBpX3BvbGwrMHgxMzAvMHgxMzAKWzk4MjE5
Ljg2MjA0N10gIF9fbmFwaV9wb2xsKzB4MjAvMHgxMzAKWzk4MjE5LjkwNzcxNl0gIG5hcGlfdGhy
ZWFkZWRfcG9sbCsweDEyMy8weDEzMApbOTgyMTkuOTUyNDQ2XSAga3RocmVhZCsweGFlLzB4ZDAK
Wzk4MjE5Ljk5NTk1MV0gID8ga3RocmVhZF9jb21wbGV0ZV9hbmRfZXhpdCsweDIwLzB4MjAKWzk4
MjIwLjAzOTgzOV0gIHJldF9mcm9tX2ZvcmsrMHgxZi8weDMwCls5ODIyMC4wODI2MzFdICA8L1RB
U0s+Cls5ODIyMC4xMjQwODJdIC0tLVsgZW5kIHRyYWNlIDAwMDAwMDAwMDAwMDAwMDAgXeKAlAoK
CkJlc3QgCgpSZWdhcmRzLApNYXJ0aW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
