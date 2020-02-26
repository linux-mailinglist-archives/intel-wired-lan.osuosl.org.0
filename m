Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD6216F982
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Feb 2020 09:22:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F4F285218;
	Wed, 26 Feb 2020 08:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f2oCCESaIo-5; Wed, 26 Feb 2020 08:22:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8252B86E21;
	Wed, 26 Feb 2020 08:22:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 501B91BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2020 08:22:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4A4A686241
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2020 08:22:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LMB8AH8_C3R0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2020 08:22:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 20DDF8623E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2020 08:22:00 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id a9so1961401wmj.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2020 00:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7J2DxLz3GhI1hWVnw+0yYK2sI2jWzW1CghgsSy4TD8c=;
 b=TYjJVloRTB37BUUWWYMi4K/5ikHB2wRoSwfNDpjkufa/DcK0Uc40hrHt0myoqC1/lR
 QLlGhoRGzBYUVka9+ul1no8qSIoPR9ttR/BaVUBYsf5FICo+wH8CLN1RZtk/4jfHPa4l
 Q5yNeXMJCnIjcTwH+jM/bkpEkA8KiCwSO3M0agL97zRUXBHKX7X67lWRyAUpcu3KafnK
 SDkHXyQ10KO2Y2mj2IOEa4otlglp+VNcKfP5theg8GQD6sfG4lj/EYRXc0JEhb4ARYVj
 +0wLTBlc5Rfmt3dg7xf1ixOpRexPbXUbEeXBw24IVFK9FEr0Rm9HtnjksPQqjr76qZsj
 EkbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7J2DxLz3GhI1hWVnw+0yYK2sI2jWzW1CghgsSy4TD8c=;
 b=Rwj5dDY5rx6mvvVBAwwuNz051Rn3DmGpE2e74sMI02MGhPsKGChWXWUJGpFz94vIZ8
 VmADLAkvAzZlz7VXhW9YGRwJX4+6NzB/YxeQbV+wcZHnBDwYlMF/PzPGlGjE7DoR/I4K
 ud1nbaRyY8061yzDPRoScGRIEEkbt4m1/xkVW+dvXmRB2iEOVshrC3PI2GHHepcR7TwG
 jgoloNdy4eToBe4OoVhj5iYET7QWc9Jn0InSIz0kpu7MuoYq0bFO1Z4IA463oTDT8DXf
 J2RhEgZpLharn5uE1qKYweku2FfpGqAgu6eb2mYid9ttnOBLM74fMmf3VCGAJLTMll8+
 f5lA==
X-Gm-Message-State: APjAAAU809Yvwk/pPGLPr2MlaHv8BzxCkaHbWHVYBLudXlXM6OggYYuO
 sS4RuDlZ0ZnhFlow8tmQnXDNBQ==
X-Google-Smtp-Source: APXvYqyfaHknJk4HePaBtgPvbtJrHN46kb8Fl1UBaJ/tkAIswMn1tNC5jh+IF++eu6QBCvWfAV5iaA==
X-Received: by 2002:a05:600c:251:: with SMTP id
 17mr4017094wmj.59.1582705319138; 
 Wed, 26 Feb 2020 00:21:59 -0800 (PST)
Received: from localhost (ip-89-177-130-96.net.upcbroadband.cz.
 [89.177.130.96])
 by smtp.gmail.com with ESMTPSA id c9sm2258194wrq.44.2020.02.26.00.21.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 00:21:58 -0800 (PST)
From: Jiri Pirko <jiri@resnulli.us>
To: netdev@vger.kernel.org
Date: Wed, 26 Feb 2020 09:21:57 +0100
Message-Id: <20200226082157.13848-1-jiri@resnulli.us>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [patch net-next v2] iavf: use
 tc_cls_can_offload_and_chain0() instead of chain check
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
So use tc_cls_can_offload_and_chain0() helper instead of direct check and
move the check to _cb() so this is similar to i40e code.

Signed-off-by: Jiri Pirko <jiri@mellanox.com>
---
v1->v2:
- rebased on top of net-next (using the correct helper name)
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 62fe56ddcb6e..76361bd468db 100644
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
+	if (!tc_cls_can_offload_and_chain0(adapter->netdev, type_data))
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
