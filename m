Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9210AB3A358
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 17:03:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5279260D70;
	Thu, 28 Aug 2025 15:03:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bQRY65L0q-oR; Thu, 28 Aug 2025 15:03:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7000960E44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756393398;
	bh=TAUsH9qx5Xo7HZQWurliwAGX0byykFNGH5/xaDPAnAg=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YgPikk9MUssQETgt7v3LmH/I01LaOJ+SOkXC4Heod6ZxKnQq0PaBgiELo17DLfpI1
	 LXlZr+5lVzChyUxHihzx8DFQMXHvfgxEWedKgFabjKXTTXRQ6ERKAGjtaS5DSB1zLG
	 lFVzlaXs5BMp3JQV14TiUCGqtEtREXVTH6V8onF/h7xYVU9N8GwfGX6xUK7RCsybzs
	 2wl+1ZKfeaQs1x6RN9n/F53Oazo/XNVWRkQ34R49A6f1/tA36MxZXgbQfG9dA2uNjX
	 uoaEZeFqz/Fj6ERqbxAExnPC56/IWOKB9p9/uGduU5/+Tl6QPloLnlN0YDvTbYQE0r
	 0973SxJMVCAUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7000960E44;
	Thu, 28 Aug 2025 15:03:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A5354B8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 11:05:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E21640C8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 11:05:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ch75vreWfIU1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 11:05:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::231; helo=mail-lj1-x231.google.com;
 envelope-from=dvyukov@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A0A6F40731
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0A6F40731
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0A6F40731
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 11:05:23 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id
 38308e7fff4ca-3367f35d11aso6737151fa.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 04:05:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756379121; x=1756983921;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TAUsH9qx5Xo7HZQWurliwAGX0byykFNGH5/xaDPAnAg=;
 b=NCBhz2SdfulFUG8dOlVg6JMHpr4fawn8PHMCww3BkVzuuMf121dEOVQVEdPQQFQr1F
 AoZxn5Z63mvT0kb0zoCKR+q4vpU3KA46sKlHbxBRih7PI1FIFSgH+PVv1IWxz8BirGZD
 SIy/lwfnTUs6PssnJAp2EjTmevBQrg0QJWth59z/dkB2wr9UtmLNLivjv4XeVSVlK8af
 jkAkJpK4SwKTWacoeCLUyaPgzUb5U9VB5In++iDsazfhh/oFy0mz+0STWmcOouYTTxwF
 WZjIhhUOJQdErX8obN0jdluSdpmdBg/jP4tZMowqQGL73Fg9ITuLoLyp0gFiQqQjKHHA
 tT+A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVZeuDigtv73J7QPHgmYVVK47afeGeSdH1UjoggnAPDmjzze6lSuXoBLjbraNMPZCxeddHjyuNzgxubcVVJlek=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz83P/XmQrjBw1zc8ZwUzOusUU08m95GDG4dwTE/RGqYZFBQMON
 DXlV+2+HT0v7Q/uqVawbyNd3aWn8zFcAaarGOHLsPVhoKG/ZadlywZhfgu5lVqdAhOwK9d7A7K3
 oaxwX7FxZSuWVFmC0V6popVWBGQdWOP/WJzInAGRt
X-Gm-Gg: ASbGnctfffrrylU/QS+dSARy12Gg8DaQQ3S/ktdkQ26FUrOe6dXlJ2xRWQCxLYJUwdQ
 qK569TFf8ZCSLULbJL5RM7jZba0QZLvWWqdJR64B810MO0AqLoADH3AtdKni7WiSQGlQCAMeFJP
 Hp/vVXDD8uOXh7jesbQdY47YahN6Zdn9r9OQW+MwsZuzuOZZP9Eu/ns808LUIZu//ISW1zea41R
 7UY4pCHLGZK3v/Dy4ErWUYj1DTh7ZYmx0LjAbk+0N+bNlFaRYd3lTw=
X-Google-Smtp-Source: AGHT+IH2xqkT7Gm8Y8VPKOFZe2CwX6AJnHBKkNuQ1kWl9XzOyZn3Ty6HeFlWouXcagu0nm0WrDp9EEtaTGEu1op7fA0=
X-Received: by 2002:a05:651c:2359:20b0:336:9adb:75f3 with SMTP id
 38308e7fff4ca-3369adb788amr8793491fa.38.1756379120964; Thu, 28 Aug 2025
 04:05:20 -0700 (PDT)
MIME-Version: 1.0
References: <CANypQFbECe10JE9MKzdU3X7kehVDoHr0kGnQpK1CVMJrg+qJwA@mail.gmail.com>
In-Reply-To: <CANypQFbECe10JE9MKzdU3X7kehVDoHr0kGnQpK1CVMJrg+qJwA@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 28 Aug 2025 13:05:07 +0200
X-Gm-Features: Ac12FXwwRNf_fseKBhowipW4TPj-BQ0S2f9JAeNpAbDYk4E0hs940usVGesVMUU
Message-ID: <CACT4Y+YLTF0bG6yJABOXg7zZt+1nV6ajHLJxSWzazSk2sH=tfA@mail.gmail.com>
To: Jiaming Zhang <r772577952@gmail.com>
Cc: "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 davem@davemloft.net, 
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com, kuba@kernel.org, 
 netdev@vger.kernel.org, security@kernel.org, linux-kernel@vger.kernel.org, 
 syzkaller@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 28 Aug 2025 15:03:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1756379121; x=1756983921; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=TAUsH9qx5Xo7HZQWurliwAGX0byykFNGH5/xaDPAnAg=;
 b=3xt8VC6uTsVT+gotWm2kv0a77C2e/L5oN+7CncTOUJ8Pc0+IUQkgOqibHdTLiJNufB
 iq/g41S1wtFx88WnGMEl2xkHjG30ardG+I0Y70+tw95UurdUh78M4VFdAryjKYyrIVsX
 nAvCylspUHewe/Y3kZ6OdOjThxSAchr6gKEQ0+JbVwIoApSBqgh7LXv0hhBXkoTfGDum
 xmSPObDIfNRXv9kgrdZzurV07s9/S5OF2QHCQIlPZvINuK4cVlOhskgc/sOlyLqdaHYF
 iXK+4asdKFJfGP1sOyY+d+LPC+BJTmtsoXvtdzts8QwTkWLxGJHxujttxM8598n4OaIH
 Ovxg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=3xt8VC6u
Subject: Re: [Intel-wired-lan] [Linux Kernle Bug] INFO: rcu detected stall
 in e1000_watchdog
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

On Thu, 28 Aug 2025 at 12:40, Jiaming Zhang <r772577952@gmail.com> wrote:
>
> Dear Linux kernel developers and maintainers:
>
> We are writing to report a kernel bug discovered with our modified
> version of syzkaller.
>
> The bug was initially found in Linux kernel v5.15.189 (commit
> c79648372d02944bf4a54d87e3901db05d0ac82e). We have attached the
> .config file and symbolized crash report for your reference.
>
> Unfortunately, we do not have a reliable reproducer at this time. We
> are actively analyzing the root cause and working to create a
> consistent reproducer, which we will share as soon as it is available.
>
> Please let us know if you need any further information.
>
> Best regards,
> Jiaming Zhang

Hi Jiaming,

This is likely to be a false positive. We found the default kernel
timeouts are not really suitable for fuzzing. Consider using the
official syzkaller-recommended configs with proper tuning for fuzzing.

Additionally, v5.15 is extremely old. Check out:
https://github.com/google/syzkaller/blob/master/docs/linux/reporting_kernel_bugs.md
