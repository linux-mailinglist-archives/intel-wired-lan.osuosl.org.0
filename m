Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD84ADEE85
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 15:54:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9330E40915;
	Wed, 18 Jun 2025 13:54:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uZInCSCMs5ni; Wed, 18 Jun 2025 13:54:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 236C7408EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750254872;
	bh=VsjqlWk6bmFlt9a3E9KK327lUQiY5+ZZ+i/JJjNAi0U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iHDQcP8j27sOMf+3GhJsnMSfxujdlnYivrLE0p94miZTc7AnkwLRFlcOhLBTzyzwy
	 kut+eUyxjyAQqPS4L+87P52BaW9xVvYMXJqv89Uwn1VJBSpYWyRA1PZOmLF9kuf/qC
	 pNCYPMB7IDXtTFiAVEN9V8zggubu8oieUGoB0tyjAhAQ9vJhzagOTC/ND5RRk7+ijr
	 cpWau4OeUpZz2nGyvEQUev++XQORavKQvWFio0KwZsDIRbovxqL10lLfTbjE8YOGfD
	 kCJmyNmrttw574wRF56MoV9sCECs9aMx5IK5Q90368+hVRnvzFWosO5FFJL7e9XPRy
	 C4SDd0Au7Iajg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 236C7408EE;
	Wed, 18 Jun 2025 13:54:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A5F9416B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 13:54:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8AEB880B9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 13:54:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zYtz9_9YWZyf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 13:54:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::331; helo=mail-wm1-x331.google.com;
 envelope-from=colin.i.king@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F074780E4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F074780E4E
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F074780E4E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 13:54:29 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-442fda876a6so60837855e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 06:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750254868; x=1750859668;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VsjqlWk6bmFlt9a3E9KK327lUQiY5+ZZ+i/JJjNAi0U=;
 b=A6Mxtd4SDXPN+xlyqi/dbcgcOP9DJ0L30p/HiomXnQSe7blf3IcSQVfkElqK8lmO9O
 uduAaDWbJy5z3gpCin/QpmzHk24jg1gO9XrSvyQLldHmx4UX0ZBu5EPsklY5vaCgq+Ey
 J7SE179se9ZwM0K+SRjJlwj6D8Mz+3ktkeeDV0IjI1GEzSquyfhwrMC0o3QVLMIH3fVW
 9CC4F0rB75N27L3eDjBMG/if14PUD6PfFBMcxAyVPC1Z5X3YLUa9rU6RwGX4CP6X/X9J
 Rf3QD5o1Hh2O9R9kd9rWXnrBcW0+jgQKduJhPRTGGLzrBBXFjp+ZMg+ZV7mzMTNntRAq
 ErWw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX3pByi1cEBGCKgNQKq0gOxl8kq69NBWsOAWWfmCjZ35Y8uTpSCmI1RGzdFqXLukWgTaU/M7rK++eiaNy3u10I=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw4pzhkAYqUC0yu9VDEw4HfiSW2TTGQC+6Zps66V56KrVpP+rnq
 YuFNeIes2qZ1f0BdVprYx4kfZE/+Oo93ccNsubAsLBP3zuXIl7Rz1hEM
X-Gm-Gg: ASbGnctlYiOb5GnaL19Bno9OaJECDqmW1TqyazKcKaEZzBIM9R9mjjo3smo2zvSc21K
 jQDhCS2POo+RDl5AaBE3SIFIfbOfVd4NlVSrzGEYe2Bi9kSl3Pu/+e+YD/oAUkqD9YPNNObt+p4
 /lBNilsuoN3keL6L2ZY2kR88yZIYojYSM7SO4XupVjsMSolL0bCTW+cpZxfi9x+2nUa+NVs5e8l
 WHplEV0606bMwRI1zQCDB7T6qaRcMCQ2aCimAr3hJEcYT6wCAxLA2rfekMZgnXII0oLHn9wXFxV
 0Kv3qRpaVHUkBwn/a05M9uFDirLfZYdcwEJ6R21fXW4qrqs5eYyX2dwmjhlu
X-Google-Smtp-Source: AGHT+IGK0BK6ayZuw30y2UmFGch38fYUMJhCpRBmDebTNO7bFXfxfhyJc3ld19M5sFBfc55vHw3/ig==
X-Received: by 2002:a05:600c:698d:b0:442:ccf0:41e6 with SMTP id
 5b1f17b1804b1-4533ca4e339mr182304675e9.3.1750254867610; 
 Wed, 18 Jun 2025 06:54:27 -0700 (PDT)
Received: from localhost ([87.254.0.133]) by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-4532e156e8dsm214525955e9.31.2025.06.18.06.54.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Jun 2025 06:54:27 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Wed, 18 Jun 2025 14:54:08 +0100
Message-ID: <20250618135408.1784120-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750254868; x=1750859668; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=VsjqlWk6bmFlt9a3E9KK327lUQiY5+ZZ+i/JJjNAi0U=;
 b=OQPcxV4gGnhD3PWwtmOVrAHh9ANca0u6YObrQcw9gZx3eIVDb43oOjJwWNZ71qRDzU
 cnR5v04TTe7mAEWRyZkHfwbYg2W10TdGKgTpXPXVLT6T80XOk7jBjxRUaWpGgFu3u8hC
 Wamu0CGWiLgCJT0XfyOXXm6N/7kL25d3lvEJbcHTYEsu3FEMEwVDIvAJCsu7ep6YIVEh
 tSX4CHK1cFA3ESXYWtvPkeIW8vIoYk0b74+9EfQZe9a6t8qjreiGtldrgPVmwR7Wa2z+
 xaUUS3ZBVICjy9lZJbxMCw6iH1p4RtHL/5V12ht8/v6MaShvpJCuroGCOxow4WSTIQE4
 Zcgg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=OQPcxV4g
Subject: [Intel-wired-lan] [PATCH] igc: Make the const read-only array
 supported_sizes static
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

Don't populate the const read-only array supported_sizes on the
stack at run time, instead make it static.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/net/ethernet/intel/igc/igc_tsn.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index b23b9ca451a7..8a110145bfee 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -431,7 +431,7 @@ static u8 igc_fpe_get_frag_size_mult(const struct igc_fpe_t *fpe)
 
 u32 igc_fpe_get_supported_frag_size(u32 frag_size)
 {
-	const u32 supported_sizes[] = {64, 128, 192, 256};
+	static const u32 supported_sizes[] = { 64, 128, 192, 256 };
 
 	/* Find the smallest supported size that is >= frag_size */
 	for (int i = 0; i < ARRAY_SIZE(supported_sizes); i++) {
-- 
2.49.0

