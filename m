Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DC2934A9A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2024 10:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43E85405C2;
	Thu, 18 Jul 2024 08:59:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3-fAw74OX5NK; Thu, 18 Jul 2024 08:59:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C4E9403B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721293191;
	bh=bgMVMQRohcF5WdcemhAgGK2mnTBxhy1oAaWpEwFYhYM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mzkGla0DwrKUr55Ub3av3TQiWjUv4xUjX8bnY/IcDv+Hd44tUrceY2AqUET4j6n1f
	 F+pu2R3Kgy2wrJfoh0/8t8CvVFYLbMzx0UGX+4Z5vkFIl7ltYembdIUUGNcbDpVtYV
	 iPts+CowlEdfOIYJ36vwDvUkuiLdraxsmVENaGb/s9+ZGPIr6nKJD0yDHf+c4r4ahI
	 30Y+JhIeBf+Bvtgc+yS85EDGo1C87CpMZbbl+6Qg28z+BJBIeKZyuN5GRnuf4Qn3gZ
	 GjCz3JC7KK2sZmbhFGI69maAjklZL+5cxialRZjrVk3so9yT5Gp3WxOt4liad2grmS
	 1kbDegvU3NriQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C4E9403B3;
	Thu, 18 Jul 2024 08:59:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1F1E1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 08:59:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF6F960B6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 08:59:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kyjj6uhgiCWb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jul 2024 08:59:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1B78D60B65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B78D60B65
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B78D60B65
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 08:59:47 +0000 (UTC)
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-487-nmO5mHNnNn-8SEr4v5pEOQ-1; Thu,
 18 Jul 2024 04:59:44 -0400
X-MC-Unique: nmO5mHNnNn-8SEr4v5pEOQ-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 897B21944B27; Thu, 18 Jul 2024 08:59:42 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.193.237])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E00C81955F40; Thu, 18 Jul 2024 08:59:41 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id A8DC5A80D05; Thu, 18 Jul 2024 10:59:39 +0200 (CEST)
Date: Thu, 18 Jul 2024 10:59:39 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: Eric Dumazet <edumazet@google.com>
Message-ID: <ZpjZe1pgqbJ-Zp0S@calimero.vinschen.de>
Mail-Followup-To: Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Jason Xing <kerneljasonxing@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20240423134731.918157-1-vinschen@redhat.com>
 <CANn89iKv1J3AS3rEmEhFq5McHmM+L=32pWg3Wj4_drsdKUx77A@mail.gmail.com>
 <Ziu6k5cjXsaUpAYH@calimero.vinschen.de>
 <CANn89iJ_eM2oK5ruGu1NMk0ZEivEQO=R64E9eb9ujYj+=qWiKA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANn89iJ_eM2oK5ruGu1NMk0ZEivEQO=R64E9eb9ujYj+=qWiKA@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1721293187;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bgMVMQRohcF5WdcemhAgGK2mnTBxhy1oAaWpEwFYhYM=;
 b=eF5ONff3AM1wwgnXSrWz5u3kZ5UHK73glDb4jfU0bm3MIghXJXWivfHlaxmMxa6wYBcawa
 0FHAUI3N0jMuGOQ6HswYYY/40OfBlnF0ZQOI61hyTDrOtl5YWcLpI3sXcAXfXO92aaC/XA
 1sb9Zk7Rcto+qjnQxXUJ0qgMsnK9+mc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=eF5ONff3
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: cope with large
 MAX_SKB_FRAGS
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
Cc: Jason Xing <kerneljasonxing@gmail.com>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, linux-kernel@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Eric,

sorry for the very late reply, I was offline for quite some time
and then other things took over.

On Apr 26 19:54, Eric Dumazet wrote:
> On Fri, Apr 26, 2024 at 4:30 PM Corinna Vinschen <vinschen@redhat.com> wrote:
> >
> > Hi Eric,
> >
> > On Apr 23 16:10, Eric Dumazet wrote:
> > > On Tue, Apr 23, 2024 at 3:47 PM Corinna Vinschen <vinschen@redhat.com> wrote:
> > > >
> > > > From: Paolo Abeni <pabeni@redhat.com>
> > > >
> > > > Sabrina reports that the igb driver does not cope well with large
> > > > MAX_SKB_FRAG values: setting MAX_SKB_FRAG to 45 causes payload
> > > > corruption on TX.
> > > >
> > > > An easy reproducer is to run ssh to connect to the machine.  With
> > > > MAX_SKB_FRAGS=17 it works, with MAX_SKB_FRAGS=45 it fails.
> > > > [...]
> > > > @@ -4833,6 +4833,7 @@ static void igb_set_rx_buffer_len(struct igb_adapter *adapter,
> > > >
> > > >  #if (PAGE_SIZE < 8192)
> > > >         if (adapter->max_frame_size > IGB_MAX_FRAME_BUILD_SKB ||
> > > > +           SKB_HEAD_ALIGN(adapter->max_frame_size) > (PAGE_SIZE / 2) ||
> > >
> > > I wonder if adding IGB_SKB_PAD would be needed ?
> > >
> > > adapter->max_frame_size does not seem to include it.
> > >
> > > I would try using all mtus between 1200 and 1280 to make sure this works.
> >
> > Erm... did you mean between 1500 and 1580 by any chance?  1200 doesn't
> > really seem to make sense...
> 
> No, I meant 1200 to 1280 .  IPv4 should accept these MTU .
> 
> 1200 + 768 = 1968
> 1280 + 768 = 2048 (2 KB)
> 
> I am worried of some padding that would cross 2048 bytes boundary,
> while SKB_HEAD_ALIGN(adapter->max_frame_size) could still be < 2048
> 
> 
> >
> > I tested this patch now with mtu 1500, 1540 and 1580 successfully.
> >
> > Either way, I'm just heading into vacation, so I guess I'll pick this up
> > again when I'm back, unless Paolo takes another look during my absence.
> >
> 
> I guess your patch is better than nothing, this can be refined if
> necessary later.

I now tested the patch with all MTUs between 1200 and 1280 and it
works as desired.  I just sent a v3.


Thanks,
Corinna

