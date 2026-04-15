Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAZ5HmDu3mnTMgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 03:48:16 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C403FF8F3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 03:48:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D033542EC8;
	Wed, 15 Apr 2026 01:48:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kmf_l4z3nXhC; Wed, 15 Apr 2026 01:48:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14BDE42ED5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776217693;
	bh=37f+UWexUmjb2nKwNdsKiYaV71EelvYBwijtZJ1ZH4I=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w0HN5W/Bx1qlcRE+e7WnuRBskyNrTtyDyVqz12EiHTO97vJBLo7gyIbv9VnwPjHnR
	 TUpEE61trN1I/jJaurb6o1Ie+SHJydtVBPZdZMoopM6K0LOX/FsxN3dWbXfcoyOTs7
	 rQqkhCzRIl8xH9Oj7lsDT1Iw6BclqfS8IXcJhVYA/KWaiWNLacVvHVxxVTlYOT5Bam
	 ozs+Y/70wjYGK1pvOF6/ylpHNAL9vr0stAM6190aX0welYLVN3UxXV0umsdJwRR0Tx
	 OjXZEV4Yx7seHudF6Iy7nh0VxLBbWSm3FQAuTagrxShqDctlX6HsQebyk+y6ZNYEex
	 6ttvbKBNYd6VQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14BDE42ED5;
	Wed, 15 Apr 2026 01:48:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 91AD0375
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 01:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8EE9784F76
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 01:48:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nwL7g6TU9lN3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 01:48:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b133; helo=mail-yx1-xb133.google.com;
 envelope-from=lgs201920130244@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B33E184F75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B33E184F75
Received: from mail-yx1-xb133.google.com (mail-yx1-xb133.google.com
 [IPv6:2607:f8b0:4864:20::b133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B33E184F75
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 01:48:10 +0000 (UTC)
Received: by mail-yx1-xb133.google.com with SMTP id
 956f58d0204a3-650789b22e3so7101441d50.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 18:48:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776217689; cv=none;
 d=google.com; s=arc-20240605;
 b=KMOy0VUbJZYLIsVqwOzfZX9aiqWB8OjT+pfEaowHf/JmA/l77FPlPRDdBN5av/2DRU
 eWtQrs4t++MgN8DdSpjYFsw8zSKoXvRLWx29JiFBjjQy9Ea3KvjOYkjqlouA2QPDzXFS
 DjhiV7ERMgc3bmpS6jIXhIkzYAHcqjkY2Mn52aNI/ICfWEbypulgBC7vX0WEvtgGosCD
 fxMTddTlmy8OP5/gqHIHCCSlymdIGTKxeG2UkkOgGhrcxToqSKvh7wWz+61IxuA8Tjs+
 X0CGU5qj67NVcS4/MtxWYm41MG4z/1j0iLSgmL1lhuY47CS5ZPK6qmUaoDJLNk8BCCHC
 x5+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=37f+UWexUmjb2nKwNdsKiYaV71EelvYBwijtZJ1ZH4I=;
 fh=e4bTkvXBGAyUqScwiXtVy+PoJDAU3V5Y0TBaPVVGmkc=;
 b=OZYtOHVQFr++V5y/6fI9wqXzNOEAN/ZvalElFOmtU8uEZrgkMtYVe7kQ/J6ryrbvlr
 4dmK+wHvXPIo3OsCQ382QYCtYaDuk0Lx4+wKwmFj8VoaFRXEQgdTnuHmIGiTHStxLESX
 h4eaBZXsPh3doTnI7n0RmGoh3qix63J+FLr1Rbfl4FTxpOfAVdJKPURdWjzz1YI/Ddrb
 xU4voBFZJ6HtT309hDMcLrY7m6V1Hz8lPoVWtTqY2k4iXYTIWBx+3gYsIthnbKZ51WGW
 BnDew6xybUajc5CfOGa/vGXLOzCXe+jres8cbBiO+1zZ4fErtV7yWt7LHfkAAKT9/0eb
 hD0w==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776217689; x=1776822489;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=37f+UWexUmjb2nKwNdsKiYaV71EelvYBwijtZJ1ZH4I=;
 b=cK5a6XmHIMQJemqAcNYJft9qStDNipc79j+5g6bQ3dtrpGF+lTCyjTgj9MC9msxLlh
 mhlO3cs+BsuRXWSQH+9R6MDRO9jbyxQSHH3IzOKeOpbPjxsKgMM8fKj2xKCEkGGuLh24
 wATBiZ6F2UQwQCTMZ51ZY+F8VWs1+0Ftm7HR8FH9omFDBVpgiM2wHgtaNz0zKTTEyyCn
 NjhZ5K8hzq8y1YDvMeOjS70GRJAdvRgKPoeK8rHBATGN8CMmKh7DmroPJHLl6b4HvqZT
 3fNbWINxs4zwMTGTiIbomgqu62nR+ZgQE9tKoWh9ZQDhdCPfemoJZiKQjZW6x3dCjq66
 AoDQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ9vcM0vJ3KJHLoMj6ZvSzLnxaSzaQH+LxwLRepFzVDvaCMzLJhKVGhznL7h/vpBOeWuBdeOnc0/TfHfb/yirPI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyEfA9uiEE1z8r1FPReQtxsgW612tXDGSSwgqlhKN46TTbW299V
 1CRheSWwoh13QN7CabTlRc0H8cnpV7uFDP8AHTdEIAGN5GJ81NqduU5kDx8F1VsAgTbQNruLs11
 TAZNzjXwmpyyCfxe9wR0jLvwstkJXawI=
X-Gm-Gg: AeBDievJqQYpduPj+PWZngydhPfjIICsgTkldTBUMSun/pAyi7u6i0LbqIIkzNuArUW
 WnUHkEhjx1molptkdMqGftEqrqR565hwbHMHcGY39RsbI9KM5qxvUT9Rljq/+CUBBO/fXCFImW9
 cRWacfWLHBP3mOLS/Xe4v9UCa6bamDT9qMJ+IoxQIAsTB+dngc+4YiaGxYMD1uO8eeaYoqupQ/C
 rhI5rK/JVkrVtOz8NCBOkEXL0MaowdRJB856bvb41SYJQKFShLlqBT7QgS/BTYY/dK0FsReNe24
 XAaJ4JLTzBg5ZXNnt43jjRep96wvXnQ=
X-Received: by 2002:a05:690e:c4e:b0:651:c203:4c47 with SMTP id
 956f58d0204a3-651c203521emr12060568d50.35.1776217689415; Tue, 14 Apr 2026
 18:48:09 -0700 (PDT)
MIME-Version: 1.0
References: <20260413112030.2694563-1-lgs201920130244@gmail.com>
 <5da15f31-e9af-4f8d-82fd-eac29a6d98f6@intel.com>
In-Reply-To: <5da15f31-e9af-4f8d-82fd-eac29a6d98f6@intel.com>
From: Guangshuo Li <lgs201920130244@gmail.com>
Date: Wed, 15 Apr 2026 09:47:50 +0800
X-Gm-Features: AQROBzCCUNU9uahs4IXfUesDYaPErWVj8Mz6N5ygwqO9C1cJWWLC0UM8TIXIpcE
Message-ID: <CANUHTR8uNVWR48xs90s+MtGQ6J-1j5R0+64MKVGin0cf-FjRWA@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Joshua Hay <joshua.a.hay@intel.com>, 
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776217689; x=1776822489; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=37f+UWexUmjb2nKwNdsKiYaV71EelvYBwijtZJ1ZH4I=;
 b=reG4d1yYQcn7Mqerf42OWxMDjI4ij9d+nvGWkRVw4E79jOqc+mkVifvvch6VvE3F62
 JpTRZi2roGMy+jIjPVvAOtqhPKRVcwGsgnYUr/P9XUtsnYhqSv2hWJim4LJzNXKoB/a2
 3GkA6yAMYzbHDEf+cLn5NEqVylqWk7GGige4KvdcJpMlCr1ao/Qpdzi/SeJmlquoWT/9
 MODQTgMdn2fTGx94KL/GEk3IUnOyBoqSMQIArv/mgob75VfCq4kxxLdy5o0YrBN2soAn
 /U4qk2sJK2F7cijFKhsBVhNXJMHOvHQ4nZMn1SX+41h/grAEndBY/Uy1YR+Y9IQdbu34
 rLwA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=reG4d1yY
Subject: Re: [Intel-wired-lan] [PATCH v2] dpf: fix UAF and double free in
 idpf_plug_vport_aux_dev() error path
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:joshua.a.hay@intel.com,m:tatyana.e.nikolova@intel.com,m:madhu.chittim@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:gregkh@linuxfoundation.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[lgs201920130244@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lgs201920130244@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 72C403FF8F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Jacob,

Thanks for reviewing.

On Wed, 15 Apr 2026 at 05:03, Jacob Keller <jacob.e.keller@intel.com> wrote:
>
>
> This doesn't look right. The commit message analysis seems to match this
> fix from Greg KH:
>
> https://lore.kernel.org/intel-wired-lan/2026041432-tapestry-condition-22ff@gregkh/
>
> But the changes do not make any sense to me. It looks like a poorly done
> AI-generated "fix" which is not correct. Greg's version does look like
> it properly resolves this.
>
> > v2:
> >   - note that the issue was identified by my static analysis tool
> >   - and confirmed by manual review
> >
>
> What even is this change log?? I see that version was sent and everyone
> else was sane enough to just silently reject or ignore the v1...
>
> >  drivers/net/ethernet/intel/idpf/idpf_idc.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> > index 6dad0593f7f2..2a18907643fc 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> > @@ -59,6 +59,7 @@ static int idpf_plug_vport_aux_dev(struct iidc_rdma_core_dev_info *cdev_info,
> >       char name[IDPF_IDC_MAX_ADEV_NAME_LEN];
> >       struct auxiliary_device *adev;
> >       int ret;
> > +     int adev_id;
> >
>
> You create a local variable here...
>
> >       iadev = kzalloc(sizeof(*iadev), GFP_KERNEL);
> >       if (!iadev)
> > @@ -74,11 +75,14 @@ static int idpf_plug_vport_aux_dev(struct iidc_rdma_core_dev_info *cdev_info,
> >               goto err_ida_alloc;
> >       }
> >       adev->id = ret;
> > +     adev->id = adev_id;
>
> adev_is is never initialized, so you assign a random garbage
> uninitialized value. This is obviously wrong and will lead to worse
> errors than the failed cleanup.
>
> I'm rejecting this patch in favor of the clearly appropriate fix from Greg.
>
> >       adev->dev.release = idpf_vport_adev_release;
> >       adev->dev.parent = &cdev_info->pdev->dev;
> >       sprintf(name, "%04x.rdma.vdev", cdev_info->pdev->vendor);
> >       adev->name = name;
> >
> > +     /* iadev is owned by the auxiliary device */
> > +     iadev = NULL;>          ret = auxiliary_device_init(adev);
> >       if (ret)
> >               goto err_aux_dev_init;
> > @@ -92,7 +96,7 @@ static int idpf_plug_vport_aux_dev(struct iidc_rdma_core_dev_info *cdev_info,
> >  err_aux_dev_add:
> >       auxiliary_device_uninit(adev);
> >  err_aux_dev_init:
> > -     ida_free(&idpf_idc_ida, adev->id);
> > +     ida_free(&idpf_idc_ida, adev_id);
> >  err_ida_alloc:
> >       vdev_info->adev = NULL;
> >       kfree(iadev);
>

You are right that the v2 patch as sent is incomplete. That was my
mistake when preparing/sending v2: it accidentally dropped the adev_id
= ret; assignment, which made that version incorrect.

For reference, the original v1 patch is here:

https://lkml.org/lkml/2026/3/21/421

In v1, adev_id was assigned from ret before use, so I believe that
particular uninitialized-variable issue was introduced in the v2
posting.

Sorry for the confusion caused by the broken v2 posting.

Thanks,
Guangshuo
