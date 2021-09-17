Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80661410082
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Sep 2021 23:06:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16918841F6;
	Fri, 17 Sep 2021 21:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CUzWuBA-yJLV; Fri, 17 Sep 2021 21:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20EAA841EF;
	Fri, 17 Sep 2021 21:06:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 234D81BF868
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 21:05:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EFCBF6E4CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 21:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uSUnRKS_71at for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Sep 2021 21:05:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9477960747
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 21:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=0uPgXmHipKX1bdjQ9izTgwUy2yErbpcTYEybPB/2h3Q=; b=layvusD1Q5mq38NJU0oGmoyPGI
 LBMk3s+yNTOdSgCsT4ga9Qa1FntTB1i8c9JuoWZT390uzbl85Fumo1EWoPoBhQQZ0SuSEndsajemh
 fYhueuOYrUaNn56p7LxFkgbWjE4qfAmEXNx0gRjtSkTkxLjy8A9w2dULSNmhQt/ekdQXU2Au7mGCh
 TQDHmbqcrlE3Wv0368qCEKKEPQwI39qNfUK3vdLHkf+qcBi9B9OrLf9G/LOd/VAuHf+jcLxDdUghJ
 v5PauYm0E1k4dJ/Tp/uWshkuOxIzG9AuuouRQh+d1O3GOI+z9cesUKM/dF7VX+XnBY54GRqdHE7tG
 ziniyd0g==;
Received: from [2601:1c0:6280:3f0::aa0b] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRL3N-00F0v3-1S; Fri, 17 Sep 2021 21:05:49 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: netdev@vger.kernel.org
Date: Fri, 17 Sep 2021 14:05:47 -0700
Message-Id: <20210917210547.12578-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH -net] igc: fix build errors for PTP
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
Cc: Randy Dunlap <rdunlap@infradead.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When IGC=y and PTP_1588_CLOCK=m, the ptp_*() interface family is
not available to the igc driver. Make this driver depend on
PTP_1588_CLOCK_OPTIONAL so that it will build without errors.

Various igc commits have used ptp_*() functions without checking
that PTP_1588_CLOCK is enabled. Fix all of these here.

Fixes these build errors:

ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_msix_other':
igc_main.c:(.text+0x6494): undefined reference to `ptp_clock_event'
ld: igc_main.c:(.text+0x64ef): undefined reference to `ptp_clock_event'
ld: igc_main.c:(.text+0x6559): undefined reference to `ptp_clock_event'
ld: drivers/net/ethernet/intel/igc/igc_ethtool.o: in function `igc_ethtool_get_ts_info':
igc_ethtool.c:(.text+0xc7a): undefined reference to `ptp_clock_index'
ld: drivers/net/ethernet/intel/igc/igc_ptp.o: in function `igc_ptp_feature_enable_i225':
igc_ptp.c:(.text+0x330): undefined reference to `ptp_find_pin'
ld: igc_ptp.c:(.text+0x36f): undefined reference to `ptp_find_pin'
ld: drivers/net/ethernet/intel/igc/igc_ptp.o: in function `igc_ptp_init':
igc_ptp.c:(.text+0x11cd): undefined reference to `ptp_clock_register'
ld: drivers/net/ethernet/intel/igc/igc_ptp.o: in function `igc_ptp_stop':
igc_ptp.c:(.text+0x12dd): undefined reference to `ptp_clock_unregister'
ld: drivers/platform/x86/dell/dell-wmi-privacy.o: in function `dell_privacy_wmi_probe':

Fixes: 64433e5bf40ab ("igc: Enable internal i225 PPS")
Fixes: 60dbede0c4f3d ("igc: Add support for ethtool GET_TS_INFO command")
Fixes: 87938851b6efb ("igc: enable auxiliary PHC functions for the i225")
Fixes: 5f2958052c582 ("igc: Add basic skeleton for PTP")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Ederson de Souza <ederson.desouza@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
---
 drivers/net/ethernet/intel/Kconfig |    1 +
 1 file changed, 1 insertion(+)

--- linux-next-20210917.orig/drivers/net/ethernet/intel/Kconfig
+++ linux-next-20210917/drivers/net/ethernet/intel/Kconfig
@@ -335,6 +335,7 @@ config IGC
 	tristate "Intel(R) Ethernet Controller I225-LM/I225-V support"
 	default n
 	depends on PCI
+	depends on PTP_1588_CLOCK_OPTIONAL
 	help
 	  This driver supports Intel(R) Ethernet Controller I225-LM/I225-V
 	  family of adapters.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
