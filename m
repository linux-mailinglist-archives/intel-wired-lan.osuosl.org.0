Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5570A82F62E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jan 2024 20:53:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8CC5A40629;
	Tue, 16 Jan 2024 19:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CC5A40629
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705434819;
	bh=biGXUFyh8ovqnJXZr5FP3sVkSZoVuHSfpAVjFd7Vt1Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kQ89PUFlDbrObug7tfLcM2Y2+mFeGpeUKHwJDMTbCXAer7PVsjSJ3B8l3RSrlD+kn
	 nVmCnQbLgt2Z1ibFfdJagI/oJN1nGPmbZ71B9kDautuLLXnCycWBoP/RbEn9ycBRJq
	 waQpifuBEja0a1+HrS3GyenArFf06LEHEkAD7K+VVbeAijjI7c/6ppKWsJk4iKIApu
	 r6vTZqUvZzdbZvtEJ3yVQDbSRdbc3T14UZo3/fj5oCpcR0qOSkaDA6BsRFDIgJT0Bz
	 DVbPlFmwzdsnJwWLtl5h7AnSe+sjRGTZxYAhga4FJOS1JxBRQuQtc+cJf6dFjLoEHK
	 YEwp2DkjoyhCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jefFV3B-0TDy; Tue, 16 Jan 2024 19:53:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A401400C8;
	Tue, 16 Jan 2024 19:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A401400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 289531BF846
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 19:53:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F3512405D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 19:53:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3512405D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bqpHY8BqX0pX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jan 2024 19:53:31 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E156840313
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 19:53:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E156840313
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id C03FDCE1AE6;
 Tue, 16 Jan 2024 19:53:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D52FC43399;
 Tue, 16 Jan 2024 19:53:24 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 16 Jan 2024 14:46:51 -0500
Message-ID: <20240116194908.253437-85-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116194908.253437-1-sashal@kernel.org>
References: <20240116194908.253437-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.12
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705434806;
 bh=dw6+olMcrpYXhYYoeojsPKrKA93qm6x0ifw52mkphv8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PpH3XnAtXH6kT+xnqNV7WlSWkr7ZwOwljVo+XL5fbgckFW7/IUgMxW6MQ8JnHKPA8
 CTaEsKzcMBzb8jrGKB1YCECMEuTPrakDXTwDp0NrtKrlcKDy8ATtkRQMmn3zGJJZVX
 Y4AAL1cuA1CNwlzrp2b201i3Nu9wMLwjeh6kHaTPRhIKXsQfLvQFW0xkjlztwZ2fqr
 aNWdh70wNOHPUUQrhQpVyrGeELnMIFfoaT5XOOt5lfi16LcDxSQLqcJE1OamV3VjQU
 tV8s4+JbskWk9B28t3MsaknOvA7ZXI6Jk7kgT05z9vJL+DxOFPwJrMncfreZRWVCzq
 K05MEl38D5I2A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PpH3XnAt
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.6 085/104] ice: fix pre-shifted
 bit usage
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Sasha Levin <sashal@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, edumazet@google.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

[ Upstream commit 7173be21ae29ef50ada42fd4464056a9d3f55bb3 ]

While converting to FIELD_PREP() and FIELD_GET(), it was noticed that
some of the RSS defines had *included* the shift in their definitions.
This is completely outside of normal, such that a developer could easily
make a mistake and shift at the usage site (like when using
FIELD_PREP()).

Rename the defines and set them to the "pre-shifted values" so they
match the template the driver normally uses for masks and the member
bits of the mask, which also allows the driver to use FIELD_PREP
correctly with these values. Use GENMASK() for this changed MASK value.

Do the same for the VLAN EMODE defines as well.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h  | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_lib.c         |  3 ++-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c    | 16 +++++++++++-----
 3 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index fafe083d1446..45f3e351653d 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -421,10 +421,10 @@ struct ice_aqc_vsi_props {
 #define ICE_AQ_VSI_INNER_VLAN_INSERT_PVID	BIT(2)
 #define ICE_AQ_VSI_INNER_VLAN_EMODE_S		3
 #define ICE_AQ_VSI_INNER_VLAN_EMODE_M		(0x3 << ICE_AQ_VSI_INNER_VLAN_EMODE_S)
-#define ICE_AQ_VSI_INNER_VLAN_EMODE_STR_BOTH	(0x0 << ICE_AQ_VSI_INNER_VLAN_EMODE_S)
-#define ICE_AQ_VSI_INNER_VLAN_EMODE_STR_UP	(0x1 << ICE_AQ_VSI_INNER_VLAN_EMODE_S)
-#define ICE_AQ_VSI_INNER_VLAN_EMODE_STR		(0x2 << ICE_AQ_VSI_INNER_VLAN_EMODE_S)
-#define ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING	(0x3 << ICE_AQ_VSI_INNER_VLAN_EMODE_S)
+#define ICE_AQ_VSI_INNER_VLAN_EMODE_STR_BOTH	0x0U
+#define ICE_AQ_VSI_INNER_VLAN_EMODE_STR_UP	0x1U
+#define ICE_AQ_VSI_INNER_VLAN_EMODE_STR		0x2U
+#define ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING	0x3U
 	u8 inner_vlan_reserved2[3];
 	/* ingress egress up sections */
 	__le32 ingress_table; /* bitmap, 3 bits per up */
@@ -490,7 +490,7 @@ struct ice_aqc_vsi_props {
 #define ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_S		2
 #define ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_M		(0xF << ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_S)
 #define ICE_AQ_VSI_Q_OPT_RSS_HASH_S		6
-#define ICE_AQ_VSI_Q_OPT_RSS_HASH_M		(0x3 << ICE_AQ_VSI_Q_OPT_RSS_HASH_S)
+#define ICE_AQ_VSI_Q_OPT_RSS_HASH_M		GENMASK(7, 6)
 #define ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ		0x0U
 #define ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ	0x1U
 #define ICE_AQ_VSI_Q_OPT_RSS_HASH_XOR		0x2U
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 4e7f67f54f1c..7f4bc110ead4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -979,7 +979,8 @@ static void ice_set_dflt_vsi_ctx(struct ice_hw *hw, struct ice_vsi_ctx *ctxt)
 	 */
 	if (ice_is_dvm_ena(hw)) {
 		ctxt->info.inner_vlan_flags |=
-			ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING;
+			FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_EMODE_M,
+				   ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING);
 		ctxt->info.outer_vlan_flags =
 			(ICE_AQ_VSI_OUTER_VLAN_TX_MODE_ALL <<
 			 ICE_AQ_VSI_OUTER_VLAN_TX_MODE_S) &
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
index 76266e709a39..8307902115ff 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
@@ -131,6 +131,7 @@ static int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 {
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
+	u8 *ivf;
 	int err;
 
 	/* do not allow modifying VLAN stripping when a port VLAN is configured
@@ -143,19 +144,24 @@ static int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 	if (!ctxt)
 		return -ENOMEM;
 
+	ivf = &ctxt->info.inner_vlan_flags;
+
 	/* Here we are configuring what the VSI should do with the VLAN tag in
 	 * the Rx packet. We can either leave the tag in the packet or put it in
 	 * the Rx descriptor.
 	 */
-	if (ena)
+	if (ena) {
 		/* Strip VLAN tag from Rx packet and put it in the desc */
-		ctxt->info.inner_vlan_flags = ICE_AQ_VSI_INNER_VLAN_EMODE_STR_BOTH;
-	else
+		*ivf = FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_EMODE_M,
+				  ICE_AQ_VSI_INNER_VLAN_EMODE_STR_BOTH);
+	} else {
 		/* Disable stripping. Leave tag in packet */
-		ctxt->info.inner_vlan_flags = ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING;
+		*ivf = FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_EMODE_M,
+				  ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING);
+	}
 
 	/* Allow all packets untagged/tagged */
-	ctxt->info.inner_vlan_flags |= ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL;
+	*ivf |= ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL;
 
 	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID);
 
-- 
2.43.0

