Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFkcL+MSAmqIngEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 19:33:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FF8513873
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 19:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3AB94060C;
	Mon, 11 May 2026 17:33:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ThBYWPRdyhEq; Mon, 11 May 2026 17:33:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD13E4072B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778520800;
	bh=E7k1SiMTgddEdvS+o9JlCHlnmx+uBEUCgdVe3wPU5FI=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yP+zX8IH1372O5spHvOR06H/2xjOo8dyvA9S0EJCWHqRBwpJN/oBY4lL0RY1JOQRQ
	 zonbJeOu1hJjb9h3JDw0PIvUG3B3NLhfxS5uHLJlowFMM6yKyJndpgBCdLTfmPX+R5
	 PAF+j7u7ioMT7sHjN/iWitqRu2oFYEnvdBbl0ZAY6XgjQwb3aHha4KvdhkgdmIrp8p
	 haC3T04KKeVGiAk9UB036KvCmSxv5kWWicCwm0o86mnTylSLWX0n8aWrxF5kAsNnGn
	 OYoNGk+GN7IA9fizfS7NU2Cwl/qzKtbZaYUFXz1TN6OdylgxBQRmpJPaMR2++1NFdh
	 yiEcMDxT6wFqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD13E4072B;
	Mon, 11 May 2026 17:33:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 826AC272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 02:33:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6863F607C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 02:33:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GRdOG_SZi3e1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 02:33:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.156.173;
 helo=mx0b-0016f401.pphosted.com;
 envelope-from=prvs=6591f29198=rkannoth@marvell.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4FFCF607A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FFCF607A0
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com
 [67.231.156.173])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4FFCF607A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 02:33:31 +0000 (UTC)
Received: from pps.filterd (m0431383.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 64B0TFmF2107588; Sun, 10 May 2026 19:33:10 -0700
Received: from dc6wp-exch02.marvell.com ([4.21.29.225])
 by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 4e34kn85hd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 10 May 2026 19:33:10 -0700 (PDT)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 10 May 2026 19:33:09 -0700
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Sun, 10 May 2026 19:33:09 -0700
Received: from rkannoth-OptiPlex-7090 (unknown [10.28.36.165])
 by maili.marvell.com (Postfix) with SMTP id 7D0E03F7088;
 Sun, 10 May 2026 19:33:00 -0700 (PDT)
Date: Mon, 11 May 2026 08:02:59 +0530
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
Message-ID: <agE_2zKOIiAwE1JK@rkannoth-OptiPlex-7090>
References: <20260508034912.4082520-1-rkannoth@marvell.com>
 <20260508034912.4082520-6-rkannoth@marvell.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260508034912.4082520-6-rkannoth@marvell.com>
X-Proofpoint-ORIG-GUID: aqMU2B7iCyHO4pdckuR03Oh6pTHnF-Ks
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTExMDAyNiBTYWx0ZWRfX7dGaMBetBX3V
 x9pMLFr5YvFpFreUEn3cPqPf7KQ+GMH1m9PeE7Q+xDc3SODdq6ZEzqApJunCFgP9WVF8keRWKqJ
 +55s61oOxSo2/h9mnZ8V8+SERJB1S0ctL45W7m9TmSyyENyZL+1op4+MwHVSH1EGggLXwl8h4+i
 DS4C1rlDYz6wV+mj195Fd5mnF0LejPW+5y1hgv1JzId81pa3z3YvyVVl1z9+U6PPFSqzX79OAZA
 TF551jRAOtru6VVvOOv7cGzEKcOqdlRW1JyoKmx4yL2i7R+VH9CV9Xsc17QaEPwSRssW8VNE3y/
 kurZPknaBF1qic4cob0elwssVTVqybHv4Ca3q8c/gO//rybJatfBNupuXQoWGdLNVSAj3Dq9NKB
 CwEYC2mp6XlJpWgQ7iZE7O02huchsTPnOxcfZnvYU4lH38ygKjN488Xq3/qThUEigcYo/8IMU0D
 kA1sqTD5Tk/fsnsmjsg==
X-Authority-Analysis: v=2.4 cv=cNfQdFeN c=1 sm=1 tr=0 ts=6a013fe6 cx=c_pps
 a=gIfcoYsirJbf48DBMSPrZA==:117 a=gIfcoYsirJbf48DBMSPrZA==:17
 a=kj9zAlcOel0A:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=l0iWHRpgs5sLHlkKQ1IR:22 a=qit2iCtTFQkLgVSMPQTB:22 a=M5GUcnROAAAA:8
 a=DhIbuZXnhKx70xO1yFEA:9 a=CjuIK1q_8ugA:10 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-GUID: aqMU2B7iCyHO4pdckuR03Oh6pTHnF-Ks
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_01,2026-05-08_02,2025-10-01_01
X-Mailman-Approved-At: Mon, 11 May 2026 17:33:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=pfpt0220; bh=E7k1SiMTgddEdvS+o9JlCHlnm
 x+uBEUCgdVe3wPU5FI=; b=cWnRH0+kcI9w0jTeTW3+dg3JAaIKVyvLFiT/JXkZv
 3zA1PpvDCnvkDWvZOXtd4OY2XnO2J+ODZA/d4qMhdIXPC3aZrgw2SYrQ8TmdwGxa
 Xjfzw1ACUaAqFWEWQaMI+L/5uG/UgKgnL4mBLULq8LJT9iz3ZKYx2ODNfp0JAX8x
 IxtLQYHiRemAKXhY1Ku6uaF20bYxpCMLeIP065j+ivW/9yleHo+49VqiJnqt5Z/S
 w3Z0E+sJtdqdO9l/EjW1vpBlBnVwa7C96Q33Vw5i3RzuXpHsm1xHseWIPOwA/xdG
 xfJlWiq9EOJKsHg7i87qw4fKRhgJHTWwM9iaEUfk1uuKQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com
 header.a=rsa-sha256 header.s=pfpt0220 header.b=cWnRH0+k
Subject: Re: [Intel-wired-lan] [PATCH v12 net-next 5/9] octeontx2-af: npc:
 cn20k: add subbank search order control
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
X-Rspamd-Queue-Id: 11FF8513873
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action

On 2026-05-08 at 09:19:08, Ratheesh Kannoth (rkannoth@marvell.com) wrote:
> CN20K NPC MCAM is split into 32 subbanks that are searched in a
> predefined order during allocation. Lower-numbered subbanks have
> higher priority than higher-numbered ones.
pw-bot: changes-requested

> +	for (sb_idx = 0; sb_idx < cnt; sb_idx++) {
>> +		sb = &npc_priv.sb[sb_idx];
>> +
>> +		xa = &npc_priv.xa_sb_free;
>> +		if (sb->flags & NPC_SUBBANK_FLAG_USED)
>> +			xa = &npc_priv.xa_sb_used;
>> +
>> +		sb->arr_idx = narr[sb_idx];
>> +
>> +		rc = xa_err(xa_store(xa, sb->arr_idx,
>> +				     xa_mk_value(sb_idx), GFP_KERNEL));
>If the new index assignment swaps indices between a free subbank and a used
>subbank, is the old index in the original xarray ever overwritten?
>Since xa_erase() is not called on the old arr_idx, this might leave the
>subbank mapped at both its old and new arr_idx if they don't overwrite each
>other.
>Can this result in stale duplicate entries?
No. npc_cn20k_search_order_set() is only rearranging indexes in free and used subbank.
indexes wont move from free subbank to used subbank.

>If xa_store() fails (for example, due to -ENOMEM from GFP_KERNEL) and returns
>an error, the code jumps to the fail label. Are the successful modifications
>made to previously processed subbanks rolled back?
>If not, could this leave the system in a torn state where restrict_valid is
>false, and some subbanks have updated indices while others keep their old
>ones?
ACK, but, There is no way, we can gracefully rollback, as rollback can also fail due to memory
pressurem while reinserting old index using xa_store. This is fatal error, will add
a err print to alert user.

>> +					     union devlink_param_value *val,
>> +					     struct netlink_ext_ack *extack)
>> +{
>> +	struct rvu_devlink *rvu_dl = devlink_priv(devlink);
>> +	struct rvu *rvu = rvu_dl->rvu;
>> +	bool restricted_order;
>> +	unsigned long w = 0;
>> +	u64 *arr;
>> +	u32 sz;
>> +
>> +	npc_cn20k_search_order_get(&restricted_order, &sz);
>> +	if (sz != val->u64arr.size) {
>> +		dev_err(rvu->dev,
>> +			"Wrong size %llu, should be %u\n",
>> +			val->u64arr.size, sz);
>The size field in devlink array values is a 32-bit unsigned integer (u32),
>but the error message uses the %llu format specifier.
>On some architectures, could this cause printk to consume 8 bytes from the
>arguments and read garbage from adjacent memory?
>> +		return -EINVAL;
>> +	}
No. %llu is used for val->u64arr.size, which is 64bit.
