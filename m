Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E69B18BD6CA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 23:22:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8430260A79;
	Mon,  6 May 2024 21:22:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hW9XgYYipGqu; Mon,  6 May 2024 21:22:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA7B160A39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715030534;
	bh=KacUEaAphUgoxiPBCBuIolxkWOX4TQhv8gR3A0KZgug=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Hlq5tZ/ZOFQb0akb6gzrJW4NDgH5CklgufZXtX7Y9HIdjL3mWVfVCbcljRrCWnuX
	 oICkvTY4U/ObqtplPhF7ir9A5m3jHhIZ2xPftp5I2HOPe3OVVowYB5z7coJX0nAEbZ
	 G2xzsrsbbGSSqjBkUpXBNHXxNYt7nd3Q+6cIDUXcezjBePBs41VJKUn6vdhWGJBaq8
	 YlIg9dFxE4PitVjXOECmRiTeV3Xqt30MQnIkEyHgawkOh9LghH8QzC4h79Fx0O4VPf
	 6+NkKjKZdtThS6aAX7HW02DCM4a2R7PKOraSF1uanhGD0tFwB+/wTiH4ayWufgbrxE
	 b5BEvwmno6lNQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA7B160A39;
	Mon,  6 May 2024 21:22:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E71401BF46A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 21:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D24D84033F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 21:22:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y4Yf1e9Ysk0F for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 21:22:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.158.5;
 helo=mx0b-001b2d01.pphosted.com; envelope-from=thinhtr@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E29EA40217
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E29EA40217
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E29EA40217
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 21:22:10 +0000 (UTC)
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 446KfGIG028094; Mon, 6 May 2024 21:22:05 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xy6f3r2t2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 May 2024 21:22:04 +0000
Received: from m0353725.ppops.net (m0353725.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 446LM4L6022471;
 Mon, 6 May 2024 21:22:04 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xy6f3r2sy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 May 2024 21:22:04 +0000
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 446IeNJX010569; Mon, 6 May 2024 21:22:03 GMT
Received: from smtprelay04.wdc07v.mail.ibm.com ([172.16.1.71])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xx0bp2a8k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 May 2024 21:22:03 +0000
Received: from smtpav01.wdc07v.mail.ibm.com (smtpav01.wdc07v.mail.ibm.com
 [10.39.53.228])
 by smtprelay04.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 446LM1rN33358424
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 6 May 2024 21:22:03 GMT
Received: from smtpav01.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 01FE25805B;
 Mon,  6 May 2024 21:22:01 +0000 (GMT)
Received: from smtpav01.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 579E458059;
 Mon,  6 May 2024 21:22:00 +0000 (GMT)
Received: from [9.41.99.196] (unknown [9.41.99.196])
 by smtpav01.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Mon,  6 May 2024 21:22:00 +0000 (GMT)
Message-ID: <adba0c7b-bef4-4fff-9ff2-b56f8b122ab8@linux.ibm.com>
Date: Mon, 6 May 2024 16:22:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com
References: <20240503152509.372-1-thinhtr@linux.ibm.com>
 <c47dc55f-9ef7-4a18-8419-fca4afb605b0@intel.com>
From: Thinh Tran <thinhtr@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <c47dc55f-9ef7-4a18-8419-fca4afb605b0@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: dIbbk6KdgsRqH-WRsiJQAHlyblJ9S74a
X-Proofpoint-GUID: r6YXv515ycE6RDm553GjivxYxPk1cBxM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-06_15,2024-05-06_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1011 impostorscore=0 spamscore=0
 mlxscore=0 mlxlogscore=897 priorityscore=1501 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2404010000
 definitions=main-2405060154
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=KacUEaAphUgoxiPBCBuIolxkWOX4TQhv8gR3A0KZgug=;
 b=Biqv8Z78ImX81QBB03o8YEc4iMpUR6pHGCi8TL7m3kKXOEbuVSWheTuD8ue/WB8npguB
 1w3Y0UXB+aKiQuOoh8Gxjb815g9OpPi4ABjGOcXpunvzcUVayK2QOxbibzfy82yOP7FM
 gmkCtUgwGJI7Fa7jyJyw2aNs/NeGAKAfKGg/WOS8Eh380uWDL3HtasjBSYYCw5FiN6ID
 sIHjR64/X14W7LJU38iVct5614Dvx4E/80ayjWcTVzk13dumQvnccMb3N1BdJesftY84
 1wjjZG5gKM80pqCONEzGdtgTKHYZvRl/S9sAzvcRZudC+Pn0CuigHyBvaSYcwoNZkObA vg== 
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=Biqv8Z78
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix repeated EEH
 reports in MSI domain
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
Cc: edumazet@google.com, Robert Thomas <rob.thomas@ibm.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 5/6/2024 4:35 AM, Przemek Kitszel wrote:


> In general do not add a blank line after Fixes tag.
> Someone could complain that i40e driver had a bug prior to the cited
> core commit, but for more practical purposes I find it good as is.
> When you are a sender of the patch, it's good to place your Signed-off
> as a last tag.

> 
> I appreciate your effort to minimize changed lines to have a fix better
> visible, however we avoid forward declarations in .c files.
> I would split this into two commits - the first to just factor out/move
> functions w/o functional changes, then second one with a logic fix.
> 

Thanks for the review.
I'll correct the typos and resubmit with two separate commits .

Thinh Tran
