Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4729FF6BE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 09:14:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDC5360760;
	Thu,  2 Jan 2025 08:14:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hDm7ITNh9QpA; Thu,  2 Jan 2025 08:14:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1083760754
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735805651;
	bh=HVaRFbKIvCBVY0RM8+DTZ2OsOdfugoCkLUSO+EfBesM=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7g7QydeZUKPDip5wb3+y+8q90ZNDqHr+y2Bc0dRVgekPenGRljiEwE3iw/gTpS05I
	 YNRNXE62NZrN7kh2H1x/TH+DEhWaxJj+sMHRLbXfO1Ly0GGtSn1C4SBgc715OYuH9/
	 3+TiAIr327mhYIoMkbYe+F7tVlK114X/eRHaWM32+sjK07A0g/DZJGCchWB4bgC4R2
	 N64SauGIQHzigE0y+AdMw/LGAU93tHVenYkmlu+QGBbef4PuDhC7eCtAJtp7Xn8ieN
	 JZG9tpOdfu7WTQUoFWRGJKx/tQoGNvwAbd2mSM17UV28XRF5tKU0NCaV7Suu+Ig0oB
	 EM6oruK8Nulow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1083760754;
	Thu,  2 Jan 2025 08:14:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A341F27
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 08:14:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35FA580D14
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 08:14:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S-ygfV0WD9W9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 08:14:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::634; helo=mail-ej1-x634.google.com;
 envelope-from=edumazet@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4D64E80D0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D64E80D0D
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D64E80D0D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 08:14:08 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-aa66ead88b3so2029212066b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jan 2025 00:14:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735805646; x=1736410446;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HVaRFbKIvCBVY0RM8+DTZ2OsOdfugoCkLUSO+EfBesM=;
 b=jM5txSd0GWxlg2zMTiiWcxOFqvg/QBphJ/6LQDWuQ7U545kqvxAUUGoz5RcfbYWTIj
 tZgQGEF/vAk9k9KVerRqiPSMtqj9R6wLSZhmLoF+sLUiKCyL7PTzSyvx8qYVlYO/JJqz
 8vPgqi4T+e0VMcaFLBkqFo/KZAYW5m8/6CWh3YiTpT2d3ZLjIz4D3wtWcuijGJ7pyszS
 NvE/eDAorFXWB85WXgMMnEft5nYbn4mIvUji2ZO7yleCyncPUWf7h1qEqkayiDTqzdtx
 syEGf9CgkiVd90ayCxlcdbz+TDD9ebKkFZ0quMMw/wu2vruENkSLuH0eXbfna/mfRue3
 hDBQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWAOhAUCLtxDx3Dd2+KnmjlP185BAjgq2rILy8JfdUdqlc8IMTrF1A6i3s7WLUi8hxaoyLO4zImDWWqDa+4Iws=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy15BPiq1sc6cL01oFCTFQwY5+JQBBXhKf/t39uXAqdejk+9Zb1
 //u+d41WZybmClsUOTFCAkFIsX3BzrmXUo5pvOTZ2a2oggBJauyoQSMDzdTN5jdfoVIbY1UBW8o
 Kzr/WsVZ2I7wURpto6ZF0I4JOrHth+iP4O7is
X-Gm-Gg: ASbGncsWjONpYY0MwD357el5TVKzcvtrG8d3gnEhuxh6Lz6BGc60SkoRTNxeeG432pn
 xC5tgck7QAFiRksagSzpxrQFm2HxilBqY9NI=
X-Google-Smtp-Source: AGHT+IEL/TvzCN5Wa0v2XQl/gWTEplAAJBXyu9cyVK1GACcJoqjV7pTlzGg344xuk0PfsrtNvSdypZk6R0jRhyvhKDA=
X-Received: by 2002:a17:907:1b18:b0:aae:ece4:6007 with SMTP id
 a640c23a62f3a-aaeece4611amr2972621266b.59.1735805646064; Thu, 02 Jan 2025
 00:14:06 -0800 (PST)
MIME-Version: 1.0
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
In-Reply-To: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
From: Eric Dumazet <edumazet@google.com>
Date: Thu, 2 Jan 2025 09:13:55 +0100
Message-ID: <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
To: Haifeng Xu <haifeng.xu@shopee.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 ", Przemek Kitszel" <przemyslaw.kitszel@intel.com>, ",
 David S. Miller" <davem@davemloft.net>, 
 ", Jakub Kicinski" <kuba@kernel.org>, ", Paolo Abeni" <pabeni@redhat.com>,
 linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1735805646; x=1736410446; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HVaRFbKIvCBVY0RM8+DTZ2OsOdfugoCkLUSO+EfBesM=;
 b=XrAL7ym75yrUinZcXvIS991XwNpBhiTNJBTLyuXCZvi2Be5TWZnPJFXaJ9fpoKSxJt
 xSVR7e/+tYs2K9E5lP7JuRcFS0gaS8cUqOOqM/SXBvZslwTF3QDYYiZ/cU5WL2AupoYb
 jmFFUWxrYQeZ9DuPdO6bdNDM7zthmWUkHYzAyY+7IxLgSpr85Kzbw3fnwj699W12o7LO
 BjdCIEFjEQoCgKHk1nyLULJQHkCd3UQTeKS1v4I/l+Iie6s2LYwoxwtj/LIcbBGLdv9I
 HlN2CPEqu58IlYeLEzJ9JQBjT031geVsbd8vYyyLLYOBQ482QQUbiKg9xFU0QjFTMmeC
 YVdQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=XrAL7ym7
Subject: Re: [Intel-wired-lan] 
 =?utf-8?b?W1F1ZXN0aW9uXSBpeGdiZe+8mk1lY2hhbmlz?=
 =?utf-8?q?m_of_RSS?=
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

On Thu, Jan 2, 2025 at 4:53=E2=80=AFAM Haifeng Xu <haifeng.xu@shopee.com> w=
rote:
>
> Hi masters,
>
>         We use the Intel Corporation 82599ES NIC in our production enviro=
nment. And it has 63 rx queues, every rx queue interrupt is processed by a =
single cpu.
>         The RSS configuration can be seen as follow:
>
>         RX flow hash indirection table for eno5 with 63 RX ring(s):
>         0:      0     1     2     3     4     5     6     7
>         8:      8     9    10    11    12    13    14    15
>         16:      0     1     2     3     4     5     6     7
>         24:      8     9    10    11    12    13    14    15
>         32:      0     1     2     3     4     5     6     7
>         40:      8     9    10    11    12    13    14    15
>         48:      0     1     2     3     4     5     6     7
>         56:      8     9    10    11    12    13    14    15
>         64:      0     1     2     3     4     5     6     7
>         72:      8     9    10    11    12    13    14    15
>         80:      0     1     2     3     4     5     6     7
>         88:      8     9    10    11    12    13    14    15
>         96:      0     1     2     3     4     5     6     7
>         104:      8     9    10    11    12    13    14    15
>         112:      0     1     2     3     4     5     6     7
>         120:      8     9    10    11    12    13    14    15
>
>         The maximum number of RSS queues is 16. So I have some questions =
about this. Will other cpus except 0~15 receive the rx interrupts?
>
>         In our production environment, cpu 16~62 also receive the rx inte=
rrupts. Was our RSS misconfigured?

It really depends on which cpus are assigned to each IRQ.

Look at /proc/irq/{IRQ_NUM}/smp_affinity

Also you can have some details in Documentation/networking/scaling.rst
