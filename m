Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8434D14B6F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 19:18:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CDCB60D88;
	Mon, 12 Jan 2026 18:18:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rvc5PGqe8JBG; Mon, 12 Jan 2026 18:18:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64D1360D89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768241926;
	bh=yhpaAlKW26OhYlxc15mNDWFg1nSuNxZpLWCT9AQiLQU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zpVVhtOZ91aZPDT7/GOr0GGEtEBKHRt3vDotyB8PMJfP/WYfnV9iivBuEGYWGmW+1
	 KsibKVI6bem8fZBn7aeoy/E4Y0QqPSw4IB6oTiXZCdrWSLJruDzZemHiQAaAslIuqi
	 zBzsMRdcwOl/yMuZRi7pWN0NMmPE58k6zXHFTn+JKzpWAqaGvfn/f6PmBQPBzZVKeE
	 nVP7fFURS+yGo/YHLku/q89ocvIKmuhymHNhtkGr+1LP3NmwU1fj+DDipqV6oHrViq
	 wvL+huS3/f9M+Yy5Iwq3uJqjk91XBAOcLAqoK3JZN8ZRhDZEE6bCz48JcPhmrknzCO
	 FvZS4B0IQSNIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64D1360D89;
	Mon, 12 Jan 2026 18:18:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EC50C18D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE5CF83D1C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ePLB_nEO-3Wq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 18:17:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42b; helo=mail-pf1-x42b.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 77EAA83CF8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77EAA83CF8
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77EAA83CF8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:00 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id
 d2e1a72fcca58-81f3fba4a11so1870381b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 10:17:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768241820; x=1768846620;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yhpaAlKW26OhYlxc15mNDWFg1nSuNxZpLWCT9AQiLQU=;
 b=hFdX/t91G2cMNQvuvQqH+PRGV/2OUXLdLd9oNC54wfkN9zE6veqlqkSFhc+wTbBVkC
 uHethqkIGrQtNv4gQbGHFSbN+uC0NxSz7ZJ9y+fPS99ZC2wM8RAW9h1I6sjieqBvew68
 ttL8qNZnoVCEZsGzEMloFfNPdAKkIzFo2nSbIqsvgs9cHWhiERpwzBg5VbX0xHGIIfDr
 AYrD9oTxs8OrUTZUgSum8fEXau06xvYhTmwy5IXpnVpMEq2c/WHqRoXk4dIPOsF2X1VS
 iEDxjcRAXkoRbfpFE6/QruwK+f6AJhefyC5/SBzSIZueUT4po7+ahT50rPzTbI0gp4kQ
 o10A==
X-Forwarded-Encrypted: i=1;
 AJvYcCU1/BJbQhmh6xZzQfuL//fhSgbQuX0fVIcDDmctFBRMXsMkg4Lcsv5oqNYUsYGUVSyZCJyLOb3PrCGWJ/0xPr4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwtCH2i1sTpbzPLGqmxSrKnY1reC8/d8xZWkwFoDpdKjbCeqfUi
 EZTVzRNwQcXJzRwUNajCZgT7wbTF3asIJh37YOnQhGPNGFXReiTDxkrpC7TX5g==
X-Gm-Gg: AY/fxX4f0Dy+1Nxsw2nBXmDsd//yK/hEg9yJBFnsf9WLkcTNnMkX3T95BE8t3CgQTGI
 1pUzObfXgPvLnidt/9jnskr81qNTJIJKTc4uw2WTYs7L/yII4fIJzPh0LUOx6aa1TYIFX9BHZ8Y
 OHdd4qx4GIlsj6j6B/wW9iwrpCdTdIxPk559Av+V6hgHvrCmmHRlxFnEy8SQYniPL0lDop4A24C
 r6eEwfEgdVBs3Ln/WLZwfBG8RZAQcJk9rjRCBy/UvdMahi9nm/mft7cplVk5ND/jWdyxl1bMSut
 qDDJrkorrNN79sVw3fVXmVDWj75STxOBYZB21d5O6pH/bekZjfWv03lxdIDQnXejRdpzTcmV5ad
 LKI+PvD6HGaG+YevPlmAxNxvMBUFQlAOqH8ElndyXtwL4VAto6iL+iMX4Ss65bgajjeiSgsoOYQ
 Yx8ZEl4Eztx1KQ7lGQfUe42mXKCgdXGUvnsT4MeCqeryf+EIENxoaoLJo/2FRcPFaO9Q==
X-Google-Smtp-Source: AGHT+IHCbvxDzVKglJnQ5DCOnCgrWdajUJ3xC4WJMbnpDbcyewmJC9+3bPGSnBu1mkm93FTZAHDPBA==
X-Received: by 2002:a05:6a21:6da4:b0:375:4426:e78b with SMTP id
 adf61e73a8af0-3898f9f0e9dmr17726103637.71.1768241819635; 
 Mon, 12 Jan 2026 10:16:59 -0800 (PST)
Received: from localhost.localdomain ([122.183.54.120])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-34f5f7c4141sm18165365a91.6.2026.01.12.10.16.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jan 2026 10:16:58 -0800 (PST)
From: I Viswanath <viswanathiyyappan@gmail.com>
To: edumazet@google.com, horms@kernel.org, sdf@fomichev.me, kuba@kernel.org,
 andrew+netdev@lunn.ch, pabeni@redhat.com, jasowang@redhat.com,
 eperezma@redhat.com, mst@redhat.com, xuanzhuo@linux.alibaba.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 ronak.doshi@broadcom.com, pcnet32@frontier.com
Cc: bcm-kernel-feedback-list@broadcom.com, intel-wired-lan@lists.osuosl.org,
 virtualization@lists.linux.dev, netdev@vger.kernel.org,
 I Viswanath <viswanathiyyappan@gmail.com>
Date: Mon, 12 Jan 2026 23:46:20 +0530
Message-ID: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 12 Jan 2026 18:18:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768241820; x=1768846620; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=yhpaAlKW26OhYlxc15mNDWFg1nSuNxZpLWCT9AQiLQU=;
 b=eG6d2JmhRiEPrO61awKn9z8TA30MtDhiepLo4IXy24Z48XlD65TxqqTJ7BTUsza984
 7sLff6gQA9sio4evREmLzNsTkmYfgbpZNcM1oJgm3nFaL60c+6yx/XOL4tkG5WEl0nR5
 4D0rdBqCQf1FGg5XfQrzKGJa1fRFPzNP5wHNUcKmgDHSsEiDdizICBvXX8zyTLyWakiC
 cEZn9EVgbnCA1EnAiZQ8QML5b+OyaFN0hchx/yiSzwfD14uOG0CooCwdgFFM62jemVVu
 X/L3lf+UNsvUWr6ANkaxRwHiHWiLY3gk5lZFZtXDRYEVQ68HQN1p+LyL7U1wP2qg3Cdw
 F/hA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=eG6d2Jmh
Subject: [Intel-wired-lan] [PATCH net-next v8 0/6] net: Split
 ndo_set_rx_mode into snapshot and deferred write
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

This is an implementation of the idea provided by Jakub here

https://lore.kernel.org/netdev/20250923163727.5e97abdb@kernel.org/

ndo_set_rx_mode is problematic because it cannot sleep. 

To address this, this series proposes dividing the concept of setting
rx_mode into 2 stages: snapshot and deferred I/O. To achieve this, we
change the semantics of set_rx_mode and add a new ndo write_rx_mode.

The new set_rx_mode will be responsible for customizing the rx_mode
snapshot which will be used by write_rx_mode to update the hardware

This refactor has the secondary benefit of stopping set rx_mode
requests from building up as only the most recent request (before the
work has gotten a chance to run) will be confirmed/executed.

In brief, the new flow will look something like:

set_rx_mode():
    ndo_set_rx_mode();
    prepare_rx_mode();

write_rx_mode():
    use_snapshot();
    ndo_write_rx_mode();

write_rx_mode() is called from a work item and doesn't hold the 
netif_addr_lock spin lock during ndo_write_rx_mode() making it sleepable
in that section.

This model should work correctly if the following conditions hold:

1. write_rx_mode should use the rx_mode set by the most recent
    call to prepare_rx_mode() before its execution.

2. If a make_snapshot_ready call happens during execution of write_rx_mode,
    write_rx_mode() should be rescheduled.

3. All calls to modify rx_mode should pass through the prepare_rx_mode +
	schedule write_rx_mode() execution flow. netif_schedule_rx_mode_work()
    has been implemented in core for this purpose.

1 and 2 are implemented in core

Drivers need to ensure 3 using netif_schedule_rx_mode_work()

To use this model, a driver needs to implement the
ndo_write_rx_mode callback, change the set_rx_mode callback
appropriately and replace all calls to modify rx mode with
netif_schedule_rx_mode_work()

Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
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

I Viswanath (6):
  net: refactor set_rx_mode into snapshot and deferred I/O
  virtio-net: Implement ndo_write_rx_mode callback
  e1000: Implement ndo_write_rx_mode callback
  8139cp: Implement ndo_write_rx_mode callback
  vmxnet3: Implement ndo_write_rx_mode callback
  pcnet32: Implement ndo_write_rx_mode callback

 drivers/net/ethernet/amd/pcnet32.c            |  57 +++-
 drivers/net/ethernet/intel/e1000/e1000_main.c |  59 ++--
 drivers/net/ethernet/realtek/8139cp.c         |  33 ++-
 drivers/net/virtio_net.c                      |  61 ++--
 drivers/net/vmxnet3/vmxnet3_drv.c             |  38 ++-
 include/linux/netdevice.h                     | 112 +++++++-
 net/core/dev.c                                | 265 +++++++++++++++++-
 7 files changed, 522 insertions(+), 103 deletions(-)

-- 
2.47.3

