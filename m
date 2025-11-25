Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9FEC846E1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:20:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BA3761195;
	Tue, 25 Nov 2025 10:20:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZA3X8CDRHtRF; Tue, 25 Nov 2025 10:20:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDDC261185
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764066003;
	bh=h8v9/WTizrePyr3QJeAH1/2LNaWTwWj5f0e5cWpR0qY=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PA+/8qrbznpDXwd50eyvEZmx3+Zjzh/XY77mojy+/TwDao7eoYNt0oAhJod4PfalV
	 UlzWdURrVhMgH/Dxq0nOV4B1kI/YZBdPcJdcLYhcRYYz1sJ9u3bEqr20KDTGlev0JD
	 xDNRM7rFc/kjyk7gDkARC0N1QkbLA07Sml9Pzdw6hU/8Ot+MYRLvu0H1OCUhfIbaZo
	 tVPKqVIPBv0wqKEq1TeqisXdTuH1siv9PSVsitw/8MOO7VbM/hk9sqD1HZ+EaDxaHD
	 wUZ4DC/G144AlkTqR5l2a3g8v6QFGcwq7GC/+ZxKzrNI+j2aqbfVyIg5Nxzk4bR5B0
	 zD/2V7gktLkpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDDC261185;
	Tue, 25 Nov 2025 10:20:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A1DB359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E4B7981148
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mKXutqJ66IK9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:20:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.41;
 helo=mail-ot1-f41.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E637E810D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E637E810D1
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
 [209.85.210.41])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E637E810D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:00 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id
 46e09a7af769-7c75fd8067fso3110819a34.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 02:20:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764066000; x=1764670800;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=h8v9/WTizrePyr3QJeAH1/2LNaWTwWj5f0e5cWpR0qY=;
 b=TiG2ydX7x7UBk8ciSmJw1NzeVDBsjYSoYWQ/8QyaBIJXZKJ5eIu2qFTBx7YbS3XcAl
 +ItalHfddD+RGLgER/bZ2Q2Cw3LuNyCTRC7pAA/SPNfzTvLtHVKJjdmvHyL2R6vn+o+X
 HT0RXJltI/+XT+aFj0qzIqxEPyYROVCXS0zCDF312HyqtHIgtgCHDDgRAlK4corhxCQP
 zmlRcZIeXefwFwmNFLL/DXlElaHkdEFb5o6PgQa590qzKVlOv1Z3DBwZ9R0xT8fMwAL+
 jkpVi2Mw2dgx/EE6DRvm5zbVlDFIsfgbGpwliEaNaUhjUhA3wEvL1htFsTlCMR3R9KhA
 /PnQ==
X-Gm-Message-State: AOJu0YzGoGBNUcBlIYEU7iEXgFK/sBMAigKd98Igsk3pqQ8pjLh2xX2I
 b7eG61wjBH3GJLkrbfpj7aXnGNCQBA5WSNyjtmkDdDqBNH34hz2qTA9R
X-Gm-Gg: ASbGnctmuzIJ29q78+3yZ0nNvW5bJ3kgeeJZ1UDqEizS79pFybgsbM6YBhqEg/cw2QB
 Zh3KL7e9tDC4+0PDk/YgpLF9Oht/y7bQWf1bJjUhVC+X71mHMUbw5XbAgQQYFhkeM/mWie7PwNm
 HF2XQX0UycZjPlDHARpLMkqnmdX4QRLePyfy2s5QwC0PlFkTjJ88ecsHMFJMeR2Mfqd2kG3B6qU
 ISSXF1YaDAKwdsUqNbhyuIoDsAzMqq6D9uPzGTyH1RrqXvcQUpSHIcxUoc9iEdqQaAqoGhV7N00
 A008Z509VDvl4W2eHWCMwf3784WQlR0Ff+47ExBkMW4jtXbzzOe2aRPR3NxqIqxGGS54lY5Tupv
 Yth+LAIfx2uBJTsNDwApTmAihmflO5OoweArqq7K2eq/7VMbbiczfHRka10AUfJ2zniYLEZYHSB
 r39kx90AO3+Bkg
X-Google-Smtp-Source: AGHT+IE6t71uMK8vJhUZf3a/GMa3fQepPfD+FiI5B3hDu2dvBBm1hjM9xvNb0LamgEBtLV3ur2SqXw==
X-Received: by 2002:a05:6830:719d:b0:7c7:62d0:b462 with SMTP id
 46e09a7af769-7c7c42b680emr1199371a34.6.1764065999790; 
 Tue, 25 Nov 2025 02:19:59 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:5::])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c78d3e2b43sm6139322a34.19.2025.11.25.02.19.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Nov 2025 02:19:59 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Tue, 25 Nov 2025 02:19:48 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-gxring_intel-v2-5-f55cd022d28b@debian.org>
References: <20251125-gxring_intel-v2-0-f55cd022d28b@debian.org>
In-Reply-To: <20251125-gxring_intel-v2-0-f55cd022d28b@debian.org>
To: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Breno Leitao <leitao@debian.org>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1909; i=leitao@debian.org;
 h=from:subject:message-id; bh=hVEX4eVAfWJb5W2oFiVN1kQa1CjAK6kJPi2V6F44wTs=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJYLI5QoXS9+mJwT5CIZcE4OlmgbGwG/2mdjWe
 58PXeytql2JAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSWCyAAKCRA1o5Of/Hh3
 bdCiEACSgNVB4KN8Azh7hBw6ckkRbrThhhx63ZWDCp6/YNvXnsbqJv6nKQbUfQXQ0jWDda46H/I
 XrH/JxD3zH5O4vH64EbO7Y57egV7sgm7WgFNu21smSBNN3ccunDTmlUJqIcFCwZ29uv0++TMx0E
 Lb9fXt3hHjuwu6Ovvc/7aSuycpBQzCdLLlOToTQp8UXzxgKQFT3L6MMQDXt3Tyb21QrzsWmpI7Z
 sEiZq8i/9XJc7maUllQDm20RtvIUkwRarwPwsbdaYF5flWor9JjupY9G0AbcACExt+zq5IntXIp
 T+/+F2SNaXz2PIBf2rRoMsc8fFyv129QxIS7Ht8hzvju8Sqv/rVF/JQ1mA1OfLaXkDL97UfmB7x
 o0DZjOLwKoAg5V2ZlwbSmUJiIyv8x3SfrDU4HjIdm1Z+qhC6thsjk5gN03RHWTQ/IZaRzIFCv30
 G+iw20MZ6VQD+wku+OUqer1c//4H3HPSNC/KHx3VEiAk3u3wuw3UUt3itze90/EMF/bs6IZo3Y2
 w0u7dND+a0OW+4cF2F/dt+gaB0wzP5Sq5bIKgxtVHe5MtBU6f3IgcoDyQIbq3OqDmxeBPffFtl1
 j1ywp2RdAjRBR+A2PEZCVK4DKJydD8Mq4SyLygWR62gfFefyPLa5uDXmSnahWXIGYYa0I0+x9X8
 6NHpyZBi8i9YOuA==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next v2 5/8] igb: extract GRXRINGS
 from .get_rxnfc
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

Commit 84eaf4359c36 ("net: ethtool: add get_rx_ring_count callback to
optimize RX ring queries") added specific support for GRXRINGS callback,
simplifying .get_rxnfc.

Remove the handling of GRXRINGS in .get_rxnfc() by moving it to the new
.get_rx_ring_count().

This simplifies the RX ring count retrieval and aligns igb with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 10e2445e0ded..b507576b28b2 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -2541,6 +2541,13 @@ static int igb_get_rxfh_fields(struct net_device *dev,
 	return 0;
 }
 
+static u32 igb_get_rx_ring_count(struct net_device *dev)
+{
+	struct igb_adapter *adapter = netdev_priv(dev);
+
+	return adapter->num_rx_queues;
+}
+
 static int igb_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 			 u32 *rule_locs)
 {
@@ -2548,10 +2555,6 @@ static int igb_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = adapter->num_rx_queues;
-		ret = 0;
-		break;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = adapter->nfc_filter_count;
 		ret = 0;
@@ -3473,6 +3476,7 @@ static const struct ethtool_ops igb_ethtool_ops = {
 	.get_ts_info		= igb_get_ts_info,
 	.get_rxnfc		= igb_get_rxnfc,
 	.set_rxnfc		= igb_set_rxnfc,
+	.get_rx_ring_count	= igb_get_rx_ring_count,
 	.get_eee		= igb_get_eee,
 	.set_eee		= igb_set_eee,
 	.get_module_info	= igb_get_module_info,

-- 
2.47.3

