Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83014CBEBA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2019 17:13:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BC6487D2D;
	Fri,  4 Oct 2019 15:13:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hzMPEniNqQJa; Fri,  4 Oct 2019 15:13:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E77F987D55;
	Fri,  4 Oct 2019 15:13:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 30D9F1BF9B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 00:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 29C218780F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 00:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KSvhfCFFaWnW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2019 00:02:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 441208780E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 00:02:28 +0000 (UTC)
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x93NqUhx026681; Thu, 3 Oct 2019 20:02:20 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2vdm17cdxc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 03 Oct 2019 20:02:19 -0400
Received: from m0127361.ppops.net (m0127361.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x93NqXN1026785;
 Thu, 3 Oct 2019 20:02:19 -0400
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com
 [169.62.189.11])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2vdm17cdwf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 03 Oct 2019 20:02:19 -0400
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
 by ppma03dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x93NxsQa031791;
 Fri, 4 Oct 2019 00:02:17 GMT
Received: from b03cxnp07029.gho.boulder.ibm.com
 (b03cxnp07029.gho.boulder.ibm.com [9.17.130.16])
 by ppma03dal.us.ibm.com with ESMTP id 2v9y58vcka-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 04 Oct 2019 00:02:17 +0000
Received: from b03ledav003.gho.boulder.ibm.com
 (b03ledav003.gho.boulder.ibm.com [9.17.130.234])
 by b03cxnp07029.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x9402GjZ49414478
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 4 Oct 2019 00:02:16 GMT
Received: from b03ledav003.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 234B76A058;
 Fri,  4 Oct 2019 00:02:16 +0000 (GMT)
Received: from b03ledav003.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B6BBC6A04F;
 Fri,  4 Oct 2019 00:02:15 +0000 (GMT)
Received: from [9.53.179.215] (unknown [9.53.179.215])
 by b03ledav003.gho.boulder.ibm.com (Postfix) with ESMTP;
 Fri,  4 Oct 2019 00:02:15 +0000 (GMT)
From: "David Z. Dai" <zdai@linux.vnet.ibm.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
In-Reply-To: <CAKgT0UcHvAQoChS1bkV8LsxaJcyRrTSPru+qsYXBsxHgr+aJmg@mail.gmail.com>
References: <1570121672-12172-1-git-send-email-zdai@linux.vnet.ibm.com>
 <CAKgT0Udz7vt5C=+6vpFPbys4sODAZtCjrkSvOdgP80rX7Ww+Ng@mail.gmail.com>
 <1570128658.1250.8.camel@oc5348122405>
 <CAKgT0UcHvAQoChS1bkV8LsxaJcyRrTSPru+qsYXBsxHgr+aJmg@mail.gmail.com>
Date: Thu, 03 Oct 2019 19:02:15 -0500
Message-ID: <1570147335.1250.46.camel@oc5348122405>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.3 (2.32.3-36.el6) 
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-03_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910030194
X-Mailman-Approved-At: Fri, 04 Oct 2019 15:13:09 +0000
Subject: Re: [Intel-wired-lan] [v1] e1000e: EEH on e1000e adapter detects io
 perm failure can trigger crash
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

On Thu, 2019-10-03 at 13:39 -0700, Alexander Duyck wrote:
> On Thu, Oct 3, 2019 at 11:51 AM David Z. Dai <zdai@linux.vnet.ibm.com> wrote:
> >
> > On Thu, 2019-10-03 at 10:39 -0700, Alexander Duyck wrote:
> > > On Thu, Oct 3, 2019 at 9:59 AM David Dai <zdai@linux.vnet.ibm.com> wrote:
> > > >
> > > > We see the behavior when EEH e1000e adapter detects io permanent failure,
> > > > it will crash kernel with this stack:
> > > > EEH: Beginning: 'error_detected(permanent failure)'
> > > > EEH: PE#900000 (PCI 0115:90:00.1): Invoking e1000e->error_detected(permanent failure)
> > > > EEH: PE#900000 (PCI 0115:90:00.1): e1000e driver reports: 'disconnect'
> > > > EEH: PE#900000 (PCI 0115:90:00.0): Invoking e1000e->error_detected(permanent failure)
> > > > EEH: PE#900000 (PCI 0115:90:00.0): e1000e driver reports: 'disconnect'
> > > > EEH: Finished:'error_detected(permanent failure)'
> > > > Oops: Exception in kernel mode, sig: 5 [#1]
> > > > NIP [c0000000007b1be0] free_msi_irqs+0xa0/0x280
> > > >  LR [c0000000007b1bd0] free_msi_irqs+0x90/0x280
> > > > Call Trace:
> > > > [c0000004f491ba10] [c0000000007b1bd0] free_msi_irqs+0x90/0x280 (unreliable)
> > > > [c0000004f491ba70] [c0000000007b260c] pci_disable_msi+0x13c/0x180
> > > > [c0000004f491bab0] [d0000000046381ac] e1000_remove+0x234/0x2a0 [e1000e]
> > > > [c0000004f491baf0] [c000000000783cec] pci_device_remove+0x6c/0x120
> > > > [c0000004f491bb30] [c00000000088da6c] device_release_driver_internal+0x2bc/0x3f0
> > > > [c0000004f491bb80] [c00000000076f5a8] pci_stop_and_remove_bus_device+0xb8/0x110
> > > > [c0000004f491bbc0] [c00000000006e890] pci_hp_remove_devices+0x90/0x130
> > > > [c0000004f491bc50] [c00000000004ad34] eeh_handle_normal_event+0x1d4/0x660
> > > > [c0000004f491bd10] [c00000000004bf10] eeh_event_handler+0x1c0/0x1e0
> > > > [c0000004f491bdc0] [c00000000017c4ac] kthread+0x1ac/0x1c0
> > > > [c0000004f491be30] [c00000000000b75c] ret_from_kernel_thread+0x5c/0x80
> > > >
> > > > Basically the e1000e irqs haven't been freed at the time eeh is trying to
> > > > remove the the e1000e device.
> > > > Need to make sure when e1000e_close is called to bring down the NIC,
> > > > if adapter error_state is pci_channel_io_perm_failure, it should also
> > > > bring down the link and free irqs.
> > > >
> > > > Reported-by: Morumuri Srivalli  <smorumu1@in.ibm.com>
> > > > Signed-off-by: David Dai <zdai@linux.vnet.ibm.com>
> > > > ---
> > > >  drivers/net/ethernet/intel/e1000e/netdev.c |    3 ++-
> > > >  1 files changed, 2 insertions(+), 1 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> > > > index d7d56e4..cf618e1 100644
> > > > --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> > > > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> > > > @@ -4715,7 +4715,8 @@ int e1000e_close(struct net_device *netdev)
> > > >
> > > >         pm_runtime_get_sync(&pdev->dev);
> > > >
> > > > -       if (!test_bit(__E1000_DOWN, &adapter->state)) {
> > > > +       if (!test_bit(__E1000_DOWN, &adapter->state) ||
> > > > +           (adapter->pdev->error_state == pci_channel_io_perm_failure)) {
> > > >                 e1000e_down(adapter, true);
> > > >                 e1000_free_irq(adapter);
> > >
> > > It seems like the issue is the fact that e1000_io_error_detected is
> > > calling e1000e_down without the e1000_free_irq() bit. Instead of doing
> > > this couldn't you simply add the following to e1000_is_slot_reset in
> > > the "result = PCI_ERS_RESULT_DISCONNECT" case:
> > >     if (netif_running(netdev)
> > >         e1000_free_irq(adapter);
> > >
> > > Alternatively we could look at freeing and reallocating the IRQs in
> > > the event of an error like we do for the e1000e_pm_freeze and
> > > e1000e_pm_thaw cases. That might make more sense since we are dealing
> > > with an error we might want to free and reallocate the IRQ resources
> > > assigned to the device.
> > >
> > > Thanks.
> > >
> > > - Alex
> >
> > Thanks for the quick reply and comment!
> > Looked the e1000_io_slot_reset() routine:
> >         err = pci_enable_device_mem(pdev);
> >         if (err) {
> >                 dev_err(&pdev->dev,
> >                         "Cannot re-enable PCI device after reset.\n");
> >                 result = PCI_ERS_RESULT_DISCONNECT;
> >         } else {
> > I didn't see log message "Cannot re-enable PCI device after reset" at
> > the time of crash.
> >
> > I can still apply the same logic in e1000_io_error_detected() routine:
> >     if (state == pci_channel_io_perm_failure) {
> > +       if (netif_running(netdev))
> > +           e1000_free_irq(adapter);
> >         return PCI_ERS_RESULT_DISCONNECT;
> >     }
> > Will test this once the test hardware is available again.
> 
> Are you sure this is the path you are hitting? Things aren't adding up.
> 
> I thought the issue was that the interface for the error handling was
> calling e1000e_down() but not freeing the IRQs? In the path where you
> are adding your code I don't see how the __E1000_DOWN would have been
> set?
> 
> - Alex
We see the same stack every time the crash is triggered.

My understanding is not that the interface for the error handling was
calling e1000e_down() but not freeing IRQs.

In our case, on powerpc , if injecting eeh errors to reach preset
threshold value, it will be forced to be offline permanently.

In e1000e_close() to bring down link, the check: "if (!
test_bit(__E1000_DOWN, &adapter->state))" is false, so e1000e_down() and
e1000_free_irq() are both not called. IRQs are not freed.

When e1000_remove() is called, it sees IRQs are not free, hence crash
the kernel.

This is the reason I have the original proposed patch to add an extra
check in e1000e_close().

For the 2nd change in e1000_io_error_detected() routine, I haven't
tested it yet.

Pardon me if causing any confusion, and Thanks for your time again! 

- David







_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
