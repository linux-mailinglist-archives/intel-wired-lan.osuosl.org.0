Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3649FF837
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 11:34:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75F3A80D6E;
	Thu,  2 Jan 2025 10:34:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kRkUN_yfcUby; Thu,  2 Jan 2025 10:34:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C027F80DA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735814083;
	bh=sks17qciHddqHWfnM40Qn+F3GdiHrxZMi6A0V5O0rPY=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J34WKC4yq0XQnjLC0hT2kZ+cUd174u0RlDFE58qoCMzQ0uCqzcJpuoVEPkDfMvWAo
	 Em5Uduwn/GysORu9h3hbmvVFV+Xbsee2yHb0t7nBmehsjOplezUR2MVA5q9zIjJw/3
	 rgS8rTlyYMDkh8gtfXEJrU66V9fwbdaFnDCnWJ/Mm2pkbjDMHc6XT/M8c5CyuXowSg
	 L7Ro7pwa9JyoB23HiXYcVTdUAypu8jHkICv/4Nvro4eI39x8y4b9dAmR1iK4/qoSdF
	 TOurRi6zsl+EfTzGdagrW8Zz3uWzMIYH1zFCANYXX64LYo6MphUiiRJaK8HYyx+CYW
	 I3toKlg/6rwaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C027F80DA7;
	Thu,  2 Jan 2025 10:34:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C55E0E0F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 10:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C051C60586
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 10:34:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vhM3UbY196Dj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 10:34:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::532; helo=mail-ed1-x532.google.com;
 envelope-from=edumazet@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C6A936069E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6A936069E
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C6A936069E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 10:34:40 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-5d3e6f6cf69so18845270a12.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jan 2025 02:34:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735814079; x=1736418879;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sks17qciHddqHWfnM40Qn+F3GdiHrxZMi6A0V5O0rPY=;
 b=RGYonnRxuYm4J+4ll8zLtIgRw7Fj21PGW9BAQ6rgSfW/dXEJU+m/eHkEJIfF3NYMyW
 bdHMoYYUhbdW0OqfeJ9JAQNT3wkCXO00DPFeVzxDpQIq+SG8d4BFYmkQKZZFDhnmWa7T
 eIj+3LoL7GOnjXAcSptUnc1ciWecOVIobUA5Ad1pFMruLff8Gj/9+jeZxfEpkjEhcf/K
 kULOS4DgmPMPSGk8R80RSHDemIWD3c5gJMBqvrisKl5NeffHkxMYxjWCVJtGB4aVPAdx
 Tk5FE9HKtpVFIOworSZqOhp+cULjJNa0HsBV565eOOAL2NwoDPf8Js3D4sX9+q+dd3w2
 8jPw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWYQB3sGxubXVulkH+3HDLZ189Z5bTMmeevaFHLcUGSpI1kWkrDPqWWirT/SvAUgaJPPwNMGThNpssntMaeq8o=@lists.osuosl.org
X-Gm-Message-State: AOJu0YySTpDNyFzHOZm2uIAuvo/QEqX8+z+OOrUOCd3uFx+XscVBXroj
 lbYFm9jmbASWfvyyalPRNCe/qihWcGBEDp/drQErt8opkUMtAZTScQrXkLbAvgGtW0MQaG69dpW
 Gkl7f6PCqinHpqpy8ayhlZwO7nP2SNo7OrGA3
X-Gm-Gg: ASbGncv1y6j9pTJqKQOlVCZR6DEQbnGoX7TzW8Hv6FdCcGFDxJrBVQE+fyTALOAmruV
 6gzN/GubcRcueY+dkjjMKT6PFEsmyioki+24=
X-Google-Smtp-Source: AGHT+IGgQHIubZz9WKPEN01Itgy6ZOa0RLc/RmUbuVXnyvSBqUOgs3feFnquGIhI1nDuR/S+wXVSu36GHKEraNevemY=
X-Received: by 2002:a17:907:9805:b0:aaf:117f:1918 with SMTP id
 a640c23a62f3a-aaf117f1d51mr2433837866b.5.1735814078395; Thu, 02 Jan 2025
 02:34:38 -0800 (PST)
MIME-Version: 1.0
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
 <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
 <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
In-Reply-To: <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
From: Eric Dumazet <edumazet@google.com>
Date: Thu, 2 Jan 2025 11:34:27 +0100
Message-ID: <CANn89iLZQOegmzpK5rX0p++utV=XaxY8S-+H+zdeHzT3iYjXWw@mail.gmail.com>
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
 d=google.com; s=20230601; t=1735814079; x=1736418879; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sks17qciHddqHWfnM40Qn+F3GdiHrxZMi6A0V5O0rPY=;
 b=tj3iX4fKrkEpzujDTY7j31QlHZGpUjB6/356itsE+8p3DC3Fmvwrb3qMj9UWzsdgJg
 F+iNBD8G2FSQJXKtd2Cpjh4/DvKB/9PxKc53p9Cr9qZND97k9Z1UkPCuMibMZmbX9Zjo
 GFmnsRm47BBoBfkPDLlC+rWDWb2FpkctTqe4v0ysWl1su3K9vj18HivSNC6pwUYwE/96
 D0SfhGNJhy9SvthYv1StzuMERHHLtjAEvg7xjmLQbbtNsYswv8iKXNPKM5p+gKHDOLdd
 DvVclOkni/gFk/FBDFlw4QNMh5lsQuZcd62te0+FVAIHs7IyHV3v0219BLzKJsZqN+3R
 jQMg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=tj3iX4fK
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

On Thu, Jan 2, 2025 at 9:43=E2=80=AFAM Haifeng Xu <haifeng.xu@shopee.com> w=
rote:
>
>
>
> On 2025/1/2 16:13, Eric Dumazet wrote:
> > On Thu, Jan 2, 2025 at 4:53=E2=80=AFAM Haifeng Xu <haifeng.xu@shopee.co=
m> wrote:
> >>
> >> Hi masters,
> >>
> >>         We use the Intel Corporation 82599ES NIC in our production env=
ironment. And it has 63 rx queues, every rx queue interrupt is processed by=
 a single cpu.
> >>         The RSS configuration can be seen as follow:
> >>
> >>         RX flow hash indirection table for eno5 with 63 RX ring(s):
> >>         0:      0     1     2     3     4     5     6     7
> >>         8:      8     9    10    11    12    13    14    15
> >>         16:      0     1     2     3     4     5     6     7
> >>         24:      8     9    10    11    12    13    14    15
> >>         32:      0     1     2     3     4     5     6     7
> >>         40:      8     9    10    11    12    13    14    15
> >>         48:      0     1     2     3     4     5     6     7
> >>         56:      8     9    10    11    12    13    14    15
> >>         64:      0     1     2     3     4     5     6     7
> >>         72:      8     9    10    11    12    13    14    15
> >>         80:      0     1     2     3     4     5     6     7
> >>         88:      8     9    10    11    12    13    14    15
> >>         96:      0     1     2     3     4     5     6     7
> >>         104:      8     9    10    11    12    13    14    15
> >>         112:      0     1     2     3     4     5     6     7
> >>         120:      8     9    10    11    12    13    14    15
> >>
> >>         The maximum number of RSS queues is 16. So I have some questio=
ns about this. Will other cpus except 0~15 receive the rx interrupts?
> >>
> >>         In our production environment, cpu 16~62 also receive the rx i=
nterrupts. Was our RSS misconfigured?
> >
> > It really depends on which cpus are assigned to each IRQ.
> >
>
> Hi Eric,
>
> Each irq was assigned to a single cpu, for exapmle:
>
> irq     cpu
>
> 117      0
> 118      1
>
> ......
>
> 179      62
>
> All cpus trigger interrupts not only cpus 0~15.
> It seems that the result is inconsistent with the RSS hash value.
>
>

I misread your report, I thought you had 16 receive queues.

Why don't you change "ethtool -L eno5 rx 16", instead of trying to
configure RSS manually ?
