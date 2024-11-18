Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF3B9D1455
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 16:21:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB0A540642;
	Mon, 18 Nov 2024 15:21:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UsbNvaS7S2lY; Mon, 18 Nov 2024 15:21:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4C91405C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731943316;
	bh=OQA02OfYLKhgvCOp9KiJnfThUN1+EB/HCfiLmzvIGcI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EbwArJ9KAPYhF3OrzKLNN6HVAxeLiyFgULVyL+gOshMRszBhDxXiYXwVpdzXJEnjD
	 ANDBRnRzLkmxMuip9zyn7Ys6lszLE9/c4KYv8eGBl9EA/U/lW2IeEoQhq3kqUb6L0e
	 1dvFuGz7k8LrrF5t2pVYgq3iuIDifwyHa5ZFzUpS1tXu6ccrkZadu+zgE/y9NKApsJ
	 LmR+cAVzE0+8q3/X9mOYEL/d3tH4/FpBX/N/g3x3fhydMH7OxLWX7q8jFZby0hlqkS
	 QK1V/E4qBBKK3bVfQQ6BiMRygDSz/Ntz7Mw/6XsFrR+AAYSJePJKJBfjjYxSWyHRWw
	 madG1wd9u2kcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4C91405C0;
	Mon, 18 Nov 2024 15:21:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 349C8DB2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:21:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 234FB846B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:21:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1yXy4euWifE4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 15:21:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f29; helo=mail-qv1-xf29.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3EE7684563
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3EE7684563
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com
 [IPv6:2607:f8b0:4864:20::f29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3EE7684563
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:21:53 +0000 (UTC)
Received: by mail-qv1-xf29.google.com with SMTP id
 6a1803df08f44-6d413def36cso21144736d6.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 07:21:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731943312; x=1732548112;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=OQA02OfYLKhgvCOp9KiJnfThUN1+EB/HCfiLmzvIGcI=;
 b=UC/BTLENHfjEGDPR17flqCGQgqYJQOYe3hag2h56hjRpqE+WVlwUQyQjdBX+8AToC7
 oOhPZ2m5h2lh+hgbKxlEB44eIt0Oiqa9r6EZT3BWojoISoucpNmJgD4OuROJmzST79JY
 jZr+Tw85hRjs8KXJX9hg5urcj94XsApYgCBrEuYbaMFaVM6245f/h9aoZZVgSS5EA2+a
 0ZXiPuvF0j1Ngnv436VIlhLDnX668k3QwewOUcsOG9jbQ/8IOsZ6TQC6eCrl+QyNYqde
 1E9jaXgEElrpsMUsI0BoFLFu3d/MWti/BVC7aEHN9seUAp1ihRtYNQTBlu5h7se4DvJE
 fCWA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVqA5IvkJ9ebZrpblb4bJ8yIt4zsBVvUGzcx8XDX6xYcEarqs9oieAZL3CjtjU4YeeQqtJCGmOuHSAq5CZ34sM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwAh+sQsRsY4aebks7C9PEeHhPwzd6m68gUt8iUai51Xm/Lr0L7
 Z4ECZ0o+pUjq1dPB/B0h2IpC9ooxnm5yb4/9DdQjq3xWXhlgWGjm
X-Google-Smtp-Source: AGHT+IHVPZ99rI82oDH7ZVpSYDyjYivWhsouK27JqFUyusTmFkimPE96gARoKps0I+VVO/R7ojCACA==
X-Received: by 2002:a05:6214:3387:b0:6cd:f2ae:5b49 with SMTP id
 6a1803df08f44-6d3fb80f9d9mr176121676d6.24.1731943311840; 
 Mon, 18 Nov 2024 07:21:51 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6d40dbe066esm36740636d6.13.2024.11.18.07.21.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2024 07:21:51 -0800 (PST)
Date: Mon, 18 Nov 2024 10:21:50 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: "Olech, Milena" <milena.olech@intel.com>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Message-ID: <673b5b8ec78aa_1d050f29498@willemb.c.googlers.com.notmuch>
In-Reply-To: <PH7PR11MB5885163CE356FF37F047D1E18E272@PH7PR11MB5885.namprd11.prod.outlook.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-5-milena.olech@intel.com>
 <67365b739f70c_3379ce29452@willemb.c.googlers.com.notmuch>
 <PH7PR11MB5885163CE356FF37F047D1E18E272@PH7PR11MB5885.namprd11.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731943312; x=1732548112; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OQA02OfYLKhgvCOp9KiJnfThUN1+EB/HCfiLmzvIGcI=;
 b=Lqnv3UVKRwLtcS2QaPtd9imUshTv8IFg994mv07Ql4lqudF0gC+sy8mLcpK0lipwnv
 ZU/zxPQs2hiTf2t5FmuMI7GjBp13vIdI2nCQD5JsTD4QYLJhSTcH6IdJQJW8dInpgaZk
 yk+hwIhw+A8pciv3AXPLRkGfct246u5pRU3rQnnA3Q9wf7M1zVtqiaGa+iaOItYkka3C
 /TbLKfhroLGVQB+dXp5Uyp3ygfHAN8zvFP0nXABYqgziVRnYNGlOol7solR0vYf2Dp8U
 aJGzSf1t/LlLRAPkVvrdoL3+fkqKczBeEaXR3iAxT8tdXcksV1cMxdPFgt1OpWFvJEFX
 HNtQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Lqnv3UVK
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 04/10] idpf: negotiate PTP
 capabilies and get PTP clock
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
> On 11/14/2024 9:20 PM, Willem de Bruijn wrote:
> 
> > Milena Olech wrote:
> > > PTP capabilities are negotiated using virtchnl command. Add get
> > > capabilities function, direct access to read the PTP clock time and
> > > direct access to read the cross timestamp - system time and PTP clock
> > > time. Set initial PTP capabilities exposed to the stack.
> > >
> > > Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > > Signed-off-by: Milena Olech <milena.olech@intel.com>
> >
> > Tested-by: Willem de Bruijn <willemb@google.com>
> >
> > >  /**
> > >   * struct idpf_ptp - PTP parameters
> > >   * @info: structure defining PTP hardware capabilities
> > >   * @clock: pointer to registered PTP clock device
> > >   * @adapter: back pointer to the adapter
> > > + * @cmd: HW specific command masks
> > > + * @dev_clk_regs: the set of registers to access the device clock
> > > + * @caps: PTP capabilities negotiated with the Control Plane
> > > + * @get_dev_clk_time_access: access type for getting the device clock time
> > > + * @get_cross_tstamp_access: access type for the cross timestamping
> > >   */
> > >  struct idpf_ptp {
> > >  	struct ptp_clock_info info;
> > >  	struct ptp_clock *clock;
> > >  	struct idpf_adapter *adapter;
> > > +	struct idpf_ptp_cmd cmd;
> > > +	struct idpf_ptp_dev_clk_regs dev_clk_regs;
> > > +	u32 caps;
> > > +	enum idpf_ptp_access get_dev_clk_time_access:16;
> > > +	enum idpf_ptp_access get_cross_tstamp_access:16;
> >
> > why are these 16 bit fields, when they are only ternary options?
> 
> Willem, I was trying to avoid holes in the struct and this is the best
> shape I was able to obtain. I'll try to reorder it in v2 and limit the
> 16 bit.

Does it work to reserve the number of bits needed for these enums
and add an explicit padding field for the remainder? Say

    u32 get_dev_clk_time_access:2;
    u32 get_cross_tstamp_access:2;
    u32 reserved:28;

No need to use the explicit enum type with fixed size allocation.
Though using that and/or leaving any padding implicit is fine too.
