Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EAA8AEA95
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 17:17:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7057781F7D;
	Tue, 23 Apr 2024 15:17:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PXdNgjkJxoFy; Tue, 23 Apr 2024 15:17:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 867A281F81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713885430;
	bh=0vDYHtZfJ1aUyePbfpMoafpgYffvxy1KKavTMUyKAF4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R1JkxUHkIvXeYpCVfRBocxiiwj3HQWHzbE0nNFR3Il/JwhhbnBAsPvhoQt3SVVYYU
	 jeaE74pjfIeQdD07ri/m2JHZzwUnG8B4vg+ac+tNQp0UbFqrFtb/WUocA9OTbnx7Hv
	 uQB/HdQ/nosdjOjdBrb4N1pjdSXz0A82nHAQfa02DzUXjyjRUPd7YXYXsoAx30n2SP
	 vG2FBPNTncR4ZPFB4K5YurAH5CtOR+llApxsvQhVZCtkl5PAzPrbxN8kdsas4BkX4q
	 9yDdXdan5aHT2XGgmF04HpXFd5ga8iIy0jol8DKnPVcuklACyFmcoANs/uKJ/jFBCX
	 21GVLvqxzDx6w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 867A281F81;
	Tue, 23 Apr 2024 15:17:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8975C1BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 06:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8242060647
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 06:51:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vQT0kM9sIpyg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 06:51:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.156.1;
 helo=mx0a-001b2d01.pphosted.com; envelope-from=hca@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F36A36063A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F36A36063A
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F36A36063A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 06:51:10 +0000 (UTC)
Received: from pps.filterd (m0353726.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 43N6WiAK032224; Tue, 23 Apr 2024 06:51:03 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xp7t6g10p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Apr 2024 06:51:02 +0000
Received: from m0353726.ppops.net (m0353726.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 43N6p1NU002965;
 Tue, 23 Apr 2024 06:51:02 GMT
Received: from ppma22.wdc07v.mail.ibm.com
 (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xp7t6g10g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Apr 2024 06:51:01 +0000
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma22.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 43N6fD5W020920; Tue, 23 Apr 2024 06:51:00 GMT
Received: from smtprelay01.fra02v.mail.ibm.com ([9.218.2.227])
 by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xmrdyv8r3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Apr 2024 06:51:00 +0000
Received: from smtpav04.fra02v.mail.ibm.com (smtpav04.fra02v.mail.ibm.com
 [10.20.54.103])
 by smtprelay01.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 43N6osOE41681280
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 23 Apr 2024 06:50:56 GMT
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A1EEE2004D;
 Tue, 23 Apr 2024 06:50:54 +0000 (GMT)
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2956D20040;
 Tue, 23 Apr 2024 06:50:54 +0000 (GMT)
Received: from osiris (unknown [9.152.212.60])
 by smtpav04.fra02v.mail.ibm.com (Postfix) with ESMTPS;
 Tue, 23 Apr 2024 06:50:54 +0000 (GMT)
Date: Tue, 23 Apr 2024 08:50:52 +0200
From: Heiko Carstens <hca@linux.ibm.com>
To: Bui Quang Minh <minhquangbui99@gmail.com>
Message-ID: <20240423065052.10211-C-hca@linux.ibm.com>
References: <20240422-fix-oob-read-v1-0-e02854c30174@gmail.com>
 <20240422-fix-oob-read-v1-5-e02854c30174@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240422-fix-oob-read-v1-5-e02854c30174@gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: JfbWZJYjgQ-6sEoUNR3sO4YsC4Gb-N7m
X-Proofpoint-ORIG-GUID: dN-FvMKmlspL8yk4i7YrijWq2YdDYnU8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-23_04,2024-04-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 suspectscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=965 bulkscore=0
 impostorscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2404010000 definitions=main-2404230019
X-Mailman-Approved-At: Tue, 23 Apr 2024 15:17:07 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=pp1; bh=0vDYHtZfJ1aUyePbfpMoafpgYffvxy1KKavTMUyKAF4=;
 b=p1KCIPLA0+3M/jOTJH91Ettn+kfkxFl9NTIwFZkm/W9bK1jNyvqDyW7u7eyRNiT2sHct
 ykLF3vRjDdn61hsC1nO5dBh4XmTDd0Oa1toeaQZ/0x3My4VFJ5oPg2D9yS84c65Huu+c
 dnjYWyrHG2dj8tYNBLIYnoDpnStf3ZwBWi9WL68PmylT+N2qQPo9uarstANzXbl82Cce
 L26wYggPXUsxa/yyjkJOBDKuK6xXsHe6p6a5p3V4xzY1AXnI89/UmmdSGhPn+WyIJ5MR
 GLM9dQZXRPFnxN6uA5VTFDa6X9LMRHEjDTQpS5c7GQnr9lCg2do4q/diWsEjB4qvBYoB PQ== 
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=ibm.com header.i=@ibm.com header.a=rsa-sha256
 header.s=pp1 header.b=p1KCIPLA
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

On Mon, Apr 22, 2024 at 11:41:40PM +0700, Bui Quang Minh wrote:
> Currently, we allocate a lbuf-sized kernel buffer and copy lbuf from
> userspace to that buffer. Later, we use scanf on this buffer but we don't
> ensure that the string is terminated inside the buffer, this can lead to
> OOB read when using scanf. Fix this issue by allocating 1 more byte to at
> the end of buffer and write NULL terminator to the end of buffer after
> userspace copying.
> 
> Fixes: a4f17cc72671 ("s390/cio: add CRW inject functionality")
> Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
> ---
>  drivers/s390/cio/cio_inject.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/s390/cio/cio_inject.c b/drivers/s390/cio/cio_inject.c
> index 8613fa937237..9b69fbf49f60 100644
> --- a/drivers/s390/cio/cio_inject.c
> +++ b/drivers/s390/cio/cio_inject.c
> @@ -95,10 +95,11 @@ static ssize_t crw_inject_write(struct file *file, const char __user *buf,
>  		return -EINVAL;
>  	}
>  
> -	buffer = vmemdup_user(buf, lbuf);
> +	buffer = vmemdup_user(buf, lbuf + 1);
>  	if (IS_ERR(buffer))
>  		return -ENOMEM;
>  
> +	buffer[lbuf] = '\0';

This would read one byte too much from user space, and could potentially
fault.

Why isn't this simply memdup_user_nul() like all others, which would do the
right thing?
