Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEEC241438
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Aug 2020 02:42:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 95E2E20366;
	Tue, 11 Aug 2020 00:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pms-E0yWTKfk; Tue, 11 Aug 2020 00:42:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D0A0C207EF;
	Tue, 11 Aug 2020 00:42:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC6861BF97F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 00:42:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BFB4620366
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 00:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ofwXCjmJbuBw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Aug 2020 00:42:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 96DAB2035E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 00:42:12 +0000 (UTC)
IronPort-SDR: utz20YXWmGnHvL49f1gZmkJHfX1pNNEj8ZBVt0R9d9SZ2dxJKLc8z88tFZ5OafCSsJ/k1rXRnv
 LXsqYyIqJSqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="153618092"
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="153618092"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 17:42:11 -0700
IronPort-SDR: jxs7zUfN9rKQS56UZYdWoH0xaLxMLA6dH29gYNVnnhA3R/wYrcKgjp0bjXU1FuVRjD8fjhj1Xo
 SX7QR4v2L6WA==
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="324610995"
Received: from gwclark-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.209.180.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 17:42:11 -0700
MIME-Version: 1.0
In-Reply-To: <CAKgT0UdvyU+xkESA5HaqS2acbXQMJDUGdchRM2J6QExEcjiSkQ@mail.gmail.com>
References: <20200810210832.34699-1-andre.guedes@intel.com>
 <20200810210832.34699-3-andre.guedes@intel.com>
 <CAKgT0UdvyU+xkESA5HaqS2acbXQMJDUGdchRM2J6QExEcjiSkQ@mail.gmail.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 10 Aug 2020 17:42:08 -0700
Message-ID: <159710652891.38166.5470520112400402456@gwclark-mobl2.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [PATCH 3/3] igc: Fix SRRCTL register setup
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Quoting Alexander Duyck (2020-08-10 15:56:31)
> > @@ -1869,6 +1866,7 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
> >                  * because each write-back erases this info.
> >                  */
> >                 rx_desc->read.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);
> > +               rx_desc->read.hdr_addr = 0;
> >
> >                 rx_desc++;
> >                 bi++;
> 
> If you are going to do this it would be better to replace the line
> that is setting the length to zero instead of just adding this line.
> That way you can avoid having to rewrite it. I only had bothered with
> clearing the length field as it was a 32b field, however if you are
> wanting to flush the full 64b then I would recommend doing it there
> rather than here.

Just to make sure I'm on the same page, do you mean to move this line to
patch 2/3, right?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
