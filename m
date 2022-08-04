Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AEA5899F7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 11:37:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5F4D81CA3;
	Thu,  4 Aug 2022 09:37:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5F4D81CA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659605863;
	bh=GbTn3BbBZhEqoo8Td9n53XtBNtf0kkXE6mkdWCIts0c=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mCgr1JzoYYlLXpQGfaVuYgAma3glrWE/kxiMWQTzeqkrvMofo46TwIyfWHZUQxZ6a
	 1qz+Xw8DuZhL34yghz3HBRAg3Bu5eFpmYnRagZlDKt5puouhX//kICLcRbZmoYbrPl
	 VrYJrzTNw82PNY7w5myu+/HUuSjEu5t3J5wmoojYfOfAczdxx/0SW5ww/bLeltg1ZM
	 /FUm8dKYg+cSUCq41MSEAZ+ro5AFyEjHmY6CuSWLqrN4Mr4xSCCEkA97lSoLEJDyS0
	 +UQ3/DlMBo5/dMYf6pc/QfV076M0EfN45n4UxsCKa6zsd8+xIJ25+TYyFNxY8A73dL
	 mMlPhA6tilFtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZdKV547VaiaM; Thu,  4 Aug 2022 09:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B89C6819CC;
	Thu,  4 Aug 2022 09:37:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B89C6819CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4DD421BF9CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 09:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2824F408E1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 09:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2824F408E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YDmoJ9saM5dN for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 09:37:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDF40400A6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BDF40400A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 09:37:36 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-573-w4-CqMruN36GVVJjcmYEwg-1; Thu, 04 Aug 2022 05:37:32 -0400
X-MC-Unique: w4-CqMruN36GVVJjcmYEwg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EE336811E76;
 Thu,  4 Aug 2022 09:37:31 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.40.194.142])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1CCA8C15D4F;
 Thu,  4 Aug 2022 09:37:30 +0000 (UTC)
Date: Thu, 4 Aug 2022 11:37:30 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <20220804113730.3437e762@p1.luc.cera.cz>
In-Reply-To: <CADEbmW1mLwFzPJrx-igzpwF141Gb71wgJd9Zm1ur4xPkWa5Hyg@mail.gmail.com>
References: <20220802115142.65176-1-mateusz.palczewski@intel.com>
 <20220802115142.65176-3-mateusz.palczewski@intel.com>
 <CADEbmW1mLwFzPJrx-igzpwF141Gb71wgJd9Zm1ur4xPkWa5Hyg@mail.gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1659605855;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mU9qzLWaoLs3jahlI9nfgwxZPdWHJ1Nwd9ue6Hkm4Ug=;
 b=JlHYjkwe8Lm4MPOiVdaGxqRGnAAaRnYIRhkip6FYqaBxgv1nFMPtbKktP6wMa1GrQRkELo
 d0F5ka/Mv03X0B//3xDhatsHuXHv8q8u9ocYX2LHlIrL35XW7+sX4/fkHvbpnfd4svsspF
 Rivq7B5lcKvyWpqZrzXmgJWaBMxJvVo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JlHYjkwe
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
Cc: intel-wired-lan@lists.osuosl.org, Slawomir Laba <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 4 Aug 2022 11:14:58 +0200
Michal Schmidt <mschmidt@redhat.com> wrote:

> On Tue, Aug 2, 2022 at 1:52 PM Mateusz Palczewski <
> mateusz.palczewski@intel.com> wrote:  
> 
> > From: Slawomir Laba <slawomirx.laba@intel.com>
> >
> > Fix a deadlock introduced by commit
> > 974578017fc1 ("iavf: Add waiting so the port is initialized in remove")
> > due to race condition between iavf_shutdown and iavf_remove, where
> > iavf_remove stucks forever in while loop since iavf_shutdown already
> > set __IAVF_REMOVE adapter state.
> >
> > Fix this by checking if the __IAVF_IN_REMOVE_TASK has already been
> > set and return if so.
> >
> > Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized in
> > remove")
> > Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> > Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> > ---
> >  v2: Fixed author
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 19 ++++++++++---------
> >  1 file changed, 10 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index 6357dea93b99..d43e8f12d3ad 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -4846,23 +4846,24 @@ static int __maybe_unused iavf_resume(struct
> > device *dev_d)
> >  static void iavf_remove(struct pci_dev *pdev)
> >  {
> >         struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
> > -       struct net_device *netdev = adapter->netdev;
> >         struct iavf_fdir_fltr *fdir, *fdirtmp;
> >         struct iavf_vlan_filter *vlf, *vlftmp;
> > +       struct iavf_cloud_filter *cf, *cftmp;
> >         struct iavf_adv_rss *rss, *rsstmp;
> >         struct iavf_mac_filter *f, *ftmp;
> > -       struct iavf_cloud_filter *cf, *cftmp;
> > -       struct iavf_hw *hw = &adapter->hw;
> > +       struct net_device *netdev;
> > +       struct iavf_hw *hw;
> >         int err;
> >
> > -       /* When reboot/shutdown is in progress no need to do anything
> > -        * as the adapter is already REMOVE state that was set during
> > -        * iavf_shutdown() callback.
> > -        */
> > -       if (adapter->state == __IAVF_REMOVE)
> > +       if (!adapter)
> > +               return;
> >  
> 
> The check for !adapter cannot work. iavf_pdev_to_adapter(pdev) will never
> return NULL. It does:
>         return netdev_priv(pci_get_drvdata(pdev));
> Even if pci_get_drvdata(pdev) somehow returns NULL (which I don't think it
> will, because the driver never resets the drvdata before freeing netdev),
> netdev_priv() would make a non-NULL value out of it (it adds the aligned
> size of struct net_device to the pointer).
> 
> CCing Ivan, who will have more comments about the adapter states.
> Michal

Yes, to make your patch working correctly you need to adjust iavf_pdev_to_adapter()
appropriately and also set pci drvdata to NULL prior free_netdev():

--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -164,7 +164,9 @@ int virtchnl_status_to_errno(enum virtchnl_status_code v_status)
  */
 static struct iavf_adapter *iavf_pdev_to_adapter(struct pci_dev *pdev)
 {
-       return netdev_priv(pci_get_drvdata(pdev));
+       struct net_device *netdev = pci_get_drvdata(pdev);
+
+       return netdev ? netdev_priv(netdev) : NULL;
 }
 
 /**
@@ -4899,6 +4901,7 @@ static void iavf_remove(struct pci_dev *pdev)
        }
        spin_unlock_bh(&adapter->adv_rss_lock);
 
+       pci_set_drvdata(pdev, NULL);
        free_netdev(netdev);
 
        pci_disable_pcie_error_reporting(pdev);

Regarding adapter states... __IAVF_REMOVE can be removed as redundant and instead only
use __IAVF_IN_REMOVE_TASK bit.

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
