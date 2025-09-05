Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0366CB45E3B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 18:34:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1A68610F8;
	Fri,  5 Sep 2025 16:34:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fNYKFKOWvmFq; Fri,  5 Sep 2025 16:34:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE6F461071
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757090051;
	bh=EjnP/wLtNKnoRkE2dW6KYbn19AftvXuU6y9eFs6HBsw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0zzOA8pAqUZI0p4wHaLT9hl9dVo/+K8M/aNvt1YNoE+rxNLTtS9GfGS612LPOpBo/
	 1MZMP1bqvUurybrzTPFrVLgKJ0r7x6uilm6WjZvi/BM3eAFpTQr9bWyeTL6LCShN4i
	 eRcNtfG2T4DqvE3KMNIKGrQZm53oZd7jeiB+HEIhO69UfWM/tLSwMDspLpfTPjicCH
	 0t5Di8vytIf6Urcf7jgSrdArounb+g7/jtFAQ9QyBQIdHOuaJVp942HatoPFLQRfdH
	 uR1yT/iE4V6G6i3yqGExnUvyOrjHsnNjX7Mk6sXnbYQHQ9hdx8URpVMvve9njR98D8
	 IgsoSwb7CtALQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE6F461071;
	Fri,  5 Sep 2025 16:34:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F6A0967
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 16:34:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8097A40C26
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 16:34:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3p9VdofpBTmP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 16:34:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 78E7B40C28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78E7B40C28
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78E7B40C28
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 16:34:08 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 585FEjjX032086;
 Fri, 5 Sep 2025 16:34:01 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4902b2g58c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 05 Sep 2025 16:34:00 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 585FT74P031776; Fri, 5 Sep 2025 16:34:00 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 48uqrkewnf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 05 Sep 2025 16:34:00 +0000
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 585GXxcf026328;
 Fri, 5 Sep 2025 16:33:59 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 48uqrkewm0-1; Fri, 05 Sep 2025 16:33:59 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwari@oracle.com
Date: Fri,  5 Sep 2025 09:33:49 -0700
Message-ID: <20250905163353.3031910-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0
 suspectscore=0 malwarescore=0 spamscore=0 mlxscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2508110000 definitions=main-2509050163
X-Proofpoint-GUID: HXDJ9ygbnRIbqfJjUMWx-91wpIC5VhA_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA1MDE1MCBTYWx0ZWRfX4PgtjIxiocoI
 sA7+wNutzvl/2wYa4dLohoL3ngev2iVPy2EAlssPhaR4CO3gW9Dl35HCEV7yeKLXidriA86K0mk
 7vlf7mVWPcxZ2GDHpvFt9v9P3z7GVP89VWgrv5onWdRiyrrxDuW9fEofRxcyzx4CDSpR/Mcwk4I
 I9Svia0ZMG1P6sZZH6Dd8v0i3m/P4wTUDIJeB80r4SIIQN2+DxDXBvbEl11sMLTQByiC7FV11w0
 Hm4pubFBstLMtZK3IwYPEE2YCc1XcN+jtMB1Fs9sNpos255wik2vH01X455tM8jyJOktVfIPGS2
 vnyJ+R8LAx60/FD+rRtticbkLdJBG7q55VYqO7UqatXcHE6E/20GpDSl0wJNEZd59bLMvSHZBTI
 Ts38PAW0PEMV2MQk79ZsOUlDAWHWrA==
X-Authority-Analysis: v=2.4 cv=X8lSKHTe c=1 sm=1 tr=0 ts=68bb10f9 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117
 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=yJojWOMRYYMA:10 a=yPCof4ZbAAAA:8 a=BqwlVtyWRyGNvs_enycA:9 cc=ntf
 awl=host:12069
X-Proofpoint-ORIG-GUID: HXDJ9ygbnRIbqfJjUMWx-91wpIC5VhA_
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=EjnP/wLtNKnoRkE2dW6KYbn19Aftv
 XuU6y9eFs6HBsw=; b=C2sK3xalTcU8RNI1t6fwMjeUk/FQ/P1cmPRY5hMzOwsl1
 TYBLNEGlW7rCvTDIZF9KAI70n8r50q0CW2Isv860xEXfSVWVppgQtzdHPuIUeOHe
 /a/hN0nwCYbkAzPKO9elc4WWN4+rAQs069fUulLTkxCQB/g+orn08Iu7wkHBfMM2
 T3Sxgz5LpEx1qhy9ITzDeykFStLJ06QftyXYKBKGYdPNRuFPW01WGT6rAGWOzOx3
 aNTu5g3D9F5pEOcfB4hm4fAMEeDTbQbc5xqOQeBrlYwEgEkAPsaEPpndzXqwc2WZ
 oVmxNbaDFHHXY4KP9Qkiq+olxf8VB+imWKcaWonWQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=C2sK3xal
Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in function
 comment for ixgbe_get_num_per_func()
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

Correct a typo in the comment where "PH" was used instead of "PF".
The function returns the number of resources per PF or 0 if no PFs
are available.

Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index bfeef5b0b99d..aed8b30db2d5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -774,7 +774,7 @@ static void ixgbe_parse_vf_func_caps(struct ixgbe_hw *hw,
  * from parsing capabilities and use this to calculate the number of resources
  * per PF based on the max value passed in.
  *
- * Return: the number of resources per PF or 0, if no PH are available.
+ * Return: the number of resources per PF or 0, if no PFs are available.
  */
 static u32 ixgbe_get_num_per_func(struct ixgbe_hw *hw, u32 max)
 {
-- 
2.50.1

