Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF7B9FF8F0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 12:47:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EFA460797;
	Thu,  2 Jan 2025 11:47:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XMwSLUFrCzbh; Thu,  2 Jan 2025 11:47:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83BCA60769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735818428;
	bh=s0YMxFvTR89OUfZaD3QYFUwk+Kdex/zYhmYqlBBl7SY=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r6zYUGQgsvx26mU8rWCMvcqRajzbeISyhIVfAcR42U8qPWNpUvaStKGYeiuCsdNzJ
	 JejawrCPSIfh87nLu+IJkVH2WwofvyRF1kHSDVni8fRLDi+yZ4K155PHzlwG1G4aiG
	 jPLxsYQpVBgQfPxYu+GwtixK1Ym4ulzBqgPTb9ReJoF3kM2h+FfkGJhFTR3Ii4qaGW
	 V8YzFgE9NjMT6u1t/vBtlmzgFZGoQ3vUKrro8Ym88EuKcWWX+6SmJo1xKrz71e27W9
	 Ec96KYbAx1XkCLIoUnosIS4nWt3g35fcMf+yjw3+T2atepNEexv4yGOHwdhitxiB/i
	 mpq3oCN2zFPdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83BCA60769;
	Thu,  2 Jan 2025 11:47:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B10F5F24
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 11:47:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91CA66076B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 11:47:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lVPgYulVdrTQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 11:47:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::633; helo=mail-ej1-x633.google.com;
 envelope-from=edumazet@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7AA5F606B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AA5F606B8
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7AA5F606B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 11:47:05 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-aab925654d9so1951286866b.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jan 2025 03:47:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735818423; x=1736423223;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=s0YMxFvTR89OUfZaD3QYFUwk+Kdex/zYhmYqlBBl7SY=;
 b=MKLGA+oV1f4PFNXkKELTPVNUe/q7z/HDJLpeM+uHhjQVpJFpk54iw0Z7Jl9VDyPGO8
 UWBS4O/fFEEvPT5yp03YVjdyCKEH6QXPOtMCv7E5T/pNY+YygsOBPBl7rKcI6DMVtiQt
 yygysFlljYulYw4EzEUwQwhUD+3/cBCjLRjxEsNrmDhu0GSsAKu7FfeoNRhUerdlGX7l
 Aax9BACt/XDEyhgENVrP1nkGV7XseTYRkmgz/aN/W/DIO5jHipQyBvUx5fh17TbehOag
 ZJa2sgKkmfAT0P3CECoVERohUpKnC1xl2IUYQ0jQN1Rn0z6MdQv2B5qHnhi3rOSNzrvU
 WfRA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTrFgYsS4q92QhUQdrspMiaeM6ossnsN7r+mPyLqfjJPnTTCHS2SeVFCkoLkCl19qxznhuvomfUPc77UMIw44=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwXjeAPskEo7H1xJOdjE8tWgLI+tndr3oscmCi8pl5q9bqJZuu/
 S0fYrblj05wUX81aDxmYzHfSABTQgHM/FsS0Gt3UUd3JYzyiI06q9dNWCcJqi1GoUdY5apLhYZo
 oNu6GxTNEacFzeh2r2We58H8cJGQqkRB7eZ7A
X-Gm-Gg: ASbGncuSAo/ybhTllubSolbkTmlY2djJyONoVN1E7uaWXElCR02bz49NonYlh0lhe1Q
 6wh41dVH50QzP77sMNuthDOxg3bkX4IvfS+ktYg==
X-Google-Smtp-Source: AGHT+IHMS6327aM/I7sq/DNSg6+ALjDW+MpVCLsUrouDMM8e9gYTaMP3053qoEqS0wE3FMlpumzaE2t4mVs39VPasJc=
X-Received: by 2002:a17:907:7286:b0:aa6:79fa:b487 with SMTP id
 a640c23a62f3a-aac28a2ab8fmr4149628866b.10.1735818423359; Thu, 02 Jan 2025
 03:47:03 -0800 (PST)
MIME-Version: 1.0
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
 <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
 <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
 <CANn89iLZQOegmzpK5rX0p++utV=XaxY8S-+H+zdeHzT3iYjXWw@mail.gmail.com>
 <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
In-Reply-To: <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
From: Eric Dumazet <edumazet@google.com>
Date: Thu, 2 Jan 2025 12:46:52 +0100
Message-ID: <CANn89iLbC3qkeptG9xv1nZyWHUTdtXBf4w3LGaisRGc7xj4pMw@mail.gmail.com>
To: Haifeng Xu <haifeng.xu@shopee.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1735818423; x=1736423223; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=s0YMxFvTR89OUfZaD3QYFUwk+Kdex/zYhmYqlBBl7SY=;
 b=a/OmCDFjXhWu/KibdTT0n+dnBZJoGoIGQjmGaoqSG8kz1plSecy7G5W0gYuiXV/l42
 tnISjot+ic7IjfrrOuf1WRXs9V1XFG3fDsrnkDgd6B7glCmuWpaOPquEQzYl+ZTO6aK0
 3pG5cPFEGhF3pq0DFwIBtpPVqP07eBapRYMHfccoQT98Gs1jyNlcwp5InDCvBCNtTkoX
 wPLtzQ5C7caHqgff4kO6TT/PCLXA6x7akDX773aot2adaULK/XGrkEUmnW0+A9uWsgnC
 43qiqXTNDNSEYBNLThpsKkknX70HWGXit9PIglQPdxIUvWtAmvp1EGWYLlahIP+hQ/Vs
 6xhg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=a/OmCDFj
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

On Thu, Jan 2, 2025 at 12:23=E2=80=AFPM Haifeng Xu <haifeng.xu@shopee.com> =
wrote:
>
>
>
> On 2025/1/2 18:34, Eric Dumazet wrote:
> > On Thu, Jan 2, 2025 at 9:43=E2=80=AFAM Haifeng Xu <haifeng.xu@shopee.co=
m> wrote:
> >>
> >>
> >>
> >> On 2025/1/2 16:13, Eric Dumazet wrote:
> >>> On Thu, Jan 2, 2025 at 4:53=E2=80=AFAM Haifeng Xu <haifeng.xu@shopee.=
com> wrote:
> >>>>
> >>>> Hi masters,
> >>>>
> >>>>         We use the Intel Corporation 82599ES NIC in our production e=
nvironment. And it has 63 rx queues, every rx queue interrupt is processed =
by a single cpu.
> >>>>         The RSS configuration can be seen as follow:
> >>>>
> >>>>         RX flow hash indirection table for eno5 with 63 RX ring(s):
> >>>>         0:      0     1     2     3     4     5     6     7
> >>>>         8:      8     9    10    11    12    13    14    15
> >>>>         16:      0     1     2     3     4     5     6     7
> >>>>         24:      8     9    10    11    12    13    14    15
> >>>>         32:      0     1     2     3     4     5     6     7
> >>>>         40:      8     9    10    11    12    13    14    15
> >>>>         48:      0     1     2     3     4     5     6     7
> >>>>         56:      8     9    10    11    12    13    14    15
> >>>>         64:      0     1     2     3     4     5     6     7
> >>>>         72:      8     9    10    11    12    13    14    15
> >>>>         80:      0     1     2     3     4     5     6     7
> >>>>         88:      8     9    10    11    12    13    14    15
> >>>>         96:      0     1     2     3     4     5     6     7
> >>>>         104:      8     9    10    11    12    13    14    15
> >>>>         112:      0     1     2     3     4     5     6     7
> >>>>         120:      8     9    10    11    12    13    14    15
> >>>>
> >>>>         The maximum number of RSS queues is 16. So I have some quest=
ions about this. Will other cpus except 0~15 receive the rx interrupts?
> >>>>
> >>>>         In our production environment, cpu 16~62 also receive the rx=
 interrupts. Was our RSS misconfigured?
> >>>
> >>> It really depends on which cpus are assigned to each IRQ.
> >>>
> >>
> >> Hi Eric,
> >>
> >> Each irq was assigned to a single cpu, for exapmle:
> >>
> >> irq     cpu
> >>
> >> 117      0
> >> 118      1
> >>
> >> ......
> >>
> >> 179      62
> >>
> >> All cpus trigger interrupts not only cpus 0~15.
> >> It seems that the result is inconsistent with the RSS hash value.
> >>
> >>
> >
> > I misread your report, I thought you had 16 receive queues.
> >
> > Why don't you change "ethtool -L eno5 rx 16", instead of trying to
> > configure RSS manually ?
>
> Hi Eric,
>
> We want to make full use of cpu resources to receive packets. So
> we enable 63 rx queues. But we found the rate of interrupt growth
> on cpu 0~15 is faster than other cpus(almost twice). I don't know
> whether it is related to RSS configuration. We didn't make any changes
> on the RSS configration after the server is up.
>
>
>
> FYI, on another server, we use Mellanox Technologies MT27800 NIC.
> The rate of interrupt growth on cpu 0~63 seems have little gap.
>
> It's RSS configration can be seen as follow:
>
> RX flow hash indirection table for ens2f0np0 with 63 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9    10    11    12    13    14    15
>    16:     16    17    18    19    20    21    22    23
>    24:     24    25    26    27    28    29    30    31
>    32:     32    33    34    35    36    37    38    39
>    40:     40    41    42    43    44    45    46    47
>    48:     48    49    50    51    52    53    54    55
>    56:     56    57    58    59    60    61    62     0
>    64:      1     2     3     4     5     6     7     8
>    72:      9    10    11    12    13    14    15    16
>    80:     17    18    19    20    21    22    23    24
>    88:     25    26    27    28    29    30    31    32
>    96:     33    34    35    36    37    38    39    40
>   104:     41    42    43    44    45    46    47    48
>   112:     49    50    51    52    53    54    55    56
>   120:     57    58    59    60    61    62     0     1
>   128:      2     3     4     5     6     7     8     9
>   136:     10    11    12    13    14    15    16    17
>   144:     18    19    20    21    22    23    24    25
>   152:     26    27    28    29    30    31    32    33
>   160:     34    35    36    37    38    39    40    41
>   168:     42    43    44    45    46    47    48    49
>   176:     50    51    52    53    54    55    56    57
>   184:     58    59    60    61    62     0     1     2
>   192:      3     4     5     6     7     8     9    10
>   200:     11    12    13    14    15    16    17    18
>   208:     19    20    21    22    23    24    25    26
>   216:     27    28    29    30    31    32    33    34
>   224:     35    36    37    38    39    40    41    42
>   232:     43    44    45    46    47    48    49    50
>   240:     51    52    53    54    55    56    57    58
>   248:     59    60    61    62     0     1     2     3
>
>
> I am confused that why ixgbe NIC can dispatch the packets
> to the rx queues that not specified in RSS configuration.

Perhaps make sure to change RX flow hash indirection table on the
Intel NIC then...

Maybe you changed the default configuration.

ethtool -X eno5 equal 64
Or
ethtool -X eno5 default
