Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1472288BCB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 16:47:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A61E28774A;
	Fri,  9 Oct 2020 14:47:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JnybJ1xQhuiJ; Fri,  9 Oct 2020 14:47:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 282CD87719;
	Fri,  9 Oct 2020 14:47:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E46BE1BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 06:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DFF17873DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 06:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YaNKOWPIk5-Z for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 06:19:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7DBFE87382
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 06:19:19 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id r21so3002093pgj.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Oct 2020 23:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Nq3cSxz6lVgzyeUcG7Sy4vf1e14uTjN/gxUK21iGIYo=;
 b=OvJ/73+7PmjljH2aMwadqM1c/sdnMKaVliq71VfSTPbP1beGF/BlGr/WU2FUm6Kfnp
 O21jfLysAQfkey46EUTJiEXln78hIKfeqH5o0fYs5lcDEfItPrHsfH9mZjr8T+NiwztZ
 ctomrD5xrcVKaNWFYIEfnevn8xnUKlKchcaYmD698FWH5WV02I6fzRvY/LYuow5lPKoK
 MakOyJUlYiy47a8i/WLalTU9jMKx2n5EwkLWccse0F2pWvX42jQDxQ8pbOB2+zYHFM+F
 kEuqYzytEG38WRycmhW1gTp7MNleaP7PfwAGdCibRvbq7/i1Zpa1c8gs0Rq5nviVCPjN
 5VsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Nq3cSxz6lVgzyeUcG7Sy4vf1e14uTjN/gxUK21iGIYo=;
 b=FlzSy7NBEdTYAho0Skwhk79iko7/IFn/304ItaZUylJo8xS/lvJ8HbaEzZoqx9QSy4
 /rBZ9y36aZSiJj//xoQn+/mqWajaLtXfBzd25Y+jfFFOAim7wTCUejhMuI45ezamx6/X
 g4Ty55G5L4iBNKXk2OdS8r8AeXRk39cWjT7ZeGcjrPEvTk9t8LO4AeNjJiSAkDca7ck0
 NUGYqHHiieZC2/2sPoETttcplnTf79eP0M/6N8Un6Vaps1/a2goq+vD22Tll4bAOZEv6
 d+50WmPyS+ZUGM2SE4MMitCAvk994KjRxETUUeU/897zZu9SS+cNYrULhCFVI/NJcnCv
 b9jw==
X-Gm-Message-State: AOAM530bz7Kkc7ygWbx9gqfPVQ+W+IURaacQ7Yrb7uOEw77dDpGlZXsQ
 T6kcBcMCd18s1dhLU0hEMA==
X-Google-Smtp-Source: ABdhPJzcR4eBTVJ1VWWOdC5oyxQVPECyPPZXummcpip00+A5fCJB8KdmmHWQU47wZSkjwpOzM89yYA==
X-Received: by 2002:a17:90b:1496:: with SMTP id
 js22mr2927362pjb.20.1602224359072; 
 Thu, 08 Oct 2020 23:19:19 -0700 (PDT)
Received: from localhost.localdomain ([47.242.140.181])
 by smtp.gmail.com with ESMTPSA id x30sm1131179pge.59.2020.10.08.23.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 23:19:18 -0700 (PDT)
From: Pujin Shi <shipujin.t@gmail.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Fri,  9 Oct 2020 14:18:27 +0800
Message-Id: <20201009061827.1279-1-shipujin.t@gmail.com>
X-Mailer: git-send-email 2.18.4
X-Mailman-Approved-At: Fri, 09 Oct 2020 14:47:04 +0000
Subject: [Intel-wired-lan] [PATCH] net: intel: ice: Use uintptr_t for
 casting data
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Pujin Shi <shipujin.t@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix up a compiler error on 64bit architectures where pointers.

In file included from drivers/net/ethernet/intel/ice/ice_flex_pipe.c:6:0:
drivers/net/ethernet/intel/ice/ice_flex_pipe.c: In function 'ice_free_flow_profs':
drivers/net/ethernet/intel/ice/ice_flow.h:197:33: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
 #define ICE_FLOW_ENTRY_HNDL(e) ((u64)e)
                                 ^
drivers/net/ethernet/intel/ice/ice_flex_pipe.c:2882:9: note: in expansion of macro 'ICE_FLOW_ENTRY_HNDL'
         ICE_FLOW_ENTRY_HNDL(e));
         ^
In file included from drivers/net/ethernet/intel/ice/ice_flow.c:5:0:
drivers/net/ethernet/intel/ice/ice_flow.c: In function 'ice_flow_add_entry':
drivers/net/ethernet/intel/ice/ice_flow.h:197:33: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
 #define ICE_FLOW_ENTRY_HNDL(e) ((u64)e)
                                 ^
drivers/net/ethernet/intel/ice/ice_flow.c:946:13: note: in expansion of macro 'ICE_FLOW_ENTRY_HNDL'
  *entry_h = ICE_FLOW_ENTRY_HNDL(e);
             ^

2 warnings generated

Signed-off-by: Pujin Shi <shipujin.t@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 3913da2116d2..b9a5c208e484 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -194,7 +194,7 @@ struct ice_flow_entry {
 	u16 entry_sz;
 };
 
-#define ICE_FLOW_ENTRY_HNDL(e)	((u64)e)
+#define ICE_FLOW_ENTRY_HNDL(e)	((uintptr_t)e)
 #define ICE_FLOW_ENTRY_PTR(h)	((struct ice_flow_entry *)(h))
 
 struct ice_flow_prof {
-- 
2.18.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
