Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08979B227E8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 15:11:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BDDB41127;
	Tue, 12 Aug 2025 13:11:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bGAZQ3vGyEBA; Tue, 12 Aug 2025 13:11:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61CF1411B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755004268;
	bh=UxIla1HyYnxUj2HsSHmkDkdZP2KuTjodsMUdmS63XNQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dWhM6H2DMtr1nBRT7xkISMuaBO2AHcjpqclR5FhfUDotuhKA8R/zEAAImLzdM96D1
	 ZVFqODVfm3wdCS44tRfnWl6479g+uoyRm4a+AqVVF2oSeN9tof4vwjtJNu/rIIZJYl
	 eze6uZ5dc0zm/BfGBUTMdU5EkhwYgG2Dovkk365QKtVJv3xtq0i2bDEHnI4o0GMpY9
	 Z2KEYvpCE/OOr2yj3ytvvfXUNINjLRq5mJvs6hfbelUYbQZvuYSzba4dXz5OdRSkD1
	 L8mFINwzELHdqOUaJDqK/Vs7GG8awZS7QN/LZ1TTUcleQ9zsUUpey95lcnbNu8JLLL
	 BLbp9zt2XSjig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61CF1411B1;
	Tue, 12 Aug 2025 13:11:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A8BBFB8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:11:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B06840F1A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:11:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wYs4CNM9tzlT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 13:11:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1030; helo=mail-pj1-x1030.google.com;
 envelope-from=xtydtc@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0475440F35
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0475440F35
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0475440F35
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:11:05 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 98e67ed59e1d1-31ee880f7d2so6212862a91.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 06:11:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755004265; x=1755609065;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UxIla1HyYnxUj2HsSHmkDkdZP2KuTjodsMUdmS63XNQ=;
 b=Q/qNgYCA0IjYoUVwHGltaXgDPVuEnYTypTIf6tjm6Wx6QFD6q4OiS2Ifi+STCr4BjM
 hsPWuJUrGLemii3LNf504WxIMrbBattWzwvO0rvYC4nn4l+GW0AshLt4D1m//D4P+4r9
 82LUq50u1akUrG52zCCxSnf22BzRDqky4yjHerUz9ufYUyKP5RgAE9LvDRfLU0jd7F3q
 slS9+Q7r9hwdgOEXaXKwbgHDKvmCEK5mtgUXpDTiietLSeflmkFyRdZw80OmKmz3WTzY
 Niele7FuZad8gxiHyWLRfgvH1u1pYkuvvkoKeBbtd6HEAJLbP03YHl+oi9DTVg2NqBR3
 rGmA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXdWjYThcpH6rpenvjrs4hik135x1/ZIXUTXG2YFlihLnhzOo/xIBsS/Vwut0I02j4qfVrIrDUcp9dky1Vu5Go=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyEQRqIX/tlzdvtgIYWYWq5VCAxzan6JSIJseYGhLFKp6yCC88C
 HlYiZT80aBP+vic2IpjXBngkvpCJyuxUpzRN5uBlAPEfw3akldcMOwIE
X-Gm-Gg: ASbGncvfPrVjhdDOpFQGcgvsN05v7nBKoggVDYy3rawkDoUPkBDF5CYO7sW4fz7/O27
 tvBELkkhWDHMqG9rvRR5gTwR6Urt+JAHTWIWuoCBdTJKnFoh85huulbNQygYlhjXK4i/n1MafSn
 8ZVgk5V3ZtfsDs2jOYFn9si2okTEs/gawShXotGefk+CcMhSKVsHVVJsrY1yLNsMz5b6bK4hh8E
 TKr59kax3ytR2wNMpM1EbOovtD85+rw8SUowcl42sW0Dq+dzw5Bo1bk2G7K5RuFNcaq/mTSlZ00
 qmC9iGeZmT4igSooGK/xRXrUEmN5LVJN9vWxgC3CvK0bCb86Z89fLCKwEZBA8vxwqG7PfhDy88O
 8mD/ectg2qtiPPbsrywHiFd/X4gD5JMQZYFR4m9gxN/KPV3JD8qqfFgw=
X-Google-Smtp-Source: AGHT+IGZho0iQ/1nCW0ztaSgx/gJSrFI5h/wMr3ThsyqUo5BdfFFaDonVE6u2aePsc3KlxqPpcFzPw==
X-Received: by 2002:a17:90a:e294:b0:321:2407:3cef with SMTP id
 98e67ed59e1d1-321c0b60856mr3040069a91.32.1755004265102; 
 Tue, 12 Aug 2025 06:11:05 -0700 (PDT)
Received: from TIANYXU-M-J00K.cisco.com
 ([2001:420:588c:1300:513:ebe8:5ec0:cab3])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b4285a15c26sm13545797a12.16.2025.08.12.06.11.01
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Tue, 12 Aug 2025 06:11:04 -0700 (PDT)
From: Tianyu Xu <xtydtc@gmail.com>
X-Google-Original-From: Tianyu Xu <tianyxu@cisco.com>
To: anthony.l.nguyen@intel.com
Cc: przemyslaw.kitszel@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tianyu Xu <tianyxu@cisco.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Joe Damato <joe@dama.to>
Date: Tue, 12 Aug 2025 21:10:56 +0800
Message-Id: <20250812131056.93963-1-tianyxu@cisco.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1755004265; x=1755609065; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=UxIla1HyYnxUj2HsSHmkDkdZP2KuTjodsMUdmS63XNQ=;
 b=QD4obW+0XzrQZcmSDUeu9sxFYqRCB3MhS11e1IIY6VePq8UvCq3m7mJ43uqhrw++jp
 67HozyXC5kf6wIw3QlDb51sV6sZo7qmbV2w9mAhQ4w33VLdFPltB7/HkeUJqt4RW56f8
 Y4YiY+7yvPwB31kmKJqQqbmLojLH/mO6uynKlCGD8WdHACK9/ctodPXEPKDEottX+5Ia
 Nl1BralP8fooeIjiYeV2DWhL+gyjKoGsP/qL87lL1SJHPjtVd8LP0GVHxy5mnttoIa7h
 fsYMYE8BahwYSUREzTeYDe1x6UG+od0ZKIQbR8UxV00+7q2N0M0KxdxMrQCvKTh/SjtU
 C6HA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=QD4obW+0
Subject: [Intel-wired-lan] [PATCH v2] igb: Fix NULL pointer dereference in
 ethtool loopback test
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The igb driver currently causes a NULL pointer dereference when executing
the ethtool loopback test. This occurs because there is no associated
q_vector for the test ring when it is set up, as interrupts are typically
not added to the test rings.

Since commit 5ef44b3cb43b removed the napi_id assignment in
__xdp_rxq_info_reg(), there is no longer a need to pass a napi_id to it.
Therefore, simply use 0 as the last parameter.

Fixes: 2c6196013f84 ("igb: Add AF_XDP zero-copy Rx support")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Joe Damato <joe@dama.to>
Signed-off-by: Tianyu Xu <tianyxu@cisco.com>
---
Thanks to Aleksandr and Joe for your feedback. I have added the Fixes tag
and formatted the lines to 75 characters based on your comments.

 drivers/net/ethernet/intel/igb/igb_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index a9a7a94ae..453deb6d1 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4453,8 +4453,7 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
 	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
 		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
-			       rx_ring->queue_index,
-			       rx_ring->q_vector->napi.napi_id);
+			       rx_ring->queue_index, 0);
 	if (res < 0) {
 		dev_err(dev, "Failed to register xdp_rxq index %u\n",
 			rx_ring->queue_index);
-- 
2.39.5 (Apple Git-154)

