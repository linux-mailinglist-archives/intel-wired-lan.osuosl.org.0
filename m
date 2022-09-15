Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5425B9B1A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Sep 2022 14:41:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B7E241061;
	Thu, 15 Sep 2022 12:41:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B7E241061
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663245713;
	bh=XeRx6wnRtxhQAP6wf7gZI5El3TPplOWM85gCpi7c3DQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lH23qxd1YmSQelKAi66N9uT5oQ0ehEy6s1VMg+HlSCi7cF6PhoNH2AidxzQhbHAMX
	 k+zM0KVf027N4vykxxxncyDebSMBi6XvqTU4ocFqkkRHEYU6Wsy5bNj8p6pSqMvWB5
	 NK5FfpVmES0A9wHlMgkh6eTAnvUGiKfCkZZmiXAKPH6Hx/wpYMbnoSk6kouBFhrOMW
	 9D71r1KORiHn09Mg0iM5bZTtWOxPY2OhJ7MYKb2esYLq3bP3sq3oq1jVxKK/IiTare
	 uHhD78FWXm+3JwQYMqG5IYKw/0oizTyI/u8WkW6ytDG5Yta3bh5Y2hjd5D7qWg70K7
	 Zv1gsmZht7vdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6PR54L5gFm10; Thu, 15 Sep 2022 12:41:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 75B3E41058;
	Thu, 15 Sep 2022 12:41:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75B3E41058
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D8C001BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 12:41:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B9E4260FA9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 12:41:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9E4260FA9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j-B6NUTURxQz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Sep 2022 12:41:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB94E60F4B
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BB94E60F4B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 12:41:45 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id a26so13124892ejc.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 05:41:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=tzmtfB02Kll9bwoDnqvoio0j7mPs1ux70CIafG7WcfU=;
 b=KpN3bnRF2n7CUMSLUxpTskYtNTLcV3/iXc+y/1bPPmnnDAyWS3tE4VIXIeomcnIl8H
 OC2YxlrjJdyqPRswaR6ard8jMSffLIDhjxEe00c8Gqxm5AhdQ63eS+6ULeBdQsABa4LK
 2rsC1f33sSNzh7pvXLMFJiMN2gI/U1OUCIwUoRVDBcaNRvwzDKoWWGQhfUlNKZ4YYkZ/
 mm/7Nh+5VN/fAfYZ77K1K5FzTy+jQOX4R2iMyjHtiYpwOllf/F/cf2wT4ymIJfYpsDXY
 lmFulY1ZXUu7fSNjCXpccAtHblGRu5EljfFjlDIhjLQh3w7uHBaWOjo/S4wcu9hSLTmv
 ce3Q==
X-Gm-Message-State: ACgBeo2rrLdY/DTC9mGGff4u3oMmgwhd2n0IB0f7ObqwJsvnIb7mzv6D
 pW0l+xY6IsA099O4muaja0A=
X-Google-Smtp-Source: AA6agR6OETBFpaXizZkBzwGuLb/nSX3ng6zwpvWStvpMjub1lzTuDLEeGZHPr04IhJAIRKoFkOF22g==
X-Received: by 2002:a17:906:8c7:b0:730:c1a9:e187 with SMTP id
 o7-20020a17090608c700b00730c1a9e187mr29400332eje.55.1663245703722; 
 Thu, 15 Sep 2022 05:41:43 -0700 (PDT)
Received: from localhost.localdomain
 (host-95-251-45-225.retail.telecomitalia.it. [95.251.45.225])
 by smtp.gmail.com with ESMTPSA id
 b18-20020a1709063cb200b007778c9b7629sm9056305ejh.34.2022.09.15.05.41.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Sep 2022 05:41:42 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
 linux-hwmon@vger.kernel.org
Date: Thu, 15 Sep 2022 14:40:12 +0200
Message-Id: <20220915124012.28811-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date;
 bh=tzmtfB02Kll9bwoDnqvoio0j7mPs1ux70CIafG7WcfU=;
 b=atzRGS0IEVvnd6WXWC1rlccaFpBQ2yFXqBqZ0xtSuNwYZbyh6YLVXuYzo5VlCf3iMP
 BXWfOqj/F/1zmWoyB2Ve1b4rG8wV4V0nXNPRF2ttYQZHs5S+vgVt5aY8tk9kzZEKkCGp
 99SPE2OCnrsp7ChpLRX6eFj/7iiUngJWcWymqH8Vf3Qh5/8epbpknxNhTWsZD+pPH0kl
 8q57dvY2+qmbkMehptiFXjeo8CWidirKYdwZ1kovxRZGLbsHsxjaOqqcaSrGOvJCGK+R
 RYD31Gyww66Ch62fGeb1WerCHHiTxFWaTjfIwREbvvYEBrsMvYShWfKyvxogNPSQVbAY
 U1LQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=atzRGS0I
Subject: [Intel-wired-lan] [RESEND PATCH] ixgbe: Don't call kmap() on page
 allocated with GFP_ATOMIC
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
Cc: Ira Weiny <ira.weiny@intel.com>,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Pages allocated with GFP_ATOMIC cannot come from Highmem. This is why
there is no need to call kmap() on them.

Therefore, don't call kmap() on rx_buffer->page() and instead use a
plain page_address() to get the kernel address.

Suggested-by: Ira Weiny <ira.weiny@intel.com>
Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
Reviewed-by: Ira Weiny <ira.weiny@intel.com>
Reviewed-by: Alexander Duyck <alexander.duyck@gmail.com>
Tested-by: Gurucharan <gurucharanx.g@intel.com>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

I send again this patch because it was submitted more than two months ago,
Monday 4th July 2022, but for one or more (good?) reasons it has not yet
reached Linus' tree. In the meantime I am also forwarding two "Reviewed-by"
and one "Tested-by" tags (thanks a lot to Ira, Alexander, Gurucharan).
Obviously I have not made any changes to the code.

 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 04f453eabef6..cb5c707538a5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1964,15 +1964,13 @@ static bool ixgbe_check_lbtest_frame(struct ixgbe_rx_buffer *rx_buffer,
 
 	frame_size >>= 1;
 
-	data = kmap(rx_buffer->page) + rx_buffer->page_offset;
+	data = page_address(rx_buffer->page) + rx_buffer->page_offset;
 
 	if (data[3] != 0xFF ||
 	    data[frame_size + 10] != 0xBE ||
 	    data[frame_size + 12] != 0xAF)
 		match = false;
 
-	kunmap(rx_buffer->page);
-
 	return match;
 }
 
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
