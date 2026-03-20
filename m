Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBHyKb+BvWk4+gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 18:19:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C932DE7CC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 18:19:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C02B84942;
	Fri, 20 Mar 2026 17:19:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qmzjr47vCQ8n; Fri, 20 Mar 2026 17:19:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2353484940
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774027195;
	bh=tFhDSJQ4+P/KK+sAv0QkEo3dxSGCedmuq7aAynQlV4w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XXB3Pfuy8cQfRODLQ6DM0INB8XF+XZDd2VWdypa8Dd+tjZs9Q30iPVuRmN97QYHt4
	 5Jg+PeY1eLEksl6WvjVLwEYTEcntQjA4rxsGiw1TBUmD0Ew+CN1yDnP1TtdDAY8uOX
	 G3Mx7GyXCvCnL/iLLpmG/Z3xU7O/SCmGeGtfoY6MBcL/DjTqBhAqHrsmyrgt9XNOrC
	 /2S+zwvDOnb1OfXmZMR2ZX8l/zSCjK+ZYVZaADG3QlH3FFk0+g2OWoq4D+X7aOpm70
	 zES7fGuXPxgkI6NCqJykTtRq9Hr6MpU7SOyay9+7K87eBMb0bx5uNfmQvS+q2bIbtI
	 EXS1XWRcrY8gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2353484940;
	Fri, 20 Mar 2026 17:19:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D9D101B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CB648413D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:24:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BqBEkTw-jfAo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 13:24:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=technoboy85@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E0AA44014E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0AA44014E
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0AA44014E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:24:01 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-48334ee0aeaso16950565e9.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:24:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774013040; x=1774617840;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tFhDSJQ4+P/KK+sAv0QkEo3dxSGCedmuq7aAynQlV4w=;
 b=K1Zw7P04Gh0IYTnDeUzHVTwfeQaVjA5zKZH9RzBrT6Ech41qX344jsFm6G72f6BRHp
 UI+GGXe5h95zSu9J0JApqp9FCnoq/rbAPjVYOhSX9xag1+5ZDVBU4AqhudqfVAcDZfyF
 8i/KPbckSjFOnAxeGAG1fF/CiySsP+NV30JexpjPHPFUn6UDzVhTPHuLZvUCw7py7bnB
 TQEiqwbj347b2Z0fl/Ydzlb/asbd9VrOnIG94JkEJ9z6NSWUYNYPrOtiImYw76RFV9b1
 8w8k/rGT5eZ3qCAkT7ij6LhCcm0VytKuB3fUD7kXXz07+oJbyMXY9o1WnG8uCeOsMgNV
 AuVQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVS1XD+W/A2CsnRZmJ7CspU3K9TzxkrFR2NRSP+CQ8U4Gimy+SQNw8NZHYSHvDxaDunVvdte2/qfiB6AIHx1KM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzTcQCunoE/fYgqzQTSbZ6AyITDaGJqrsV3bM4QMNJeZIRs5e9I
 bOpAZH2jAYf7uWyZmVI0liInxvkJDPAz/iHECVwn1YqUKTfxsCEIkHK6
X-Gm-Gg: ATEYQzzOBwvDwmA2tRVoMYLGUHV9+Ja+osbGsavA2mGJYVjde4TkBffgrZ79BjbAPhF
 yaypa+Pi3OcB0PiCAse31ryhrr8pq/JaURrHQsYXwhHOE3ZvaEmkBKmbS+ihEmavHg7I6Bcy84D
 W9KLJ4v7Zy+my2kcZkWQxfo8WlUsZ+4x0Nv7Z3bPpOSJfaJmmurLYRwAaDhs8j33wcwuUPZMlYU
 XQDCKPESYKZ6oWU70eMlN/wQAIi/pe3mQPaR54nn7tns8dxRwerDrSkc2TOSDxF9RuNoLDXyVNf
 UchzTA/+g7FnsZvs/1RLYhufMP7Ts4+rCrhvNbtmuz5EqMW6djD8sfEbuvftxHimjRQET0zcNNG
 wbiZfKepUF3gq9VENO2GDnG1fPAVc0trpmYQpLQiUOZj9UsW4rwaYnV+j7krAUghOI0UjtzjLJg
 XfAZLQJw4OjJQJwE3bxAQxEnio4cdNgsTv0suL77TbxOvXoIFilyYkPs7oLru9KyeBPkufxHVG
X-Received: by 2002:a05:600c:8119:b0:485:345b:ccb1 with SMTP id
 5b1f17b1804b1-486ff031f5dmr39443345e9.27.1774013039582; 
 Fri, 20 Mar 2026 06:23:59 -0700 (PDT)
Received: from turbo.teknoraver.net (net-5-95-156-124.cust.vodafonedsl.it.
 [5.95.156.124]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-487004e7bc4sm16427095e9.2.2026.03.20.06.23.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2026 06:23:58 -0700 (PDT)
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
 John Fastabend <john.fastabend@gmail.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Date: Fri, 20 Mar 2026 14:23:54 +0100
Message-ID: <20260320132356.63194-1-teknoraver@meta.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 20 Mar 2026 17:19:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774013040; x=1774617840; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=tFhDSJQ4+P/KK+sAv0QkEo3dxSGCedmuq7aAynQlV4w=;
 b=NJLAlMNDtxSebypneUo0M1/JPKPV+Jp0gD5ouye4hLtuwT50jR1XQ9/ojb2WaGSHrd
 rvDPE/Az4cgFUd6MPOZB67iTIq+Q01unHHTenD2TRGjVyVkOPOy098nmN3naP9aHCD4Q
 hEuF2LCGQ7GC9AaLzA+92PpcQBG8mX7x7TLHqKcwm4BXi8NWxh6gjQiQi6je6pXj0eMc
 ApLawjzIPTp8O6BsdExp2t9eWlepoME5r4ssGPiQbNM9P4x7QY3QV2FzkS0xaBMIvrR6
 2wl8XgEGx+JMBApRyppvE6Hwri7tVk59oCUeFNwpX1/VmtQwXyAVMc9FUZfX799hjSNb
 VTvg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=NJLAlMND
Subject: [Intel-wired-lan] [PATCH net-next v3 0/2] e1000e: add XDP support
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,meta.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 36C932DE7CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add XDP support to e1000e driver. First patch adds basic XDP support,
while the second one adds support for AF_XDP.
Tested on an Intel 82574L Gigabit card with xdp-bench and xdp-trafficgen

v2: added a missing 'select PAGE_POOL' which triggered a build failure
with some configurations.
v3: removed a leftover file.

Matteo Croce (2):
  e1000e: add basic XDP support
  e1000e: add XDP_REDIRECT support

 drivers/net/ethernet/intel/Kconfig         |   1 +
 drivers/net/ethernet/intel/e1000e/e1000.h  |  18 +-
 drivers/net/ethernet/intel/e1000e/netdev.c | 600 ++++++++++++++++++++-
 3 files changed, 607 insertions(+), 12 deletions(-)

-- 
2.53.0

