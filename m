Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF0470F9CF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 17:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 30AFC429A3;
	Wed, 24 May 2023 15:09:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30AFC429A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684940998;
	bh=BAdh09ez46DO5PvtIcbmmqpdVomz0yJgZALqxbxDIhQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EvCqW9EInXmbe4E8iqYr/5N9qNkNlAk566h0UzTUSCnC6ARN4lEhvdY4/fEOnmSpJ
	 u+hAqg3fm9bge3QWb6FfOa4+2WM02Z01rUPOWEt5Ks3iw09O2yrLUjYiM4hlPp5cpu
	 LxDwRuSeeTdtPvGpUbk93a3P2n2JOlsV/DlkRp08wSbTBthqIHJbYaxOzJtioBSFO5
	 KJ1QAvPjEjYQascHlZ8Y56Uveo4RosUwb9HY3YHEeWwbiinr+4cgNPZydUSrZz7kLG
	 1I7ygU8+YGW5/XADRdPKRnWL1aMkW5LWRICOppGuEsv1abKYiEoKCsadqsBQ/hDinM
	 LIZ2jKpiH5rzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mp8NAusj3xSu; Wed, 24 May 2023 15:09:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0638B4299E;
	Wed, 24 May 2023 15:09:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0638B4299E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCC8E1BF369
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 23:22:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F6BE42079
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 23:22:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F6BE42079
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e63iWDRLU8s1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 May 2023 23:22:29 +0000 (UTC)
X-Greylist: delayed 00:39:27 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F2FD41E8D
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F2FD41E8D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 23:22:28 +0000 (UTC)
Received: from pps.filterd (m0353722.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 34NMRkUk007808; Tue, 23 May 2023 22:42:33 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qs6a0r8k5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 May 2023 22:42:33 +0000
Received: from m0353722.ppops.net (m0353722.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 34NMZtCl027793;
 Tue, 23 May 2023 22:42:32 GMT
Received: from ppma01dal.us.ibm.com (83.d6.3fa9.ip4.static.sl-reverse.com
 [169.63.214.131])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qs6a0r8jq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 May 2023 22:42:32 +0000
Received: from pps.filterd (ppma01dal.us.ibm.com [127.0.0.1])
 by ppma01dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34NLABhg016521;
 Tue, 23 May 2023 22:42:30 GMT
Received: from smtprelay03.dal12v.mail.ibm.com ([9.208.130.98])
 by ppma01dal.us.ibm.com (PPS) with ESMTPS id 3qppdswdnb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 May 2023 22:42:30 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com
 [10.241.53.103])
 by smtprelay03.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 34NMgTr549611192
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 23 May 2023 22:42:29 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B92735805A;
 Tue, 23 May 2023 22:42:29 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CBD5458056;
 Tue, 23 May 2023 22:42:28 +0000 (GMT)
Received: from [9.211.103.243] (unknown [9.211.103.243])
 by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTPS;
 Tue, 23 May 2023 22:42:28 +0000 (GMT)
Message-ID: <4c6723df-5d40-2504-fcdc-dfdc2047f92c@linux.vnet.ibm.com>
Date: Tue, 23 May 2023 15:42:28 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.10.1
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-9-aleksander.lobakin@intel.com>
Content-Language: en-US
From: David Christensen <drc@linux.vnet.ibm.com>
In-Reply-To: <20230516161841.37138-9-aleksander.lobakin@intel.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: SevONVa19cfGb6wVMoCGcEghTdYgfyUF
X-Proofpoint-ORIG-GUID: JrrJtm8H54URjr6Drg0Je3S2Jk_G02FA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-23_14,2023-05-23_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1011
 mlxscore=0 lowpriorityscore=0 bulkscore=0 mlxlogscore=883 suspectscore=0
 spamscore=0 phishscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305230181
X-Mailman-Approved-At: Wed, 24 May 2023 15:09:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=DPxFy0kgkp15W/17/zrdeqdPMfusaYNP5aDhFAM4+Ck=;
 b=FPjsUBN9nNGZxtrvceZMhyx11qP5uJy8pzzwpeC9oLlBM9/LvQ7FlK7WFu0ZeqAom7lE
 5aUT5UdzxmhOuyWxqoHZR9Jd5MhGBe8W9T34DzHhY4ZoUKRdLh6KFE44KOA7Fb7A/Ixi
 22++KFIvzqWQwuxuTAoH6ROj3gZjOax4rWUsHOgYW7nWOkHfv/NHGVL07i28VUqEdVxF
 +uXknIPwUF69YDCYJvtc9vsbStzNljIZ8ZAun3vfhH4jlzECyzMBiGElBlHodp2P+QyG
 TwQDacojcvBNrKDC4WsmxiOOHIuOFlBO2/dMIfNXKWdZj3peLZ21t8Zr0Ay/nQGjqX0X uQ== 
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=FPjsUBN9
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
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Christoph Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/16/23 9:18 AM, Alexander Lobakin wrote:
> Now that the IAVF driver simply uses dev_alloc_page() + free_page() with
> no custom recycling logics and one whole page per frame, it can easily
> be switched to using Page Pool API instead.

Any plans to add page pool fragmentation support (i.e. 
PP_FLAG_PAGE_FRAG) in the future to better support architectures with 
larger page sizes such as 64KB on ppc64le?

Dave
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
