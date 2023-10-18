Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EB47CDA45
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 13:26:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A836182346;
	Wed, 18 Oct 2023 11:26:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A836182346
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697628407;
	bh=VljEsQCdR6xTQIn5vDBi+RhvcN4010Ldz1A3wIGRAAQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9ZMPbn53wtFU4hKsxkJAP0eyUNJoIiWyvKhhbf3CyLemzaiP2t/7MvAbWlKOe7Paj
	 KVpHqjYXrQCtRhK3zkGoekhLHDU1SRbwtP7pflrBRib1leYCk5mOd4SwxwnEPX82hI
	 /3eIUUNURgHr1KULUkdIQVKFsjMFPE7gQxJxN54oly6F2YSs+N8z+ZBGpuK4BuvI1W
	 if0FsMNpJar3rGnDtjSZRznKpJheDg5D8NEOFes80iaGHoMPwpzLDD4CAPozeoCcPZ
	 Ncdopuao4sINOOZqTqZQGx6U6XKqB0jk4CnEP3Pbu+Pc+dxBA+55qW8uk9TYe4RNhs
	 K66iffjc5OQUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yzkMkJjL2ZHC; Wed, 18 Oct 2023 11:26:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACD6082215;
	Wed, 18 Oct 2023 11:26:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACD6082215
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDAE21BF267
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C1C8041E28
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:26:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1C8041E28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id caIJJ4lK4jjq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 11:26:40 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E691141DE5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:26:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E691141DE5
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-688-0XlQQ09WNBCF9GWRvoz_Gg-1; Wed, 18 Oct 2023 07:26:24 -0400
X-MC-Unique: 0XlQQ09WNBCF9GWRvoz_Gg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DFF9F10201E0;
 Wed, 18 Oct 2023 11:26:23 +0000 (UTC)
Received: from p1.luc.com (unknown [10.45.226.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4923F492BEE;
 Wed, 18 Oct 2023 11:26:22 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 18 Oct 2023 13:26:20 +0200
Message-ID: <20231018112621.463893-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697628398;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=LC+JUkUMT+93nTpU6gFosVyFPXlgCxZT1NxP3orC2Vw=;
 b=VL9UUCn+KegwGpTgLIOBA7nwtgVGcR7P2aw6FYG/jxRZgZiaxnqIYiUlfCZd5m3lOsiTHZ
 9mbjxF1/Mc7lic62r6fD0IkiZpddO5amIxuU+CnDWVM3H3aqi7xPmnG3Q1Wa8z3Pgp7yO0
 AdljlCGfEc8g2zu/TAspts9a1LLsnmA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=VL9UUCn+
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix I40E_FLAG_VF_VLAN_PRUNING
 value
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit c87c938f62d8f1 ("i40e: Add VF VLAN pruning") added new
PF flag I40E_FLAG_VF_VLAN_PRUNING but its value collides with
existing I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED flag.

Move the affected flag at the end of the flags and fix its value.

Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 6e310a53946782..55bb0b5310d5b4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -580,7 +580,6 @@ struct i40e_pf {
 #define I40E_FLAG_DISABLE_FW_LLDP		BIT(24)
 #define I40E_FLAG_RS_FEC			BIT(25)
 #define I40E_FLAG_BASE_R_FEC			BIT(26)
-#define I40E_FLAG_VF_VLAN_PRUNING		BIT(27)
 /* TOTAL_PORT_SHUTDOWN
  * Allows to physically disable the link on the NIC's port.
  * If enabled, (after link down request from the OS)
@@ -603,6 +602,7 @@ struct i40e_pf {
  *   in abilities field of i40e_aq_set_phy_config structure
  */
 #define I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED	BIT(27)
+#define I40E_FLAG_VF_VLAN_PRUNING		BIT(28)
 
 	struct i40e_client_instance *cinst;
 	bool stat_offsets_loaded;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
