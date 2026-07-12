Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eOEBGC+VU2olcAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Jul 2026 15:22:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 642B1744C7A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Jul 2026 15:22:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=2r3gnQCE;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 988F540AAC;
	Sun, 12 Jul 2026 13:22:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9cIVXzJpR39b; Sun, 12 Jul 2026 13:22:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2421840A99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783862571;
	bh=f+YFzVviG3DzxMqpa6xeKwhT6SuFAN+/OdOMSnwiZgU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2r3gnQCErdDue3M2gRiSLLx3UDlUBs73JV5ggG5Hy36iaxg4Ymxw+LCzbEDqV+odV
	 przVBdopBQTFraXp0ZZrASkT4qdcMPe3NNwMeXzX5kYIK69Vb355bC8d6oYEmefq8I
	 /Eg5Ha2HYNFoMgn/q0eLTA0vBiUcGMzMYRSCjCJgkiTrDOtmlyeRYoEwE/lpAP0g9c
	 NoV7otEq83NWztgj2a02wePbIcwN9mBgVAoLT1+q5BFiKCuwdZ+sQDcKgLYmXdqU5m
	 vU41wqUSILyVyHhezbWKpYV+m3FY5LWELyl0Im6YZHViOTiuostt7I4NyGKOs4MIBL
	 N/VT/6lYzUsLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2421840A99;
	Sun, 12 Jul 2026 13:22:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BEA962EE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jul 2026 13:22:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B03B140A8C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jul 2026 13:22:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YSTKCQzC4eFm for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Jul 2026 13:22:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=devnexen@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BBE9240A8A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBE9240A8A
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBE9240A8A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jul 2026 13:22:48 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-490cf322ed0so16068005e9.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jul 2026 06:22:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783862566; x=1784467366;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=f+YFzVviG3DzxMqpa6xeKwhT6SuFAN+/OdOMSnwiZgU=;
 b=RsgM1oB9L1PVZGJSGIMXKwKBw5PYf11IK3hBB1ydnp3NlWQgsHDQ50Q45bOHZ6ZeOX
 GXjF3sEcBUPosyyGJ3hySQIxjC4ZBbTD4NTw5YVp0I2kRvHR0I1i2GeVZbDQvXF27VdD
 BSY++DfBU0hHgSM6As7V9m5xGLRQUbB0dL9PVtlmAYEVw9NdykXQ6va0CLmklzw3rfNp
 j0w9p6DJ3qE38kMrPvYVbYSCterk/OE1UA+Kxcq6UJ9GwfKal1RnZNFhHtr5mJ+qBBAg
 NAygXl5mFP8+ULfDfwedLds8PQgVP7nIr9TLxltuniVmze58Tov2GXVfwPryDot2gMhr
 1SyA==
X-Gm-Message-State: AOJu0Yy0kEgRpdWM53rx3YpAGHc3/BqhFU1W4QOFqsNluMQadIf2Nnao
 2uRKHbwcjgXVBbreeCzodxSPd3biSuAmOjb80liQub4LklT7jjZ8F9iydft/4Q==
X-Gm-Gg: AfdE7cnt44/BIAmSoF1y6DxzzlAMLUIk7RWzzW1tXDgVLXnk+aMs3Okvor+fkowIzRA
 fUuNuGDyF3qpHLWCiphK+3TWiKZJSB1w8b9vuf208/iL5BA4DgJ8j71Svlxh8bHYH4xl+TnTHBY
 nQAduMyiEqhwqA8xCgs/dTf4Uaoxkpmk84hwP7z35KcC0zOEMMuAZ0uJtbuo4NhfiDA6KOSAXqa
 E8x3oDnj3HZiUppEOpdcXsiXaTuTDfksL1vnCyhrdmruOQdXB/mdNa2qpNIpUQsg20Ya2HzRFtU
 UrUr0M4R1AUBhd2VrQSLwifF+ZTcNUV8EvyI17guLTI7rGS5+sc6pqlb5jAHKOAHU8+ZGKmUCq0
 KZgRFjtGIZgayEbELZ9Zr9gcDhxTTNj80AWiPnrouiYbZ2PAZ9Zz8EdGpzxi6xRkJNC6Y0QV3Jy
 fRAaMGCdf5UFHrFqKwdwFFcvZpfwgbI3scA8YO5R9MXhJZLjjes31n0VhgpEWBBPVlNvSMzwxh
X-Received: by 2002:a05:600c:8b52:b0:492:53e8:3bc1 with SMTP id
 5b1f17b1804b1-493f87f3cffmr58484955e9.17.1783862566268; 
 Sun, 12 Jul 2026 06:22:46 -0700 (PDT)
Received: from dohko.chello.ie (188-141-5-72.dynamic.upc.ie. [188.141.5.72])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-493f4cbc620sm180883955e9.13.2026.07.12.06.22.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jul 2026 06:22:45 -0700 (PDT)
From: David Carlier <devnexen@gmail.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 maciej.fijalkowski@intel.com, aleksandr.loktionov@intel.com,
 advoretsky@gmail.com, stable@vger.kernel.org,
 David Carlier <devnexen@gmail.com>
Date: Sun, 12 Jul 2026 14:22:42 +0100
Message-ID: <20260712132242.223254-1-devnexen@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783862566; x=1784467366; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
 bh=f+YFzVviG3DzxMqpa6xeKwhT6SuFAN+/OdOMSnwiZgU=;
 b=THm0R2LxCB0Wu0COy1yKXnMziZTQFJYrq8X54phV+6xxE6yyTP0YFkvaxT8rQA83jF
 rcBiAU2No/6C4JdEGGRH2tpM+9GBs044Ed/zbJx8caMM0UH7TydOwpSfsCEM9ZuCuXMH
 Vk8H9GN8MoLEm8GXjkHrCl6uvaPYMGH8Mwmplhuu7P326JJmr08Qxp/fyDSyokewD9w/
 YDimcNgrqtrliqLNzgQNDmRmTsxus/3zWjTSqpRMFcSvzYyaNKXAig7JHe4XIF2wNkgr
 d4D1wjLBBk16gCb43wGgPF+ywTKBjZDFsxyVDpHEpMclbxmvV13ijNgVZdE4gRoAsxZw
 3prQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=THm0R2Lx
Subject: [Intel-wired-lan] [PATCH net] igc: remove napi_synchronize() in
 igc_down()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,gmail.com,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[devnexen@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 642B1744C7A

When an AF_XDP zero-copy application is killed abruptly, the XSK pool is
torn down but NAPI keeps polling. igc_clean_rx_irq_zc() then returns the
full budget on every poll, so napi_complete_done() never clears
NAPI_STATE_SCHED.

igc_down() calls napi_synchronize() before napi_disable(), so it spins
forever waiting for that bit and the interface never goes down. Drop the
napi_synchronize() and let napi_disable() do the job -- it sets
NAPI_STATE_DISABLE, which forces the stuck poll to complete. Reorder it
ahead of igc_set_queue_napi() so the NAPI mapping is cleared only after
polling has stopped, matching the recent igb fix b1e067240379.

Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: stable@vger.kernel.org
Signed-off-by: David Carlier <devnexen@gmail.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 2c9e2dfd8499..b3883a5a7d7a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5352,9 +5352,8 @@ void igc_down(struct igc_adapter *adapter)
 
 	for (i = 0; i < adapter->num_q_vectors; i++) {
 		if (adapter->q_vector[i]) {
-			napi_synchronize(&adapter->q_vector[i]->napi);
-			igc_set_queue_napi(adapter, i, NULL);
 			napi_disable(&adapter->q_vector[i]->napi);
+			igc_set_queue_napi(adapter, i, NULL);
 		}
 	}
 
-- 
2.53.0

