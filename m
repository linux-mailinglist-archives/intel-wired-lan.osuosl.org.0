Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF42A502B73
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 16:06:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B1A840491;
	Fri, 15 Apr 2022 14:06:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SvR2Qkp-zCa0; Fri, 15 Apr 2022 14:06:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 540B3400D1;
	Fri, 15 Apr 2022 14:06:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15BF61BF33B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 11:12:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 101E741985
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 11:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yur7YvNej7P0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 11:12:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04D4541983
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 11:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650021138;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FxnuXfKNAPLDRnSiBrQEGE6cRQnBHMZBmIrIShIor+o=;
 b=NBfIoKEBIyuiAohOtmurwVqxJk+J0aqYr0wjbnAZzfcMp5brC9QUv8ZN08Q71O+RKR5h2G
 GZG0fqQZgUMVgmhA66f4YaDq2zhJ3l0kvFolcXCplZ/omJwznU6sFjGMbIYOBLq3/bfnDG
 aYllmGjJRsZo6d87aUAQPDbyi/aPCI8=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-529-jPrfIu99MAiSNo_hCE_xwQ-1; Fri, 15 Apr 2022 07:12:15 -0400
X-MC-Unique: jPrfIu99MAiSNo_hCE_xwQ-1
Received: by mail-yw1-f197.google.com with SMTP id
 00721157ae682-2ebebe9f982so63855257b3.17
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 04:12:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FxnuXfKNAPLDRnSiBrQEGE6cRQnBHMZBmIrIShIor+o=;
 b=Ja2XH3amPRRPY5MZybvVU3fQ8/fqMnAI+vP3F62O2VFn5cySUkZ6MIXegN8hrV7WUo
 s9RiweAvgwpw9P8ysXVOQqi1cAvmV3MY9PwxZM7BmADcBA0sJX4RGrDhdj38zUOpf67F
 L/pM1AB5ZSeYE9rQ9Bfck8fpt3F5tmodesNVJj1BiTjKgaIsOxQrNc8ObaxS8YmjjwMz
 hZAFrD1WfuBr7fAg5/2SxiUK/pUfstYM9zNkrTZQjg5s73uGUvARO5nOtMtJhBxP4ZEA
 HrKafq/bk0ImIKg/s8HQwqgEwxO6xI+UaaMW8fiL6JNUZDRWBtUIGEpQBFPyH+kCyViu
 86qg==
X-Gm-Message-State: AOAM532jqXlqu+GuspwL6iwDNwMe2i++iOQQ4jx62KPXXOg5UF13wqt7
 sCW1PJiovbyfcLP+bjWqLjzBHVx+wPpjUW3wmM3oc06UmORgdzwVRFEJRm11XlZk4L1848BuZvh
 J29WnXyAdw25/tLTmF3owCJmY+FUmdPg6/3rykSABRTW2zQ==
X-Received: by 2002:a81:c44b:0:b0:2d6:4726:ef4b with SMTP id
 s11-20020a81c44b000000b002d64726ef4bmr5424253ywj.184.1650021134624; 
 Fri, 15 Apr 2022 04:12:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyicIDSKRomVOcMyUEopFwT4O4kEPJMnSGLM1YxS0i+cCLewrQfR3R0GbK81H86SpPan0iZDtk8bM7jM4/xZ+o=
X-Received: by 2002:a81:c44b:0:b0:2d6:4726:ef4b with SMTP id
 s11-20020a81c44b000000b002d64726ef4bmr5424238ywj.184.1650021134441; Fri, 15
 Apr 2022 04:12:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220414163907.1456925-1-ivecera@redhat.com>
In-Reply-To: <20220414163907.1456925-1-ivecera@redhat.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Fri, 15 Apr 2022 13:12:03 +0200
Message-ID: <CADEbmW3eUAnvn4gvNxqjCMmO333-=OdObGhDXkrTbDwn0YkJDw@mail.gmail.com>
To: Ivan Vecera <ivecera@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mschmidt@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Fri, 15 Apr 2022 14:05:48 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix race during aux device
 (un)plugging
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shiraz Saleem <shiraz.saleem@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============8747921897165921553=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8747921897165921553==
Content-Type: multipart/alternative; boundary="00000000000097381e05dcaf7bb4"

--00000000000097381e05dcaf7bb4
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 14, 2022 at 6:39 PM Ivan Vecera <ivecera@redhat.com> wrote:

> Function ice_plug_aux_dev() assigns pf->adev field too early prior
> aux device initialization and on other side ice_unplug_aux_dev()
> starts aux device deinit and at the end assigns NULL to pf->adev.
> This is wrong and can causes a crash when ice_send_event_to_aux()
> call occurs during these operations because that function depends
> on non-NULL value of pf->adev and does not assume that aux device
> is half-initialized or half-destroyed.
>
> Modify affected functions so pf->adev field is set after aux device
> init and prior aux device destroy.
>
[...]

> @@ -320,12 +319,14 @@ int ice_plug_aux_dev(struct ice_pf *pf)
>   */
>  void ice_unplug_aux_dev(struct ice_pf *pf)
>  {
> -       if (!pf->adev)
> +       struct auxiliary_device *adev = pf->adev;
> +
> +       if (!adev)
>                 return;
>
> -       auxiliary_device_delete(pf->adev);
> -       auxiliary_device_uninit(pf->adev);
>         pf->adev = NULL;
> +       auxiliary_device_delete(adev);
> +       auxiliary_device_uninit(adev);
>  }
>

Hi Ivan,
What prevents ice_unplug_aux_dev() from running immediately after
ice_send_event_to_aux() gets past its "if (!pf->adev)" test ?
Michal

--00000000000097381e05dcaf7bb4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"font-family:arial,sans-ser=
if">On Thu, Apr 14, 2022 at 6:39 PM Ivan Vecera &lt;<a href=3D"mailto:ivece=
ra@redhat.com">ivecera@redhat.com</a>&gt; wrote:<br></span></div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span st=
yle=3D"font-family:arial,sans-serif">Function ice_plug_aux_dev() assigns pf=
-&gt;adev field too early prior<br>
aux device initialization and on other side ice_unplug_aux_dev()<br>
starts aux device deinit and at the end assigns NULL to pf-&gt;adev.<br>
This is wrong and can causes a crash when ice_send_event_to_aux()<br>
call occurs during these operations because that function depends<br>
on non-NULL value of pf-&gt;adev and does not assume that aux device<br>
is half-initialized or half-destroyed.<br></span>
<span style=3D"font-family:arial,sans-serif"><br>
Modify affected functions so pf-&gt;adev field is set after aux device<br>
init and prior aux device destroy.<br></span></blockquote><div><span style=
=3D"font-family:arial,sans-serif">[...] <br></span></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><span style=3D"font-family:arial,sans-seri=
f">
@@ -320,12 +319,14 @@ int ice_plug_aux_dev(struct ice_pf *pf)<br>
=C2=A0 */<br>
=C2=A0void ice_unplug_aux_dev(struct ice_pf *pf)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!pf-&gt;adev)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct auxiliary_device *adev =3D pf-&gt;adev;<=
br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!adev)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br></span>
<span style=3D"font-family:arial,sans-serif"><br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0auxiliary_device_delete(pf-&gt;a</span><span st=
yle=3D"font-family:arial,sans-serif">dev);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0auxiliary_device_uninit(pf-&gt;a</span><span st=
yle=3D"font-family:arial,sans-serif">dev);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pf-&gt;adev =3D NULL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0auxiliary_device_delete(adev)</span><span style=
=3D"font-family:arial,sans-serif">;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0auxiliary_device_uninit(adev)</span><span style=
=3D"font-family:arial,sans-serif">;<br>
=C2=A0}<br></span></blockquote><div><span style=3D"font-family:arial,sans-s=
erif"><br></span></div><div><span style=3D"font-family:arial,sans-serif">Hi=
 Ivan,<br></span></div><div><span style=3D"font-family:arial,sans-serif">Wh=
at prevents ice_unplug_aux_dev() from running immediately after ice_send_ev=
ent_to_aux() gets past its &quot;if (!pf-&gt;adev)&quot; test ?<span style=
=3D"font-family:arial,sans-serif"></span></span></div><span style=3D"font-f=
amily:arial,sans-serif">Michal<br></span></div><div class=3D"gmail_quote"><=
span style=3D"font-family:arial,sans-serif"><br></span></div></div>

--00000000000097381e05dcaf7bb4--


--===============8747921897165921553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8747921897165921553==--

