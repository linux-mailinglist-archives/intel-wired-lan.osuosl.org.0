Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A4ECF4A00
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 17:18:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC02860B0C;
	Mon,  5 Jan 2026 16:18:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VFTHwmemwXYJ; Mon,  5 Jan 2026 16:18:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CEA560B00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767629897;
	bh=0z+YZ2YNsMdoMFE7LSlh6yUmpOlG2Vk2g7LqMYQuv6I=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=yASs7tLF2zmXP+Gm4oN5W+YvgEaD+79wdW+9VIlJHkPmwyI/Ws28COKaUmkm9sF7l
	 1ef7HCyUIfjql9wUDFpmB9E327em0cs4KD1vhBjFDudJD8/PU7f1umwCd4Rj6y08/j
	 gG6TETspycN0SMOGEJmCbdm4TqJwktNgNaBCDrEtoN4ZrmvU+HqrC4IkejkT3+pcWm
	 f6M1+uYjpwyqxPFpU1v31bVZonackMQLy7SeXCDtP2Ly/j6uBN7MfZYD1233/jlEqw
	 d6hpyRqYar+eoRWneyphEugO+rY19yD1d7QhkAAJJKD2QaQk4nzzP9B7DwTaAcvwbI
	 uy20OT0uomtjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CEA560B00;
	Mon,  5 Jan 2026 16:18:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 484A8277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Dec 2025 23:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A98E40645
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Dec 2025 23:57:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ksrnR6GlTZg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Dec 2025 23:57:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1349; helo=mail-dy1-x1349.google.com;
 envelope-from=30gzuaqykd0eerrooljrrjoh.frplqwho-zluhg-odqolvwv.rvxrvo.ruj@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B07074062A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B07074062A
Received: from mail-dy1-x1349.google.com (mail-dy1-x1349.google.com
 [IPv6:2607:f8b0:4864:20::1349])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B07074062A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Dec 2025 23:57:05 +0000 (UTC)
Received: by mail-dy1-x1349.google.com with SMTP id
 5a478bee46e88-2ac34c4b41fso10782601eec.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Dec 2025 15:57:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767139024; x=1767743824;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0z+YZ2YNsMdoMFE7LSlh6yUmpOlG2Vk2g7LqMYQuv6I=;
 b=N23ZNnpfikfzHt48C60M+IzYUobWrxsm+xXm2MYWm4bBK5QezdPnjANAg22YCHKydH
 S+UAy3s/sspA0jBCkzA+7Q5Iuk8AmbelEynUhm5WqBVqcvmi0hFCAY2z8AHGnhm9ms6k
 /atpj1PyV2nPGCedVHdddtzyUVMvIrRauSzLOSWNyq9+g0n/XvfOSnxzx/Ceh/oVF7mb
 j3e2qy3x6dBZOk7csuFnUrBsIQ0tregChIBcnq8j3OkQRsr3nkusn9ov+ZRmiR+0I+D5
 ur1vJ686ZA8TBbEMmw54xH+A0KqGwmCACqUOPWnugSnyCBLhYEs5zvicH26J+QVKE9aE
 NeCA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQoD11QJ8I1ffPYRsuz7zn/62q0XMnYZfQsgsgJf8xHMie7pYRo9HIpjJQi9O6WPwBZ0nggRN5sEBLJPjdIUk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyaskUbSvJWeaFPO+rsdKXLZ6Ubfw2UJHZZwgiKZTdiK4RTMH3K
 PCneaKvSEfOEQfl2CQweiGj7sraDcbwKCypeAYPrc3wwZMpE5KsC5yi7VjM0Mm8TirX2n5w1bZi
 Z33guIw==
X-Google-Smtp-Source: AGHT+IHuKsYSd2kwNPtEc4XiZmk+kOE4LhPvJ+nztAMwJKOGMzdDI0Og5UaGs2DvBeC0wc83yh3yJySPuis=
X-Received: from dlbrx13.prod.google.com ([2002:a05:7022:170d:b0:11f:3fcf:58c])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:e01:b0:11b:f271:835a
 with SMTP id a92af1059eb24-120619277e0mr35739751c88.3.1767139024417; Tue, 30
 Dec 2025 15:57:04 -0800 (PST)
Date: Tue, 30 Dec 2025 23:56:57 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
Message-ID: <20251230235657.2497593-1-boolli@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>, emil.s.tantilov@intel.com, 
 Brian Vazquez <brianvv@google.com>, Li Li <boolli@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 05 Jan 2026 16:18:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1767139024; x=1767743824; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=0z+YZ2YNsMdoMFE7LSlh6yUmpOlG2Vk2g7LqMYQuv6I=;
 b=Lp8MvUtvEzlneCyx1l1Y+hUvBF6TMJiy+ZZwmeURzfgvv4pIRXgEsuxShBVPNecXIW
 xSbk1YxkrguTM2GjtdiEml8r+BPGKT6CwvXBOLGol6HtGxonENTgnpfq+JA/a9Nu3i8h
 0AxAp0+Bxo3i8MjeV5Mktwoq8WFhgKluNDOsjcX/aZB3pebNRd1Je24jl/OClphTAXFk
 tpE7T3uTmMQGzIaolxKppPxmrcXmBpSrY0f21tJJSBhRr97ZOuruMKPHGD4lXq8vvlzF
 apfrspde5Bctq41ZHgXrE1mysgdQvEBgN+wPMo5xT/yNp44VQtd6msC+tq+8DhrUfYzW
 cUog==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=Lp8MvUtv
Subject: [Intel-wired-lan] [PATCH] idpf: increment completion queue
 next_to_clean in sw marker wait routine
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, in idpf_wait_for_sw_marker_completion(), when an
IDPF_TXD_COMPLT_SW_MARKER packet is found, the routine breaks out of
the for loop and does not increment the next_to_clean counter. This
causes the subsequent NAPI polls to run into the same
IDPF_TXD_COMPLT_SW_MARKER packet again and print out the following:

    [   23.261341] idpf 0000:05:00.0 eth1: Unknown TX completion type: 5

Instead, we should increment next_to_clean regardless when an
IDPF_TXD_COMPLT_SW_MARKER packet is found.

Tested: with the patch applied, we do not see the errors above from NAPI
polls anymore.

Signed-off-by: Li Li <boolli@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 69bab7187e541..4435dba27a24a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2346,14 +2346,14 @@ void idpf_wait_for_sw_marker_completion(const struct idpf_tx_queue *txq)
 		target = complq->txq_grp->txqs[id];
 
 		idpf_queue_clear(SW_MARKER, target);
-		if (target == txq)
-			break;
 
 next:
 		if (unlikely(++ntc == complq->desc_count)) {
 			ntc = 0;
 			gen_flag = !gen_flag;
 		}
+		if (target == txq)
+			break;
 	} while (time_before(jiffies, timeout));
 
 	idpf_queue_assign(GEN_CHK, complq, gen_flag);
-- 
2.52.0.351.gbe84eed79e-goog

