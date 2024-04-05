Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7938899BB6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 13:18:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0278040B45;
	Fri,  5 Apr 2024 11:18:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wd6VvCAPFsCs; Fri,  5 Apr 2024 11:18:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C69C740B18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712315928;
	bh=cHucxGpcDq5gHMAeVAbAeGgnEwEQpWc2GRkTuDwX2MA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NVDi6TfCxnkjWlfvfKFcwEGMeLdc6wup2e0rPuvnY+tGH2rk9Dix3QUp0dsPfACMO
	 87FaZuXnRiqCSsVk7cb/ES3+l1yZd/W8nerOlAfRcNZ+3meiQYOHcnUTc8PeZxoKK1
	 vVEaLJUkS547+v2ovHhhMiOWiznYTfLsnlJZvoCUcbRS9sTadMLRMzc5AxEIjTbzre
	 RmmhUjPY++CkDQXxmB2zdgiHrFqBcXLO4bumHBROg3oGixNUkaFUZh76fmeVUbLybw
	 5HJXpCRu39qhHoV+Yu/f21lwf6p1Xj/8PMR9Gfy41cqkzKzyECxsJzO1yfr0X/N/tT
	 c+1seyqP5zL4Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C69C740B18;
	Fri,  5 Apr 2024 11:18:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34BCD1BF333
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 11:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F9C680C32
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 11:18:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4m0Lk04j_1Zx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 11:18:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.158.5;
 helo=mx0b-001b2d01.pphosted.com; envelope-from=schnelle@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1700280C0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1700280C0B
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1700280C0B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 11:18:44 +0000 (UTC)
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 435BI1xN016084; Fri, 5 Apr 2024 11:18:40 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xag9yg01t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Apr 2024 11:18:39 +0000
Received: from m0356516.ppops.net (m0356516.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 435BIdbU016470;
 Fri, 5 Apr 2024 11:18:39 GMT
Received: from ppma22.wdc07v.mail.ibm.com
 (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xag9yg01p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Apr 2024 11:18:39 +0000
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma22.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 4359wUl2022293; Fri, 5 Apr 2024 11:18:38 GMT
Received: from smtprelay07.fra02v.mail.ibm.com ([9.218.2.229])
 by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3x9eq0j332-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Apr 2024 11:18:38 +0000
Received: from smtpav01.fra02v.mail.ibm.com (smtpav01.fra02v.mail.ibm.com
 [10.20.54.100])
 by smtprelay07.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 435BIW7T51380592
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 5 Apr 2024 11:18:34 GMT
Received: from smtpav01.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4D41C20040;
 Fri,  5 Apr 2024 11:18:32 +0000 (GMT)
Received: from smtpav01.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EE80D20043;
 Fri,  5 Apr 2024 11:18:31 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by smtpav01.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Fri,  5 Apr 2024 11:18:31 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>
Date: Fri,  5 Apr 2024 13:18:30 +0200
Message-Id: <20240405111831.3881080-1-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.40.1
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: U-EXTpSWl69qGr55-QgSSaHTocWLqoFZ
X-Proofpoint-ORIG-GUID: XfocbBsB7bs3G4uNIVWawrONzM5V2USL
Content-Transfer-Encoding: 8bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-05_10,2024-04-04_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0
 phishscore=0 mlxlogscore=999 mlxscore=0 bulkscore=0 spamscore=0
 impostorscore=0 adultscore=0 clxscore=1011 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404050081
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=from : to : cc : subject
 : date : message-id : content-transfer-encoding : mime-version; s=pp1;
 bh=cHucxGpcDq5gHMAeVAbAeGgnEwEQpWc2GRkTuDwX2MA=;
 b=Dh7qfcB/r9vlpYsgsKtoZxn56tWesqCOITExSN68uNmvnTDXIMuvV/z1WJPY9izDHIAt
 CrE4KLoS29v8g64aiwhRfjc06TkP7AdepTkQwTT2FU9nX4GJpeh8XTNSLon+AimCxyuA
 RsYomx9ptwlzg/jDTODT5ORg9fwGKLEjQSr91+YednMA3atRXEdvb8pjpnZcgYcZykek
 NXe0hWqsuomSUnn850txwlnWTD4QWnSSLWDYYpfNATYjbst/vOIfULzsi078fVrgWrcP
 VQ2QM2kYEi2FaLJsTWYNpGLHTlFMzaa7hXEbBuIDKID2QTO1sArT/66evEIVVR26TIX0 ug== 
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=Dh7qfcB/
Subject: [Intel-wired-lan] [PATCH net-next 0/1] XYZ: Handle HAS_IOPORT
 dependencies
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
Cc: Arnd Bergmann <arnd@kernel.org>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Niklas Schnelle <schnelle@linux.ibm.com>, netdev@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>, linux-kernel@vger.kernel.org,
 linux-can@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>,
 linux-hams@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi networking maintainers,

This is a follow up in my ongoing effort of making inb()/outb() and
similar I/O port accessors compile-time optional. Previously I sent this
as a treewide series titled "treewide: Remove I/O port accessors for
HAS_IOPORT=n" with the latest being its 5th version[0]. With a significant
subset of patches merged I've changed over to per-subsystem series. These
series are stand alone and should be merged via the relevant tree such
that with all subsystems complete we can follow this up with the final
patch that will make the I/O port accessors compile-time optional.

The current state of the full series with changes to the remaining subsystems
and the aforementioned final patch can be found for your convenience on my
git.kernel.org tree in the has_ioport branch[1]. As for compile-time vs runtime
see Linus' reply to my first attempt[2].

Thanks,
Niklas

[0] https://lore.kernel.org/all/20230522105049.1467313-1-schnelle@linux.ibm.com/
[1] https://git.kernel.org/pub/scm/linux/kernel/git/niks/linux.git/log/?h=has_ioport
[2] https://lore.kernel.org/lkml/CAHk-=wg80je=K7madF4e7WrRNp37e3qh6y10Svhdc7O8SZ_-8g@mail.gmail.com/

Niklas Schnelle (1):
  net: handle HAS_IOPORT dependencies

 drivers/net/Kconfig                  | 2 +-
 drivers/net/arcnet/Kconfig           | 2 +-
 drivers/net/can/cc770/Kconfig        | 1 +
 drivers/net/can/sja1000/Kconfig      | 1 +
 drivers/net/ethernet/3com/Kconfig    | 4 ++--
 drivers/net/ethernet/8390/Kconfig    | 6 +++---
 drivers/net/ethernet/amd/Kconfig     | 4 ++--
 drivers/net/ethernet/fujitsu/Kconfig | 2 +-
 drivers/net/ethernet/intel/Kconfig   | 2 +-
 drivers/net/ethernet/sis/Kconfig     | 4 ++--
 drivers/net/ethernet/smsc/Kconfig    | 2 +-
 drivers/net/ethernet/ti/Kconfig      | 2 +-
 drivers/net/ethernet/via/Kconfig     | 1 +
 drivers/net/ethernet/xircom/Kconfig  | 2 +-
 drivers/net/fddi/defxx.c             | 2 +-
 drivers/net/hamradio/Kconfig         | 6 +++---
 drivers/net/wan/Kconfig              | 2 +-
 net/ax25/Kconfig                     | 2 +-
 18 files changed, 25 insertions(+), 22 deletions(-)

-- 
2.40.1

