Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 607DA672D3F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 01:09:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47C38610BF;
	Thu, 19 Jan 2023 00:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47C38610BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674086976;
	bh=+9ZWxKanB2o2UTPVvr4myQ92SQZgEzYAqW6oo1xbhOs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BvnSAIhXx7dLrL3Zg255qyAZiNb4Iv9yssm4kV0znbaNnZ0mQRGybZFLKRo/PN3vf
	 Bb4kVxuV6tbj5NCpVNaTquTs/oOJVbrSSLxKDvOOSoakU+1HxgWBl6U+PvspL6IYbs
	 irQMHO45P5l35YDtgtfpTwU7wAnxjp3P4XWmHyPX8lW17VN0p4n5/nwAgkVCu099fH
	 lBT8FjdK/sbDSXJgXnvYELCIjjVKj7BQmFBtYHmCtnxomzFxPMGc4cLfA8LBWQle6e
	 NkZtn9/F+ghqeOlcKfHd0QLNP/cOpwO+GjFs11fQrxHQvn0OHnCavy+HNg14Zfh6pr
	 pGHSx/omYLa/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j52U-TWf3ygU; Thu, 19 Jan 2023 00:09:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C2C56108B;
	Thu, 19 Jan 2023 00:09:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C2C56108B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E8601BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 22:12:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC3D1821B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 22:12:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC3D1821B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kz8yJJlLBmji for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 22:12:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03469821AE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03469821AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 22:12:04 +0000 (UTC)
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-619-25R-d2eDMP6lx4UynxQ54w-1; Wed, 18 Jan 2023 17:12:01 -0500
X-MC-Unique: 25R-d2eDMP6lx4UynxQ54w-1
Received: by mail-pf1-f200.google.com with SMTP id
 u3-20020a056a00124300b0056d4ab0c7cbso21186pfi.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 14:12:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZMEMrcYWxCYgncCZ7gZI9FW1ZAN3xqpELmriu9FkXc0=;
 b=sHCqfjHQnnfSnKDRVykRWhx4dFhJ7id9P3A61INdWOcifNDCa/WXKmCKHQppqBew8c
 L6ZpwIoVXEj6SMGurVwM5OyVKZqFkjZ3snch+ahkNR+7EFvKhhM92nCHjdRQHGYXK7Je
 cX0oWS2KijQuGRu5AAnETVVX38mg9LvO08WOuLCg159eLO37tu/R7aTW0z4DN33r/Qgi
 9qp6RXeA+Gh/UkbC8jUH8nyscbUjTHlcod4rkwBH41ga1/mVxO8AYZ4vpPfpbTB3GJ1O
 4HLQtHX4nStF2xq6sxWvY3UvqTisH2OIU+HQsRE+2rjK1cFhEtSfabV3O5B7I8+BTzqi
 P49Q==
X-Gm-Message-State: AFqh2kqK+4N/vPUMcu7hQU+Fbs0RryLcfJuwRiw7w8n8LgJcS++AZcig
 BJFv+616/6z4GCc+PYA+vo/ky19zetWmReCpm8d0wb8rAIYnOsRWmJipk1eqhrm+xOQAkTdd4++
 1Bp7s0N1BKF6gcOLv6/kpBYFyRArWepim4QNDUVVTWuF/zA==
X-Received: by 2002:a17:90a:bd8b:b0:229:3b43:a31f with SMTP id
 z11-20020a17090abd8b00b002293b43a31fmr1010112pjr.81.1674079920393; 
 Wed, 18 Jan 2023 14:12:00 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsEVBmBylWpQyn2dcYBw+l/HGBhJWmGomA3c22HZNKZfJ0OUa8lD0ANX47rTRzPNb7JB63lpkyMuZfIjLQXNyI=
X-Received: by 2002:a17:90a:bd8b:b0:229:3b43:a31f with SMTP id
 z11-20020a17090abd8b00b002293b43a31fmr1010097pjr.81.1674079920131; Wed, 18
 Jan 2023 14:12:00 -0800 (PST)
MIME-Version: 1.0
References: <20230117181533.2350335-1-neelx@redhat.com>
 <2bdeb975-6d45-67bb-3017-f19df62fe7af@intel.com>
 <CACjP9X-hKf8g2UqitV8_G7WQW7u6Js5EsCNutsAMA4WD7YYSwA@mail.gmail.com>
 <42e74619-f2d0-1079-28b1-61e9e17ae953@intel.com>
In-Reply-To: <42e74619-f2d0-1079-28b1-61e9e17ae953@intel.com>
From: Daniel Vacek <neelx@redhat.com>
Date: Wed, 18 Jan 2023 23:11:23 +0100
Message-ID: <CACjP9X8SHZAd_+HSLJCxYxSRQuRmq3r48id13r17n2ehrec2YQ@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Thu, 19 Jan 2023 00:09:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1674079923;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZMEMrcYWxCYgncCZ7gZI9FW1ZAN3xqpELmriu9FkXc0=;
 b=SjA+O/j/B90caiKtZLGm7wbr5y7v8rXE2de4aj28+IrgP7u+MIeiZEIxCa6Bnk20Y+G2Cg
 VSUh0bz5xLBI7rsh6po9y7BbeP2EgfEpVTvfAZiuhptAugXEdiU1x5SvEO6zoOp8GJ4rvg
 ypVXPbdO+ZfA/cJvUgz5r4zaGA7TYi8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=SjA+O/j/
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

On Wed, Jan 18, 2023 at 9:59 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
> On 1/18/2023 7:14 AM, Daniel Vacek wrote:
> > On Tue, Jan 17, 2023 at 7:47 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
> >>
> >> At a minimum I think I would only set drop_ts but not not goto skip_ts_read.
> >
> > IIUC, that would still fail to clear the tx->in_use bit in case ice_read_phy_tstamp()
> > returns with error. It would only work for the other case where no error is
> > returned but rather the returned &raw_tstamp is invalid. I'll send a v2 of
> > this fix trying to address the goto concern.
> >
>
> Please re-send the patch with the goto concern addressed. (only set
> drop_ts, and still read the timestamp just in case and make sure that if
> the read function fails while drop_ts is set we still drop the ts).

Just in case it got lost I did send the patch here:

https://lore.kernel.org/intel-wired-lan/20230118161727.2485457-1-neelx@redhat.com/

But unfortunately I misplaced the --in-reply-to header with --reply-to one :-(
Hopefully it arrived to you safely.

> I believe that alleviates my concerns regarding the potential link down
> race with a completed timestamp above.
>
> We also should already be preventing requesting new timestamps while
> link is down so that should be sufficient to combine with this and cover
> the three flows:
>
> 1) request tx timestamp
> 2) link down
> 3) timestamp never occurs
>
> 1) request tx timestamp
> 2) timestamp occurs
> 3) link goes down while processing

I was thinking this is the case we got reported. But then again, I'm
not really experienced in this field.

--nX

> 1) link down
> 2) request tx timestamp rejected
>
> Thanks!
>
> -Jake

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
