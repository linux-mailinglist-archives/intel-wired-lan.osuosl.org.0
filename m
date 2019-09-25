Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F03B1BE199
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2019 17:48:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 898AE8620F;
	Wed, 25 Sep 2019 15:48:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GTTUoeFw4tMN; Wed, 25 Sep 2019 15:48:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20503865D3;
	Wed, 25 Sep 2019 15:48:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1759B1BF46D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2019 15:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0BDED8620F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2019 15:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qNZxg3u03k65 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2019 15:48:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75F3E84D89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2019 15:48:42 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id c6so15032045ioo.13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2019 08:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=0qNPhmzg0s6OFq2ccQPYykHxxawuEd3L1JQLHES3r0g=;
 b=cHf6huUlTWlzSqUYeFN7nGGNH5PJP3fVdkz3pnOy9JHNHUhc+QFH9H5e1xYZuFqdRh
 ebdJm+U2KFIp6ezUQpy/YeMH/OY/KaDEjkVY+jnbiV9Z8xIFoP4oyvl0U8bfUgm5UZ8e
 nncdukJygpJBBLssXuUymb4O30H1SzDB/693ikWJ8mNgssw6R6pG4Vo7Ci4WniCtVpo1
 YOZ0tdewOquYyIldUDHqWAz08ja84xrGBPzVNJ66KOMoyD8HGfLXrcQFfimxD58O0H79
 0Kjeqr8OCXpCU8UbHWyMBOym9EozF7rJOqy20JOKXyYW0hIbCt/8jFgBF6J4LJMogM/C
 K5xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0qNPhmzg0s6OFq2ccQPYykHxxawuEd3L1JQLHES3r0g=;
 b=eOa1Wx7CJwOZ4GnneVmFLGWeJofirV/PF7JH4AQqxUpRI6Zvna+XAKhr7wiAn2lhPf
 LxuhCX5hpodXNZkQ/fG0N7v1dZwzzQJghJOof7nO4/dSrrRikCbfjxD8FUDUDcxIhuj3
 CTrpsp9E6zLKxlJ+FQZbSz0u1FmLVkzunZBs3wdGEbZl+Vin4+5/GjSAeoKq84kOaeXG
 2is4wfA05lMsSY6OmgcUvmu50ttvkQJjRoyLmOlKgQaEB1iwsC0+kQQCKqEHtUpAz9BT
 xXCKconIo+f8l9+lh5NDabwcLlYnOTeJy4H5xYJDbcsjgesJl2sxqQn/UAV0UkKXgPAH
 52+A==
X-Gm-Message-State: APjAAAWkrTGJ9750aMsN3IHv3kcAFDOpMs2kGpCERCKnyAUYnmvQex2a
 tXBMCKVJ0/d94ThlqnR3FGc=
X-Google-Smtp-Source: APXvYqwJa//G1r4JosGXA6Zumx9x1lKwX8oaD3AKo4F/VYtA+SHvy+v2iygM8W2pIilz3wF1N6m6OA==
X-Received: by 2002:a5e:aa09:: with SMTP id s9mr49347ioe.22.1569426521711;
 Wed, 25 Sep 2019 08:48:41 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id i67sm263019ilf.84.2019.09.25.08.48.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 08:48:41 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Date: Wed, 25 Sep 2019 10:48:30 -0500
Message-Id: <20190925154831.19044-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] i40e: prevent memory leak in
 i40e_setup_macvlans
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
Cc: netdev@vger.kernel.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 emamd001@umn.edu, intel-wired-lan@lists.osuosl.org, smccaman@umn.edu,
 "David S. Miller" <davem@davemloft.net>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In i40e_setup_macvlans if i40e_setup_channel fails the allocated memory
for ch should be released.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6031223eafab..7d4a14c3fe58 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -7168,6 +7168,7 @@ static int i40e_setup_macvlans(struct i40e_vsi *vsi, u16 macvlan_cnt, u16 qcnt,
 		ch->num_queue_pairs = qcnt;
 		if (!i40e_setup_channel(pf, vsi, ch)) {
 			ret = -EINVAL;
+			kfree(ch);
 			goto err_free;
 		}
 		ch->parent_vsi = vsi;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
