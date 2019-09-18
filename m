Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5475EB682B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2019 18:31:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5607885F7D;
	Wed, 18 Sep 2019 16:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fy16eB_w8omO; Wed, 18 Sep 2019 16:31:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 377E485F83;
	Wed, 18 Sep 2019 16:31:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E34E1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 00:00:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7268486196
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 00:00:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B3Rn3jSkBj2A for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Sep 2019 00:00:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 96EC786141
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 00:00:26 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id q1so11974860ion.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2019 17:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MdJOyIaAxsqTTOGBVhPPqQpQxjpwNJs1HcQFYx3Zzjg=;
 b=jWw9DjXC8X0srUG5iRljpsbgeveN9bipAp40ZauDfDI5ciDtXBTSOl6zx/ERQq/stC
 dxax2laU4flVGPyPiO9aL0aqHg5cHPGP5L5NbFg+Sk6dRinavy+eqiQ+KPaQFwketJUd
 BiJTeeJRxxBXZe4nEdEy52LoTKz9DsQ4rQMSarNvkTp5AxXUvD3lLZ/yOQy9VO30Zlfv
 0IFSl8r5WN29vLItvLteSkSOwiYj00ELuOJpYeJrSXrz/IJfJ9fRnBnUPwITsq4U64VX
 uCGWSrxhxfcCeihZ1PN9BZjDxxdjrS3+O50Zk3TGk53SONW2Bt/dbhGbDfYOCgdqm5TK
 lfAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MdJOyIaAxsqTTOGBVhPPqQpQxjpwNJs1HcQFYx3Zzjg=;
 b=YD3Gr4cWTEB1b+WgfhRszmIqKc3ykeXtzHsVXjqukY44MAO1ys9DJT++SMsska0DEm
 ZN2FmrItX2BEoAeqcYBh57cgUlf1ARGEOt8ms4mQFrzECd3YbV9dl6D7MvzivgQUNLrs
 kh5yQ3GS5KjZlspHCrD/APKRN5bQuZUAP1NcbVtajQT0fHdbjGfoL0OCPLC4WHPjDr5X
 7kWqCCHlavNwiJPYNJQ2w21lGUC3qTW8z4dxZldt7bx4st6WrT4RL/DVx2B8qTLt/Edy
 H7VYXVV8gg/IKlOy0DlG9sLTNpXIQpOeNG+iuOR1w1jOo7iYpGPMoO35rnHD3vPXBUoh
 Id7w==
X-Gm-Message-State: APjAAAWz8GBsRZ1XE6hmYaIR10jfiLMJxtRpa86Gi31NT7NX6eMxXEPE
 ddHSyI+CmMLeyIkgSsxEkes=
X-Google-Smtp-Source: APXvYqzmiswsCyeFthfzjufcIIgZlOT29bJ0N0k7YjBWC3ZXRNMFWqSFzUBIIbggvt7Sob9yutzjnA==
X-Received: by 2002:a6b:c409:: with SMTP id y9mr1823814ioa.155.1568764825846; 
 Tue, 17 Sep 2019 17:00:25 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id x2sm2815969iob.74.2019.09.17.17.00.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 17:00:25 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Date: Tue, 17 Sep 2019 19:00:12 -0500
Message-Id: <20190918000013.32083-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Wed, 18 Sep 2019 16:31:32 +0000
Subject: [Intel-wired-lan] [PATCH] ethernet/intel: release the local packet
 buffer
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
Cc: netdev@vger.kernel.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 emamd001@umn.edu, intel-wired-lan@lists.osuosl.org, smccaman@umn.edu,
 "David S. Miller" <davem@davemloft.net>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In e100_loopback_test the buffer allocated for the local packet needs to
be released.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/net/ethernet/intel/e100.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index a65d5a9ba7db..4de7dca341fc 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -2394,6 +2394,7 @@ static int e100_loopback_test(struct nic *nic, enum loopback loopback_mode)
 	e100_hw_reset(nic);
 err_clean_rx:
 	e100_rx_clean_list(nic);
+	dev_kfree_skb(skb);
 	return err;
 }
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
