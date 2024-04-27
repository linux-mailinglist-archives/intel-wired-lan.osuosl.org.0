Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 386558B44D5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Apr 2024 09:26:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D75736083D;
	Sat, 27 Apr 2024 07:26:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id djrPTI6sardo; Sat, 27 Apr 2024 07:26:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19AEA60815
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714202815;
	bh=X91WoFrN3qg460EYcwXb9U+URsgFQoWkr+NpKT94cjw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S4aI12Up5MOu5OH4mggbnZRZYL6hmmygXnSA+9stDZWdjK0U61LP1HhUhQ90uWrHS
	 /D9kI3b5dAn3vrkBPK7iAiusgRSvvOPCBL9zXHHL6o7K0wRfPbHjQVktRLcoq6rjea
	 l4hmid8XmxuAQ4QSJvfQXf7EiC5d40H2+6qtW6oMazS7SEqldJcol/DXVA7T4MOAP1
	 gLqMt1lOIacPI/TXMYXoLDhwekxF4f1gjCCJl/Oxp0jFivgVFpd2KUJomIKeFAZu86
	 Fl4qtFDALVfgYXdYs1MumGuVs/BrnRNhx9JsJVaqQWT6RSg+bElZGGiSbWnuDNEq3X
	 8VXeSrKK9HGwA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19AEA60815;
	Sat, 27 Apr 2024 07:26:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D3B01BF37E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 07:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1A387607CD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 07:26:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1t_hly4tpK9m for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Apr 2024 07:26:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 59B57607DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59B57607DB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59B57607DB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 07:26:43 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-578-l-5YaWpRPJORrv3nHoNRug-1; Sat,
 27 Apr 2024 03:26:37 -0400
X-MC-Unique: l-5YaWpRPJORrv3nHoNRug-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9D92C3C025C0;
 Sat, 27 Apr 2024 07:26:36 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DCBA7492BC7;
 Sat, 27 Apr 2024 07:26:34 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Sat, 27 Apr 2024 09:26:08 +0200
Message-ID: <20240427072615.226151-8-ivecera@redhat.com>
In-Reply-To: <20240427072615.226151-1-ivecera@redhat.com>
References: <20240427072615.226151-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1714202802;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X91WoFrN3qg460EYcwXb9U+URsgFQoWkr+NpKT94cjw=;
 b=MzjOeupGYxvGUB+ZhsIaF1BTj7TiZVVNE5lLimp9GZPc6WQT4CK33zW2Sc6ng7vLneqY/5
 edEoujZ17lYT9d0CFpSjN1AZDrsbPgTEOGGYW6sryJxrAL+LE/E6WPTg8B7yzzfJlNp1Fk
 nQCB9eYJLXnFwyTHu1zOj43usNZuZZs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=MzjOeupG
Subject: [Intel-wired-lan] [PATCH net-next v4 7/7] i40e: Add and use helper
 to reconfigure TC for given VSI
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add helper i40e_vsi_reconfig_tc(vsi) that configures TC
for given VSI using previously stored TC bitmap.

Effectively replaces open-coded patterns:

enabled_tc = vsi->tc_config.enabled_tc;
vsi->tc_config.enabled_tc = 0;
i40e_vsi_config_tc(vsi, enabled_tc);

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 32 +++++++++++++++------
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 26e5c21df19d..2cc7bec0557b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5917,6 +5917,28 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
 	return ret;
 }
 
+/**
+ * i40e_vsi_reconfig_tc - Reconfigure VSI Tx Scheduler for stored TC map
+ * @vsi: VSI to be reconfigured
+ *
+ * This reconfigures a particular VSI for TCs that are mapped to the
+ * TC bitmap stored previously for the VSI.
+ *
+ * Context: It is expected that the VSI queues have been quisced before
+ *          calling this function.
+ *
+ * Return: 0 on success, negative value on failure
+ **/
+static int i40e_vsi_reconfig_tc(struct i40e_vsi *vsi)
+{
+	u8 enabled_tc;
+
+	enabled_tc = vsi->tc_config.enabled_tc;
+	vsi->tc_config.enabled_tc = 0;
+
+	return i40e_vsi_config_tc(vsi, enabled_tc);
+}
+
 /**
  * i40e_get_link_speed - Returns link speed for the interface
  * @vsi: VSI to be configured
@@ -14279,7 +14301,6 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 	struct i40e_vsi *main_vsi;
 	u16 alloc_queue_pairs;
 	struct i40e_pf *pf;
-	u8 enabled_tc;
 	int ret;
 
 	if (!vsi)
@@ -14312,10 +14333,8 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 	 * layout configurations.
 	 */
 	main_vsi = i40e_pf_get_main_vsi(pf);
-	enabled_tc = main_vsi->tc_config.enabled_tc;
-	main_vsi->tc_config.enabled_tc = 0;
 	main_vsi->seid = pf->main_vsi_seid;
-	i40e_vsi_config_tc(main_vsi, enabled_tc);
+	i40e_vsi_reconfig_tc(main_vsi);
 
 	if (vsi->type == I40E_VSI_MAIN)
 		i40e_rm_default_mac_filter(vsi, pf->hw.mac.perm_addr);
@@ -15074,11 +15093,8 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 		}
 	} else {
 		/* force a reset of TC and queue layout configurations */
-		u8 enabled_tc = main_vsi->tc_config.enabled_tc;
-
-		main_vsi->tc_config.enabled_tc = 0;
 		main_vsi->seid = pf->main_vsi_seid;
-		i40e_vsi_config_tc(main_vsi, enabled_tc);
+		i40e_vsi_reconfig_tc(main_vsi);
 	}
 	i40e_vlan_stripping_disable(main_vsi);
 
-- 
2.43.2

