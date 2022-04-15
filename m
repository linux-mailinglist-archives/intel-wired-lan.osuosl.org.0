Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAF55057D5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 15:54:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2571541DA3;
	Mon, 18 Apr 2022 13:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9e_BsL2VS2vf; Mon, 18 Apr 2022 13:54:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFDAA41B6A;
	Mon, 18 Apr 2022 13:54:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE7591BF39E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 20:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA9F640C20
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 20:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NK10VMofYDnc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 20:53:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ACD8440C1E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 20:53:12 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id m14so11845621wrb.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 13:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZyOgwEJ9l8EA5lTTda7+EsCqxDSAHYk8KWdTQlUMJjs=;
 b=hURxvbcmXHZE0cQH3he2QePF/JGuwU07L7NGIqE/2niCHabgXwWqBKJKSoyZOLoD7u
 sz3kg9MLB33erxci1PiAerJBsobmblASO5dM6QkSEdatwtp9cYp/a7/Eh1MvKxZptgql
 aKud9nAnTNe2KL+vZidB4WUXvykVT8eoPBPEsx5wApTLFqievy5rjge9ym8ILqBBYMl5
 zrYkDoubRBWNgQ5SFhp+FaIpbqA7aUXtfS9IUD5uMvL3V5bWGEJBk0F60dhKqEaAHMH+
 G1BfjyOAQ6tQy/YEjoiNZ9iiLkwqYf6RrRc5OVrG4CGOuIJDF5v0r3MxQ5wwfaWXJaML
 ABcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZyOgwEJ9l8EA5lTTda7+EsCqxDSAHYk8KWdTQlUMJjs=;
 b=BwbB6+gp4Cu/Av3UTTx9fx5GaDpurOluM8uNMw0ajgNUzVwKbo39WC0VClQWVZDqL4
 fUAtvea9nW0y8KM0kzhzJucXWkvpbvvEP+Y7jgrfjE4Yuyp2h7/Q/bztNAhfmYoUgOG1
 qeKvNgfXGBIw3jRF909Ucf1+febthYjTipVZeXmtXepas9B8IWkqEEnqLzCqO6UgoHqd
 Tw/1XE99u5QaeIiAhIhM0s12XSfJEop9PMeoT2WQi4HQFqTP0IA1jdzxszJT7/tvh6U5
 kNdpehN+GPeCLG8/UjyhAuTzSNf6ZHqidYBSctYmjQFIURFzKN4PfxN5Exg3VP3BoqB9
 9ZUg==
X-Gm-Message-State: AOAM531/+vBNXWhae7/LyLxyWQyL90noM4pFW64OoU17c9g8QgdP46Xo
 /zSxatldKHxtk8F9V4VkzbQ=
X-Google-Smtp-Source: ABdhPJyIDzuWNU+lgGyISF0WOPX13KdzXq4i1qTNAc+fd86+SmAMO+2T2lNd4SeTSq93uytVO66I+Q==
X-Received: by 2002:a5d:4085:0:b0:207:b13e:e8dd with SMTP id
 o5-20020a5d4085000000b00207b13ee8ddmr538897wrp.557.1650055990836; 
 Fri, 15 Apr 2022 13:53:10 -0700 (PDT)
Received: from alaa-emad ([197.57.90.163]) by smtp.gmail.com with ESMTPSA id
 v5-20020a5d6785000000b0020a792848eesm3181988wru.82.2022.04.15.13.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Apr 2022 13:53:10 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: outreachy@lists.linux.dev
Date: Fri, 15 Apr 2022 22:53:07 +0200
Message-Id: <20220415205307.675650-1-eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.35.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Apr 2022 13:54:51 +0000
Subject: [Intel-wired-lan] [PATCH] intel: igb: igb_ethtool.c: Convert kmap()
 to kmap_local_page()
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
 intel-wired-lan@lists.osuosl.org, eng.alaamohamedsoliman.am@gmail.com,
 kuba@kernel.org, pabeni@redhat.com, ira.weiny@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The use of kmap() is being deprecated in favor of kmap_local_page()
where it is feasible.

With kmap_local_page(), the mapping is per thread, CPU local and not
globally visible.

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 2a5782063f4c..ba93aa4ae6a0 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -1798,14 +1798,14 @@ static int igb_check_lbtest_frame(struct igb_rx_buffer *rx_buffer,
 
 	frame_size >>= 1;
 
-	data = kmap(rx_buffer->page);
+	data = kmap_local_page(rx_buffer->page);
 
 	if (data[3] != 0xFF ||
 	    data[frame_size + 10] != 0xBE ||
 	    data[frame_size + 12] != 0xAF)
 		match = false;
 
-	kunmap(rx_buffer->page);
+	kunmap_local(rx_buffer->page);
 
 	return match;
 }
-- 
2.35.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
