Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B5CCB9D8D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 22:07:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 907D140B13;
	Fri, 12 Dec 2025 21:07:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kCDIVFonvXbI; Fri, 12 Dec 2025 21:07:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10C5C40B30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765573628;
	bh=VXTfbOvl4jHwCS1MMKU9RzvB58zQYWO3bQ66LrCeB7c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YP0st4O5D6TZKSppygEMCqnjU6RqHIX+hTSSBNACjQ1Rhtrk4p5kxzfNjzsH2ZW7p
	 aPn16ux2DuYirjPaZ28fXyhYvtnwYyeEMPukYRhZ8kYpXHdj9frlxTjD0fvXD3B8ug
	 s+t8hv8ThWHlu3unKnZj7DmLrOI46XZmt4O9Nzu7MpOTzPVtg0el17j1WLy8cRWDyl
	 J9mARxsguQxVticM3rYBRyG4kyDyDuSskUNQiBq08I0PpTIBRy/srkcwX6MZFnzKoq
	 dtbRqmXrnoJlQwWIrSxSbfCBSqt/KMVK6Aop87LsPUGB3GUW4jWe/Gbsr2SQX8jNtF
	 Tfp+oqLSB+cUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10C5C40B30;
	Fri, 12 Dec 2025 21:07:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 546C5E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 21:07:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B4E083C9B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 21:07:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MZfkw8NDEOfG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 21:07:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=gregory.herrero@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2CC8F83C92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CC8F83C92
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CC8F83C92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 21:07:04 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5BCKgDZV355566; Fri, 12 Dec 2025 21:06:56 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4ayd1mbuw6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Dec 2025 21:06:56 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5BCK7LGG039851; Fri, 12 Dec 2025 21:06:56 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4avaxq9swn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Dec 2025 21:06:56 +0000
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5BCL6thv002146;
 Fri, 12 Dec 2025 21:06:55 GMT
Received: from oracle (dhcp-10-154-164-6.vpn.oracle.com [10.154.164.6])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 4avaxq9sve-1; Fri, 12 Dec 2025 21:06:54 +0000
From: gregory.herrero@oracle.com
To: aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Gregory Herrero <gregory.herrero@oracle.com>
Date: Fri, 12 Dec 2025 22:06:42 +0100
Message-ID: <20251212210643.1835176-1-gregory.herrero@oracle.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-12_06,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0 mlxscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2512120169
X-Proofpoint-GUID: ABSMda4Hs0gfgUUPPT8SgMTFSb76Uje_
X-Authority-Analysis: v=2.4 cv=HvZ72kTS c=1 sm=1 tr=0 ts=693c83f0 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117
 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=wP3pNCr1ah4A:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8 a=QyXUC8HyAAAA:8
 a=6XBYZHheHbEpf8W9LPYA:9 cc=ntf awl=host:13654
X-Proofpoint-ORIG-GUID: ABSMda4Hs0gfgUUPPT8SgMTFSb76Uje_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEyMDE3MCBTYWx0ZWRfX2FkTy0YpMuWo
 I+bQxkA8IFk7USA5EKqAEgEd1/1lKIZhCaXSW58V5dZ/M/WwrEcOpf8ctT1p114LBP4naV9eq/b
 eEeV+YnHEcBwvTdrLJ9n/BW7DjD4aH2UuN8ARYOCKCkeEecLnaKXdch/FASHPGvBPr8tDcZDqnj
 jbH2au4DKTtWogwnLihoSUcoqhh3lV+ovAuvPvj/2MhUb+YyRm/m5YUh5enepEXpM+qY6dMQubh
 MDudOtp0+/1rdFhTUims7miyd5VXzXPI6LW2eKOxTM/CK67OMFYoCi1BH8QHTCaczFUNssdLl84
 qWMZvwsteWl/084t5LT0XE+UDGyLAVH2RmO9lYZL4eNO6j9U0jkD5ky1+8we57DCQZb4K4wrJej
 7LsBtwKLeV8Q7T4Xz/HP/r1Folq135g6G7TOmm+P0uQ1dnQPrvc=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=VXTfbOvl4jHwCS1MMKU9RzvB58zQY
 WO3bQ66LrCeB7c=; b=Gn7LRjDT4PtJnBLSAt4wrRgDylVIEb1iUBweunwJXT3QR
 ImxRpTwmwwHbXVVN5Rz8LD3QO+Hdsf9gkxKmRbHX2HdawGsJpsdyUylH5DMEbq1e
 mtrLKPRN0kqLMbOWtubaTXQPo+zZ4ZDvS/OOspUxzIMrg1wPM5g7faqWTkUjhius
 xtIlXTBHFizThaORB62nAzKqqWJOm7ey7KKpmCivLo/lS/iNpXPcBwKCGTO1pipf
 E2gQeFTbhwisXmPQMExT1kAhCQ/rWwkhJemL4BdhoCKX+tCnsDGIf0+SGGl1PAty
 AZEonlUPt6fmIxxTuBZFXBvWAADAgcmvfXzgVpWZg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=Gn7LRjDT
Subject: [Intel-wired-lan] [PATCH v5 0/1] i40e: additional safety check
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

From: Gregory Herrero <gregory.herrero@oracle.com>

On code inspection, I realized we may want to check ring_len parameter
against hardware specific values in i40e_config_vsi_tx_queue() and
i40e_config_vsi_rx_queue().

v5:
- use "hardware-dependent" in commit description
- add Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
- get rid of i40e_get_max_num_descriptors() documentation as it's self explanatory
v4:
- remove u32 cast in i40e_config_vsi_tx_queue() too and don't mention it
  anymore in commit description.
- wrap i40e_get_max_num_descriptors() description
v3:
- drop trailing period from the subject
- reword commit description
- remove u32 cast in i40e_config_vsi_rx_queue()
v2:
- make i40e_get_max_num_descriptors() 'pf' argument const.
- reword i40e_get_max_num_descriptors() description.
- modify commit description to explain potential behavior change.

Gregory Herrero (1):
  i40e: validate ring_len parameter against hardware-specific values

 drivers/net/ethernet/intel/i40e/i40e.h             | 11 +++++++++++
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c     | 12 ------------
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c |  4 ++--
 3 files changed, 13 insertions(+), 14 deletions(-)

-- 
2.51.0

