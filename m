Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3949F4003
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2024 02:29:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EC5584886;
	Tue, 17 Dec 2024 01:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YpLvZ7jn56nC; Tue, 17 Dec 2024 01:29:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91DF984887
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734398988;
	bh=e4oykdNzqp3U/ysHZwf9sZj7W3/zqo027MCN1jhVxxc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cXYb+v+/BQnIuB2SarMfy6RZrGuGndT9RW2q/X8FmYgeqOUl7r2qeva5ymo8TA/au
	 NlQTKsHBTYcU1flFH+xZWlxh/YhFD0vF8KtCQjjX0PXitib79WH3Mk9Wv7p83wj7D+
	 LXFRnuCliRkBsEKDq6KzbwnvMNOP5vRtKD/ebDuSJkYUiu4o3KkRX6O6IVxUtx/auf
	 COJ19M90yyeAM+7iH/OJByYpNsmUTyvYfOgxHlxrof/p5UUL62gRmbUG/+9HoSh8J3
	 CGwBs9fsx+d9+/UquqmVWkpK/d58y3Bm0y8pL9fhMLGeoKJ1P/jyR+jCdIHvL2WzhH
	 G0K4bhQ5Iemsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91DF984887;
	Tue, 17 Dec 2024 01:29:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B4EACE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 01:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C3E684885
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 01:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cAMpJr88-eui for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2024 01:29:46 +0000 (UTC)
X-Greylist: delayed 387 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 17 Dec 2024 01:29:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9713784880
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9713784880
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=acelan.kao@canonical.com; receiver=<UNKNOWN> 
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9713784880
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 01:29:45 +0000 (UTC)
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8FB8D3F475
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 01:23:15 +0000 (UTC)
Received: by mail-qk1-f197.google.com with SMTP id
 af79cd13be357-7b6faab8334so632468885a.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 17:23:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734398594; x=1735003394;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=e4oykdNzqp3U/ysHZwf9sZj7W3/zqo027MCN1jhVxxc=;
 b=WN+ZLUlbbGtpJYE66mOMrKpap6JGfqDMIXr/AVTcb8q9A9Q1EMNcQNPuSvpN9IWP5x
 jRWZSQ03jcu7hBWP4JqqKQPKFqBCSKbYYFqII7qSOMtbdiQNNr9LVPlJuakUKmSt7sbB
 Ke5mTlvHymrlB5+zjYhnh/yw5U1/P2Kpjdmhhmdrcrt+Y9jvCSBBuW63Q4TR04XzyNJ6
 8eS1lmhV8gREEIA8/E2WaKQ5yX65UzAonlautLbSetMHOOhlv+s1KvTT+BMyXGLYuzM7
 C4O9+EwCfktH0nVncYsxt0h/ldwbrjKsxoYXmWcgNb4iQPNZNpUX0e5GMQuvnZNcVTy5
 L55g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVHJerUHgWeZ0BcoeG0TPyc6H6VNDZjwIt++vHXXa1YMTOFMBp8pGuA0oFftdyH60E4OauWyPr6wlhnZ7SsVOQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy/RvtLgffChJ9uwk/JAvMBGSlveuc4ZwjPAjJrSSgtDyq4bhSh
 tjQKwt/dnr/lo5pYxM5Z5naZGm+NGtJUtCzo+33pzCcj5DYnNKBRDP+mlpXuok7+48gqeUNCrBb
 yUmHEYciYDtpaCAakonRCZa+ciV3pvRlZZVys+/bf132NB3rK0HN7JBjLnWZob1h/pw/KHfmugp
 BGmZS624M=
X-Gm-Gg: ASbGncvnj4ZTtL4QMdHaNG4RhK0vc9+R8y7fM9KcBf8R8/EQxMiULNMRT9WmXog/u7r
 4YGohVH0URor6EvA0Ye+ObKmazKPW67ptyORJRtoG64OPbszbbVo22dWV5p8CG7/DmWWPjpbFJO
 fp2U/ToOxSnleNkEdO2CqP+cntHUdCWckaDYrkKXTV91AuWce1T6z+X9pu5DBOYVXJV1XjUgtul
 nWUw54raf1KC47yB4muXyGpOUc8sOVRxNfdLWFK13+E4KRJhSojrOsAo++loy68STdOZbbu5aY3
 m6gMiWwV7QVTlWhaZRf2W48KTVEAx8VepoM=
X-Received: by 2002:a05:620a:2945:b0:7b6:cc37:cbf1 with SMTP id
 af79cd13be357-7b8594a4703mr224591385a.23.1734398594472; 
 Mon, 16 Dec 2024 17:23:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJTAJ9XJb5Czh3X9+Wfy9QchOyDmnenuxFZ///v6qAtwPn/ytbeNIDSbXJAtA5rR8LFoKaYQ==
X-Received: by 2002:a05:620a:2945:b0:7b6:cc37:cbf1 with SMTP id
 af79cd13be357-7b8594a4703mr224588485a.23.1734398594162; 
 Mon, 16 Dec 2024 17:23:14 -0800 (PST)
Received: from acelan-precision5470 (211-75-139-220.hinet-ip.hinet.net.
 [211.75.139.220]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7b7048c9f62sm274358485a.111.2024.12.16.17.23.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2024 17:23:12 -0800 (PST)
Date: Tue, 17 Dec 2024 09:23:05 +0800
From: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vitaly Lifshits <vitaly.lifshits@intel.com>
Message-ID: <o6u6fr4znqfcznzq47jlqojdf34vdhardfypw3kl5y76pxjk6n@cxcp2mlsv62k>
Mail-Followup-To: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20241216051430.1606770-1-acelan.kao@canonical.com>
 <a1c44976-9e88-4d58-bad8-34fd397ba626@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a1c44976-9e88-4d58-bad8-34fd397ba626@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1734398595;
 bh=e4oykdNzqp3U/ysHZwf9sZj7W3/zqo027MCN1jhVxxc=;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
 Content-Type:In-Reply-To;
 b=WmG2ExweBeYc9j4q8ntu/6PTbphV0nK5EgQsO2fvMBX7u8E0fiyvTDOFsJtGAVon9
 3pY15wlPq2wcmLwm2uTzxtM3zngF2DNZXujFc3+ceP/eqpQqHaEnE6v5lJL4JILNrU
 DKeEJIFzb145enIaXV3v38bBf3m3cw/tkR2jHTTAXcRnmJRUUvRabrn54VXZasmhjL
 5x5rttLxctNPxKMym08B9xQU7NCBd17Tw2E84JILTDtC3ZBbN5IRaZo6+WWPambvBA
 nE9zjDe6dVcclIqbvhszejXlSVwslCIxV53NK3wtlH2Bsud/PoJxh8oYueoO8OGMpy
 e0xBVxOas8CDg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=WmG2Exwe
Subject: Re: [Intel-wired-lan] [PATCH] igc: Return early when failing to
 read EECD register
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

On Mon, Dec 16, 2024 at 06:53:10AM +0100, Przemek Kitszel wrote:
> On 12/16/24 06:14, Chia-Lin Kao (AceLan) wrote:
> > When booting with a dock connected, the igc driver can get stuck for ~40
> > seconds if PCIe link is lost during initialization.
> > 
> > This happens because the driver access device after EECD register reads
> > return all F's, indicating failed reads. Consequently, hw->hw_addr is set
> > to NULL, which impacts subsequent rd32() reads. This leads to the driver
> > hanging in igc_get_hw_semaphore_i225(), as the invalid hw->hw_addr
> > prevents retrieving the expected value.
> 
> Than you very much for the patch and the analysis!
> 
> > 
> > To address this, a validation check is added for the EECD register read
> > result. If all F's are returned, indicating PCIe link loss, the driver
> > will return -ENXIO immediately. This avoids the 40-second hang and
> 
> It is not clear from the patch what part of the driver will return
> -ENXIO, you have put -ENODEV in the patch, but it's ignored anyway.
I was thinking of using -ENODEV or -ENXIO, and I forgot to generate
the patch again after I changed it to -ENXIO in the commit message.
I'll fix this in v2.
> 
> > significantly improves boot time when using a dock with an igc NIC.
> > 
> > [    0.911913] igc 0000:70:00.0: enabling device (0000 -> 0002)
> > [    0.912386] igc 0000:70:00.0: PTM enabled, 4ns granularity
> > [    1.571098] igc 0000:70:00.0 (unnamed net_device) (uninitialized): PCIe link lost, device now detached
> > [   43.449095] igc_get_hw_semaphore_i225: igc 0000:70:00.0 (unnamed net_device) (uninitialized): Driver can't access device - SMBI bit is set.
> > [   43.449186] igc 0000:70:00.0: probe with driver igc failed with error -13
> > [   46.345701] igc 0000:70:00.0: enabling device (0000 -> 0002)
> > [   46.345777] igc 0000:70:00.0: PTM enabled, 4ns granularity
> > 
> 
> Would be best if you could also attach the sequence after your fix.
Sure

> Please add a Fixes: tag.
I'm not sure which commit should I add Fixes to.

> Please make [PATCH iwl-net] as a subject prefix. Please CC Vitaly.
igc is an ethernet driver, should I also add iwl-net tag?

> (But please also wait a day prior to sending v2 for more feedback).
> 
> > Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
> > ---
> >   drivers/net/ethernet/intel/igc/igc_base.c | 4 ++++
> >   1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
> > index 9fae8bdec2a7..54ce60280765 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_base.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_base.c
> > @@ -68,6 +68,10 @@ static s32 igc_init_nvm_params_base(struct igc_hw *hw)
> 
> This function is used only in igc_get_invariants_base(), which ignores
> the return value you have added. I would expect it to propagate instead.
You are right, looks like the patch fixes the issue accidentally.
Return earlier in igc_get_invariants_base() skipping the rest of the
settings. The part impacts the behavior is nvm->word_size will be 0.
And then in igc_get_hw_semaphore_i225() the timeout value will become
1. So that we won't hang for 40 seconds to wait for the timeout.

This patch is not perfect, I need to figure out another way to address
the issue better.
Please let me know if you got any ideas.
Thanks.
> 
> >   	u32 eecd = rd32(IGC_EECD);
> >   	u16 size;
> > +	/* failed to read reg and got all F's */
> > +	if (!(~eecd))
> > +		return -ENODEV;
> > +
> >   	size = FIELD_GET(IGC_EECD_SIZE_EX_MASK, eecd);
> >   	/* Added to a constant, "size" becomes the left-shift value
> 
