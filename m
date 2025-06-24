Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E7EAE7326
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 01:29:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47C1460E66;
	Tue, 24 Jun 2025 23:29:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Emf5wkV9fx1M; Tue, 24 Jun 2025 23:29:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF62360E72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750807782;
	bh=n6fm/H9Stdspnutu+TLyawJSiAgcj1Gfpx7qEAHQgQE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eHSRjweUPYT9eOXcWs4CkXhOlvCmpaqiSCWr6/C5QZCeOqSCQHZNPB5XRDsPK0NwF
	 CoVVpiDayqX2bzBUugV8BcjhB2xSu/CJZVq/EfsPCLgvOq/hd3WMcSvqG3tj/pDnVo
	 zqFlQQCZz0ktBaPtl1HDnjYIt85UaIKLxR8U/4t5pB5fVjmM4evG1DnIbBLByVeZ31
	 1delqIBYE9vTiE+uzgf2ceKbmRyoBmjVHWI/I2zJDq0KmqmZWsYZbXdqAySUP/ZIYC
	 uB3g++pPG6sXCRbCiE7NUGogobyJB+H/61NMmTiW6506TEO8UHbuwgZHp53A3lMsGX
	 WnX9R6uZrIiTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF62360E72;
	Tue, 24 Jun 2025 23:29:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4AED643F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 23:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C1EA81D0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 23:29:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aMWNTCtdqJqq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 23:29:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=jamie.bainbridge@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 95DF682156
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95DF682156
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 95DF682156
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 23:29:40 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-2360ff7ac1bso9401675ad.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:29:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750807780; x=1751412580;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=n6fm/H9Stdspnutu+TLyawJSiAgcj1Gfpx7qEAHQgQE=;
 b=VqhRfVaWznHihNOlYPlIo5I5WBjZ8SvgKnkL/LgXpVq7vC+CtrwYpwzNQA6gfdt9jW
 j6V2h1m/E56pww1Ddaka0fh5U+0/AC6UHV7+vkXxMH6jEYC7WuYfp8X2PPCO8gjOLqWa
 EVdDNb/IeUDXBsrWvPB4fNggEPPw2AcEhT83m9a3JzlxFIAC4yxdhn4jS8JqO4jY09eu
 y1uhtIIjEuuElgoNRRnY/mfoxl4bUfmMZSHZmkzOwiQWGdCc8sNPAc/wamRyG/79E1Vu
 E30IGDxXYYUspkea03dVIBoHu3c/Bn8GgD0BtV/GW72UWb4yktwMYmF7nLTVk5C99BHM
 9Umw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU9ubk+ZUeHVPsGwzLorbZXrek/hE6SJcYBsI6GPlay61IxAc4RLEfLb4wRSt3sXZOXytd2V0ZUdjYFqe/zqAY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx8OVpdtFaGEHlS/BbqsXhrCMuJS3FFM5Hb7T7xqizq/W8bB2rJ
 aACpC7snVAOIDdYDwWzIevKB+bE0vjlqY8TlhVRl7ibDcGguMsmbx7FL46L6KdJtGgI=
X-Gm-Gg: ASbGncthv9gDOPfszQntQq6mwuH4je5OD/7Xkkiqvh0PtkXkDTu4YgBShW1Zbp+s0gg
 kwUHpEgn3LNvOgomji3s0BgLO75keSzM/0EE61oQmNrDPi/423RzHSMeOMwXCTV+BerGpdOnu+5
 C4JAG//uOe0/br0suq1GtdyloGvCSznNZ/QhM0WmXhYgs/IAFQtgk53Q8Md0Lt7yP/rFrnTTPvw
 6hFvLvixxN0ClFz/9isN8UqSaN8BNhQj2hYz75dPVTdor8XOOWygvPk3UxCJJtYk+FivEIBHGrd
 ZJi/5Tbb8oMr6FC0WWFYO5O109/qN0LUWFZCHL3aQNbTmddD5gBoJuLT7hyk2Nprjw==
X-Google-Smtp-Source: AGHT+IEurEcCEzFHGYcLfmTMbllSIDe2jA403j16rnCUXO3D2XMiCx7Vj1ahivKWJW0hYGsPajBJ2A==
X-Received: by 2002:a17:903:17cb:b0:234:a139:1206 with SMTP id
 d9443c01a7336-238247833d9mr17774705ad.40.1750807779696; 
 Tue, 24 Jun 2025 16:29:39 -0700 (PDT)
Received: from io.local ([159.196.197.79]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-237d83959dasm121584645ad.2.2025.06.24.16.29.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Jun 2025 16:29:39 -0700 (PDT)
From: Jamie Bainbridge <jamie.bainbridge@gmail.com>
To: Simon Horman <horms@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Michal Schmidt <mschmidt@redhat.com>,
 Brett Creeley <brett.creeley@amd.com>, Ivan Vecera <ivecera@redhat.com>
Cc: Jamie Bainbridge <jamie.bainbridge@gmail.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 25 Jun 2025 09:29:18 +1000
Message-Id: <c856f16e6ab37286733174c0fcf12bc72b677096.1750807588.git.jamie.bainbridge@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750807780; x=1751412580; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=n6fm/H9Stdspnutu+TLyawJSiAgcj1Gfpx7qEAHQgQE=;
 b=jdnMvmiNBfpTJI4UH/G2A7AfgGCLTMa5X4VplTYD0E5uxqygHQODL5GIcnQ2EVpZQ7
 efEtQ0qN+3wdLwyIsZ9USjm0l01y1QVGe0FguwoBC2jBYKyFGlq3YgzApVndCvWNFVv2
 2NroLYucG6Df9/U2sHrcjOaXfRqjfuUXAVopPghTQ8cxMNIQ9fCO+1AcnM7NzlsfsRrH
 bRxO1Dxv8dbTvTe3Y2pMpvQ/x5iyA8W8fR283J4EgMWakU4ZwULfDhenruAbnsshMkM3
 92WI2u1qXSs2xM/OmFfVL74BFqFD0BZiAlRMHCPKPHj/xsrHB6IiSO0sXgDw1thAOAMs
 9y1Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=jdnMvmiN
Subject: [Intel-wired-lan] [PATCH v2 net] i40e: When removing VF MAC filters,
 only check PF-set MAC
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

When the PF is processing an Admin Queue message to delete a VF's MACs
from the MAC filter, we currently check if the PF set the MAC and if
the VF is trusted.

This results in undesirable behaviour, where if a trusted VF with a
PF-set MAC sets itself down (which sends an AQ message to delete the
VF's MAC filters) then the VF MAC is erased from the interface.

This results in the VF losing its PF-set MAC which should not happen.

There is no need to check for trust at all, because an untrusted VF
cannot change its own MAC. The only check needed is whether the PF set
the MAC. If the PF set the MAC, then don't erase the MAC on link-down.

Resolve this by changing the deletion check only for PF-set MAC.

(the out-of-tree driver has also intentionally removed the check for VF
trust here with OOT driver version 2.26.8, this changes the Linux kernel
driver behaviour and comment to match the OOT driver behaviour)

Fixes: ea2a1cfc3b201 ("i40e: Fix VF MAC filter removal")
Signed-off-by: Jamie Bainbridge <jamie.bainbridge@gmail.com>
---
v2: Reword commit message as suggested by Simon Horman.
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 88e6bef69342c2e65d8d5b2d7df5ac2cc32ee3d9..45ccbb1cdda0a33527852096ee9759fc19db3a5d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -3137,10 +3137,10 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 		const u8 *addr = al->list[i].addr;
 
 		/* Allow to delete VF primary MAC only if it was not set
-		 * administratively by PF or if VF is trusted.
+		 * administratively by PF.
 		 */
 		if (ether_addr_equal(addr, vf->default_lan_addr.addr)) {
-			if (i40e_can_vf_change_mac(vf))
+			if (!vf->pf_set_mac)
 				was_unimac_deleted = true;
 			else
 				continue;
-- 
2.39.5

