Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BA216C06B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2020 13:10:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 97DF620015;
	Tue, 25 Feb 2020 12:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 29aExbimVV2I; Tue, 25 Feb 2020 12:10:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F2DD620531;
	Tue, 25 Feb 2020 12:10:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F6601BF359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 12:10:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8125620015
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 12:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 66ld+d28GMCy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2020 12:10:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 12E41204A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 12:10:29 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id w12so14454421wrt.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 04:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+vf7vFy32leZxkg71Rv8R4R2GOrwOOUiymQNeS6WVSI=;
 b=06PkSJnH2FZx1nCC/x5Ek3romIGn5geHaYIAL2P10gLlY/uzRXVTk/4P7RxmEWHG1G
 NaJu+MMjA0ydvC6EYmyyTjrwXagaCw+8ofMLtvjyTNln/3qwKE1xy65o6W5slaB5MId7
 z0XC3uLBtNXJBv0aRP2avu3LRihZHixIPxdI2Kzkf+6K6osdYoYkmoccWS2hf0zha8dL
 ZYkmMQQzZ/oyrEMVqjg3L64N8ymngGbt3Qaq9XZb2Fn5gTxG1j1IEdlGK9YxFv9c15XD
 4Ael8SXcpL6M8ZfjzcsK7CEsh6+DxeL5nJjJgRGoHFzKoDu6auTRPB/KmqAK40gTHPfg
 DsIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+vf7vFy32leZxkg71Rv8R4R2GOrwOOUiymQNeS6WVSI=;
 b=hjZkmb1l2Ourd+w4xF777eSMVpB+PDsTgV15XSy9WCEXSum4Fat3KgC7jp2pQfDAZm
 KBJ3IrplkILS1O45FS03+WRP5zOY2tzEKSSwJCjjax/ldBHeVzFv+kEUZwFBfkwTglDn
 rARfXbLTQeafaXJ8jm3lM6YFIBE0FC/FEX0ag61eorlTth/TX55NHP7iKV8z3aRqoCWR
 7e8WJYmgjJ6Nf1QTW/wkK7FWqXrjzKLPxdE3bkckOouJFxEhMkvDqMH8AB77Q2BZ896+
 vo1FA2GNsV1BtCXnZtQaocX6n5/6ywBCuOJ4eLYt+1sNgowjfUJbbOF1uN+jATk6MwEY
 5jfQ==
X-Gm-Message-State: APjAAAUEl4w7168d8iStW4EgYMdfNpnBQmC1DFhGLWKIIUwXNgrYY80g
 FcbundTghcPnJwQbz5Kz1H3Z1A==
X-Google-Smtp-Source: APXvYqwklqACVlTE19bm6aSF4tHd7IzANxCHuuSNEIWyYYMxnnkqqxqSFwkHESzEGyZyydnRrHmpTA==
X-Received: by 2002:adf:f787:: with SMTP id q7mr72914452wrp.297.1582632627798; 
 Tue, 25 Feb 2020 04:10:27 -0800 (PST)
Received: from localhost (ip-89-177-130-96.net.upcbroadband.cz.
 [89.177.130.96])
 by smtp.gmail.com with ESMTPSA id a7sm16745561wrm.29.2020.02.25.04.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 04:10:24 -0800 (PST)
From: Jiri Pirko <jiri@resnulli.us>
To: netdev@vger.kernel.org
Date: Tue, 25 Feb 2020 13:10:23 +0100
Message-Id: <20200225121023.6011-1-jiri@resnulli.us>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [patch net-next] iavf: use
 tc_cls_can_offload_basic() instead of chain check
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
Cc: kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jiri Pirko <jiri@mellanox.com>

Looks like the iavf code actually experienced a race condition, when a
developer took code before the check for chain 0 was put to helper.
So use tc_cls_can_offload_basic() helper instead of direct check and
move the check to _cb() so this is similar to i40e code.

Signed-off-by: Jiri Pirko <jiri@mellanox.com>
---
This was originally part of "net: allow user specify TC filter HW stats type"
patchset, but it is no longer related after the requested changes.
Sending separatelly.
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 62fe56ddcb6e..8bc0d287d025 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3061,9 +3061,6 @@ static int iavf_delete_clsflower(struct iavf_adapter *adapter,
 static int iavf_setup_tc_cls_flower(struct iavf_adapter *adapter,
 				    struct flow_cls_offload *cls_flower)
 {
-	if (cls_flower->common.chain_index)
-		return -EOPNOTSUPP;
-
 	switch (cls_flower->command) {
 	case FLOW_CLS_REPLACE:
 		return iavf_configure_clsflower(adapter, cls_flower);
@@ -3087,6 +3084,11 @@ static int iavf_setup_tc_cls_flower(struct iavf_adapter *adapter,
 static int iavf_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
 				  void *cb_priv)
 {
+	struct iavf_adapter *adapter = cb_priv;
+
+	if (!tc_cls_can_offload_basic(adapter->netdev, type_data))
+		return -EOPNOTSUPP;
+
 	switch (type) {
 	case TC_SETUP_CLSFLOWER:
 		return iavf_setup_tc_cls_flower(cb_priv, type_data);
-- 
2.21.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
