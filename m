Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D97D8B3A11
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 16:30:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 388C841F35;
	Fri, 26 Apr 2024 14:30:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZysOwqq0H8sx; Fri, 26 Apr 2024 14:30:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1BBD41F3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714141854;
	bh=/Po/iEila9vOgF/cEwaFixGoYPv3NXGuCxcYDjenzE0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w9mMr961QPqs3NQnFWZziwYC4p5TzxZXkttgHeRUvcMliduwj7WMcxHGfiEy7IfQJ
	 gv0yC2mIABDrhFeImUivdsXhit+SbqiSsXGYQO0Kwz1OwbG7SgTwk2xVSYl2CsU+b4
	 nuNO/i+ZvpyFCOFdjfvUa7S2lkR1IY/4f4/N+63IHQdI7DiAZw84EHwW2bvU30Fr4K
	 5n/RaSk2Fvpi+Q7kuKVTGdYbMGqUqaXMttOkBz0IrEwoY2tqWEJeNijoqqX//GsP5l
	 jUvuj5o49a5UlTulE69Rq9TA+gmWwfyOiM3l+kfQmTpkG073yDNvimsp7P+HuugUEc
	 hNKiyYVCMY6Gw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1BBD41F3C;
	Fri, 26 Apr 2024 14:30:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F08E81BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 14:30:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E9BAD60610
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 14:30:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q2Dj4QU72qwu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 14:30:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 777FB605F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 777FB605F2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 777FB605F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 14:30:50 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-518-Tp7iL8TsOVCes_nIrxZPwg-1; Fri,
 26 Apr 2024 10:30:45 -0400
X-MC-Unique: Tp7iL8TsOVCes_nIrxZPwg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D0A033819C61;
 Fri, 26 Apr 2024 14:30:44 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.194.197])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 952C140F566;
 Fri, 26 Apr 2024 14:30:44 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 41EC3A80B9E; Fri, 26 Apr 2024 16:30:43 +0200 (CEST)
Date: Fri, 26 Apr 2024 16:30:43 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: Eric Dumazet <edumazet@google.com>
Message-ID: <Ziu6k5cjXsaUpAYH@calimero.vinschen.de>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANn89iKv1J3AS3rEmEhFq5McHmM+L=32pWg3Wj4_drsdKUx77A@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1714141849;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/Po/iEila9vOgF/cEwaFixGoYPv3NXGuCxcYDjenzE0=;
 b=JnAPieR8UzOeQk5crIFGtl1VblGnI3np71U9/h2hcIcLYeUJlusG/2J6kitQU+Gen4RChS
 Fp4BWBoJ6A6hURAW3J7YrjFu0rI9P6VBkdp7k4pN6CAF2nhnqqG7Qc1Zul20gfUI6i1zUp
 PN64if2sNdFEk5miIJewLcarWCcIGPY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=JnAPieR8
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

On Apr 23 16:10, Eric Dumazet wrote:
> On Tue, Apr 23, 2024 at 3:47 PM Corinna Vinschen <vinschen@redhat.com> wrote:
> >
> > From: Paolo Abeni <pabeni@redhat.com>
> >
> > Sabrina reports that the igb driver does not cope well with large
> > MAX_SKB_FRAG values: setting MAX_SKB_FRAG to 45 causes payload
> > corruption on TX.
> >
> > An easy reproducer is to run ssh to connect to the machine.  With
> > MAX_SKB_FRAGS=17 it works, with MAX_SKB_FRAGS=45 it fails.
> >
> > The root cause of the issue is that the driver does not take into
> > account properly the (possibly large) shared info size when selecting
> > the ring layout, and will try to fit two packets inside the same 4K
> > page even when the 1st fraglist will trump over the 2nd head.
> >
> > Address the issue forcing the driver to fit a single packet per page,
> > leaving there enough room to store the (currently) largest possible
> > skb_shared_info.
> >
> > Fixes: 3948b05950fd ("net: introduce a config option to tweak MAX_SKB_FRAG")
> > Reported-by: Jan Tluka <jtluka@redhat.com>
> > Reported-by: Jirka Hladky <jhladky@redhat.com>
> > Reported-by: Sabrina Dubroca <sd@queasysnail.net>
> > Tested-by: Sabrina Dubroca <sd@queasysnail.net>
> > Tested-by: Corinna Vinschen <vinschen@redhat.com>
> > Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> > ---
> > v2: fix subject, add a simple reproducer
> >
> >  drivers/net/ethernet/intel/igb/igb_main.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > index a3f100769e39..22fb2c322bca 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -4833,6 +4833,7 @@ static void igb_set_rx_buffer_len(struct igb_adapter *adapter,
> >
> >  #if (PAGE_SIZE < 8192)
> >         if (adapter->max_frame_size > IGB_MAX_FRAME_BUILD_SKB ||
> > +           SKB_HEAD_ALIGN(adapter->max_frame_size) > (PAGE_SIZE / 2) ||
> 
> I wonder if adding IGB_SKB_PAD would be needed ?
> 
> adapter->max_frame_size does not seem to include it.
> 
> I would try using all mtus between 1200 and 1280 to make sure this works.

Erm... did you mean between 1500 and 1580 by any chance?  1200 doesn't
really seem to make sense...

I tested this patch now with mtu 1500, 1540 and 1580 successfully.

Either way, I'm just heading into vacation, so I guess I'll pick this up
again when I'm back, unless Paolo takes another look during my absence.


Thanks,
Corinna

