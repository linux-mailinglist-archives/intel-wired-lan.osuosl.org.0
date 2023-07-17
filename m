Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55273756FBA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 00:23:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6723D60F4B;
	Mon, 17 Jul 2023 22:22:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6723D60F4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689632578;
	bh=WzM/Y8RU2eZFdokbU8lAFpL40s+2YA+IbYUnBqZUNLQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8mvCjjDBrXUIdWZIUSYrhJcEDP8rLYnz6VTYcIXot/FfwNX2Cb2Aetqb87wbs9cIq
	 14yWF1hERPDPXhTyj0Vbqa7FXqKUi+LbqF5JKg5Qq1B2MtlkCNMLdFK+JbVtwAAXGP
	 TVsRJwyD3XuwdOm7K6sckXmctuzyyDzqmzpxSrcG9WX+fNq6i9biFNbJ6spskoUg7Q
	 ExLWbhr8FivN0wln7jROv7bAjsXEnZWSnQjLaNToGTs6xuup1FHQS6gZgizkknaF+Z
	 NcMVSkoQOIBmsPLOn8dT4eVFgP6BVB/SRWEO9uNJlXgmpkaPyrfeLe/s7hKLCi7h/T
	 sgsR8QDgamriw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VPhWUvs9lW5H; Mon, 17 Jul 2023 22:22:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31C1E60669;
	Mon, 17 Jul 2023 22:22:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31C1E60669
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A6FFD1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 21:43:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BF73400FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 21:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BF73400FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HDBNZxYVt0qu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 21:43:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1345400AB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1345400AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 21:43:39 +0000 (UTC)
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-230-7WNM77XCO2ajDwKZhvqhag-1; Mon, 17 Jul 2023 17:43:37 -0400
X-MC-Unique: 7WNM77XCO2ajDwKZhvqhag-1
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-639ae879810so11562276d6.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 14:43:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689630217; x=1690235017;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aC1IIXf65GHEp2kMCcI2q32jkdDZfXQ4NeDoMesW7z8=;
 b=hRmfeCmvjBVTs2vM9dQ4FjdMgvBJV7uXbvrPOX5WyOfqjkQSeh9sZCFOyqpTu0oCDx
 wQi7If5MN4s632eDmNRTcEdZDrSt5Fe18UhgbV47QGEDO2oxyxJPVt5GdJk5UhrLoIH0
 9i6b9aGF6lUWv4/97J6L+1h8PhvOFaGTavcWdlj64L6WlleqvNgGGu9hVKKzKiKVGsaI
 kIMLxaIbc6NHmXZMvqSb4+ewCvtZgfkhezzfaWAhGSvj2Mqiz5RCd5zCndnY6gMSZwRt
 O+5WzGxmUUiNjtXF5hGI3akzrwHuCcGB6s+LYHTo6PRPwPFMRKcI07Ul8vIoWYQF9Ioj
 xBHQ==
X-Gm-Message-State: ABy/qLYZ4Ql3TcmkRT+JcDkB+H8VefmIU1GJTd1Np33a9uVw1WFaEP/4
 R6qoz4PBuH6anwfq3NEvw75ap2ixLnxEUnJ/GgHIW18tFCHysswC1RJZVOnKxI1pVzmHw2G23uV
 A6PFn6rq3U73Vp2xZJr2KaPfJdodYoQ==
X-Received: by 2002:a05:6214:5188:b0:5ed:c96e:ca4a with SMTP id
 kl8-20020a056214518800b005edc96eca4amr9705841qvb.1.1689630216823; 
 Mon, 17 Jul 2023 14:43:36 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFs5YQRAFS9refn9gxMTJtY5SLvTyGyFWbWSEP5wZeWww8UNLzTXRlHWqEGCii8NHJiP211pQ==
X-Received: by 2002:a05:6214:5188:b0:5ed:c96e:ca4a with SMTP id
 kl8-20020a056214518800b005edc96eca4amr9705824qvb.1.1689630216470; 
 Mon, 17 Jul 2023 14:43:36 -0700 (PDT)
Received: from x1n (cpe5c7695f3aee0-cm5c7695f3aede.cpe.net.cable.rogers.com.
 [99.254.144.39]) by smtp.gmail.com with ESMTPSA id
 d7-20020a0caa07000000b006360a5daf27sm198379qvb.127.2023.07.17.14.43.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Jul 2023 14:43:36 -0700 (PDT)
Date: Mon, 17 Jul 2023 17:43:34 -0400
From: Peter Xu <peterx@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <ZLW2BgWI+yx7qKaf@x1n>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-11-lingyu.liu@intel.com>
 <ZJMLHSq9rjGIVS4V@nvidia.com>
 <DS0PR11MB7529D62973DEE1848BB9146BC324A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <ZJwp6nam6/gI7Ru1@nvidia.com>
 <DS0PR11MB75295D41646A3F74BCED4323C329A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <BN9PR11MB5276AC6CC905A57A370AE48E8C2EA@BN9PR11MB5276.namprd11.prod.outlook.com>
 <ZKReFWNJSVcfhL6y@x1n> <ZKwpm1k+1hjN7oyE@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <ZKwpm1k+1hjN7oyE@nvidia.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 17 Jul 2023 22:22:51 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1689630218;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=aC1IIXf65GHEp2kMCcI2q32jkdDZfXQ4NeDoMesW7z8=;
 b=L06C9SBKIUN/ofq858W7Lpb2T2DTKAyL6Z7elGYdru92BEumEnH8TGfYheRedI1PclXqDV
 6JPPX4zTVTwNsOjKleLN+e+0lq13mQliirpoWyDBIZUGjj8svpfo0h409stXZGdqmTl9rS
 lP5g5WLY0NzflPkv9r+79kmWR+Hvmjo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=L06C9SBK
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
Cc: "Tian, Kevin" <kevin.tian@intel.com>, "Liu, Yi L" <yi.l.liu@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Burra,
 Phani R" <phani.r.burra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 10, 2023 at 12:54:03PM -0300, Jason Gunthorpe wrote:
> On Tue, Jul 04, 2023 at 01:59:49PM -0400, Peter Xu wrote:
> 
> > > This sounds counter-intuitive even for emulated devices. vIOMMU is
> > > involved only when the device wants to access guest memory. But
> > > by definition the RESUMING path should just restore the device to
> > > the point where it is stopped. Why would such restore create a
> > > dependency on vIOMMU state?
> > 
> > For why QEMU migrates vIOMMU earlier than PCI generic devices, I can try to
> > repeat here: IIRC it's because some device needs dma translations during
> > post_load(), I forgot which device and why, but it can make some sense to
> > me if recovering states of the pci device may need help from a translation.
> 
> Well, it has nothing to do with VFIO given the timeframe, and if
> internal qemu devices are doing weird things like this it also
> suggests they have problems with P2P as well.
> 
> The VFIO definition we have is that a device may not do any DMA while in
> resuming/resuming_p2p, it is only allowed to initiate DMA once it
> fully reaches running.
> 
> Obviously we have to setup the vIOMMU before going to running.
> 
> The internal qemu devices must follow this definition as well or they
> are not P2P compatible.
> 
> About the only exception I could think is if some internal devices was
> caching translations for some purpose, but it really should setup that
> caching at entry to running..

Yes it's something like that which is a pure translation request, rather
than doing a real DMA, as far as I remember.  It does sound fine to
postpone that into a vm state change handler to me, but worth checking when
someone really works on it, and also whether it's feasible - e.g. hopefully
only a few devices need to work that around.

It may boil down to why we need to avoid migrating vIOMMU before other
devices (which I am still unsure about..), and which way is easier.

Thanks,

-- 
Peter Xu

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
