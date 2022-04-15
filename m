Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A002C502D54
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 17:49:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A52B60C0F;
	Fri, 15 Apr 2022 15:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U16-HdN7USGf; Fri, 15 Apr 2022 15:49:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18F12605BA;
	Fri, 15 Apr 2022 15:49:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E3B981BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 15:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DDE33419B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 15:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BItQ1fFti-dv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 15:49:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CBD47415FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 15:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650037777;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xuws84Z0jp4NihhTFNZTBNeED6UNObMvI7eL6H7Gs80=;
 b=eC00gXCgaUSVXNYkiDMrREhTwF9Da4OUCdQXd3ii6OU2pAFTOv8lFh+4F/RsFId3Z7PArO
 kAFEmPR8Ky26uznRpvp+pKmNT7WYFClxnKcm3/eOiXXf3/pwRfXTliylHuLDZO75V9tsxu
 KOKKrMxw6SpTtsC3i88pUH4hHGA9/uY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-203-IMKEHtUKOHa8JFhxqrqjmA-1; Fri, 15 Apr 2022 11:49:36 -0400
X-MC-Unique: IMKEHtUKOHa8JFhxqrqjmA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 965C51014A61;
 Fri, 15 Apr 2022 15:49:35 +0000 (UTC)
Received: from ceranb (unknown [10.40.194.169])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A0114404E4B0;
 Fri, 15 Apr 2022 15:49:33 +0000 (UTC)
Date: Fri, 15 Apr 2022 17:49:32 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <20220415174932.6c85d5ab@ceranb>
In-Reply-To: <CADEbmW3eUAnvn4gvNxqjCMmO333-=OdObGhDXkrTbDwn0YkJDw@mail.gmail.com>
References: <20220414163907.1456925-1-ivecera@redhat.com>
 <CADEbmW3eUAnvn4gvNxqjCMmO333-=OdObGhDXkrTbDwn0YkJDw@mail.gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix race during aux device
 (un)plugging
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shiraz Saleem <shiraz.saleem@intel.com>,
 "David S. Miller" <davem@davemloft.net>, "moderated list:INTEL ETHERNET
 DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 15 Apr 2022 13:12:03 +0200
Michal Schmidt <mschmidt@redhat.com> wrote:

> On Thu, Apr 14, 2022 at 6:39 PM Ivan Vecera <ivecera@redhat.com> wrote:
> 
> > Function ice_plug_aux_dev() assigns pf->adev field too early prior
> > aux device initialization and on other side ice_unplug_aux_dev()
> > starts aux device deinit and at the end assigns NULL to pf->adev.
> > This is wrong and can causes a crash when ice_send_event_to_aux()
> > call occurs during these operations because that function depends
> > on non-NULL value of pf->adev and does not assume that aux device
> > is half-initialized or half-destroyed.
> >
> > Modify affected functions so pf->adev field is set after aux device
> > init and prior aux device destroy.
> >  
> [...]
> 
> > @@ -320,12 +319,14 @@ int ice_plug_aux_dev(struct ice_pf *pf)
> >   */
> >  void ice_unplug_aux_dev(struct ice_pf *pf)
> >  {
> > -       if (!pf->adev)
> > +       struct auxiliary_device *adev = pf->adev;
> > +
> > +       if (!adev)
> >                 return;
> >
> > -       auxiliary_device_delete(pf->adev);
> > -       auxiliary_device_uninit(pf->adev);
> >         pf->adev = NULL;
> > +       auxiliary_device_delete(adev);
> > +       auxiliary_device_uninit(adev);
> >  }
> >  
> 
> Hi Ivan,
> What prevents ice_unplug_aux_dev() from running immediately after
> ice_send_event_to_aux() gets past its "if (!pf->adev)" test ?
> Michal

ice_send_event_to_aux() takes aux device lock. ice_unplug_aux_dev()
calls auxiliary_device_delete() that calls device_del(). device_del()
takes device_lock() prior kill_device(). So if ice_send_event_to_aux()
is in progress then device_del() waits for its completion.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
