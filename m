Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D4F8681A7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 21:01:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E2D481ED4;
	Mon, 26 Feb 2024 20:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w2b_KZjoI3FX; Mon, 26 Feb 2024 20:01:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E14CF81F0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708977690;
	bh=nYxGw25SGI76GYgAampCb+LamaCZ5XgpHA2NlSjROPE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fx+8KwWsPa8UPiYg3YVzGXmFFkjy3UEfQ8gIJlDMKxocPtWyO9URT4yzoyv75lxMc
	 9VUijqafJ7+wrtlKhT9mL3OV6rV+fIPKdSZxAYJkl+3fl+FT74Q8xQrvxuxQhQa3je
	 wl9U2VbxRSqs/7EqZIA2ajb7oWy6UEbJhiBvw066VLFvg0M7HfC1wgB1Ibb+LZqMWA
	 C9eLhKDZB+2rPLgp1ToWd9LKuBr8kbKJKJoHGNZ3lNbJEJ2QOYHd0/y4idgadA1I1b
	 lsSl0DrO6UZ4/0BJN1IdTibJBts66kV/jSKVuV/GRZTBJYVnXAGZcWw2JsxcHxmN8x
	 yFfRnZUacrsVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E14CF81F0C;
	Mon, 26 Feb 2024 20:01:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D6D31BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 20:01:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1823781EF1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 20:01:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gu2DvYmV5Of4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 20:01:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D665881E2B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D665881E2B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D665881E2B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 20:01:25 +0000 (UTC)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-318-9cpHlR5cPWKdvlyukhnKwA-1; Mon, 26 Feb 2024 15:01:22 -0500
X-MC-Unique: 9cpHlR5cPWKdvlyukhnKwA-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a3e6bc4519fso214086866b.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 12:01:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708977681; x=1709582481;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nYxGw25SGI76GYgAampCb+LamaCZ5XgpHA2NlSjROPE=;
 b=Lnn3+L8+o3eyaZ6bJCCJpv8YGkXC5AgEuiG0BfzFagRkXnAu2FUU/P3drmHSqUAmsc
 n4XaKPAEMs2lg0kOhKHujreUqj9XZHHnWDwC9vFgQLMoogVWxCrIdxsN42Fmv88Cl7cq
 R8Qja63GfryLGjnM8SY7zHUJ3KMLnGDULCPERlEXNd0XNbgLUU41KiXf4cMClFHEp2T9
 DctKR7qyMQPTYnxiZLpVZHFLDp6fIZGp1Ish7FXMzO5rZEoqaeNrJ5yM1hj4EcLMki5S
 BNISEbC00A98lM0+JnVfCV6QcfKff3T6ofvCibgJf+1Y/3AIUg10/qN7yDZK4eRm/dGD
 g7Pw==
X-Gm-Message-State: AOJu0YxgNWEr4Za12ILgGcmrOkbQyIckdE+DN3KMExlVTzmyJpGonj5R
 lwfSybqtvckv5PDs6Oe9180KlVYAWSXnzE6vxQXcW8Cm4a03vkt/beQLK1t9hgjeVR17gaxFGsW
 kMgez8VmRVZ84vbJ+xDD2cvZ9fIntcV3qC7n4D9vd8mKq0w9V8gPiIsxSz7Auo1TFYNf51H2Gud
 Ut8ydLmenNGKIPhVRATgT7NZs/vPqiydAom8w+Q0D9QA==
X-Received: by 2002:a17:906:470e:b0:a3e:4d4c:d120 with SMTP id
 y14-20020a170906470e00b00a3e4d4cd120mr5377371ejq.12.1708977681800; 
 Mon, 26 Feb 2024 12:01:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGP8eld4XKjdHNinbhF+/WCSbrZBK7KYuAHXWGrSWsn9IST28vNpm+5g3NJMnd2r8qUxtdXhS8woALmCut452Q=
X-Received: by 2002:a17:906:470e:b0:a3e:4d4c:d120 with SMTP id
 y14-20020a170906470e00b00a3e4d4cd120mr5377360ejq.12.1708977681508; Mon, 26
 Feb 2024 12:01:21 -0800 (PST)
MIME-Version: 1.0
References: <20240226151125.45391-1-mschmidt@redhat.com>
 <83a3cc75-a8c8-446b-a083-0ef62134d850@intel.com>
In-Reply-To: <83a3cc75-a8c8-446b-a083-0ef62134d850@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 26 Feb 2024 21:01:10 +0100
Message-ID: <CADEbmW2cncmVNkNLdrd_zq6CGLNOB_O0BvmGowZMbB1ZTyo8DA@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1708977684;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nYxGw25SGI76GYgAampCb+LamaCZ5XgpHA2NlSjROPE=;
 b=IP0fYwh801S6XdAGmipoA5eoYIh6Rey1jo/xy6XJ5zScbFX/cVV1iQf6iRKMzuzleclsEC
 214DuuzkZmaUIzWAL+Cvuu68/vdf3JkdV7HmzcFJkHx3p5jVKo7PFQ1QLApEe/BKG222Sy
 P3aRcPXJ7NJzN7dWwaq7tZKZJrm01kg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=IP0fYwh8
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ice: lighter locking for
 PTP time reading
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
Cc: netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 26, 2024 at 8:17=E2=80=AFPM Jacob Keller <jacob.e.keller@intel.=
com> wrote:
> On 2/26/2024 7:11 AM, Michal Schmidt wrote:
> > This series removes the use of the heavy-weight PTP hardware semaphore
> > in the gettimex64 path. Instead, serialization of access to the time
> > register is done using a host-side spinlock. The timer hardware is
> > shared between PFs on the PCI adapter, so the spinlock must be shared
> > between ice_pf instances too.
> >
> > Michal Schmidt (3):
> >   ice: add ice_adapter for shared data across PFs on the same NIC
> >   ice: avoid the PTP hardware semaphore in gettimex64 path
> >   ice: fold ice_ptp_read_time into ice_ptp_gettimex64
> >
>
> Glad to see some fix and improvement in this place. I had been
> considering switching the hardware semaphore entirely to be a shared
> mutex instead, but this direction also seems reasonable and fixes most
> of the issues. We could actually extend this to replace the semaphore
> with a mutex in order to avoid the PCIe transactions required to handle
> the hardware semaphore register.

Thanks for the review. I'm glad you mentioned replacing the hw
semaphore with a mutex, because I was already going in that direction
:)
Michal

