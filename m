Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 307749D14BE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 16:52:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADD5C42ED1;
	Mon, 18 Nov 2024 15:52:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id igdNnxdC3OIW; Mon, 18 Nov 2024 15:52:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6571471E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731945163;
	bh=Hm+C0p0+NEx6sZBd6t21wk9DRNbJRRNTd+mxaToGBlE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LZWR34PqjLs5+XRUKzKdSv+lDXxPKk1AmVNeXIHE/YYQ+VeNxzNem6s+5bW4EGg+3
	 yHIl8FVj5Td6LaCNwPigtkGkGt+E8vM/AURqCqATV/7sUXFbHPHqvhQygixRlSwYr6
	 cVK63PFyzi2awL/JLhXvEaO/iDwY8iQj0/5XNNl/w6PRoPoeJbyZ7G+nYe34/AnAC8
	 xTho10XyNOviJ8YzSTM8edkKmmkoFxJcOE/lPbVMVTilah0A+0KlGlRa5lgNT5ERTm
	 EsuxljGxsKD9R4ShNUPAmegkFW7vEt9FRKeGNengqJWx/LXshXRnbLzRSMxuHbWNo6
	 L4OwZyRskqSpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6571471E6;
	Mon, 18 Nov 2024 15:52:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DD096DB2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D80A642E28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:52:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Go-vr9NvxliZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 15:52:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f29; helo=mail-qv1-xf29.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C2C0242E27
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2C0242E27
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com
 [IPv6:2607:f8b0:4864:20::f29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2C0242E27
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:52:40 +0000 (UTC)
Received: by mail-qv1-xf29.google.com with SMTP id
 6a1803df08f44-6d41b209858so13877386d6.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 07:52:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731945159; x=1732549959;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Hm+C0p0+NEx6sZBd6t21wk9DRNbJRRNTd+mxaToGBlE=;
 b=Tx9gfV28lQXswUNA99sxWatLc2v6Qv8zx96NmUr55ZsjfAmnHTtcZhSWHOsQyRKsId
 BlIv6+UNP/yYo8VECvahdGEDAoi0TH1fDkytK/dbuexLDePVZr/oFLqc1dR5bZj7zHgx
 a4ww1sy9SDa3BPxFQ0qgRTgCKFJNJiyaljsn42wfeRglzclE9jglGa0oiBN6TlkM7mb1
 q1eXU0cHZWpaDWjZTnKccHCCq4oIBlXK219zYQU1/t2Ihl8+j7t0Y/SMDVaQmapMNKWp
 i4+j/s23eLk2sVygrgBdFPMhUXvL9X/wKKxTjzBskgrdWzRejZLfjRogUVwTyjpBhXw8
 cVXQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWl8Dpj4iEgeozQ79pXs/5l13PS8ubF+eA4QnXf3ss1ZdcWAZqDrF2+ecfMiI16arrASEJR8fBqAUxl67EgyrI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxKeOBeRlhDggIoHRNLKuMPKwX48fCJLCyD64m/jymG9AzO2G4c
 wKSiNZrij+1zPdx05Qftcm0vcXdEAFoyQ1HEGTOdMTu/HuNoQX5D
X-Google-Smtp-Source: AGHT+IHeF2LPc6QXijq8hu8wlxZK+87iT9rDyAwuWAj0WFayc3Rgpm0ItYBXtPr5rm3wxbykP8q31A==
X-Received: by 2002:a05:6214:3389:b0:6d3:f39a:9135 with SMTP id
 6a1803df08f44-6d3fb86e2e1mr180375656d6.38.1731945159470; 
 Mon, 18 Nov 2024 07:52:39 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6d40dd1f6desm37145786d6.92.2024.11.18.07.52.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2024 07:52:39 -0800 (PST)
Date: Mon, 18 Nov 2024 10:52:38 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: "Olech, Milena" <milena.olech@intel.com>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 "Hay, Joshua A" <joshua.a.hay@intel.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Message-ID: <673b62c6ab8a2_1d6524294f9@willemb.c.googlers.com.notmuch>
In-Reply-To: <PH7PR11MB5885EB42ABAE3CA8023CFC038E272@PH7PR11MB5885.namprd11.prod.outlook.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-9-milena.olech@intel.com>
 <673685bc9ef98_3379ce2948@willemb.c.googlers.com.notmuch>
 <PH7PR11MB5885EB42ABAE3CA8023CFC038E272@PH7PR11MB5885.namprd11.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731945159; x=1732549959; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Hm+C0p0+NEx6sZBd6t21wk9DRNbJRRNTd+mxaToGBlE=;
 b=aIq+ltrg9EbbCN9P2PPU/rbyLhCA7gFZzMLn7k6A9XtcKX7W8sHg8F96yXuJABzq1l
 Rl73jqMC3b1VwwPa7TrpWE48l6cQOKxZDqjooM51XzW3HocQr6hlHoNSfCmgxfxQdxUU
 wXMLSUHPbHwF92FvssXJXiGd4hWKdWA1P/eHw4FItwqHcvJT6ne3Q7LP8RGpo43QYhUC
 YsP/TE9N/pyoQUcMrj4RoJ1bmzyVAkStXDncTlkvnnd3/mFunDsgPNhxNm3o9CTWF9kW
 TXheqYP5tIW5JG2XOq9PomcSSVEAlsj9p2PleO0M9psqsZSvG4/ECTPBk23kzeFazVn9
 2CHQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=aIq+ltrg
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 08/10] idpf: add Tx timestamp
 flows
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
> On 11/15/2024 12:20 AM, Willem de Bruijn wrote:
> 
> > Milena Olech wrote:
> > > Add functions to request Tx timestamp for the PTP packets, read the Tx
> > > timestamp when the completion tag for that packet is being received,
> > > extend the Tx timestamp value and set the supported timestamping modes.
> > > 
> > > Tx timestamp is requested for the PTP packets by setting a TSYN bit and
> > > index value in the Tx context descriptor. The driver assumption is that
> > > the Tx timestamp value is ready to be read when the completion tag is
> > > received. Then the driver schedules delayed work and the Tx timestamp
> > > value read is requested through virtchnl message. At the end, the Tx
> > > timestamp value is extended to 64-bit and provided back to the skb.
> > > 
> > > Co-developed-by: Josh Hay <joshua.a.hay@intel.com>
> > > Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> > > Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > > Signed-off-by: Milena Olech <milena.olech@intel.com>

> > > +/**
> > > + * idpf_ptp_tstamp_extend_32b_to_64b - Convert a 32b nanoseconds Tx timestamp
> > > + *				       to 64b.
> > > + * @cached_phc_time: recently cached copy of PHC time
> > > + * @in_timestamp: Ingress/egress 32b nanoseconds timestamp value
> > > + *
> > > + * Hardware captures timestamps which contain only 32 bits of nominal
> > > + * nanoseconds, as opposed to the 64bit timestamps that the stack expects.
> > > + *
> > > + * Return: Tx timestamp value extended to 64 bits based on cached PHC time.
> > > + */
> > > +u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time, u32 in_timestamp)
> > > +{
> > > +	u32 delta, phc_lo;
> > > +	u64 ns;
> > > +
> > > +	phc_lo = lower_32_bits(cached_phc_time);
> > > +	delta = in_timestamp - phc_lo;
> > > +
> > > +	if (delta > S32_MAX) {
> > > +		delta = phc_lo - in_timestamp;
> > > +		ns = cached_phc_time - delta;
> > > +	} else {
> > > +		ns = cached_phc_time + delta;
> > > +	}
> > > +
> > > +	return ns;
> > > +}
> > 
> > Consider a standard timecounter to estimate a device clock.
> 
> You mean to rely on standard timecounter instead of cached PHC time?
> Can you please clarify?

Yes. To clarify: this is a suggestion to consider. Feel free to skip.

A timecounter/cyclecounter maintains an estimate on a clock. That
is more precise than just using the last cached value, and preferable
over open coding such an estimation algorithm.

Other drivers already use such a struct, I assume to estimate their
PTP device clock.
