Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB47CEA53
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2019 19:13:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 961EE87B0F;
	Mon,  7 Oct 2019 17:13:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4imFf8u5586D; Mon,  7 Oct 2019 17:13:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3FA8887B5B;
	Mon,  7 Oct 2019 17:13:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 514C71BF419
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 17:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D36185DC1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 17:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dcmwdftFGIUu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2019 17:13:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9814F85D7D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 17:13:03 +0000 (UTC)
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x97H37Mk129416; Mon, 7 Oct 2019 13:12:45 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2vg8jba5vw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 13:12:45 -0400
Received: from m0098416.ppops.net (m0098416.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x97H64Ku136871;
 Mon, 7 Oct 2019 13:12:45 -0400
Received: from ppma05wdc.us.ibm.com (1b.90.2fa9.ip4.static.sl-reverse.com
 [169.47.144.27])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2vg8jba5vj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 13:12:45 -0400
Received: from pps.filterd (ppma05wdc.us.ibm.com [127.0.0.1])
 by ppma05wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x97H5i0Q024030;
 Mon, 7 Oct 2019 17:12:44 GMT
Received: from b01cxnp23033.gho.pok.ibm.com (b01cxnp23033.gho.pok.ibm.com
 [9.57.198.28]) by ppma05wdc.us.ibm.com with ESMTP id 2vejt72p35-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 17:12:44 +0000
Received: from b01ledav001.gho.pok.ibm.com (b01ledav001.gho.pok.ibm.com
 [9.57.199.106])
 by b01cxnp23033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x97HChGK49938782
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 7 Oct 2019 17:12:43 GMT
Received: from b01ledav001.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 458212805A;
 Mon,  7 Oct 2019 17:12:43 +0000 (GMT)
Received: from b01ledav001.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B737528058;
 Mon,  7 Oct 2019 17:12:42 +0000 (GMT)
Received: from [9.53.179.215] (unknown [9.53.179.215])
 by b01ledav001.gho.pok.ibm.com (Postfix) with ESMTP;
 Mon,  7 Oct 2019 17:12:42 +0000 (GMT)
From: "David Z. Dai" <zdai@linux.vnet.ibm.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
In-Reply-To: <CAKgT0Ue6+JJqcoFO1AcP8GCShmMPiUm1SNkbq9BxxWA-b5=Oow@mail.gmail.com>
References: <1570208647.1250.55.camel@oc5348122405>
 <20191004233052.28865.1609.stgit@localhost.localdomain>
 <1570241926.10511.7.camel@oc5348122405>
 <CAKgT0Ud7SupVd3RQmTEJ8e0fixiptS-1wFg+8V4EqpHEuAC3wQ@mail.gmail.com>
 <1570463459.1510.5.camel@oc5348122405>
 <CAKgT0Ue6+JJqcoFO1AcP8GCShmMPiUm1SNkbq9BxxWA-b5=Oow@mail.gmail.com>
Date: Mon, 07 Oct 2019 12:12:42 -0500
Message-ID: <1570468362.1510.9.camel@oc5348122405>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.3 (2.32.3-36.el6) 
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-07_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=948 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910070158
Subject: Re: [Intel-wired-lan] [RFC PATCH] e1000e: Use rtnl_lock to prevent
 race conditions between net and pci/pm
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, zdai@us.ibm.com,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2019-10-07 at 10:02 -0700, Alexander Duyck wrote:
> On Mon, Oct 7, 2019 at 8:51 AM David Z. Dai <zdai@linux.vnet.ibm.com> wrote:
> >
> 
> <snip>
> 
> > We have tested on one of the test box.
> > With this patch, it doesn't crash kernel anymore, which is good!
> >
> > However we see this warning message from the log file for irq number 0:
> > [10206.317270] Trying to free already-free IRQ 0
> >
> > With this stack:
> > [10206.317344] NIP [c00000000018cbf8] __free_irq+0x308/0x370
> > [10206.317346] LR [c00000000018cbf4] __free_irq+0x304/0x370
> > [10206.317347] Call Trace:
> > [10206.317348] [c00000008b92b970] [c00000000018cbf4] __free_irq
> > +0x304/0x370 (unreliable)
> > [10206.317351] [c00000008b92ba00] [c00000000018cd84] free_irq+0x84/0xf0
> > [10206.317358] [c00000008b92ba30] [d000000007449e60] e1000_free_irq
> > +0x98/0xc0 [e1000e]
> > [10206.317365] [c00000008b92ba60] [d000000007458a70] e1000e_pm_freeze
> > +0xb8/0x100 [e1000e]
> > [10206.317372] [c00000008b92baa0] [d000000007458b6c]
> > e1000_io_error_detected+0x34/0x70 [e1000e]
> > [10206.317375] [c00000008b92bad0] [c000000000040358] eeh_report_failure
> > +0xc8/0x190
> > [10206.317377] [c00000008b92bb20] [c00000000003eb2c] eeh_pe_dev_traverse
> > +0x9c/0x170
> > [10206.317379] [c00000008b92bbb0] [c000000000040d84]
> > eeh_handle_normal_event+0xe4/0x580
> > [10206.317382] [c00000008b92bc60] [c000000000041330] eeh_handle_event
> > +0x30/0x340
> > [10206.317384] [c00000008b92bd10] [c000000000041780] eeh_event_handler
> > +0x140/0x200
> > [10206.317386] [c00000008b92bdc0] [c0000000001397c8] kthread+0x1a8/0x1b0
> > [10206.317389] [c00000008b92be30] [c00000000000b560]
> > ret_from_kernel_thread+0x5c/0x7c
> >
> > Thanks! - David
> 
> Hmm. I wonder if it is possibly calling the report
> e1000_io_error_detected multiple times. If so then the secondary calls
> to e1000_pm_freeze would cause issues.
> 
> I will add a check so that we only down the interface and free the
> IRQs if the interface is in the present and running state.
> 
> I'll submit an update patch shortly.
> 
> Thanks.
> 
> - Alex
It only complains about IRQ number 0 in the log.
Could you please let me know the actual place where you will add the
check?
I can retest it again.

Thanks! - David

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
