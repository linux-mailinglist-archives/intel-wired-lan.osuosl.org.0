Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 582EC74879A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 17:15:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6E246108A;
	Wed,  5 Jul 2023 15:15:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6E246108A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688570125;
	bh=Z9SfPBXEKp7JYvADX2DWzf41swYSY0gUeliJ0axh8ow=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AFzb3OIWnnyQFFZyNrunDUd9iTwyFKKA1AWMwG5wQUc8G7m+TloZaY7LoN9aQnKlv
	 ZLq/dfQPgJ7i6lrnnrVUJzxO9ACpyGf4MMQ9ZwD7Ga09vUCUqQQBZxLc7h8nPaVP/Z
	 XL8FMji8BUGWlJLyxQSlA2EIaYgHvt7qUzG76lAEUrsPlFBFS8KuyfYet8oDQIhFWM
	 dYZWDPQMvuGsib16+wLfPseUb4VeaQcV41HVfeU1i9KrbvbogBZbpOfp8U/XJ2CStZ
	 nk3kOtg8JScJ9+IjYgsrIYJ1PQns7xF8oYOaJW/FyOtL32RERldis2Rv8OMPYqhuAB
	 LgkkzV3vvLJ4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RPdYLqR6Ulk1; Wed,  5 Jul 2023 15:15:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE74D60759;
	Wed,  5 Jul 2023 15:15:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE74D60759
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D78FD1BF228
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 17:59:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF5944042B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 17:59:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF5944042B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P7Tc_rbfG9qk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 17:59:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D576B400D9
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D576B400D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 17:59:56 +0000 (UTC)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-517-5-GxHoC5PPK3OebJgU3lDw-1; Tue, 04 Jul 2023 13:59:52 -0400
X-MC-Unique: 5-GxHoC5PPK3OebJgU3lDw-1
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-401df9d2dc4so13911151cf.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Jul 2023 10:59:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688493592; x=1691085592;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4OJPbC0BqQ+AD3fMLftREevsgU5BDaBo7zNsHHsEvsU=;
 b=akIMdyoh9sX85sDNCgPLIDiZ281ra/8SL0RlU4NTJuCqHTrgxyejqKgnlbDB9N/4tY
 eo61JzC+yzOHmWLhKUtQD7QQeFnPQPeGK5azmdcwwTeM2vYModJdHLSKPRS67U9AyYR3
 k6fTLOfKxP1TrGcDbAqp1GkYwsyxul9yo0UdBtHkzl/SvrOW6lr+91CqpkN069FtB++x
 W1fldy5G4eBate79fbHpkR4WQQEOfwkFtXGJHVYhway15nYDp2IN2wjGPOnREN86rL1L
 tTeM4T5YN1eIdGhnp6focVWVdQ79mZtfthb2YWCX+H/6XzvLRjD60nrp3y75SCgrpZNJ
 JgNQ==
X-Gm-Message-State: AC+VfDybauHYOE9KzmpV+fQpXPLiGcKuiSxR+gyWfF5yboSeEmir98Zl
 v1oE0CQSJnWe1Fz013KO0LYn0HITXIj23a6YWYrfhg7EFRUzS3hzXz71AFNAggJ+cmS9amkzrq3
 4YEfUrL9ZK1IxQM1cdhdEFuOQbiecOw==
X-Received: by 2002:a05:622a:1819:b0:400:a9a4:8517 with SMTP id
 t25-20020a05622a181900b00400a9a48517mr17754258qtc.4.1688493591805; 
 Tue, 04 Jul 2023 10:59:51 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4/AxzCLZS210yn1AZ2mhjnSxtQMZ/9l2qP39Bp+Wr4byCgdHKG8XtD9eS98B7aBHJpp+NLYw==
X-Received: by 2002:a05:622a:1819:b0:400:a9a4:8517 with SMTP id
 t25-20020a05622a181900b00400a9a48517mr17754233qtc.4.1688493591479; 
 Tue, 04 Jul 2023 10:59:51 -0700 (PDT)
Received: from x1n (cpe5c7695f3aee0-cm5c7695f3aede.cpe.net.cable.rogers.com.
 [99.254.144.39]) by smtp.gmail.com with ESMTPSA id
 q9-20020a0cfa09000000b006364ae68f31sm5595668qvn.97.2023.07.04.10.59.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Jul 2023 10:59:51 -0700 (PDT)
Date: Tue, 4 Jul 2023 13:59:49 -0400
From: Peter Xu <peterx@redhat.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <ZKReFWNJSVcfhL6y@x1n>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-11-lingyu.liu@intel.com>
 <ZJMLHSq9rjGIVS4V@nvidia.com>
 <DS0PR11MB7529D62973DEE1848BB9146BC324A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <ZJwp6nam6/gI7Ru1@nvidia.com>
 <DS0PR11MB75295D41646A3F74BCED4323C329A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <BN9PR11MB5276AC6CC905A57A370AE48E8C2EA@BN9PR11MB5276.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <BN9PR11MB5276AC6CC905A57A370AE48E8C2EA@BN9PR11MB5276.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 05 Jul 2023 15:14:37 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688493595;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4OJPbC0BqQ+AD3fMLftREevsgU5BDaBo7zNsHHsEvsU=;
 b=GhKNYshijePubb3vtX/ime1T8WyvVa5drTaqVHMtBvLmWQ7J5fu+XXWHSxX/JSbmvAiliZ
 Ww2cBsOUUiP9WVbFiFBDKIJpLTDyyb+y/sUI8rc+hlJw8W5GBhWGCXx9az7y7hV0oDVr/f
 bHUK/CwtG7g3p7SyTStZmVuqx1MnvlM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GhKNYshi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V2 10/15] ice: save and
 restore TX queue head
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
Cc: "Burra, Phani R" <phani.r.burra@intel.com>, "Liu,
 Yi L" <yi.l.liu@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jason Gunthorpe <jgg@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 04, 2023 at 07:38:22AM +0000, Tian, Kevin wrote:
> > From: Liu, Yi L <yi.l.liu@intel.com>
> > Sent: Monday, July 3, 2023 8:54 PM
> > 
> > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > Sent: Wednesday, June 28, 2023 8:39 PM
> > >
> > > On Wed, Jun 28, 2023 at 08:11:07AM +0000, Liu, Yi L wrote:
> > >
> > > > > You can't call VFIO functions from a netdev driver. All this code
> > > > > needs to be moved into the varient driver.
> > > > >
> > > > > This design seems pretty wild to me, it doesn't seem too robust
> > > > > against a hostile VM - eg these DMAs can all fail under guest control,
> > > > > and then what?
> > > > >
> > > > > We also don't have any guarentees defined for the VFIO protocol about
> > > > > what state the vIOMMU will be in prior to reaching RUNNING.
> > > >
> > > > For QEMU, vIOMMU is supposed to be restored prior to devices per
> > > > the below patch. But indeed, there is no guarantee that all VMMs
> > > > will do the same as QEMU does.
> > >
> > > That doesn't seem consistent with how the kernel interface is defined
> > > to work, I wonder why it was done?
> > 
> > Add Peter.

Yi - I think I replied to your private email, I'm not 100% sure this is the
same thing asked?  I hope you received the email.

> > 
> > >
> > > Since it is 2017, I suppose it has to do with internal qemu devices?
> > 
> > Do you mean the devices emulated by QEMU?
> > 
> 
> This sounds counter-intuitive even for emulated devices. vIOMMU is
> involved only when the device wants to access guest memory. But
> by definition the RESUMING path should just restore the device to
> the point where it is stopped. Why would such restore create a
> dependency on vIOMMU state?

For why QEMU migrates vIOMMU earlier than PCI generic devices, I can try to
repeat here: IIRC it's because some device needs dma translations during
post_load(), I forgot which device and why, but it can make some sense to
me if recovering states of the pci device may need help from a translation.

If someone wants to know the details, one can just make vIOMMU prio lower
than pci devices and give it a shot and see what explodes first.

Thanks,

-- 
Peter Xu

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
