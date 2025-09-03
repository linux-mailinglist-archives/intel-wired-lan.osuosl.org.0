Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD524B419A1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 11:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B2BC614BD;
	Wed,  3 Sep 2025 09:11:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eQEg4kfiTDVD; Wed,  3 Sep 2025 09:11:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9C5C614F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756890698;
	bh=CSpwFETYc1LsmkYCDIJ6WtqhZ/SKBwnx6a6qoeAYkd0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WjObCAnlWMyIfA2vg1UFwYj/VVcNMbT+hfVk6AsSMVprzqZdbWmotwoohY7veiLje
	 Flivw1MuFcmwvTBEWaCXTBYaUXUhAvx4BdwqHz8iyllaXC4DTo7J6OysxQ3AAhIOh3
	 R1UpS+Xr4v5BhjZAXR26DhVIch/+rXe3Ju2JYMFotrYHXU9fEwi2hnVG0ZO9UhT0hK
	 Jmep+3jngW3MUeU1scAFFUOEFyz93yw9OnwnMu3wSpAOUBviBv6smnSs0xl2+0IASy
	 AztzyvXWXnyNuejXNdQjbPKjjqoTvk0cLVGRCRu3IoeKr3L7T+C5j5gweDkC/gE1I2
	 DDn3HbRA5f4tg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9C5C614F5;
	Wed,  3 Sep 2025 09:11:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CFC4B10E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 09:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B680140E77
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 09:11:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8ZHFM4-JAKhh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 09:11:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.241.56.172;
 helo=mout-p-202.mailbox.org; envelope-from=listout@listout.xyz;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D01E440EF5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D01E440EF5
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D01E440EF5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 09:11:35 +0000 (UTC)
Received: from smtp202.mailbox.org (smtp202.mailbox.org
 [IPv6:2001:67c:2050:b231:465::202])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4cGxgQ1CGXz9tgY;
 Wed,  3 Sep 2025 11:11:30 +0200 (CEST)
Date: Wed, 3 Sep 2025 14:41:21 +0530
From: Brahmajit Das <listout@listout.xyz>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>, 
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 "davem@davemloft.net" <davem@davemloft.net>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Message-ID: <dyfxrfwy3qulor3sgfuuzxpx7jc4mbot4b7ci5marqlyxdusp4@uvf5fknefnfb>
References: <e13abc99-fb35-4bc4-b110-9ddfa8cdb442@linux.dev>
 <20250902072422.603237-1-listout@listout.xyz>
 <IA3PR11MB8986925DD6DBF282C160AADBE501A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8986925DD6DBF282C160AADBE501A@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Rspamd-Queue-Id: 4cGxgQ1CGXz9tgY
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=listout.xyz; s=MBO0001; t=1756890690;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CSpwFETYc1LsmkYCDIJ6WtqhZ/SKBwnx6a6qoeAYkd0=;
 b=tIOFxGBEsx/Ysut7ESJ/S2maB5P1TD/vz4VTBf1sEsm7W5oTE29ecWZo+CkS3sG5/VBVQQ
 RvoJ/CxZKvEyaSK4QLIkFq8fzgoxkyONbY5IkQq1EuKoRTuov+tUtItinUGjiOMOzUxv3m
 TC45BwXorLe50DwT1kQTUZ2si/Hnb1wfJ3648qohGeEluH2lwRgybx/aDutFiO5NHkXb82
 04aWjd4ZAFWIS9ygBW6p8Q8ZeRjUg2uq3VJOkmvCP/++n6B6uoa+P6uZRf5L4H5pD4qvB6
 p9r2YNZP1U2aBC1CNV79Is+qC8XzEJs9QrjQkE+sLewhDbKaaKz81Happt8Edg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=listout.xyz
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=listout.xyz header.i=@listout.xyz header.a=rsa-sha256
 header.s=MBO0001 header.b=tIOFxGBE
X-Mailman-Original-Authentication-Results: outgoing_mbo_mout; dkim=none;
 spf=pass (outgoing_mbo_mout: domain of listout@listout.xyz designates
 2001:67c:2050:b231:465::202 as permitted sender)
 smtp.mailfrom=listout@listout.xyz
Subject: Re: [Intel-wired-lan] [PATCH v2] net: intel: fm10k: Fix parameter
 idx set but not used
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 03.09.2025 06:08, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Brahmajit Das
> > Sent: Tuesday, September 2, 2025 9:24 AM
> > To: vadim.fedorenko@linux.dev
> > Cc: andrew+netdev@lunn.ch; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; davem@davemloft.net; intel-wired-
> > lan@lists.osuosl.org; kuba@kernel.org; listout@listout.xyz;
> > netdev@vger.kernel.org; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>
> > Subject: [Intel-wired-lan] [PATCH v2] net: intel: fm10k: Fix parameter
> > idx set but not used
> > 
> > Variable idx is set in the loop, but is never used resulting in dead
> > code. Building with GCC 16, which enables
> > -Werror=unused-but-set-parameter= by default results in build error.
> > This patch removes the idx parameter, since all the callers of the
> > fm10k_unbind_hw_stats_q as 0 as idx anyways.
> > 
> > Suggested-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> > Signed-off-by: Brahmajit Das <listout@listout.xyz>
> > ---
> > changes in v2:
> > 	- Removed the idx parameter, since all callers of
> > 	fm10k_unbind_hw_stats_q passes idx as 0 anyways.
> > ---
> >  drivers/net/ethernet/intel/fm10k/fm10k_common.c | 5 ++---
> >  drivers/net/ethernet/intel/fm10k/fm10k_common.h | 2 +-
> >  drivers/net/ethernet/intel/fm10k/fm10k_pf.c     | 2 +-
> >  drivers/net/ethernet/intel/fm10k/fm10k_vf.c     | 2 +-
> >  4 files changed, 5 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_common.c
> > b/drivers/net/ethernet/intel/fm10k/fm10k_common.c
> > index f51a63fca513..1f919a50c765 100644
> > --- a/drivers/net/ethernet/intel/fm10k/fm10k_common.c
> > +++ b/drivers/net/ethernet/intel/fm10k/fm10k_common.c
> > @@ -447,17 +447,16 @@ void fm10k_update_hw_stats_q(struct fm10k_hw
> > *hw, struct fm10k_hw_stats_q *q,
> >  /**
> >   *  fm10k_unbind_hw_stats_q - Unbind the queue counters from their
> > queues
> >   *  @q: pointer to the ring of hardware statistics queue
> > - *  @idx: index pointing to the start of the ring iteration
> >   *  @count: number of queues to iterate over
> >   *
> >   *  Function invalidates the index values for the queues so any
> > updates that
> >   *  may have happened are ignored and the base for the queue stats is
> > reset.
> >   **/
> The kernel-doc comment still mentions @idx.
> Everything else if fine.
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> 
Hi Aleksandr, can you please point out how I can remove the kernel-doc
comment. I thought removing the line
	@idx: index pointing to the start of the ring iteration
from fm10k_common.c would do that.

I'm open to sending in a v3 with any changes required.
> > -void fm10k_unbind_hw_stats_q(struct fm10k_hw_stats_q *q, u32 idx, u32
> > count)
> > +void fm10k_unbind_hw_stats_q(struct fm10k_hw_stats_q *q, u32 count)
> >  {
> >  	u32 i;
> > 
> > -	for (i = 0; i < count; i++, idx++, q++) {
> > +	for (i = 0; i < count; i++, q++) {
> >  		q->rx_stats_idx = 0;
> >  		q->tx_stats_idx = 0;
> >  	}
> 
> ...

-- 
Regards,
listout
