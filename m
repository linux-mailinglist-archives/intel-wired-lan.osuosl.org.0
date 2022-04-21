Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D07A509724
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Apr 2022 08:09:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B3CC8418D;
	Thu, 21 Apr 2022 06:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0yg5W03iha4J; Thu, 21 Apr 2022 06:09:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A235841B7;
	Thu, 21 Apr 2022 06:09:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F77E1BF343
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Apr 2022 06:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 26D1A41B41
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Apr 2022 06:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g5TUgRX1xwgn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Apr 2022 06:09:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 217AE41995
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Apr 2022 06:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650521339;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TvwZYEzGE28eFsMv32GXOw2P+ELmPfx1FLDUwPNPBUQ=;
 b=a43RB+oMmEHV3l4OkCofdOQebgFaVZpx/mxeyKWptctkTbZx89sWWFrICLs5UJC7fq5cRf
 0Fst3Dc5xfiEUQqWwCLgNfl6FetHG+JWqqPF1BEC4/PZJUTWY9gGeNK6EhF222GOgxQDTK
 6dzJEaPY2hXPvTHFWNp2iY1s/6jCk1k=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-433-cVR6gPhKOiKhLOalCY4_Ew-1; Thu, 21 Apr 2022 02:08:53 -0400
X-MC-Unique: cVR6gPhKOiKhLOalCY4_Ew-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 731023806650;
 Thu, 21 Apr 2022 06:08:52 +0000 (UTC)
Received: from ceranb (unknown [10.40.194.169])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7490B2024CB7;
 Thu, 21 Apr 2022 06:08:49 +0000 (UTC)
Date: Thu, 21 Apr 2022 08:08:48 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20220421080848.41bed123@ceranb>
In-Reply-To: <YmDn2ptpRHasOQag@unreal>
References: <20220420150300.1062689-1-ivecera@redhat.com>
 <YmDn2ptpRHasOQag@unreal>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix race during aux
 device (un)plugging
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
Cc: netdev@vger.kernel.org, mschmidt@redhat.com,
 open list <linux-kernel@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shiraz Saleem <shiraz.saleem@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 21 Apr 2022 08:12:58 +0300
Leon Romanovsky <leon@kernel.org> wrote:

> >  static struct iidc_auxiliary_drv *ice_get_auxiliary_drv(struct ice_pf *pf)
> >  {
> >  	struct auxiliary_device *adev;
> >  
> > +	BUG_ON(!mutex_is_locked(&pf->adev_mutex));  
> 
> Please don't add BUG_ON() in driver code.
> 
> I think that you are looking for lockdep_assert_held(&pf->adev_mutex).

Will fix.

I.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
