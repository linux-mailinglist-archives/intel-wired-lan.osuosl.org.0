Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E15BBA939A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 14:44:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 091C980782;
	Mon, 29 Sep 2025 12:44:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VABQnIKjeEy7; Mon, 29 Sep 2025 12:44:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57C8C80786
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759149883;
	bh=xCNf2F9/vkyVa+RDu5Z9uZQNzx+8O/r/BJm/LNGWyrA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7GDDD7qY/AWHaNde8Wb7eAG28N1lFRiSl7mOIIxqwVUPjPfFpmoxlhHVmut6Tk8LQ
	 eXaLgQ00fOTnvTPciWYlJom36MjnSGY9byhAoJsf0TXzDCoEZ5X05YhnwOH8txV6hE
	 v6PvbESgQFwWRyNwfPUYtBY25GsCWmhU8qmNxpiikMaYAKDSGA0JkKiDGX8wmnS3EC
	 Iki5U7KM2JStKhjjZZjRQvXX0e9gu9ucoVTVdKrGFSS6iWGzqUNQjEMqEdwEly8a4e
	 t8C8gcQQTV+zKO6bn93dOFsmleBuaLUWFtTKsnMiJ+1teUETaX12nNFuiUJhVZVe+b
	 o0O6VpGmNScCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57C8C80786;
	Mon, 29 Sep 2025 12:44:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3684F194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2864160AE8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:44:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ykATF0ajLkIl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 12:44:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3DE8E60A9F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DE8E60A9F
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3DE8E60A9F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:44:39 +0000 (UTC)
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58TCXZJ7026464;
 Mon, 29 Sep 2025 12:44:32 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 49ft7cr0mb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 29 Sep 2025 12:44:32 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 58TCULNX012153; Mon, 29 Sep 2025 12:44:31 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 49e6c6vxws-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 29 Sep 2025 12:44:31 +0000
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 58TCiVN9040267;
 Mon, 29 Sep 2025 12:44:31 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 49e6c6vxw1-1; Mon, 29 Sep 2025 12:44:31 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org
Cc: alok.a.tiwari@oracle.com
Date: Mon, 29 Sep 2025 05:44:01 -0700
Message-ID: <20250929124427.79219-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_04,2025-09-29_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 bulkscore=0
 malwarescore=0 mlxscore=0 spamscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2509150000 definitions=main-2509290123
X-Authority-Analysis: v=2.4 cv=cruWUl4i c=1 sm=1 tr=0 ts=68da7f30 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117
 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=yJojWOMRYYMA:10 a=yPCof4ZbAAAA:8 a=FQFW6yW-yZ_OsDhkVN0A:9 cc=ntf
 awl=host:13622
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDEyMSBTYWx0ZWRfX6213k4m/i5PK
 ER2slmL/aJ9hoCa0XzC5bWjktGu2mJyVImFP326ik3EJc+frhDrJhMJIxlEmGJnTX341i3ukKfZ
 wUFhawkQiHn9L2VldHNxvwI37+oZ523dkd81Ei6zIP9ABp1fEbJAwS65//HNwcoD0oMH+bZVtjH
 XYSRz0tkZ3huaMm53OfwzBxQ0UI53UNPZhSt9jg/5fM4mI2NpZzqG2NCab35vQf6RPCGwBT6ytX
 HAnVtZuIemuSrAGJszlM4cud2gFJkbk9uhKKgT46ekKjYcuRSBFzHmBvV9dVF82eS3iKu0FHg2h
 3AR3VFb+NlKy/CRx8/zNl9uYPXmX+pxzBtTyRXshKiT2POwa4plBg8e5wVhV65UeL8SyGLYEzQQ
 kapv0zjJtyvzkjdtz0MELPsbNYLi/8ehTwKAfQGi2qWi0vTx7jo=
X-Proofpoint-GUID: -gIraJ39UEskMc8gW8PtjPbF3hP88JQy
X-Proofpoint-ORIG-GUID: -gIraJ39UEskMc8gW8PtjPbF3hP88JQy
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=xCNf2F9/vkyVa+RDu5Z9uZQNzx+8O
 /r/BJm/LNGWyrA=; b=Kc/m0psOWoBVRE37OcYeejPYCtEmesP4cxzXjJgxW0wkP
 wyMJct3KgoES5xO+xtwXLdZNPMOcd6P19cPR5PpevbDgQnZ/EmwF2Za1oDDhQdVa
 H8XOke+8umhkc3RE6047Fu8ToBKnZIa9c6iRgIZpGMtLcHV2mp2LkYQaZ/hUQELC
 c6sCZipPzcxqs+kDR+Mu8twv5kI8XYQObbupfEa69N2CjJlPng6l1g7ATe+bO8Xb
 DvQ0xN0cAfbMoRveSvFrfHpFXfVyxbk2UFFrIm986/elXnzZvDglwTh3XqSP5mMv
 HSay0NiVZJPxHNaDNdF4Vdh7Af7D4w48CQd8mInog==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=Kc/m0psO
Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typos and docstring
 inconsistencies
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

Corrected function and variable name typos in comments and docstrings:
 ixgbe_write_ee_hostif_X550 -> ixgbe_write_ee_hostif_data_X550
 ixgbe_get_lcd_x550em -> ixgbe_get_lcd_t_x550em
 "Determime" -> "Determine"
 "point to hardware structure" -> "pointer to hardware structure"
 "To turn on the LED" -> "To turn off the LED"

These changes improve readability, consistency.

Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index 650c3e522c3e..76d2fa3ef518 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -1163,7 +1163,7 @@ static int ixgbe_validate_eeprom_checksum_X550(struct ixgbe_hw *hw,
 	return status;
 }
 
-/** ixgbe_write_ee_hostif_X550 - Write EEPROM word using hostif
+/** ixgbe_write_ee_hostif_data_X550 - Write EEPROM word using hostif
  *  @hw: pointer to hardware structure
  *  @offset: offset of  word in the EEPROM to write
  *  @data: word write to the EEPROM
@@ -2318,7 +2318,7 @@ static int ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
 }
 
 /**
- * ixgbe_get_lasi_ext_t_x550em - Determime external Base T PHY interrupt cause
+ * ixgbe_get_lasi_ext_t_x550em - Determine external Base T PHY interrupt cause
  * @hw: pointer to hardware structure
  * @lsc: pointer to boolean flag which indicates whether external Base T
  *	 PHY interrupt is lsc
@@ -2628,7 +2628,7 @@ static int ixgbe_ext_phy_t_x550em_get_link(struct ixgbe_hw *hw, bool *link_up)
 }
 
 /** ixgbe_setup_internal_phy_t_x550em - Configure KR PHY to X557 link
- *  @hw: point to hardware structure
+ *  @hw: pointer to hardware structure
  *
  *  Configures the link between the integrated KR PHY and the external X557 PHY
  *  The driver will call this function when it gets a link status change
@@ -2745,7 +2745,7 @@ static int ixgbe_led_off_t_x550em(struct ixgbe_hw *hw, u32 led_idx)
 	if (led_idx >= IXGBE_X557_MAX_LED_INDEX)
 		return -EINVAL;
 
-	/* To turn on the LED, set mode to ON. */
+	/* To turn off the LED, set mode to OFF. */
 	hw->phy.ops.read_reg(hw, IXGBE_X557_LED_PROVISIONING + led_idx,
 			     MDIO_MMD_VEND1, &phy_data);
 	phy_data &= ~IXGBE_X557_LED_MANUAL_SET_MASK;
@@ -2812,7 +2812,7 @@ int ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
 	return ret_val;
 }
 
-/** ixgbe_get_lcd_x550em - Determine lowest common denominator
+/** ixgbe_get_lcd_t_x550em - Determine lowest common denominator
  *  @hw: pointer to hardware structure
  *  @lcd_speed: pointer to lowest common link speed
  *
-- 
2.50.1

