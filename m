Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 043D83DA573
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jul 2021 16:02:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FA1F60747;
	Thu, 29 Jul 2021 14:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qAdVSJ7nmjaz; Thu, 29 Jul 2021 14:02:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97CE360669;
	Thu, 29 Jul 2021 14:02:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D0CC1BF395
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 02:11:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF82A606E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 02:11:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K2v3NCZX2xrI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jul 2021 02:11:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 99D82606CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 02:11:25 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id d8so4783003wrm.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jul 2021 19:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0w+iw+wFPZ0AKPVZrvdHiq/2oq5OzLS7S+7REpeMg1I=;
 b=m1JRGAPUvF8fhAF5Ktqc5erHlDPysGwEMRN+xs1lco9Vn6sq42vZhCcdh6EFOypKXa
 2Vh8KwU1UMJl2zii+3BdmBWCJn+PW0MUAlAitPWs9but27nAbkSwm0XPjzLcNbnug8ix
 I2NOtLPeigB2FemIou5fUskSny0RxAbKF9qmf26UOXJMuNozt0wctMeLtRTeexatG7Fw
 COar5NdKGgn2HCvZquv7KYR1haIM+nEGnHBTrYtF8JYaDsr2LTL64NdlXOzrlg7JzYEj
 +/KhCtxQhMX0xkJh6032ErU8B6FpxYiW9Z9wzyfUQjtvrQj/6Yf8q0lB+/Z8LBecjncj
 BqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0w+iw+wFPZ0AKPVZrvdHiq/2oq5OzLS7S+7REpeMg1I=;
 b=muXueGrPD8fxPp4ayRVv4qMt2P6OpGBefghIdQFsm2WORrSOjz8nKkTRard6N/Mm6/
 nSYhJoLfwiK0IppQTA+/8yqa64UIZpNbzppvpBoz87yPkHqbg/1WK8jVOixzrqbgEFUA
 +6rSzG/phdF7TE9rRLfWgOuafnzGAyzrd5Jbfa/tMqDNeTjpuBOVWvyt3gJdjDx7H0sc
 YVmTJxXOYIKms0fgEl/rHrDeIKk0keR4GGZ+yJGDkjwXdwS+GRYUF3EmroNMlQ+8GMIV
 GwKbCJGh/plyVAAAuywt/lvi9eWt1yF2ogWqgvysu4ZgFyIoLYCCajJZyFrDkcJF/8mE
 VKdw==
X-Gm-Message-State: AOAM531rhGOusrJFNXNZYLrJ+mij2NlHRuBYVfPRMbOVNvMXks/IkuQc
 rPbwpZCkkSL7Cmhp5e5PZibupztI+ZdSPOWl5Q==
X-Google-Smtp-Source: ABdhPJx/lqDf4PGtZx2pTs8iGWOip2thmMtmV4Da/j3Nkl05g/AdcwBEySYAOBNnxSO/C3Z/pu1pk+0KiUuLfDHcmrs=
X-Received: by 2002:adf:de8a:: with SMTP id w10mr2089072wrl.61.1627524683437; 
 Wed, 28 Jul 2021 19:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <BY3PR05MB835694E97F5EA0D60B0DD2B3CAE99@BY3PR05MB8356.namprd05.prod.outlook.com>
In-Reply-To: <BY3PR05MB835694E97F5EA0D60B0DD2B3CAE99@BY3PR05MB8356.namprd05.prod.outlook.com>
From: Laurent Dumont <laurentfdumont@gmail.com>
Date: Wed, 28 Jul 2021 22:11:11 -0400
Message-ID: <CAOAKi8yNzyj0yQNa1qNUAFuCdYUtE3fzZOW0=cSPUyd9THKg2A@mail.gmail.com>
To: Yuvaraj Ranganathan <yranganathan@juniper.net>
X-Mailman-Approved-At: Thu, 29 Jul 2021 14:02:02 +0000
Subject: Re: [Intel-wired-lan] [E1000-devel] Traffic not passing for VLAN ID
 >= 32 on the I350 SR-IOV enabled NIC
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
Cc: "e1000-devel@lists.sourceforge.net" <e1000-devel@lists.sourceforge.net>,
 Pushp Saurav <psaurav@juniper.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============7381890725929144698=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7381890725929144698==
Content-Type: multipart/alternative; boundary="0000000000009e999905c8399efc"

--0000000000009e999905c8399efc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can you show the output of

ip link show $SRIOV_INT_NAME_HERE

Are you seeing any traffic reaching inside the VM if you tcpdump there?

On Tue, Jul 27, 2021 at 10:07 AM Yuvaraj Ranganathan via E1000-devel <
e1000-devel@lists.sourceforge.net> wrote:

> Hi Team,
>
> With the SR-IOV enabled on I350 NIC which has 4 VF=E2=80=99s, on configur=
ing VLAN
> ID from range 1 to 31 on the VM interface, network traffic is fine and no
> issues. When trying to create an interface with VLAN ID >=3D 32 on the VM=
,
> traffic is not passing to that interface and as per HW specs, VLAN ID=E2=
=80=99s
> from 1 to 4096 are supported.
>
> VM=E2=80=99s interface is directly mapped to one of the VF on I350 NIC. I=
 am using
> IGB PF driver version 5.7.2(latest).
>
> Could somebody please help!
>
> Thanks in advance,
> Yuvaraj.
>
>
> Juniper Business Use Only
>
> _______________________________________________
> E1000-devel mailing list
> E1000-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/e1000-devel
> To learn more about Intel Ethernet, visit
> https://forums.intel.com/s/topic/0TO0P00000018NbWAI/intel-ethernet
>

--0000000000009e999905c8399efc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can you show the output of<div><br></div><div>ip link show=
 $SRIOV_INT_NAME_HERE</div><div><br></div><div>Are you seeing any traffic r=
eaching inside the VM if you tcpdump there?</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 27, 2021 at 10=
:07 AM Yuvaraj Ranganathan via E1000-devel &lt;<a href=3D"mailto:e1000-deve=
l@lists.sourceforge.net">e1000-devel@lists.sourceforge.net</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Team,<br>
<br>
With the SR-IOV enabled on I350 NIC which has 4 VF=E2=80=99s, on configurin=
g VLAN ID from range 1 to 31 on the VM interface, network traffic is fine a=
nd no issues. When trying to create an interface with VLAN ID &gt;=3D 32 on=
 the VM, traffic is not passing to that interface and as per HW specs, VLAN=
 ID=E2=80=99s from 1 to 4096 are supported.<br>
<br>
VM=E2=80=99s interface is directly mapped to one of the VF on I350 NIC. I a=
m using IGB PF driver version 5.7.2(latest).<br>
<br>
Could somebody please help!<br>
<br>
Thanks in advance,<br>
Yuvaraj.<br>
<br>
<br>
Juniper Business Use Only<br>
<br>
_______________________________________________<br>
E1000-devel mailing list<br>
<a href=3D"mailto:E1000-devel@lists.sourceforge.net" target=3D"_blank">E100=
0-devel@lists.sourceforge.net</a><br>
<a href=3D"https://lists.sourceforge.net/lists/listinfo/e1000-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.sourceforge.net/lists/listinfo=
/e1000-devel</a><br>
To learn more about Intel Ethernet, visit <a href=3D"https://forums.intel.c=
om/s/topic/0TO0P00000018NbWAI/intel-ethernet" rel=3D"noreferrer" target=3D"=
_blank">https://forums.intel.com/s/topic/0TO0P00000018NbWAI/intel-ethernet<=
/a><br>
</blockquote></div>

--0000000000009e999905c8399efc--

--===============7381890725929144698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7381890725929144698==--
