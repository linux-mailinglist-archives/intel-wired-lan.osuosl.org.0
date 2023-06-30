Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1369A743F1C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jun 2023 17:43:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27DF981406;
	Fri, 30 Jun 2023 15:43:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27DF981406
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688139834;
	bh=b5OFMpyjs7y9b2zwFy9dXNsb4dOk3ZfGtKi/qt18xJw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SWD+lofWgKEP10SNsuhZVYeYofwTLyzsanDyfxzB6JGJRfX4NfDg9N0/g00diaa1R
	 fYJ3Vv6xnnq6a6Il393LABXtlfgimoTrOhqBFb6jcL9rX6wjTDAgDwbI+B+tx/UYKA
	 5N+LEfzVVZhuqYnEKjcoGv85aRQxk6cDNe2OwDoYkmY2nEQfTUjW3d+RBV8nnzcmIP
	 pJx7xLlYsYW0RIjTDQLL00VXbDW1MqZeRsXLjd3D0hiJkkEIBArs/NZMKKd9V/okBU
	 XoMQ3q3o6QlKS73grjsYwfqzwQm78xHGSMu7HLevqNbhWCfJ0MbPYe6IYPiDoh4Nsy
	 Vys3EdNOWX4OQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s4itBMmw_Whs; Fri, 30 Jun 2023 15:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B4D5812FF;
	Fri, 30 Jun 2023 15:43:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B4D5812FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0060C1BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 15:42:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CAF8461398
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 15:42:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAF8461398
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 15IEIEIDHD6k for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jun 2023 15:42:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F31B60C12
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F31B60C12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 15:42:16 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 5b1f17b1804b1-3fbab0d0b88so17836055e9.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 08:42:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688139734; x=1690731734;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=mb3ZyytePmgU5kXtBpOaRC5ZBHhiy7A4A4l54PC6cxA=;
 b=lb2LIMOQZ8awqgKvYJrsIb+sO5zDa/DbC7cV+vVwdvNSQw6VYZcAxXBm8iLgyjMGrG
 QPWRGm/aGULsEqQwivw43j1+7wguLB5n8Cc9JZyfmrZoJMQv4/m7NLbKdNlAwrQqVaxn
 kw0T2YJkU8kMbPO1Fe71r/RLKAdXNkXPpkczxiJxv5Q+Webvvaqp9o365dd/vtkCOHTx
 kYV0qbl5Woyl4xaCSfA8UjM/ZAn3hTBoV0R5kJ+fappXT7DGpfnFmt71Hgx7Iv/l3ylp
 /OS6f+W2zfGk3Hg2P8/dyfPplK4KwrxVSpdxcmQc219Vz551grYRH+sIuZdZuJsiu+t+
 o4LA==
X-Gm-Message-State: AC+VfDxdN6nQGnBGgvqnT9oWQiHnG2iA79qoMh60dpmaRfZVTMh7GyVu
 amchwVMc7IDwzEeVQrU51cdEKQ==
X-Google-Smtp-Source: ACHHUZ5Sa0UH0MFROBtcTH3CC4NpkODJDVsFDjTUA1Qkfq1bMAcTPTfqFFIv+UF1mNDqRY7tZ51fZg==
X-Received: by 2002:a05:600c:3d9b:b0:3fb:c257:9f48 with SMTP id
 bi27-20020a05600c3d9b00b003fbc2579f48mr3220754wmb.16.1688139734419; 
 Fri, 30 Jun 2023 08:42:14 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
 by smtp.gmail.com with ESMTPSA id
 g14-20020a7bc4ce000000b003fbaf9abf2fsm7690279wmk.23.2023.06.30.08.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Jun 2023 08:42:13 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>
Date: Fri, 30 Jun 2023 17:41:38 +0200
Message-Id: <20230630154138.4041809-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 30 Jun 2023 15:43:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=smile-fr.20221208.gappssmtp.com; s=20221208; t=1688139734; x=1690731734;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=mb3ZyytePmgU5kXtBpOaRC5ZBHhiy7A4A4l54PC6cxA=;
 b=mbzR+eTISbWi7Y5Tsf5ak7r4fJt1OPPu7ahtEdhOEJP6KyhnEi+PItlXGZSzDui7Xl
 lwndVSYLHmk1WL4+s6KCnd5mvzjWuXFspaBo3GK5Vo8Ekm/qUsbxsICnkhdUX058NpNl
 fVusEGlk9xmWFQWn8LWnT0uJGV//uUXMKWdiKf/8MOggluQArEUuvGLA3EjMmg08qkpJ
 KjD/pB0llsOA7XbEtGY0RCitaWdW4i4HWjfXW/g1hFeB5GDxGk4EBumoB+k7MJ/OaOJl
 cQyF14RHuGBBdbbRwvzVwsJoVwVo1Nc6h30zAQyn2bJQ4hxWAGXaynNR7LG2/dpNE4Bk
 rfKg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=smile-fr.20221208.gappssmtp.com
 header.i=@smile-fr.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=mbzR+eTI
Subject: [Intel-wired-lan] [PATCH RFC] igb: Use TAI clock to reset PHC value
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
Cc: Yoann Congal <yoann.congal@smile.fr>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The PHC is usually synchronised in TAI (from PTP). By resetting it with
the kernel TAI clock we avoid having to correct the PHC from REALTIME
(usually UTC) to TAI (37s as of today).

RFC: While this patch looks trivial and it does make linuxptp/ptp4l
complain about a driver bug:
  timed out while polling for tx timestamp
  increasing tx_timestamp_timeout may correct this issue, but it is likely caused by a driver bug
  port 1: send peer delay response failed

Increasing tx_timestamp_timeout to 1s does nothing different so I guess
the driver does indeed freeze with this change but I can't figure out
why... 

Do you have any idea/pointers? Thanks!

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 15e57460e19ea..65e5de2ccb279 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -1526,12 +1526,12 @@ void igb_ptp_reset(struct igb_adapter *adapter)
 
 	/* Re-initialize the timer. */
 	if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211)) {
-		struct timespec64 ts = ktime_to_timespec64(ktime_get_real());
+		struct timespec64 ts = ktime_to_timespec64(ktime_get_clocktai());
 
 		igb_ptp_write_i210(adapter, &ts);
 	} else {
 		timecounter_init(&adapter->tc, &adapter->cc,
-				 ktime_to_ns(ktime_get_real()));
+				 ktime_to_ns(ktime_get_clocktai()));
 	}
 out:
 	spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
