Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A9F8B0DF5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 17:19:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6607416DB;
	Wed, 24 Apr 2024 15:19:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AAiU8L1CHFFi; Wed, 24 Apr 2024 15:19:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22054416A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713971992;
	bh=LRXZigEswTP7y+kxZAU4wvy9qxPw5anZoKBCkQwQ0VQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oLLRMeW67QWPC3xfD5pYNgvC2YUEz6a/FGMHfB2PFK2JbLePrebYl8iDB7Ycf1Zgn
	 NA2/As1++aBF/7DYwf+WmAowYohRcwDHkeWgtAFnOG3ct+IdmxDs0mC17wNPwpiNpQ
	 1Nbrv9YGyLAtGj7ghbx2ISjtzjmM26bk8xi9AG4KwwWdM2pa4AcIGS87vH5shzp0Z+
	 vx+MvRKsKVDF1n+jofOak/1V9HsD/syQ49F/YcfW3gpTFshdPqdgupOMDYHFZeFxYt
	 uuDFjX5mcRaL8+KcNeXC4MlVyBA0mloqOI/AdWkrsWM7FzGxtJzmrZaDWkLwiqgPzR
	 GxhlQy6on2veA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22054416A9;
	Wed, 24 Apr 2024 15:19:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 122E61BF8B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 15:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F180E60A3C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 15:17:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kDv8Ef4CGXCt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 15:17:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.156.1;
 helo=mx0a-001b2d01.pphosted.com; envelope-from=agordeev@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 49A8B608D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49A8B608D2
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49A8B608D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 15:17:11 +0000 (UTC)
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 43OEvP0q032428; Wed, 24 Apr 2024 15:17:05 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xq49x01h2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 24 Apr 2024 15:17:04 +0000
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 43OFH3Ut032269;
 Wed, 24 Apr 2024 15:17:04 GMT
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xq49x01gs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 24 Apr 2024 15:17:03 +0000
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 43OCad22015430; Wed, 24 Apr 2024 15:17:02 GMT
Received: from smtprelay05.fra02v.mail.ibm.com ([9.218.2.225])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xmshmc5aa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 24 Apr 2024 15:17:02 +0000
Received: from smtpav04.fra02v.mail.ibm.com (smtpav04.fra02v.mail.ibm.com
 [10.20.54.103])
 by smtprelay05.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 43OFGuq732375212
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Apr 2024 15:16:58 GMT
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4CEC520040;
 Wed, 24 Apr 2024 15:16:56 +0000 (GMT)
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9F3D32004D;
 Wed, 24 Apr 2024 15:16:55 +0000 (GMT)
Received: from li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com (unknown
 [9.155.204.135])
 by smtpav04.fra02v.mail.ibm.com (Postfix) with ESMTPS;
 Wed, 24 Apr 2024 15:16:55 +0000 (GMT)
Date: Wed, 24 Apr 2024 17:16:54 +0200
From: Alexander Gordeev <agordeev@linux.ibm.com>
To: Bui Quang Minh <minhquangbui99@gmail.com>
Message-ID: <ZikiZsSTGUUM69GE@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
References: <20240424-fix-oob-read-v2-0-f1f1b53a10f4@gmail.com>
 <20240424-fix-oob-read-v2-5-f1f1b53a10f4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240424-fix-oob-read-v2-5-f1f1b53a10f4@gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: fZkGofveKPRbJZUl0Si2IEFY5soD-mFd
X-Proofpoint-ORIG-GUID: JvjdeUHiZLMhgcceAmf2eHuewusCBopA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-24_12,2024-04-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 adultscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 mlxscore=0 spamscore=0 suspectscore=0 mlxlogscore=892 phishscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404240059
X-Mailman-Approved-At: Wed, 24 Apr 2024 15:19:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=pp1; bh=LRXZigEswTP7y+kxZAU4wvy9qxPw5anZoKBCkQwQ0VQ=;
 b=jcO+Had0aSg52rZjlhEaia1uEq0IAOPidGvLK3ScMBO1iM2O9dpLxgdeiGZ1EU59bfil
 y5ZiP3JKZbUHYXoV5/EbsA9QHzFiHOxznQEQa1+yRMo1JjdMmsnAu7UsIHRnBvU8Vj+Q
 nzIaegcCM7US4b15+hGy2iFLTVx2jtQEJWW5HkPNLlGuU1K7q3qP8zkyrKIa1/bQxhGd
 vNSLIpahPzDfeQZTiEO9sRzTxhrMd3i8X59qGNBc7Sfjvm+55EK69kqDKtSIz5oaIm8x
 P03VgAi8NBw7tJ7TAyc3zNr9SQEXLYcFwyrpRS4cZtVir0/TVa1D0VE59tj1RjWXkGUU gg== 
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=jcO+Had0
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
 Linu Cherian <lcherian@marvell.com>, linux-s390@vger.kernel.org,
 Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>,
 intel-wired-lan@lists.osuosl.org,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sunil Goutham <sgoutham@marvell.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Geetha sowjanya <gakula@marvell.com>,
 Arun Easi <arun.easi@cavium.com>, Heiko Carstens <hca@linux.ibm.com>,
 Fabian Frederick <fabf@skynet.be>,
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

Applied, thanks!
