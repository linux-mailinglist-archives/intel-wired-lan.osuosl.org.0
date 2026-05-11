Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iP2JNuUSAmrangEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 19:33:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5B5513881
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 19:33:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B38D40732;
	Mon, 11 May 2026 17:33:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uvzL3zFkjcOC; Mon, 11 May 2026 17:33:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F1A740730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778520802;
	bh=+jpJjWzU5up/MkuKjfkXcw0CVnj1Cm8QQOjebWfq+KM=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7jBM6e8EDwjWJrDBUewYfo/ljxvgIf04KhoNXu7kz0oMQ0thH43t3VRsV+ohOD4wS
	 Z7ZfXjW4qFzAAOlRLP3nfOYkV2ID4wcMMLUpL99udf9To1TBWn6vj5gZBYbtOlz2Nk
	 k0A3eVm7Lcu7LMfpeGg4qo9g5D8cWMzNJKe4qqljN5isBo6VjjAw/ynKbZUIcSAjSe
	 fo4iY00aPCeAWHPaIi8UCHpgfOHaYO5RuUzu1rbgJQ2v7eLPlB1xty2tPUPcNFoC2u
	 x1QW0ejSdwBQK1cA4BQVbtByn8MD9XySNeNhxgRwNZ7zlsDe6K5IHHHyllDQn560Dt
	 s7hyD/WTpDf/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F1A740730;
	Mon, 11 May 2026 17:33:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2959E272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 03:26:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F492402D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 03:26:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NAy8qDJinXzk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 03:26:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.156.173;
 helo=mx0b-0016f401.pphosted.com;
 envelope-from=prvs=6591f29198=rkannoth@marvell.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F3EF740087
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3EF740087
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com
 [67.231.156.173])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F3EF740087
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 03:26:27 +0000 (UTC)
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 64ANCPSt2550148; Sun, 10 May 2026 20:25:59 -0700
Received: from dc5-exch05.marvell.com ([199.233.59.128])
 by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 4e24ejax87-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 10 May 2026 20:25:59 -0700 (PDT)
Received: from DC5-EXCH05.marvell.com (10.69.176.209) by
 DC5-EXCH05.marvell.com (10.69.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 10 May 2026 20:25:57 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH05.marvell.com
 (10.69.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Sun, 10 May 2026 20:25:57 -0700
Received: from rkannoth-OptiPlex-7090 (unknown [10.28.36.165])
 by maili.marvell.com (Postfix) with SMTP id 834F83F708D;
 Sun, 10 May 2026 20:25:49 -0700 (PDT)
Date: Mon, 11 May 2026 08:55:48 +0530
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
Message-ID: <agFMPMSmDjoQ_nT-@rkannoth-OptiPlex-7090>
References: <20260508034912.4082520-1-rkannoth@marvell.com>
 <20260508034912.4082520-9-rkannoth@marvell.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260508034912.4082520-9-rkannoth@marvell.com>
X-Authority-Analysis: v=2.4 cv=c5qbhx9l c=1 sm=1 tr=0 ts=6a014c47 cx=c_pps
 a=rEv8fa4AjpPjGxpoe8rlIQ==:117 a=rEv8fa4AjpPjGxpoe8rlIQ==:17
 a=kj9zAlcOel0A:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=l0iWHRpgs5sLHlkKQ1IR:22 a=QXcCYyLzdtTjyudCfB6f:22 a=M5GUcnROAAAA:8
 a=8cwE4-lyzN0HC8lYIv8A:9 a=CjuIK1q_8ugA:10 a=OBjm3rFKGHvpk9ecZwUJ:22
 a=Oh551-UHZqmTy8JkqTUo:22
X-Proofpoint-ORIG-GUID: tfHeb_flF7O6OOb2RJRYK50BpkOxdIGr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTExMDAzNCBTYWx0ZWRfX1H5cRY+nfc0A
 oCSZ5Job+iznDjPoGbfNLQe9UEeNFQUefSn2z/1Bvro1fxf7CTx/4CaAv42AhY8H+JFQL6jnKC0
 s2HiNVBaBikQUJVms86axsOY8GI/0AMSx/oNgOLFuZziSt5YjCBCCzKrWmkkB9NmxmJ6VRXYrVE
 l2LFtzm8dld+jPN1h3wdM7YF0TBZHYYlMokFA7ytSoNe/tL8N3FKRzAQmRMgyqhfOq+LXP3MkqZ
 +7xkLVdIag93t3F/1y8tEG0p7LG8kQJgQ/cnOLK/NrBEcB9WCgWwxk8e3LEjSlLI8LO2UHvYgQZ
 47HkY7jWCxmWjd+zcNXgzrwOEaALjfo6Qlg1AR6TNDl3oCb8SFpQ5C6aZQcoiTe6Bshmt3iifMI
 V2uRgh1zxWGfL8VfhmYLXv2tKrkFDslxxXLxhT/0+SxoJeA5/IsRudYFiWiSrJUkcbF3ihrrZrK
 Sqh2/p3o9N4864mCv2g==
X-Proofpoint-GUID: tfHeb_flF7O6OOb2RJRYK50BpkOxdIGr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_01,2026-05-08_02,2025-10-01_01
X-Mailman-Approved-At: Mon, 11 May 2026 17:33:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=pfpt0220; bh=+jpJjWzU5up/MkuKjfkXcw0CV
 nj1Cm8QQOjebWfq+KM=; b=KIg5/r9G3D/iXLA4LCoEdeEDoou9Ff/1Z8RphAaPW
 WisjlyOa2jYbD/gxGKn5x1WqUSGX4NOl1t9tT548s9495q+gySVxXHHDv96hzi74
 aaDaHjYEIRmbRmkDIccmxPeFYjeHuqRVnHv6BvfxMi/hisFjLHyD7IOtnNOejSes
 YjUihggSRANXUIsSz8/NMINg6it4mFEaaFfJLxGOsCU0oPCzK7O6fLbflyb1Yrb+
 Bk5hTXGox1eSsDUxVcVpVGEuLZSDLzOrKZw9GpEsTSXO3pUn4LhcVJZZoifJU4z5
 Q4okHL8/+b9jZjvAdTmraxgZczCh7D3dJxZzxwXvNXKlg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com
 header.a=rsa-sha256 header.s=pfpt0220 header.b=KIg5/r9G
Subject: Re: [Intel-wired-lan] [PATCH v12 net-next 8/9] octeontx2: cn20k:
 Respect NPC MCAM X2/X4 profile in flows and DFT alloc
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
X-Rspamd-Queue-Id: 5A5B5513881
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[marvell.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Action: no action

On 2026-05-08 at 09:19:11, Ratheesh Kannoth (rkannoth@marvell.com) wrote:
> Default CN20K NPC rule allocation now keys off the active MCAM keyword
> width: use X4 with a bank-masked reference index when the silicon uses
> X4 keys, and X2 with the raw index otherwise (replacing the previous
> always-X2 / eidx + 1 behaviour).
>
> In the AF flow-install path, flows that need more than 256 key bits

pw-bot: changes-requested

>> -static int otx2_mcam_pfl_info_get(struct otx2_nic *pfvf, bool *is_x2,
>> -				  u16 *x4_slots)
>> +static int otx2_mcam_pfl_info_get(struct otx2_nic *pfvf, u16 *x4_slots, u8 *kw_type)
>>  {
>>  	struct npc_get_pfl_info_rsp *rsp;
>>  	struct msg_req *req;
>>  	static struct {
>>  		bool is_set;
>> -		bool is_x2;
>> +		u8 kw_type;
>>  		u16 x4_slots;
>>  	} pfl_info;
>Does caching this profile information in a static structure cause a data
>race across concurrent device instances?
>The accesses to this shared cache are protected by mutex_lock(&pfvf->mbox.lock).
>Since this is a per-device instance lock, multiple network devices could
>concurrently acquire their own independent locks and read or write the shared
>pfl_info structure.
>Could this lack of synchronization lead to torn reads, such as reading x4_slots
>as 0 if the compiler reorders the write to is_set before x4_slots?

PF request as thru mbox, and mbox message handling is serialized in AF. So there is
no scope for race.
