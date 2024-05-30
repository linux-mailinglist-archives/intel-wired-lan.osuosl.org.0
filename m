Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E57378D45C5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 09:08:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12CB960655;
	Thu, 30 May 2024 07:08:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X3HKcp6bKa4z; Thu, 30 May 2024 07:08:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3442D60657
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717052928;
	bh=TRdoJVYUghUxsPDAMk3jETTan44HR4AbMtVfdYZkEqw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NF68hkR4VlQazE7P4IwHXYiyL5sX8q8ptnJCvwzcEmNesQ1ZT4LU81gxSRgts/LhX
	 NK4CqpMyvB7bCaDmQ/2tY/9wMkvaKa0z54Q9B/3M1ghzE9NcXljQzmya+tBzjEW2F5
	 moLJn9jGDz6i+YIMsxFmDDVcuFgaXXZiYO782IIpIXM+qh7xElCT/QO0n1qH0ZpEsA
	 i9U0vpFPSobeze+aTUNYpwmTMyFmF5iW2H/kv2da9pckcaoFfUSf9l67ToG3ZpLx8T
	 /Tf+408gnuUvzahT/q56KnbpUyT/8rEMayb13q/YJ/WubHi8HzPHw32ABKEuuQ5pgj
	 5BYkssQyThc0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3442D60657;
	Thu, 30 May 2024 07:08:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 326D21BF310
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 07:08:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E2FD60646
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 07:08:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r00tYSFnT7XK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 07:08:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 06C1760645
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06C1760645
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 06C1760645
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 07:08:44 +0000 (UTC)
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5D4963F6B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 07:08:36 +0000 (UTC)
Received: by mail-lj1-f200.google.com with SMTP id
 38308e7fff4ca-2ea845e3b21so2651511fa.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 00:08:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717052916; x=1717657716;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TRdoJVYUghUxsPDAMk3jETTan44HR4AbMtVfdYZkEqw=;
 b=nFWPxBV14Z5GufWJZ0m2Pn3d09Ptx+3hfwcVKCdm89B1oytoWtv2XCmGtwZ9ETMoOw
 rJI0t03m6ouVrMSZrqaFHE6nwMn1AfL9oFxBqxAe4Y67sND65k4/opgn5yZkbyY3Z1Wm
 DLnBJYp7J7bJZokWwBR3qtTehMNTcrsuZZpT7VHJhjNbSyTwv4ustRVHo5UfVY/bz+Rn
 KfE/owIWnCo74sOjf4Wcl3r1933g9oTqyAnODyP7okpCvpyHQDvL7kfd/MLnMcY0B0Hp
 6Y/BYXB2WxH9toXDo4YfDQisRGNHowUbD9UVibTd/hVH2V08mo7ldGndNS3hNjNzdw5u
 fWEw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUz2RyAUQhBmz1ydecSQj+3d+IeBOaKsoA4WLE6LuzRsS50XeriH7BasXC7vlV3wHEozaAGz1whekLDRZF5FtyDWyN92EQFhZ5AGU/BSBnyMA==
X-Gm-Message-State: AOJu0Yzguo05ezH8vj16xhMqggXQCKqt3svkfQ4O5wHRJVbA2jUjj5BC
 krggfM209HL2CHEwahAkTAdinqCpUuyLCw+Pr7qbbqASKVfgjiACDvwAyV3DmS0hhNolkDMEBs6
 NGYFEdSmGhjahmqcBWPHeLlcQGDTndSLSSWHGZX4sCxIkolggKI4+IBuSn2QkzmQwEiflNdmFms
 THd6EHKvnOsQTEWWEC79YCsyQfrPtBGPSdkSkqKqBN40rxUQenuBEGPRalmQ==
X-Received: by 2002:a2e:a4c8:0:b0:2ea:8191:ec47 with SMTP id
 38308e7fff4ca-2ea84827c6dmr6745551fa.28.1717052915704; 
 Thu, 30 May 2024 00:08:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGNzMz5WM60Dn387vCm1QkAb1S8YVIGqyKkJPuQe24YTk1ju3RtdlPlXZO/RYVScKuyUOSO1Z9O623Eurys8w=
X-Received: by 2002:a2e:a4c8:0:b0:2ea:8191:ec47 with SMTP id
 38308e7fff4ca-2ea84827c6dmr6745421fa.28.1717052915311; Thu, 30 May 2024
 00:08:35 -0700 (PDT)
MIME-Version: 1.0
References: <20240528100315.24290-1-en-wei.wu@canonical.com>
 <88c6a5ee-1872-4c15-bef2-dcf3bc0b39fb@molgen.mpg.de>
 <CAMqyJG0uUgjN90BqjXSfgq7HD3ACdLwOM8P2B+wjiP1Zn1gjAQ@mail.gmail.com>
 <971a2c3b-1cd9-48c5-aa50-e3c441277f0a@molgen.mpg.de>
In-Reply-To: <971a2c3b-1cd9-48c5-aa50-e3c441277f0a@molgen.mpg.de>
From: En-Wei WU <en-wei.wu@canonical.com>
Date: Thu, 30 May 2024 15:08:23 +0800
Message-ID: <CAMqyJG13Q+20p5gPpLZ1JYBS6yt5HZox0=gaT87vDyxN1rxRyA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1717052916;
 bh=TRdoJVYUghUxsPDAMk3jETTan44HR4AbMtVfdYZkEqw=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=eK9yYGJBRX5sjqPb6+A+mXmX0Py81nIwfq8ioDVC3ha+VtaWOqsAG6qSWlHzIc53u
 cXSoKFrQI6IGmXBFA6Dlf8YWCtMacvnImEYQFlEzsiE679yb0qcm7HGvIlHY22h1e1
 qqXSO7KHn8otoZBrCOcfEcC8PCFCD+R3xS9MYnAWdg82Q2+Cz2stNjkxkGQrEZzlaI
 jaRCfP5wCqAV6jJhJO5Rl/LnIhynwHRM7fxEEac480tcY8ejfCcqdVEtX2MWYRnYiR
 gGOXF2gNN8kX+qMcPGi6fGQmwFvnCKfMcrs5m8J05c+EXbN5p7KvAApnhK1wdEnTQl
 R2wyPb869ZNbg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=eK9yYGJB
Subject: Re: [Intel-wired-lan] [PATCH] ice: irdma hardware init failed after
 suspend/resume
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
Cc: wojciech.drewek@intel.com, netdev@vger.kernel.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thank you for your reply.

> Sorry for being unclear. I meant, does resuming the system take longer
> now? (initcall_debug might give a clue.)
I've tested the S3 suspend/resume with the initcall_debug kernel
command option, and it shows no clear difference between having or not
having the ice_init_rdma in ice_resume:
Without ice_init_rdma:
```
[  104.241129] ice 0000:86:00.0: PM: pci_pm_resume+0x0/0x110 returned
0 after 9415 usecs
[  104.241206] ice 0000:86:00.1: PM: pci_pm_resume+0x0/0x110 returned
0 after 9443 usecs
```
With ice_init_rdma:
```
[  122.749022] ice 0000:86:00.1: PM: pci_pm_resume+0x0/0x110 returned
0 after 9485 usecs
[  122.749068] ice 0000:86:00.0: PM: pci_pm_resume+0x0/0x110 returned
0 after 9532 usecs
```

> And ice_init_rdma should be moved to ice_rebuild (replace ice_plug_aux_de=
v)
We can defer the ice_init_rdma to the later service task by adopting this.

> You should call ice_deinit_rdma in ice_prepare_for_reset (replace ice_unp=
lug_aux_dev),
It seems like we must call ice_deinit_rdma in ice_suspend. If we call
it in the later service task, it will:
1. break some existing code setup by ice_resume
2. Since the PCI-X vector table is flushed at the end of ice_suspend,
we have no way to release PCI-X vectors for rdma if we had allocated
it dynamically
The second point is important since we didn't release the PCI-X
vectors for rdma (if we allocated it dynamically) in the original
ice_suspend, and it's somewhat like a leak in the original code.

Best regards,
Ricky.

On Thu, 30 May 2024 at 04:19, Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>
> Dear En-Wei,
>
>
> Thank you for responding so quickly.
>
> Am 29.05.24 um 05:17 schrieb En-Wei WU:
>
> [=E2=80=A6]
>
> >> What effect does this have on resume time?
> >
> > When we call ice_init_rdma() at resume time, it will allocate entries
> > at pf->irq_tracker.entries and update pf->msix_entries for later use
> > (request_irq) by irdma.
>
> Sorry for being unclear. I meant, does resuming the system take longer
> now? (initcall_debug might give a clue.)
>
>
> Kind regards,
>
> Paul
