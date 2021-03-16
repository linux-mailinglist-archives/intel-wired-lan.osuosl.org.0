Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CFA33CEA9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 08:33:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E155C43169;
	Tue, 16 Mar 2021 07:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NPbrZL04GyP3; Tue, 16 Mar 2021 07:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCEEA4300E;
	Tue, 16 Mar 2021 07:33:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C1F7E1BF387
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 07:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B1F296F5E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 07:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id crUL2ShWyeW6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 07:33:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7F3D3606B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 07:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615879999;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jeyAVaOSdR6Hy2y6sHQ5JY4pFCVLACbOMokS7U8UkbQ=;
 b=AmfqWYQ/XEMIMeWDfC4x60Ci7Ovp2nBNcGkRScBEH8dv5jmcYeMclqV33nufYwsgeNXc3E
 tTWemBs6M8lUgSVw86ChctB14c8sd62qb4paEB04NDbEQDE3YQJODNYQAVrzaYTzJE4+Aj
 /t0q/ot4T+R/9IOkWmj66e5q1lyihic=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-ZTpxVl9BPCq-Bhrxr0OV4w-1; Tue, 16 Mar 2021 03:33:16 -0400
X-MC-Unique: ZTpxVl9BPCq-Bhrxr0OV4w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26D9419057A2;
 Tue, 16 Mar 2021 07:33:15 +0000 (UTC)
Received: from p50.fritz.box (ovpn-112-37.ams2.redhat.com [10.36.112.37])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C4ADB17DC3;
 Tue, 16 Mar 2021 07:33:13 +0000 (UTC)
Date: Tue, 16 Mar 2021 08:33:11 +0100
From: Stefan Assmann <sassmann@redhat.com>
To: "Nunley, Nicholas D" <nicholas.d.nunley@intel.com>
Message-ID: <20210316073311.xbssn43q3r52e2e7@p50.fritz.box>
References: <20210312093337.68364-1-eryk.roch.rybak@intel.com>
 <20210312123615.7fcvoayobcslko74@p50.fritz.box>
 <DM5PR1101MB20742AB907C04D1B6A6C6A4FB36C9@DM5PR1101MB2074.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <DM5PR1101MB20742AB907C04D1B6A6C6A4FB36C9@DM5PR1101MB2074.namprd11.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sassmann@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix asynchronous tasks
 during driver remove
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
Cc: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2021-03-15 23:31, Nunley, Nicholas D wrote:
> Thanks for pointing this out. This was an accidental oversight, although I think part of my reason for not paying close enough attention is that the client code is never actually used. Since there aren't any plans to use the client code in the future, we discussed this here and the plan is to remove that code from the iavf driver. We'll be submitting a patch for that soon, but in the meantime I think we'll be all right if this patch goes in as-is, since the bug is purely hypothetical and has no real-world impact.

Hi Nick,

the other question I have here is. How do you properly communicate the
device close to the PF if the watchdog and adminq tasks are already
shutdown?

iavf_close() calls iavf_down() which queues these adminq commands
                adapter->aq_required = IAVF_FLAG_AQ_DEL_MAC_FILTER;
                adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
                adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
                adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
which can never be handled. IOW, is i40e still able to properly clean up
in this case?

  Stefan

> Nick
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Stefan Assmann
> > Sent: Friday, March 12, 2021 4:36 AM
> > To: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>
> > Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; intel-wired-
> > lan@lists.osuosl.org
> > Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix asynchronous tasks
> > during driver remove
> > 
> > On 2021-03-12 10:33, Eryk Rybak wrote:
> > > Although rare, is possible for unexpected driver watchdog or Admin
> > > Queue tasks to run during the execution of iavf_remove function.
> > > Then, is not possible to obtain the standard __IAVF_IN_CRITICAL_TASK
> > > lock and difficult to ensure that the driver state stays consistent
> > > during the full removal process.
> > 
> > If you shutdown the watchdog task before closing the device, how do you
> > ensure the client task is properly shutdown?
> > 
> > Calling iavf_close() sets the IAVF_FLAG_CLIENT_NEEDS_CLOSE flag, which
> > would call iavf_notify_client_close(&adapter->vsi, false); in the client task,
> > but the client task does no longer get scheduled by the watchdog task
> > because it has been shutdown already.
> > 
> >   Stefan
> > 
> > > Fully stops all asynchronous tasks in the beginning of iavf_remove,
> > > and uses a single-threaded flow to shut down the driver.
> > >
> > > Fixes: fdd4044ffdc8("iavf: Remove timer for work triggering, use
> > > delaying work instead")
> > > Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
> > > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > > Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/iavf/iavf_main.c | 31
> > > +++++++++++++++++----
> > >  1 file changed, 25 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > index dc5b3c06d1e0..e752ecb7ad89 100644
> > > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > @@ -1887,6 +1887,12 @@ static void iavf_watchdog_task(struct
> > work_struct *work)
> > >  	struct iavf_hw *hw = &adapter->hw;
> > >  	u32 reg_val;
> > >
> > > +	/* If the driver is in the process of being removed then don't run or
> > > +	 * reschedule the watchdog task.
> > > +	 */
> > > +	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
> > > +		return;
> > > +
> > >  	if (test_and_set_bit(__IAVF_IN_CRITICAL_TASK, &adapter-
> > >crit_section))
> > >  		goto restart_watchdog;
> > >
> > > @@ -2267,6 +2273,12 @@ static void iavf_adminq_task(struct work_struct
> > *work)
> > >  	u32 val, oldval;
> > >  	u16 pending;
> > >
> > > +	/* If the driver is in the process of being removed then return
> > > +	 * immediately and don't re-enable the Admin Queue interrupt.
> > > +	 */
> > > +	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
> > > +		return;
> > > +
> > >  	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
> > >  		goto out;
> > >
> > > @@ -3245,6 +3257,13 @@ static int iavf_close(struct net_device
> > > *netdev)
> > >
> > >  	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
> > >
> > > +	/* If the interface is closing as part of driver removal it doesn't
> > > +	 * wait. The VF resources will be reinitialized when the hardware is
> > > +	 * reset.
> > > +	 */
> > > +	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
> > > +		return 0;
> > > +
> > >  	/* We explicitly don't free resources here because the hardware is
> > >  	 * still active and can DMA into memory. Resources are cleared in
> > >  	 * iavf_virtchnl_completion() after we get confirmation from the PF
> > > @@ -3850,11 +3869,16 @@ static void iavf_remove(struct pci_dev *pdev)
> > >  	struct iavf_cloud_filter *cf, *cftmp;
> > >  	struct iavf_hw *hw = &adapter->hw;
> > >  	int err;
> > > -	/* Indicate we are in remove and not to run reset_task */
> > > +	/* Indicate that program driver is remove task and not
> > > +	 * to run/schedule any driver tasks
> > > +	 */
> > >  	set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
> > >  	cancel_delayed_work_sync(&adapter->init_task);
> > >  	cancel_work_sync(&adapter->reset_task);
> > >  	cancel_delayed_work_sync(&adapter->client_task);
> > > +	cancel_work_sync(&adapter->adminq_task);
> > > +	cancel_delayed_work_sync(&adapter->watchdog_task);
> > > +	iavf_misc_irq_disable(adapter);
> > >  	if (adapter->netdev_registered) {
> > >  		unregister_netdev(netdev);
> > >  		adapter->netdev_registered = false; @@ -3879,15 +3903,10
> > @@ static
> > > void iavf_remove(struct pci_dev *pdev)
> > >  	}
> > >  	iavf_free_all_tx_resources(adapter);
> > >  	iavf_free_all_rx_resources(adapter);
> > > -	iavf_misc_irq_disable(adapter);
> > >  	iavf_free_misc_irq(adapter);
> > >  	iavf_reset_interrupt_capability(adapter);
> > >  	iavf_free_q_vectors(adapter);
> > >
> > > -	cancel_delayed_work_sync(&adapter->watchdog_task);
> > > -
> > > -	cancel_work_sync(&adapter->adminq_task);
> > > -
> > >  	iavf_free_rss(adapter);
> > >
> > >  	if (hw->aq.asq.count)
> > >
> > > base-commit: c1acda9807e2bbe1d2026b44f37d959d6d8266c8
> > > --
> > > 2.20.1
> > >
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > >
> > 
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
