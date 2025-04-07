Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CBEA7E360
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 17:10:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACD3C80D8D;
	Mon,  7 Apr 2025 15:10:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qLuIrwYDOnsT; Mon,  7 Apr 2025 15:10:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D603580E78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744038624;
	bh=21ud4a7PpzHTsE+w/yzFe+lHiyhoei8BC1Tfj/sZr0c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DWnLYAUEr3wmcg3Qy4GI/SR6He25ms6Y6LMwex0l89pBp5IwyKRnpStTRub6nj0Hj
	 QexbKx6EI2G7RIHwmRRCxxnc3w+tml8xeu9OsWCzk44dZNMxXule8D+Cp5lE1iZw1Z
	 o7pw1b9TCL/oWLX3ZwhiLaipIe98jjLicDaOqCwBr5cazTEZHFjWyR6MV+NtyyFsKQ
	 f7o8YVAbe+4vpqKigemT8QfpDTdC577FavgmzxCHvpFHly70YWGkIwXceEzdaMvZ9L
	 eKcUhz3uOL1cLAjaTTLmD9YzqcAeECTQ2QPTp+4pI42kszfMUvkfAgAfudQ/+5DkXM
	 gp6ONPfPNpsWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D603580E78;
	Mon,  7 Apr 2025 15:10:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 035E6DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:37:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D279D80D26
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:37:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tSUt5Qtlnh7C for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 12:37:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:4860:4864:20::64; helo=mail-oa1-x64.google.com;
 envelope-from=mpazdan@arista.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F399980D24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F399980D24
Received: from mail-oa1-x64.google.com (mail-oa1-x64.google.com
 [IPv6:2001:4860:4864:20::64])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F399980D24
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:37:17 +0000 (UTC)
Received: by mail-oa1-x64.google.com with SMTP id
 586e51a60fabf-2c7e5fb8c38so2704819fac.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Apr 2025 05:37:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744029437; x=1744634237;
 h=content-transfer-encoding:message-id:date:subject:cc:to:from
 :dkim-signature:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=21ud4a7PpzHTsE+w/yzFe+lHiyhoei8BC1Tfj/sZr0c=;
 b=nBQLgGH4d322DJENATL4LhkJkQ6+DSGpwCbIZK0GqVRZ63owd6eYC6F9Nwy2+YNpvp
 PHSZ4967b50r0p8W0uvOJdrKeS5l8ujTOLKrjH0Vp+bs+MisqD+888dxr/0F2f+ff9Nb
 fZiUxqQR8l3JqItJmWSYm2csvTnEOoNvq05nwx2m3n8sGIFdoMW9ro3J0PM2Af/5ZcaZ
 wORt8tXvHKIZ/VPnnKC/PghPHHsNP4rExdF5WB2YrBNK3bR7qzXwzP5PSD2V0noahd7Z
 IobjKIiSln6aZaFcVkuuDBKel9bQII6TpSSaX3VQGuFBAJTYpNglxB6THsd/SDh1OQXo
 sCyw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUzWcKB8nLd87ZHZHoQQZbt0tJnacuH7ZxmItyqieNoqdjKtimtW84o7s7Q7qRPaE7qmiyOVhOo21H94QJGZ7s=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzbyLnybmDqoQUcc+/xkJjipBwvzpRo2TonpwKZoRDao4MKlZQA
 g6c+mkWF6KdUPlzRZ9QgQ7Bf1qWhuUFyHbnQKet8mSnVpusXN6A7bKCt2XT1yKu74TRjqf4yCN/
 yFbCeMtFrrorwZrm6woA7AOp66T32MA==
X-Gm-Gg: ASbGnctWCbN/BDOVjXAN7iBN+PCK4Prk4bGzgX2PN59tuigEvbA22w22jEkORGDyAzg
 1aujK1t3HzJUBz/gxHi0x+RwXqnugm+t6nHhvTnGGsR9hW+4u2MNRmM2ISduhPC5QKxFB4m6VE6
 rowxYQJmSqP73CqbwgqPpQkHYu9QJEcESKBkEBwnYTEtGyjLMSDlA2v3gAD7jEntmZ+Qxcmv1LJ
 mN4y5eyy2PkBo4Ora/2sxxKlokRy1taApAB0DFLPYNqh1bB+cZcf0pShY87QSauiDlVxQFnIVNw
 43KyDF4ChoyrxjKn2O/kdQSkoME=
X-Google-Smtp-Source: AGHT+IFwD3N3azBjTuz63ahaMy52lmrJaPVlJJNJrWOY/OnOBkQkkoZFOugtTieb0gKL5dsL3XIPsVIQhsY6
X-Received: by 2002:a05:6870:9c84:b0:2cb:c780:ac52 with SMTP id
 586e51a60fabf-2cd32f45081mr4230230fac.23.1744029436705; 
 Mon, 07 Apr 2025 05:37:16 -0700 (PDT)
Received: from smtp.aristanetworks.com ([74.123.28.25])
 by smtp-relay.gmail.com with ESMTPS id
 586e51a60fabf-2cc845542d8sm638112fac.5.2025.04.07.05.37.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Apr 2025 05:37:16 -0700 (PDT)
X-Relaying-Domain: arista.com
Received: from mpazdan-home-zvfkk.localdomain
 (dhcp-244-168-54.sjc.aristanetworks.com [10.244.168.54])
 by smtp.aristanetworks.com (Postfix) with ESMTP id D55FE10023B;
 Mon,  7 Apr 2025 12:37:14 +0000 (UTC)
Received: by mpazdan-home-zvfkk.localdomain (Postfix, from userid 91835)
 id C0C3840B13; Mon,  7 Apr 2025 12:37:14 +0000 (UTC)
X-SMTP-Authentication: Allow-List-permitted
X-SMTP-Authentication: Allow-List-permitted
From: Marek Pazdan <mpazdan@arista.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Kory Maincent <kory.maincent@bootlin.com>,
 Willem de Bruijn <willemb@google.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Mina Almasry <almasrymina@google.com>,
 Edward Cree <ecree.xilinx@gmail.com>,
 Daniel Zahka <daniel.zahka@gmail.com>, Jianbo Liu <jianbol@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, Marek Pazdan <mpazdan@arista.com>
Date: Mon,  7 Apr 2025 12:35:37 +0000
Message-ID: <20250407123714.21646-1-mpazdan@arista.com>
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 07 Apr 2025 15:10:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=Arista-A; t=1744029434;
 bh=21ud4a7PpzHTsE+w/yzFe+lHiyhoei8BC1Tfj/sZr0c=;
 h=From:To:Cc:Subject:Date:From;
 b=WF4fTGROUngYoKZVX7o687VHDF3//y+V1ZeOlVvIKNMYZXvXmuzOdjIY9IY0aLl+/
 FaEvgWzVzhOdPMgz21C8E0ueAEqVmEWHozh70iYFJtt65h8LlW+cBqBDdz5+UA2gu0
 V7bttLm9A0H0m0c9Y5rHdL6gX8p0GG2wxFRnVniL8lWbHfixZztxI9U2OLrsJHDTKP
 owwr0aMD3lulmaNzyf901YaArthAlftfRm1U6Gui/1XjUaWQsZmQXmOEM1XcnXoAWG
 XsJrBltB7Ie2IQIAKSkjgsx1wFIjMW5nupqATvSG8y9nDOCQpfnjmApxBsbGBrjJsH
 4I6gHLODN9Xng==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=arista.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=arista.com header.i=@arista.com header.a=rsa-sha256
 header.s=Arista-A header.b=WF4fTGRO
Subject: [Intel-wired-lan] [PATCH 1/2] ethtool: transceiver reset and
 presence pin control
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

Signal Definition section (Other signals) of SFF-8636 Spec mentions that
additional signals like reset and module present may be implemented for
a specific hardware. There is currently no user space API for control of
those signals so user space management applications have no chance to
perform some diagnostic or configuration operations. This patch uses
get_phy_tunable/set_phy_tunable ioctl API to provide above control to
user space. Despite ethtool reset option seems to be more suitable for
transceiver module reset control, ethtool reset doesn't allow for reset
pin assertion and deassertion. Userspace API may require control over
when pin will be asserte and deasserted so we cannot trigger reset and
leave it to the driver when deassert should be perfromed.

Signed-off-by: Marek Pazdan <mpazdan@arista.com>
---
 include/uapi/linux/ethtool.h | 14 ++++++++++++++
 net/ethtool/common.c         |  1 +
 net/ethtool/ioctl.c          |  1 +
 3 files changed, 16 insertions(+)

diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
index 84833cca29fe..36c363b0ddd4 100644
--- a/include/uapi/linux/ethtool.h
+++ b/include/uapi/linux/ethtool.h
@@ -289,11 +289,24 @@ struct ethtool_tunable {
 #define ETHTOOL_PHY_EDPD_NO_TX			0xfffe
 #define ETHTOOL_PHY_EDPD_DISABLE		0
 
+/**
+ * SFF-8636 Spec in Signal Definition section (Other signals) mentions
+ * that 'Additional signals such as power, module present, interrupt, reset,
+ * and low-power mode may be implemented'. Below defines reflect present
+ * and reset signal statuses. Additionally ETHTOOL_PHY_MODULE_RESET
+ * in 'enum phy_tunable_id' will be used for reset pin toggle.
+ */
+#define ETHTOOL_PHY_MODULE_RESET_OFF            0x00
+#define ETHTOOL_PHY_MODULE_RESET_ON             0x01
+/* Not Available if module not present */
+#define ETHTOOL_PHY_MODULE_RESET_NA             0xff
+
 enum phy_tunable_id {
 	ETHTOOL_PHY_ID_UNSPEC,
 	ETHTOOL_PHY_DOWNSHIFT,
 	ETHTOOL_PHY_FAST_LINK_DOWN,
 	ETHTOOL_PHY_EDPD,
+	ETHTOOL_PHY_MODULE_RESET,
 	/*
 	 * Add your fresh new phy tunable attribute above and remember to update
 	 * phy_tunable_strings[] in net/ethtool/common.c
diff --git a/net/ethtool/common.c b/net/ethtool/common.c
index 0cb6da1f692a..3d35d3e77348 100644
--- a/net/ethtool/common.c
+++ b/net/ethtool/common.c
@@ -101,6 +101,7 @@ phy_tunable_strings[__ETHTOOL_PHY_TUNABLE_COUNT][ETH_GSTRING_LEN] = {
 	[ETHTOOL_PHY_DOWNSHIFT]	= "phy-downshift",
 	[ETHTOOL_PHY_FAST_LINK_DOWN] = "phy-fast-link-down",
 	[ETHTOOL_PHY_EDPD]	= "phy-energy-detect-power-down",
+	[ETHTOOL_PHY_MODULE_RESET]   = "phy-transceiver-module-reset",
 };
 
 #define __LINK_MODE_NAME(speed, type, duplex) \
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 221639407c72..f1f4270cdb69 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -2954,6 +2954,7 @@ static int ethtool_phy_tunable_valid(const struct ethtool_tunable *tuna)
 	switch (tuna->id) {
 	case ETHTOOL_PHY_DOWNSHIFT:
 	case ETHTOOL_PHY_FAST_LINK_DOWN:
+	case ETHTOOL_PHY_MODULE_RESET:
 		if (tuna->len != sizeof(u8) ||
 		    tuna->type_id != ETHTOOL_TUNABLE_U8)
 			return -EINVAL;
-- 
2.47.0

