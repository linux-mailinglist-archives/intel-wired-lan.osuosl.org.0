Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF788C489E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 23:05:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBA6F40889;
	Mon, 13 May 2024 21:05:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DKaaswxK0WdM; Mon, 13 May 2024 21:05:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9397D40882
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715634355;
	bh=V6g8oKn6rig+zs765hUUYo3FL3WRsS9mpUom0ai8PII=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8vS/oIqH5EGKpsK29q7NKFZAZ1NHefBc2L/6tAovNqcK+HuOaS9h22Rh7Lp49YfN6
	 io7fv9WoBBJOIQ3cQKp7ImtV1q5tj9XnzCFaU9sAXtQnsj61du4S+IlwtMUAJFNzYR
	 zCr6h1Ppf6WiMW+2SbY1rKyNTvoPVHvh8nYj1iRfwSX6HVnIXbDZe3oOUbTWL6/6Fw
	 NtKJvzjakZjYmIB02DEVEtSA8IgNTKfGPC+G8pNXa6NAUMwQeiE0JwXDgsA9iCr159
	 OaVVKzZp7nftSo2AyugM1eEMQZdk0Esu7qP1Lav6V8y1i8OiDyYXABMsq/ICb55sRc
	 ktcwAUFX7eo3w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9397D40882;
	Mon, 13 May 2024 21:05:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFB6C1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 May 2024 18:55:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E850F6080A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 May 2024 18:55:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2oIQtf6bpTfA for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 May 2024 18:55:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=martin.petersen@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 02534607FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02534607FF
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 02534607FF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 May 2024 18:55:19 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 44BIbdYX023817; Sat, 11 May 2024 18:55:03 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3y2c2cg2w6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 11 May 2024 18:55:02 +0000
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 44BGN5Dn022420; Sat, 11 May 2024 18:39:58 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3y1y44fn7c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 11 May 2024 18:39:58 +0000
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 44BIZYPU028255;
 Sat, 11 May 2024 18:39:57 GMT
Received: from ca-mkp2.ca.oracle.com.com
 (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com
 [100.100.251.135])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 3y1y44fn5r-4; Sat, 11 May 2024 18:39:57 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 Rasesh Mody <rmody@marvell.com>,
 Sudarsana Kalluru <skalluru@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Anil Gurumurthy <anil.gurumurthy@qlogic.com>,
 Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Fabian Frederick <fabf@skynet.be>, Saurav Kashyap <skashyap@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Nilesh Javali <nilesh.javali@cavium.com>, Arun Easi <arun.easi@cavium.com>,
 Manish Rangankar <manish.rangankar@cavium.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>, Sunil Goutham <sgoutham@marvell.com>,
 Linu Cherian <lcherian@marvell.com>,
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>,
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Bui Quang Minh <minhquangbui99@gmail.com>
Date: Sat, 11 May 2024 14:39:10 -0400
Message-ID: <171545260076.2119337.3238318559945813238.b4-ty@oracle.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240424-fix-oob-read-v2-0-f1f1b53a10f4@gmail.com>
References: <20240424-fix-oob-read-v2-0-f1f1b53a10f4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-11_06,2024-05-10_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=986 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2405010000
 definitions=main-2405110139
X-Proofpoint-ORIG-GUID: JSR1LgQlB64XVUSSquWoWZNhZ3hLuE8Y
X-Proofpoint-GUID: JSR1LgQlB64XVUSSquWoWZNhZ3hLuE8Y
X-Mailman-Approved-At: Mon, 13 May 2024 21:05:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=corp-2023-11-20;
 bh=V6g8oKn6rig+zs765hUUYo3FL3WRsS9mpUom0ai8PII=;
 b=L5kCz3c6MAFuvjwHXxSN80HLlCHhMi8kw2XYu3pCPFMu0dLU9umpVv5pz0ys/hwoKlgM
 ku074/oaX76Xw3MJCrvXzQsXHyZeX6pxAhFNtuajAwoFjs5FmZ+JM/T5J1ZCV4NcFdyQ
 qPF8uWPNgB1vSsOHt7/dJIJbOCe3g7xhyNrOpRWMTCRCQjgspt7cTQiaXgbGKpEpS3Ku
 h08iKB/n0S6pwiKQStV23Ss/bMJrLnJdQ/f4moTAgsAUd1Tb4Px/PocmW+hqZiqJL8xP
 GXG/rbzHgBPOFjz/ikxDR3Frn3h+XFTL0bm9HZQrThXfoKa3nrN57LSamjfpFzbVWrCQ gA== 
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2023-11-20 header.b=L5kCz3c6
Subject: Re: [Intel-wired-lan] [PATCH v2 0/6] Ensure the copied buf is NUL
 terminated
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, "Martin K . Petersen" <martin.petersen@oracle.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saurav Kashyap <saurav.kashyap@cavium.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 24 Apr 2024 21:44:17 +0700, Bui Quang Minh wrote:

> I found that some drivers contains an out-of-bound read pattern like this
> 
> 	kern_buf = memdup_user(user_buf, count);
> 	...
> 	sscanf(kern_buf, ...);
> 
> The sscanf can be replaced by some other string-related functions. This
> pattern can lead to out-of-bound read of kern_buf in string-related
> functions.
> 
> [...]

Applied to 6.10/scsi-queue, thanks!

[3/6] bfa: ensure the copied buf is NUL terminated
      https://git.kernel.org/mkp/scsi/c/13d0cecb4626
[4/6] qedf: ensure the copied buf is NUL terminated
      https://git.kernel.org/mkp/scsi/c/d0184a375ee7

-- 
Martin K. Petersen	Oracle Linux Engineering
