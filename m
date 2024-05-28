Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AFB8D1443
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 08:17:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9B1D405C1;
	Tue, 28 May 2024 06:17:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xXYLnu4DNXzU; Tue, 28 May 2024 06:16:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BC0040595
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716877019;
	bh=bjqG7ADveeCaXZ5UW3lKAiVh1hfQx3kB3hQVRqzxSs8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2R8vDVKv+AAxdD0Xqa20pUjQUzfmVi+uVci6IckNPfTfqqkGpvHqsM2A08cisV23f
	 Wl7wOoGI5wpMFp4Lx73z66Kds7YVpQMLyXOjacVh+iJf8IGtnOifWPgcUcZEYSnCs0
	 1LP9o6sZ9orGf6DC6N6mLpvLHL6a1n7J97AodY0212s2/u4pEUpCpJxcF1ZyAvnXuT
	 mbDkeALgTGbal/Dv00fjGUfhHHsWk4UGFcklxFVl4S4guAqYRasGAit13wGqN7ZnQi
	 FbZExbQO5LvSRKVbqRvz4S1DFpnxwKK0Kwc3YEHelvnxfP9eDZV/xxIWokys8t5E7b
	 QgG/ow2JBOVew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BC0040595;
	Tue, 28 May 2024 06:16:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3096F1D2474
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 06:16:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 197F781FEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 06:16:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xvstAmSAjYb9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 06:16:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A997881FEB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A997881FEB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A997881FEB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 06:16:55 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-659-7MKBkXI-Mmipne1Y9iLL2w-1; Tue, 28 May 2024 02:16:52 -0400
X-MC-Unique: 7MKBkXI-Mmipne1Y9iLL2w-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-354fc1122baso340150f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 23:16:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716877011; x=1717481811;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bjqG7ADveeCaXZ5UW3lKAiVh1hfQx3kB3hQVRqzxSs8=;
 b=o59/8btkJlfCGSKbiTFZ7iDJXPBqVAMzLhBTOWtrA6HqU86DH1LhkDRh8D4XQ4rUBJ
 fgTDALRdVCxidzrtVrQinhQD4WZPSF0vg/QGEb43lFHf76FxeP3OaJ5pSrvBUZ2GxkPW
 XLPbHax/uFLARBpHmPuIMLTkGtW1IQ6GsicvU7mRFk8vVMuxOregRC7LS6GrJ97KkIY5
 e5vNvB8neA5MT0C+wMnkRWnpZjn7mgYUizIjV0hnjrOtI3dy3FAaYC7tqKgPNmq2NZco
 LWcFjYpCfnkKAjG6PQ6SptL4RvYTyXq5svqCfPysNDXOtw1kLYCyua5gR9MkSKH0/9+L
 FxYQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWuK1CuQS5HmR8FN4E8bBH8q+H9lAmz8K7Pi/K/frz+mX4Jg6kS6uNDM85R4lSsZHL2M80C44JLL6SmGtG0tQ0Xy7dfaleJMBB5g4l8UdX7XQ==
X-Gm-Message-State: AOJu0YxW0YjvopCKfUCSLlC+8XPUAw3o+EeuA8fnnsyWkeOYdioLVYky
 uvY3dQVqkbwP9RU/q8EqaKj37YEWl1Gs8rYXrK0aM4UIwru4k8pfgT8NxNVHg85vrcGPY1Riy26
 7eCQrxQua6mX6MPUfGryP7nhyQjFx76JrL5wk9cb48yQQfpj87O+svopVeYeYqiEb9SfTket0Gw
 lW2HGrqDi8Md97kN0aPrRc5CyhkS19MHFaMxwXLZV77A==
X-Received: by 2002:a5d:62c6:0:b0:354:f4d5:6bee with SMTP id
 ffacd0b85a97d-3552fdb0059mr8170630f8f.39.1716877011359; 
 Mon, 27 May 2024 23:16:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG88TFXQBh2G9mY2MG8R/LMQt/sWQFlrKT9A+CwvmWXKIhEyVu0bFmQtX9Sf6EjB6vG7eHvoaQD7SWATEVgSWU=
X-Received: by 2002:a5d:62c6:0:b0:354:f4d5:6bee with SMTP id
 ffacd0b85a97d-3552fdb0059mr8170611f8f.39.1716877010961; Mon, 27 May 2024
 23:16:50 -0700 (PDT)
MIME-Version: 1.0
References: <20240522231256.587985-1-mschmidt@redhat.com>
 <28f2d06d-7ddc-4b98-bc58-b560028611ed@intel.com>
In-Reply-To: <28f2d06d-7ddc-4b98-bc58-b560028611ed@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Tue, 28 May 2024 08:16:39 +0200
Message-ID: <CADEbmW11zHQC3Cq8RAx_WEHPYwEE3O5oktgnLv-ScHN=0nuWJQ@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1716877014;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bjqG7ADveeCaXZ5UW3lKAiVh1hfQx3kB3hQVRqzxSs8=;
 b=HIwdxzfh8qGQcAvx5cVpT3Ss4AWsC+4+PpI23Ej+yZFv0Sa9yrKP4/EFFpwoa60iMLETpQ
 X3IJKgpchWBpdX20P3ky2jH9baXTC1QofOSkkYRpKg99fuKEnI7iNDHyHzQKoO37H0TIM3
 jYd4lqu9CJMOwJhJAzEeYbSSnIQi5Tc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=HIwdxzfh
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use
 irq_update_affinity_hint()
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
Cc: Nitesh Narayan Lal <nitesh@redhat.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 24, 2024 at 11:04=E2=80=AFPM Jacob Keller <jacob.e.keller@intel=
.com> wrote:
> On 5/22/2024 4:12 PM, Michal Schmidt wrote:
> > irq_set_affinity_hint() is deprecated. Use irq_update_affinity_hint()
> > instead. This removes the side-effect of actually applying the affinity=
.
> >
> > The driver does not really need to worry about spreading its IRQs acros=
s
> > CPUs. The core code already takes care of that.
> > On the contrary, when the driver applies affinities by itself, it break=
s
> > the users' expectations:
> >  1. The user configures irqbalance with IRQBALANCE_BANNED_CPULIST in
> >     order to prevent IRQs from being moved to certain CPUs that run a
> >     real-time workload.
> >  2. ice reconfigures VSIs at runtime due to a MIB change
> >     (ice_dcb_process_lldp_set_mib_change). Reopening a VSI resets the
> >     affinity in ice_vsi_req_irq_msix().
> >  3. ice has no idea about irqbalance's config, so it may move an IRQ to
> >     a banned CPU. The real-time workload suffers unacceptable latency.
> >
> > I am not sure if updating the affinity hints is at all useful, because
> > irqbalance ignores them since 2016 ([1]), but at least it's harmless.
> >
> > This ice change is similar to i40e commit d34c54d1739c ("i40e: Use
> > irq_update_affinity_hint()").
> >
> > [1] https://github.com/Irqbalance/irqbalance/commit/dcc411e7bfdd
> >
>
> This is sent tagged for next, but the commit description reads more like
> it fixes deployments running irqbalance. Would it make sense to mark
> this with Fixes and target net instead?

I chose to not add a Fixes tag here. The similar commits for i40e and
other drivers did not have them either. If I had to add Fixes, the
referenced commit could be cdedef59deb0 ("ice: Configure VSIs for
Tx/Rx"), from 2018. But that's not good, because
irq_update_affinity_hint was added in 2021 with commit 65c7cdedeb30
("genirq: Provide new interfaces for affinity hints"). I'm OK with
next.

Michal

