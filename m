Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82E78C5BD7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 21:52:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5AC3B40AEF;
	Tue, 14 May 2024 19:52:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MCEWPzcr2sRM; Tue, 14 May 2024 19:52:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95B2F417C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715716355;
	bh=/4qCNJt7pLH5LsohuFlyeWrk7/MVDZVLIok3qxgN+gQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P0nNxnMwcOIutegDIModwzJBWZKDpZTwSMbqtAQxbBp837Vs9xmkumaZp7t7bYUFO
	 BakgXbTXkFizmLYyp0rZB/djbK2w1f0ZkAZVMQaQM9qBBqINz931xy053Rhd16Kk1V
	 5Jg6Ru7URSVOSatnbZ804mdPYbjkq2rRqEJshaK7L1XKxyLlrOY8tHaMJ7N8T3z97N
	 rKHMlRzGwBc80SEIlgXS1sLeozR36ScqhOB8yeVosA96lyoaZNEWAnGvEhK1+VvxED
	 8Y5J/GU2mtrO32gyiolS/wNJ1YDzs8032BcsCCBwF1gH5E3WZ7lwXgNwCvN3rCsUIR
	 8Fm3oUbg2rGaA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95B2F417C6;
	Tue, 14 May 2024 19:52:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 688851BF277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 19:52:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 525BE60768
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 19:52:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vu00ItnyAxfp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 19:52:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.156.1;
 helo=mx0a-001b2d01.pphosted.com; envelope-from=thinhtr@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6BFF260753
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BFF260753
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BFF260753
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 19:52:32 +0000 (UTC)
Received: from pps.filterd (m0353727.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 44EJ2UZ4009999; Tue, 14 May 2024 19:52:27 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y4c2rgc9g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 May 2024 19:52:27 +0000
Received: from m0353727.ppops.net (m0353727.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 44EJqQL4029272;
 Tue, 14 May 2024 19:52:26 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y4c2rgc8x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 May 2024 19:52:26 +0000
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 44EIWcva002291; Tue, 14 May 2024 19:52:03 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([172.16.1.74])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3y2m0p7ac9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 May 2024 19:52:03 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com
 [10.241.53.100])
 by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 44EJq0D620120160
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 May 2024 19:52:03 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DAF9058057;
 Tue, 14 May 2024 19:52:00 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8442958058;
 Tue, 14 May 2024 19:52:00 +0000 (GMT)
Received: from [9.41.99.196] (unknown [9.41.99.196])
 by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 14 May 2024 19:52:00 +0000 (GMT)
Message-ID: <efd7ca37-df1f-4d71-a2d1-fbdb8f5b8458@linux.ibm.com>
Date: Tue, 14 May 2024 14:52:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240513175549.609-1-thinhtr@linux.ibm.com>
 <20240514095505.GZ2787@kernel.org>
From: Thinh Tran <thinhtr@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <20240514095505.GZ2787@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: eQ6ZQuhnKCLk2uIAxId74gVnfFvrSjoT
X-Proofpoint-ORIG-GUID: wuKImK4b9lmRP4Y6gwEWLXJVye9E2dje
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-14_12,2024-05-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0
 lowpriorityscore=0 adultscore=0 mlxlogscore=857 clxscore=1011 phishscore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 spamscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2405140142
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=/4qCNJt7pLH5LsohuFlyeWrk7/MVDZVLIok3qxgN+gQ=;
 b=TPFhOO2XMXxQT4k9z8tFRLU3i1HWuhHjriBLhvg4RL9cP9f0ZjwpLsUuMINkd/AeqaCn
 72xinCPUhd/mps6VvS9jY1ZZSsqRaEVqbq5oxuPUG63gewJDVitylWd6P+Usufjm2X3F
 xSrRRdZMpJNe0qH65GfSFzPBZiKsJt1qo2iBgSWQDJaDFzg7gk25W01CyqBv/pMHgmOL
 7DwEP+VlSvYA5I9xXjkVonhEPxQ07KxAaaz+DhXy+nPT+EkbXpq5agTqvNw1iJ6emoId
 IMuCb2LaJZjDDAEPJ+eJvTAg/Rhjtgrzk0pbUFBJGLW8UFNHK/TMzv11+SKtTF+VBvVY Qw== 
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=TPFhOO2X
Subject: Re: [Intel-wired-lan] [PATCH iwl-net V2,
 0/2] Fix repeated EEH reports in MSI domain
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
Cc: netdev@vger.kernel.org, rob.thomas@ibm.com, aleksandr.loktionov@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Thanks for reviewing.

On 5/14/2024 4:55 AM, Simon Horman wrote:
> On Mon, May 13, 2024 at 12:55:47PM -0500, Thinh Tran wrote:
>> The patch fixes an issue where repeated EEH reports with a single error
>> on the bus of Intel X710 4-port 10G Base-T adapter in the MSI domain
>> causes the device to be permanently disabled.  It fully resets and
>> restarts the device when handling the PCI EEH error.
>>
>> Two new functions, i40e_io_suspend() and i40e_io_resume(), have been
>> introduced.  These functions were factored out from the existing
>> i40e_suspend() and i40e_resume() respectively.  This factoring was
>> done due to concerns about the logic of the I40E_SUSPENSED state, which
>> caused the device not able to recover.  The functions are now used in the
>> EEH handling for device suspend/resume callbacks.
>>
>> - In the PCI error detected callback, replaced i40e_prep_for_reset()
>>    with i40e_io_suspend(). The change is to fully suspend all I/O
>>    operations
>> - In the PCI error slot reset callback, replaced pci_enable_device_mem()
>>    with pci_enable_device(). This change enables both I/O and memory of
>>    the device.
>> - In the PCI error resume callback, replaced i40e_handle_reset_warning()
>>    with i40e_io_resume(). This change allows the system to resume I/O
>>    operations
>>
>> v2: fixed typos and split into two commits
> 
> Hi,
> 
> These patches look good to me, but I think it would be worth adding parts
> of the text above to the commit messages of each patch. This will make the
> information easier to find in git logs in future.
> 

I'll move the text to patches' commit messages.
Thanks
Thinh Tran
