Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FDD718B96
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 23:09:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72387614B9;
	Wed, 31 May 2023 21:09:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72387614B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685567391;
	bh=Ywx2+w8OIw/WaCs0jx0fTUt9vjHj57WA1N0klv9aT9Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fHUZRqIXP5QsrWX4Z657wFXIZXlLzGrIhvpss3UDXXsfx82Imet44YQ3hlPRkoqUB
	 fFAPns0EVxnSwmPj+AhrTgf3SqcFW7ghdYTPae2d3GbACObi3qdN1Jebv64njFGvYo
	 vsTUYQsZLx4sQsOlUwTeUDDSnhuyJfMZtv8GrpEmJEdtZ7Nrr3E6KizJRv/laDMvGj
	 gso8QLMb30CmpEy42ySM+SqOPnnsPdVyGtAhsfqelJXP8V2hxUyZk28UAYg4HuDzH3
	 ps3MxO7igT7bVgO3b5RXrjc1rBKtUKkDTNJvMr2XRd7NvYDzlH1z7ZysX6Lr7zd5AS
	 4Lo3ibHdg5FLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Xk0Qdolahji; Wed, 31 May 2023 21:09:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36FDA614B8;
	Wed, 31 May 2023 21:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36FDA614B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBE8F1BF576
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 21:04:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 93FC240533
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 21:04:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93FC240533
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V-7tkLOIO0h5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 21:04:43 +0000 (UTC)
X-Greylist: delayed 00:45:24 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73B8041EED
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 73B8041EED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 21:04:43 +0000 (UTC)
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 34VKCVx9001351; Wed, 31 May 2023 20:19:05 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qxd2c05je-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 31 May 2023 20:19:05 +0000
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 34VKFpvl013315;
 Wed, 31 May 2023 20:19:04 GMT
Received: from ppma02wdc.us.ibm.com (aa.5b.37a9.ip4.static.sl-reverse.com
 [169.55.91.170])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qxd2c05ha-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 31 May 2023 20:19:04 +0000
Received: from pps.filterd (ppma02wdc.us.ibm.com [127.0.0.1])
 by ppma02wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34VJAC4Y008154;
 Wed, 31 May 2023 20:19:03 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([9.208.129.120])
 by ppma02wdc.us.ibm.com (PPS) with ESMTPS id 3qu9g8ddxs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 31 May 2023 20:19:03 +0000
Received: from smtpav04.wdc07v.mail.ibm.com (smtpav04.wdc07v.mail.ibm.com
 [10.39.53.231])
 by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 34VKJ1GC48431430
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 31 May 2023 20:19:02 GMT
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DA9A358050;
 Wed, 31 May 2023 20:19:01 +0000 (GMT)
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 20C6558054;
 Wed, 31 May 2023 20:19:00 +0000 (GMT)
Received: from [9.61.47.250] (unknown [9.61.47.250])
 by smtpav04.wdc07v.mail.ibm.com (Postfix) with ESMTPS;
 Wed, 31 May 2023 20:19:00 +0000 (GMT)
Message-ID: <002e833e-33b0-54d4-8584-9366850a7956@linux.vnet.ibm.com>
Date: Wed, 31 May 2023 13:18:59 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.10.1
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-9-aleksander.lobakin@intel.com>
 <4c6723df-5d40-2504-fcdc-dfdc2047f92c@linux.vnet.ibm.com>
 <8302be1b-416a-de32-c43b-73bd378f8122@intel.com>
Content-Language: en-US
From: David Christensen <drc@linux.vnet.ibm.com>
In-Reply-To: <8302be1b-416a-de32-c43b-73bd378f8122@intel.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: g88aeaZRpnfP0PdxA02G1n1w3BlzCyqp
X-Proofpoint-GUID: st-v3kKNhM2pBCFgda0-Zy5gNWLuGVPD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-31_14,2023-05-31_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0
 mlxscore=0 adultscore=0 mlxlogscore=999 suspectscore=0 lowpriorityscore=0
 phishscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305310170
X-Mailman-Approved-At: Wed, 31 May 2023 21:09:45 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=sTJCWWUwzwvNr/MkB+nxK/PvXW1ND48ywSdnL9r2G/I=;
 b=sxQoG0kvVkhnyhB9eb+OI9pqNiToozu3AIl6pgp559MfzyrrQgnrLMZ2Qha+NApe/kHM
 ITHVeeqpErVZ4oK7jbAQrWQnwDJr2ODcg1xW0gj5tTTw6+6i7w61JXOFAMrJYqysL3Rp
 JQtsmxKTAZr/NBgQ8RbYP+pnfEqpHyrvmeRXs7czCxz7cRAdBptaSOd5RKTzOCPRY3rW
 M2H4NCPv0sVDDn1lFqYkGYqSi/BqIjmiN5H4DQtW4RD1ZFaf3z3SJmWICDAA6DTDnXfU
 uBJS/kQHLEmoIVBbl/QzsL6Gv4jVDu49lZZL+ox5yp4xbHar51S52ooa4hrZOE7oG/3v 2g== 
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=sxQoG0kv
Subject: Re: [Intel-wired-lan] [PATCH net-next 08/11] iavf: switch to Page
 Pool
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/25/23 4:08 AM, Alexander Lobakin wrote:
>> Any plans to add page pool fragmentation support (i.e.
>> PP_FLAG_PAGE_FRAG) in the future to better support architectures with
>> larger page sizes such as 64KB on ppc64le?
> 
> Currently no, we resigned from page fragmentation due to the complexity
> and restrictions it provides for no benefits on x86_64. But I remember
> that pages > 4 Kb exist (I have a couple MIPS boards where I have fun
> sometimes and page size is set to 16 Kb there. But still always use 1
> page per frame).
> By "better support" you mean reducing memory usage or something else?

Yes, reducing memory waste.  Current generation P10 systems default to 
quad-port, 10Gb copper i40e NICs.  When you combine a large number of 
CPUs, and therefore a large number of RX queues, with a 64KB page 
allocation per packet, memory usage can balloon very quickly as you add 
additional ports.

Would you be open to patches to address this further down the road as 
your refactoring effort gets closer to completion?

Dave
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
