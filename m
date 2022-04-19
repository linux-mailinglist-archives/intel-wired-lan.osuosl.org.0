Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D57507D3C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 01:43:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA6F340B86;
	Tue, 19 Apr 2022 23:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yRrFRbKF4Zuk; Tue, 19 Apr 2022 23:43:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E79EA404ED;
	Tue, 19 Apr 2022 23:43:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 444611BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 23:43:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F48F404ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 23:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dnyL7Ovu3D5L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Apr 2022 23:43:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 795E540112
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 23:43:18 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id c10so7059wrb.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 16:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jpkNlHRMQuG+lJdQ+TUaFjLfxZlD8sn5DIiknsBbDyg=;
 b=FHAUUHCg0T3/vQIQ/bRF+okFzhmCwTsm49QMr/HtsZY8D9NoBitjzbzAPlvKWo66mA
 yUnvDeEbuMhjeA807IQhUI8Ctj3s439/+etFMhsfgrAA4Smy1dcxpn/EJH6TyW6FEAXR
 0qJYEt8SkyFHjGdFjWy9fFJFKT0wFvbTjlg+365GEgIVkIXwPnyr3W3h9VMyJMureiGc
 fIHdnE6wXYFzj2+u0dkSRs8aoLp39jBwBr3S6YvvhjCJvDa/XZxCiBjH6txwEF+AhdOm
 fLy55B3TJrSbtkusmN4BB31KPN4I8UbQ8lMsuSCLDa2Kr87s9Q4E3TeaX1denTp6psgF
 mEsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jpkNlHRMQuG+lJdQ+TUaFjLfxZlD8sn5DIiknsBbDyg=;
 b=T4O0Ox03Tjb8KLxgyxZBlzAGLPtQ6U2Dq677phGlHhoxErMgkx+RLAe5w+YRs0BBfT
 ++Uacs0scHNFQwIQMEBBQAuQJMDc222vfOzuJodG0rpH47y4g0ok/LL1M1IVjyGZojS3
 BKHWMtLVofLk/QufkaEaRpoilzbVNYqfX209FnhiNHoH4neBmwghFBr3i4XT0ECX5h/f
 7HMIA7/nOD1sHSxC3wJ4eTKeY5A10JNaYCtBS/A0mPI1y07J/vKSK9o5UW0w5vQUHmaj
 L8s2O4TTgQBBxSZcQB+aUvoUFkrZAY9bBD1LtJU3lUw6e8bjKk8qIe8rpQkYXQnCF1sP
 kmeA==
X-Gm-Message-State: AOAM533hHfSWhKWWEVeO/HM7OozcdxpLpz/c0IsDcg5990+KJUCArh3u
 sNm+f8vjXi6Igjt4IpU4KQs=
X-Google-Smtp-Source: ABdhPJz1SgnnztC1b+XjTbtAXZve8DQ0RYcKvnNS+M9/iIN1yJ4iCUjDKX3GZOoZrrU6LsOZfnM1eQ==
X-Received: by 2002:adf:de90:0:b0:20a:8e73:aff1 with SMTP id
 w16-20020adfde90000000b0020a8e73aff1mr11180895wrl.151.1650411796437; 
 Tue, 19 Apr 2022 16:43:16 -0700 (PDT)
Received: from alaa-emad ([102.41.109.205]) by smtp.gmail.com with ESMTPSA id
 z17-20020adfec91000000b0020a98f5f8a7sm5623982wrn.6.2022.04.19.16.43.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 16:43:16 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: outreachy@lists.linux.dev
Date: Wed, 20 Apr 2022 01:43:13 +0200
Message-Id: <20220419234313.10324-1-eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.35.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v5] igb: Convert kmap() to
 kmap_local_page()
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

kmap() is being deprecated and these usages are all local to the thread
so there is no reason kmap_local_page() can't be used.

Replace kmap() calls with kmap_local_page().

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V2:
	fix kunmap_local path value to take address of the mapped page.
---
changes in V3:
	edit commit message to be clearer
---
changes in V4:
	edit the commit message
---
changes in V5:
	-edit commit subject
	-edit commit message
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
