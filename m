Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E74674352
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 21:10:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40BC4409B5;
	Thu, 19 Jan 2023 20:10:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40BC4409B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674159049;
	bh=CF/UWX3DNHNYlE5Qa7L2WS/+yoneHP+KzqZIGiQlYMQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sVop5OAViJOg5B54ZGPb6Fds9gxKNzp76NKjYkgjrWT86fUGKQIPJOrOIv+Fz02cQ
	 9HJe4e3jkwvSZK48u1NZBxzx6p5VrzsaLm/d75ejKD+5TtnvURuZyWGy+tKFI7kDtJ
	 pZFRuqWkLww2Ru4cXM3nkfJQ6e8QxVxMyaB6QOkKsTiuHhe8Rnm22YJYoiBiC63BKx
	 +B1cHyZTct0s/p3ZrCMiQHc57FfdCIX75FSh5pCeo3UNKHIRekYzr5bAcVhoWhSGoU
	 afdLy7lihlSQOXJxH0QndNGl2tNbLfDdmE1XOh+yRNyhzhZkwhiUmwpDzSNgjpOn3O
	 CMW98FSPVoUjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uBnkSNTEmvVh; Thu, 19 Jan 2023 20:10:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21E5F409B0;
	Thu, 19 Jan 2023 20:10:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21E5F409B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B7551BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 20:08:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 153CF410D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 20:08:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 153CF410D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QoDDRoBvUfEh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 20:08:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9765414C9
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C9765414C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 20:08:41 +0000 (UTC)
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-480-qC97NcFBMm-DmyiRiK5k-w-1; Thu, 19 Jan 2023 15:08:39 -0500
X-MC-Unique: qC97NcFBMm-DmyiRiK5k-w-1
Received: by mail-pg1-f199.google.com with SMTP id
 g7-20020a636b07000000b004d1c5988521so1486962pgc.22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 12:08:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PggIzfygRD9QgTxjyyjnr/C8VTVpVGfqEDvg752Zp0M=;
 b=aRV4jMEKcgTxPQQc/v/wAQuWgwh40vp+PLYA9PKKUMlXnQhX3Kld/AR7xNWW++OvzO
 gI9y63LlTdf+22giyHbwru06gyhIYLMD3uD0YTIvjdZbFpfWnbN+Aj8DTjxMWD3ksCAA
 faLyvBSncsjZiuDCjaw7xwJU6Y8BVdv3bBHtMcSEkKdznPBn/3JGfqvrXiDcdMDtlApY
 Z/jNV41Vi9rTUxOTxjGld3w4ch5ZmJtfapb8lflBlxI9SqBacAVQEZcSuKYVbISjv1/Z
 rF8uiKxKinXgmVZEmVk8XLiM5XclA3fYoYCd05swYr+PQHEgIt0aEmtsleTCHYFup9hr
 2yVQ==
X-Gm-Message-State: AFqh2koanSkCi5CpRESD2mfwIWH2WEX9vyhoFhgYXD4mef1PwYizGAFX
 7Q1HWR8wgwxnzE6OtJrwJ7KVLnZL10xywXb2DrLAmY5H7I08kZvVlGY1Cdfaux3oyGEtmKwVatN
 ZMzo2+oaqS9DLwY9ilYFTXFM2ic3tEh/TQ/01vaUYhT3ywQ==
X-Received: by 2002:a17:90b:187:b0:226:f8dc:b230 with SMTP id
 t7-20020a17090b018700b00226f8dcb230mr1387630pjs.227.1674158918011; 
 Thu, 19 Jan 2023 12:08:38 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtINLEsUn4AGw4oV584OPWe9mWjhWHelFifskuQ1poGCUHOYupjz59bzO972Ny1TiIOn7Hlp/JYMe1BV5mDjR0=
X-Received: by 2002:a17:90b:187:b0:226:f8dc:b230 with SMTP id
 t7-20020a17090b018700b00226f8dcb230mr1387616pjs.227.1674158917773; Thu, 19
 Jan 2023 12:08:37 -0800 (PST)
MIME-Version: 1.0
References: <20230117181533.2350335-1-neelx@redhat.com>
 <2bdeb975-6d45-67bb-3017-f19df62fe7af@intel.com>
 <CACjP9X-hKf8g2UqitV8_G7WQW7u6Js5EsCNutsAMA4WD7YYSwA@mail.gmail.com>
 <42e74619-f2d0-1079-28b1-61e9e17ae953@intel.com>
 <CACjP9X8SHZAd_+HSLJCxYxSRQuRmq3r48id13r17n2ehrec2YQ@mail.gmail.com>
 <820cf397-a99e-44d4-cf9e-3ad6876e4d06@intel.com>
 <CACjP9X_v9AFVNRgz2a-qJce+ZqR0TzRzyd4gPFufESoRXmCdJQ@mail.gmail.com>
 <423a29e2-886d-2c41-16d4-a8fca5537c2e@intel.com>
In-Reply-To: <423a29e2-886d-2c41-16d4-a8fca5537c2e@intel.com>
From: Daniel Vacek <neelx@redhat.com>
Date: Thu, 19 Jan 2023 21:08:01 +0100
Message-ID: <CACjP9X-Ab76We7SVie7rpyykvKjiPuNktWeVa9y3Wb6i6oo4mg@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Thu, 19 Jan 2023 20:10:43 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1674158920;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PggIzfygRD9QgTxjyyjnr/C8VTVpVGfqEDvg752Zp0M=;
 b=eJSV+lBKb0BrTqp7ePQaetMiF4Hn8xErHrzIdDk3sA7jIoWYpPJRBpMBQn1qT+45VM1zhV
 fykm9tjU83RAdp+DFW3fNRv6ALbcbN2FBoqCgDVgAQwX1p6GcVO8cbTrx8WpWrVxFvpAju
 zqxB1w4/dfKEww8WHv4mgXBB1JVKrKc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=eJSV+lBK
Subject: Re: [Intel-wired-lan] [PATCH] ice/ptp: fix the PTP worker retrying
 indefinitely if the link went down
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Siddaraju <siddaraju.dh@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 19, 2023 at 8:25 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
> On 1/19/2023 1:38 AM, Daniel Vacek wrote:
> > On Wed, Jan 18, 2023 at 11:22 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
> >> On 1/18/2023 2:11 PM, Daniel Vacek wrote:
> >>> On Wed, Jan 18, 2023 at 9:59 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
> >>>> On 1/18/2023 7:14 AM, Daniel Vacek wrote:
> >>>> 1) request tx timestamp
> >>>> 2) timestamp occurs
> >>>> 3) link goes down while processing
> >>>
> >>> I was thinking this is the case we got reported. But then again, I'm
> >>> not really experienced in this field.
> >>>
> >>
> >> I think it might be, or at least something similar to this.
> >>
> >> I think that can be fixed with the link check you added. I think we
> >> actually have a copy of the current link status in the ice_ptp or
> >> ice_ptp_tx structure which could be used instead of having to check back
> >> to the other structure.
> >
> > If you're talking about ptp_port->link_up that one is always false no
> > matter the actual NIC link status. First I wanted to use it but
> > checking all the 8 devices available in the dump data it just does not
> > match the net_dev->state or the port_info->phy.link_info.link_info
> >
> > crash> net_device.name,state 0xff48df6f0c553000
> >   name = "ens1f1",
> >   state = 0x7,    // DOWN
> > crash> ice_port_info.phy.link_info.link_info 0xff48df6f05dca018
> >   phy.link_info.link_info = 0xc0,    // DOWN
> > crash> ice_ptp_port.port_num,link_up 0xff48df6f05dd44e0
> >   port_num = 0x1
> >   link_up = 0x0,    // False
> >
> > crash> net_device.name,state 0xff48df6f25e3f000
> >   name = "ens1f0",
> >   state = 0x3,    // UP
> > crash> ice_port_info.phy.link_info.link_info 0xff48df6f070a3018
> >   phy.link_info.link_info = 0xe1,    // UP
> > crash> ice_ptp_port.port_num,link_up 0xff48df6f063184e0
> >   port_num = 0x0
> >   link_up = 0x0,    // False
> >
> > crash> ice_ptp_port.port_num,link_up 0xff48df6f25b844e0
> >   port_num = 0x2
> >   link_up = 0x0,    // False even this device is UP
> > crash> ice_ptp_port.port_num,link_up 0xff48df6f140384e0
> >   port_num = 0x3
> >   link_up = 0x0,    // False even this device is UP
> > crash> ice_ptp_port.port_num,link_up 0xff48df6f055044e0
> >   port_num = 0x0
> >   link_up = 0x0,    // False even this device is UP
> > crash> ice_ptp_port.port_num,link_up 0xff48df6f251cc4e0
> >   port_num = 0x1
> >   link_up = 0x0,
> > crash> ice_ptp_port.port_num,link_up 0xff48df6f33a9c4e0
> >   port_num = 0x2
> >   link_up = 0x0,
> > crash> ice_ptp_port.port_num,link_up 0xff48df6f3bb7c4e0
> >   port_num = 0x3
> >   link_up = 0x0,
> >
> > In other words, the ice_ptp_port.link_up is always false and cannot be
> > used. That's why I had to fall back to
> > hw->port_info->phy.link_info.link_info
> >
>
> Hmm. We call ice_ptp_link_change in ice_link_event which is called from
> ice_handle_link_event...
>
> In ice_link_event, a local link_up field is set based on
> phy_info->link_info.link_info & ICE_AQ_LINK_UP
>
> What kernel are you testing on? Does it include 6b1ff5d39228 ("ice:
> always call ice_ptp_link_change and make it void")?
>
> Prior to this commit the field was only valid for E822 devices, but I
> fixed that as it was used for other checks as well.
>
> I am guessing that the Red Hat kernel you are using lacks several of
> these clean ups and fixes.

Yeah, makes perfect sense. We don't have that commit in 8.4. All the data
I have and present here are from 4.18.0-305.49.1.rt7.121.el8_4.x86_64

> For the current code in the net-next kernel I believe we can safely use
> the ptp_port->link_up field.

I'll fix that up and drop you a v3. Thank you for the review.

--nX

> Thanks,
> Jake

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
