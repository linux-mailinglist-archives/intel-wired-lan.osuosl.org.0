Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C96877582A3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 18:55:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3343C416B9;
	Tue, 18 Jul 2023 16:55:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3343C416B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689699307;
	bh=ojiaSB5ysklGKm1lUguchxw/B7MrcyYhNuAG9TMrWFg=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eHqoqyJA81q48qm0lr/J6iPRy9op8vu2ERvWyaAuPC+DoiW560xe4Qx9OMBC35zkM
	 cOcSgP1N+jk52kaMTDh1G0bOF9y5K0HY7B/6T7+AVRqFheXazwOeNlfHIATGKxWIs9
	 ypDVvizJhc/pXKxo5tacREItoqz5WNccb+OL7IlScAM9BMsp7gx9vysothD+XDcviI
	 LvoLuaCRDp3TtazMGPRaIpW+uw7nYHCC7o9K7qPB7u8/cf4ij9VYY60oc4p5lP0C1N
	 6rlFlk/D+hRAeJLLukb9b28f6H/v4h3BZdlnhuhP/sduDqeMvRGh1GD7fssFANpmce
	 QKkm9QzDQUU9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lKky2fzs9PpY; Tue, 18 Jul 2023 16:55:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2CC441693;
	Tue, 18 Jul 2023 16:55:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2CC441693
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA0481BF2A2
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jul 2023 16:55:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E23B41693
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jul 2023 16:55:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E23B41693
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ficfliLd7L-m for <intel-wired-lan@osuosl.org>;
 Tue, 18 Jul 2023 16:54:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1360415F2
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1360415F2
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jul 2023 16:54:58 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id
 38308e7fff4ca-2b741cf99f8so91578851fa.0
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jul 2023 09:54:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689699297; x=1692291297;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=MIY3tAi9K8XvVcupPzvaGm+r1IqcF8mCNWuou85hGLs=;
 b=XKYGFhVz2Ps/9jOD+VA4w4BpbyjmPRCvDEifsMLW659uQOqS9eUw/exdKy/Y9NFGRs
 4T+Y6fw/1RZls9Q6lAikWRDFb6IM+33DpHe7vma68LaS6ge7ZczLx60h0J5i/V7yZ+sO
 CGXaxkgQ470ipEDiZE4jECZ0/55zgrlY1cxzVW6FfSn+8WXOgr+tFg6LXdgfXVDuZ3mj
 d3t/KPz6sFLIbJEkdOboUhqqDqY8K0/PBRZ+mtKc5RQVSEB5jLJaFul6Fy6ekxorH5mf
 DiGx6fmjrgD93YRbswb0o6M1yh+jeX43hKDu6O1RlLMUL4JpCb2bOgnlqd2+iW0VVwlI
 +W0A==
X-Gm-Message-State: ABy/qLZkbDptnWlaWRLMj/kq/eApPtCsOTIYTuZH0dyZrRSuxJB1+GlJ
 EyRmqSoAr1i3ZIUuUfLZYemCJNvaXVx/T7dKQB7vyziJBJ4=
X-Google-Smtp-Source: APBJJlHo3r7K23tNKPtXzDgSqhuRMbWZorBjhVlkHZVIfN+N2vLje20YE7yw+2XrB9ZXL3I82Ezb4J8b5xhUFYsjkz4=
X-Received: by 2002:a2e:900c:0:b0:2b6:e7b7:a163 with SMTP id
 h12-20020a2e900c000000b002b6e7b7a163mr10753276ljg.27.1689699296332; Tue, 18
 Jul 2023 09:54:56 -0700 (PDT)
MIME-Version: 1.0
From: War Nings <warnings007@gmail.com>
Date: Tue, 18 Jul 2023 18:54:44 +0200
Message-ID: <CALsJR91-KyLCqR6gzFxKdEp45tMJtjjMvFV1=+H4ehHOJ+26ag@mail.gmail.com>
To: intel-wired-lan@osuosl.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689699297; x=1692291297;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=MIY3tAi9K8XvVcupPzvaGm+r1IqcF8mCNWuou85hGLs=;
 b=XQFef+SxvC82/1VdUAVFUMP8MUIsTxyMPN3P0D8XIasWL9NtMgFMKHjkEtbRA+F6Ez
 UNREJBbeHYtWMA5zihUnyXTqVuV16lupS2kEkwWIWbDaoGxzEzHcHkWiWV6pa6G7MRkZ
 HvWwOixp20Wspt4vtVjhB1Ciqw7081x3C1//bGfuqzh4dLO+eHYNtql63Fn3+IQRKu/O
 J1GCvvsMCmPks6W8q+it/BsxQ8qWgzzDPs+CpzAq8GR+0yXEbBjloFvG8OwowY3Y4nrd
 SEeSr15nSqozfJ6faMG2BHyU5OVoWa20QC+qi9bPfMTPrDjQs9QVvj03qVtdD1QJ3qqS
 uCmw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=XQFef+Sx
Subject: [Intel-wired-lan] Compilation error with ixgbe 5.18.11 or 5.18.13
 on RT kernel 6.1
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
Content-Type: multipart/mixed; boundary="===============1333785075744559524=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1333785075744559524==
Content-Type: multipart/alternative; boundary="00000000000055d0e40600c5c694"

--00000000000055d0e40600c5c694
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

This driver seem have a compilation issue with two latest ixgbe drivers
5.18.11 or 5.18.13 when you have a RT kernel 6.1.
It's work fine with the standard 6.1 kernel but cause two errors with a
PREEMPT_RT Kernel 6.1.

Errors :
ixgbe_main.c:8231:33: error: implicit declaration of function
=E2=80=98u64_stats_fetch_begin_irq=E2=80=99; did you mean =E2=80=98u64_stat=
s_fetch_begin=E2=80=99?
[-Werror=3Dimplicit-function-declaration]

ixgbe_main.c:8234:26: error: implicit declaration of function
=E2=80=98u64_stats_fetch_retry_irq=E2=80=99; did you mean =E2=80=98u64_stat=
s_fetch_retry=E2=80=99?
[-Werror=3Dimplicit-function-declaration]


Thank you

--00000000000055d0e40600c5c694
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br><br></div>This driver seem have a=
 compilation issue with two latest ixgbe drivers 5.18.11 or 5.18.13 when yo=
u have a RT kernel 6.1.<br></div>It&#39;s work fine with the standard 6.1 k=
ernel but cause two errors with a PREEMPT_RT Kernel 6.1.<br><br>Errors :<br=
>ixgbe_main.c:8231:33: error: implicit declaration of function =E2=80=98u64=
_stats_fetch_begin_irq=E2=80=99; did you mean =E2=80=98u64_stats_fetch_begi=
n=E2=80=99? [-Werror=3Dimplicit-function-declaration]<br><br>ixgbe_main.c:8=
234:26: error: implicit declaration of function =E2=80=98u64_stats_fetch_re=
try_irq=E2=80=99; did you mean =E2=80=98u64_stats_fetch_retry=E2=80=99? [-W=
error=3Dimplicit-function-declaration]<br><br><br></div>Thank you<br></div>

--00000000000055d0e40600c5c694--

--===============1333785075744559524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1333785075744559524==--
