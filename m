Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C36722AF6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 17:25:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D822982218;
	Mon,  5 Jun 2023 15:25:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D822982218
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685978748;
	bh=xseSJP0/ixJaa0uE7L3ebXs0H20d1gvda4AeGcirO7o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=o314PCQuvwemKTLIuNTVsqYUyAcZkoYXeya2YibXfXIp0VFCWABBcPrrNnWCSyyvM
	 46dBCScD6aXkSgm4MM4G5al8g8tYDpCytRpWRisYGw1P63RM3CxNlySI7G7eFD6iHf
	 zTYoChuzutSGO+FafaO8dnwj2uc2nGQ7HcsXW+Xkjnsuf3bb5Z58y20765DD7pzB00
	 9D/sVgawCjSyi2AO/ykxoiTb9xTt0P9eD4aap8ESS0lnReQR682+S8ug9O7GTHPqjN
	 A6aK5xeXyNP8ICQ55k0quBo0d/zvOy1+GkOG0FGt65H/zsFafrUSibikEdldIW7x2y
	 kg3yf7Mt8/j5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tyuib3CdCX98; Mon,  5 Jun 2023 15:25:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA381821D9;
	Mon,  5 Jun 2023 15:25:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA381821D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 124E11BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 03:15:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE39860BD6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 03:15:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE39860BD6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4f2npGW-qJXZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 03:15:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09E6B60BCC
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com
 [IPv6:2607:f8b0:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 09E6B60BCC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 03:15:40 +0000 (UTC)
Received: by mail-ot1-x32a.google.com with SMTP id
 46e09a7af769-6b280319df5so50921a34.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 04 Jun 2023 20:15:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685934939; x=1688526939;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nc2J3HJlXpZkLRFWaVBOXrvhgmx1LpBFht68hU1KcEg=;
 b=eEgTA08g7PxuZiDFELjYzuPysk9OVi/Bx6PdCewnwETNtFk5CWnmeR7ZKUU3sxle14
 nrLdsSNyPeeEgCPV+keO/B5Ehkyrc28WleUice0lAKVaD65wWoDMFTmDS+EToEIAVjTY
 zwLPzkcmEB+5oX4LdR+1+7mGUjxlzWOi7mCC98osMZWKws5tkSy86YXi60+ws/GAw64M
 OVmQP9SLGsvGBscFIzoA0psVlvJhc1WVdWwta/iF/VUDhlFb2JO2PXZIdQ2RmtAkxYbD
 kPlFxsY2Hb+kFL1e7ZVTZCTYaqC/xmXo+yI5M8mLrcNMqpfVk6+uPnUHT4LIMbMS/REu
 jfYA==
X-Gm-Message-State: AC+VfDx5CwnHjw9zNzv3DhwP21VVVI7Z4tTirmZUkX76WPEjezkeSuq2
 8Is+EKscDYPkhUUB4jJtOHV4EsWh/ImNqOCl5vU=
X-Google-Smtp-Source: ACHHUZ79HyYtMdGKWkVl2khbAQQ7ST6k8beMJYWTtzY45aZF0Vs4uEsXdQynYKMIaQJqOj0Ts5JYrA==
X-Received: by 2002:a9d:7503:0:b0:6b1:d372:2f8e with SMTP id
 r3-20020a9d7503000000b006b1d3722f8emr1041274otk.17.1685934939630; 
 Sun, 04 Jun 2023 20:15:39 -0700 (PDT)
Received: from arista-Idaville.sjc.aristanetworks.com ([74.123.28.16])
 by smtp.googlemail.com with ESMTPSA id
 c10-20020aa781ca000000b0062e0c39977csm4189520pfn.139.2023.06.04.20.15.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 04 Jun 2023 20:15:39 -0700 (PDT)
From: Prasad Koya <prasad@arista.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun,  4 Jun 2023 20:15:34 -0700
Message-Id: <20230605031534.9846-1-prasad@arista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 05 Jun 2023 15:25:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1685934939; x=1688526939;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=nc2J3HJlXpZkLRFWaVBOXrvhgmx1LpBFht68hU1KcEg=;
 b=C92hnk1CoP+YTScQ2oH872oB/ZBdNfrKIudjF8RxmukOXYKJCV5FMRhANm7BJaPjag
 X4gNv/MheBX23BEpu2g8WpdH27RlHD3cKN133s6lQyFeXgMtjOl8l1FvCldh2gZeSjpj
 dMXcJJWlelCikdyQ8NMdQyU7QX+nsuSV+gRsleE/mQIzJ5UgPNN/yseYnSzawndgAQp8
 zWz8v2Cl6ZUzFeMdbIaOgchonx1D2g3yqQCOJYz9UNbOo4Mw8XLgP7YEGoctw7AOgFAE
 PB1JPIRPlfXwkxrtUjwq/1dTwuk7SQZkg1zFCqDAW0j9g2vZkInB2pRjjHUjtxYfzY9A
 trmQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=C92hnk1C
Subject: [Intel-wired-lan] [PATCH] [iwl-net,
 v2] igc: set TP bit in 'supported' and 'advertising' fields of
 ethtool_link_ksettings
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
Cc: Devora Fuxbrumer <devora.fuxbrumer@intel.com>,
 Salam Noureddine <noureddine@arista.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 Bob Gilligan <gilligan@arista.com>, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Amir Avivi <amir.avivi@intel.com>, Prasad Koya <prasad@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

set TP bit in the 'supported' and 'advertising' fields. I226 only supports twisted pair copper.

Fixes: 8c5ad0dae93c9 ("igc: Add ethtool support")
Signed-off-by: Prasad Koya <prasad@arista.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 8cc077b712ad..511fc3f41208 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1707,6 +1707,8 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 	/* twisted pair */
 	cmd->base.port = PORT_TP;
 	cmd->base.phy_address = hw->phy.addr;
+	ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
+	ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
 
 	/* advertising link modes */
 	if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
