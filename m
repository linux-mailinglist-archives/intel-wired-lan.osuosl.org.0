Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD71F733478
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jun 2023 17:14:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 747A341A31;
	Fri, 16 Jun 2023 15:14:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 747A341A31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686928473;
	bh=uShFLvpnMVGa22ce8chCpo90CieyEuj2NRjztTJK6Fs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5pDACSTzVTpDGpIPgnq+T0KLmj5N3qKe0qI5NqhWkty4ZAsVxtxOr9g8VFWZZOjuw
	 tjhs77tGy44A1ajvMKhIEexVZbw+JxW/G9o87f1PIniWiFQuI0Vcrg8MBRD+DjToAl
	 f4t+D281RGUx41JAh1KSG2vYDSw0F3ip2/hL6bss1Fx74JY3L/55mmzBqLFfGv2HxL
	 VJ3wIfKKyaRZdA0bdF+PuIDoEnFQgnt8auOXoPiDuYoEPlN9mRxcTR27DSCN+b5XKs
	 GP2fgnVk6fK3EzeYNRMEZS3ATuC6TkMMukerUzQ1LK6QIXVVJzpOUxpQG1nB7v9j/G
	 kMyoexyXrP/FQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vfe3bd5uyakv; Fri, 16 Jun 2023 15:14:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72302419DE;
	Fri, 16 Jun 2023 15:14:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72302419DE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6BE191BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 11:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 51BF3841A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 11:47:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51BF3841A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rHCC5c96AHNJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jun 2023 11:47:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9847783F36
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9847783F36
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 11:47:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="387905270"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="387905270"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 04:47:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="1043068007"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="1043068007"
Received: from gk3153-or4-r750-36948.igk.intel.com ([10.102.19.252])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jun 2023 04:47:33 -0700
From: "Zaborska, Olga" <olga.zaborska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Jun 2023 13:47:29 +0200
Message-Id: <20230616114729.27926-1-olga.zaborska@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 16 Jun 2023 15:14:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686916055; x=1718452055;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GYOH/umy+SNnJpoVBVxjeCO341DHy22fdVUMoHtaWfE=;
 b=Rkn1RYwiCZUsgcIbyto04NmFFVF69ez91o+oqPAHiTcgrJuPFyni5icJ
 iPsiAu9haYgz37Ntkytohe9nWGFc6oWhjvSJRCGcFI+og1c0xbyADfNqE
 Kk2OerhRskWcSOwOt3v5T1ZoZ/Z+oeqh7iEzNOaLBIx1YPEYd6Xik7drk
 5JGvzsdeJpfm2qoQhWSFWbNXsKcr7AFQhc1Vz4fKwmiI/uZV6KVCD8cBK
 Tba6L+wtyWo+mcBVRa5fGg+eZTGOpEtDj7IktKxn/NbJs4Ki9rYKz8oUI
 x4XSLOYqbp6pkxim+wWKC1ylP0r8+dch/9HLD7QLJs4l2e8nvdbbF7Wut
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rkn1RYwi
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change IGBVF_MIN_TXD
 and IGBVF_MIN_RXD to allow change of rx/tx value
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
Cc: Olga Zaborska <olga.zaborska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Olga Zaborska <olga.zaborska@intel.com>

There is currently a bug where when setting the rx/tx value between 64 and 80 it automatically
sets to 80, this will be fixed by changing IGBVF_MIN_TXD and IGBVF_MIN_RXD

Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual functions")
Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
Reviewed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/igbvf/igbvf.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h b/drivers/net/ethernet/intel/igbvf/igbvf.h
index 57d39ee00b58..7b83678ba83a 100644
--- a/drivers/net/ethernet/intel/igbvf/igbvf.h
+++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
@@ -39,11 +39,11 @@ enum latency_range {
 /* Tx/Rx descriptor defines */
 #define IGBVF_DEFAULT_TXD	256
 #define IGBVF_MAX_TXD		4096
-#define IGBVF_MIN_TXD		80
+#define IGBVF_MIN_TXD		64
 
 #define IGBVF_DEFAULT_RXD	256
 #define IGBVF_MAX_RXD		4096
-#define IGBVF_MIN_RXD		80
+#define IGBVF_MIN_RXD		64
 
 #define IGBVF_MIN_ITR_USECS	10 /* 100000 irq/sec */
 #define IGBVF_MAX_ITR_USECS	10000 /* 100    irq/sec */
-- 
2.31.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w transakcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
