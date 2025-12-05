Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F67BCA6B22
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 09:25:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2AFD607E4;
	Fri,  5 Dec 2025 08:25:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vUiRIBAdjMOB; Fri,  5 Dec 2025 08:25:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6651F608A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764923124;
	bh=vPAIHokCAd7ibs1BxYRl6MfcOlaVrL938oA/Hg2FruU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PI6f01ELn7iS+OkMYSxsp3kmC1os18nGK+vDpODwKXX2gc2z9H/GltqNcvHZg0pyk
	 9DvhNYxchSfKhfS/dgDoWnUL+8kwwAF80Ll6aBFnYdc/csd1oKBXsq16CSLGAVJRm8
	 DULRI9whan1NcwOjQcKP5NDjDAMANFQ3CXxeiWvo53yliWGtuoAmTsS75nIfgUBzbT
	 yfEbOvMj34ldgUXb73oI5VSg0vsyUawtrj6YlG/SBVWYiEFsNMaudF/TuMYkBxK8Pg
	 jHiyGk7KFt5G2cPG0Z3z8suNhP0J1MUxtZVl8NUb09tBHG3z8M4o1QLWWa1aKSn7u5
	 IN4uKCgSumPYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6651F608A0;
	Fri,  5 Dec 2025 08:25:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 40088199
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2409A40A79
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:25:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vqZLxvh1j745 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 08:25:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D9DC240A7E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9DC240A7E
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9DC240A7E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:25:20 +0000 (UTC)
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B7366401C3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:25:18 +0000 (UTC)
Received: by mail-pl1-f199.google.com with SMTP id
 d9443c01a7336-297fbfb4e53so32862875ad.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Dec 2025 00:25:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764923116; x=1765527916;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=vPAIHokCAd7ibs1BxYRl6MfcOlaVrL938oA/Hg2FruU=;
 b=SsiODReV034OVHwFtav+Tz1QZOfg/csCyKf6bnVKhym7B3n5erBCpj64Lxwi5xNRhT
 YSPjldY2P7Vdzl8Zhvq6hCiOxRFgj9WQ3vAhOfu5jWAhRdNmCUjUc7Mi5hILRgmdWI0W
 YBbY0iV8Ki4T4v1IiawxiBE26ooeBEiVpTviZ4AeyviaHoQw+uUMhrkeBVBmE6DITqhp
 tuKN6M4W44jmaI+M5JxuWzwZKhszoRFKBNy9PTluTk74yfiItTeuo33ylos08afLAnOr
 5BWZ7gWdgfqE+0OcJgLm1i0GLfAP3FFVbPysudoYADvA8O70Z1NuwQRG+4sHBetKdpfn
 ycnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWgSxOZNsrw29706NIyMjXLvX/hwNYV3cRGZ3Uk8VbAiCWljvopCaRGtxhXHVDAIiFHF2UgUtPhWzCCFZtmx4E=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz6Uk3exyiwxt7QnAII9eHnCATzjp4BQnlyRyqNJiPzaDXpnadn
 ri7268OwNjLZE/bSMxwR9q5ixD4GO7BNbmoVkwl8G8qEdXaj3jSNP7S5GoMXOhVoxipLomDys89
 UhlSvH5lDXNFB+iSDtP25zfPNDSi1KIOVtUIul+yM3uLjvqzq0npCBiLGjG410quVYtmLtozIaO
 HwMvTz5r6Da+U=
X-Gm-Gg: ASbGncvrxLYilv3uMAoihs4BHfjyBV4arweLGT/GrCAASshpyhGnRJ0qi+2FN2O+9f+
 tTwM0CZ9Ah8NQZAfVXnQ6ay7buwkqk3qezWHnxUrn2bn//TXmiMS5PXiYxM48Hy2cBJtgD/rxY0
 WgdpX9SE90mCr7F7OLmtTnCBO7CVDGBuE+wQyEHEzGWB/8LqKHP9wafE8ssooJwLQpCtPrU/g54
 hMVIEHlN+GE2+4CY2kx23BSW7mSWPler3qsLS1eyLdEb+HzTv2gMY6OVIISXJPN1GPMS7m3Vwql
 OIAmF77qAs1t50uH91JwZmE0IMz8+MiQkeW+TVp9FaEWAYpB6zcfFik5xtySuhdEb+/qWTEMTTl
 Dix+HyjEpiRi2mEbOGIAka2jW
X-Received: by 2002:a17:903:41d1:b0:298:5fde:5a90 with SMTP id
 d9443c01a7336-29da1eea72amr76285915ad.58.1764923115902; 
 Fri, 05 Dec 2025 00:25:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/emSI1vAJLDPvRoUuEvwKwrwhdDo47cnuu11gTK6CsB4P3+sbvvwIcQoU91SQafUrHCG18A==
X-Received: by 2002:a17:903:41d1:b0:298:5fde:5a90 with SMTP id
 d9443c01a7336-29da1eea72amr76285705ad.58.1764923115542; 
 Fri, 05 Dec 2025 00:25:15 -0800 (PST)
Received: from localhost.localdomain ([103.155.100.4])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29dae4cfaecsm40896875ad.27.2025.12.05.00.25.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Dec 2025 00:25:15 -0800 (PST)
From: Aaron Ma <aaron.ma@canonical.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:24:59 +0800
Message-ID: <20251205082459.1586143-2-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251205082459.1586143-1-aaron.ma@canonical.com>
References: <20251205082459.1586143-1-aaron.ma@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1764923118;
 bh=vPAIHokCAd7ibs1BxYRl6MfcOlaVrL938oA/Hg2FruU=;
 h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
 MIME-Version;
 b=Bc5wxWf5jPy2+mjSeev5A9CKbIEuRqndoremvwg0ePTkhpdu8XVKSUROpAOO9jRQW
 T4Up287A31+s0ub+4aSsZFJID3FicpOm2B4cZs24QwqhuVJHwPMEaOMfjWIrg97xCq
 xmXjJQ13p4Sm13GNeh/jJY3wWLN0YZqv3+QM1htpo2hRIfHZHkmynjEfTsbsv58kC4
 Mdv8G/B5SDf0+oXQb4xe/nJuHj0Htd4B/xdt+kMYKVQqoUqXe8AizI1Qq6ofPI4+Kq
 QnfTL2gOBbW3t9bfDKGIFuHnJ9bIJLvZwt2ifCSGA68NHOtXWU+V5ZqZd4CDr4ua6/
 0ArMlh2Ij/geYFzD2y47fKrDbN8Zcc6Ni8KoKLoSzAg596YnMlY+hqp3C+GOAeX16H
 aneS2h6AmnHaO/OEivJLPGY67ObkiWWgpRmmggPTHFkQ1qD1N5QQql1zMLnJqx98I4
 P33oIvlukL0d9l9OJ9q0mBQclWJYcde6n6+0VmpHBXTBn7G6P4+YN7XkCeN0Q7ZX0U
 byNxW4Qf7mYB05pJQgeEK0IiKJ+q0fpChWegtS/LY8W+CF3QaMgCI49oIeUXuk/kNj
 IMR83Z0mgvI2gR+RnlCT9jZYy6MFooK8NiWW79pX1k9tcILpXVrKORmer8gWyTVlCA
 KA1rs7JqpfUBvaVjqnPfK3b4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=Bc5wxWf5
Subject: [Intel-wired-lan] [PATCH v2 2/2] ice: Initialize RDMA after rebuild
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

After wakeup from suspend, IRDMA is initialized with error:

kernel: ice 0000:60:00.0: IRDMA hardware initialization FAILED init_state=4 status=-110
kernel: ice 0000:60:00.1: IRDMA hardware initialization FAILED init_state=4 status=-110
kernel: irdma.gen_2 ice.roce.1: probe with driver irdma.gen_2 failed with error -110
kernel: irdma.gen_2 ice.roce.2: probe with driver irdma.gen_2 failed with error -110

IRDMA times out because the initialization before the schedule reset.
The ice_init_rdma() function already calls ice_plug_aux_dev() internally,
ensuring proper initialization order.

Fixes: bc69ad74867db ("ice: avoid IRQ collision to fix init failure on ACPI S3 resume")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
V1 -> V2: no changes.

 drivers/net/ethernet/intel/ice/ice_main.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2533876f1a2fd..c6dd04d24ac09 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5677,11 +5677,6 @@ static int ice_resume(struct device *dev)
 	if (ret)
 		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
 
-	ret = ice_init_rdma(pf);
-	if (ret)
-		dev_err(dev, "Reinitialize RDMA during resume failed: %d\n",
-			ret);
-
 	clear_bit(ICE_DOWN, pf->state);
 	/* Now perform PF reset and rebuild */
 	reset_type = ICE_RESET_PFR;
@@ -7805,7 +7800,12 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ice_health_clear(pf);
 
-	ice_plug_aux_dev(pf);
+	/* Initialize RDMA after control queues are ready */
+	err = ice_init_rdma(pf);
+	if (err)
+		dev_err(dev, "Reinitialize RDMA after rebuild failed: %d\n",
+			err);
+
 	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
 		ice_lag_rebuild(pf);
 
-- 
2.43.0

