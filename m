Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D16377ECA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 10:57:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77A2560906;
	Mon, 10 May 2021 08:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3qXhJuJp8Qf4; Mon, 10 May 2021 08:57:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7680C6078A;
	Mon, 10 May 2021 08:57:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A09C11BF423
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 08:57:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B9DA6078A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 08:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UXg0EShQMSXn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 08:57:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8ECDF60703
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 08:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620637064;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yZZqhl1lPZ55ZI62hYWzaYM8RnSN2emKsTAUPinh/Kg=;
 b=IPJ1SSkpMw6SoC/dm1NvegSo5Gz9gFD60FiU4jcwrd/X3iGKhGNJ0GV3wjPUC8tDRUCCJa
 lBdffRgybTP8812pKg9armR7s2Ug8qROgWROIlOJ73QMvPasCXJwjxkweDMeymyfI67Iqo
 Sl5YLrRfe0JI6N/NZT1SqTze7Ai/WFc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-535-zET4am8tP2erlHUFmfIydg-1; Mon, 10 May 2021 04:57:40 -0400
X-MC-Unique: zET4am8tP2erlHUFmfIydg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9740219251A1;
 Mon, 10 May 2021 08:57:38 +0000 (UTC)
Received: from carbon (unknown [10.36.110.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 72EE35D765;
 Mon, 10 May 2021 08:57:29 +0000 (UTC)
Date: Mon, 10 May 2021 10:57:28 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20210510105728.2eac4666@carbon>
In-Reply-To: <CAJ8uoz0Pgfn8kai34_MFGYv3m7c24bpo4DhjZ8oLgd4zaGMWsg@mail.gmail.com>
References: <20210423100446.15412-1-magnus.karlsson@gmail.com>
 <75d0a1d13a755bc128458c0d43f16d54fe08051e.camel@intel.com>
 <CAJ8uoz0Pgfn8kai34_MFGYv3m7c24bpo4DhjZ8oLgd4zaGMWsg@mail.gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: Re: [Intel-wired-lan] [PATCH intel-net 0/5] i40e: ice: ixgbe:
 ixgbevf: igb: add correct exception tracing for XDP
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>, brouer@redhat.com, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 10 May 2021 08:06:00 +0200
Magnus Karlsson <magnus.karlsson@gmail.com> wrote:

> On Sat, May 8, 2021 at 12:58 AM Nguyen, Anthony L
> <anthony.l.nguyen@intel.com> wrote:
> >
> > On Fri, 2021-04-23 at 12:04 +0200, Magnus Karlsson wrote:  
> > > Add missing exception tracing to XDP when a number of different errors
> > > can occur. The support was only partial. Several errors where not
> > > logged which would confuse the user quite a lot not knowing where and
> > > why the packets disappeared.
> > >
> > > This patch set fixes this for all Intel drivers with XDP support.
> > >
> > > Thanks: Magnus  
> >
> > This doesn't apply anymore with the 5.13 patches. It looks like your
> > "optimize for XDP_REDIRECT in xsk path" patches are conflicting with
> > some of these. Did you want to rework them?  
> 
> I will rebase them and resubmit.

Thanks for working on this Magnus, highly appreciated.  This should
help end-users troubleshoot these kind of 'exception' packet drops.

We have people that will look at updating the sample/bpf/ programs
(that does XDP redirect) to report on these exception errors/drops.

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
