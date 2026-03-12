Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SK68GkbFsmmvPAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 14:53:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAAA272F4C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 14:53:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EBAB61CBF;
	Thu, 12 Mar 2026 13:53:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O9dulnS7Cosv; Thu, 12 Mar 2026 13:53:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0045661CAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773323586;
	bh=cLa3hjm81+l0iihx+Vd/908jpbxZZUZC18PWTXWrhu0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cUrUhn0wvmsGy7/uCwrLthDSu5qJWNAwX8Jc3QklGXgChxpXTXv55pYK/P3esj031
	 dwuZY2mN2orciPgov1YyYuJ5HBMR/3OE7N94MfNudMbnhyL8seGbNf8GOZY5q+uRda
	 dcA9EP29At/EAOApafMLBw7wHkvYLfXBbJGhjp8dgXdmE4bQ6650xnZJZx7pgOo09s
	 tSzOwwJNdtuSVvbvpVPlXK+fWkYWYRGJR/Pq8NlrwVKVrfsjRZ3OsJQ3YpBlV+NT7u
	 k52jwc+vgIsePSxnbLK6RQTeRGx5jlD/453hg/MMPOhBFsLncirpdQWXW023HTDg2c
	 9Iz+7HTO4CCAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0045661CAA;
	Thu, 12 Mar 2026 13:53:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D194D282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 13:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C37978473A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 13:53:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8T2asV3-pQsf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2026 13:53:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12f; helo=mail-lf1-x12f.google.com;
 envelope-from=advoretsky@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9051484739
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9051484739
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9051484739
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 13:53:02 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id
 2adb3069b0e04-59e4989dacdso1242947e87.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 06:53:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1773323579; x=1773928379;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=cLa3hjm81+l0iihx+Vd/908jpbxZZUZC18PWTXWrhu0=;
 b=spM38X9eJu3t6kfF5VFkHbK8HbwoUEtsHiLXbkefiFrW22MU0ifUAWVvlqXSMyyLHK
 zJdjZR+4bLmCgGWBXGZQHdhJX3Zda9Rf9ljucQTE1ebzHfJtWR3xPsfdfaYteYmQCPiu
 WUabPCJQ1QEyrirQ03kVYOQdZsiYbMyUDQMKrZs9FgYsIXS/P2b3F1mmbL+BbVDpJHur
 0OhvRUJZM3ZwFW1TsL49VoxDLVxreulb58pOWCqKbMJMHVQY5EcrqbxOcKeuafdgjXLj
 20hxoas46idzu9Cg+CnmBfU7YKMMoEBLhYfIvu1A2cjbmBdfqvucYSg/wwZgv1mOu6OF
 4PdA==
X-Gm-Message-State: AOJu0YxPo+uehqrjOqGtrhoq9zsh2nTro6eUB52J1wyAL82R3dgA61s8
 TLXQl4Ez3d4zFEOHmLtX7Pc/kPDaIwhGOA5XdIFNsW3xiDYEZV+5fvJAslyvVY7q
X-Gm-Gg: ATEYQzx2D6ic8cku7v6wXd/ha+fu2YvMXm33nlvP5MaWZEP+Ytrv6R7XnsJuXrTXfJJ
 mitrDr6iZGn5pr9r0vNBt4LnpLpdqoHxU0k+xxxyjwZYC2rHMdF2rbhxwiOcsBL8jG/0lGDcfIn
 IZO/3qt4XnVP0+e4tm2bFObO/mCyi0VXjtY2Fv1c4fDmqLXztbzNaW0kydjFBGWOn3vkaD6OVqp
 zRuw6GqBgNNe1A7giO1PoKuXH3RWXHaQc7rbZOc979OH+mRJ4d2Aa+fjzL8ymTrjY7JrQ90mITe
 yN3xr9XMcRhNo+o8UzwWeQ+fLamsLFMng2rdYxYU2pbOROLuikbIVMi5CdRSXlu86lRKhaB9416
 uuq80zXbYAtJsrLPHC2ZkGywcH3NTru5JGC89n67DyE/JZsUz7gnrUyhTxOi/5MiNaUFE6v2gjK
 UT+YJo
X-Received: by 2002:a05:6512:1441:10b0:5a1:34d2:b6db with SMTP id
 2adb3069b0e04-5a156bb980dmr1557195e87.1.1773323579188; 
 Thu, 12 Mar 2026 06:52:59 -0700 (PDT)
Received: from router-0001 ([2a01:4f9:3080:2e0f::2])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a156033a29sm954117e87.37.2026.03.12.06.52.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2026 06:52:58 -0700 (PDT)
From: Alex Dvoretsky <advoretsky@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, maciej.fijalkowski@intel.com,
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, kurt@linutronix.de, stable@vger.kernel.org,
 Alex Dvoretsky <advoretsky@gmail.com>
Date: Thu, 12 Mar 2026 14:52:55 +0100
Message-ID: <20260312135257.71610-1-advoretsky@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <DS4PPF7551E65520F55DBD20987BCAE3C6FE544A@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <DS4PPF7551E65520F55DBD20987BCAE3C6FE544A@DS4PPF7551E6552.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773323579; x=1773928379; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cLa3hjm81+l0iihx+Vd/908jpbxZZUZC18PWTXWrhu0=;
 b=MeVzDCTVX/31aE+j3/EnHITd3uSutphN+o5RkOasli63DvajT6mWpyhrT3ZS30sy0B
 Jo4VmnK/PhMu24stLCU82cCulluZx9vx/WVR1CLCwAYnYKcul33aOcg7AMIN2mRqCrzC
 eBLB5BSHcTjFCB8LRbCc9l+M7uJGIcSkZeiDWvXT0zJ7uAWcC9E3DHGfM4UhaiT+bppV
 dys70kica+CSa7m8mg2p/VklcuU1YwRMiJj+IibcW7u5DVh0D379med/DREtYU7GzQ+e
 9ov97E8WAeGHSXD8578RHlW+A/sGxXzY7brQWiq3B/2Fuv8xX7FZW6ubxTe2dik2iYKa
 HViA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=MeVzDCTV
Subject: [Intel-wired-lan] [PATCH net v3] igb: remove napi_synchronize() in
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
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,linutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[advoretsky@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DBAAA272F4C
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

Remove redundant napi_synchronize() call and reorder napi_disable()
before igb_set_queue_napi() so the queue-to-NAPI mapping is only
cleared after polling has fully stopped.

Fixes: 2c6196013f84 ("igb: Add AF_XDP zero-copy Rx support")
Cc: stable@vger.kernel.org
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Alex Dvoretsky <advoretsky@gmail.com>
---
Agreed, that looks cleaner — no reason to touch the NAPI plumbing while
the poll could still be running.

v3:
  - Reorder napi_disable() before igb_set_queue_napi() per Aleksandr
    Loktionov's suggestion.

v2:
  - Replaced 3-patch series with single napi_synchronize() removal,
    per Maciej Fijalkowski's suggestion. napi_disable() handles the
    stuck NAPI poll via NAPI_STATE_DISABLE, making the __IGB_DOWN
    checks in igb_clean_rx_irq_zc() and igb_tx_timeout(), and the
    transition guards in igb_xdp_setup(), all unnecessary.
  - Tested on Intel I210 (igb) with AF_XDP zero-copy: full E2E
    traffic suite, graceful shutdown, and 5x kill-9 stress cycles.
    Zero tx_timeout events.

 drivers/net/ethernet/intel/igb/igb_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 7c41e32256fa..0793842cb937 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2203,9 +2203,8 @@ void igb_down(struct igb_adapter *adapter)
 
 	for (i = 0; i < adapter->num_q_vectors; i++) {
 		if (adapter->q_vector[i]) {
-			napi_synchronize(&adapter->q_vector[i]->napi);
-			igb_set_queue_napi(adapter, i, NULL);
 			napi_disable(&adapter->q_vector[i]->napi);
+			igb_set_queue_napi(adapter, i, NULL);
 		}
 	}
 
-- 
2.51.0

