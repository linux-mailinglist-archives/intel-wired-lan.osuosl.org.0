Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A906394F183
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 17:20:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEB0040917;
	Mon, 12 Aug 2024 15:19:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z0Bt4GKbvpRl; Mon, 12 Aug 2024 15:19:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 820D140361
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723475998;
	bh=95JjyygR4tO5JbgyGND0lwDKhwC9bfD2bHVCr7YXIq0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aCDtwCTbumPXU2zO5WHhhFq5Z6ICDiRokbHUUl1lEO5mpZdHA+zt2dUI/KQieQmnz
	 AeN9edICDRZ/+WYexwDkdwLW/ckbqi2f6/gxHdTmwka6J3l8YEOtcpre8EWyjAlEgP
	 augHSMu0SypzDaslJ3urHYEFZ/DlCydOkhKkVBzbWfzzlbqZ3okpiblaBO7lyaw2F2
	 J2vPJiKYaFWP9hsFqY5Ewa60Rr3qzHAdJduHJHBcXddsWpmq+0vM1dFDUZOt8YwdKh
	 3ucG0JPjA/rIxsXzS/ib7ZDxkZnrX3V8/WW+fK0+LsYQbBBv9sJO0CfyMLq+U4cUFc
	 gNnSrb7ZJ3AqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 820D140361;
	Mon, 12 Aug 2024 15:19:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F06A41BF286
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 21:04:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC41961305
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 21:04:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tX97JcDvEilK for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 21:04:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::529; helo=mail-pg1-x529.google.com;
 envelope-from=daiweili@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 66E7260650
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66E7260650
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 66E7260650
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 21:04:34 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id
 41be03b00d2f7-7a1c7857a49so1679739a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 09 Aug 2024 14:04:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723237473; x=1723842273;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=95JjyygR4tO5JbgyGND0lwDKhwC9bfD2bHVCr7YXIq0=;
 b=YK61PCaVLKYF0WiKd9LnSkVkrBoVPSwcpQMrldvRLGsGqHLr2rV/L/aRcsZO9L31On
 gr9Y8jAn9g3yo2gnXBjq8T1laCodHbuQupIdvkwKCOd8G2pfWOq6p4NtMZ3BzioAw5u+
 DHRWYsBv5JWprygoAHu+hVpaliMBjD2PouI1vUdKppmo2Y/O5fm6JHZTztQL9QwWaPYQ
 5YwIgzcKerumMcwY1fDdrnFQ3+erJyngjKjV2P0CLXbvifxn4vM2hIH2Tu9lbQMcMQ7b
 e3KrLVTpazJ4Cea+1bHSZlHJYOV2oNvCifWpdBgtjfZd20RJkCDCFU9oB+hEY1FLZ2dN
 zTNQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUiq7qSurBhGLDxwf8cXkFpF0dtIHi7ju1hq8M8qB2eIitBVLUcryyDbIf8vkZK3RX26rpn8VRT0cgDcWPj/kk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwFfOk/kRJL5wYQocqzG83nifIyIagzJO4LY9qZhYvVN3BHEWec
 7UFe7cIfNyErVVph7yMFswYDvziG3mHYJAL3Vl4mOzRUDPNepxi32j5Y7GQuBXu1UOfdNno9jts
 Rpyf15b6bdKhHVGikouQylQnJgHM=
X-Google-Smtp-Source: AGHT+IGIyZ5U7cqcZ40VbqeooH4Qf0tVDrqs5+1gcMwzCTlfq4bBrKgLXVdcZ9ET35Mjo/OcP2P0B6t3yNG0rXVw8TE=
X-Received: by 2002:a17:90a:c17:b0:2c9:7616:dec7 with SMTP id
 98e67ed59e1d1-2d1e7fa9fd7mr2992901a91.6.1723237473184; Fri, 09 Aug 2024
 14:04:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAN0jFd1kO0MMtOh8N2Ztxn6f7vvDKp2h507sMryobkBKe=xk=w@mail.gmail.com>
 <87y155wt0d.fsf@intel.com>
In-Reply-To: <87y155wt0d.fsf@intel.com>
From: Daiwei Li <daiweili@gmail.com>
Date: Fri, 9 Aug 2024 14:04:21 -0700
Message-ID: <CAN0jFd2Sa0ba7vewLex6x3MAjsH3LtNrgMdL-xVLFjLcp8_XEA@mail.gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 12 Aug 2024 15:19:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1723237473; x=1723842273; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=95JjyygR4tO5JbgyGND0lwDKhwC9bfD2bHVCr7YXIq0=;
 b=UeQZUhLLAIHVyluFXrx1eFsqATrLi2PUYNknSyAIs/OFkVVSLhHOl0b7o3lfqkBOos
 /P9lbQ/ja2rGKcx2iienElcidkytbWC0l8sVrL4lmaJCI5KKnuxHnllGAEFptyuYV6cL
 Dqubs/mCVwvRzhehuV6of0WV1UBn1GOVWHf9Bo2UmhcAVxQlvtXnPcB4MsC9VYofebYf
 WzpZFKpCudaaq1W8uqQaDmAAwsYSkwWZlF8/BYBvQYBoYnRJVzwm9bSeU/iMDRvqarRe
 +6Fb1E+7h/dlMhnKho8Ab3VkA1eqtJmnZQQn8sOTyJLiEHl1cvlHTC46pjKdUOPVz2mm
 I8jw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=UeQZUhLL
Subject: Re: [Intel-wired-lan] [iwl-net v2 2/2] igb: Fix missing time sync
 events
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
Cc: sasha.neftin@intel.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 kurt@linutronix.de, jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Of course, I'll prepare a patch for that.

Excellent, thank you!


On Fri, Aug 9, 2024 at 9:39=E2=80=AFAM Vinicius Costa Gomes
<vinicius.gomes@intel.com> wrote:
>
> Daiwei Li <daiweili@gmail.com> writes:
>
> > Hi,
> >
> > It appears this change breaks PTP on the 82580 controller, as ptp4l rep=
orts:
> >
> >> timed out while polling for tx timestamp increasing tx_timestamp_timeo=
ut or
> >> increasing kworker priority may correct this issue, but a driver bug l=
ikely
> >> causes it
> >
> > The 82580 controller has a hardware bug in which reading TSICR doesn't =
clear
> > it. See this thread
> > https://lore.kernel.org/all/CDCB8BE0.1EC2C%25matthew.vick@intel.com/ wh=
ere the
> > bug was confirmed by an Intel employee. Any chance we could add back th=
e ack
> > for 82580 specifically? Thanks!
>
> Of course, I'll prepare a patch for that.
>
> Thanks for digging that one up.
>
>
> Cheers,
> --
> Vinicius
