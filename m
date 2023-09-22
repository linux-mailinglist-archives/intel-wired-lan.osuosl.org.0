Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 830DE7AB726
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Sep 2023 19:25:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA88B41983;
	Fri, 22 Sep 2023 17:24:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA88B41983
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695403498;
	bh=VOSwa4PUv4QK6q0o+9K8y5xYFucn87yBFvQxyCz6E0k=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Gp2Ms0MAmLT3pjdAnJcovaclmscE9FUuTRqfGs24NAqiPBF3OCE6hwUyMmV5MPWJl
	 aZSoygtY2aY4wBB83EpwLRXYsRuyqdp4hka67JmBM6HEt955sHlIflIpn9bzY167h4
	 72RPGg7JbkrX4dvvK0G0K3ELFs4UqrAaNHn5gvpAwM+JQidvqJomD7GbBk+iu6Q5NY
	 fUK7Bh1vTve9zqcX6oz7Nslm3nrfowHYP9pQRFFWUS2Ev+rZmOhEOpvVnJHGRZrrg4
	 ey866Hpd8cfL3VF3LF1WPTjbp6pLqzlpfxRVb5AgsjyM/S007HKflbo3rx6n5ndQvp
	 EvpQrOTudzX/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WSvQXDGyr2Y3; Fri, 22 Sep 2023 17:24:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A1E941480;
	Fri, 22 Sep 2023 17:24:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A1E941480
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A00C61BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 16:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7814083A0A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 16:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7814083A0A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nkLNtneWW9N4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Sep 2023 16:38:06 +0000 (UTC)
Received: from mail-vs1-xe64.google.com (mail-vs1-xe64.google.com
 [IPv6:2607:f8b0:4864:20::e64])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9EF34838B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 16:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EF34838B6
Received: by mail-vs1-xe64.google.com with SMTP id
 ada2fe7eead31-45269fe9d6bso1154871137.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 09:38:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695400685; x=1696005485;
 h=from:message-id:content-transfer-encoding:user-agent:cc:subject:to
 :date:dkim-signature:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pD16L7bzKZHGImef/xBf1dFAV1vQpWiuIcQ1e7o+p+U=;
 b=wTz/7vhT/YvBUr3X7pGTdnZpwzoiV9GWYnknG2DWoAmL3MzhnS4Lr1IyhlBJjPShr4
 cyMIPA72FxsakRDWfVoCfvnnDSLYCfeIQNqdnQhP6b3jKL/okwedSSvdvU96qDVPzAch
 ZqHUKrRT9dub2Fad0xB8UAjfq9OG2+SUMl6wx6oDcAGvWnQcRyevmyYgqQIgl9d4jeO+
 OnwYH2o2hI7C1RN8MOCSszO9gfdukRNSWkSVq7ViukW68d0ZRrDJug5XbF6L8AbxGGTk
 SrkW9K9x/4vrKXYgFoq4x/eLaujl0qomxonbZ1N3mXFd2QecMjY8z67psy/AflfXptjq
 8JjA==
X-Gm-Message-State: AOJu0YyQMqNP9X1uQTZUm2OIuHn0xETtWDjHalydZCr5iNrMhKog/bRh
 pEBvslSc+IB/sCtqAYqnNkC7ZkldHzEmNBo9K745HYhG4ojT
X-Google-Smtp-Source: AGHT+IHFZ12Ok0odf7n7xvLFvliRtfNcU0J6F/mX6xY8/rd40WkKYnJp3VobEZFPd3IRcjUakvZUYy7rTgEo
X-Received: by 2002:a67:fb18:0:b0:44e:8ef9:3371 with SMTP id
 d24-20020a67fb18000000b0044e8ef93371mr129528vsr.8.1695400685509; 
 Fri, 22 Sep 2023 09:38:05 -0700 (PDT)
Received: from smtp.aristanetworks.com (mx.aristanetworks.com.
 [162.210.129.12]) by smtp-relay.gmail.com with ESMTPS id
 w20-20020ab055d4000000b0079de0a4af6fsm222139uaa.11.2023.09.22.09.38.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Sep 2023 09:38:05 -0700 (PDT)
X-Relaying-Domain: arista.com
Received: from us122.sjc.aristanetworks.com (us122.sjc.aristanetworks.com
 [10.242.248.9])
 by smtp.aristanetworks.com (Postfix) with ESMTP id 8E29B40188E;
 Fri, 22 Sep 2023 09:38:04 -0700 (PDT)
Received: by us122.sjc.aristanetworks.com (Postfix, from userid 10181)
 id 7DDBA2440449; Fri, 22 Sep 2023 09:38:04 -0700 (PDT)
Date: Fri, 22 Sep 2023 09:38:04 -0700
To: intel-wired-lan@lists.osuosl.org
User-Agent: Heirloom mailx 12.5 7/5/10
Message-Id: <20230922163804.7DDBA2440449@us122.sjc.aristanetworks.com>
From: prasad@arista.com (Prasad Koya)
X-Mailman-Approved-At: Fri, 22 Sep 2023 17:24:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=Arista-A; t=1695400684;
 bh=pD16L7bzKZHGImef/xBf1dFAV1vQpWiuIcQ1e7o+p+U=;
 h=Date:To:Subject:Cc:From:From;
 b=w0JOCtsUqRr9L2yiSMUUh4U0gHzYGhfZiLxPm16WujaERSVmv7pPKtqDh2jHjHqaI
 yMe+FMU9FsWBedV75VKZ/hneECmmr1MCAQHeUndMXB4oI1tykIoock00DIaHvHP7u7
 0mTDwP3Vjnt8Ii2CYYB/paPpC6s/E34c4yh/bfQ3ZdeYeAvGUhxL4ksutaqAuAtznL
 00R1px9OPe0u0S4cxwh7bzpNd/p5VuNzsTE9/xjIViOGBON7jeD+JIkIjN4FekwvOA
 Lizga9KIhIZ1AQmzxlbSngTiLUUuccaYoN0eGWFGemOAEElyku8vldYpqcS6xjyBRb
 3ureBhcvVd4LA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=arista.com header.i=@arista.com header.a=rsa-sha256
 header.s=Arista-A header.b=w0JOCtsU
Subject: [Intel-wired-lan] [PATCH] [iwl-net] Revert "igc: set TP bit in
 'supported' and 'advertising' fields of ethtool_link_ksettings"
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
Cc: dumazet@google.com, sasha.neftin@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, prasad@arista.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This reverts commit 9ac3fc2f42e5ffa1e927dcbffb71b15fa81459e2.

After the command "ethtool -s enps0 speed 100 duplex full autoneg on",
i.e., advertise only 100Mbps speed to the peer, "ethtool enps0" shows
advertised speeds as 100Mbps and 2500Mbps. Same behavior is seen
when changing the speed to 10Mbps or 1000Mbps.

This applies to I225/226 parts, which only supports copper mode.
Reverting to original till the ambiguity is resolved.

Fixes: 9ac3fc2f42e5 ("igc: set TP bit in 'supported' and 
'advertising' fields of ethtool_link_ksettings")
Signed-off-by: Prasad Koya <prasad@arista.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 93bce729be76..0e2cb00622d1 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1708,8 +1708,6 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 	/* twisted pair */
 	cmd->base.port = PORT_TP;
 	cmd->base.phy_address = hw->phy.addr;
-	ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
-	ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
 
 	/* advertising link modes */
 	if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
