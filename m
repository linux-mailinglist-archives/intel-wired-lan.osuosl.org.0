Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8BE9F35B6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 17:20:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66C2E81FA9;
	Mon, 16 Dec 2024 16:20:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FPxRvcm4p2kk; Mon, 16 Dec 2024 16:20:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BB8E81E04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734366022;
	bh=IlwmzSwpYOXs672PYvNQq898z2PTS+fEUh9xaAh2uWU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s5lgD27pspapugYnOTGCWIdV1SPJNFKWr1qX9OntIEnN0xAu/tlDUEtsL0e0UhHYc
	 veZv24gLIysWS2y/fHw8bBXPhrhuvHt8MHjaCv1ZtScPFYWpJbqKksZYfIrlyMvfVI
	 JhinH6O1E4HiWPtGM5MccgmGpZNl2M4F5IxIgoE6mvaMv5aLmUvT2y2e5JL83oaz0g
	 JazvUavhBUe1yqwM89K619NnkZByyak3KMRoYIOKpw2ZrHiNz6vjbVZSSX5PpEcNXy
	 I1+9VR77CgbDb2lvXLKn+ZY7uelfKVg0OcwXk/wJvEP9NM0HAGAGIsXCpACP72r46p
	 A49rfmc6g4sxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BB8E81E04;
	Mon, 16 Dec 2024 16:20:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C7BAFCE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 05:14:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94C07817B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 05:14:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rPFuQcosylIg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 05:14:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::731; helo=mail-qk1-x731.google.com;
 envelope-from=acelan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A2B6181429
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2B6181429
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2B6181429
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 05:14:36 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id
 af79cd13be357-7b6e4d38185so289204985a.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Dec 2024 21:14:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734326075; x=1734930875;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IlwmzSwpYOXs672PYvNQq898z2PTS+fEUh9xaAh2uWU=;
 b=fJtKwbpYoTofvkh6NVG56CKDwNXWneKEcnMXIUYbnahLLGJ5qBtghjCTHhh+6bNvYU
 LJa+1egW0TqdvZr5htRv/2yMXp2K7+mPQRCnH7QY1Tp1WCfKWWOybdGCmTWw+FiTRPwH
 4ObQCNdJIibAGXtgFJDxRGtNMXMFTRsQJsIw3rAzy6nArosTS5VMZ0HynvVdEJTlwpje
 FNqDy/CSDfUIo1UEuOKGsA/bqZtZVc7lB6jNmXbyQ5NF5w32IPOcQWMeinxHQmQYtyHK
 ezdSz9NyD66LQxvND61M/uhlgEFB3rNRWhZCc0lRjX/BKNNrvxQ0p/k3Bd8uauN6hIXy
 kpvg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW5r/SqZkVgWf2QkhymZmG2xeU+U8J/r33ORD+WdlLLOFYGjlqMdqljKAqBWVFzJcAnzY3DTexLr5f3VH1LltQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzOkKWsbG0L/1PlDkJmIX8ybfTzWYgUsxp8qRn3vF/SYOCUJ3z2
 tiFwuJ84bbYvPzTCzrDhWnof7OcZMjaf0k/QYdpelU0xiI4MB2+komzcAYFDcqdWuw==
X-Gm-Gg: ASbGncvLFegblrXgSs77TVwE00knfrZJwZbk+y1sRhGEPSmVwT/mVsgY7SmX4yqJ5CM
 qD0jRZ+G4fXs9R5suGEq6/61YBYScm/Tk4Rabyv1AZwl2qDxT5uUPBRmXxnDrWQzL2WDWB/bVlJ
 cwXRq8dDz9YA+pgD72FQKWW+k132g3Qq/h5F7ltkMvGjEK6c6RP4aaxXXIB3OLaKQ4Y3gWpAWNV
 goXzX4InI8N5Q9SSFG2RB7MPEilknAbE6zXDI0HDs45fpEjhkFRZLC8EyylXktzSfSHM+sNr3Wn
 85qyvF32Sg==
X-Google-Smtp-Source: AGHT+IFrk0f2ovHsJQJa25YqTu5jT2h5uGeHFj8CZDR9cllMrtrBbmGNGvQJFp+emRqRP4Eg07Vk3A==
X-Received: by 2002:a05:620a:1aa3:b0:7b6:f219:a7a8 with SMTP id
 af79cd13be357-7b6fbf3c37dmr1526783785a.49.1734326075230; 
 Sun, 15 Dec 2024 21:14:35 -0800 (PST)
Received: from localhost (211-75-139-220.hinet-ip.hinet.net. [211.75.139.220])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7b7048bd619sm192112785a.78.2024.12.15.21.14.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2024 21:14:34 -0800 (PST)
From: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 16 Dec 2024 13:14:30 +0800
Message-ID: <20241216051430.1606770-1-acelan.kao@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 16 Dec 2024 16:20:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734326075; x=1734930875; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=IlwmzSwpYOXs672PYvNQq898z2PTS+fEUh9xaAh2uWU=;
 b=D0+UP0ji8V5ducjkaVQ9K77M10zgmxsNq7p9vtDaI0m6c8jrqKr4+eNU7J/AMXCCYj
 XNd9lV8BhroUh+03jqE0Qb7BbtPuskjljH54tLtCXcenwNXdfva6z5jucs07tF2RbWI2
 FHDWhBuUf6Go54DcMT2tiR+WGzZVe7Zk56FpZGtD5b8ziKlOTpPml4YC2tn6NbAP8YKI
 lJ3YmXlq1XoLCdJAjvmKCBsxJSpj7nTRwCemyx7ODEj6IG+p+iSWBYeGChgSSjPFD+FQ
 rl7apl2mu84EL+emoXEn8wh6h/vKCqlLrevgA1scB7d1eAkN0gP92WbIEeDhIGDhvpsA
 mdjg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=fail (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=D0+UP0ji
Subject: [Intel-wired-lan] [PATCH] igc: Return early when failing to read
 EECD register
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

When booting with a dock connected, the igc driver can get stuck for ~40
seconds if PCIe link is lost during initialization.

This happens because the driver access device after EECD register reads
return all F's, indicating failed reads. Consequently, hw->hw_addr is set
to NULL, which impacts subsequent rd32() reads. This leads to the driver
hanging in igc_get_hw_semaphore_i225(), as the invalid hw->hw_addr
prevents retrieving the expected value.

To address this, a validation check is added for the EECD register read
result. If all F's are returned, indicating PCIe link loss, the driver
will return -ENXIO immediately. This avoids the 40-second hang and
significantly improves boot time when using a dock with an igc NIC.

[    0.911913] igc 0000:70:00.0: enabling device (0000 -> 0002)
[    0.912386] igc 0000:70:00.0: PTM enabled, 4ns granularity
[    1.571098] igc 0000:70:00.0 (unnamed net_device) (uninitialized): PCIe link lost, device now detached
[   43.449095] igc_get_hw_semaphore_i225: igc 0000:70:00.0 (unnamed net_device) (uninitialized): Driver can't access device - SMBI bit is set.
[   43.449186] igc 0000:70:00.0: probe with driver igc failed with error -13
[   46.345701] igc 0000:70:00.0: enabling device (0000 -> 0002)
[   46.345777] igc 0000:70:00.0: PTM enabled, 4ns granularity

Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index 9fae8bdec2a7..54ce60280765 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -68,6 +68,10 @@ static s32 igc_init_nvm_params_base(struct igc_hw *hw)
 	u32 eecd = rd32(IGC_EECD);
 	u16 size;
 
+	/* failed to read reg and got all F's */
+	if (!(~eecd))
+		return -ENODEV;
+
 	size = FIELD_GET(IGC_EECD_SIZE_EX_MASK, eecd);
 
 	/* Added to a constant, "size" becomes the left-shift value
-- 
2.43.0

