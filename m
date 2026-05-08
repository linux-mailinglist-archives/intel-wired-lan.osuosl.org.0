Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id lkA0G8kw/mkNnwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 20:51:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 117484FAC63
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 20:51:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76DB2847EC;
	Fri,  8 May 2026 18:51:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EuLRC7EQwmXE; Fri,  8 May 2026 18:51:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0156D847ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778266310;
	bh=FgCgVXyKFsKz2Q4i/AaoeOgRoIURZdweYmSmTtUvZ1Y=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=xIOp3SQct+zN6943SpGaFTDdtwCTBJtazaGdpM0Id3xrpRjixUE7xhLglLhkP3rsX
	 CSniCvzywaINDR2fvTQ0cxB5wHFYuiwOxF44FmnWk1+J5oiCuwDUVEVHqb+cL78f+p
	 n4lt6qro3yqaZntArOTkTwnmhofPcbMS2E+RiNRUTXSfJxVXv+kGjEyaHWS5B2+/6S
	 5C9Qdxm7aa430ULxVNFa0z/iTRPZQ8MrCQvJzhRN6Nw9SWcduLOMWe9HCLA3U/IoC+
	 yEGCjRdbofglOWFSHc4UZEBB6fnuDHjlv1h6h05/uMvYKhtEB46hYr3m0ogJc0GsBJ
	 g39eK9bBdwNNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0156D847ED;
	Fri,  8 May 2026 18:51:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CF37B272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 18:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B51FB41ECD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 18:51:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vSWHIhq8xNHU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 18:51:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CDEEF41ECC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDEEF41ECC
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CDEEF41ECC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 18:51:46 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 648FcotB1859383; Fri, 8 May 2026 18:51:31 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4dw9dh3awk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 May 2026 18:51:31 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.7/8.18.1.7)
 with ESMTP id 648IpMNf025260; Fri, 8 May 2026 18:51:30 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4dx5825hdq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 May 2026 18:51:30 +0000 (GMT)
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.18.1.12/8.18.1.12) with ESMTP id 648IpTkV026972;
 Fri, 8 May 2026 18:51:29 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 4dx5825hc3-1; Fri, 08 May 2026 18:51:29 +0000 (GMT)
To: aleksander.lobakin@intel.com, jacob.e.keller@intel.com,
 milena.olech@intel.com, willemb@google.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, netdev@vger.kernel.org, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: alok.a.tiwari@oracle.com
Date: Fri,  8 May 2026 11:46:17 -0700
Message-ID: <20260508185123.2422760-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0 adultscore=0 phishscore=0
 suspectscore=0 bulkscore=0
 spamscore=0 mlxscore=0 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2604200000 definitions=main-2605080188
X-Proofpoint-GUID: yQjVvz1kjyO628iO2juuJbSNTWxbUDno
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDE4OCBTYWx0ZWRfXwg14xMiHWRaV
 x+9ZRwO9twGE01Yqzp/oam5CoNm/dN1obE9jrYKAi0AHaOKdr3bFrd2pZs7U6bybiw+LVj6gVPh
 WAybDHWWW5zUI7Zi2EfK6IVW2r9KZYIO+aGe7KpYJELwnDjg0OJV2PYNhNfje7N2g+MjWUCgQGv
 rj9DQ4rZBd6NHn1KKhipnEmVENqkXl2R78MN+x1j6cUzq2b9sZ1E/rd+jHRXCqawkTZK12IUZrm
 ZJp6JNUE3BQOByFMaQxjN933GLF9PI23Q8SJo51kSzKacN5ckedEvZ62KcKiFSjrKZ+2Waj7UUm
 MIVdzzdR3m3qckv3YOk/p3oQ/I727c8hJW2m1knYBd5VPpzPYZYJJOv5mz6lqy+k2hGk/uWcdgD
 EegQBMD6Z2SlxUGeZueTzZP3iv1zqvbRv9ZpTBy6yGawdXJj4XaYjPfnLlzZQU4L4IQZ8HC9SEm
 f0kQBn6651mk6jH7CpRcdpjOVM+siPaDC3UfnSvA=
X-Proofpoint-ORIG-GUID: yQjVvz1kjyO628iO2juuJbSNTWxbUDno
X-Authority-Analysis: v=2.4 cv=HZckiCE8 c=1 sm=1 tr=0 ts=69fe30b3 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117
 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=jiCTI4zE5U7BLdzWsZGv:22
 a=x4eqshVgHu-cdnggieHk:22 a=yPCof4ZbAAAA:8 a=havJbWvXqL2eL2CLIZYA:9
 a=5yU3S35YU4bGjq-dph-N:22 cc=ntf awl=host:13839
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=FgCgVXyKFsKz2Q4i/AaoeOgRoIURZ
 dweYmSmTtUvZ1Y=; b=UKY0sp2LN2rn0/S7mkMSELbAdk/eAktF+CQps+PWbx8Kj
 3vnFO9jN843Tq/z4DL18tKJkmzbbjP1EtoUAMUmux79IKkJkNb0PCixMZ9GVP+CV
 XzFN7QqK9JXLYx0OCZmvNDFaL+MLKLgjHif1IzL4dq4+6eNYLtaR5kmxmHj3kVxd
 xSyqEdaphxa1nmn2gDmPiqstagZ61H9NEhdLF0NNDEswsM2N/r4lbWYPF2em2Kqi
 bUdNF8P5Eulx+RIohfjGjL5Hrz3nANxOJwyRFl8sWLFu7/HqAoLxo3NV9JuFh0DP
 42aUWrlm9nln7w/D5f45OTPGKXxRLFA3lly1/o81A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=UKY0sp2L
Subject: [Intel-wired-lan] [PATCH net] idpf: fix mailbox capability for set
 device clock time
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
From: Alok Tiwari via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Alok Tiwari <alok.a.tiwari@oracle.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 117484FAC63
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:jacob.e.keller@intel.com,m:milena.olech@intel.com,m:willemb@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:horms@kernel.org,m:alok.a.tiwari@oracle.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[alok.a.tiwari@oracle.com];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action

The current code incorrectly uses VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME
for both direct and mailbox capabilities, causing mailbox-only support
to be ignored and potentially reporting IDPF_PTP_NONE.

Fixes: d5dba8f7206da ("idpf: add PTP clock configuration")
Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
I did not hit a runtime failure directly, but this logic is inconsistent
with the capability definitions.
---
 drivers/net/ethernet/intel/idpf/idpf_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index eec91c4f0a75..3295e2f1db9c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -51,7 +51,7 @@ void idpf_ptp_get_features_access(const struct idpf_adapter *adapter)
 
 	/* Set the device clock time */
 	direct = VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME;
-	mailbox = VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME;
+	mailbox = VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME_MB;
 	ptp->set_dev_clk_time_access = idpf_ptp_get_access(adapter,
 							   direct,
 							   mailbox);
-- 
2.50.1

