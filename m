Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 452035057D8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 15:55:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C43B440B79;
	Mon, 18 Apr 2022 13:55:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LUeRjs1khwtB; Mon, 18 Apr 2022 13:55:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C66C44036F;
	Mon, 18 Apr 2022 13:55:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 41CB31BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 01:19:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2DB57408D5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 01:19:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1FH9aUCuhKHl for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Apr 2022 01:19:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5CB2040129
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 01:19:25 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id t1so12321707wra.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 18:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2Bf9ok3qqr2tkNhXNTndNo5u+WE3bYamPKOf2o8UuHw=;
 b=XjCVFe5nIUhZlq4sKzILLAUdIcxaTYQDznCGjtGrbpXRwwYQ3M8wUeCXPgk46XJoD3
 7XUMZmoK8UrtKecT8Y4P1PpUGnksBn1GcIkLrYuB5duFNp4tu+okUQL5HFRmNCfKaXgi
 AROzOsRZwhOvzwFhvzB5+VEakpDbJgKQpIyqZBU/mdmOVForkW8DJxB77ZwkUU6mLgTV
 xNMz+I9FdONbz1R7D9cLrbg1hjv1pyfrumrlSK/pq9FtBDXN0GuLtcFYw5uhO4X8xWWL
 baktCX0XpEarzZNDA0oFU7Z6Y3n6t38iYUYym5XOLmYW1oRVzJN8q5QFZI9sHQ+FGdXm
 1cvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2Bf9ok3qqr2tkNhXNTndNo5u+WE3bYamPKOf2o8UuHw=;
 b=CkL1+qDrskQNj0JrAcOaBEybMZ4lkC8AITo+M7Uiqqt5JeQF70eH98haoG3QxwuV+2
 cXdNC1wQZCbyUzsepS3WCe8UbXtws3JtNIJdWGFBppaXqAumX0A9c0efS15g7axytZ/8
 3RJWE6QElGc1eGlsg9Ofe3oGZvMTsy1OWI2S4+3lrbviMY7NP2Kmbi89VelNt+4+K2As
 EgbJa1U8frUW1VAItYIoQ8sGie+WZrPLUgPSxuxhenxiISH57WclWmePL8VIRM/hWhvy
 UdufK2b6Sj3NHwgVSi2oCcDxJu1HnMLLeXH9CNdq20SSJwpSK+s4Q/UJ95PKFvN8OPO6
 RiEA==
X-Gm-Message-State: AOAM531evFTGU9J62R+Y853jXKglb4UoyCj0RCPFQQZYmeb6xShNWCg5
 1B0gBEYY6pQCwmNw97A10gw=
X-Google-Smtp-Source: ABdhPJzVIQW3hTUxtbFojN9M9UGqtaIuMj0zU3SmMQ6W/p3T3CkqpwCpZtc9yxr9eRL4LR0bx7nWAA==
X-Received: by 2002:a5d:48d0:0:b0:207:a861:dcc9 with SMTP id
 p16-20020a5d48d0000000b00207a861dcc9mr1022300wrs.490.1650071963568; 
 Fri, 15 Apr 2022 18:19:23 -0700 (PDT)
Received: from alaa-emad ([197.57.90.163]) by smtp.gmail.com with ESMTPSA id
 x3-20020a5d6b43000000b001e317fb86ecsm4998374wrw.57.2022.04.15.18.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Apr 2022 18:19:23 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: outreachy@lists.linux.dev
Date: Sat, 16 Apr 2022 03:19:20 +0200
Message-Id: <20220416011920.5380-1-eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.35.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Apr 2022 13:54:51 +0000
Subject: [Intel-wired-lan] [PATCH v2] intel: igb: igb_ethtool.c: Convert
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

The use of kmap() is being deprecated in favor of kmap_local_page()
where it is feasible.

With kmap_local_page(), the mapping is per thread, CPU local and not
globally visible.

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V2:
	fix kunmap_local path value to be address
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
