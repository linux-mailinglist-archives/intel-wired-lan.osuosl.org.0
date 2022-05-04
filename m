Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D62C519C0D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 May 2022 11:40:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA86640004;
	Wed,  4 May 2022 09:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MB7vKy8vVFNy; Wed,  4 May 2022 09:40:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 975D640143;
	Wed,  4 May 2022 09:40:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C1B131BF239
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 09:40:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA5BD415CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 09:40:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RCt20TM7Xt-1 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 May 2022 09:40:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78E9D4185C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 09:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651657211;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Q73KS4UayHinyWg5wbRzTGkbYLCOJ++pIQoCgNQWP7g=;
 b=cwMEjwsqrSQxP79WCO8S6WA5Zw+lnbdtVP7UpgG6gwQWEkbf5sAg3GMqvyF1RKWycWQRJ8
 KOPhAfhad9NRvDBKPYzOslZymdGljFvNs3xpkddBeSW19Pgn81V4N/a0r9OUbSHqfCMCD2
 BJevAnIC337h29Q8n0Y2PI6EISA1gz0=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-590-MkCa6g42PuiPkhDcW1s86w-1; Wed, 04 May 2022 05:40:09 -0400
X-MC-Unique: MkCa6g42PuiPkhDcW1s86w-1
Received: by mail-yw1-f197.google.com with SMTP id
 00721157ae682-2d11b6259adso7570757b3.19
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 May 2022 02:40:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q73KS4UayHinyWg5wbRzTGkbYLCOJ++pIQoCgNQWP7g=;
 b=l1oodjOJ369a3GriDSjmeHvZECWVfHa0nuxxupCnRuNkSPhYpNcHLA27lvwLhey/F/
 LYZJhRtS9FIMI3cFrLJC5KalYeHZaS39cMwe+YRir+ky797VZjQriX5m01zYZpaiAEGc
 22YnHPwewrKENMq6qkRZJN8WfHOX7zM+M5P0IAvH9u/RlcK2ZF7RZJgorVyYgxpvaoDH
 vmaGLr3MpuHM1SL3qIUbXmqQ8/L73K4XStfCj+9fuubM2VN8pNY74qJJM2ef0UTEGC/J
 lkIQ02xwoQFiK6+JrXKMkAmphzGnAf49Nexy0QNpT5sGNZHvOXWCCycBpXi1x344ClRO
 WZQg==
X-Gm-Message-State: AOAM532+sXnm/+8sHYLDcinIbumZU12zyGtqlmVenwTf0JIkKT0jBOFg
 2RorWXOaTxQTFc+5WvA9xTSMt8Ti97kd/DqY79KBK2lSafgHhESlDMsalnGWUNKp62/5/276/qJ
 zZiiRBHvvr0zSMfx7vHGGTs4UInVEwOU00ig68w97iO2CEg==
X-Received: by 2002:a25:3f41:0:b0:641:d7c9:3942 with SMTP id
 m62-20020a253f41000000b00641d7c93942mr16500346yba.504.1651657209345; 
 Wed, 04 May 2022 02:40:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyklhNwkBGOarjBTHnf2AxzQMxxLh2p/ojXrBhwZBXYbBr1cDXHJHE/b9dPppSEO3yg6SwAxkyn+palK9UeDaI=
X-Received: by 2002:a25:3f41:0:b0:641:d7c9:3942 with SMTP id
 m62-20020a253f41000000b00641d7c93942mr16500336yba.504.1651657209132; Wed, 04
 May 2022 02:40:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220428083350.10986-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20220428083350.10986-1-arkadiusz.kubalewski@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 4 May 2022 11:39:57 +0200
Message-ID: <CADEbmW2-j8x+rcxt2dGsMfKyL9kGLU6SRO+EkWn0oyOAAmkEXg@mail.gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mschmidt@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: fix crash when writing
 timestamp on rx rings
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Dave Cain <dcain@redhat.com>
Content-Type: multipart/mixed; boundary="===============1526157121404758667=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1526157121404758667==
Content-Type: multipart/alternative; boundary="0000000000003dd8d305de2c6909"

--0000000000003dd8d305de2c6909
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 28, 2022 at 10:46 AM Arkadiusz Kubalewski <
arkadiusz.kubalewski@intel.com> wrote:

> Do not allow to write timestamps on RX rings if PF is being configured.
> When PF is being configured RX rings can be freed or rebuilt. If at the
> same
> time timestamps are updated, the kernel will crash by dereferencing null RX
> ring pointer.
>
> PID: 1449   TASK: ff187d28ed658040  CPU: 34  COMMAND: "ice-ptp-0000:51"
>  #0 [ff1966a94a713bb0] machine_kexec at ffffffff9d05a0be
>  #1 [ff1966a94a713c08] __crash_kexec at ffffffff9d192e9d
>  #2 [ff1966a94a713cd0] crash_kexec at ffffffff9d1941bd
>  #3 [ff1966a94a713ce8] oops_end at ffffffff9d01bd54
>  #4 [ff1966a94a713d08] no_context at ffffffff9d06bda4
>  #5 [ff1966a94a713d60] __bad_area_nosemaphore at ffffffff9d06c10c
>  #6 [ff1966a94a713da8] do_page_fault at ffffffff9d06cae4
>  #7 [ff1966a94a713de0] page_fault at ffffffff9da0107e
>     [exception RIP: ice_ptp_update_cached_phctime+91]
>     RIP: ffffffffc076db8b  RSP: ff1966a94a713e98  RFLAGS: 00010246
>     RAX: 16e3db9c6b7ccae4  RBX: ff187d269dd3c180  RCX: ff187d269cd4d018
>     RDX: 0000000000000000  RSI: 0000000000000000  RDI: 0000000000000000
>     RBP: ff187d269cfcc644   R8: ff187d339b9641b0   R9: 0000000000000000
>     R10: 0000000000000002  R11: 0000000000000000  R12: ff187d269cfcc648
>     R13: ffffffff9f128784  R14: ffffffff9d101b70  R15: ff187d269cfcc640
>     ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
>  #8 [ff1966a94a713ea0] ice_ptp_periodic_work at ffffffffc076dbef [ice]
>  #9 [ff1966a94a713ee0] kthread_worker_fn at ffffffff9d101c1b
>  #10 [ff1966a94a713f10] kthread at ffffffff9d101b4d
>  #11 [ff1966a94a713f50] ret_from_fork at ffffffff9da0023f
>
> Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v2: rebased to latest dev-queue
> v3: use proper if statement condition to bail out
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 19 +++++++++++++++----
>  1 file changed, 15 insertions(+), 4 deletions(-)
>

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
Tested-by: Dave Cain <dcain@redhat.com>

--0000000000003dd8d305de2c6909
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Apr 28, 2022 at 10:46 AM Arkadiusz Kubalewski &lt;<a href=3D=
"mailto:arkadiusz.kubalewski@intel.com">arkadiusz.kubalewski@intel.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Do no=
t allow to write timestamps on RX rings if PF is being configured.<br>
When PF is being configured RX rings can be freed or rebuilt. If at the sam=
e<br>
time timestamps are updated, the kernel will crash by dereferencing null RX=
<br>
ring pointer.<br>
<br>
PID: 1449=C2=A0 =C2=A0TASK: ff187d28ed658040=C2=A0 CPU: 34=C2=A0 COMMAND: &=
quot;ice-ptp-0000:51&quot;<br>
=C2=A0#0 [ff1966a94a713bb0] machine_kexec at ffffffff9d05a0be<br>
=C2=A0#1 [ff1966a94a713c08] __crash_kexec at ffffffff9d192e9d<br>
=C2=A0#2 [ff1966a94a713cd0] crash_kexec at ffffffff9d1941bd<br>
=C2=A0#3 [ff1966a94a713ce8] oops_end at ffffffff9d01bd54<br>
=C2=A0#4 [ff1966a94a713d08] no_context at ffffffff9d06bda4<br>
=C2=A0#5 [ff1966a94a713d60] __bad_area_nosemaphore at ffffffff9d06c10c<br>
=C2=A0#6 [ff1966a94a713da8] do_page_fault at ffffffff9d06cae4<br>
=C2=A0#7 [ff1966a94a713de0] page_fault at ffffffff9da0107e<br>
=C2=A0 =C2=A0 [exception RIP: ice_ptp_update_cached_phctime+91]<br>
=C2=A0 =C2=A0 RIP: ffffffffc076db8b=C2=A0 RSP: ff1966a94a713e98=C2=A0 RFLAG=
S: 00010246<br>
=C2=A0 =C2=A0 RAX: 16e3db9c6b7ccae4=C2=A0 RBX: ff187d269dd3c180=C2=A0 RCX: =
ff187d269cd4d018<br>
=C2=A0 =C2=A0 RDX: 0000000000000000=C2=A0 RSI: 0000000000000000=C2=A0 RDI: =
0000000000000000<br>
=C2=A0 =C2=A0 RBP: ff187d269cfcc644=C2=A0 =C2=A0R8: ff187d339b9641b0=C2=A0 =
=C2=A0R9: 0000000000000000<br>
=C2=A0 =C2=A0 R10: 0000000000000002=C2=A0 R11: 0000000000000000=C2=A0 R12: =
ff187d269cfcc648<br>
=C2=A0 =C2=A0 R13: ffffffff9f128784=C2=A0 R14: ffffffff9d101b70=C2=A0 R15: =
ff187d269cfcc640<br>
=C2=A0 =C2=A0 ORIG_RAX: ffffffffffffffff=C2=A0 CS: 0010=C2=A0 SS: 0018<br>
=C2=A0#8 [ff1966a94a713ea0] ice_ptp_periodic_work at ffffffffc076dbef [ice]=
<br>
=C2=A0#9 [ff1966a94a713ee0] kthread_worker_fn at ffffffff9d101c1b<br>
=C2=A0#10 [ff1966a94a713f10] kthread at ffffffff9d101b4d<br>
=C2=A0#11 [ff1966a94a713f50] ret_from_fork at ffffffff9da0023f<br>
<br>
Fixes: 77a781155a65 (&quot;ice: enable receive hardware timestamping&quot;)=
<br>
Signed-off-by: Arkadiusz Kubalewski &lt;<a href=3D"mailto:arkadiusz.kubalew=
ski@intel.com" target=3D"_blank">arkadiusz.kubalewski@intel.com</a>&gt;<br>
---<br>
v2: rebased to latest dev-queue<br>
v3: use proper if statement condition to bail out<br>
<br>
=C2=A0drivers/net/ethernet/intel/ice/ice_ptp.c | 19 +++++++++++++++----<br>
=C2=A01 file changed, 15 insertions(+), 4 deletions(-)<br></blockquote><div=
><br></div>Reviewed-by: Michal Schmidt &lt;<a href=3D"mailto:mschmidt@redha=
t.com">mschmidt@redhat.com</a>&gt;</div><div class=3D"gmail_quote">Tested-b=
y: Dave Cain &lt;<a href=3D"mailto:dcain@redhat.com">dcain@redhat.com</a>&g=
t;</div><div class=3D"gmail_quote"><br></div></div>

--0000000000003dd8d305de2c6909--


--===============1526157121404758667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1526157121404758667==--

