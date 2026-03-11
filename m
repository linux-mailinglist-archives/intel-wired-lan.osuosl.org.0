Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIVuDarUsWk2FgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 21:46:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FAD26A223
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 21:46:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D62E0848E4;
	Wed, 11 Mar 2026 20:46:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uemw5lSrhSRU; Wed, 11 Mar 2026 20:46:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58069848DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773261990;
	bh=s9P+Ff12iogmg72x3GEhn1ZYf/TicLhf6XdQjN3H5kE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wi+vqr5oPGjE1HNi4xY8akAYB1qxb/yXXjtkH6T33nuI8yaXT2cUoD1x+B9VX4Kn3
	 NJ6E1g9GwnXzkj2Gi7rGIgiPzRo10X/gdmB51M8LSHQxH+hIS/FBVY+MTgkDoJ47cB
	 opOqPPcSKynaqm6PDLGEG7FWlq17xfkT9gopqhw3llv/WCr+vs5RBmJsVOqFIyCiAc
	 cmFOBGqOR12ENo+HOWxGGp1nRX+yjEH9Guu4WvbWqZArM2r9o3x6jwl2XLGit4kcVI
	 oIL+ccLnoNVpfSf4SPHBVqQN1P1ek6HrUTyLmWe3Ji4DTk83PDX2/hUE/91/4uxAtR
	 A8r8l1yKsejgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58069848DF;
	Wed, 11 Mar 2026 20:46:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E8F19282
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 20:46:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D1132613D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 20:46:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WxWiTQOxO_55 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 20:46:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::136; helo=mail-lf1-x136.google.com;
 envelope-from=advoretsky@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D997A613CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D997A613CB
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D997A613CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 20:46:26 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id
 2adb3069b0e04-5a12c19affeso652414e87.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 13:46:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1773261984; x=1773866784;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=s9P+Ff12iogmg72x3GEhn1ZYf/TicLhf6XdQjN3H5kE=;
 b=iY8ehJoGP1D3oSQOU1tV42BIn+/qB4VJ6uPTnF/zR+PhhximR2jd/nIi7GlbIuJbNB
 1gn8bZJsMjcE0KrtjfI0VPM2wuPDo6dtG2F64CJT8yuic2yEzp1OVbaaDsviIVUN3tKg
 zYXSnKSQ0QS5/Czwk1U1Ml2006lnrfl7huvHNuy2pLCexC7wA3/vQqEsfXd9pUc0C0h1
 MVjT5+DQWx98D73Un6LtTzDEEm5iSBLVFbIV3Zsc8cjzmQ1IbAiyBv4NnmjS2UGzESDo
 upY1ObDja0LKHuxSwgWcReON2iuUn6sI2IRlaPE0XMOj1rXbwJJk7FRCMfHv97ruNQl8
 Xmug==
X-Gm-Message-State: AOJu0YyzcYLgoGSibx5z8SZ6D7fGdnmmZ4M+MgqkxxwlOIRHM8fS5sRx
 BY70I1s08pi/HGa+1i9iW2pQJnNlCGs1ggGzCI7wVkN5ouamlxyNXbtT8tbJ9zVM
X-Gm-Gg: ATEYQzw0KKdOMo8L2kfJQ3LhwrSQa4YVpIhkJg4uKjgrLDh/bhkNsMHg09Rh3R1DZUM
 Rn4NQPfvt0H66L332lJedViK5x6YhIbUdA6b3TjUsqCAssQv+QQPGpvoxS4viyXtUX+LO+gZnGd
 Vm8CFJpc4PG7yIlwWGW5nStVl4BzjwqnTXryECPb+grcGs0Yh/33cUn1j2YWF7cO8+ZVx0jZOkf
 /3eHs4CV576e7x3E1SWFa/uaqyhHtZ5+xYsM6HaMRwUHE159D/+W5g+XZLeufexZpdP417iG9vy
 6k2bNbXcPym4r3BICfiru18IpeC08LH6kj2wHfg4OwKyabhzsyCTJC0SRk2CnUbUpRDSQBiji4R
 6NnVn+jGVEJzp+ai0Uz0FeEhpqjN1eBEa2mLi3vt5+6WMU2hbDyE4O1YUPC067S62An89gtGI8X
 +n1Up2
X-Received: by 2002:a05:6512:39d4:b0:5a1:3d08:cfab with SMTP id
 2adb3069b0e04-5a15a4da7camr370067e87.23.1773261983314; 
 Wed, 11 Mar 2026 13:46:23 -0700 (PDT)
Received: from router-0001 ([2a01:4f9:3080:2e0f::2])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a15602e749sm594670e87.34.2026.03.11.13.46.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2026 13:46:22 -0700 (PDT)
From: Alex Dvoretsky <advoretsky@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, maciej.fijalkowski@intel.com,
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, kurt@linutronix.de, stable@vger.kernel.org,
 Alex Dvoretsky <advoretsky@gmail.com>
Date: Wed, 11 Mar 2026 21:45:15 +0100
Message-ID: <20260311204620.15763-1-advoretsky@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <abEtQwISGizUXIwf@boxer>
References: <abEtQwISGizUXIwf@boxer>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773261984; x=1773866784; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=s9P+Ff12iogmg72x3GEhn1ZYf/TicLhf6XdQjN3H5kE=;
 b=RaI6crgnOoadEpbb9BsDtrmS7APZVZU+QELZnLRRF8zT1anM9rbdWyCEreYCLDuXvQ
 /I//Ae8sl1Cnm2x0cawppIdaZmr3XEBnUAo24ixMrmQnAw/HZE4J9FaRCE9pjByZmIxW
 8EaXKvllbhQzhQuT+pfYYBpiaHkJ/Hn2RJyUiYfMxFDgmcfptDniHC2JT3+w6BqZqQoY
 Zlk629s4RucRZiIT2ez0RDeF3esv3fnPADm4RhMA2VqZMp194Pivv+jbXPsugnWwRB0F
 EroHRPkfCIQx66b4XG+9uODGg311n5Dq8sgNu/w6xVcK7vz+tCfuGw/RL7C+i9PBvxxo
 2qeA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=RaI6crgn
Subject: [Intel-wired-lan] [PATCH net v2] igb: remove napi_synchronize() in
 igb_down()
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
X-Spamd-Result: default: False [0.29 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,linutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[advoretsky@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 20FAD26A223
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When an AF_XDP zero-copy application terminates abruptly (e.g., kill -9),
the XSK buffer pool is destroyed but NAPI polling continues.
igb_clean_rx_irq_zc() repeatedly returns the full budget, preventing
napi_complete_done() from clearing NAPI_STATE_SCHED.

igb_down() calls napi_synchronize() before napi_disable() for each queue
vector. napi_synchronize() spins waiting for NAPI_STATE_SCHED to clear,
which never happens. igb_down() blocks indefinitely, the TX watchdog
fires, and the TX queue remains permanently stalled.

napi_disable() already handles this correctly: it sets NAPI_STATE_DISABLE.
After a full-budget poll, __napi_poll() checks napi_disable_pending(). If
set, it forces completion and clears NAPI_STATE_SCHED, breaking the loop
that napi_synchronize() cannot.

napi_synchronize() was added in commit 41f149a285da ("igb: Fix possible
panic caused by Rx traffic arrival while interface is down").
napi_disable() provides stronger guarantees: it prevents further
scheduling and waits for any active poll to exit.
Other Intel drivers (ixgbe, ice, i40e) use napi_disable() without a
preceding napi_synchronize() in their down paths.

Remove redundant napi_synchronize() call.

Fixes: 2c6196013f84 ("igb: Add AF_XDP zero-copy Rx support")
Cc: stable@vger.kernel.org
Signed-off-by: Alex Dvoretsky <advoretsky@gmail.com>
---
Thanks for the suggestion, Maciej. I tested removing napi_synchronize()
and it fixes the issue cleanly — napi_disable() handles the stuck poll
via NAPI_STATE_DISABLE without needing any hot-path changes.

v2:
  - Replaced 3-patch series with single napi_synchronize() removal,
    per Maciej Fijalkowski's suggestion. napi_disable() handles the
    stuck NAPI poll via NAPI_STATE_DISABLE, making the __IGB_DOWN
    checks in igb_clean_rx_irq_zc() and igb_tx_timeout(), and the
    transition guards in igb_xdp_setup(), all unnecessary.
  - Tested on Intel I210 (igb) with AF_XDP zero-copy: full E2E
    traffic suite, graceful shutdown, and 5x kill-9 stress cycles.
    Zero tx_timeout events.

 drivers/net/ethernet/intel/igb/igb_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 12e8e30d8a2d..a1b3c5e4f7d2 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2203,7 +2203,6 @@ void igb_down(struct igb_adapter *adapter)

 	for (i = 0; i < adapter->num_q_vectors; i++) {
 		if (adapter->q_vector[i]) {
-			napi_synchronize(&adapter->q_vector[i]->napi);
 			igb_set_queue_napi(adapter, i, NULL);
 			napi_disable(&adapter->q_vector[i]->napi);
 		}
--
2.51.0

