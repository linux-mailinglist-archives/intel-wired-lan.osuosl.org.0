Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61683C3FF1C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 07 Nov 2025 13:40:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 176368471D;
	Fri,  7 Nov 2025 12:40:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SZsQwWvZraWs; Fri,  7 Nov 2025 12:40:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 937198471E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762519240;
	bh=/0VLNF0XkFoex+vaPitGJVE8wC0bF6xQJKj8eU4gdQw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FIr9jNYnA92MQ+3G7JNxdYCizcHqpZuIu6VEWKfd6jVKpHyXrNPHyBEm5EedXNBS4
	 IFoSm/hr3iwWhbXMZdGOQ/5ZqHnAocMZkuNs6/Mg/B/4w/lDH6Xjeeex8n0wRk3YCg
	 VnLqzH3JJYa14ORW39cxYZn7lctPFWXr8l1Kq1EcnZP7oi5Z9D8B/F6PPyUcF5ICpB
	 WDWHwuCnxT6TbyTpkltzm7d19WsDla3PoR0w9t1MckFmrvFzkQgpnZA18J1al4wTJv
	 BkHdQQitqYoTovCtBQHP3obEvzKamtArqhz8TL1oPJBYqcV72V2mD49o6ONSVcm91/
	 ZV/EKDN6lpsfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 937198471E;
	Fri,  7 Nov 2025 12:40:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B56A93E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 12:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2CE718471B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 12:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w1vVrr5oRvgN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 12:40:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 204F58471A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 204F58471A
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 204F58471A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 12:40:37 +0000 (UTC)
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A78uOjH029896;
 Fri, 7 Nov 2025 12:40:28 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4a8yhj1tp8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Nov 2025 12:40:28 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5A7BR2PV039780; Fri, 7 Nov 2025 12:40:27 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4a58ndf1xs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Nov 2025 12:40:27 +0000
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5A7CYtQS010259;
 Fri, 7 Nov 2025 12:40:26 GMT
Received: from ca-dev110.us.oracle.com (ca-dev110.us.oracle.com
 [10.129.136.45])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 4a58ndf1wc-1; Fri, 07 Nov 2025 12:40:26 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: przemyslaw.kitszel@intel.com, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Fri,  7 Nov 2025 04:39:41 -0800
Message-ID: <20251107123956.1125342-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511070103
X-Authority-Analysis: v=2.4 cv=BdrVE7t2 c=1 sm=1 tr=0 ts=690de8bc cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=q7LjOxSivl45Mpgk1VYA:9 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDEzMyBTYWx0ZWRfX4rRXsLvQ6glp
 vLtyIJ09HHf/hjkFmBjbdfJzPAGulz25wvY7STW/SVBxNMnX4cpiVnhjJ5MKkGL+L5MbZWD1cZl
 wrL1awaKLhaSfyRcmjC2mBSva5NiUMFAHpf+3v4LAjpSBF81vC7hg6YYj4g748T5oJLH9NUrN4H
 SqqPKmvHOXyPo8NH+5Z1q3x4qmNT2T16ByJaurLFg+gs/FYv4xpk3zeth5Cf0Spr5qZ6ItDVjoJ
 PXgcecK5/wxmYrf37ym24H4xD6RywF3+87LusmW5vpkvnT/j3tINkKREgXCCgmkdSwlL/FHgSrW
 UcYP3+G817/gMm66Yy8Pyi1/X27V2TVamBY9DR/Iu7hnUr/Oa9YwEd9o3vovn0r/wBEghznRFAN
 FfiPYekPpPSBdNin8cGus7YVSy8h3w==
X-Proofpoint-ORIG-GUID: -JigYjdm-M1TYjLkrH15ltF9tuy99P6m
X-Proofpoint-GUID: -JigYjdm-M1TYjLkrH15ltF9tuy99P6m
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=/0VLNF0XkFoex+vaPitGJVE8wC0bF
 6xQJKj8eU4gdQw=; b=ojqohzyaWfWnk09WMS0ExCXmNPqW210zoAH7sThXNon0B
 tcjIYWW5tAb9NK+yq9l9mhG9N4yhBoW1noZTNoRtRkK7hDRQQV/0zAq6WIfWyMk5
 gf+/LGcRcEQiqBwMancmuK3vx/vr8E7JGm9gLqicEjsHq26397y4mtDADJpcAzUe
 0t17GOF7hV3r6Pt3yy3+22szUKwej5h8UJMQOxFMJuBN6H+LJ1RWVxoCM9DuDoLW
 CHGhaVIFzS8FBcqBtiW8y+smwN/fxAM6izLNE0KNoo2GFQ/PPGPCe9vV+CEAQo70
 T41eidbrjMJ5Vzjpg1QMyXwUPcf5ygiXv1ODfWS3g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=ojqohzya
Subject: [Intel-wired-lan] [PATCH net-next] ice: fix comment typo and
 correct module format string
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

- Fix a typo in the ice_fdir_has_frag() kernel-doc comment ("is" -> "if")

- Correct the NVM erase error message format string from "0x02%x" to
  "0x%02x" so the module value is printed correctly.

Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
 drivers/net/ethernet/intel/ice/ice_fdir.c      | 2 +-
 drivers/net/ethernet/intel/ice/ice_fw_update.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index 26b357c0ae15..ec73088ef37b 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -1121,7 +1121,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
  * ice_fdir_has_frag - does flow type have 2 ptypes
  * @flow: flow ptype
  *
- * returns true is there is a fragment packet for this ptype
+ * returns true if there is a fragment packet for this ptype
  */
 bool ice_fdir_has_frag(enum ice_fltr_ptype flow)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index d86db081579f..973a13d3d92a 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -534,7 +534,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 	}
 
 	if (completion_retval) {
-		dev_err(dev, "Firmware failed to erase %s (module 0x02%x), aq_err %s\n",
+		dev_err(dev, "Firmware failed to erase %s (module 0x%02x), aq_err %s\n",
 			component, module,
 			libie_aq_str((enum libie_aq_err)completion_retval));
 		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to erase flash");
-- 
2.50.1

