Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7C7CB045
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2019 22:39:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 694F387ABA;
	Thu,  3 Oct 2019 20:39:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JTB5+jLFC-zY; Thu,  3 Oct 2019 20:39:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8457F87A87;
	Thu,  3 Oct 2019 20:39:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 090F01BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 20:39:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 04BF52309D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 20:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SZHUi8sKl-Dm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2019 20:39:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 51D6B22865
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 20:39:32 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id 3so5575539qta.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Oct 2019 13:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c5v0Ayn3zo5649C9SEeg+lS3ZwQJtN55TT1dAsho3tE=;
 b=L8LL/5DSNN7PcsbocdWR7gM/PGi+bHDR9Esq0SBUn9toL+v8n8ifL4Lf8et0uoWDyI
 3M9R906KW/Wi1Ar5dgfuIOO0IYSxuhPgM5fpySrr2wBjdL1/JCRq5qVGfeZT0mtVuz64
 a2PRVv2kZBH8wIiSrlq3EOatqpjKx35sSfGweMEGRAmtaFBYyI4y51Ym/ga31U7IJsCf
 f/hts4rhe9KHpbOmNXe7uRwIQWO1J0eQ1GItj3JJ2DwvTEpYH1aiFNqoD2wGH3fgh37P
 qJG6YMHQtx+0nMN7E906Nd8Lyn0EtsTGqbuM0Ci4VH3xnmE61CsG3JmpKoq/eyJu0gWU
 QkWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c5v0Ayn3zo5649C9SEeg+lS3ZwQJtN55TT1dAsho3tE=;
 b=OB8YCs01xgmDD23fIu7uDuurHXunOO1032ycBoUMsoIvO6NGpozz77CCdqqTMbbhgV
 aSlo4vCP/33inQK1+QTfCOtzC6fTnRxFs678IuG+m6P149TfkBeOaIXxR24H3UQKcBRe
 THHUjvdiYx48IAln5k8mBU77DqbarZQcIVHQO3cZZC+Hj7hxbmNC2c0ZQ4Oee9OcMgQV
 yvXHK29jwD79jpxcjiNodWsb17J3l1e3mCvx2iYKeUej4hSSjrEiorfvQ9dc2OQ/4tka
 Z6R24s0CZWrcAIsuqK+Seqy+DhAViPVeWZTq+ZV+oyIBG56aHwQPGv2j4zxutvzdvbO1
 OQBA==
X-Gm-Message-State: APjAAAUP8RyVDMcp7Bh96FAIGxIQiWj14FSe/SWFNvuEv8+QOmw/coHm
 Tuh77QaSn3Q3fptykWZm4hxnPLSat/qGZUrSlx4=
X-Google-Smtp-Source: APXvYqw7nFDvBQrLYt8LQT23ZuQZKHZ+C32m4Il/c3x3OBmEOFxjRaW+5Io1922Ypof0CQNJgVR+iiav+lPYu1K8new=
X-Received: by 2002:ac8:4593:: with SMTP id l19mr12258563qtn.271.1570135171067; 
 Thu, 03 Oct 2019 13:39:31 -0700 (PDT)
MIME-Version: 1.0
References: <1570121672-12172-1-git-send-email-zdai@linux.vnet.ibm.com>
 <CAKgT0Udz7vt5C=+6vpFPbys4sODAZtCjrkSvOdgP80rX7Ww+Ng@mail.gmail.com>
 <1570128658.1250.8.camel@oc5348122405>
In-Reply-To: <1570128658.1250.8.camel@oc5348122405>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 3 Oct 2019 13:39:19 -0700
Message-ID: <CAKgT0UcHvAQoChS1bkV8LsxaJcyRrTSPru+qsYXBsxHgr+aJmg@mail.gmail.com>
To: "David Z. Dai" <zdai@linux.vnet.ibm.com>
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

On Thu, Oct 3, 2019 at 11:51 AM David Z. Dai <zdai@linux.vnet.ibm.com> wrote:
>
> On Thu, 2019-10-03 at 10:39 -0700, Alexander Duyck wrote:
> > On Thu, Oct 3, 2019 at 9:59 AM David Dai <zdai@linux.vnet.ibm.com> wrote:
> > >
> > > We see the behavior when EEH e1000e adapter detects io permanent failure,
> > > it will crash kernel with this stack:
> > > EEH: Beginning: 'error_detected(permanent failure)'
> > > EEH: PE#900000 (PCI 0115:90:00.1): Invoking e1000e->error_detected(permanent failure)
> > > EEH: PE#900000 (PCI 0115:90:00.1): e1000e driver reports: 'disconnect'
> > > EEH: PE#900000 (PCI 0115:90:00.0): Invoking e1000e->error_detected(permanent failure)
> > > EEH: PE#900000 (PCI 0115:90:00.0): e1000e driver reports: 'disconnect'
> > > EEH: Finished:'error_detected(permanent failure)'
> > > Oops: Exception in kernel mode, sig: 5 [#1]
> > > NIP [c0000000007b1be0] free_msi_irqs+0xa0/0x280
> > >  LR [c0000000007b1bd0] free_msi_irqs+0x90/0x280
> > > Call Trace:
> > > [c0000004f491ba10] [c0000000007b1bd0] free_msi_irqs+0x90/0x280 (unreliable)
> > > [c0000004f491ba70] [c0000000007b260c] pci_disable_msi+0x13c/0x180
> > > [c0000004f491bab0] [d0000000046381ac] e1000_remove+0x234/0x2a0 [e1000e]
> > > [c0000004f491baf0] [c000000000783cec] pci_device_remove+0x6c/0x120
> > > [c0000004f491bb30] [c00000000088da6c] device_release_driver_internal+0x2bc/0x3f0
> > > [c0000004f491bb80] [c00000000076f5a8] pci_stop_and_remove_bus_device+0xb8/0x110
> > > [c0000004f491bbc0] [c00000000006e890] pci_hp_remove_devices+0x90/0x130
> > > [c0000004f491bc50] [c00000000004ad34] eeh_handle_normal_event+0x1d4/0x660
> > > [c0000004f491bd10] [c00000000004bf10] eeh_event_handler+0x1c0/0x1e0
> > > [c0000004f491bdc0] [c00000000017c4ac] kthread+0x1ac/0x1c0
> > > [c0000004f491be30] [c00000000000b75c] ret_from_kernel_thread+0x5c/0x80
> > >
> > > Basically the e1000e irqs haven't been freed at the time eeh is trying to
> > > remove the the e1000e device.
> > > Need to make sure when e1000e_close is called to bring down the NIC,
> > > if adapter error_state is pci_channel_io_perm_failure, it should also
> > > bring down the link and free irqs.
> > >
> > > Reported-by: Morumuri Srivalli  <smorumu1@in.ibm.com>
> > > Signed-off-by: David Dai <zdai@linux.vnet.ibm.com>
> > > ---
> > >  drivers/net/ethernet/intel/e1000e/netdev.c |    3 ++-
> > >  1 files changed, 2 insertions(+), 1 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> > > index d7d56e4..cf618e1 100644
> > > --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> > > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> > > @@ -4715,7 +4715,8 @@ int e1000e_close(struct net_device *netdev)
> > >
> > >         pm_runtime_get_sync(&pdev->dev);
> > >
> > > -       if (!test_bit(__E1000_DOWN, &adapter->state)) {
> > > +       if (!test_bit(__E1000_DOWN, &adapter->state) ||
> > > +           (adapter->pdev->error_state == pci_channel_io_perm_failure)) {
> > >                 e1000e_down(adapter, true);
> > >                 e1000_free_irq(adapter);
> >
> > It seems like the issue is the fact that e1000_io_error_detected is
> > calling e1000e_down without the e1000_free_irq() bit. Instead of doing
> > this couldn't you simply add the following to e1000_is_slot_reset in
> > the "result = PCI_ERS_RESULT_DISCONNECT" case:
> >     if (netif_running(netdev)
> >         e1000_free_irq(adapter);
> >
> > Alternatively we could look at freeing and reallocating the IRQs in
> > the event of an error like we do for the e1000e_pm_freeze and
> > e1000e_pm_thaw cases. That might make more sense since we are dealing
> > with an error we might want to free and reallocate the IRQ resources
> > assigned to the device.
> >
> > Thanks.
> >
> > - Alex
>
> Thanks for the quick reply and comment!
> Looked the e1000_io_slot_reset() routine:
>         err = pci_enable_device_mem(pdev);
>         if (err) {
>                 dev_err(&pdev->dev,
>                         "Cannot re-enable PCI device after reset.\n");
>                 result = PCI_ERS_RESULT_DISCONNECT;
>         } else {
> I didn't see log message "Cannot re-enable PCI device after reset" at
> the time of crash.
>
> I can still apply the same logic in e1000_io_error_detected() routine:
>     if (state == pci_channel_io_perm_failure) {
> +       if (netif_running(netdev))
> +           e1000_free_irq(adapter);
>         return PCI_ERS_RESULT_DISCONNECT;
>     }
> Will test this once the test hardware is available again.

Are you sure this is the path you are hitting? Things aren't adding up.

I thought the issue was that the interface for the error handling was
calling e1000e_down() but not freeing the IRQs? In the path where you
are adding your code I don't see how the __E1000_DOWN would have been
set?

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
