Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 136A08C7E12
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 23:35:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B187541CFD;
	Thu, 16 May 2024 21:35:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xGnUB9o_3sB5; Thu, 16 May 2024 21:35:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 881F640B3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715895311;
	bh=fcqtIyEB3BiIJMAUYMBt7K5rV7edCiEALXc4C2a9GQQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ie0BbR9cNbuBQgzQ28dKKfjVCOZ8bCL02RmkGwed3HUEU/uZLZAYOyD8mfL/qUIzG
	 y28NegwCt9iba5DNEiXhu0+MAdHG/TSROCNZoMSm270lCu/y/G8RPfgBMG1NV1qgFX
	 uzxaRO3zVw23i1+OaqjAz+Kc9w5wBggY+p/tIzShZRdBJP3db8gwZxGbSFhQ0mp8y1
	 1MeL1upPb8FprVDegEt+0HMF1twVOmqPa9TVuX1vd0U+X1gDbJ4IiIOE5N/GwMTnYK
	 BeBZlgu8bxRRh+cxRwOPHXq7tEH9QK6sh5sKe5zF8xUq4K4Ca3EJrLQ2sqziEshISW
	 3ozdNeluljadw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 881F640B3A;
	Thu, 16 May 2024 21:35:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF7E31BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 21:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 945FA82264
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 21:35:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gvv-Evak0Cw5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 21:35:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.158.5;
 helo=mx0b-001b2d01.pphosted.com; envelope-from=thinhtr@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6D5218225A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D5218225A
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D5218225A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 21:35:08 +0000 (UTC)
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 44GKa9BC000318; Thu, 16 May 2024 21:34:55 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y5qc9rcuj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 May 2024 21:34:54 +0000
Received: from m0360072.ppops.net (m0360072.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 44GLYr3e021918;
 Thu, 16 May 2024 21:34:54 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y5qc9rcuf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 May 2024 21:34:53 +0000
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 44GKshlc002291; Thu, 16 May 2024 21:34:53 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3y2m0pmcmp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 May 2024 21:34:53 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com
 [10.241.53.100])
 by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 44GLYo7l46531268
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 May 2024 21:34:52 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7B6BC58058;
 Thu, 16 May 2024 21:34:50 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3339B58057;
 Thu, 16 May 2024 21:34:50 +0000 (GMT)
Received: from [9.41.99.196] (unknown [9.41.99.196])
 by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Thu, 16 May 2024 21:34:50 +0000 (GMT)
Message-ID: <344f9687-118c-4423-aae1-929f75fead8e@linux.ibm.com>
Date: Thu, 16 May 2024 16:34:49 -0500
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 pmenzel@molgen.mpg.de
References: <20240515210705.620-1-thinhtr@linux.ibm.com>
 <20240515210705.620-2-thinhtr@linux.ibm.com>
 <9fcff111-bec5-4623-bc22-cb4792aba55e@intel.com>
From: Thinh Tran <thinhtr@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <9fcff111-bec5-4623-bc22-cb4792aba55e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: SzgRhx6NkjJIZ8sGRdoUiYacDyUGASxD
X-Proofpoint-ORIG-GUID: WAcBvhVmQUBjpZfPcwjXnhU7RvI1dBqZ
Content-Transfer-Encoding: 8bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-16_07,2024-05-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 mlxlogscore=999
 impostorscore=0 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2405160158
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=fcqtIyEB3BiIJMAUYMBt7K5rV7edCiEALXc4C2a9GQQ=;
 b=hSy7K40uVvfaaXskNwN0oeK3CF31rIZam6cJEd7eCeosY0Fo+c9Iq69beYbQXvGZoUmv
 LihREvVPZKX7oZymIqWNt9632sj4aXFfbmpLTobMIbVk9QXF465kImm8AmLcBDfqoi/r
 u94ZWLYySiqiOgM/PmIJUcchAZ2f3RGM5DfLqyQHGdfl9IXSiT1/mZJaC0UkDlXzG/vp
 dbVGMGAGF5GJ5ivutx7jL35mAdkx+r+3WiTtBSJuQIM9hp6vQFJDmT/p4mUTtX+tvTK6
 UITZyExGYqXVoK+ohfg/DOOa31rP+jZTw5ERGuaiVgbnqmA7YE0eFvI3QnIrGoB1qawT iA== 
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=ibm.com header.i=@ibm.com header.a=rsa-sha256
 header.s=pp1 header.b=hSy7K40u
Subject: Re: [Intel-wired-lan] [PATCH iwl-net V4,
 1/2] i40e: factoring out i40e_suspend/i40e_resume
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
Cc: intel-wired-lan@lists.osuosl.org, edumazet@google.com, pabeni@redhat.com,
 rob.thomas@ibm.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/16/2024 2:11 PM, Jacob Keller wrote:
> 
> I applied this to IWL net dev-queue, but I had some conflicts when
> applying which I resolved manually. I would appreciate review of the
> contents as committed:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/commit/?h=dev-queue&id=b0bdaaffc27a79460a8053c2808fc54e4cbdd576
> 
> Thanks,
> Jake
Hi Jake,
Your updated commit looks good.
Thank you for applying the patch to the IWL net dev-queue. I apologize 
for any conflicts that arose during the process. I appreciate your 
effort in manually resolving them. I noticed that my local repository, 
which was last pulled from the upstream kernel last week, did not 
include the commit ‘i40e: Add helper to access main VSI’.

Thank You,
Thinh Tran
