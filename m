Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMOVBUHoy2myMQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 17:29:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C113336BAC6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 17:29:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2158441053;
	Tue, 31 Mar 2026 15:28:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PIWY5T0jTWCQ; Tue, 31 Mar 2026 15:28:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9199141064
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774970933;
	bh=x6llizdqrxhxeXZpldB/jX1ydpLfLM9IpYcXgdeXc7g=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rVcW7Iqw3apvA0J6dsDeYC2GozUwBRFITLob0fUi3Yz9RWb9/N+DNW+kAG+jDcX66
	 eQFN8LqE5txO8jZ9wZuPHM6ZTEtSiFQdrS9g4WyeQj36tVqxv4b0zllaUV8z9gmxQi
	 xOOSQNicI3cFBWUt5Jf1qamirfVmsIVJsY3lg9FLblmd0c4htR6gQN66THUD1weSPk
	 2Ly63ciIm0dQ/MTRJOmBoUm2kOwNBFSoUSKMPA7mcBqujUYNCFlUPBKzq2TRDaPpDX
	 r2ueh4Co+D3UQhWT4IQapjfyHFeLBQW3c+TJHgRj3TdmvToW0FueWFtO4eJsN0Pc5x
	 ml9iVt7xvoRrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9199141064;
	Tue, 31 Mar 2026 15:28:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 096CF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 10:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E340F60F57
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 10:44:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sVFK1O96BKQq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2026 10:44:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=daiky0325@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 50DAE60F4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50DAE60F4E
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 50DAE60F4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 10:44:07 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-2b256a4c6b5so10949535ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 03:44:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774953846; x=1775558646;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=x6llizdqrxhxeXZpldB/jX1ydpLfLM9IpYcXgdeXc7g=;
 b=b02azwfZW63VEej/6iQqDjztIQXe0/tln4gtB6s4ySHz3TuBOs+WpkQ76mnKOekrl5
 E+PkvMIS591jWxGs5kCIck6mAbcErjdUWs4XdjV2Nx4uR9KSrslAaX15XKQ3ZTPTpXiL
 vqFjCQ8IFWxyiH7SWEpeHcV/F5u1wlLF8Zyq+RVIzixdbZHwHbgHYYXM982dmpgeJhkO
 ScbANk/pAxA8hrnpWRUhjOOWGhNBOGC3TUCsceabHta/j1U5iDE7SSWHUj1S+yWmlUj4
 DRZbkCpnQQLwqbIq9qrVS3j2iBB8qA/wrd5wC/axrznEgMCAVPl97nMkRSSaakWcl/Vu
 s9sg==
X-Gm-Message-State: AOJu0YxKpBRunpbR3Mld8pDxEYuS8L7j6ED7BntC2rO7ky0XLnyteClo
 hryRXskas4klZo6OE4E2BG2ElrmPbX47EPNyqssAzpcclyAz936JUFb6lc/l1f1IcI8=
X-Gm-Gg: ATEYQzw/Bh9EXRviKyxaTvfjmL0AfnP3pP4MMXj7iMWeBx5bcqN686lAOqbtTSmsR2Y
 gQRIGp9kLlvC1o6zWTEHSGQSSeG8mb7xUnN26v+UrEx21PRf/Kz71dVGRU0jYHftzi7qptu3myA
 vEDzyee0nWwZzyRLww3IFQ1FQ62DEyhK7LqpocypSpPvih/mGP7F9RuXHW8WD2tKgs4OX/He/4q
 3CvIFa7S2eOdiuvP10fx4JwSaT+dtBnk/OkI/uHWhs4uDB+w8mUceFTOVDZtPH0jM40WYbTxFd1
 g984+fhDKXaCMPdG2eg0fBQycBLt2D8A+ZSFqYkY/2PV/l2iqW9BmfmTS3hXYhLt20fzKKnjBmj
 a8fT4DLiVBG5991uaXwKGcpYeVmRUEN5zIAvIMWm2Jpm0zmgiMCe47OgkBww/hlNC4hNYPndPJL
 7f8s1H5AlH7m5UDEBZLGvvdyxEb3++pzm6Z4vN8zVNagL1F7wUxVdFi/blN/NbCW4XTbfw8/zi4
 lkK7eh7ivup2at20qHm3ff/rWE+YccvZqcfHqqUiB/x73fiN0ZXTNnB3MwG1eNRkc0H
X-Received: by 2002:a17:902:da91:b0:2b0:5ec1:97c1 with SMTP id
 d9443c01a7336-2b0cdc238f3mr165881155ad.7.1774953846473; 
 Tue, 31 Mar 2026 03:44:06 -0700 (PDT)
Received: from ip-10-1-46-91.ap-northeast-1.compute.internal
 (ec2-176-32-72-196.ap-northeast-1.compute.amazonaws.com. [176.32.72.196])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b25f2016a0sm33969045ad.29.2026.03.31.03.44.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2026 03:44:06 -0700 (PDT)
From: Daiki Harada <daiky0325@gmail.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Daiki Harada <daiky0325@gmail.com>,
 Kohei Enju <kohei@enjuk.jp>
Date: Tue, 31 Mar 2026 10:39:20 +0000
Message-ID: <20260331103924.36422-3-daiky0325@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260331103924.36422-1-daiky0325@gmail.com>
References: <20260331103924.36422-1-daiky0325@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 31 Mar 2026 15:28:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774953846; x=1775558646; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=x6llizdqrxhxeXZpldB/jX1ydpLfLM9IpYcXgdeXc7g=;
 b=E1ryKnkSAYeDkwL20tuIvnJeRb5yNrRHHSpbKtuwnV+Go7ejC1vAgomFXvEOx67zMX
 gk1mDsyFQFKH8s7WhWGfPML+exiADQmONSiV9sGV8DzFq3KVJu61gkEdYTZsM/2N5Sr4
 4H3mdXwpGufJCUVE+gYAWxW+v282iasgu+H/1OEARPoP2y1IkYxvPrBPMB7jjXkJ2xMO
 lskSu4reiaGRj39+gomlnQADiNbub1PsHotILiC6JQrVtITEUEoASq3Fh3HDNnzEpdiI
 IAGnCcgT8PZE3J5ZrpweDn8GfBo2FnElqf5sJ0YLrJwkCGRoOcbhajAk5EeVPjRzFNoV
 X24Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=E1ryKnkS
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use
 napi_schedule_irqoff() instead of napi_schedule()
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,enjuk.jp];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,enjuk.jp:email];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[daiky0325@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C113336BAC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace napi_schedule() with napi_schedule_irqoff() 
in the interrupt handler path in igc driver
Tested on Intel Corporation Ethernet Controller I226-V.

Suggested-by: Kohei Enju <kohei@enjuk.jp>
Signed-off-by: Daiki Harada <daiky0325@gmail.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 72bc5128d8b8..712605886104 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5688,7 +5688,7 @@ static irqreturn_t igc_msix_ring(int irq, void *data)
 	/* Write the ITR value calculated from the previous interrupt. */
 	igc_write_itr(q_vector);
 
-	napi_schedule(&q_vector->napi);
+	napi_schedule_irqoff(&q_vector->napi);
 
 	return IRQ_HANDLED;
 }
@@ -6059,7 +6059,7 @@ static irqreturn_t igc_intr_msi(int irq, void *data)
 	if (icr & IGC_ICR_TS)
 		igc_tsync_interrupt(adapter);
 
-	napi_schedule(&q_vector->napi);
+	napi_schedule_irqoff(&q_vector->napi);
 
 	return IRQ_HANDLED;
 }
@@ -6105,7 +6105,7 @@ static irqreturn_t igc_intr(int irq, void *data)
 	if (icr & IGC_ICR_TS)
 		igc_tsync_interrupt(adapter);
 
-	napi_schedule(&q_vector->napi);
+	napi_schedule_irqoff(&q_vector->napi);
 
 	return IRQ_HANDLED;
 }
-- 
2.53.0

