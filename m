Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAFD9F3A8A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 21:13:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0C3D408F0;
	Mon, 16 Dec 2024 20:13:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8TtuK0x-fiby; Mon, 16 Dec 2024 20:13:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A110408F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734380013;
	bh=61HxeimFlMEVl2KwPvPCcTKNZsDGn+ecl4uR0p2ZsAI=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ozBZmGFt4h9+/DPdfNuxujoqE/nNHr8BHJXOtHMU+r+3hR+zynqcrTNRGVgTU1zA7
	 doLGgaNJsl4R/b37vb5tliXfUDST0VKbAKcNQ5Iz7XWMNedDOyYUJNFuBkv8OZ1gjS
	 cvpeEbq9uRtTl/w5lrVOYWsG1SjHvEuwYWST/dpRnnT8c6QtXWDAi65K7JyUt8DJsB
	 6OF0bXPKb1oAIuNeN2JdEJaMWddNJ44VIYWLH8P4wFtzjulAnjhcyBerqsHMnZlm4+
	 ytSigJ9R8ZSkaPybq72pFa04wIfSOUO2KT3x+M7gQ3wT4WE4TfmydR/QwkKyaxdPAE
	 Rcd/XRdNYnMRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A110408F2;
	Mon, 16 Dec 2024 20:13:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6452DE3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 20:13:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3244881E57
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 20:13:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1P7jzIY2Q7wA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 20:13:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::431; helo=mail-wr1-x431.google.com;
 envelope-from=brianvv@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 21EB781C6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21EB781C6E
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21EB781C6E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 20:13:29 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-385de59c1a0so2998593f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 12:13:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734380008; x=1734984808;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=61HxeimFlMEVl2KwPvPCcTKNZsDGn+ecl4uR0p2ZsAI=;
 b=KaDzE7vtFuFXZ1zbf3JoF7W8IxobSDdVjtoHYrIdT2NDq6zglnq1TW1uDgkWWW944n
 7VJh6rHshYwf2H00vi5riVi1QSPGnYQhF56kcMV7VxOtzAguWWO+fGpOM1FJtGRhGCdm
 0e6EcraC+HaopRdRZVyG83cJfrb5THdl69zgE36av1IwOj9jIy5iNa63a3GqF9OHdrEw
 ipokPsOZj0OJYXCV0z2V+ey3pWyiXq1AOa8SBToiP++Ezo2WbaK7beD+CB0RMlgRQp4h
 HLt869dDYvLd2HRTaS8DlGkMyzQpYJEfhrNZF/VpguddIU3i1uHwTN5NE89ZjUAbEM3f
 wv7w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVlea5BMXKdjMbmBaMuPrH76c/nYEhlRvIn5Z65I4tCWW2xU96OoD4waWEYnnrJlLrCGukjL/rMEzTcaWrr9+8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyr7qfJpKMuyd6ibEpqjVdGReZDKiKm91zCqTm4HAnya2RPOI8f
 pFBj8X7TH46c4Hxi+DNxzKuICf55BsWfiKipCVKFgYBjHG0g7eRJYbCrMwnRkAlYgY8+BTsPK3Y
 NUAOL3ixWON9picuClR6o8OCYLzk53mZPcq9+
X-Gm-Gg: ASbGncvSWQFbNL5ocrsCHtZe7XS0B5jIKxSCWvUzv90TD5AKFZj1fK4f9zrOHKj5f2i
 oBY2nxPjC1Lmwodkw5IYSpu3Zr4x/LmGt9sQ26XXRrK/gZO0s5l2f0jzvQSbl1Fjd6V9t3g==
X-Google-Smtp-Source: AGHT+IFmlbX9xhNR1EJspR2ERQUcqblea1plJilcBHpQ2o55rePDoziJMVFfeClQNZNy/tF+ey1XIElWbRaT+lI6g58=
X-Received: by 2002:a05:6000:4616:b0:385:dedb:a148 with SMTP id
 ffacd0b85a97d-3888e0ac4f4mr11412043f8f.46.1734380006716; Mon, 16 Dec 2024
 12:13:26 -0800 (PST)
MIME-Version: 1.0
References: <20241216162735.2047544-1-brianvv@google.com>
 <20241216162735.2047544-3-brianvv@google.com>
 <b81501de-7dd3-4808-920e-14b2cc817038@intel.com>
In-Reply-To: <b81501de-7dd3-4808-920e-14b2cc817038@intel.com>
From: Brian Vazquez <brianvv@google.com>
Date: Mon, 16 Dec 2024 15:13:15 -0500
Message-ID: <CAMzD94QR-+408wf+dindhaw+NMJ1GK9W-4xuiJpY2FkhtMVLig@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 intel-wired-lan@lists.osuosl.org, David Decotigny <decot@google.com>, 
 Vivek Kumar <vivekmr@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>, linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, emil.s.tantilov@intel.com, 
 Marco Leogrande <leogrande@google.com>,
 Manoj Vishwanathan <manojvishy@google.com>, 
 Jacob Keller <jacob.e.keller@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1734380008; x=1734984808; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=61HxeimFlMEVl2KwPvPCcTKNZsDGn+ecl4uR0p2ZsAI=;
 b=EmpDNENvnZWvcbIE8I7NEvttGSQrviyTHIwkGhHi40pFltofJ7CSJyf24Pmz8uHSJv
 THf5nvWvVjKUFalq0Ur11Uk4HpSZwDgUnJj55s9nkgHEyTFVc1AaItvgArZmACguuoJ3
 7F/9alDVzxsIe4LlFMpnuNjBOER5sDw6X/TE+dFPCq2ON/UoCokudVR4q+ai1u1M06eW
 j31NOn+7FxYCwsYNjEjnDiT7AQG25mRA0x523w051fThzThvzz6APcSMQwtEZLUOaBUu
 ASV8l3+bn6/asVTakAcwiayjUQpjjHK8T8CgyqHhubRhknWH+6YqEk6QeoHqfkbqRHmW
 Y+8Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=EmpDNENv
Subject: Re: [Intel-wired-lan] [iwl-next PATCH v4 2/3] idpf: convert
 workqueues to unbound
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

On Mon, Dec 16, 2024 at 1:11=E2=80=AFPM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> From: Brian Vazquez <brianvv@google.com>
> Date: Mon, 16 Dec 2024 16:27:34 +0000
>
> > From: Marco Leogrande <leogrande@google.com>
> >
> > When a workqueue is created with `WQ_UNBOUND`, its work items are
> > served by special worker-pools, whose host workers are not bound to
> > any specific CPU. In the default configuration (i.e. when
> > `queue_delayed_work` and friends do not specify which CPU to run the
> > work item on), `WQ_UNBOUND` allows the work item to be executed on any
> > CPU in the same node of the CPU it was enqueued on. While this
> > solution potentially sacrifices locality, it avoids contention with
> > other processes that might dominate the CPU time of the processor the
> > work item was scheduled on.
> >
> > This is not just a theoretical problem: in a particular scenario
> > misconfigured process was hogging most of the time from CPU0, leaving
> > less than 0.5% of its CPU time to the kworker. The IDPF workqueues
> > that were using the kworker on CPU0 suffered large completion delays
> > as a result, causing performance degradation, timeouts and eventual
> > system crash.
>
> Wasn't this inspired by [0]?
>
> [0]
> https://lore.kernel.org/netdev/20241126035849.6441-11-milena.olech@intel.=
com

The root cause is exactly the same so I do see the similarity and I'm
not surprised that both were addressed with a similar patch, we hit
this problem some time ago and the first attempt to have this was in
August [0].

[0]
https://lore.kernel.org/netdev/20240813182747.1770032-4-manojvishy@google.c=
om/

>
> Thanks,
> Olek
