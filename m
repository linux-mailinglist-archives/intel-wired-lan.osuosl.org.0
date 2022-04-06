Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 068EC4F5A4C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Apr 2022 11:53:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7907C403FD;
	Wed,  6 Apr 2022 09:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QzO4gwzvNT01; Wed,  6 Apr 2022 09:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F12940475;
	Wed,  6 Apr 2022 09:53:13 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E9ED1BF95F
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 09:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2CF88403FD
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 09:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gyBRvUHUXZjW for <intel-wired-lan@osuosl.org>;
 Wed,  6 Apr 2022 09:53:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D6A3040002
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 09:53:04 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id q20so1109211wmq.1
 for <intel-wired-lan@osuosl.org>; Wed, 06 Apr 2022 02:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CbfdQljtBRI4AGprJG6OXl+Pjrib6fd5ZiwjaoJH3k8=;
 b=N3beteOEDJUgzS9pWNKTRH2D8hPb1AtSqhDoPaK//YpEKGsJF11BrcbaWzNV0T3QNk
 Qw00M5NkenwHDDCtDwXaZcXPnOyS4NDvQBF/Y/3B/rnBo7wl8EWXJqBPcvpkTIdMOLej
 L43D+QP8cILvtvYk9SDbakLUXlxD+0BsMnp3dfRfuQ3p6JgewrcDLF7vVnMcLYTKfTdS
 56W6TGMoG2dBSrrCyzesLmbMNKZd6y7W69zjORvYUrbCTwaDHP1ucvOLkV+8yKHtFqzj
 RvpBFAchG0DK3T1tRWu0us72RzCgVyKRpxVw1w93MgcVEjMcKHR7daKZCgmGtsRZqJwS
 0ptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CbfdQljtBRI4AGprJG6OXl+Pjrib6fd5ZiwjaoJH3k8=;
 b=W77vvUFbHsFCIf9b6b3qUXeg52aqpgVHa016ML/uNjFhGrTCUR8ixR1Oke65qF3Vlp
 uzkm6MhpaZ04jOQem7CTh7rVwbLYjGQbyf2vztgbbxnt1204pLjKEXlxff3u/2jgkbEP
 YjsXQd34kvYqVmsWIbRXLDYRL2LdqJ286dXyAP7ikW1iaP30LudvY1rDqCeP3AB0d70i
 TxjQps4wP17iPVj4oocsCrM01rJHC0oxrVVFt3zbUsDF2Mpae6cFL2jCQAoVQRBnOzwy
 HSDgtPdZCq1JGvBOA0wnLK3c2oW54ssZRg+f12iQbaJrJ/Y51RsLySUB7iHZtxFw+Vfv
 BZTw==
X-Gm-Message-State: AOAM5301TvsMkDfhDiiWNAl2D3xPj3ppyBElk61ZL5vQgGR44SiCGGC8
 QmDVpu4uz364V2CWfKrp3TNaIg==
X-Google-Smtp-Source: ABdhPJyg4GFvvKaZUuYg6NHacYIMtyXIZQs+fapgADEwIpunDFphR+V/dhl3Iy98tvvyEvifI0syDw==
X-Received: by 2002:a05:600c:6004:b0:38c:6c00:4316 with SMTP id
 az4-20020a05600c600400b0038c6c004316mr6866048wmb.6.1649238783065; 
 Wed, 06 Apr 2022 02:53:03 -0700 (PDT)
Received: from gojira.dev.6wind.com ([185.13.181.2])
 by smtp.gmail.com with ESMTPSA id
 f18-20020a5d6652000000b001e669ebd528sm13874604wrw.91.2022.04.06.02.53.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Apr 2022 02:53:02 -0700 (PDT)
From: Olivier Matz <olivier.matz@6wind.com>
To: netdev@vger.kernel.org
Date: Wed,  6 Apr 2022 11:52:51 +0200
Message-Id: <20220406095252.22338-2-olivier.matz@6wind.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220406095252.22338-1-olivier.matz@6wind.com>
References: <20220406095252.22338-1-olivier.matz@6wind.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2 1/2] ixgbe: fix bcast packets Rx on
 VF after promisc removal
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, intel-wired-lan@osuosl.org,
 stable@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Nicolas Dichtel <nicolas.dichtel@6wind.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After a VF requested to remove the promiscuous flag on an interface, the
broadcast packets are not received anymore. This breaks some protocols
like ARP.

In ixgbe_update_vf_xcast_mode(), we should keep the IXGBE_VMOLR_BAM
bit (Broadcast Accept) on promiscuous removal.

This flag is already set by default in ixgbe_set_vmolr() on VF reset.

Fixes: 8443c1a4b192 ("ixgbe, ixgbevf: Add new mbox API xcast mode")
Cc: stable@vger.kernel.org
Cc: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Signed-off-by: Olivier Matz <olivier.matz@6wind.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 7f11c0a8e7a9..8d108a78941b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -1184,9 +1184,9 @@ static int ixgbe_update_vf_xcast_mode(struct ixgbe_adapter *adapter,
 
 	switch (xcast_mode) {
 	case IXGBEVF_XCAST_MODE_NONE:
-		disable = IXGBE_VMOLR_BAM | IXGBE_VMOLR_ROMPE |
+		disable = IXGBE_VMOLR_ROMPE |
 			  IXGBE_VMOLR_MPE | IXGBE_VMOLR_UPE | IXGBE_VMOLR_VPE;
-		enable = 0;
+		enable = IXGBE_VMOLR_BAM;
 		break;
 	case IXGBEVF_XCAST_MODE_MULTI:
 		disable = IXGBE_VMOLR_MPE | IXGBE_VMOLR_UPE | IXGBE_VMOLR_VPE;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
