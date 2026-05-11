Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIARKucSAmqIngEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 19:33:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66778513888
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 19:33:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E68580D8C;
	Mon, 11 May 2026 17:33:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QWBI0q2EwrTX; Mon, 11 May 2026 17:33:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CA9980D98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778520801;
	bh=TCZGVfP3PrygTPQur+dOCeAnWSnlOU1PSYLbzVz6oog=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=78F3RxCmky716Clb20PtrBS+ET5JN9D5ha9VlYjHn5lpGqz6x0a9JYSJTSevVrANR
	 cMdP/CbTXZWrCYMX5+G8/d3M6qhNkupMCEG5o8Eh3WmT90iaNX5u0i6109TDcMLMNY
	 IM93Gm1kV4dBt61o+96YqbgBJJv8bLpgx6jR8mD2TEkdv33Xd75LDg2GMtRR2txGhw
	 U0+vzctevA5huMQWe8Gr40pyG917l+UxYU87H3TostrpaBc3m8W6/Bdt1bLTGBKtbY
	 rQlURHwv5pYksgH057qQmhE+lDuFKAzxLqme3WcUMZGpzFJ8L8wY8ESi0qFNdGhFvY
	 IzWc7N45iZh6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CA9980D98;
	Mon, 11 May 2026 17:33:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 14863272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 02:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0640640E1B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 02:45:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cHx6vzrO9LjQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 02:45:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.148.174;
 helo=mx0b-0016f401.pphosted.com;
 envelope-from=prvs=6591f29198=rkannoth@marvell.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6066A40E13
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6066A40E13
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com
 [67.231.148.174])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6066A40E13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 02:45:03 +0000 (UTC)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 64ALxVgx2886655; Sun, 10 May 2026 19:44:34 -0700
Received: from dc6wp-exch02.marvell.com ([4.21.29.225])
 by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 4e229jkf6e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 10 May 2026 19:44:34 -0700 (PDT)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 10 May 2026 19:44:33 -0700
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Sun, 10 May 2026 19:44:32 -0700
Received: from rkannoth-OptiPlex-7090 (unknown [10.28.36.165])
 by maili.marvell.com (Postfix) with SMTP id 818CF3F7088;
 Sun, 10 May 2026 19:44:23 -0700 (PDT)
Date: Mon, 11 May 2026 08:14:22 +0530
From: Ratheesh Kannoth <rkannoth@marvell.com>
To: <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>,
 <linux-rdma@vger.kernel.org>, <netdev@vger.kernel.org>,
 <oss-drivers@corigine.com>
CC: <akiyano@amazon.com>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <arkadiusz.kubalewski@intel.com>,
 <brett.creeley@amd.com>, <darinzon@amazon.com>, <davem@davemloft.net>,
 <donald.hunter@gmail.com>, <edumazet@google.com>, <horms@kernel.org>,
 <idosch@nvidia.com>, <ivecera@redhat.com>, <jiri@resnulli.us>,
 <kuba@kernel.org>, <leon@kernel.org>, <mbloch@nvidia.com>,
 <michael.chan@broadcom.com>, <pabeni@redhat.com>,
 <pavan.chebbi@broadcom.com>, <petrm@nvidia.com>,
 <Prathosh.Satish@microchip.com>, <przemyslaw.kitszel@intel.com>,
 <saeedm@nvidia.com>, <sgoutham@marvell.com>, <tariqt@nvidia.com>,
 <vadim.fedorenko@linux.dev>
Message-ID: <agFChlSIxsYM3wj6@rkannoth-OptiPlex-7090>
References: <20260508034912.4082520-1-rkannoth@marvell.com>
 <20260508034912.4082520-7-rkannoth@marvell.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260508034912.4082520-7-rkannoth@marvell.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTExMDAyNyBTYWx0ZWRfX1qoSKKDXVfQe
 d/r/S0T94RPFTYaLXpKupzlTPMGqs3OgPqAvfOCm6SjnHKX9Wd6Y6fzU3Af1hass93NXqIIp2XT
 mRvXGGZM5JjKrm7FUPuIJBYS+enYINIQYRD3NNehYCxSThZ/3tHDzxhoXtUHmP4S+Uo7Zo8pIw9
 svxyFgkJzcEXCQNEmW/VUWWr1QGbve7sN1zBYu8WeRMRnZG3Dduo/Yy5esTZJR/4lfXtwTq9/85
 Tep1WJ/sz3df/bSOqhmcy5dqxk7U2YcYwcqklx/Q2jGm0R2tpg3fhugD2YKU2U7s4F121FGyZaj
 pl3Y3zYXN0mwRdO6c1c4rICqH63oQSO3BGMjMGrXJ9hMV6YF7JvX8Wq3OIvjqsc76swLRkewVJs
 ue3l9V4Hb3XY6g4GSeH7SI+vsHHSKOYWd7pv4AXX1uuZRiyvxzfjhsG2vuwM5AdAtKrWkEez5Pm
 aveea3RoCkHHYLimLaw==
X-Proofpoint-GUID: oIDeRa2Cm1H1BBu9O7kBRp-tgSNu22Ge
X-Proofpoint-ORIG-GUID: oIDeRa2Cm1H1BBu9O7kBRp-tgSNu22Ge
X-Authority-Analysis: v=2.4 cv=LdAMLDfi c=1 sm=1 tr=0 ts=6a014292 cx=c_pps
 a=gIfcoYsirJbf48DBMSPrZA==:117 a=gIfcoYsirJbf48DBMSPrZA==:17
 a=kj9zAlcOel0A:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=l0iWHRpgs5sLHlkKQ1IR:22 a=EAYMVhzMl8SCOHhVQcBL:22 a=M5GUcnROAAAA:8
 a=hBA3f-BUjflL6dYasosA:9 a=CjuIK1q_8ugA:10 a=OBjm3rFKGHvpk9ecZwUJ:22
 a=Oh551-UHZqmTy8JkqTUo:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_01,2026-05-08_02,2025-10-01_01
X-Mailman-Approved-At: Mon, 11 May 2026 17:33:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=pfpt0220; bh=TCZGVfP3PrygTPQur+dOCeAnW
 SnlOU1PSYLbzVz6oog=; b=DAuzAf/fA+i+JrocE+oizKuLJFWYUn5VYzKQatIJv
 NQJ6lgOCmIMllRbzNQQNBSQ2l4cK9BXg0CSYVHpa0ktDtWIg5U0JgC9/JwwsAl6E
 ng4rV0aAv/Tv7r1OY5y3KQLFkQaHosQ6ujK8zffgotGTpk7c27BGMyXBQwFFdbHh
 KmBGM6B0JongvK3KEPdwE5k9XtphT03VvoTh+D0csJnNHyjbjwdehuuhUjXuUl8X
 3Libo5zoZuIxzJwIbkMnvosUgtxtnfDohSsK6yPKw8YjrgyW3vsV09oCHKoYo4sl
 NGWcgwh6cZxCarSjhLFh/Qi3h/EJ/RFUM24tZoXrgQ22w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=pfpt0220 header.b=DAuzAf/f
Subject: Re: [Intel-wired-lan] [PATCH v12 net-next 6/9] octeontx2: cn20k:
 Coordinate default rules with NIX LF lifecycle
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
X-Rspamd-Queue-Id: 66778513888
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[marvell.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amazon.com,lunn.ch,intel.com,amd.com,davemloft.net,gmail.com,google.com,kernel.org,nvidia.com,redhat.com,resnulli.us,broadcom.com,microchip.com,marvell.com,linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[12];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rkannoth@marvell.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action

On 2026-05-08 at 09:19:09, Ratheesh Kannoth (rkannoth@marvell.com) wrote:
> Add NIX_LF_DONT_FREE_DFT_IDXS so the PF can send NIX LF free during hw
> reinit or teardown without the AF freeing CN20K default NPC rule indexes
> while the driver still owns that state (otx2_init_hw_resources and
> otx2_free_hw_resources).

pw-bot: changes-requested

>> diff --git a/drivers/net/ethernet/marvell/octeontx2/af/rvu_npc.c b/drivers/net/ethernet/marvell/octeontx2/af/rvu_npc.c
>> --- a/drivers/net/ethernet/marvell/octeontx2/af/rvu_npc.c
>> +++ b/drivers/net/ethernet/marvell/octeontx2/af/rvu_npc.c
>> @@ -990,7 +990,7 @@ void rvu_npc_install_allmulti_entry(struct rvu *rvu, u16 pcifunc, int nixlf,
>>  	u16 vf_func;
>>
>>  	/* Only CGX PF/VF can add allmulticast entry */
>> -	if (is_lbk_vf(rvu, pcifunc) && is_sdp_vf(rvu, pcifunc))
>> +	if (is_lbk_vf(rvu, pcifunc) || is_sdp_vf(rvu, pcifunc))
>Is this logic change intended to be part of this commit?
>The commit message focuses on coordinating default rules with the NIX LF
>lifecycle, but this silently changes the condition from a logical AND to a
>logical OR. While this appears to correctly fix a bug where the condition
>could never be true (since a device cannot simultaneously be both an LBK VF
>and an SDP VF), including an undocumented bug fix in a patch about a
>different topic obscures the commit's intent.
>Should this be split into a separate patch, or explicitly mentioned in the
>commit message?

ACK. This is a fix, i will post as seperate patch after this net-next series merged.
