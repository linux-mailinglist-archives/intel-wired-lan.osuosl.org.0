Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2905CAB4BC4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 08:13:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6D6E60AF1;
	Tue, 13 May 2025 06:13:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vFeKlbLbg9qd; Tue, 13 May 2025 06:13:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5786A608D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747116824;
	bh=GRrv0KBdwMIbTaSxKoyl49v0JwxRka2NNqw0EGI4u2Y=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jLjG++lVpBxj2iHlbFEClOLY36jLMKD3llJ7I6vfsA2ypw0b/P+8rIVzNXnnY95jI
	 jG4PTK/7g2QF0FAi8tzQBN0Yc0THQmpfrMbRBFBe24evD0tzXT//zc30Mdlq1qpxiR
	 B41BFBZUBeqqd4QtKmnAt3qt98CyPVKOFA7P+zRa00xv9RAhEQgbbiRIaPMFX0MwLA
	 7g+mzbZmZH9GxRadJ45ucYUxo5p37pCOd6f/T7yXhNmy5DobGRHJ1gEeIN69l7ZanU
	 I/7Js5PR2WgytYCyzYhzsQsh0cQyhql5s4Xq9dVu72zYUJPFof9yEjro2Ol/ul/tkZ
	 dJ7OHNHYv/9aw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5786A608D9;
	Tue, 13 May 2025 06:13:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D0575154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 06:13:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C14AC60A93
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 06:13:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RHwfyxMn6A_s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 06:13:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::134; helo=mail-il1-x134.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 26DE9608D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26DE9608D9
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26DE9608D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 06:13:41 +0000 (UTC)
Received: by mail-il1-x134.google.com with SMTP id
 e9e14a558f8ab-3d81cba18e1so43532875ab.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 23:13:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747116821; x=1747721621;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GRrv0KBdwMIbTaSxKoyl49v0JwxRka2NNqw0EGI4u2Y=;
 b=Cib+t+Fn6zMDdghd/stXVsB32C1R7vIJj2JA1/yuIdjRaroEmx6vGZXTebdCk2Nq1e
 P7vuWunkFy1e9Krw277ClAp+C7DfOJA59J6lLDD6orjw3eiG1GqrJ0O4W49nITq61Nn4
 ttPlY8j4b8dv00dKCHRSjXW2BPMklAGUhaUFma8p/2426e5avINOriySGnGXrjwwx0iz
 T4rvdMWec2qUHAqOJJenlmBqQTupH9yoclApY9bhKDbeg5NEoL+i/JcF7zR3EwsGjGoB
 y9CXCkJi74GEQpYUNNws6AhYxYCm17i4EkMrYo8qSNjVQjI4FXg1s35mmkH3bvb/+GKt
 X68A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVT3IolVBUZgZeiEWWPEfDrCoNKggICsn9NzUe319UyJK4Nr9YVGQmTGGJvQZJho/FgkEUq7plbButflcNUZfE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzAcBWPnWv0q8JUarxKfwL4PrDK16dd446Ywtl7zJcVCvE8yJ9R
 rGQoDZ2WK2lb1QmFltsBwrTW5sdiSTMQHf59AySTZPzYZxoqsyuOjDgHXJo1f2+zVaRsIm8/zIP
 YI8zZxQu4Q46bW4QZ7Xa0KBQeYwY=
X-Gm-Gg: ASbGnctYDeMafF6DSh4Wz2rCnA4B3lvbLEa0ewDbWyJXHgwJ2Ke7RTyHD376MWT5kHU
 npcu2twf65N7CalnC17rGU512C1lJilwwoLZhrPtU+2zzET+UIKmpKngEywRR3Q+W7erHRbZ9Gc
 ihqLyR812n8z2cjzzxhCEeizQZ2wZRPkY=
X-Google-Smtp-Source: AGHT+IGJZDF4NmipsMzJ9kqrpdBnFCV6X6NeqcTgJgg52cCnXj6HQ3Wru4YWMFFl+fq0OYumq3vu6Hni/ERH+jo3xBc=
X-Received: by 2002:a05:6e02:12e9:b0:3da:7cb7:79c with SMTP id
 e9e14a558f8ab-3da7e1e7d16mr162013555ab.13.1747116821018; Mon, 12 May 2025
 23:13:41 -0700 (PDT)
MIME-Version: 1.0
References: <0c8bf3f2-1620-420e-8858-fe1c2ff5a8e9@shopee.com>
In-Reply-To: <0c8bf3f2-1620-420e-8858-fe1c2ff5a8e9@shopee.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Tue, 13 May 2025 14:13:05 +0800
X-Gm-Features: AX0GCFuIQfkAVza6hbhK4sPe4d8m2OQUcFRXo71Y2QtNp3SmxPrR8NWz9WuNVT8
Message-ID: <CAL+tcoAYvN20aMz-WYFEUeBypS8yMJ53YgdMUHCX6FCr__qT9A@mail.gmail.com>
To: Haifeng Xu <haifeng.xu@shopee.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747116821; x=1747721621; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GRrv0KBdwMIbTaSxKoyl49v0JwxRka2NNqw0EGI4u2Y=;
 b=AxJjkD4qpZ4dlhJ7apimT2rpoED5xyxNmSLoyazJZj6v6Wu/qNfyVtrG0QPdr77K8y
 8QQTGhUON0fSDDaXHkKbIblvmDszr6hRud6+ZUnRG9X9wiHChuUA4GyZx9nZGWRue4CF
 EucZmiNwiF4HidAKNx30t1unGJ8T7bh9ZSbFCEQ9Qggvz/vZLnLJbwkeBQvh0JSxmwqF
 GKWRN+0WYtcHmwHIDV5Ayt0w8whoQ3yEmQD1s3jb7fx8BvaFaED8Xnmqqr/Bq3CmrNT3
 AVvyRXGSpuFctlMdsPjb6XM6AfcDIS65wPOpky+LRCf4qExMlC4nDhPMAz7eZAJi+lxA
 ekBw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=AxJjkD4q
Subject: Re: [Intel-wired-lan] i40e: How the packets will be processed when
 status_error_len is 0
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

On Tue, May 13, 2025 at 12:08=E2=80=AFPM Haifeng Xu <haifeng.xu@shopee.com>=
 wrote:
>
> Hi all,
>
>         If the packets arrive at the rx and then raise soft irq to handle=
 it, but in i40e_clean_rx_irq, status_error_len is 0 and return.

Directly "return"? What version of I40E are you looking at?

>         The data isn't fetchted from the rx buffer, so the how the packet=
s arrive at the rx will be processed?

In i40e_clean_rx_irq(), packets are one by one constructed into the
sk_buff and then passed to the stack by napi_gro_receive().

AFAIK, common drivers implement nearly the same scenario.


Thanks,
Jason


>
>         FYI, the every rx/tx queue has been bounded to one cpu(64 queues,=
 64 cpus).
>
> Thanks!
>
