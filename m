Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3DAC9B887
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 13:56:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A80B083CF8;
	Tue,  2 Dec 2025 12:56:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Iq_tgYzrDVYU; Tue,  2 Dec 2025 12:56:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0D5483D0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764680196;
	bh=X5XptyRg0V6xIXYaH8cGgPYeufNCc32cq0Y7tnm8N0E=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Fq5eGXPQiyB6Al9GIZoOzMgr2/bzgn/KD2UqlpF9qjw6FkGwxK/bJoKq8rl/++IdR
	 QbuIVWCcr/yieftxQKw3RjdZrwRvDxYfuws4LVqcGeZ/5j3TEf9v3EiesM+YAL5C1A
	 gVd9hksRxLA4nILRtxC3Bt+8zp3ulbbAF6xl/aGu7YuNw+/JZuygz5YyqYJVBJLcMN
	 1/MrTuLSMgb2sh1BjyAWnU8bzb1PewQ9kMxvb9F80mP95jsbioE72qwf5SJ6JRzrEC
	 4XxxjzvAMNRFfRiPCmMfdSRkAyZf4j/kpX8XJiJlFOPKW1YPzjIIp2hAC4rmc2cB1U
	 94IMUGKucc8QQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0D5483D0B;
	Tue,  2 Dec 2025 12:56:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B635DE4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 12:56:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A7031402E2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 12:56:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YpapzEf3f_lf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 12:56:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1135; helo=mail-yw1-x1135.google.com;
 envelope-from=lgs201920130244@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A65FE4028F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A65FE4028F
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com
 [IPv6:2607:f8b0:4864:20::1135])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A65FE4028F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 12:56:33 +0000 (UTC)
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-787df0d729dso52524547b3.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Dec 2025 04:56:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764680192; x=1765284992;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=X5XptyRg0V6xIXYaH8cGgPYeufNCc32cq0Y7tnm8N0E=;
 b=FredwScmFyN2YI8NRAYHVkTBqRFid4b/LVy7dX9+N5buv9SO+VN0N7Ys7pjJlAVPYh
 vyut8qtgLOuRqsSIi5q3oEo19bFLhws7kEiec+bpyBmi8rzPM5N/X+ETkki0Qz5IwvRP
 rDr3N7SAUVt+nkPJBeI5pyzHc79wCNh3OoM1arU9YypZ6vZELR9c+DLMADGaGDU+18Pd
 nKlz79YDisAWjIJ/V70w4SH4qZFkwk6kRApU6QHAdaLhUPm53kYf57agDJagPWZ2n9QC
 5ODxg4slsFu7qE2JeUqQZfmCY9xup766+qjEo9lClJaPFZyHZeSdDeJbesI7rwUxJ+9q
 P9gw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUQ2HR/5ZoVhwGgz8jNB6/P9ynO2hUJgBtuOPwIXqrXO7NFMqW6mWkypcVju2M+J91odQb3aPVRtAcDbtbk/Ss=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxSxs2dgxaDpwPranYoxXdbcmqgfekl7w2Vg2Aj0oNx04YpHz3A
 WAJ0ITt89QOea7puQSFM5/TYpuMqfrfcNBBQgGSlRnvDT7L6rdaEEyz0BD3aXHUPoCB47X3WmLY
 ZqdAud8HUTSGyRRH7+jVHjF3BspO3zN4=
X-Gm-Gg: ASbGncu1vcoXauhxkS7e37ZQ1z7mU/8GAJOvuyD3hC6cOkz7N6lmOL6XU7V1u8JyDs5
 2Ig+SL9I9aREmJBrDBZF8aro9sV5UsxNibXWWMv8X22kUW18svHZZ3NWbumZRjk0Y1MMTwglXza
 UUkFCIZ/wkBR37cuv/Lwx88RV6TaleRukRmO14/0u4rFOl68fh+SoxbN0VWOhvjkA0VKUDHzjks
 /6OswRkfrkn2PJviFbX0jGnvyRz62BYRKenI60okX8EfA1pt1jbR71tfPfjtLnwryQHACo=
X-Google-Smtp-Source: AGHT+IFWvd/Jg2PHJ8dCgKfCqITnGuYDu5UIS8p468SFhsPj2lrZIUJDqHaziM8xR41qt/h2TwW0PHnbJjWSJlr4uGg=
X-Received: by 2002:a05:690c:b9a:b0:786:5620:faf1 with SMTP id
 00721157ae682-78a8b54d499mr343901027b3.46.1764680192362; Tue, 02 Dec 2025
 04:56:32 -0800 (PST)
MIME-Version: 1.0
References: <20251201034058.263839-1-lgs201920130244@gmail.com>
 <7917b0db-82b7-4a75-91cd-d3b6b0364728@molgen.mpg.de>
 <CANUHTR9o-wzkSzYeRwQvu-MEdYXQ4tbNXvDD2WyCfA1MGCG=Bw@mail.gmail.com>
 <a4ea0043-9ee1-4b9d-a2b3-811c36b12ab8@molgen.mpg.de>
In-Reply-To: <a4ea0043-9ee1-4b9d-a2b3-811c36b12ab8@molgen.mpg.de>
From: Guangshuo Li <lgs201920130244@gmail.com>
Date: Tue, 2 Dec 2025 20:56:19 +0800
X-Gm-Features: AWmQ_bmBqFLvXwPU5QvquqBV9IKbR5CvMxyKznfoWOr_JLhm-lwBZGfYAbm6Z6E
Message-ID: <CANUHTR_6AgpsZszMAOvtbRYBbh+_uvvLmjrHyG_HsNQkY4=9=g@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Jesse Brandeburg <jbrandeburg@cloudflare.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 Florian Westphal <fw@strlen.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Tony Nguyen <tony.nguyen@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764680192; x=1765284992; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X5XptyRg0V6xIXYaH8cGgPYeufNCc32cq0Y7tnm8N0E=;
 b=CE9bg+F+ZuiZJfRCTJv2HhjkywYhT+98zLm8BonM6++OaGNw6SAWGVEOYNDBpGtxg7
 zPWGMKQM2RhQyEUH4kwQAWTBYNIj4cahL+KzerBA0ii8BCujsnpA/F1g0/XlMkBa1OjT
 eQdPyojTknVA8mqZgG3uPDWylZKJb3ETZZm7hGH0KjGSruPPr+PVHvPwbOqAoGdoDA5R
 6nUNdse8JgXQisHf5+hzfEXgQzPoUEn3EAw0JCFCt8tYX1e+9gD/7wWZfSiMZ/6pBedc
 Tu82Y09U/wwdPDTQpwMgHF3omQ2GUZw4U/YXzkrIz7+I054hlD6PfOCv6BSQ938wie9x
 UkUA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=CE9bg+F+
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000: fix OOB in
 e1000_tbi_should_accept()
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

Hi Paul,

Thanks for your reply.

To run the reproducer, you'll first need to download the PrIntFuzz
project from https://github.com/vul337/PrIntFuzz and set up the
environment. Once that is done, you should be able to run the attached
syzkaller program to reproduce the issue.

Kind regards,
Guangshuo


Paul Menzel <pmenzel@molgen.mpg.de> =E4=BA=8E2025=E5=B9=B412=E6=9C=882=E6=
=97=A5=E5=91=A8=E4=BA=8C 19:53=E5=86=99=E9=81=93=EF=BC=9A
>
> Dear Guangshuo,
>
>
> Thank you for your quick and insightful reply. (No need to resend this
> often.)
>
> Am 02.12.25 um 12:34 schrieb Guangshuo Li:
>
> > thanks for your comments.
> >
> > ----Do you have reproducer to forth an invalid length?
> >
> > Yes. The issue is reproducible with a concrete system call sequence.
> >
> > I am running on top of a fuzzer called PrIntFuzz, which is built on
> > syzkaller. PrIntFuzz adds a custom syscall syz_prepare_data() that is
> > used to simulate device input. In other words, the device side traffic
> > is not coming from a real hardware device, but is deliberately
> > constructed by the fuzzer through syz_prepare_data().
> >
> > The exact reproducer is provided in the attached syzkaller program
> > (system call sequence) generated by PrIntFuzz, which consistently
> > triggers the invalid length and the crash on my setup.
> >
> > (The attached program is exactly the sequence I am running to
> > reproduce the problem.)
>
> Thank you for attaching it. Excuse my ignorance, but how do I run it?
>
> > ----Should an error be logged, or is it a common scenario, that such
> > traffic exists?
> >
> > In normal deployments, I don=E2=80=99t expect such traffic from a well-=
behaved
> > I2C device. In my case, the malformed length only appears because
> > PrIntFuzz is intentionally crafting invalid inputs and feeding them to
> > the driver via syz_prepare_data(). So this is not a =E2=80=9Ccommon=E2=
=80=9D or
> > expected scenario in real-world use, but it is a realistic
> > attacker/fuzzer scenario, since the length field can be controlled by
> > an external peer/device.
> >
> > Given that, I think the driver should treat an invalid length as an
> > error and fail the request instead of trusting it and risking memory
> > corruption.
> >
> > Regarding logging, I=E2=80=99m fully open to your preference. From my p=
oint of
> > view, logging this as an error seems reasonable, because it indicates
> > malformed or buggy input from the device side. However, if you expect
> > this condition might occur more frequently in practice and would
> > prefer to reduce noise, I can switch it to dev_dbg() or even drop the
> > log entirely.
> >
> > Please let me know which logging level you would prefer, and I will
> > update the patch accordingly.
> Then I=E2=80=99d suggest to add an error message with error level so peop=
le
> notice and can take a look.
>
>
> Kind regards,
>
> Paul
