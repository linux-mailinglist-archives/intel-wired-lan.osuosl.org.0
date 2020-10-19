Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD33292CBE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Oct 2020 19:27:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 50B6D8760D;
	Mon, 19 Oct 2020 17:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i-eQ2I-UOnXe; Mon, 19 Oct 2020 17:27:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E981187632;
	Mon, 19 Oct 2020 17:27:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B226D1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 17:26:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A68C087257
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 17:26:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C4KUC7V62VZo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Oct 2020 17:26:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C912087238
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 17:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603128378;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type;
 bh=aVNN1C4LAhUWrEh6nN2bC8yXuvzsPM7VbyNnh38X8Js=;
 b=NulKys7IVDcrK5VexBfODAoS+X/F+eDDKCKGlIJoXDCVWPZwoPOUX9M94U5pGhq+qQ5dyV
 F/XBx17Lm1fMR9dUR3a7ppHkjMxHoFSHUytND+xbdVBHbNO9w19P9vsdqSZXES+jznK31J
 DSbO0cvVrSuDIurYgSLADmbFSu31gXI=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-aeUe455gM1isuPgSbQSHyQ-1; Mon, 19 Oct 2020 13:26:14 -0400
X-MC-Unique: aeUe455gM1isuPgSbQSHyQ-1
Received: by mail-qt1-f200.google.com with SMTP id e8so386760qtp.18
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 10:26:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aVNN1C4LAhUWrEh6nN2bC8yXuvzsPM7VbyNnh38X8Js=;
 b=l9tcLDD6Ex5Z5YKJDm71geik2OpIrtsI84H+qzmyt7+GC5KgGe5S36jMvTZejlKaBS
 MZ7yjclNISBfCeJZTYVv7TPZzzxudWWfO/fuTJwkNu1IaHWM/hEzp8wfZy45ilQ5mKGg
 SgzIkapcxbn8ppqth0Nj3+PQPrebAm/Qp5WHk97muRlux6hIb9A0RDCTRWDDJnAKUiGX
 9L9MHYG0Px3AWsfoocw0pLetdqE6VK+TAaaErz2RUUuBGTgklGAhSsGWA3DDrvjNo/s3
 JrrG69ZIuIf0PkOP91k4n8gDjpmJO3S0ZJJ5xyR2N/sf3fmKkKQ2yh+ceSrTQaXz1MmG
 zS8A==
X-Gm-Message-State: AOAM5334Tgg4cMlB5EytDAdsDaipoRA8BymnRAKb33nTaPJicmUTP6+G
 LAJnHPXY1ozq1jTenhapuLTK9bf6hFE48e/rQeKaKu2OGqeA14x83wrnuq3TcfG71r7hKYzfrfK
 yFEzwIHajokGdW8Dio8RzBhgeGd5PVw==
X-Received: by 2002:a37:a251:: with SMTP id l78mr562662qke.291.1603128373874; 
 Mon, 19 Oct 2020 10:26:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyJsKJNW3l1vaCdXKu71mlHfkWuJrWdzvbnm3fDmbdSsQlxEmc6RtS4ldJcTGmPfXxmIylQKw==
X-Received: by 2002:a37:a251:: with SMTP id l78mr562637qke.291.1603128373609; 
 Mon, 19 Oct 2020 10:26:13 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id a21sm228385qtb.30.2020.10.19.10.26.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Oct 2020 10:26:12 -0700 (PDT)
From: trix@redhat.com
To: irusskikh@marvell.com, davem@davemloft.net, kuba@kernel.org,
 benve@cisco.com, _govind@gmx.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, bigeasy@linutronix.de, tglx@linutronix.de
Date: Mon, 19 Oct 2020 10:26:07 -0700
Message-Id: <20201019172607.31622-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Mon, 19 Oct 2020 17:27:46 +0000
Subject: [Intel-wired-lan] [PATCH] net: remove unneeded break
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Tom Rix <trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tom Rix <trix@redhat.com>

A break is not needed if it is preceded by a return or goto

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/ethernet/aquantia/atlantic/aq_nic.c | 1 -
 drivers/net/ethernet/cisco/enic/enic_ethtool.c  | 1 -
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c   | 1 -
 drivers/net/wan/lmc/lmc_proto.c                 | 4 ----
 4 files changed, 7 deletions(-)

diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_nic.c b/drivers/net/ethernet/aquantia/atlantic/aq_nic.c
index 0f865daeb36d..bf5e0e9bd0e2 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_nic.c
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_nic.c
@@ -1163,7 +1163,6 @@ int aq_nic_set_link_ksettings(struct aq_nic_s *self,
 		default:
 			err = -1;
 			goto err_exit;
-		break;
 		}
 		if (!(self->aq_nic_cfg.aq_hw_caps->link_speed_msk & rate)) {
 			err = -1;
diff --git a/drivers/net/ethernet/cisco/enic/enic_ethtool.c b/drivers/net/ethernet/cisco/enic/enic_ethtool.c
index a4dd52bba2c3..1a9803f2073e 100644
--- a/drivers/net/ethernet/cisco/enic/enic_ethtool.c
+++ b/drivers/net/ethernet/cisco/enic/enic_ethtool.c
@@ -434,7 +434,6 @@ static int enic_grxclsrule(struct enic *enic, struct ethtool_rxnfc *cmd)
 		break;
 	default:
 		return -EINVAL;
-		break;
 	}
 
 	fsp->h_u.tcp_ip4_spec.ip4src = flow_get_u32_src(&n->keys);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index de563cfd294d..4b93ba149ec5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -350,7 +350,6 @@ static s32 ixgbe_calc_eeprom_checksum_X540(struct ixgbe_hw *hw)
 		if (ixgbe_read_eerd_generic(hw, pointer, &length)) {
 			hw_dbg(hw, "EEPROM read failed\n");
 			return IXGBE_ERR_EEPROM;
-			break;
 		}
 
 		/* Skip pointer section if length is invalid. */
diff --git a/drivers/net/wan/lmc/lmc_proto.c b/drivers/net/wan/lmc/lmc_proto.c
index e8b0b902b424..4e9cc83b615a 100644
--- a/drivers/net/wan/lmc/lmc_proto.c
+++ b/drivers/net/wan/lmc/lmc_proto.c
@@ -89,17 +89,13 @@ __be16 lmc_proto_type(lmc_softc_t *sc, struct sk_buff *skb) /*FOLD00*/
     switch(sc->if_type){
     case LMC_PPP:
 	    return hdlc_type_trans(skb, sc->lmc_device);
-	    break;
     case LMC_NET:
         return htons(ETH_P_802_2);
-        break;
     case LMC_RAW: /* Packet type for skbuff kind of useless */
         return htons(ETH_P_802_2);
-        break;
     default:
         printk(KERN_WARNING "%s: No protocol set for this interface, assuming 802.2 (which is wrong!!)\n", sc->name);
         return htons(ETH_P_802_2);
-        break;
     }
 }
 
-- 
2.18.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
