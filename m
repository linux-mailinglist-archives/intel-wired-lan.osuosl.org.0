Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDDOHbBDq2nJbgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 22:14:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E18227CC5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 22:14:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBD7E83F0C;
	Fri,  6 Mar 2026 21:14:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gtI_pHKuugmj; Fri,  6 Mar 2026 21:14:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4650683F01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772831660;
	bh=j+wVFXDJqFGNNH+A2DIP/hdXRUUa1ETvoAO9jfbvYfc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iN7F5OlarB4Mmujx2FU9oL2Y145IRdtclteKI7rbOsnK9JrnR2QAMUKWms6JYfEEy
	 XTA+JhBgZzl08C0HdnrcKaaKosHxENw8wKUj+yKzum+znvzZQPo5HmM4YSABPkqRQ3
	 D060Nq2RsyvMqCaH5qRepzqunnf9wpis9TL1spL7K4XZTd8D3XXlZuA3WRid5MShhr
	 xDy123UqbMbBJdXNSChrtpkt008K1DPw5/dH16xG4mMbWOUjlm+4vv1Nuhu7F2HVKy
	 SdkxBprnR4r2oQQwK23oLOTKSPa9mV4cOovIrLHDFBh0rEIjrl5EQ+v9AtTzgHPTgi
	 K2Hw5tk/NYwOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4650683F01;
	Fri,  6 Mar 2026 21:14:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 81FCB223
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 21:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 737DE40ABE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 21:13:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OtTRySLS-Mfj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Mar 2026 21:13:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::134; helo=mail-lf1-x134.google.com;
 envelope-from=advoretsky@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9F2E840088
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F2E840088
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F2E840088
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 21:13:20 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-5a131870b72so2757415e87.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Mar 2026 13:13:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772831598; x=1773436398;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=j+wVFXDJqFGNNH+A2DIP/hdXRUUa1ETvoAO9jfbvYfc=;
 b=Wp6NnH4/uW/obEdJZGZz36kLmEVfmL0oCZ2y5+BJ5Hzy4zmqGzAyo2pyNVEnxegIEt
 bJ4g0ESehvp7jSjiBeEQ7qOOT1PyXhNd9oOQ1OlV31w4PNdDk3+dIezbUMXOQI1jrrgl
 h57z2qI11kel2dCR3nrLivZuIdnh+iijP+zqNZ4iJvs7V4N+X4VyKyi9Vu0D8V9cR2RV
 ySd9owbqGeES6n+gb5noPGcXq3qOTZS62lB38s2jnv5v9seNe96xRfqksryuw1v+bzIf
 0cjrmGD8m/ifN28gFMG08bXjin/B/SWj99ITq5y+Aj5/tG7yuCyX93ElS+nDI2NXlh3G
 8EQw==
X-Gm-Message-State: AOJu0YyTdFkP0sHTP7ioI4C+WmzejznWsuYR4Z+o5O+TXF9b4IvFtFPQ
 vN7bzVrUni/iJ1UnGEQ7S/JZRuV1CPobutCvoooMle+C4xQay8vA8xcEnuJI+58f
X-Gm-Gg: ATEYQzwRFIC5HIjHBUF4se4BXLvtWHlhhKg5TrtuauqnukHjturM0aIO0zFTInLXCMy
 pNg3TZeCle5W71nw2nNq4/oG/Xtq7ecvaLjJc+7YcYiBZrKu6u66hY/rAtV/esMfDhhA3Jy6adH
 DWnjHEm0EqMsfWmSvTGxyhc9OTnEmqWB0QteXTm5ohPoBpQ/EFU5zHLaEw7MCUc/p0PT0Q7KhA4
 fRp5hdu2bmG4uBtvVxN8V/Mt3pb2MxrxX/rGBQ2kcVfjK8EcM/lQzjOSv3ZoF/WxHxMInyTgXRx
 mJbpMrx/1dTF2drPOvRtsvRERWiaVDN6NOMpZem1QlL6G+ChFyHXwVBotSh7u6g7kdYWxmazYa9
 SPPlu93Yf/m7D7+moOIsRVE8Ldo9Xw0IBzCWrC0fxvJ1eBfXaBvx8OE5RC2O3S7JsRxgkmFC2R8
 gjeLth+DvK2qVEGmo=
X-Received: by 2002:a05:6512:22c7:b0:5a1:4c8:a632 with SMTP id
 2adb3069b0e04-5a13cab84f8mr850239e87.13.1772831597351; 
 Fri, 06 Mar 2026 13:13:17 -0800 (PST)
Received: from router-0001 ([2a01:4f9:3080:2e0f::2])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a13d07e0f1sm554433e87.58.2026.03.06.13.13.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2026 13:13:16 -0800 (PST)
From: Alex Dvoretsky <advoretsky@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, stable@vger.kernel.org, kurt@linutronix.de,
 maciej.fijalkowski@intel.com, Alex Dvoretsky <advoretsky@gmail.com>
Date: Fri,  6 Mar 2026 22:13:08 +0100
Message-ID: <20260306211310.1213330-2-advoretsky@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260306211310.1213330-1-advoretsky@gmail.com>
References: <20260306211310.1213330-1-advoretsky@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 06 Mar 2026 21:14:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772831598; x=1773436398; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=j+wVFXDJqFGNNH+A2DIP/hdXRUUa1ETvoAO9jfbvYfc=;
 b=GvfMULvGYetrzCDGNsfyErp+IsI2LMCzbRP2TJTpLf34kMH0aOmyCgV63OQGjsNtsp
 /Lyix3JQuN64EL5VYVUl7maDzIR1AX59ldXYV2Q9piMfg8CYp0XMQi1uClxSJJws1BI4
 87gmpaDD6+d5bjqT8EDvDk/1cUd6ESmifHpXtNBDIrlae8IL6/wb7+AMJOQzT5assnii
 6SeaW4CFyI+Q3TgKf915M7Shtdf3Tz/nrAoqsV7QhqpSmUve1PsuMa7GcvmvWlgBy8MY
 SQEnIs0sj0U64bA/N7KRDrFnJWRE77GOT+pOcdp7qwzPA2G9W5ipoHaVhUNE3q8g+3fr
 VCUA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=GvfMULvG
Subject: [Intel-wired-lan] [PATCH net 1/3] igb: check __IGB_DOWN in
 igb_clean_rx_irq_zc()
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
X-Rspamd-Queue-Id: 48E18227CC5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,linutronix.de,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[advoretsky@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

When an AF_XDP zero-copy application terminates abruptly (e.g.,
kill -9), the XSK buffer pool is destroyed but NAPI polling continues.
igb_clean_rx_irq_zc() repeatedly returns the full budget (no
descriptors, no buffers to allocate, xsk_buff_alloc() returns NULL)
which makes napi_complete_done() re-arm the poll indefinitely.

Meanwhile igb_down() calls napi_synchronize(), which waits for a NAPI
poll cycle that completes with done < budget. This never happens, so
igb_down() blocks indefinitely. The 5-second TX watchdog fires because
no TX completions are processed while NAPI is stuck. Since igb_down()
never finishes, igb_up() is never called, and the TX queue remains
permanently stalled.

Fix this by adding an __IGB_DOWN check at the top of
igb_clean_rx_irq_zc(), returning 0 immediately when the adapter is
going down. This allows napi_synchronize() in igb_down() to complete,
matching the pattern already used in igb_clean_tx_irq().

Fixes: 2c6196013f84 ("igb: Add AF_XDP zero-copy Rx support")
Cc: stable@vger.kernel.org
Signed-off-by: Alex Dvoretsky <advoretsky@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_xsk.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 30ce5fbb5b77..ca4aa4d935d5 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -351,6 +351,9 @@ int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,
 	u16 entries_to_alloc;
 	struct sk_buff *skb;
 
+	if (test_bit(__IGB_DOWN, &adapter->state))
+		return 0;
+
 	/* xdp_prog cannot be NULL in the ZC path */
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 
-- 
2.51.0

