Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABFD5FB355
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Oct 2022 15:22:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCCB2405AE;
	Tue, 11 Oct 2022 13:22:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCCB2405AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665494568;
	bh=I1A7/cprzmsvxdsJPk25Oyl0K0Raje5tsocfQ58Uqts=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jLSawwYyzCMnlfUf5JA7mgRsaxi6l69EBwpys9n/NqehUQwhilzgambPazgWviC43
	 xuqVwBPP6KbZ7VA4AYiwc2c4l748iMCmUJRwS4bKKL5no5lnmVR46a+iqWUiGHWB8q
	 ZAZhp8lQd8r6VSA+mXrmStf5b0GspdYFn7C0eR8NixjJMXDBXmHJW/EoUMDKTlnysu
	 MB86bZdesnHaVXccoXmFj9bnCiJj2gH73x7hIPVUIEIyBYvDDPWggVi5Wr2fmxv57C
	 lyF9L6rlFxNVnsy4/7SC4D7SvePMXW3e8Twpb7D+G9jTYwKXSGnPpcLypHGMKVrDVJ
	 zXSrK+8xYuyAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FuiWRtJLpG8f; Tue, 11 Oct 2022 13:22:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D4DE4046D;
	Tue, 11 Oct 2022 13:22:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D4DE4046D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA5BA1BF867
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 13:22:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C487E61008
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 13:22:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C487E61008
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PJP-zr9L0ycC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Oct 2022 13:22:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 882EA60EC2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 882EA60EC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 13:22:39 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-157-MGcfP1DAOXqCHCBecmQatw-1; Tue, 11 Oct 2022 09:22:36 -0400
X-MC-Unique: MGcfP1DAOXqCHCBecmQatw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22C741C0BC6D;
 Tue, 11 Oct 2022 13:22:36 +0000 (UTC)
Received: from p1.luc.cera.cz (ovpn-192-87.brq.redhat.com [10.40.192.87])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 44DBD2166B26;
 Tue, 11 Oct 2022 13:22:35 +0000 (UTC)
Date: Tue, 11 Oct 2022 15:22:34 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Message-ID: <20221011152234.33904e70@p1.luc.cera.cz>
In-Reply-To: <DM6PR11MB31130998A16B8360E72D354087629@DM6PR11MB3113.namprd11.prod.outlook.com>
References: <20220802115142.65176-1-mateusz.palczewski@intel.com>
 <20220802115142.65176-3-mateusz.palczewski@intel.com>
 <CADEbmW1mLwFzPJrx-igzpwF141Gb71wgJd9Zm1ur4xPkWa5Hyg@mail.gmail.com>
 <20220804113730.3437e762@p1.luc.cera.cz>
 <DM6PR11MB31130998A16B8360E72D354087629@DM6PR11MB3113.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1665494558;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=d38HbC4wEf6EaJe7zU8mMUqFNLXGIqj1O4PWnml0rYk=;
 b=Nm+baNruMQXQVTiZkVRsDR9cmSEAXsVaf7kO25Ww/AaEWuexeQys0uoO/PjjJ6MUJwCSzO
 Zq1yVGrPkaG9A7aHyiyN6Vu2MWmOtb+AABOIOsTWiRYIgMNXZzuZLVf2Uc/E360/g5d3Oo
 kwrlNDgZjR68xp4DR5Qk7F6KJQhWIm8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Nm+baNru
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] iavf: Fix race condition
 between iavf_shutdown and iavf_remove
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 9 Aug 2022 21:11:26 +0000
"Laba, SlawomirX" <slawomirx.laba@intel.com> wrote:

> > -----Original Message-----
> > From: Ivan Vecera <ivecera@redhat.com>
> > Sent: Thursday, August 4, 2022 11:38 AM
> > To: mschmidt <mschmidt@redhat.com>
> > Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; intel-wired-
> > lan@lists.osuosl.org; Laba, SlawomirX <slawomirx.laba@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] iavf: Fix race condition
> > between iavf_shutdown and iavf_remove
> > 
> > On Thu, 4 Aug 2022 11:14:58 +0200
> > Michal Schmidt <mschmidt@redhat.com> wrote:
> >   
> > > On Tue, Aug 2, 2022 at 1:52 PM Mateusz Palczewski <  
> > > mateusz.palczewski@intel.com> wrote:  
> > >  
> > > > From: Slawomir Laba <slawomirx.laba@intel.com>
> > > >
> > > > Fix a deadlock introduced by commit
> > > > 974578017fc1 ("iavf: Add waiting so the port is initialized in
> > > > remove") due to race condition between iavf_shutdown and
> > > > iavf_remove, where iavf_remove stucks forever in while loop since
> > > > iavf_shutdown already set __IAVF_REMOVE adapter state.
> > > >
> > > > Fix this by checking if the __IAVF_IN_REMOVE_TASK has already been
> > > > set and return if so.
> > > >
> > > > Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized
> > > > in
> > > > remove")
> > > > Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> > > > Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> > > > ---
> > > >  v2: Fixed author
> > > > ---
> > > >  drivers/net/ethernet/intel/iavf/iavf_main.c | 19
> > > > ++++++++++---------
> > > >  1 file changed, 10 insertions(+), 9 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > > index 6357dea93b99..d43e8f12d3ad 100644
> > > > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > > @@ -4846,23 +4846,24 @@ static int __maybe_unused  
> > iavf_resume(struct  
> > > > device *dev_d)  static void iavf_remove(struct pci_dev *pdev)  {
> > > >         struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
> > > > -       struct net_device *netdev = adapter->netdev;
> > > >         struct iavf_fdir_fltr *fdir, *fdirtmp;
> > > >         struct iavf_vlan_filter *vlf, *vlftmp;
> > > > +       struct iavf_cloud_filter *cf, *cftmp;
> > > >         struct iavf_adv_rss *rss, *rsstmp;
> > > >         struct iavf_mac_filter *f, *ftmp;
> > > > -       struct iavf_cloud_filter *cf, *cftmp;
> > > > -       struct iavf_hw *hw = &adapter->hw;
> > > > +       struct net_device *netdev;
> > > > +       struct iavf_hw *hw;
> > > >         int err;
> > > >
> > > > -       /* When reboot/shutdown is in progress no need to do anything
> > > > -        * as the adapter is already REMOVE state that was set during
> > > > -        * iavf_shutdown() callback.
> > > > -        */
> > > > -       if (adapter->state == __IAVF_REMOVE)
> > > > +       if (!adapter)
> > > > +               return;
> > > >  
> > >
> > > The check for !adapter cannot work. iavf_pdev_to_adapter(pdev) will
> > > never return NULL. It does:
> > >         return netdev_priv(pci_get_drvdata(pdev));
> > > Even if pci_get_drvdata(pdev) somehow returns NULL (which I don't
> > > think it will, because the driver never resets the drvdata before
> > > freeing netdev),
> > > netdev_priv() would make a non-NULL value out of it (it adds the
> > > aligned size of struct net_device to the pointer).
> > >
> > > CCing Ivan, who will have more comments about the adapter states.
> > > Michal  
> > 
> > Yes, to make your patch working correctly you need to adjust
> > iavf_pdev_to_adapter() appropriately and also set pci drvdata to NULL prior
> > free_netdev():  
> 
> Thanks Ivan for a nice fix of this problem. The only way that this check would work is when iavf_probe fails with no memory.
> We also came to the conclusion that this check is not really necessary and our update on this patch would be to simply
> remove the check on the adapter to NULL. What do you think about this?

OK, make sense.

> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -164,7 +164,9 @@ int virtchnl_status_to_errno(enum
> > virtchnl_status_code v_status)
> >   */
> >  static struct iavf_adapter *iavf_pdev_to_adapter(struct pci_dev *pdev)  {
> > -       return netdev_priv(pci_get_drvdata(pdev));
> > +       struct net_device *netdev = pci_get_drvdata(pdev);
> > +
> > +       return netdev ? netdev_priv(netdev) : NULL;
> >  }
> > 
> >  /**
> > @@ -4899,6 +4901,7 @@ static void iavf_remove(struct pci_dev *pdev)
> >         }
> >         spin_unlock_bh(&adapter->adv_rss_lock);
> > 
> > +       pci_set_drvdata(pdev, NULL);
> >         free_netdev(netdev);
> > 
> >         pci_disable_pcie_error_reporting(pdev);
> > 
> > Regarding adapter states... __IAVF_REMOVE can be removed as redundant
> > and instead only use __IAVF_IN_REMOVE_TASK bit.
> > 
> > Ivan  
> 
> I divided iavf_remove function into two logical pieces. The first piece helps the driver to survive races of watchdog init states and iavf_remove call.
> So when init fails the driver doesn't reinit if remove is triggered. Additionally the __IAVF_IN_REMOVE_TASK was introduced in order to fix race
> condition between register_netdevice in init and unregister_netdevice in remove. The second piece is the cleanup of resources after netdev gets 
> unregistered. I had no better idea on how to deal with unregister_netdevice call without holding crit_lock. Unregister_netdevice function will call
> iavf_close which requires this lock in order to free traffic irqs and cleanup rx and tx resources.
> 
> The __IAVF_REMOVE state is used in different purpose, for example when the driver is ready to stop workqueues (after netdev gets unregistered)
> and iavf_remove already holds the crit_lock for final cleanups.

OK, got it.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
