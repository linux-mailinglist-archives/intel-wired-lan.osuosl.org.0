Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCafJeISAmqIngEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 19:33:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C08E651386C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 19:33:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 535EE809E7;
	Mon, 11 May 2026 17:33:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zAjndBKqIbCN; Mon, 11 May 2026 17:33:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B221F80C9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778520799;
	bh=HEXQPr43bSHyCbZRi+CP6TzHe/9mn4IyWPnqB/ie+PE=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I8FZZzWhbVQQVaBc8Zpqqh9OhQa4ldhfpdrLisvspKWeShGATw2wvsHVkrxSqec5j
	 vbA0ZjcW8xh/FIKfRxYefCk5rPm3lXHgOyRmg/aBI+kdTd4CqAzIWvSm8kX/OYwhbT
	 xMgQAJyZedgKs4UtJpE1RiujdCygpH19VpTc8Pm7lEgkC/N8mP4buCnDsAOb+9rZBj
	 4VPEPPtCRpp/JKnrt0sUBE42mfl/IkYh/ee6tpiSb7XlygmxaF8gD0w3TNPVPBWQUg
	 51TpAgHBnFAUXs0MJ57MKAoebMLQqR1n3xO+E6ktSV5llFIwk5Wt7e1Zv1NeEYHG+Y
	 qTGCdxHe0KlsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B221F80C9F;
	Mon, 11 May 2026 17:33:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 86398272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 02:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63AA784439
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 02:25:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Zj_Mek4Eze3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 02:25:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.148.174;
 helo=mx0b-0016f401.pphosted.com;
 envelope-from=prvs=6591f29198=rkannoth@marvell.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 942F584437
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 942F584437
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com
 [67.231.148.174])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 942F584437
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 02:25:49 +0000 (UTC)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 64ANe1DJ3060082; Sun, 10 May 2026 19:25:21 -0700
Received: from dc6wp-exch02.marvell.com ([4.21.29.225])
 by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 4e229jkea6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 10 May 2026 19:25:20 -0700 (PDT)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 10 May 2026 19:25:19 -0700
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Sun, 10 May 2026 19:25:19 -0700
Received: from rkannoth-OptiPlex-7090 (unknown [10.28.36.165])
 by maili.marvell.com (Postfix) with SMTP id 18C293F7088;
 Sun, 10 May 2026 19:25:09 -0700 (PDT)
Date: Mon, 11 May 2026 07:55:08 +0530
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
Message-ID: <agE-BFxaNQk1QQAl@rkannoth-OptiPlex-7090>
References: <20260508034912.4082520-1-rkannoth@marvell.com>
 <20260508034912.4082520-2-rkannoth@marvell.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260508034912.4082520-2-rkannoth@marvell.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTExMDAyNSBTYWx0ZWRfX5L1/lLn/ICBU
 bhBoraIq0d1+kZonQd+pZui59fbV6NvOHhn4uZNcLoam1RgPv2duxNnIrIQv+i9I1TWPAkWcSve
 GyiIPJFGeVucOhUmTUZ+1lYtuNcC/6j3tUY0mHgzz4vIFesFmvCbP0W9YwPk6J3euAkb3C8DPZk
 EkcTZFZenOHc2qp262Lb/+rPaXsGF4eY4NcLuHRWETZDeUPjmnA/vwiQE5G+ltNW6fr+kO9Iaex
 t1XpKIiBL+oRePaeaKw7sZQq2j+aLfaIwBigZpD1Vo1jZGT4nNXDTx5oNmewPSMVWWMnpXkCSmn
 HSrjiwyVxcfQsWbG/b9gjcwXi9MD7pIxHlori6vTndUo372/jM8zv51KVBwNPdQJeCew4RE/LSK
 +20edk4Shglms9GELf3Ef+Ey73Dfqvcy8TVYgkEsKd2jJsueEP4bt6tVx6O9jnGLt8h3A+kFKuQ
 fxJYkKoO69tXXYn2Htw==
X-Proofpoint-GUID: NpbUxd_Gso3XUBF29nYphxGlrKK7WwEC
X-Proofpoint-ORIG-GUID: NpbUxd_Gso3XUBF29nYphxGlrKK7WwEC
X-Authority-Analysis: v=2.4 cv=LdAMLDfi c=1 sm=1 tr=0 ts=6a013e10 cx=c_pps
 a=gIfcoYsirJbf48DBMSPrZA==:117 a=gIfcoYsirJbf48DBMSPrZA==:17
 a=kj9zAlcOel0A:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=l0iWHRpgs5sLHlkKQ1IR:22 a=EAYMVhzMl8SCOHhVQcBL:22 a=M5GUcnROAAAA:8
 a=jt9vlcwtPs7hvUNDCZkA:9 a=CjuIK1q_8ugA:10 a=OBjm3rFKGHvpk9ecZwUJ:22
 a=Oh551-UHZqmTy8JkqTUo:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_01,2026-05-08_02,2025-10-01_01
X-Mailman-Approved-At: Mon, 11 May 2026 17:33:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=pfpt0220; bh=HEXQPr43bSHyCbZRi+CP6TzHe
 /9mn4IyWPnqB/ie+PE=; b=dmOq99D8CbrHyG23rEgEOVCFtZWHGgGVWCyv41EHU
 ZTvJA5ramOU+OupdyjKsqG8erApLuP8jW9TMHEKtnkcO726CmGPQXjh/DtLyaAMZ
 Oj7rTcGHO44uX1nfKnE6J77PDLN/yozr6zBsmPBwP4elRWIL8WJREyhlp0wAZQia
 PoJwvJvTxF8Bi5QQJ0mP3i+Py7Io9GQxa05GP3h228vjmhXNhm919voj09Pt99CH
 jbjOXUR+6aYafisWmK5L2oZ8Z6vMP2WsrMKYDiRVMlCfOmtDl8OfHdOIbZ/XG6Kj
 QQ1Bi3q4pAANE4doW+rD+0nBW5CCq4ra42guZBjhAh6SA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=pfpt0220 header.b=dmOq99D8
Subject: Re: [Intel-wired-lan] [PATCH v12 net-next 1/9] octeontx2-af: npc:
 cn20k: debugfs enhancements
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
X-Rspamd-Queue-Id: C08E651386C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[marvell.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Action: no action

On 2026-05-08 at 09:19:04, Ratheesh Kannoth (rkannoth@marvell.com) wrote:
> Improve MCAM visibility and field debugging for CN20K NPC.
>
> - Extend "mcam_layout" to show enabled (+) or disabled state per entry
>   so status can be verified without parsing the full "mcam_entry" dump.
> - Add "dstats" debugfs entry: reports recently hit MCAM indices with
>   packet counts; stats are cleared on read so each read shows deltas.
> - Add "mismatch" debugfs entry: lists MCAM entries that are enabled
>   but not explicitly allocated, helping diagnose allocation/field issues.
>
> Signed-off-by: Ratheesh Kannoth <rkannoth@marvell.com>

>+
>> +			snprintf(buff, sizeof(buff), "%u\t%#04x\t%llu\n",
>> +				 mcam_idx, pf, delta);
>> +			seq_puts(s, buff);
>> +
>> +			dstats[bank][idx] = stats;
>> +		}
>> +	}
>> +
>> +	mutex_unlock(&stats_lock);
>> +	return 0;
>> +}
>> +
>> +/*  "%u\t%#04x\t%llu\n" needs less than 64 characters to print */
>> +#define TOTAL_SZ (MAX_NUM_BANKS * MAX_NUM_SUB_BANKS * MAX_SUBBANK_DEPTH * 64)
>> +DEFINE_OCTEONTX2_DEBUGFS_ATTRIBUTE_WITH_SIZE(npc_mcam_dstats, TOTAL_SZ);
>Will this single_open_size() allocation reliably succeed on a running system?
>Because single_open_size() uses kmalloc(), it requires a physically
>contiguous memory block. TOTAL_SZ is the product of multiple maximum
>hardware limits, which can be hundreds of kilobytes. This could result
>in a high-order allocation that fails with an out of memory error due to
>fragmentation.
No. single_open_size() is calling seq_buf_alloc() which uses kvmalloc.
