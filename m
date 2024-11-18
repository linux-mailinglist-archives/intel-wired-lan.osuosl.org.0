Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5D79D14C5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 16:53:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAC7047AB4;
	Mon, 18 Nov 2024 15:53:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oyLxUEXc_Jgs; Mon, 18 Nov 2024 15:53:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CB9042E27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731945212;
	bh=M/HD3lzDxW/S30+fMzUpHxo+jEkPmHoNwk80gvA5gJc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jtbe6sbZzCFQR/Nb1HPpt/2UjJr8Tgxplijb9ia+zGx48N+8uU1a+wnN2t+TX3hPc
	 0SNowe/hNB4ZqA3rsFn+BwXZmV6FXIpyXbfd/rqz8esmOYI9mePfeANLiqZeQJlNlY
	 PYR2p3Sq7oDtV6k2INXnUoJmGI9qWcWq8to0mQcNXrrbF+l1WL/vATH4VpN9Hfiivi
	 lbshvgR2GCtXs62UCBawJ8Y2VnBA7e9sG/Br41kNc4I3r7G+yNdWY5hNBqUhtFL3cH
	 lq/0V4bH1sqWoL7lpOQukNiFebrIHWD0A1npxx3FBjpTLuqQ6AUfwxXXZkXTMUD2ax
	 K43KLlNyKkfKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CB9042E27;
	Mon, 18 Nov 2024 15:53:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8AFC5DB2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:53:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B59C4013F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:53:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VNQZuuTv8IA4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 15:53:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::c33; helo=mail-oo1-xc33.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 73C1740925
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73C1740925
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com
 [IPv6:2607:f8b0:4864:20::c33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 73C1740925
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:53:29 +0000 (UTC)
Received: by mail-oo1-xc33.google.com with SMTP id
 006d021491bc7-5ebc9bda8c8so769434eaf.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 07:53:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731945208; x=1732550008;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=M/HD3lzDxW/S30+fMzUpHxo+jEkPmHoNwk80gvA5gJc=;
 b=nP5SFyeSNCWQwA1/KlyAlyW3SmIJj+uq/Mp9Z6yUTb5uIu1Gfdp/8KEx9VCb/KT/J4
 Ofn3oSW3EDepGyqNHEzQPeJPPm5ab9LelGctg/VyfLZ/pyMACQdDNrjbapBQibDnnRHD
 Q3NXKatq2csa0gHPEaIztbc5qbkQVtDIacDSwcwlFrMlazBNXiSneewRUu/ZqPh46rmu
 hsN3zQkSGyB4/9bzTUkzmhp6bpzExvNt7jEeCkgFRX1Z308RQwPYYGGDrHZBTpXxwjMU
 9bUu91U/BcePkGJEBF1aTWU7F/uzv8Xvy2LuPhZsz/2dzUXDhgE8lQ6rYHbVJ9zhNUoX
 jfsQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUdQ0zIp1FrRyqRIBmQyLfrB6hwWnfgck7/o1wf+zoia4Vk1ZPLc0Lgz/0mTDrD7VWpYUrrA7+lDsBt0h4OXYs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwfYWbWfme4zC7hkYwfpR/Ba/bwCmaapuImLDimbH+wzP0hN22v
 0aBiNjmG2zFCl/imJUFTtQyfsWkAhC45tLHYhkYOSrqgxZjRtOiz
X-Google-Smtp-Source: AGHT+IGBblPeWVmYqY0+g3oeZh+7/MykEkGilBfqBjewhDhKjWpH9CS4DcH3IQmBWMMODCnI3pZJkA==
X-Received: by 2002:a05:6359:7602:b0:1c3:73ff:511e with SMTP id
 e5c5f4694b2df-1c6cd15959dmr461468955d.21.1731945208205; 
 Mon, 18 Nov 2024 07:53:28 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6d40dd1fe49sm37443956d6.79.2024.11.18.07.53.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2024 07:53:27 -0800 (PST)
Date: Mon, 18 Nov 2024 10:53:27 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: "Olech, Milena" <milena.olech@intel.com>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Message-ID: <673b62f785bf3_1d65242948d@willemb.c.googlers.com.notmuch>
In-Reply-To: <PH7PR11MB5885EAC3A3687F97267F072E8E272@PH7PR11MB5885.namprd11.prod.outlook.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-10-milena.olech@intel.com>
 <67366352c2c5b_3379ce29475@willemb.c.googlers.com.notmuch>
 <PH7PR11MB5885EAC3A3687F97267F072E8E272@PH7PR11MB5885.namprd11.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731945208; x=1732550008; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=M/HD3lzDxW/S30+fMzUpHxo+jEkPmHoNwk80gvA5gJc=;
 b=PBP2F2D6ULJx+hJzsERB7M2enEU9psBkczIXcLuWI88vtgUj5pYUJye7LY87/ZqczO
 L3tJzpV6R87xRT3xs6S6oZhxpnOn2klTKJdCOlxNLxBAsh4SqSVlWHZ8fHk0oFmH+a4K
 VuFdTTpnTnzC/cnlJ3REdrmWjazYP3lwyKI7CU45bvkIorKpWtipTa/Ch4A0LDwdmpPv
 NaDO0utoaCILXiRhQXRfGb6eqztqUQKpZvtLYPT9/5bERLMO5w+xNyQ3iygiLidC0QV7
 UxVVuwk6P3rMidqlCI9B8qqX1y8EJMK/MWpfe+ZAfV7HJsMDM1JpZK9t7Jbh4koc1nez
 DHCw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=PBP2F2D6
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 09/10] idpf: add support for
 Rx timestamping
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

Olech, Milena wrote:
> On 11/14/2024 9:54 PM, Willem de Bruijn wrote:
> 
> > Milena Olech wrote:
> > > Add Rx timestamp function when the Rx timestamp value is read directly 
> > > from the Rx descriptor. Add supported Rx timestamp modes.
> > > 
> > > Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > > Signed-off-by: Milena Olech <milena.olech@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/idpf/idpf_ptp.c  | 74 
> > > ++++++++++++++++++++-  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 
> > > 30 +++++++++  drivers/net/ethernet/intel/idpf/idpf_txrx.h |  7 +-
> > >  3 files changed, 109 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c 
> > > b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> > > index f34642d10768..f9f7613f2a6d 100644
> > > --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> > > +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> > > @@ -317,12 +317,41 @@ static int idpf_ptp_gettimex64(struct ptp_clock_info *info,
> > >  	return 0;
> > >  }
> > >
> > > +/**
> > > + * idpf_ptp_update_phctime_rxq_grp - Update the cached PHC time for a given Rx
> > > + *				     queue group.
> > 
> > Why does each receive group have a separate cached value?
> > They're all caches of the same device clock.
> 
> That's correct - they all caches values of the same PHC, however I would
> like to have an effective method to access this value in hotpath where
> I'm extending the Rx timestamp value to 64 bit.
> 
> For the same reason I cached Tx timestamp caps in
> idpf_vport_init_fast_path_txqs.

Oh to avoid reading a cold cacheline in the hot path. Okay, that makes
sense. Please make a note of this in the commit message.
