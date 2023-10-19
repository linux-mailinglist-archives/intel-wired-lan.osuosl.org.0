Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A646E7D02BA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 21:49:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18B0943141;
	Thu, 19 Oct 2023 19:49:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18B0943141
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697744947;
	bh=0l31P6o3cIXOhOeQGgUiCVaobfcpvhM150Hx85ra+/A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t7qwIqla2vWcRcplIQrhK1yVyEoHadWxaCPe+e415lZvy8r5rlhU/gpgkJOrKPRA7
	 YvEo2PWt0cCzLYlaXf3xbIbz/oEP/9Ncw/LaFR6P6a3OHsS0ZbCpst8Qa8yoXs4+R/
	 3l/bCZnG5FZ1wv59WksYx+epolLiFNkA9xi96oeJw0mzPKiXHwdePxkDXZXLCSA/dn
	 L8MEorhOF/sHB0mq4B63bupq52+NMpceLhVYEHwQaP1xdCNRr6mHqtMjfgo0PwZy46
	 fsNBnC3SxOAyUEICTA8gssPSO4vLLhNOL767+ZgQLCfzWV71jSM+1wHRynLJaUQxHY
	 kU2zggXehoXzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F6tDgdN2QG8u; Thu, 19 Oct 2023 19:49:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0436430F0;
	Thu, 19 Oct 2023 19:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0436430F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D1651BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 19:48:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 62514430F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 19:48:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62514430F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tQtEvs669v0Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 19:48:58 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 240594312E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 19:48:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 240594312E
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-346-jhU7XUreNUWf2T7GjbxOhA-1; Thu, 19 Oct 2023 15:48:55 -0400
X-MC-Unique: jhU7XUreNUWf2T7GjbxOhA-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-9b2e030e4caso127898766b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 12:48:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697744934; x=1698349734;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Ok/A4HV0o166rvZRYrqUqTE4LBQRSuSogU4yhTXtPd4=;
 b=bk9E+GRJpisMft5RJ7swYvPrE66hgj5KDn1bozUmwIAFhj7R5B0Cvi7MpvCbD+kWXA
 +TMgHYB65C8lEvDxHFS2cqDDkeCZ6jaeHZfxsm73nj1SatuZOOlRTh/ZvB9Wb67K0IsP
 JJTkyQ8/X1Rs0Fg5744RHFereup++dFI0JJxyGMc1FkmMEW9drg2swTmTHDK+m3yTbr3
 QUe76U46F0X7yHQGOOZbhuBVPKxrLc43JG/ilVMHrtA9jNGwih/lm522IFoSbZM4Tge3
 fStbQGkyjb97Yp8qkGXRKur8NYE9b5Q+lgmu3CF7JNisjrkYJ2qkGkHIcVmlYSqNYJQj
 v8Uw==
X-Gm-Message-State: AOJu0YxDne/DTfzF5ofY9WlqVgfcMU+mjXZVhp6uEW6afmsJ6/2N0UR9
 r0egHQm9ktH1ohqSQ5IKM+M5a4pIMlLqP7mtehXlkPw3NjsHaz/NOKr4Z5B2FFGMM/WvdKTI6xu
 cGgXzdTeHZ0QAjA7IolSu6Uas7cQutjyB1qh+/cgv1+UhmA==
X-Received: by 2002:a17:907:3e10:b0:98e:4f1:f987 with SMTP id
 hp16-20020a1709073e1000b0098e04f1f987mr3114996ejc.3.1697744934261; 
 Thu, 19 Oct 2023 12:48:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+pp3SZs9JiKvvRv/FC8Wa0vd7V3w6gX2ouaLdrp3AeF7r5qSwN5kzInwy/o6cvl1zfesRmPGyN8IlQ3wsV10=
X-Received: by 2002:a17:907:3e10:b0:98e:4f1:f987 with SMTP id
 hp16-20020a1709073e1000b0098e04f1f987mr3114986ejc.3.1697744933907; Thu, 19
 Oct 2023 12:48:53 -0700 (PDT)
MIME-Version: 1.0
References: <20231018112621.463893-1-ivecera@redhat.com>
 <4bedad2b-cdf6-471e-a8bd-51ba3564aa6a@intel.com>
 <b0bd5678-44cd-47ca-aeb5-33735100dbdb@intel.com>
In-Reply-To: <b0bd5678-44cd-47ca-aeb5-33735100dbdb@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
Date: Thu, 19 Oct 2023 21:48:42 +0200
Message-ID: <CAAVpwAu9KmuHFOGXWd9b2hgxeXfs6_Dy7APuwZhHzqiE0hNFqA@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697744937;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ok/A4HV0o166rvZRYrqUqTE4LBQRSuSogU4yhTXtPd4=;
 b=ENH99y3ppJiUiVFMKIgqZDxtjRw/61gofxMo0U9nQswujdILLXJp0hqs7eIsN3T4GmMx8j
 ZJxyQwvf3/uLESK+atmKqRbBULQjywv7Tcddvv24hfOtalR3aEsd/QON7Uz5XZrqmY79eZ
 5ZamfUIto1JpOpnGaWWIg0CKk1jEJ8s=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ENH99y3p
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix
 I40E_FLAG_VF_VLAN_PRUNING value
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 netdev <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============3677912468535789655=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3677912468535789655==
Content-Type: multipart/alternative; boundary="000000000000b4845e0608170b74"

--000000000000b4845e0608170b74
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dne =C4=8Dt 19. 10. 2023 21:24 u=C5=BEivatel Jacob Keller <jacob.e.keller@i=
ntel.com>
napsal:

>
>
> On 10/18/2023 5:30 AM, Przemek Kitszel wrote:
> > On 10/18/23 13:26, Ivan Vecera wrote:
> >> Commit c87c938f62d8f1 ("i40e: Add VF VLAN pruning") added new
> >> PF flag I40E_FLAG_VF_VLAN_PRUNING but its value collides with
> >> existing I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED flag.
> >>
> >> Move the affected flag at the end of the flags and fix its value.
> >>
> >> Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
> >> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> >> ---
> >>   drivers/net/ethernet/intel/i40e/i40e.h | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> >> index 6e310a53946782..55bb0b5310d5b4 100644
> >> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> >> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> >> @@ -580,7 +580,6 @@ struct i40e_pf {
> >>   #define I40E_FLAG_DISABLE_FW_LLDP          BIT(24)
> >>   #define I40E_FLAG_RS_FEC                   BIT(25)
> >>   #define I40E_FLAG_BASE_R_FEC                       BIT(26)
> >> -#define I40E_FLAG_VF_VLAN_PRUNING           BIT(27)
> >>   /* TOTAL_PORT_SHUTDOWN
> >>    * Allows to physically disable the link on the NIC's port.
> >>    * If enabled, (after link down request from the OS)
> >> @@ -603,6 +602,7 @@ struct i40e_pf {
> >
> > such mistake happened only because list of flags is dispersed so much :=
/
>
> Better yet if we didn't hard-code the bits, and instead defined them via
> an enumeration so that its not possible :D These aren't even ABI so
> there's not a backwards compatibility risk either.
>
> Thanks,
> Jake
>

Hi Jake,
I have been preparing another series for iwl-next that covers this
conversion. I will submit it tomorrow or on the weekend.

Ivan

>

--000000000000b4845e0608170b74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">Dne =C4=8Dt 19. 10. 2023 21:24 u=C5=BEivatel Jacob Kel=
ler &lt;<a href=3D"mailto:jacob.e.keller@intel.com">jacob.e.keller@intel.co=
m</a>&gt; napsal:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On 10/18/2023 5:30 AM, Przemek Kitszel wrote:<br>
&gt; On 10/18/23 13:26, Ivan Vecera wrote:<br>
&gt;&gt; Commit c87c938f62d8f1 (&quot;i40e: Add VF VLAN pruning&quot;) adde=
d new<br>
&gt;&gt; PF flag I40E_FLAG_VF_VLAN_PRUNING but its value collides with<br>
&gt;&gt; existing I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED flag.<br>
&gt;&gt;<br>
&gt;&gt; Move the affected flag at the end of the flags and fix its value.<=
br>
&gt;&gt;<br>
&gt;&gt; Cc: Mateusz Palczewski &lt;<a href=3D"mailto:mateusz.palczewski@in=
tel.com" target=3D"_blank" rel=3D"noreferrer">mateusz.palczewski@intel.com<=
/a>&gt;<br>
&gt;&gt; Signed-off-by: Ivan Vecera &lt;<a href=3D"mailto:ivecera@redhat.co=
m" target=3D"_blank" rel=3D"noreferrer">ivecera@redhat.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/i40e/i40e.h | 2 +-<br>
&gt;&gt;=C2=A0 =C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/=
ethernet/intel/i40e/i40e.h<br>
&gt;&gt; index 6e310a53946782..55bb0b5310d5b4 100644<br>
&gt;&gt; --- a/drivers/net/ethernet/intel/i40e/i40e.h<br>
&gt;&gt; +++ b/drivers/net/ethernet/intel/i40e/i40e.h<br>
&gt;&gt; @@ -580,7 +580,6 @@ struct i40e_pf {<br>
&gt;&gt;=C2=A0 =C2=A0#define I40E_FLAG_DISABLE_FW_LLDP=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 BIT(24)<br>
&gt;&gt;=C2=A0 =C2=A0#define I40E_FLAG_RS_FEC=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BIT(25)<br>
&gt;&gt;=C2=A0 =C2=A0#define I40E_FLAG_BASE_R_FEC=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BIT(26)<br>
&gt;&gt; -#define I40E_FLAG_VF_VLAN_PRUNING=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0BIT(27)<br>
&gt;&gt;=C2=A0 =C2=A0/* TOTAL_PORT_SHUTDOWN<br>
&gt;&gt;=C2=A0 =C2=A0 * Allows to physically disable the link on the NIC&#3=
9;s port.<br>
&gt;&gt;=C2=A0 =C2=A0 * If enabled, (after link down request from the OS)<b=
r>
&gt;&gt; @@ -603,6 +602,7 @@ struct i40e_pf {<br>
&gt; <br>
&gt; such mistake happened only because list of flags is dispersed so much =
:/<br>
<br>
Better yet if we didn&#39;t hard-code the bits, and instead defined them vi=
a<br>
an enumeration so that its not possible :D These aren&#39;t even ABI so<br>
there&#39;s not a backwards compatibility risk either.<br>
<br>
Thanks,<br>
Jake<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"au=
to">Hi Jake,</div><div dir=3D"auto">I have been preparing another series fo=
r iwl-next that covers this conversion. I will submit it tomorrow or on the=
 weekend.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Ivan</div><div=
 dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"></b=
lockquote></div></div></div>

--000000000000b4845e0608170b74--


--===============3677912468535789655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3677912468535789655==--

