Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A91B9BE25F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 10:24:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37DD1608B7;
	Wed,  6 Nov 2024 09:24:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qz0vJo3CE5B2; Wed,  6 Nov 2024 09:24:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8122960881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730885078;
	bh=Qnw8b/ulzmoyRZde07QU84kb7JydDZf9LI/zix4jh+o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ckNLCMMe/++hk111N+OHq5GDRYok3Ys84XLv8y3AcQ/xeAZohHXpqgF/WzhJOlK7t
	 yEDCYLvbee7qSnA81kKASF6EPUtIWdLaU6gS/UXnQlSXbDZNXVuIgGu3LQnjEGC4VQ
	 1VZV6OKmjOYJC5xPKzXUxpkP4NLNKucU0pt1247B1bub5hskbwqBRzHqazRu3YyiZ5
	 Nl4b+ZqcrC1uiq3yWiDi6OWpwkt0gDgmc3N84FCJuHUrngSSoNwnxwUAmofYKif1Z4
	 Hj6MAZpB8c2lv1y39yRWDGO41h2QnAAwOclDaUSxRIyES1oAvDVvZX63XOTbvI4JdA
	 N3IDNBIGlPc/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8122960881;
	Wed,  6 Nov 2024 09:24:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F3E83B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 09:24:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64453605EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 09:24:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qZs5iC5eNc9n for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 09:24:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=konrad.knitter@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A5C3460612
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5C3460612
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5C3460612
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 09:24:34 +0000 (UTC)
X-CSE-ConnectionGUID: 0mNc/K+2TQCUpbX2QOhLmg==
X-CSE-MsgGUID: ijXNyKnzSFqsaBTMEcRC2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34368397"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34368397"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 01:24:34 -0800
X-CSE-ConnectionGUID: 1ViBVHDaTkm430X0JbgsGw==
X-CSE-MsgGUID: OAlCwL+QTiGN/1Sor3lA3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="115221982"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 06 Nov 2024 01:24:13 -0800
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C87DA2877D;
 Wed,  6 Nov 2024 09:24:10 +0000 (GMT)
From: Konrad Knitter <konrad.knitter@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jacob.e.keller@intel.com, netdev@vger.kernel.org, jiri@resnulli.us,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Konrad Knitter <konrad.knitter@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
Date: Wed,  6 Nov 2024 10:36:41 +0100
Message-Id: <20241106093643.106476-2-konrad.knitter@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241106093643.106476-1-konrad.knitter@intel.com>
References: <20241106093643.106476-1-konrad.knitter@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730885075; x=1762421075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ibB34upNPaMe3UDhelcOR3ajnDBu48bMZyShEq/38q0=;
 b=MxIeFxGMSNhwflfMS/MkOTaBSxx2Z1LihUa7zZkogURfNMBaE+QplLhC
 3uW2MaMYqBkGhu9Ie4NN4Oh+IUKuN0mqlBzK0ZrS1MmCRjqh0Nr/jEdTw
 mls0C94V4s240/zUctxFT6Bhcs/2Hpd+o6SxeZh0t0U0Wop5mjxFBqpd3
 wK2lOMeYLgRiSAZ/tjh17D71ymZKLoeHRm1dLWVVx6PI/fNGYXbymu4h3
 se7wxOKvrvW4n0vKOayc1d0rdJ3YLRHMPq6X++xnEt6+wT7tOxb2x+oLg
 +p/+WpFa4APiieGG7b5L3b8iVmCG33OFV82ubUuWoHQu5nqUkr5esnU4x
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MxIeFxGM
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] pldmfw: enable selected
 component update
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

This patch enables to update a selected component from PLDM image
containing multiple components.

Example usage:

struct pldmfw;
data.mode = PLDMFW_UPDATE_MODE_SINGLE_COMPONENT;
data.compontent_identifier = DRIVER_FW_MGMT_COMPONENT_ID;

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
---
 include/linux/pldmfw.h | 8 ++++++++
 lib/pldmfw/pldmfw.c    | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/include/linux/pldmfw.h b/include/linux/pldmfw.h
index 0fc831338226..f5047983004f 100644
--- a/include/linux/pldmfw.h
+++ b/include/linux/pldmfw.h
@@ -125,9 +125,17 @@ struct pldmfw_ops;
  * a pointer to their own data, used to implement the device specific
  * operations.
  */
+
+enum pldmfw_update_mode {
+	PLDMFW_UPDATE_MODE_FULL,
+	PLDMFW_UPDATE_MODE_SINGLE_COMPONENT,
+};
+
 struct pldmfw {
 	const struct pldmfw_ops *ops;
 	struct device *dev;
+	u16 component_identifier;
+	enum pldmfw_update_mode mode;
 };
 
 bool pldmfw_op_pci_match_record(struct pldmfw *context, struct pldmfw_record *record);
diff --git a/lib/pldmfw/pldmfw.c b/lib/pldmfw/pldmfw.c
index 6e1581b9a616..6264e2013f25 100644
--- a/lib/pldmfw/pldmfw.c
+++ b/lib/pldmfw/pldmfw.c
@@ -481,9 +481,17 @@ static int pldm_parse_components(struct pldmfw_priv *data)
 		component->component_data = data->fw->data + offset;
 		component->component_size = size;
 
+		if (data->context->mode == PLDMFW_UPDATE_MODE_SINGLE_COMPONENT &&
+		    data->context->component_identifier != component->identifier)
+			continue;
+
 		list_add_tail(&component->entry, &data->components);
 	}
 
+	if (data->context->mode == PLDMFW_UPDATE_MODE_SINGLE_COMPONENT &&
+	    list_empty(&data->components))
+		return -ENOENT;
+
 	header_crc_ptr = data->fw->data + data->offset;
 
 	err = pldm_move_fw_offset(data, sizeof(data->header_crc));
-- 
2.38.1

