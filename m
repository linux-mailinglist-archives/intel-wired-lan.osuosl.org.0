Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A37A2A74E6E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Mar 2025 17:18:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6ADA1608D5;
	Fri, 28 Mar 2025 16:18:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Da3I0MuFz7vW; Fri, 28 Mar 2025 16:18:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF03B60EC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743178682;
	bh=7qssfR41+fRhRzI4Egm/PD4wIN5YwI6NxzZdxmime6A=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qQN/cjlZNdAKGPRnBJKVatIiFJxua/0OXqk75OIiBSHcMTY0foSi3VPXpoqx/pZog
	 dEDItofV6ly3ZO8WDFEZw2EA2xTOuAlhmvUUEMNDisamTcV11QUFbVwy+8uiT9PvAX
	 pz3aA2W3r5uv98qIL4gqqs2x+0N9di+mKQAhXgiiKuHWDbzX4A44okm+Rokzh40J5T
	 s5yrLlyGz2ogUabovFhM6Gzhi3b9TvJBomT24MRjPdpuyMFCGwtvA5SZZX7AkRy8za
	 +pt3K2x66QBwIDfIqoSRwYNplyAgBPom5k5y/xu6kq9P2Ey7SyNb/5cpVn/mMIKanf
	 wsjMiv27uiGEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF03B60EC2;
	Fri, 28 Mar 2025 16:18:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E542F12A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Mar 2025 16:18:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C31C5608D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Mar 2025 16:18:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZZ4YGQObBjhd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Mar 2025 16:18:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b2d; helo=mail-yb1-xb2d.google.com;
 envelope-from=rsalvaterra@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2B48360899
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B48360899
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2B48360899
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Mar 2025 16:18:00 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id
 3f1490d57ef6-e60ad903382so1698098276.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Mar 2025 09:18:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743178680; x=1743783480;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7qssfR41+fRhRzI4Egm/PD4wIN5YwI6NxzZdxmime6A=;
 b=hkFJRO/JuG3mRXnvUpNKli1DDxPFlO4NdXPZQxo3ZUyJKHgiVwciQe55u+oVoWxwx8
 LAFNOOO/e0x0ka7sWpFvV0eurV+RH199iO4KrLYmtQASxj+5A21Mb3F/vDNh3jZkPB41
 uETH4aVqwNWLyIi5tXA76vsEZuWS/dXxCI/uE4wWQ6nRkCKcDoebfxDWLTnlQyx+p/7H
 6L9JsIgoNWcCalEyYm4ONKohjKpXYo0gm2L5PTkcihiUZuoHzMA1L+zQOsKh+JG6HCqQ
 2vO+QmAZCZvUkhtT3fpsZRMCSeUWocqDcByYjUAmGhGIvlhibYU5ryk35QqmJJj8uJRe
 urIw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVtfcdRgjnEwUY6CJZq9vs+L4cfux4OuLJoM3+lXcpy/gP1uHo4FAliSRQDz612g4yjoTwudWIZdKrHq9Cmjf8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyjJ5/TfpZDb96+M/xJF8RyXZREpXxfxtLX7fk9hudJz65Cdefc
 c3JoJx0WX+bU756h+DLNYB58RyRDqsL+bImmyCxdlAsc7ApMXrYuWfsPvcsvxdxInxJkbVxp3aE
 q/ner7D3p/wxoCBs6DFB9DKKrqg==
X-Gm-Gg: ASbGncudU2v/sQQU3xTaqQZ2SlQX1G7YoF9Zu69Ay6rdzezBcGHCHIB7ix5ZKfJd4F9
 buLTg+res1CYjhR5jEE71JxPJya8MMd2O3uIGisDpCLgtRisLSxERetoXQ5rdJhfLJm90B/ueoY
 5OcSyxi0BLAXjxx0C/1FT/+3nUSpfwi19vUxH9JakYvyzNk8Fj
X-Google-Smtp-Source: AGHT+IGN9dsDBzOvJPjL9CD4pSBzKWnHRy/a47xnHG8LXpRh7feIEt+c9x5mBhRHfqeb7a6JUKSU8hmPgkFhnclEYwU=
X-Received: by 2002:a05:6902:1a44:b0:e6b:808c:5fef with SMTP id
 3f1490d57ef6-e6b808c7f77mr1002214276.32.1743178679659; Fri, 28 Mar 2025
 09:17:59 -0700 (PDT)
MIME-Version: 1.0
References: <20250313093615.8037-1-rsalvaterra@gmail.com>
 <2710245b-5c2d-4c1f-93ef-937788c3c21b@intel.com>
 <CALjTZvZYFEqSGZvSfthsTC5sOkVixAFyPg0Jj7eXZ0tac4QS8w@mail.gmail.com>
 <024fb8ce-adb1-42f8-91f9-ef08868fee01@intel.com>
In-Reply-To: <024fb8ce-adb1-42f8-91f9-ef08868fee01@intel.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Fri, 28 Mar 2025 16:17:49 +0000
X-Gm-Features: AQ5f1JrApo2YnGDkBXpLnZjbWGXS9Ln2yMcMwJBPiJewh-yxz3hSbyyeIbLzIjY
Message-ID: <CALjTZvbChDaMACCdmubV9hVXWnih2Rx0NRkcj3K_NbW+O-qrbA@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Mor Bar-Gabay <morx.bar.gabay@intel.com>, przemyslaw.kitszel@intel.com, 
 edumazet@google.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743178680; x=1743783480; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=7qssfR41+fRhRzI4Egm/PD4wIN5YwI6NxzZdxmime6A=;
 b=bMU9c2e/sRhP90xLV/Ki8LzM2BDOSj4dffzjXh/KBGdjh28U9CBIp/amyCi7tmE9fS
 f9nY6jAH3YrOWJc3uXVhUm0cXCPZE5Nj46wJDSlKaaOn498NoWIV8+wHIR+mpPwDaVtK
 spz48Jma0f3MC+IEUOiUtqKTOx/fC9XEw3jiwI0EQlxZ2OUkAAiS8XMxOR8YNPJQ+ykg
 pBuoTjFptlxnI8CpjFrqWEPyhZ81jqMJIJZhi9yQ4acvcVnbBblphj+jk398YJ6LbvEc
 pKg+T5eYXTiyJz7g0mnvKQegQSodJLA712nApOkLbdTGeBUBp3LSLhZlF8Jouf8Dpf/P
 QnJQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=bMU9c2e/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: enable HW vlan tag
 insertion/stripping by default
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

Hi again, Tony,

On Fri, 28 Mar 2025 at 15:52, Tony Nguyen <anthony.l.nguyen@intel.com> wrote:
>
> Yes, it will be submitted for 6.16.
>
> Also, please don't top post :)

I almost never do, sorry about that. :)
Would it be too much to ask for this to be backported to stable,
though? I've tested it on the 6.6 and 6.12 series just fine.

Kind regards,
Rui Salvaterra
