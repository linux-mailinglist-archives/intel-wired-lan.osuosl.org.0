Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 341F8722E83
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 20:21:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C558841608;
	Mon,  5 Jun 2023 18:21:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C558841608
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685989272;
	bh=FSvi46l2Om4a8UgpIH43vUVlynJeLofX8hWRxuZMh3Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2fWFLuQ+lqSsgPK5lxIlau0tPqn962CcUkWjZD3v87BgadLG0kfLKCwGC3ilYNBPQ
	 URhnX53kBu1EDWmPH26waFiUoP+Gm/bRGVZmGmtjCJ8BA0OlUn1Tzp3nCoESvt7B1+
	 jjLgIZbOab8fRErxhjJ5b/yLobNM+91Z7OnfuOmXolRCVkNL1TQRqKsyMxq4PmR6sp
	 Ap8z7WUGMdlV1djrkd/oyB5Aj5T7OpcG21DGQ/93APSuvhVRD9d84KroNed7gwYTQg
	 mWYb4rvtxfqpRFNuJcmitPnBU9mZaqrS1y2Ux6618bCL+iEJL5xaQSrF34WaB+g3Z8
	 lzkv+bo4De6jA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VyjHZFTD34fB; Mon,  5 Jun 2023 18:21:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93BF940E46;
	Mon,  5 Jun 2023 18:21:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93BF940E46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 113ED1BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 18:09:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E94CC60B48
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 18:09:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E94CC60B48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bq6u5ev6gh1P for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 18:09:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E6D260BAC
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E6D260BAC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 18:09:11 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id
 41be03b00d2f7-5343c3daff0so2687708a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jun 2023 11:09:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685988550; x=1688580550;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Pqbte/NHccQzADbB3B3SkroNkS45cSp7uHtfgB1J3s0=;
 b=RSsr9j3ueO6XsiiFzJWY9ztCC0wWsh7QSm5kG+wT+4YMoBoLWD2JR41EJycPk7jrHL
 dKqtwb45Hzl4f4XFdfIzsWtvgo0lXxKQijiNF36Ryzwk0sepuAYciDWeBWkNtMuPMSsB
 GyYMvq9UMghMTleM6zTR/zVqIcUR7v8t6NuicwHwE1D3ySHFKaVcasotRnmMmnpgCHdi
 I0ygERdmm9RZ81v3E2rxu++pl4oLsfvxXxqBkif68FG1HP+SGCBXzXVZf4FiVA7vNczv
 nT0josrSprHWgvSHcULuBRn2gMLYdldcSAaKGjo2nTb1UESKXsFBcyyNQgzhe+mszBkU
 751Q==
X-Gm-Message-State: AC+VfDz9izAKX1/LjXxnfiHlxR9TFwbwh2YB/ayR0T1MNPDZoHgIcDgZ
 7NjU7MWcgk+dTnjETrti6Kf6RrfVGKABE/ynZBY=
X-Google-Smtp-Source: ACHHUZ4G27GQWxGcsZxcCOOAR4vh33V2j25PsZ5wWSziWa7oQJmeQQhutCfOcFz3aPTDIp4Sam5M8g==
X-Received: by 2002:a05:6a20:e305:b0:103:883b:10c1 with SMTP id
 nb5-20020a056a20e30500b00103883b10c1mr2570804pzb.41.1685988550122; 
 Mon, 05 Jun 2023 11:09:10 -0700 (PDT)
Received: from arista-Idaville.sjc.aristanetworks.com ([74.123.28.16])
 by smtp.googlemail.com with ESMTPSA id
 m6-20020a17090a34c600b00256471db12bsm6537957pjf.8.2023.06.05.11.09.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jun 2023 11:09:09 -0700 (PDT)
From: Prasad Koya <prasad@arista.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 11:09:01 -0700
Message-Id: <20230605180901.12573-1-prasad@arista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 05 Jun 2023 18:21:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1685988550; x=1688580550;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Pqbte/NHccQzADbB3B3SkroNkS45cSp7uHtfgB1J3s0=;
 b=DmiHEJGU25XuQgZoBuIBtK5POtlUV9o+Rvu/cezpwrCO5A5sTRaFOOaRXHIvPTcKkm
 bUEZX1Btd9EswckT+V3XwEHBuKxsytHuCBGRhLmguleKdNf2dNJtDxMbzOnozAgcstCM
 rPjtRM2cQxwokH0POKLYUmV5yNauOytUdAZAqUSiqmdgkHz75Uzn6YUcu2Oik2qtH5SC
 QFv4Czp2mIzpaFj5WUUvyiF3M2cFaU8jhbvyNgpuquwgktX/IFe8v/ovBsanbD4oR7tz
 qUTZJiW5qSeKXRit0UMvO36lY9Xh6oyRyyjljyEVdPEYiikPYQVIdSmy4VJufI1jP6XP
 dPng==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=DmiHEJGU
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

set TP bit in the 'supported' and 'advertising' fields. i225/226 parts
only support twisted pair copper.

Fixes: 8c5ad0dae93c ("igc: Add ethtool support")
Signed-off-by: Prasad Koya <prasad@arista.com>
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
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
