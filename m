Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 800A52D8B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 11:10:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 29F5F860F9;
	Wed, 29 May 2019 09:10:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EzOgD5944HFw; Wed, 29 May 2019 09:10:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D760286BBD;
	Wed, 29 May 2019 09:10:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BAAB21BF964
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 11:56:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B641284B91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 11:56:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Km99rv2P2yN4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2019 11:56:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 370BF84B08
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 11:56:59 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id t1so10868970pgc.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 04:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Y0nU1mnDjk5DEaEAqhn6A+e5w54A9UaAagHSxcoB+rI=;
 b=droyNuncHFCAXk2oz9b91V/DwkejmqPm50x4ZBfqch9PSfHoEpw76fBWY+hcNLkPNG
 cAs+EV160TX6U78yQ58egeBfws+a5Kl9Vi73WP8uPWje0+UdOI6CSy2I3oK4zn9m5OSm
 rp0CnbvZF13HQwXk6gfgGlzeSh0pPuBWAAV3SNBT+5GvDKiWKgcqdt4Hz5LnSSLoyozn
 OW+7OptgTqrxMQwKxrGvbDY3I21Ni6H4sSgK3k/aQj8atL5WEPs2ssJntXR7Dzo+klVf
 Y6u8YfVBM2PbMjmlw19zeQgjjs1qsSUV3vjPyGFZqmt0zX/WNp+EuY+je7xDsFPoAcfc
 1YpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Y0nU1mnDjk5DEaEAqhn6A+e5w54A9UaAagHSxcoB+rI=;
 b=k8gQAkv9kLKp9P79hNDZtRRp+AsaUAA0S4KrjFk5Q8LopYMmwe2JBgbfJberZ+mmze
 7DfWmnVrI/dGA3tYEICBsMbL+YbV2/jncXTX4n6LwnlkLnxtsKHkV5RpHHeusXk9LxIF
 R75V3qpqG6ogziAtBm1/WmDYFYf1lzWGcPzi3214ZXe6RqARvV4wenMPCAfu34/Pzt5z
 T9tQvLQmVgoS+ymzVTKJJvBfKY9SYECC3r0UTyN1WbnaagPtYMhSi3+LSGmFro3QWNt7
 yLqKxfyHQzLEXFSiPfZVCjWvu2V4AabONxA6FflfTHYyyoqXhoXZEEknI0K+evTUeP1k
 TJVw==
X-Gm-Message-State: APjAAAWevbOoJpUqS1WEwJy4//BwZUdAdzanA25smegq6GwsjgFnI7r+
 IY+oC+XNzbs130J7oGxhbx4=
X-Google-Smtp-Source: APXvYqx3Up2B1eZPaaTAWMBFlw4GilIcCB4OB4SrH4CoVtGbovwboWob5c34WdwFXy9KG22xN4xmnw==
X-Received: by 2002:a17:90a:9602:: with SMTP id
 v2mr5467175pjo.59.1559044618864; 
 Tue, 28 May 2019 04:56:58 -0700 (PDT)
Received: from xy-data.openstacklocal
 (ecs-159-138-22-150.compute.hwclouds-dns.com. [159.138.22.150])
 by smtp.gmail.com with ESMTPSA id r1sm16272313pfg.65.2019.05.28.04.56.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 04:56:57 -0700 (PDT)
From: Young Xiao <92siuyang@gmail.com>
To: jeffrey.t.kirsher@intel.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 28 May 2019 19:58:02 +0800
Message-Id: <1559044682-23446-1-git-send-email-92siuyang@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Wed, 29 May 2019 09:10:29 +0000
Subject: [Intel-wired-lan] [PATCH] ixgbevf: fix possible divide by zero in
 ixgbevf_update_itr
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
Cc: Young Xiao <92siuyang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The next call to ixgbevf_update_itr will continue to dynamically
update ITR.

Copy from commit bdbeefe8ea8c ("ixgbe: fix possible divide by zero in
ixgbe_update_itr")

Signed-off-by: Young Xiao <92siuyang@gmail.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index d189ed2..d2b41f9 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -1423,6 +1423,9 @@ static void ixgbevf_update_itr(struct ixgbevf_q_vector *q_vector,
 	 */
 	/* what was last interrupt timeslice? */
 	timepassed_us = q_vector->itr >> 2;
+	if (timepassed_us == 0)
+		return;
+
 	bytes_perint = bytes / timepassed_us; /* bytes/usec */
 
 	switch (itr_setting) {
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
