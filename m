Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D63A4E1A4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 15:49:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98DD4608AD;
	Tue,  4 Mar 2025 14:49:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z0YNZgoHfiUi; Tue,  4 Mar 2025 14:49:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBEA86085F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741099745;
	bh=unPsg5IcCws34EopCbEqEXEWpHI2BSOjFYbdUmNauJU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mMqlgrmgXD8/uhhnuh/jf4umAlOuyhZZMQYU0fJKUN5vYcPM8nz8r/uqyyPQYZGGu
	 KykK7kAYOHfLZQY58ZCeZifAMqszPV3yFBADmP9OE3f9T3vW/dzBkoNF5wq6/DtNbM
	 Gr0kkpSGsxRdEcBKLtLPsQxBsaOrcE/THvJQu55dprMuU9mY5yHQIrUCYincSL8KRW
	 skIaiHJwBOgZJSialmVGMwkdindJX3uLgEMej9tAM7FOLONMP76EWvFXqNczy4G9Ay
	 V1N2fnIfDzvuGJnVE2usPF3HrGcnP1D+gLxj4BXKZGCjchWMat2JfVNiBBXAnJVtK6
	 t6XZ3Xiqdw5JA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBEA86085F;
	Tue,  4 Mar 2025 14:49:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E7D57D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 14:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B8E688204C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 14:49:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eR2Io6uzC3Hu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 14:49:03 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=160.75.25.115;
 helo=beeline1.cc.itu.edu.tr; envelope-from=root@cc.itu.edu.tr;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A3A5E8204F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3A5E8204F
Received: from beeline1.cc.itu.edu.tr (beeline1.cc.itu.edu.tr [160.75.25.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A3A5E8204F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 14:49:02 +0000 (UTC)
Received: from lesvatest1.cc.itu.edu.tr (unknown [10.146.128.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by beeline1.cc.itu.edu.tr (Postfix) with ESMTPS id 585C740D205F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 17:49:00 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
 by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6dnr5CnYzFxgB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 17:47:44 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
 id 12AC842720; Tue,  4 Mar 2025 17:47:34 +0300 (+03)
X-Envelope-From: <linux-kernel+bounces-541374-bozkiru=itu.edu.tr@vger.kernel.org>
Received: from fgw2.itu.edu.tr (fgw2.itu.edu.tr [160.75.25.104])
 by le2 (Postfix) with ESMTP id 3349B43668
 for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:30:58 +0300 (+03)
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
 by fgw2.itu.edu.tr (Postfix) with SMTP id DF36F2DCE4
 for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:30:57 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4504170220
 for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 10:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
 by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F64F1F4735;
 Mon,  3 Mar 2025 10:28:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC6A1F2380;
 Mon,  3 Mar 2025 10:28:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
 t=1740997712; cv=none;
 b=tXdatXpvgAzxuMj0Ls8wcG5NuhvwLJwwArOKLASURJe/MVwmWKXMR6p7DguSp45aptrbOVRXPtdZ4lTU1fSmZqS+9fQny9usow3Zpc528MqT8ls8nFMbBa2OIJlY83GvKIeCi4Kz5o4omX3hbm7evpWur66VS31UWaxmMoSx4m8=
ARC-Message-Signature: i=1; a=rsa-sha256; d=subspace.kernel.org;
 s=arc-20240116; t=1740997712; c=relaxed/simple;
 bh=P6ccI5F2+0bACe0n0NkpiYH116w0AVZ4cwwt/aKfPE0=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=paO1VDeRtUeXcEQWW3vOsI4o3nzhuXkfNG2VC+HTMIW0kQZDF9ecIxg4cGf4tUkyb/UC7zkCfdot1ak5WYSpTkQ9j+T7Zh0ZddcAJ9n5INXixkJLZaem4PvDbNbLJnfZQO737GEqEHpy2s3xRoOs2h+uvEyXfshFKDco2X+dCgU=
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.b=c/cUNq7O; arc=none smtp.client-ip=198.175.65.9
X-CSE-ConnectionGUID: /zaUF2XsSKiqJeKsU3+GcA==
X-CSE-MsgGUID: 7HpBJq95SaW2RR+4zH2ZiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="64310294"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="64310294"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 02:28:30 -0800
X-CSE-ConnectionGUID: IJ+J0UlmS3KRsMbMevFqAA==
X-CSE-MsgGUID: cS//+fnETaSB4iJW+tt0zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="122569920"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa005.fm.intel.com with ESMTP; 03 Mar 2025 02:28:23 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Mon,  3 Mar 2025 05:26:57 -0500
Message-Id: <20250303102658.3580232-9-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250303102658.3580232-1-faizal.abdul.rahim@linux.intel.com>
References: <20250303102658.3580232-1-faizal.abdul.rahim@linux.intel.com>
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for
 more information
X-ITU-Libra-ESVA-ID: 4Z6dnr5CnYzFxgB
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741704475.81218@rOPMFjER7rtU34TGbU83Pg
X-ITU-MailScanner-SpamCheck: not spam
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740997711; x=1772533711;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=P6ccI5F2+0bACe0n0NkpiYH116w0AVZ4cwwt/aKfPE0=;
 b=c/cUNq7OYD6Grb58TR65YS8XR/qxDeaaWaoo/F70P+bKUEDcbc/lmL6E
 4SKT8oGd+hsYGRmmbXV+z4iFoyoOCrwIjSUJLtSt7HxxCuWzSPYfHbH5S
 mnhAO4n2booLNAQ/henIX3LSxMYwZL4dioPG+3o+6QkxyxVcXy5Uskpfv
 mzczzdjDNfe/CeBE775zA7VH9d8thAYSb7Cb+QFYopIVg8fWRhGx9L4vi
 IfFDtYR3EwvDV43GD7lSLZ8eIcEjSqZP/pLzn7Rim2++OEBphbgUDE2cc
 Nu3AC6Ak+WOz8Jd31bNBQrDeyBx5Nx7eDWvsRLvc87qrr9DtDJd7Q9hUC
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel
 header.b=c/cUNq7O
X-Mailman-Original-Authentication-Results: lesva1.cc.itu.edu.tr;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=intel.com header.i=@intel.com header.b=c/cUNq7O
X-Mailman-Original-Authentication-Results: lesva2.cc.itu.edu.tr;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=intel.com header.i=@intel.com header.b=c/cUNq7O
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.b="c/cUNq7O"
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org; arc=none
 smtp.client-ip=198.175.65.9
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org; spf=none
 smtp.mailfrom=linux.intel.com
Subject: [Intel-wired-lan] [PATCH iwl-next v7 8/9] igc: Add support to get
 MAC Merge data via ethtool
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

Implement "ethtool --show-mm" callback for IGC.

Tested with command:
$ ethtool --show-mm enp1s0.
  MAC Merge layer state for enp1s0:
  pMAC enabled: on
  TX enabled: on
  TX active: on
  TX minimum fragment size: 64
  RX minimum fragment size: 60
  Verify enabled: on
  Verify time: 128
  Max verify time: 128
  Verification status: SUCCEEDED

Verified that the fields value are retrieved correctly.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 14 ++++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.h     |  1 +
 2 files changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/e=
thernet/intel/igc/igc_ethtool.c
index 529654ccd83f..fd4b4b332309 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1782,6 +1782,19 @@ static int igc_ethtool_set_eee(struct net_device *=
netdev,
 	return 0;
 }
=20
+static int igc_ethtool_get_mm(struct net_device *netdev,
+			      struct ethtool_mm_state *cmd)
+{
+	struct igc_adapter *adapter =3D netdev_priv(netdev);
+	struct igc_fpe_t *fpe =3D &adapter->fpe;
+
+	ethtool_mmsv_get_mm(&fpe->mmsv, cmd);
+	cmd->tx_min_frag_size =3D fpe->tx_min_frag_size;
+	cmd->rx_min_frag_size =3D IGC_RX_MIN_FRAG_SIZE;
+
+	return 0;
+}
+
 static int igc_ethtool_set_mm(struct net_device *netdev,
 			      struct ethtool_mm_cfg *cmd,
 			      struct netlink_ext_ack *extack)
@@ -2101,6 +2114,7 @@ static const struct ethtool_ops igc_ethtool_ops =3D=
 {
 	.get_link_ksettings	=3D igc_ethtool_get_link_ksettings,
 	.set_link_ksettings	=3D igc_ethtool_set_link_ksettings,
 	.self_test		=3D igc_ethtool_diag_test,
+	.get_mm			=3D igc_ethtool_get_mm,
 	.set_mm			=3D igc_ethtool_set_mm,
 };
=20
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ether=
net/intel/igc/igc_tsn.h
index 6b48e0ed4341..a00dc1d80e12 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -4,6 +4,7 @@
 #ifndef _IGC_TSN_H_
 #define _IGC_TSN_H_
=20
+#define IGC_RX_MIN_FRAG_SIZE		60
 #define SMD_FRAME_SIZE			60
=20
 enum igc_txd_popts_type {
--=20
2.34.1


