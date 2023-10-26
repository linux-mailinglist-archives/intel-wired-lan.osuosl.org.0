Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC547D8BB9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 00:33:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B7EA4CACF;
	Thu, 26 Oct 2023 22:33:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B7EA4CACF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698359597;
	bh=O9mMQpfWjXYYtORkqzFWm/oBM9qFMNaSCnc3IxT4qqk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3GKcv4bu1GTdFmlfwM47Hkc1aLU80PMqJKYrJZtUYJXB0+QiWFX2zp35Y944qicag
	 TJe7oL4x3sE05P1qoUo/CrQylvc9sv8UOnQK1ADKFO/HiKhv9hbLfs3cmpuAqVi+JW
	 8Y+7rrJA0a53Djpay2uFYWnIAI+eVL8za9BAH6MMSh5C+obGsqpyxIwmfc2QVtA6GD
	 jXtNyrCPklLeBEheY9pMeXe7mC9dx8/6c2b4ghMhhOvzybGBIDUZxnUzzjaNaBWDVN
	 bZl1OEVNsclbMRwcz3HNo3BVHQlKpwWnRNvKFxs9QTYrPo7rlX0nRro/krcqn1R7Jd
	 TCA0qGcXkiAgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rudB6NkTicpQ; Thu, 26 Oct 2023 22:33:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FE5B4C9E3;
	Thu, 26 Oct 2023 22:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FE5B4C9E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FB121BF378
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56896613AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:33:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56896613AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NpunrbK1hS-c for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 22:33:09 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2B8F96134B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:33:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B8F96134B
Received: by mail-lj1-x22b.google.com with SMTP id
 38308e7fff4ca-2c5087d19a6so20144921fa.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 15:33:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698359587; x=1698964387;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4SxxJeIJ67UJRuWmX2lMM5UOUmBZb18yNZTZPQByIAc=;
 b=YxkCFF5xMikbYG3vAeLGlJ5GTZOIw9P4sFIUBINNKC84w0cxqH3k22yUr5BFv+O6Q/
 FM7g5+sgo6VcTLJlj4zpkysc+FsFsGT4CquAC78R8L0pt/vFUAG3oBHzHaQ0GR8BuKEQ
 5A5VXJvfyPW/dr3z2JfK336Xb5mhMBTQfVxhe1PQqPmGRijJORhnAvZ5yrZIAJJfjz7S
 tKqb57Fy75lpRqMiUlZxNYGX6AjhbJwx+TIuwGYDSQrhgZSjRhc4lC4JhMPWetHqNeGR
 cRZALRp6D/adgkqxb17bvtUkdzwo75OKQKWc//KsSE/pdG8b650EDacBQt6UNBvVVBmH
 yPEA==
X-Gm-Message-State: AOJu0YykdMIl0FnoXKqJG7hGTbl4zCY9VXSLi5PmIsPEU0xGbQbVtjCo
 g0knVAB8+WSY3P9sIde9ErE=
X-Google-Smtp-Source: AGHT+IHiJGPvEvNoYxUZFXdVNhDBLZImmPXHiZgnA1Uzd3w0qnIN0A97ELhuaXAvDjdWP1gQ5bRUUw==
X-Received: by 2002:ac2:4a64:0:b0:4ff:7004:545e with SMTP id
 q4-20020ac24a64000000b004ff7004545emr494644lfp.4.1698359586744; 
 Thu, 26 Oct 2023 15:33:06 -0700 (PDT)
Received: from skbuf ([188.26.57.160]) by smtp.gmail.com with ESMTPSA id
 f24-20020a1c6a18000000b004063977eccesm3534864wmc.42.2023.10.26.15.33.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Oct 2023 15:33:05 -0700 (PDT)
Date: Fri, 27 Oct 2023 01:33:02 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <20231026223302.4gjjeh7inn3a3llq@skbuf>
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-2-0d67cbdd0538@google.com>
 <20231026221206.52oge3a5w4uxkkd5@skbuf>
 <CAFhGd8r-u193pBk2+WWF+sHWEo5ixxEiT=fcSYiuy5W+aWDsbg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFhGd8r-u193pBk2+WWF+sHWEo5ixxEiT=fcSYiuy5W+aWDsbg@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698359587; x=1698964387; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=4SxxJeIJ67UJRuWmX2lMM5UOUmBZb18yNZTZPQByIAc=;
 b=COOboUR/rqkYXyOlY3xrB7l6Iyblx3kfWCLG0xzy+N9Rl1EBQ7Kjrqx/jUXADAaISy
 YXQM7uiYEVD2eCGbnLlSSQP7MoBMaAlM7PYNba67tWixEg9KNdf00PDFNJIAEmS7ZdPg
 96Iugmj2ftie9+EWdNcwNMO3QBa+ZrP4Vh7p6WJYlxyuN9tU+kcfX20tjxc1aKi7jfYz
 A0n8TnafYc5uXQ5bMezjWuoFUIaroyhnZpUr3204OlDjmXLS86KpJ7gCz3UyeiT600Ds
 Xh5xXE61YKeHYzZW10qkmaaO2L8R6qslS1cQ7z+g2x9TNK10XNkQO/akFI6u4ZjkLSpx
 ETYA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=COOboUR/
Subject: Re: [Intel-wired-lan] [PATCH next v2 2/3] checkpatch: add
 ethtool_sprintf rules
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
Cc: linux-hyperv@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, oss-drivers@corigine.com,
 intel-wired-lan@lists.osuosl.org, linux-mediatek@lists.infradead.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 26, 2023 at 03:24:54PM -0700, Justin Stitt wrote:
> There was some discussion here [1] but AFAICT I need to use EMACS
> or configure my vim in a very particular way to get the same formatting
> 
> But yeah, look around line 7000 -- lots of this pattern matching code is
> pretty hard to read. Not sure there's much to be done as far as readability
> is concerned.
> 
> [1]: https://lore.kernel.org/all/137a309b313cc8a295f3affc704f0da049f233aa.camel@perches.com/

Hard to read because of pattern matching is one thing, but your
indentation is unlike anything else in this file. There are inner curly
brackets which are less indented than the outer curly brackets. I cannot
read/review this, sorry, I hope somebody else can.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
