Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE4A49D219
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jan 2022 19:56:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEEB684D09;
	Wed, 26 Jan 2022 18:56:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQ6aekiC_8hy; Wed, 26 Jan 2022 18:56:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84157855D2;
	Wed, 26 Jan 2022 18:56:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 318A41BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 18:56:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F4C941295
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 18:56:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CIkKm0FlnbPV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jan 2022 18:56:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B67FA40B39
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 18:56:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 753056158D;
 Wed, 26 Jan 2022 18:56:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACCA0C340E3;
 Wed, 26 Jan 2022 18:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643223360;
 bh=12UJsUxEatuCtPNILbLe8+CTil6V/2ysSk38ET3sfz8=;
 h=From:To:Cc:Subject:Date:From;
 b=uDeLxEbNxYCvj5Ua3yGO57NH0pNuKvf8j0cWmjAl601+s7ywlvk5j+ilFe/Ol04ul
 BuDjE2Bw2olMk+l2Z5nghQ7XoImDTNFi1ppN4MOcuhJsSGVAYdc9vDdH6SAae3/pdl
 eNDjxWX64M8dlRD2Ib0a7DvvwWEsGnd+w0xb5dfIy9wyx5xujdgcIpMPOEAVtTlYTG
 8YKaqsozzr6ezZ8UL7o/MQlt/9mpBB85tudSDqoSmQLoO6MirXTaP4XKJpd0LVZJBK
 k0u2fCze8v8SNlmNDbKR7OZmHEQfRbDx9R9/tj5OZHKYtJ5m6u1iwKfK4wMZwB2HqI
 5E1H8jbhiijyw==
From: Jakub Kicinski <kuba@kernel.org>
To: anthony.l.nguyen@intel.com
Date: Wed, 26 Jan 2022 10:55:44 -0800
Message-Id: <20220126185544.2787111-1-kuba@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] i40e: remove enum i40e_client_state
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
 shiraz.saleem@intel.com, Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It's not used.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 include/linux/net/intel/i40e_client.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/include/linux/net/intel/i40e_client.h b/include/linux/net/intel/i40e_client.h
index 6b3267b49755..ed42bd5f639f 100644
--- a/include/linux/net/intel/i40e_client.h
+++ b/include/linux/net/intel/i40e_client.h
@@ -26,11 +26,6 @@ struct i40e_client_version {
 	u8 rsvd;
 };
 
-enum i40e_client_state {
-	__I40E_CLIENT_NULL,
-	__I40E_CLIENT_REGISTERED
-};
-
 enum i40e_client_instance_state {
 	__I40E_CLIENT_INSTANCE_NONE,
 	__I40E_CLIENT_INSTANCE_OPENED,
@@ -190,11 +185,6 @@ struct i40e_client {
 	const struct i40e_client_ops *ops; /* client ops provided by the client */
 };
 
-static inline bool i40e_client_is_registered(struct i40e_client *client)
-{
-	return test_bit(__I40E_CLIENT_REGISTERED, &client->state);
-}
-
 void i40e_client_device_register(struct i40e_info *ldev, struct i40e_client *client);
 void i40e_client_device_unregister(struct i40e_info *ldev);
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
