Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFwTL9+otWmw3AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:28:47 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9E028E704
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:28:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E5BF413D6;
	Sat, 14 Mar 2026 18:28:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IcWH-ramG8YF; Sat, 14 Mar 2026 18:28:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 690B6413D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773512922;
	bh=AzRfjfQpWVZCvzWQMidKmnmIxujMBJECx4zb/GyFV+8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4vWjm7g7mtmrkrXxzTV5dxg5xvyLUQoMTH6Wo1i6lPQWYBnn+eRyldDeGEF3ToE+D
	 rF1bdbGqYvo9b93Xtidj2ZM9FiUwQl6pT+/GqWUtIhS3Gz78tzSvUuF+xNKK6yPThB
	 fDeW2V17awYgsG/4jAt+04ueaDlzE9EZ5qPt2TwVEePayiiWwHJR1fW/yZPTF5giY9
	 f8kdlb8h4G663EBDMOda3MPSJBOIYR4FIOZEFKtDXMx5Iv+357OcZLoAzvEe4iXFDm
	 FRAyPqxYOxNn/Ws0ZA5R43zJ2mG234r6dQBphDrmWK8U83X/fC4IHffO3OFQM6Vuzy
	 PDaVDc89n66Mw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 690B6413D0;
	Sat, 14 Mar 2026 18:28:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 28C201B4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0E4C0413CA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:28:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JDyneoeYTIXK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Mar 2026 18:28:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0AB5640F74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AB5640F74
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0AB5640F74
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:28:39 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-2ae88e16485so22672955ad.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 11:28:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773512919; x=1774117719;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AzRfjfQpWVZCvzWQMidKmnmIxujMBJECx4zb/GyFV+8=;
 b=WKQQNWp1KILnNHNVFsMtQjl1nOt+U5DUzkEWSnEaxcVhF3D2AgtSQhWbNusszzRDd3
 Jyo+q8+1OnqfYcxEupyQ3PI26T402GkAQ6C2nkOQ30e4BHenXkyQVBbTChdaxpRrRFlp
 A2Go0YA5yoAW8etX55e7kmDwi5/SDnBIbwyyimomNJAYSojJEdKux0hcfRXeoMOhrl8p
 64sQAXO7wokdmXcgBXscRBwffRorssAKTk7GZbHulztBoE6jpRux+Lux4aL+tDMcBvmn
 JrzhNGvG6BR12ZNeRHUwfDHR30hLjby8N2k4GOePjW5vOHt0oYbwe7ld2dENo7nGVMdw
 z7QQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXla4AwzLl+agYMKI6rLN6X6jJKnileR7G79TKyKNlexA9o/xmJtQtl/NBMxhuuQu73EuVQnq5jkyQQ9ePQKPo=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyhf2afI7pSkV7cIWI3yEKQufKP8ghhv6u+V5bpfWDlXPMIHAEe
 aX5JAICFgj5g2KbV8Rbo+7wV2iYFUrZSSbUnmPeG4MJjI469pTNWjRUH
X-Gm-Gg: ATEYQzxWvQINz4hDTme4lJ5q4Cz6llHd50HtbTgaB/SUclhoCcwfgS1azCxG9esBiKv
 XuDazjkQ+P/IO+qczuIi2OcBEhsOQC62i9frp/eTD7hFXpmjBTzWhjqOquvdv39Mx9rtONSnQR3
 gFU1coK9OQyVUv7idx2beH8oBOg+1Qi50ZmGeWYWaUQpa8f4lC0KPtEKfCCB98Z9U2mJJbf8XDt
 SadBzzsFCBVG+NMIBx+V6DM4lJe07kw2PNLRzXme78o+F/ytCwzWXgbJx7BlpuBgD2mL8GCzkSp
 wBht/cr1a6/YHHC5Zwfw92Th99okr6T3dISLuWvcqOIpEDXT0PuwmrSbq6zpnBC+OYwID8LM5Qk
 5qaucZ5zQYbUay8VvgbPfdCemkGjmt0793qE4b+WRXGEnUojFIZHJpDX67SFXxUPondB627ip+y
 d3ifDONpQIYYEHQsqu1alGuJZDK4MxaXdHn1pQ5DaN9ZrqZusTNSsdyjcbN0VNlXrXwXxbX10ct
 5nb8A==
X-Received: by 2002:a17:902:ef03:b0:2ae:a429:fc42 with SMTP id
 d9443c01a7336-2aecac51329mr74086885ad.40.1773512919100; 
 Sat, 14 Mar 2026 11:28:39 -0700 (PDT)
Received: from localhost.localdomain ([122.168.66.151])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2aece62c581sm77673525ad.33.2026.03.14.11.28.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2026 11:28:38 -0700 (PDT)
From: I Viswanath <viswanathiyyappan@gmail.com>
To: stfomichev@gmail.com, horms@kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, eperezma@redhat.com, xuanzhuo@linux.alibaba.com,
 jasowang@redhat.com, mst@redhat.com, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 ronak.doshi@broadcom.com, pcnet32@frontier.com
Cc: bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 virtualization@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, I Viswanath <viswanathiyyappan@gmail.com>
Date: Sat, 14 Mar 2026 23:58:02 +0530
Message-ID: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773512919; x=1774117719; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=AzRfjfQpWVZCvzWQMidKmnmIxujMBJECx4zb/GyFV+8=;
 b=aRuu4WwIjICoV/MrDanymQIoO4e3AY7pcHyJTxNUFl/XQi1iH3RTMhEH7Z+5AfHf1D
 cJsOibmVGYsSplxz98CcE25C5KZ+tVK7HmRQIIsGr0uHAb6jdcMBoXcvR4x32rbzG3XY
 UM0DN6WmMPBMERPxper1c0MvPyNKTjM/j5FFlG1EBEEXFDBzTX8jMojMhqsdcVLYK4VE
 vRL/EnvaqpMDd7KDEegivwqkGpo1bIq1VvgxRfRVb89Xgrudh1tZvyZsr3iteFzxQLLS
 OA9gT57r5pvWdKVj/UL/w1u9MUr/iYH4MmeDw+5KJSRekQC762SujcmpgVEOIJRJD+QM
 CSpg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=aRuu4WwI
Subject: [Intel-wired-lan] [PATCH net-next v9 0/7] Introduce async callback
 ndo_set_rx_mode_async
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stfomichev@gmail.com,m:horms@kernel.org,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:davem@davemloft.net,m:eperezma@redhat.com,m:xuanzhuo@linux.alibaba.com,m:jasowang@redhat.com,m:mst@redhat.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:ronak.doshi@broadcom.com,m:pcnet32@frontier.com,m:bcm-kernel-feedback-list@broadcom.com,m:netdev@vger.kernel.org,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:viswanathiyyappan@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[viswanathiyyappan@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,redhat.com,lunn.ch,davemloft.net,linux.alibaba.com,intel.com,broadcom.com,frontier.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[broadcom.com,vger.kernel.org,lists.linux.dev,lists.osuosl.org,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viswanathiyyappan@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9F9E028E704
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an implementation of the idea provided by Jakub here

https://lore.kernel.org/netdev/20250923163727.5e97abdb@kernel.org/

The set_rx_mode callback is invoked under the addr_lock spinlock which
makes it illegal to sleep. This means set_rx_mode is prone to
sleep-in-atomic bugs as drivers have a tendency to do the I/O directly
in the callback.

This problem can be avoided if set_rx_mode were done in 2 stages: snapshot
and commit. A handful of drivers implement this idea by implementing the
rx_mode setting as work and scheduling it in the set_rx_mode callback.
This series moves that work to net/core by introducing a new async
netdev op set_rx_mode_async.

In the process of doing this, I encountered problems described in the
the first patch of the series. In brief, the patch introduces a state
variable to keep track of the current netdev state. This should be
useful for async netdev ops in general as nothing about these problems
was specific to set_rx_mode_async.

The rx_mode refactor has the secondary benefit of preventing RX mode
update requests from building up as only the most recent request
(before the work has run) will be committed.

In brief, the new RX mode update flow will look something like:

set_rx_mode():
    ndo_set_rx_mode();
    prepare_snapshot();

set_rx_mode_async():
    fetch_snapshot();
    ndo_set_rx_mode_async();

ndo_set_rx_mode_async() is called from a work item and the handler
doesn't hold the netif_addr_lock spin lock during its execution
making execution sleepable in that part.

This model should work correctly if the following conditions hold:

1. ndo_set_rx_mode_async should use the rx_mode set by the most recent
   call to prepare_rx_mode() before its execution.

2. If a prepare_snapshot() call happens during execution of the work,
   the work should be rescheduled.

3. All calls to modify rx_mode should pass through a new helper
   netif_set_rx_mode (which requires the instance lock or RTNL if the
   driver doesn't use it).

1 is guaranteed by the implementation and 2 by workqueue properties.

Drivers need to ensure 3.

---

v1:
Link: https://lore.kernel.org/netdev/20251020134857.5820-1-viswanathiyyappan@gmail.com/

v2:
- Exported set_and_schedule_rx_config as a symbol for use in modules
- Fixed incorrect cleanup for the case of rx_work alloc failing in alloc_netdev_mqs
- Removed the locked version (cp_set_rx_mode) and renamed __cp_set_rx_mode to cp_set_rx_mode
Link: https://lore.kernel.org/netdev/20251026175445.1519537-1-viswanathiyyappan@gmail.com/

v3:
- Added RFT tag
- Corrected mangled patch
Link: https://lore.kernel.org/netdev/20251028174222.1739954-1-viswanathiyyappan@gmail.com/

v4:
- Completely reworked the snapshot mechanism as per v3 comments
- Implemented the callback for virtio-net instead of 8139cp driver
- Removed RFC tag
Link: https://lore.kernel.org/netdev/20251118164333.24842-1-viswanathiyyappan@gmail.com/

v5:
- Fix broken code and titles
- Remove RFT tag
Link: https://lore.kernel.org/netdev/20251120141354.355059-1-viswanathiyyappan@gmail.com/

v6:
- Added struct netif_deferred_work_cleanup and members needs_deferred_cleanup and deferred_work_cleanup in net_device
- Moved out ctrl bits from netif_rx_mode_config to netif_rx_mode_work_ctx
Link: https://lore.kernel.org/netdev/20251227174225.699975-1-viswanathiyyappan@gmail.com/

v7:
- Improved function, enum and struct names
Link: https://lore.kernel.org/netdev/20260102180530.1559514-1-viswanathiyyappan@gmail.com/

v8:
- Implemented the callback for drivers e1000, 8139cp, vmxnet3 and pcnet32
- Moved the rx_mode config set calls (for prom and allmulti) in prepare_rx_mode to the ndo_set_rx_mode callback for consistency
- Improved commit messages
Link: https://lore.kernel.org/netdev/20260112181626.20117-1-viswanathiyyappan@gmail.com/

v9:
- Removed cleanup_work and simplified resource cleanup
- Added netif_async_ctx (which includes netdev state tracking) for async ndo handling in general
- Converted netif_schedule_mode_work to a synchronous function netif_set_rx_mode
- Renamed *_write_rx_mode functions to *_set_rx_mode_async

I Viswanath (7):
  net: core: Add state tracking for async netdev ops
  net: core: Introduce callback ndo_set_rx_mode_async
  virtio-net: Implement ndo_set_rx_mode_async callback
  e1000: Implement ndo_set_rx_mode_async callback
  8139cp: Implement ndo_set_rx_mode_async callback
  vmxnet3: Implement ndo_set_rx_mode_async callback
  pcnet32: Implement ndo_set_rx_mode_async callback

 drivers/net/ethernet/amd/pcnet32.c            |  65 +++-
 drivers/net/ethernet/intel/e1000/e1000_main.c |  77 +++-
 drivers/net/ethernet/realtek/8139cp.c         |  49 ++-
 drivers/net/virtio_net.c                      |  85 ++---
 drivers/net/vmxnet3/vmxnet3_drv.c             |  46 ++-
 include/linux/netdevice.h                     | 123 ++++++-
 include/net/netdev_lock.h                     |   8 +
 net/core/dev.c                                | 335 +++++++++++++++++-
 8 files changed, 663 insertions(+), 125 deletions(-)

-- 
2.47.3

