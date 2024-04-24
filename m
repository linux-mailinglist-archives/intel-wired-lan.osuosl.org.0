Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2438B0DF4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 17:19:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DF16416DF;
	Wed, 24 Apr 2024 15:19:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kscAf_nciJXQ; Wed, 24 Apr 2024 15:19:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD237416D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713971986;
	bh=faPLB+kw4kVxRvk/awmxuWyqP9LFnkCQP2eMceG1XuI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xHmuOYcXL8sTMYGshO5o887k3H3J4tB2Lm8gUaVOk7IcOhUUqTq8R74KFbW32/dIi
	 0WepfVAA0JfhK5RBMVMMvcZm9rVe1Hzvvv2IsxfBwEq/3qR6xLWAyiox70IYhuyhvO
	 K7j8MTwW/KijkmwKWUJscNRqG4NYYB+72kvIodb7/bVHKR+KkM/HpOICTFQCbdWfes
	 T0R3BXBKpb+8sUCcT5Hbo69lVDa5uKlKlR73yNbNxLl5VOtsXMxRlrihXVWaSEK+9N
	 DlECo8X+VAt+N/CvahKRClMWWrROd3ibjU/tTchdnc2pFN2zQNRl0BsHmguIVJQSsv
	 Zjl1ku+8sJaXw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD237416D3;
	Wed, 24 Apr 2024 15:19:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BADC1BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46B83415B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:54:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Ye71clZI9xK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:54:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.156.1;
 helo=mx0a-001b2d01.pphosted.com; envelope-from=hca@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 499834015A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 499834015A
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 499834015A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:54:25 +0000 (UTC)
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 43OEphXU021642; Wed, 24 Apr 2024 14:54:18 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xq1mjrcgs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 24 Apr 2024 14:54:17 +0000
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 43OEsGYx027087;
 Wed, 24 Apr 2024 14:54:16 GMT
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xq1mjrcgj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 24 Apr 2024 14:54:16 +0000
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 43OC0rH5015277; Wed, 24 Apr 2024 14:54:15 GMT
Received: from smtprelay01.fra02v.mail.ibm.com ([9.218.2.227])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xmshmc1tt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 24 Apr 2024 14:54:15 +0000
Received: from smtpav02.fra02v.mail.ibm.com (smtpav02.fra02v.mail.ibm.com
 [10.20.54.101])
 by smtprelay01.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 43OEs9Kw44761424
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Apr 2024 14:54:11 GMT
Received: from smtpav02.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4449D2004B;
 Wed, 24 Apr 2024 14:54:09 +0000 (GMT)
Received: from smtpav02.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 23A4B20040;
 Wed, 24 Apr 2024 14:54:07 +0000 (GMT)
Received: from osiris (unknown [9.171.4.217])
 by smtpav02.fra02v.mail.ibm.com (Postfix) with ESMTPS;
 Wed, 24 Apr 2024 14:54:07 +0000 (GMT)
Date: Wed, 24 Apr 2024 16:54:05 +0200
From: Heiko Carstens <hca@linux.ibm.com>
To: Bui Quang Minh <minhquangbui99@gmail.com>
Message-ID: <20240424145405.26193-C-hca@linux.ibm.com>
References: <20240424-fix-oob-read-v2-0-f1f1b53a10f4@gmail.com>
 <20240424-fix-oob-read-v2-5-f1f1b53a10f4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240424-fix-oob-read-v2-5-f1f1b53a10f4@gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: P3jauZ9wnPsNqb9Y8f9APW5dRRKdbn4d
X-Proofpoint-GUID: bdcVi_JhzGQ_L9LlgnK3IM-pAQHck6Ez
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-24_12,2024-04-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 mlxlogscore=863 suspectscore=0 phishscore=0 mlxscore=0 lowpriorityscore=0
 malwarescore=0 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1011
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404240056
X-Mailman-Approved-At: Wed, 24 Apr 2024 15:19:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=pp1; bh=faPLB+kw4kVxRvk/awmxuWyqP9LFnkCQP2eMceG1XuI=;
 b=YcDLjFHr2K+Ys/y15mRL/i5XlzBdFtq5rcBbzgelkmuX+/sL3KIqMraFZybJfrfhTwPF
 7u7AHXycbmDG4D34xnfCR2DgOJGnNXA6qXu/y49qQVifXoEmuLv+cB606ogd5otL2rJ9
 CTlExfmUkla6534BoaeqwMQQDsnlvT/bOAD7WgZx+KBlUmYtxke/Fcj80Tr0c2pYkQbG
 0n18GAE8iMvexUAP3WiRGGe+SFc37h3Z8yQYk/jURhsf8SEK9VznS3OvZ6/jfObjQcJL
 sLBr5o0nJ8SLB7BDMIKoDPPsbH33nCyutt1MZIgWr5TXXskwRS7DOVKmLMvhLe1x+8vY nA== 
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=YcDLjFHr
Subject: Re: [Intel-wired-lan] [PATCH v2 5/6] cio: ensure the copied buf is
 NUL terminated
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
Cc: Subbaraya Sundeep <sbhatta@marvell.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>, linux-scsi@vger.kernel.org,
 Saurav Kashyap <saurav.kashyap@cavium.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Linu Cherian <lcherian@marvell.com>, linux-s390@vger.kernel.org,
 Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>,
 intel-wired-lan@lists.osuosl.org,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sunil Goutham <sgoutham@marvell.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Geetha sowjanya <gakula@marvell.com>,
 Arun Easi <arun.easi@cavium.com>, Fabian Frederick <fabf@skynet.be>,
 Manish Rangankar <manish.rangankar@cavium.com>, Jens Axboe <axboe@kernel.dk>,
 Nilesh Javali <nilesh.javali@cavium.com>, GR-Linux-NIC-Dev@marvell.com,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Saurav Kashyap <skashyap@marvell.com>, Rasesh Mody <rmody@marvell.com>,
 netdev@vger.kernel.org, Anil Gurumurthy <anil.gurumurthy@qlogic.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>,
 GR-QLogic-Storage-Upstream@marvell.com, hariprasad <hkelam@marvell.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jerin Jacob <jerinj@marvell.com>,
 Sudarsana Kalluru <skalluru@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 24, 2024 at 09:44:22PM +0700, Bui Quang Minh wrote:
> Currently, we allocate a lbuf-sized kernel buffer and copy lbuf from
> userspace to that buffer. Later, we use scanf on this buffer but we don't
> ensure that the string is terminated inside the buffer, this can lead to
> OOB read when using scanf. Fix this issue by using memdup_user_nul instead.
> 
> Fixes: a4f17cc72671 ("s390/cio: add CRW inject functionality")
> Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
> ---
>  drivers/s390/cio/cio_inject.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Heiko Carstens <hca@linux.ibm.com>
