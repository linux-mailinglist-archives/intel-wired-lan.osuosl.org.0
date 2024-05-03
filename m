Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 666408BAFBF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 May 2024 17:28:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CF2241FCD;
	Fri,  3 May 2024 15:28:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GhdW3vXj5l8j; Fri,  3 May 2024 15:28:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB7B841730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714750092;
	bh=jjRe6xajUkbmK1YsugK7qDg3PV7FRVVruktd97oIQNA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KWiDDRmo7jl4VFdUVQn5EOebwZtFstcUOvdAgT8zayIJVYp1ZfpCFaoZPuXYZMMLY
	 zNSyZWjwFtNU5oG/YsQHYw5cOTp1/XtpYhha3pvcJkr7Ml3G7Ptls3PRssR8U08VFf
	 XZgzRWyZgV6nWjaNSpnpPgOWDU/rqUgagVQahk77RamOSMYE52r6fhGbzNhSipYabM
	 0SNpy2DOE9gPWzuMNlm/QacYt3bbX5qJ/uXt1hhIQcUFv3T+/fKZSSuxFbS+ZOmJFG
	 n6Wpllw/6JOqFDcMSa9lIl0s3BHViT8Fwo56PTe1XIh48Y1fjarQ6GUEx6AOyqVD/m
	 +2eDfdEksQAng==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB7B841730;
	Fri,  3 May 2024 15:28:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 743EA1BF282
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 10:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D0A040AFC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 10:18:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FhC-MgmkQzmR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2024 10:18:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 806F34013B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 806F34013B
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 806F34013B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 10:18:37 +0000 (UTC)
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com
 [209.85.215.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 95B1D3FA4A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 10:18:31 +0000 (UTC)
Received: by mail-pg1-f197.google.com with SMTP id
 41be03b00d2f7-5ca5b61c841so9191122a12.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 May 2024 03:18:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714731510; x=1715336310;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jjRe6xajUkbmK1YsugK7qDg3PV7FRVVruktd97oIQNA=;
 b=tMNhTZC+1zMePDTksDywLuKmBGum3vqWp9y6UF6SdPdubvGUgqf/GW6zhlDVLx0v+s
 7omZtHKGoBifLKXoAu3qZPataAaoWn6ucwcU5nZiIV7cNqVk0F53e2VNDWyarWPM/h1z
 Olb3Zi5Wf/TiH/Fl1zCaAdh2eiwV1X2CHzyJ+KVy+KJGd3GqEaA1Xak10k3S6F6rKlZh
 w1+v+MFLvdOVcIEqhQDoJPkdUykWwDOxPBE4i8efvIKeLJbY15qyk19FNIq0PG97Oh3Z
 8BbbNFLGRZyORCtPthZVqy/b1UAcw8PvhSu1JguZkX9jMfx23c5t4ebSfYEQuLIodsR/
 X3IA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWEji7OcFbFzzlYWgUYAveozYWkeopim5kd9mbV+ZSxqx7mt/8XUK2x6i40j1dWeKUc70+cmLyXvB4mHvS+nVEewrKpJCSvvsDlePg7msREUA==
X-Gm-Message-State: AOJu0YykhgdiRIHjwiePpsgdy8TqK8SyzrfvTv89nI1ajzXZ9pWAKZoZ
 QB5By+tm2ZGg8WK1RsTIYKJ5NfuUz4o7o3fZcgTPpFYYqw1/WQjuHZ18/WyOkp5HEHO/TGvXLjN
 R2M7mJvCQOzMt3M1WuMY6DOfG4msZosQ+Qe67AI63rdBZ52AVqInD5W7ASmMRiw6Jptxw9qXB6p
 MY300HCc4=
X-Received: by 2002:a05:6a21:33a6:b0:1ac:4272:5f88 with SMTP id
 yy38-20020a056a2133a600b001ac42725f88mr2589347pzb.17.1714731510176; 
 Fri, 03 May 2024 03:18:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJIBpRvU4F9VMM0s2VJG699R/KuRERA+E2lxptDmXVTDVYDFnjQPQXw+wlQEB0fPnDSPcQrA==
X-Received: by 2002:a05:6a21:33a6:b0:1ac:4272:5f88 with SMTP id
 yy38-20020a056a2133a600b001ac42725f88mr2589323pzb.17.1714731509849; 
 Fri, 03 May 2024 03:18:29 -0700 (PDT)
Received: from rickywu0421-ThinkPad-X1-Carbon-Gen-11..
 (2001-b400-e23f-5745-953d-200f-4ef8-798c.emome-ip6.hinet.net.
 [2001:b400:e23f:5745:953d:200f:4ef8:798c])
 by smtp.gmail.com with ESMTPSA id
 p23-20020a1709027ed700b001ec379d8167sm2926259plb.115.2024.05.03.03.18.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 May 2024 03:18:29 -0700 (PDT)
From: Ricky Wu <en-wei.wu@canonical.com>
To: jesse.brandeburg@intel.com
Date: Fri,  3 May 2024 18:18:24 +0800
Message-Id: <20240503101824.32717-1-en-wei.wu@canonical.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 03 May 2024 15:28:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1714731511;
 bh=jjRe6xajUkbmK1YsugK7qDg3PV7FRVVruktd97oIQNA=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=qsp5u4qoEiTXPzjm7pS8SBRwo6eS5tk7WAYtJXJ4ObCsP4ZUUujGhPOPNHBJotopI
 EbgG7y+MLr3BJQCHD6ehegLqF12nnIqjPpVd21uzq1N/Nla0FR7jemlpA30kwl4hLe
 YyL+eqQYoM3eQm9K7plYQtOZgb0TuO0LE9TsvkhMBnw3ycryu1M3p1lpH8jieKDSro
 KuLd2SlSCb9G7yH+KEcpnohSTFIlLqOF2JwBzNy+nTx3Ie0/U0VQFRKeodQZqp8C9C
 1PO/nKl7wq1+pPM8Qo45V4rvy21JWr/5rZ9MHwQFHK2ygxZfdQMCPFLH36LRxRq75D
 R/F9F87IRFSEA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=qsp5u4qo
Subject: [Intel-wired-lan] [PATCH v2 1/2] e1000e: let the sleep codes run
 every time
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 en-wei.wu@canonical.com, edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Originally, the sleep codes being moved forward only
ran if we met some conditions (e.g. BMSR_LSTATUS bit
not set in phy_status). Moving these sleep codes forward
makes the usec_interval take effect every time.

Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
---

In v2:
* Split the sleep codes into this patch

 drivers/net/ethernet/intel/e1000e/phy.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index 93544f1cc2a5..4a58d56679c9 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -1777,6 +1777,11 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
 
 	*success = false;
 	for (i = 0; i < iterations; i++) {
+		if (usec_interval >= 1000)
+			msleep(usec_interval / 1000);
+		else
+			udelay(usec_interval);
+
 		/* Some PHYs require the MII_BMSR register to be read
 		 * twice due to the link bit being sticky.  No harm doing
 		 * it across the board.
@@ -1799,10 +1804,6 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
 			*success = true;
 			break;
 		}
-		if (usec_interval >= 1000)
-			msleep(usec_interval / 1000);
-		else
-			udelay(usec_interval);
 	}
 
 	return ret_val;
-- 
2.40.1

