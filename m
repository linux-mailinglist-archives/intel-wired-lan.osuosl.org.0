Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F9F5057DA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 15:55:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A430D610F1;
	Mon, 18 Apr 2022 13:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p_mxlQMePUAw; Mon, 18 Apr 2022 13:55:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A33D1610EC;
	Mon, 18 Apr 2022 13:55:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF32D1BF59F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 11:15:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC04960692
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 11:15:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bYfKvxMkL1mp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Apr 2022 11:15:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75AD8605B2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 11:15:02 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 m33-20020a05600c3b2100b0038ec0218103so6268234wms.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 04:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uEhSMDHJtiuwdrj4dJJyu97KIVJOOD+nk/JiQfVUpZY=;
 b=dAvG/VUOiUi0sXwkQHoF+5NVAuiQMfKZcP1vqgjbrBMkds32W4S/eU8nfu9IqtPPMh
 RAk15ZLBRCzkyRWKkGVGJpTDzaSReBgjw+tB0S7YEMHgWwyGmXlgdNTTvue7wzattbWH
 6/vvwJXkAwZvshn54gexQbZcinhpcI4xzvXg3WLmsxJL7y0INjgfbhPUZKVTWaVHWPZs
 hUMyU6iVTLqHlA8iSHqeZj8/wn8dBw8KYI6VkbA5YMmL7AkLk5GoX42GmWcNeitGY8lq
 2LT9Kqd1NhYAjJYGdAgPh9rKu9HOKoKFVzLMflSZnl+3U1TQg8kn1sKUX7Tgj0kUP149
 66lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uEhSMDHJtiuwdrj4dJJyu97KIVJOOD+nk/JiQfVUpZY=;
 b=CfooqqyFgp6vzqNZ0PCW/GvCDGTsNU0v6nDnrlhM/MmCEykI5PsSuQBmAcjXMRavaQ
 2DM1XspF139SYrx5YnDUlj73NKb+tMlX7C/mYoIaLpMd4p5/djzCDNu+ofG1N5Gufnm8
 mk72ZPkazv0cT+XMhi6SujBvkdkuYhZ3eww+YhLxDmPjNVEfcwwQ+EYEJAOwDJFwXtC0
 1I1T2n6qo86NiPpGC06dRpkwwDAWS5d2ZhJ1/UAbu+MZ2e944vZwnl8EFUnXvUgSBiTM
 M+cX3kwmqtLGOVTwFAfkRljiUIbdNvAepZI8Np1pS3QsnYLLY0tV02K2vEwKEymL3rJW
 sMOw==
X-Gm-Message-State: AOAM530zEQRTzwyTVJ/EWXyBNPLWY85jRr/tqvujM3Vf0ztZQFciHrMw
 XoNVoBcg7dfq0BhMYH00fxc=
X-Google-Smtp-Source: ABdhPJxpvZFQaoNKdlYwE8qfxCxznE1bYGAnUYXCQP5HCgyf90I8tzuMZa59kHFBG+rR05HyfPdo7A==
X-Received: by 2002:a05:600c:1e8a:b0:38e:d57d:a3fe with SMTP id
 be10-20020a05600c1e8a00b0038ed57da3femr7027147wmb.59.1650107700553; 
 Sat, 16 Apr 2022 04:15:00 -0700 (PDT)
Received: from alaa-emad ([197.57.90.163]) by smtp.gmail.com with ESMTPSA id
 2-20020a1c1902000000b00380d3873d6asm7344196wmz.43.2022.04.16.04.15.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 04:15:00 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: outreachy@lists.linux.dev
Date: Sat, 16 Apr 2022 13:14:57 +0200
Message-Id: <20220416111457.5868-1-eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.35.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Apr 2022 13:54:51 +0000
Subject: [Intel-wired-lan] [PATCH v3] intel: igb: igb_ethtool.c: Convert
 kmap() to kmap_local_page()
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

Convert kmap() to kmap_local_page()

With kmap_local_page(), the mapping is per thread, CPU local and not
globally visible.

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V2:
	fix kunmap_local path value to take address of the mapped page.
---
changes in V3:
	edit commit message to be clearer
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 2a5782063f4c..c14fc871dd41 100644
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
+	kunmap_local(data);
 
 	return match;
 }
-- 
2.35.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
