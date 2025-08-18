Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47329B2ACAC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 17:25:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A1D561B7A;
	Mon, 18 Aug 2025 15:25:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oSAct6VBaWLD; Mon, 18 Aug 2025 15:25:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FFF660806
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755530739;
	bh=U1/SC3+KHMjPer2t9vWOxRakggAV0tUYXQVwVNeMO+U=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o0pAkvCUU7y6BMLCyjkOTrW8AkqN3Y528WmOtMeWQrhqVL5jDx7Ks7reCYxDwx+pG
	 BxaPNi32B396zx0tiNFbDeHD+XP0P8ItXv6pqYJWGuOvXGGiziWr8Uwvb7bs8wIKKA
	 XAnI/RRHI7Skb7/PfsStbPVkt4HQHOeNR0ENESYwZEW0owqjSNyYTqVAOiASHCFHcD
	 OG0oqrU40GYUGQGMvhrohrx/QdW4KKegQGFaIvgrcsUBpbiFeqFiy0K0vd+arrdMNS
	 L6CBJ/AeZIhojVaPoXI3X65LedMyIkDGkwuFVc507Q5uRaCpM3WGGjpRXZILll2qYY
	 nOGrURSoooQuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FFF660806;
	Mon, 18 Aug 2025 15:25:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EACCA196
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 02:29:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D138183B76
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 02:29:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k-Afpu-LzPW8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 02:29:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52e; helo=mail-pg1-x52e.google.com;
 envelope-from=leafy7382@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B89A382F4A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B89A382F4A
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B89A382F4A
 for <Intel-wired-lan@osuosl.org>; Mon, 18 Aug 2025 02:29:36 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id
 41be03b00d2f7-b47174c8e45so3365308a12.2
 for <Intel-wired-lan@osuosl.org>; Sun, 17 Aug 2025 19:29:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755484176; x=1756088976;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=U1/SC3+KHMjPer2t9vWOxRakggAV0tUYXQVwVNeMO+U=;
 b=kY+ve6JpxfzfEeWXlH1tSyPp5mK/VIs3W2tOBwIXk9iu39l6cg04H706UobcY47W1m
 xBiYcJfQkDG9bNb2GqIey77ndqudyCsd7oP9BTIg5/qMCsVpLWaSQDyf939bwFSdIZ9T
 yyu/8ZldaaWh+vQwAJlA/wSgWIVEGDy+9HKiAs5FFkc2lncM+S/tgZVDtCnd1CyN5f6j
 6TeFRORGdkwXy7HrzxcjbreFRUPJfySUA9FpdYX4OHIoN9qqDEpIHxgJ4SVH3KxDrTqJ
 zKvi4ayr+akHkyDYmc0jJmxxK3ETkG1s4sZNJ3n5fWCxKKfMakDQVvDtcV0LaFCNgd8Q
 V9sQ==
X-Gm-Message-State: AOJu0Yw9nHIqYG6pxm3h/h1gkCfRNHZJkSwGNtOw8FL1CicfC2hfp+Ue
 8xitA4YZZSKOaz9/UW0hwLLSOVclo0jbcWru0/1DqWQbQOpV4YkhQhL5i32YJsuFgE7l1lyS3vu
 LwH7UWYFR1af5Tcpczbpw/sfY7jShSOM+N/Lh
X-Gm-Gg: ASbGnctJJL1TnBKfsV3pyFaiEP+Dof9Ejnej2ni6WML1FU993qituH+hpLrbzKklX3a
 9aoSc7xnuR/3T8G4m3FawfHIZ5c9TePwlCNHM+StLweaVecrLJWTRrJcX4Ce54QynBNvn+9b9iP
 0jY7JXCatrnbJSo5qrxPbL4tMG7FJili2NO8U1IrzgRoznf8Dt/N6raBquFlMH7DPD7VptZFnkf
 HvHfw6hboyEgRuafux+yMLdznJKrbc3iXU=
X-Google-Smtp-Source: AGHT+IH7gTeHmJrya5cTeS7RoM2wSxpsn8IkQybgQygzZAv+dkInqKeH7dVAVnRNkQU51JtDcUHc8PJUCowIiyDXfw0=
X-Received: by 2002:a17:903:2a8d:b0:243:795:5876 with SMTP id
 d9443c01a7336-2446d9355e5mr163198535ad.49.1755484175809; Sun, 17 Aug 2025
 19:29:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFt+UyRJrp5JyXV2atvqf_r87C4b09_8sTgh1JzP0nKHXwznw@mail.gmail.com>
 <ef08e832-9fbd-44e4-a726-c7803dbd3e42@intel.com>
In-Reply-To: <ef08e832-9fbd-44e4-a726-c7803dbd3e42@intel.com>
From: Chia-Wei Yeh <leafy7382@gmail.com>
Date: Mon, 18 Aug 2025 10:28:59 +0800
X-Gm-Features: Ac12FXzlmIbG2TLafcV0IuLOFvFQDf67cQbkjaVH2BrczxR0S-4FqD6HVQigyPQ
Message-ID: <CAEFt+Uyi1y6XPtDv6v8M-G4VRt9+Jy2yN9==AMgvTZWPNz3PiQ@mail.gmail.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Intel-wired-lan@osuosl.org
Content-Type: multipart/alternative; boundary="000000000000b548aa063c9a82fd"
X-Mailman-Approved-At: Mon, 18 Aug 2025 15:25:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1755484176; x=1756088976; darn=osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=U1/SC3+KHMjPer2t9vWOxRakggAV0tUYXQVwVNeMO+U=;
 b=h57VayyxK1RiYbhXBb8GXm4WlILI7qKidvTiqKxDQsPsf0ceHklgqXlVxZwo9xmgXZ
 0JZ4OEGvoorwYBQMxqOiv6AkUiNtQaLFpk23pJbene914zsyL4I3X+MihkLiKkMzKPH4
 OzfZskatcT6BDzpfnw/1Vvc9/yAUWAtbx/V6DK/jFXYlGYVaBAY1KtJVB1p+Rj+kCv0I
 lG3cKGDs74dDDZBkrnzEWHj8EADg+f1mfkoBQ4xJ6cRDNUX4cIr4tmBuF26wIdcz42yw
 YQHeoNZ4RijEa6jGVHjNFh0P9apYn8sy3lOd86064gulyP7nag/Y4hkE8VS/m6qfYENY
 Cmrg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=h57Vayyx
Subject: Re: [Intel-wired-lan] igb: I226-V (rev 04) frequent connection drop
 with Linux 6.12.37+
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

--000000000000b548aa063c9a82fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 17, 2025 at 3:42=E2=80=AFPM Lifshits, Vitaly <vitaly.lifshits@i=
ntel.com>
wrote:

> On 8/12/2025 4:08 PM, Chia-Wei Yeh wrote:
> > Hi Intel team,
> >
> > I run a home lab server on CWWK CW-AD4L-N V1 and recently updated my
> kernel
> > to 6.12.38 with an upgrade from Debian Bookworm to Trixie.
> >
> > I've observed that using the new kernel, the network connection drops
> every
> > couple of hours, and in the worst case scenario, the connections would
> > completely disappear and the machine would have to be rebooted.
> > Going back to 6.12.31 fixes the issue. From
> > https://launchpad.net/debian/+source/linux/+changelog it seems that onl=
y
> > this change was between .37+ and .31
> >
> >      - igc: disable L1.2 PCI-E link substate to avoid performance issue
> >
> >
> > This led me to this thread
> >
> https://lore.kernel.org/intel-wired-lan/cb7776c8-868f-4191-8b77-8ebbdf674=
aaf@valdikss.org.ru/
> > and
> > it seems that the fix is for i226V with speed cap. But in my case, it
> > wasn't capped to start with.
> > I can easily saturate my internet pipe using the 6.12.31 kernel without
> the
> > fix.
> >
> > Idle Latency:     1.15 ms   (jitter: 0.12ms, low: 1.04ms, high: 1.38ms)
> >      Download:   519.37 Mbps (data used: 397.8 MB)
> >                    7.27 ms   (jitter: 0.55ms, low: 1.28ms, high: 11.43m=
s)
> >        Upload:   522.60 Mbps (data used: 235.1 MB)
> >                    4.96 ms   (jitter: 0.37ms, low: 2.77ms, high: 5.75ms=
)
> >   Packet Loss: Not available.
> >   Result URL:
> > https://www.speedtest.net/result/c/bcacca17-8666-4bcf-8300-10c6920ab420
> >
> > Output of 'lspci -vv -s <x>' w.r.t L1SubCtl1 is:
> >
> >   Capabilities: [1e0 v1] L1 PM Substates
> > L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+
> L1_PM_Substates+
> >   PortCommonModeRestoreTime=3D55us PortTPowerOnTime=3D70us
> > L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
> >    T_CommonMode=3D0us LTR1.2_Threshold=3D138240ns
> > L1SubCtl2: T_PwrOn=3D70us
> > Kernel driver in use: igc
> >
> > Can we hide this behind a module option so that systems that aren't spe=
ed
> > capped won't be affected by the patch?
> >
> > Happy to run any test or debug if needed.
> >
> > Thank you,
> > Chia-Wei Yeh
> >
> >
>
> Hello Chia-Wei,
>
> The patch you mentioned cannot be responsible for connection issues due
> to the following reasons:
>
> 1. Disabling the L1.2 link state only affects power consumption. It
> actually improves functionality by preventing the device from entering a
> low-power link state.
>
> 2. The patch itself was ineffective, as it always returned that the
> device was not an I226. You can refer to the discussion and patch here:
> https://www.spinics.net/lists/netdev/msg1115398.html
>
> Regarding your specific issue, I recommend checking for errors in dmesg
> and NetworkManager for further insights.
>
Thank you for getting back. I've upgraded the kernel to 6.12.41 and it has
been very stable for the past few days.
The problem must be something else (no errors in dmesg or journal).

--=20
"If it looks like a duck, walks like a duck, and quacks like a duck, then
to the end user it's a duck, and end users have made it pretty clear they
want a duck; whether the duck drinks hot chocolate or coffee is irrelevant.=
"

--000000000000b548aa063c9a82fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Aug 17,=
 2025 at 3:42=E2=80=AFPM Lifshits, Vitaly &lt;<a href=3D"mailto:vitaly.lifs=
hits@intel.com">vitaly.lifshits@intel.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">On 8/12/2025 4:08 PM, Chia-Wei Yeh=
 wrote:<br>
&gt; Hi Intel team,<br>
&gt; <br>
&gt; I run a home lab server on CWWK CW-AD4L-N V1 and recently updated my k=
ernel<br>
&gt; to 6.12.38 with an upgrade from Debian Bookworm to Trixie.<br>
&gt; <br>
&gt; I&#39;ve observed that using the new kernel, the network connection dr=
ops every<br>
&gt; couple of hours, and in the worst case scenario, the connections would=
<br>
&gt; completely disappear and the machine would have to be rebooted.<br>
&gt; Going back to 6.12.31 fixes the issue. From<br>
&gt; <a href=3D"https://launchpad.net/debian/+source/linux/+changelog" rel=
=3D"noreferrer" target=3D"_blank">https://launchpad.net/debian/+source/linu=
x/+changelog</a> it seems that only<br>
&gt; this change was between .37+ and .31<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 - igc: disable L1.2 PCI-E link substate to avoid p=
erformance issue<br>
&gt; <br>
&gt; <br>
&gt; This led me to this thread<br>
&gt; <a href=3D"https://lore.kernel.org/intel-wired-lan/cb7776c8-868f-4191-=
8b77-8ebbdf674aaf@valdikss.org.ru/" rel=3D"noreferrer" target=3D"_blank">ht=
tps://lore.kernel.org/intel-wired-lan/cb7776c8-868f-4191-8b77-8ebbdf674aaf@=
valdikss.org.ru/</a><br>
&gt; and<br>
&gt; it seems that the fix is for i226V with speed cap. But in my case, it<=
br>
&gt; wasn&#39;t capped to start with.<br>
&gt; I can easily saturate my internet pipe using the 6.12.31 kernel withou=
t the<br>
&gt; fix.<br>
&gt; <br>
&gt; Idle Latency:=C2=A0 =C2=A0 =C2=A01.15 ms=C2=A0 =C2=A0(jitter: 0.12ms, =
low: 1.04ms, high: 1.38ms)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Download:=C2=A0 =C2=A0519.37 Mbps (data used: 397.=
8 MB)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 7=
.27 ms=C2=A0 =C2=A0(jitter: 0.55ms, low: 1.28ms, high: 11.43ms)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 Upload:=C2=A0 =C2=A0522.60 Mbps (data used:=
 235.1 MB)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4=
.96 ms=C2=A0 =C2=A0(jitter: 0.37ms, low: 2.77ms, high: 5.75ms)<br>
&gt;=C2=A0 =C2=A0Packet Loss: Not available.<br>
&gt;=C2=A0 =C2=A0Result URL:<br>
&gt; <a href=3D"https://www.speedtest.net/result/c/bcacca17-8666-4bcf-8300-=
10c6920ab420" rel=3D"noreferrer" target=3D"_blank">https://www.speedtest.ne=
t/result/c/bcacca17-8666-4bcf-8300-10c6920ab420</a><br>
&gt; <br>
&gt; Output of &#39;lspci -vv -s &lt;x&gt;&#39; w.r.t L1SubCtl1 is:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0Capabilities: [1e0 v1] L1 PM Substates<br>
&gt; L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substa=
tes+<br>
&gt;=C2=A0 =C2=A0PortCommonModeRestoreTime=3D55us PortTPowerOnTime=3D70us<b=
r>
&gt; L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-<br>
&gt;=C2=A0 =C2=A0 T_CommonMode=3D0us LTR1.2_Threshold=3D138240ns<br>
&gt; L1SubCtl2: T_PwrOn=3D70us<br>
&gt; Kernel driver in use: igc<br>
&gt; <br>
&gt; Can we hide this behind a module option so that systems that aren&#39;=
t speed<br>
&gt; capped won&#39;t be affected by the patch?<br>
&gt; <br>
&gt; Happy to run any test or debug if needed.<br>
&gt; <br>
&gt; Thank you,<br>
&gt; Chia-Wei Yeh<br>
&gt; <br>
&gt; <br>
<br>
Hello Chia-Wei,<br>
<br>
The patch you mentioned cannot be responsible for connection issues due <br=
>
to the following reasons:<br>
<br>
1. Disabling the L1.2 link state only affects power consumption. It <br>
actually improves functionality by preventing the device from entering a <b=
r>
low-power link state.<br>
<br>
2. The patch itself was ineffective, as it always returned that the <br>
device was not an I226. You can refer to the discussion and patch here:<br>
<a href=3D"https://www.spinics.net/lists/netdev/msg1115398.html" rel=3D"nor=
eferrer" target=3D"_blank">https://www.spinics.net/lists/netdev/msg1115398.=
html</a><br>
<br>
Regarding your specific issue, I recommend checking for errors in dmesg <br=
>
and NetworkManager for further insights.<br>
</blockquote></div><div>Thank you for getting back. I&#39;ve upgraded the k=
ernel to 6.12.41 and it has been very stable for the past few days.</div><d=
iv>The problem must be something else (no errors in dmesg or journal).</div=
><div><br></div><span class=3D"gmail_signature_prefix">-- </span><br><div d=
ir=3D"ltr" class=3D"gmail_signature">&quot;If it looks like a duck, walks l=
ike a duck, and quacks like a duck, then to the end user it&#39;s a duck, a=
nd end users have made it pretty clear they want a duck; whether the duck d=
rinks hot chocolate or coffee is irrelevant.&quot;</div></div>

--000000000000b548aa063c9a82fd--
