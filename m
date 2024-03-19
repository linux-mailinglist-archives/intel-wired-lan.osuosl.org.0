Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8549487FF6D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 15:17:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A561360B00;
	Tue, 19 Mar 2024 14:17:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Slf3L3wZErWU; Tue, 19 Mar 2024 14:17:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D392B60AFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710857843;
	bh=Y4EkBPaev4WA4b0+PhyugvZ3SM0zSNAP+U0AbsiXKCg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0ArNvC4t9UF6hvcPsGxDgWHnWWtzUKLCVETQMPshPm4J+SkIuz3F0JlUqBHAw5TS5
	 PMo83vDTW2A0kNVAXr4E8XVxvtWW1Yeknvp9RgeqNjSA/L3CJqqM3TS6m5ClTSxSCw
	 5a/ssPWEUI85HkCtwANkwn8K4Rod9LMoyuTGd7qO5Uzr98IcWqLDMLzFOWxsToFXDh
	 3MmpryF/nT2VzsgJfm9yp6g3kgXkWS8Z3O1KCYG2o+QMFmY4PGlvXoNeEiYFpr4Umk
	 xxXJewPB4+vCfueSjjXUDuzLYLXJ7zjwJkt7F2Fv2eUclrBK6juhvMUdmG84V10+h+
	 PYBpAzNWag4zA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D392B60AFD;
	Tue, 19 Mar 2024 14:17:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A3BA31BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 14:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F0B860AFD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 14:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0gne12dOq2mb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 14:17:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=erwanaliasr1@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9230560AFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9230560AFB
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9230560AFB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 14:17:19 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-414618e6820so9405185e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 07:17:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710857837; x=1711462637;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Y4EkBPaev4WA4b0+PhyugvZ3SM0zSNAP+U0AbsiXKCg=;
 b=Aj5nL6YGksMIpohRIA2l//AO5bcpOQ48jASAsK+v70HcPfyFNDMaRi8e5LilrKZWQC
 O0fy7wJSLOiYKh10ppecc2VPZNh7TvxOZK/YZF6VhtaHS7kIFQkBoDpsJE25o0sBG1XO
 CYQR+CdPw2M8IdbwRC3CGLHeeW9zJYiaOYQbVjNIMSDhq035guAOxzNh9OypP5SGzHp0
 +YJ2GdC9TpfMGcEL543DZuZtVXgSkGpgIrj/FIqNddlWWmmK0T5tMkqBJ659RdZ2CmyC
 xcGRIB/u04ZtSI2fm1eD9imqxc4xpt5EEgXBKCWlPEcG+O6dy9GLhYQK0e+sMTzrCi+C
 +89Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUunhwR1SCfy8T/ydXtC45AdpeyPT5bGipyxy0ASS1emd3TCPHW9lqkKUlqbMhxj6SKnKjpiO8Dt2XZblwNVkgRt0/Nsy5u/VmjfI0eo076Hw==
X-Gm-Message-State: AOJu0Yy5c1V117M6VBUqqe/BCP1phDgqmxegpd8HKBafqtkGSYfWqrwf
 sH5p51QJGCcw0e2Lv37eW3XcuDGyu++E+beMYAPIY8Gl8lEfPpXf
X-Google-Smtp-Source: AGHT+IEK8XrtocceWWhBNn+d2cIikTbZWC/WQ87q2BgD41zOpII6MKkVrVIWowkSVZkfbLK83FmmYQ==
X-Received: by 2002:a05:600c:314a:b0:413:ef69:df65 with SMTP id
 h10-20020a05600c314a00b00413ef69df65mr2325547wmo.20.1710857837111; 
 Tue, 19 Mar 2024 07:17:17 -0700 (PDT)
Received: from macminim1.retailmedia.com
 ([2a01:e0a:b14:c1f0:617b:c61e:d65f:861e])
 by smtp.googlemail.com with ESMTPSA id
 f2-20020a7bc8c2000000b00414041032casm520189wml.1.2024.03.19.07.17.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Mar 2024 07:17:16 -0700 (PDT)
From: Erwan Velu <erwanaliasr1@gmail.com>
X-Google-Original-From: Erwan Velu <e.velu@criteo.com>
To: 
Date: Tue, 19 Mar 2024 15:16:55 +0100
Message-ID: <20240319141657.2783609-1-e.velu@criteo.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710857837; x=1711462637; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Y4EkBPaev4WA4b0+PhyugvZ3SM0zSNAP+U0AbsiXKCg=;
 b=LTzMLJVCpBxxcJynpqTQO7mWONDyIBYWz3h3e/AjBidlqPpSYs3QUvzaxKm0CGUF1c
 SOguNLQN1I4TfnikZ9YjE6aW35lF+3qgkurRdOAUtNtKLPeWtT21St0TeDb1ZSv/mOxV
 OLH+U/rh90VtOikEn7oB2XoUPWclSTXi+Xa2IGStNw1Z6LTIB3wmklWv0P3k6wWIGkmU
 0AXbRjtQC2rOR3agPpGI6UpA7uPgq0w9U31O0No9X7Eg+HO63wNBjGifCK/pqmE/lvg6
 k8CbWXXq1ssJHCj/N61TaulkTckvvSRlLDv2rNByL6zg7L4Nlg/zT58WVwwR4rVjiwvm
 Oxug==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=LTzMLJVC
Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: Report MFS in decimal base
 instead of hex
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
Cc: Erwan Velu <e.velu@criteo.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the MFS is set below the default (0x2600), a warning message is
reported like the following :

	MFS for port 1 has been set below the default: 600

This message is a bit confusing as the number shown here (600) is in
fact an hexa number: 0x600 = 1536

Without any explicit "0x" prefix, this message is read like the MFS is
set to 600 bytes.

MFS, as per MTUs, are usually expressed in decimal base.

This commit reports both current and default MFS values in decimal
so it's less confusing for end-users.

A typical warning message looks like the following :

	MFS for port 1 (1536) has been set below the default (9728)

Signed-off-by: Erwan Velu <e.velu@criteo.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 85ecf2f3de18..9a142562db38 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16106,8 +16106,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	val = FIELD_GET(I40E_PRTGL_SAH_MFS_MASK,
 			rd32(&pf->hw, I40E_PRTGL_SAH));
 	if (val < MAX_FRAME_SIZE_DEFAULT)
-		dev_warn(&pdev->dev, "MFS for port %x has been set below the default: %x\n",
-			 pf->hw.port, val);
+		dev_warn(&pdev->dev, "MFS for port %x (%d) has been set below the default (%d)\n",
+			 pf->hw.port, val, MAX_FRAME_SIZE_DEFAULT);
 
 	/* Add a filter to drop all Flow control frames from any VSI from being
 	 * transmitted. By doing so we stop a malicious VF from sending out
-- 
2.44.0

