Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 488847583AA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 19:42:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D9F981EAE;
	Tue, 18 Jul 2023 17:42:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D9F981EAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689702145;
	bh=PjnK3gYOjyq60Tmub5mdtlX+gqbFhdKqNU56DNyUH3A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=91nQUdgN9H309oMQEYD6IugUZztwuChTCIEtxRABgzSZrPhaz5kU+JWZz9rV7rBDO
	 X89RpUcUt1WI8fpFFugjX8t17GWNtMgJll7SkFVKt0SG8USeDxV3m+kXIYbtOpy/00
	 bcE83Jiv3e/Ec6pFaZVYaX/VYWXeIWgv3UVEofBWhFCTxS1s1DSTTAQ3BH7cCaQog4
	 ADBnDwXFI6tOH16cpheflOlaqzuN9lnIbNahEWp7RErlf/XdxReFOQcxbnCQGPkM2a
	 zoE2tZyrVYfqYKX/JkGSzbdhcd/0aCe809d5C6AqKUGYHrriRsBzAPpTIKSz95SxkC
	 Ej6bxKNF8KbHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rhpLdS1g08kK; Tue, 18 Jul 2023 17:42:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2247981E82;
	Tue, 18 Jul 2023 17:42:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2247981E82
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 169721BF333
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 17:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E1F6360FDD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 17:36:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1F6360FDD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wWvVogi6au1N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 17:36:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0597B60FDC
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0597B60FDC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 17:36:21 +0000 (UTC)
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-541-FISzloyGME6-mqghDu56cQ-1; Tue, 18 Jul 2023 13:36:19 -0400
X-MC-Unique: FISzloyGME6-mqghDu56cQ-1
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-635e2618aaeso10609676d6.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 10:36:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689701779; x=1690306579;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mvPVjjNECoRFNO48oXbxAOJbDMaOxAF6tNeJiwWQlBM=;
 b=kSYlnfMdsENkKoRg3/xK074GYhnPorEbsxpE88/XqSPOq+zhJO2UK1rYGfpmIyO3XR
 9tFvdmPEeWBqURI4bKXvLZ87qjibnPRs3sljI/Uzz1f5o0JsWxknX0Cn9AMw4yHhKXLY
 n0WRDQjBeVmcpRBXTVErP1e7H0v7PapbUh/J8kEHr/POPDw2/jKn85vJ3p1cfPgBg9Xm
 ibnkQ9VC2aV9koQcFF0QAPNlqD52lApA1xHKTokyQS0wxoBDvxNUI5i83+XfHxYAV9rr
 DfomRRHNKwDin3zE2kH1qS/VZzmSkORe4f0DXlYyzRJTW2bN1Z/FlkzUk3cAvoRfreWR
 8iug==
X-Gm-Message-State: ABy/qLb/K/dY6sz0ErQtUnOjVWkugy52Mp6XD1SMdQ9W22v951w6+eMs
 0fC9RCTE9014eWc2NBzsLPll7DJ+ZeXx3zodNAPzOaBscs8wLggnGKaOViEvHykkGIjkihpL3mg
 fqRfhvhm1JoJBPJrR8DtpbE5ex9XgOw==
X-Received: by 2002:a05:6214:2347:b0:635:ec47:bfa4 with SMTP id
 hu7-20020a056214234700b00635ec47bfa4mr352824qvb.4.1689701779085; 
 Tue, 18 Jul 2023 10:36:19 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFhsaoNoEEZoCH/skqMrd/Xxs9L3XtXbc866bnnm0z/uTuX8dGJc6EUVvzB6WVh1uVVpbZnCQ==
X-Received: by 2002:a05:6214:2347:b0:635:ec47:bfa4 with SMTP id
 hu7-20020a056214234700b00635ec47bfa4mr352807qvb.4.1689701778749; 
 Tue, 18 Jul 2023 10:36:18 -0700 (PDT)
Received: from x1n (cpe5c7695f3aee0-cm5c7695f3aede.cpe.net.cable.rogers.com.
 [99.254.144.39]) by smtp.gmail.com with ESMTPSA id
 g1-20020a37e201000000b007681fc2999bsm737311qki.54.2023.07.18.10.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Jul 2023 10:36:18 -0700 (PDT)
Date: Tue, 18 Jul 2023 13:36:17 -0400
From: Peter Xu <peterx@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <ZLbNkZ5a2XVrKOX9@x1n>
References: <20230621091112.44945-11-lingyu.liu@intel.com>
 <ZJMLHSq9rjGIVS4V@nvidia.com>
 <DS0PR11MB7529D62973DEE1848BB9146BC324A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <ZJwp6nam6/gI7Ru1@nvidia.com>
 <DS0PR11MB75295D41646A3F74BCED4323C329A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <BN9PR11MB5276AC6CC905A57A370AE48E8C2EA@BN9PR11MB5276.namprd11.prod.outlook.com>
 <ZKReFWNJSVcfhL6y@x1n> <ZKwpm1k+1hjN7oyE@nvidia.com>
 <ZLW2BgWI+yx7qKaf@x1n> <ZLayEkkaFgshJuDx@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <ZLayEkkaFgshJuDx@nvidia.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Approved-At: Tue, 18 Jul 2023 17:42:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1689701780;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=mvPVjjNECoRFNO48oXbxAOJbDMaOxAF6tNeJiwWQlBM=;
 b=iKzE9vXrDxZzdXMOvBVBXV/tZhROewwIcwyN81L2hxacN6yzsstt0MPQtJGdbCAjApkJRh
 Yb58PDm2HysNpDXNhspSUrIRGFmqI3mI2uxo/dROZWBoBesZ7sZlViXBkgbVWtmwQE2h8L
 Z889h5jkYko69R6a1c6Ug2R2T3Qg/Es=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=iKzE9vXr
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

On Tue, Jul 18, 2023 at 12:38:58PM -0300, Jason Gunthorpe wrote:
> On Mon, Jul 17, 2023 at 05:43:34PM -0400, Peter Xu wrote:
> 
> > It may boil down to why we need to avoid migrating vIOMMU before other
> > devices (which I am still unsure about..), and which way is easier.
> 
> The statement is just that the kernel cannot assume anything about
> vIOMMU ordering and people can't make VFIO migration drivers that
> assume the vIOMMU is setup before the entry to running.
> 
> That qemu enforces this ordering today for pointless reasons is
> interesting, but it should not leak into becoming the ABI contract of
> the kernel.

I wouldn't say it's pointless because we did that obviously with a reason.
But I agree it should be qemu internal and shouldn't even be exposed unless
extremely necessary.

-- 
Peter Xu

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
