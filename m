Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 345FB8D2B57
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 05:18:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C412813D7;
	Wed, 29 May 2024 03:18:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5488f6Wgeso5; Wed, 29 May 2024 03:18:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2503081448
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716952698;
	bh=wzuecrJ0JFchccEBCmxLIDXRwMQkEzpCJKJ1c3kKpP4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vXmoyNkSERRGNa7B5gVwAun+kUrcnbN5BpC9X8sFM9TQOekqm65UcIN6WQ9TNMM+8
	 Gyenn/RSCQpOIR7HNYnjwIMJrky/U/+HJxhYc+v9e1gfKuOLKQfR/PKmMI7CM+57N7
	 +ix3KAiGXhIyoBeaZmZJu519r88r2jtIpLL1XClAiLJzpsvA1Sgc+3RsLYgWLrx87I
	 BYY/+xLMv2E5PErfPgRSvpxUt44P9Ii/rEpITik9HOEFcjViA01RaDdULygyL9tVOB
	 KfQAbbRLg8jum8TrNhqY50DfcJpHTi0hZoDekK1VZBQTz3vJtDD0jjWZ0RcxM0hrFL
	 O1W9GVuzqjnuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2503081448;
	Wed, 29 May 2024 03:18:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D58BE1D1617
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 03:18:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE36F81448
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 03:18:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r9_MssCS838z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2024 03:18:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B83E3813D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B83E3813D7
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B83E3813D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 03:18:09 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B1E3B3FE59
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 03:18:01 +0000 (UTC)
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-354fad82058so681426f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 20:18:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716952681; x=1717557481;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wzuecrJ0JFchccEBCmxLIDXRwMQkEzpCJKJ1c3kKpP4=;
 b=H1kMoW25X3Qo/19gPgqw0rqK+nMkp9AayWEdlLKar9/zxQr2Zm6qAsvvv5Fph7/M8t
 vtjBb3bm2LxnOgJAbIHK1L8T6ae7WQbCRAJmFx1GCFK4i3Ky3MCWcsWMKrlxom7BGNiN
 7gbGGGpfr1ei7nnqyswSnSJCjiBmoUccBa0LAm3UaHc8I6OAayps/pYYRRlNVinq69yn
 A0ni+SdoyFbEg5CK/DMGwwrqd9RSfb4b3r97wzOpzSVHG6oOEcN8nhmn8xL8SyvFXYlW
 IPDATs8jeyCeqK271ajPlE0AMa61Tzk5dvJ1CAhCQqBqmVfTMcwCJsg8WJwJo1+wVn5j
 BPEA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU/VcO9V/RaWP7k3NqVH3v6n6YR9EuqyLTgWRUZW8SYZN6+Mf9BfAo0EP0OQ+mqd/z8fzEXXDMme5uEA6RBFJa9NEy+IC5GCrzfg+6dELfB6w==
X-Gm-Message-State: AOJu0Yw9OOMdlxdhZb53ii/60cE06L7VqAXKZn6LBLVYk3+lmzAFVbEo
 9d6S6ZrMSz10AAfCAqpORWQLBcwqXxFV+tziKGSkUprSRiRTYZh1ZopA95GYCSrKmoKit8o7g27
 FpEfuVIeb0a92ZZVC47JnahIP0uDWs3bUY2WTdc4XRuFJroj6f+fMF9R1ELYvuhz+6+GRCK0wwL
 AkmqGl2Ely6uTEU8+NuvL7Hbfvuv07bn6dv4YPqecxkuTe2pPV02gpAOUUwg==
X-Received: by 2002:adf:fa44:0:b0:354:fa0d:1427 with SMTP id
 ffacd0b85a97d-35526c25695mr13910658f8f.15.1716952681274; 
 Tue, 28 May 2024 20:18:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEpCJ+0J4feg5DWmCamoCmdHKV9NdQcsZdg5GrTQwmVV6HKgfUo06EW5RnIGllF7jaxWmj3OWvP61y/5+LdyDY=
X-Received: by 2002:adf:fa44:0:b0:354:fa0d:1427 with SMTP id
 ffacd0b85a97d-35526c25695mr13910642f8f.15.1716952680890; Tue, 28 May 2024
 20:18:00 -0700 (PDT)
MIME-Version: 1.0
References: <20240528100315.24290-1-en-wei.wu@canonical.com>
 <88c6a5ee-1872-4c15-bef2-dcf3bc0b39fb@molgen.mpg.de>
In-Reply-To: <88c6a5ee-1872-4c15-bef2-dcf3bc0b39fb@molgen.mpg.de>
From: En-Wei WU <en-wei.wu@canonical.com>
Date: Wed, 29 May 2024 11:17:50 +0800
Message-ID: <CAMqyJG0uUgjN90BqjXSfgq7HD3ACdLwOM8P2B+wjiP1Zn1gjAQ@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1716952681;
 bh=wzuecrJ0JFchccEBCmxLIDXRwMQkEzpCJKJ1c3kKpP4=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=t+Dv74QjPBGB3y6rduoyaeebj2bggcd/YFdZKtrr0hf84X9Ch0PPOOr2BqRtOiDF2
 cmClN8xl4kB0eG9SYieYppNrcMvi0scG0zGBt2dJFPyeurgtYRlgbYjXuk1xI97U9O
 sjWdqaXYlJgkKFLaeuZSbeFinYCx3nxdmDSyIO/Bi9ljK5EcYE6yhJL/SOTugrPX/x
 we0iB4h/b6sY+nGpZV3sVvseCz4P5HKZBkPkMh0lCV6Wt7eKWV+XL9OffDKOX+3LPk
 L2SI94OmH/0SRbl/WVH/a7np68r7p1uajOmg84oWySpwnnfnwbXpmuD+CMzhAwFg+z
 FLTaniWLfq1jw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=t+Dv74Qj
Subject: Re: [Intel-wired-lan] [PATCH] ice: irdma hardware init failed after
 suspend/resume
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
Cc: netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks for your kind and quick reply.

> I think this should be called later in the reset path IMO.
> You should call ice_deinit_rdma in ice_prepare_for_reset (replace ice_unp=
lug_aux_dev),
I'm afraid this would break the existing code because in
ice_deinit_rdma(), it will remove some entries in
pf->irq_tracker.entries. And in ice_reinit_interrupt_scheme() (which
is called before ice_prepare_for_reset), some entries have been
allocated for other irq usage.

> What effect does this have on resume time?
When we call ice_init_rdma() at resume time, it will allocate entries
at pf->irq_tracker.entries and update pf->msix_entries for later use
(request_irq) by irdma.

On Tue, 28 May 2024 at 19:12, Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>
> Dear Ricky,
>
>
> Thank you for your patch. Some minor nits. It=E2=80=99d be great if you m=
ade the
> summary about the action and not an issue description. Maybe:
>
> Avoid IRQ collision to fix init failure on ACPI S3 resume
>
> Am 28.05.24 um 12:03 schrieb Ricky Wu:
> > A bug in https://bugzilla.kernel.org/show_bug.cgi?id=3D218906 describes
> > that irdma would break and report hardware initialization failed after
> > suspend/resume with Intel E810 NIC (tested on 6.9.0-rc5).
> >
> > The problem is caused due to the collision between the irq numbers
> > requested in irdma and the irq numbers requested in other drivers
> > after suspend/resume.
> >
> > The irq numbers used by irdma are derived from ice's ice_pf->msix_entri=
es
> > which stores mappings between MSI-X index and Linux interrupt number.
> > It's supposed to be cleaned up when suspend and rebuilt in resume but
> > it's not, causing irdma using the old irq numbers stored in the old
> > ice_pf->msix_entries to request_irq() when resume. And eventually
> > collide with other drivers.
> >
> > This patch fixes this problem. On suspend, we call ice_deinit_rdma() to
> > clean up the ice_pf->msix_entries (and free the MSI-X vectors used by
> > irdma if we've dynamically allocated them). On Resume, we call
>
> resume
>
> > ice_init_rdma() to rebuild the ice_pf->msix_entries (and allocate the
> > MSI-X vectors if we would like to dynamically allocate them).
> >
> > Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
>
> Please add a Link: tag.
>
> If this was tested by somebody else, please also add a Tested-by: line.
>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_main.c | 6 +++++-
> >   1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/et=
hernet/intel/ice/ice_main.c
> > index f60c022f7960..ec3cbadaa162 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -5544,7 +5544,7 @@ static int ice_suspend(struct device *dev)
> >        */
> >       disabled =3D ice_service_task_stop(pf);
> >
> > -     ice_unplug_aux_dev(pf);
> > +     ice_deinit_rdma(pf);
> >
> >       /* Already suspended?, then there is nothing to do */
> >       if (test_and_set_bit(ICE_SUSPENDED, pf->state)) {
> > @@ -5624,6 +5624,10 @@ static int ice_resume(struct device *dev)
> >       if (ret)
> >               dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret=
);
> >
> > +     ret =3D ice_init_rdma(pf);
> > +     if (ret)
> > +             dev_err(dev, "Reinitialize RDMA during resume failed: %d\=
n", ret);
> > +
> >       clear_bit(ICE_DOWN, pf->state);
> >       /* Now perform PF reset and rebuild */
> >       reset_type =3D ICE_RESET_PFR;
>
> What effect does this have on resume time?
>
>
> Kind regards,
>
> Paul
