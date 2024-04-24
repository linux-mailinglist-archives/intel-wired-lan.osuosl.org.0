Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602C98B0DF3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 17:19:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FB39416D9;
	Wed, 24 Apr 2024 15:19:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cSEB3j0C8tpz; Wed, 24 Apr 2024 15:19:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8266416D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713971985;
	bh=XpH7mlduGY+teRfPIZDry1r3MxwXhD+lR2HCJ3M7h20=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9sck3apo8ChdbCvuyeIUkjJr7aT8GNwII/mjVH4i8LHGHI3QEJ9bzG8Ni+9fTi7+H
	 +IvtdAIA1gpb14+wQRmGakpSomB/iHXUfyoOgQFqGWdEcG6ZTb/ZhjoWbI1WrI0lVN
	 Q/5Mm+b5lGpni2bvsLwIUrm5O4+aXm+EA21rgQNWuw2+mEkh/ZAP05NtzYkGYy/g6l
	 9yaq4iC+EoLvrzRSf3CGgmwaVV4aKfdQxpcj7iuhfRlX+zPerYTcng9gtBb+FFxDMO
	 ydZIwWVqrhr+bw+cXzk9MaTo2861zntEaMg+6WQzxtVYRudC8yJoja7zVuQROP70uO
	 ktBcfjiO8L18g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8266416D2;
	Wed, 24 Apr 2024 15:19:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC6EB1BF38B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 11:56:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A443E406BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 11:56:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ysF65KLMLjaD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 11:56:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.156.1;
 helo=mx0a-001b2d01.pphosted.com; envelope-from=hca@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D547B406A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D547B406A2
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D547B406A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 11:56:22 +0000 (UTC)
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 43OBqf4c020542; Wed, 24 Apr 2024 11:56:08 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xq0sag3k9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 24 Apr 2024 11:56:08 +0000
Received: from m0360083.ppops.net (m0360083.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 43OBu7rI027504;
 Wed, 24 Apr 2024 11:56:07 GMT
Received: from ppma13.dal12v.mail.ibm.com
 (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xq0sag3k4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 24 Apr 2024 11:56:07 +0000
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
 by ppma13.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 43O9AlZS005355; Wed, 24 Apr 2024 11:56:06 GMT
Received: from smtprelay01.fra02v.mail.ibm.com ([9.218.2.227])
 by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 3xmx3cj5ym-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 24 Apr 2024 11:56:06 +0000
Received: from smtpav07.fra02v.mail.ibm.com (smtpav07.fra02v.mail.ibm.com
 [10.20.54.106])
 by smtprelay01.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 43OBu1o138732126
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Apr 2024 11:56:03 GMT
Received: from smtpav07.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 078132004F;
 Wed, 24 Apr 2024 11:56:01 +0000 (GMT)
Received: from smtpav07.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 492CE2004D;
 Wed, 24 Apr 2024 11:55:59 +0000 (GMT)
Received: from osiris (unknown [9.171.4.217])
 by smtpav07.fra02v.mail.ibm.com (Postfix) with ESMTPS;
 Wed, 24 Apr 2024 11:55:59 +0000 (GMT)
Date: Wed, 24 Apr 2024 13:55:57 +0200
From: Heiko Carstens <hca@linux.ibm.com>
To: Bui Quang Minh <minhquangbui99@gmail.com>
Message-ID: <20240424115557.26193-A-hca@linux.ibm.com>
References: <20240422-fix-oob-read-v1-0-e02854c30174@gmail.com>
 <20240422-fix-oob-read-v1-5-e02854c30174@gmail.com>
 <20240423065052.10211-C-hca@linux.ibm.com>
 <e4f5cbd0-c803-4c3c-9703-f52e56864106@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e4f5cbd0-c803-4c3c-9703-f52e56864106@gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: uhfqRBb54eWKPef2hDdJnIwSrSgU2j72
X-Proofpoint-ORIG-GUID: gLWakaQraUUUlMZLADf4xlA10NLu8ZwJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-24_08,2024-04-23_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=767
 lowpriorityscore=0 malwarescore=0 mlxscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404240046
X-Mailman-Approved-At: Wed, 24 Apr 2024 15:19:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=pp1; bh=XpH7mlduGY+teRfPIZDry1r3MxwXhD+lR2HCJ3M7h20=;
 b=Id80e8du9KRHgkzMQaMuQ9JzazbKiuyAGb974iHcfri4PgE4w2/QmgBfdkh/FLLn4LEq
 slJgP6wLd6NmCKlAWqINqRJ7aCEz+kr/wb8DiAmKvSDbm8Si8MDPkmIIHIdN5FlUK5CA
 Kndcr3Xd9hVkD6HFYLYiZZYwRlwXgnIeFrSHXdtKTLyH0fGGU0JfHZlVZkdyh2qzw8Jh
 yPDnqJHqHMrpMwnbAORuuLmHCGDnYYMl8TFBda3wNUm7Xd8kCwrfL+u52ZI/lMHblLRX
 7LVpJyYvnSrdqPhzC2gnGDG3oZ5gxAnGHcWrRhDGv1wU3TXdIbmQDbjusoaqGgNMTUHX 6A== 
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=Id80e8du
Subject: Re: [Intel-wired-lan] [PATCH 5/5] drivers/s390/cio: ensure the
 copied buf is NULL terminated
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
Cc: Javed Hasan <jhasan@marvell.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>, linux-scsi@vger.kernel.org,
 Saurav Kashyap <saurav.kashyap@cavium.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, linux-s390@vger.kernel.org,
 Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>,
 intel-wired-lan@lists.osuosl.org,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Arun Easi <arun.easi@cavium.com>,
 Fabian Frederick <fabf@skynet.be>, Krishna Gudipati <kgudipat@brocade.com>,
 Manish Rangankar <manish.rangankar@cavium.com>, Jens Axboe <axboe@kernel.dk>,
 Nilesh Javali <nilesh.javali@cavium.com>, GR-Linux-NIC-Dev@marvell.com,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Saurav Kashyap <skashyap@marvell.com>, Rasesh Mody <rmody@marvell.com>,
 netdev@vger.kernel.org, Anil Gurumurthy <anil.gurumurthy@qlogic.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>,
 GR-QLogic-Storage-Upstream@marvell.com, Sven Schnelle <svens@linux.ibm.com>,
 Sudarsana Kalluru <skalluru@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 23, 2024 at 09:46:35PM +0700, Bui Quang Minh wrote:
> > > -	buffer = vmemdup_user(buf, lbuf);
> > > +	buffer = vmemdup_user(buf, lbuf + 1);
> > >   	if (IS_ERR(buffer))
> > >   		return -ENOMEM;
> > > +	buffer[lbuf] = '\0';
> > 
> > This would read one byte too much from user space, and could potentially
> > fault.
> > 
> > Why isn't this simply memdup_user_nul() like all others, which would do the
> > right thing?
...
> For this case, as the original code uses vmemdup_user, which internally uses
> kvmalloc not kmalloc, so I try to keep the original behavior. And
> vmemdup_user does not have the counterpart vmemdup_user_nul. I can
> kvmalloc(lbuf + 1), then copy_to_user(lbuf) and set buffer[lbuf] = '\0' or
> do you think I should create vmemdup_user_nul?

There is no need for vmalloc() instead of kmalloc() for this particular
case. The input string is supposed to be rather short (see the sscanf()
call). So converting to memdup_user_nul() is sufficient and solves the
potential problem.
