Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B90DA8B3A77
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 16:57:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FFA441F68;
	Fri, 26 Apr 2024 14:57:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id txts9gaoUSdb; Fri, 26 Apr 2024 14:57:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAECA41F77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714143449;
	bh=Aaok4akx8+JwelwN/ppsY7WbWfpSN8p1AaPa1nlurvo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aEHhjVutJ+qPTgAdBGCf5itk3X2pU02QMS1yH5Rgm6I13vvUPKkmkZ9p94IuSkGZJ
	 NPCE3JJRD/cl05lBEBGCFvVAP4hrVMfN7aBngyaVRFYKUxIwgJXSH0ky793ARoOYs2
	 U6BwMo/36AaV9l/Ucydcw/2AfBMTN78awUPS1QV/n4PZpdPXhkW8b34dJIxSgyNcFe
	 /y9mNvHFJjz9tslzC5G+wmGn1JY1KvV0WAbTGh0sono5sYd9jY977ZNMrHcO2KIlh7
	 NKiFg2CDwQRs8UjaV6+pdTiDCJ+6ledVf9rsNbmCjmvIlveCbOV08VUThLM59Rmf+t
	 ErGC8PQ7H2+hw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAECA41F77;
	Fri, 26 Apr 2024 14:57:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C4E21BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 10:16:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 602D241F0F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 10:16:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AdAJ7ZPUn4v9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 10:16:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.158.5;
 helo=mx0b-001b2d01.pphosted.com; envelope-from=agordeev@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C9D3441EF0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9D3441EF0
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C9D3441EF0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 10:15:59 +0000 (UTC)
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 43QA3CRq012436; Fri, 26 Apr 2024 10:15:48 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xra62g0uq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 26 Apr 2024 10:15:48 +0000
Received: from m0360072.ppops.net (m0360072.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 43QAFllU030841;
 Fri, 26 Apr 2024 10:15:47 GMT
Received: from ppma22.wdc07v.mail.ibm.com
 (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xra62g0uj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 26 Apr 2024 10:15:47 +0000
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma22.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 43Q8N5Sn021021; Fri, 26 Apr 2024 10:10:46 GMT
Received: from smtprelay06.fra02v.mail.ibm.com ([9.218.2.230])
 by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xmre0f8u9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 26 Apr 2024 10:10:46 +0000
Received: from smtpav05.fra02v.mail.ibm.com (smtpav05.fra02v.mail.ibm.com
 [10.20.54.104])
 by smtprelay06.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 43QAAeZn30540508
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 26 Apr 2024 10:10:42 GMT
Received: from smtpav05.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8446420063;
 Fri, 26 Apr 2024 10:10:40 +0000 (GMT)
Received: from smtpav05.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3285C2004D;
 Fri, 26 Apr 2024 10:10:37 +0000 (GMT)
Received: from li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com (unknown
 [9.171.4.163]) by smtpav05.fra02v.mail.ibm.com (Postfix) with ESMTPS;
 Fri, 26 Apr 2024 10:10:37 +0000 (GMT)
Date: Fri, 26 Apr 2024 12:10:35 +0200
From: Alexander Gordeev <agordeev@linux.ibm.com>
To: Bui Quang Minh <minhquangbui99@gmail.com>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <Zit9myOJp0SYFL1F@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
References: <20240424-fix-oob-read-v2-0-f1f1b53a10f4@gmail.com>
 <20240424-fix-oob-read-v2-5-f1f1b53a10f4@gmail.com>
 <ZikiZsSTGUUM69GE@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZikiZsSTGUUM69GE@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: nwzmHa-XFUQKTaw4oYDH1K-dtAII8FVL
X-Proofpoint-GUID: fy_d-znjR1XF0iGIbw_36HPeZjIuI1Lh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-26_09,2024-04-26_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 adultscore=0 mlxscore=0 spamscore=0 phishscore=0 malwarescore=0
 mlxlogscore=721 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2404010000 definitions=main-2404260067
X-Mailman-Approved-At: Fri, 26 Apr 2024 14:57:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=pp1; bh=Aaok4akx8+JwelwN/ppsY7WbWfpSN8p1AaPa1nlurvo=;
 b=msW2IDHklridPA49V4Yn6HHDnEqXh+aKAz0bWIaNe0idSkv7PvIbkpYeYc9esxhPabzW
 4X4CMusBRpMEzG4/LmnYXrL8IcwCVKFzFskC5zzdH2qnizCHK2kPsASdowEkMCp76sba
 BPKCL33+JNzpY4IS+CeFNJIpUjIsTAqpHs0bdkzjH+Lu9h7Gyv7Ldlr26w8/ipvnUjha
 VbM2+zZdSp6jDJZiWyk0gzAIth9gkvj65KKHMrf/h6nXkToaBxgJhQtK/N/8afpfZbY1
 N39Pacl5FM+QS2nAxapGZLI981J2wF2FwIZVAOfPxb41EJjC5iqsoWHhwM2T6AGDOpS/ vA== 
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=ibm.com header.i=@ibm.com header.a=rsa-sha256
 header.s=pp1 header.b=msW2IDHk
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

On Wed, Apr 24, 2024 at 05:16:56PM +0200, Alexander Gordeev wrote:
> Applied, thanks!

Hi Jakub,

I just want to make sure you do not have plans to pull this patch
via the net tree, right? (I schedulled it for the s390 tree already).

Thanks!
