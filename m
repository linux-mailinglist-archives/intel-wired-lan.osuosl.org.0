Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFEB8BA431
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 May 2024 01:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D0A7832B3;
	Thu,  2 May 2024 23:46:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7kbTxHMebx5c; Thu,  2 May 2024 23:46:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FF90832BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714693611;
	bh=UEIrm1OQqoa/Xb4yzGk46pIL7NPBOAnzMTdOCV1h+YA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wk5LUrcKgx6QVsFJEGPzESwrzYv0Eb8OEOmSni68w4i6Sezi1/5Pd9gOsByIHb7h2
	 uhHlZci+FyNDvdy0ST2L4zBFK8JVwU9A6tAtV+KxMzndV0xj+RXtdOWqqPpK71OSOJ
	 WcyXMH/Qbub/SaL4zFHnxD2qidLS7AAzr17LHH6G0QMCEHuBV5Fe58hV3hTa0f3RR5
	 V3FIlCVPxynOsX67pg5gLqYb4KxbA11CcUA3xx0VPaaoWUHNRUgVQj555403KqdI7c
	 Hgx/z22P/PYPyabGO8AJ2P21TL1juJLXmezMT/Cnxi9UKVAzIcbgdLv5tRpsPcS7Hb
	 8w6DjvGE3uonA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FF90832BF;
	Thu,  2 May 2024 23:46:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2EA5D1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2024 22:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 268AF61259
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2024 22:11:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fKKkKhnKKLua for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 May 2024 22:11:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.158.5;
 helo=mx0b-001b2d01.pphosted.com; envelope-from=thinhtr@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4F0B160FB4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F0B160FB4
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F0B160FB4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2024 22:11:56 +0000 (UTC)
Received: from pps.filterd (m0353723.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 442M1xQj029766; Thu, 2 May 2024 22:11:44 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xvk8t80hg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 02 May 2024 22:11:43 +0000
Received: from m0353723.ppops.net (m0353723.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 442MBhRV011338;
 Thu, 2 May 2024 22:11:43 GMT
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xvk8t80h9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 02 May 2024 22:11:43 +0000
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 442J4ijK022229; Thu, 2 May 2024 22:11:38 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([172.16.1.74])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xsd6n294m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 02 May 2024 22:11:38 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com
 [10.39.53.229])
 by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 442MBadj26542808
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 2 May 2024 22:11:38 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 802525805F;
 Thu,  2 May 2024 22:11:36 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id F0EBB58067;
 Thu,  2 May 2024 22:11:35 +0000 (GMT)
Received: from [9.41.99.196] (unknown [9.41.99.196])
 by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Thu,  2 May 2024 22:11:35 +0000 (GMT)
Message-ID: <9c81943e-99bc-408a-bab4-478ab7886b0e@linux.ibm.com>
Date: Thu, 2 May 2024 17:11:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 kuba@kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20240423033459.375-1-thinhtr@linux.ibm.com>
 <fc923f03-e3c4-da59-4f43-c1d585bef687@intel.com>
From: Thinh Tran <thinhtr@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <fc923f03-e3c4-da59-4f43-c1d585bef687@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: jkAZrnpXe4LqYzuKJ0U8buiShMRlkeGV
X-Proofpoint-GUID: dO0rFwr8M1_xqUri8B_76-YLp_LzDoVj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-02_14,2024-05-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 adultscore=0 mlxscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 clxscore=1011 impostorscore=0 mlxlogscore=999 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2405020149
X-Mailman-Approved-At: Thu, 02 May 2024 23:46:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=UEIrm1OQqoa/Xb4yzGk46pIL7NPBOAnzMTdOCV1h+YA=;
 b=cPAR12PiwW+qZ1gC2ewU9V+SoVEWdl2rfSByWJz/GnF2I2duHeUdvGfzaiPTBI7aaPpg
 iCSlKEniQl2PZo0RaVL7XhVvzPirpYGOVvWm0cp60Ai4bJoXe/8JIJ9wUgM8tCpLfgGt
 cXJts6G8s6pZAQREDV8EFU+jXdxGgjt94031Dd1z+jlPniiE0pi+vpbfCuuZMIPwesfh
 sqiuAEJd6F0iLi3IioKV+DlaLkRfnVtIagzqIKfTcFOqSvO8s5U9p0slskoXoJvQPiOJ
 c/HwQrtBGwLxnaPCfBFhlz7+I2dbXLRx4/qQtmoIcbviS4T2cKcXinHNDs1CjYApkmNX UQ== 
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=cPAR12Pi
Subject: Re: [Intel-wired-lan] [PATCH] net/i40e: Fix repeated EEH reports in
 MSI domain
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

Thanks for reviewing

On 4/29/2024 3:31 PM, Tony Nguyen wrote:
> + Alex
> 
>
>>
> 
> You don't mark a target tree, I believe you're sending this as a bug 
> fix? If so, can you mark it with '[Patch iwl-net]' and provide a Fixes: 
> tag.
> 
> Thanks,
> Tony

I will resend the patch.
Thanks,
Thinh Tran
