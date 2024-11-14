Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 279EE9C9390
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 21:57:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67445605EF;
	Thu, 14 Nov 2024 20:57:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ORubDMAcOYsS; Thu, 14 Nov 2024 20:57:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4EE260678
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731617831;
	bh=sDHRZd0HO3yKe5La4wlVf9arfCmAo/lcCm4r66g+uFA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eynrPkj/P5vJqIOcSt+NpkZ9Z/M+WWm514uyJW2LxMu+68qJsvEXjs6mck1JAK2jm
	 EHGAOphXatfVQQlcFMnHcw+2stbE2kTzUy3skQyksWxxzTGCJ/43E4VzEyQePW4HLE
	 As2JEUw7mjHSkT3DXHiLaszgfII0AH0y0bd72D/VrsgU07NuUUobeglrdkBxzAMr4h
	 Hs+0MLAOKA1ISgMQ05N8+INXygPnM3D2BH296JvwTe+xrkkNbukAA4nufT+WGilm5K
	 hTawZ8cnPPwReEeKl9TlHpPNpd5/Rq1/B2z0Kx8tUPrRstuN4Gbn5sBnREjD2rfMs3
	 3YjvkFdVvvRXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4EE260678;
	Thu, 14 Nov 2024 20:57:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DCE571ED5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7B59406EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:57:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HBVCB_O7HVVI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 20:57:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::a29; helo=mail-vk1-xa29.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D1313405C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1313405C1
Received: from mail-vk1-xa29.google.com (mail-vk1-xa29.google.com
 [IPv6:2607:f8b0:4864:20::a29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1313405C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:57:08 +0000 (UTC)
Received: by mail-vk1-xa29.google.com with SMTP id
 71dfb90a1353d-513de426863so434571e0c.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:57:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731617827; x=1732222627;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=sDHRZd0HO3yKe5La4wlVf9arfCmAo/lcCm4r66g+uFA=;
 b=qZ4+or3u8hlbj4YC26fQL+hAAsYD6gTsKBMPHqrpMm2KjA5NWONnRL8JnjDL4eoaWn
 0eCLM/B/pRCuRIdLL5ySHLt4+soUFYVoYVuuyU1385qdbHjbDMh7k2GnH8Kq+B0+PJT3
 /UPZex2EvKmAqB9bnvLT88/UCO9SPJOoC6bVxhMtepJLvzLsMZak2Z2lYFDoE1mhAPoL
 z4oMu81YtVou7/OozntRko9+idehIXfQR0YPIMiEd+FZuQZh7L98cEhpVMZ7xmZjJYcb
 4k15juNtrMG8QjwcxRNihojlvRN5KZQqVgq8xOBV22Et+3yU4lq6/bdsYK1mMYYlRkrj
 sgJw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU1DDJAnijp09qjv8VtWF5NlSK1o+fHAUETGv5rLWHaJxncQkgDoz9U458xa93RUN3jkLWYTM7PhMC0UZrrqh8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxDkSxRzcedkv/7A8QgA5frkL/HOpc63hDrDJXIZ8HhFKi5FmOD
 1oIRG6UBVvThEsA/a1KsObbyiAhiAyPhnySAjh4/q0w1MoQOhHLU
X-Google-Smtp-Source: AGHT+IF6v0PkMl7E7WRPqXN9CkYVVvMdcbpjFhr4UxsHqJ2uMXEYyNMaD/a190OwMlGOhFBPcQ4psw==
X-Received: by 2002:a05:6122:789:b0:50c:4707:df0 with SMTP id
 71dfb90a1353d-51477ebdddbmr719640e0c.5.1731617827303; 
 Thu, 14 Nov 2024 12:57:07 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7b35ca305a5sm88865585a.71.2024.11.14.12.57.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 12:57:06 -0800 (PST)
Date: Thu, 14 Nov 2024 15:57:06 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
 Milena Olech <milena.olech@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <6736642260849_3379ce29445@willemb.c.googlers.com.notmuch>
In-Reply-To: <ebf7e086-829e-4266-bef5-b4d746aea45c@linux.dev>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-5-milena.olech@intel.com>
 <ebf7e086-829e-4266-bef5-b4d746aea45c@linux.dev>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731617827; x=1732222627; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sDHRZd0HO3yKe5La4wlVf9arfCmAo/lcCm4r66g+uFA=;
 b=eh/H4sRgROYFW2QMS5ESjBXfLwcsH82DYQ+3wh0EtDTUbl8v4bR5/Ltnwqn5q4bU1G
 L4qnRj5y+HBH9UBEUa0qrC3nSObmBdAgo1+go0WQNuMRWuLZ9l1OOxL0WzuJH4e13v8a
 MEfo9J4ePF5PcOZAOBfI9b+5GUnR9HpCE0SZsC0G2ok4k2RS0/lTCm4RudjPERHu6cYo
 DTGecGywP59+AGdurVphHCZOCHhQMMVFSxE+//IrdtIqSSfFfzfpmr90r61HXfsOQdgL
 IYDS0MxTfrLZsCHLQ7RWnz+bNrB+q3g+cGxoGgqqahgTmNBBmabm6ZadfNRN7oyJNUo1
 Dr8A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=eh/H4sRg
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

Vadim Fedorenko wrote:

> > +/**
> > + * idpf_ptp_read_src_clk_reg_direct - Read directly the main timer value
> > + * @adapter: Driver specific private structure
> > + * @sts: Optional parameter for holding a pair of system timestamps from
> > + *	 the system clock. Will be ignored when NULL is given.
> > + *
> > + * Return: the device clock time on success, -errno otherwise.
> > + */
> > +static u64 idpf_ptp_read_src_clk_reg_direct(struct idpf_adapter *adapter,
> > +					    struct ptp_system_timestamp *sts)
> > +{
> > +	struct idpf_ptp *ptp = adapter->ptp;
> > +	u32 hi, lo;
> > +
> > +	/* Read the system timestamp pre PHC read */
> > +	ptp_read_system_prets(sts);
> > +
> > +	idpf_ptp_enable_shtime(adapter);
> > +	lo = readl(ptp->dev_clk_regs.dev_clk_ns_l);
> > +
> > +	/* Read the system timestamp post PHC read */
> > +	ptp_read_system_postts(sts);
> > +
> > +	hi = readl(ptp->dev_clk_regs.dev_clk_ns_h);
> > +
> > +	return ((u64)hi << 32) | lo;
> > +}
> 
> Am I right that idpf_ptp_enable_shtime() "freezes" the time in clk
> registers and you can be sure that no changes will happen while you are
> doing 2 transactions? If yes, then what does unfreeze it? Or does it
> just copy new values to the registers and they will stay until the next
> command?

Yep, these are shadow registers.

I guess they remain until overwritten on the next latch.
