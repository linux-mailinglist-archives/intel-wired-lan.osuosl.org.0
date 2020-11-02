Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 847952A23A2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Nov 2020 04:48:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DD42872D6;
	Mon,  2 Nov 2020 03:48:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p2sc2G-PeXvo; Mon,  2 Nov 2020 03:48:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2EEC3872D3;
	Mon,  2 Nov 2020 03:48:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A5031BF31A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 03:48:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5257887437
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 03:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vFxhjPlA4pmD for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Nov 2020 03:48:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 24BDE8742E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 03:48:30 +0000 (UTC)
Received: by mail-vs1-f48.google.com with SMTP id t8so3920682vsr.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 01 Nov 2020 19:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3Am75USifbXcekFjspxQ+9KcoAQPpA5p+8S24attDO8=;
 b=kroDnF4bFlxxdgfqJjoTzd1TFwoMkCuaXrmDyTLXlB078+lPGzCMX7HpZl8a42FUzO
 uBpYdutaxVl0PHJcQR2UWrYtUVeq9s/HSX4Y8m2VZnGKPOqZLLo8geeeBKsslmnyH5yR
 MgDVbtD3MJjS/BejHV3DjKeqMZ13a5VIqSxLK0gVLv68IvA9tNnlOipP09KQPXP3zt/T
 jwGzbkg2H562E1nSuIyPKqwo3yVmU/xReUwxLIbAR1sHzucYm9jmLRWGxE6LbGl3WDxN
 gKt/r5KXIAbZLOHPLXBw7JcWiard64QrO0chsZO7VqWJ3mM66ftPD6AmG3qf4OuSeEuW
 lwXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3Am75USifbXcekFjspxQ+9KcoAQPpA5p+8S24attDO8=;
 b=lmfAy1m0kWmbI+V7uccxL409mlV73D/WWbT4ZgVOPcn4Qx6V+J4rWW0KZ24lPOMHC1
 wEkTuWqsw6L8Pq13Eb2B1yBKyJoFnAzfRoO6xHhH/jb4zHpMkfGn/sNg+mPEyGGqGDmP
 pUpPnpqdZWHo7z9r1lJ5I/w4bQyqsYTZJt2EgbC44ePfnRVtqZgGEhVV3PdMtce99tCv
 +3WWNATeX4mJhnV2JkaaTHHUdsIXuTR+Yg11Qmebf03hZNDyaiCx6hZ+h4J6wOl8qyBD
 6B0ku2J8kdcthajTCO8mTuxuUzDeLC7qZAWlx+cyUw2ezSvT/rDorLvSzY9bhU+Rf3Xf
 1AOA==
X-Gm-Message-State: AOAM5334C6cQlI+8Q1kIpEoxwAGlh9KdQB88NATB2wOUD4oWnx1JxFCX
 a7VaKkIPAeRyzf09I3WbxAlLBPqk8Z5tYUWFgGY=
X-Google-Smtp-Source: ABdhPJxTKP9sv705lswgnivc+AtE+9KMxs2yDd7JJ4/2eLtxYd///cdQ6mMlTHtN2KItxB0qcALn+C6RsF2/B9xUnNg=
X-Received: by 2002:a67:f3d1:: with SMTP id j17mr7597598vsn.53.1604288909157; 
 Sun, 01 Nov 2020 19:48:29 -0800 (PST)
MIME-Version: 1.0
References: <CAMnf+PhD9VJH-db8nssDr9RgyJY6JV7bBL-Yvn2U87gSxfp+mg@mail.gmail.com>
 <DM6PR11MB4657C3917162CED4AD9377769B130@DM6PR11MB4657.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB4657C3917162CED4AD9377769B130@DM6PR11MB4657.namprd11.prod.outlook.com>
From: JD <jdtxs00@gmail.com>
Date: Sun, 1 Nov 2020 21:48:18 -0600
Message-ID: <CAMnf+PgOmUX8QPXNiiQoYxyHW6vTLbsBL+Orb_-MzpY=oXdZpA@mail.gmail.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Subject: Re: [Intel-wired-lan] i40e/iavf bandwidth spikes to 500Gbps &
 returning IAVF_ERR_PARAM
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============4312044279401362149=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4312044279401362149==
Content-Type: multipart/alternative; boundary="0000000000008c278505b3179e99"

--0000000000008c278505b3179e99
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Arkadiusz, I suppose that makes sense. I didn't expect VF/PF
communication issues to increment bandwidth counters in /proc/net/dev
(which Prom reads).

I will get the i40e driver upgraded and hopefully the problem will go away
for good.

Thank you very much for the reply, much appreciated!

On Sun, Nov 1, 2020 at 1:35 PM Kubalewski, Arkadiusz <
arkadiusz.kubalewski@intel.com> wrote:

> Good day JD!
>
> The message you have provided:
> iavf 0000:00:05.0: PF returned error -5 (IAVF_ERR_PARAM) to our request 1=
5
> indicates that there was a failure while communicating with parent PF por=
t.
> In fact, failed command was trying to get statistics of a VF port from
> parent PF.
> Command have failed, so the stats returned shall be equal to 0.
> Probably Prometheus considered them valid and that is why it shows
> "impossible" stats.
>
> About the command failure...
> It is related to old issue, where PF and VF are out of sync on their
> communication channel.
>
> The issue was already fixed in 2.12.6, please use the latest driver to ge=
t
> rid of the issue
>
> Hope this helps =F0=9F=98=8A
>
> Best Regards,
>
> Arkadiusz Kubalewski
> Software Engineer
> CG EPG SW ITP Linux base driver
>
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
D
> Sent: pi=C4=85tek, 30 pa=C5=BAdziernika 2020 18:33
> To: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] i40e/iavf bandwidth spikes to 500Gbps &
> returning IAVF_ERR_PARAM
>
> Hello,
>
> Over the past month I've observed some KVM servers exhibiting extremely
> high bandwidth activity (500gbit, which is impossible).
> Please see the attached graphs from Prometheus. It starts small then
> progressively gets worse over time.
>
> During these spikes, I see the following appear on the KVM guest about
> once every minute.
> iavf 0000:00:05.0: PF returned error -5 (IAVF_ERR_PARAM) to our request 1=
5
>
> And on the KVM parent, I see this about once every minute:
> i40e 0000:81:00.0: VF 20 failed opcode 15, retval: -5
>
> This doesn't seem to happen with any obvious cause, the only other thing =
I
> see in dmesg that may be related is the following (which is repeated a fe=
w
> times over several hours, but not at the same rate)
>
> vfio-pci 0000:81:0c.3: Event logged [IO_PAGE_FAULT domain=3D0x0000
> address=3D0xfffffffdf8040000 flags=3D0x0008]
>
>
> The KVM guest is running the iavf driver:
> driver: iavf
> version: 3.9.3
>
> The KVM parent is running the i40e driver:
> driver: i40e
> version: 2.11.21
>
> I'm running 2 of the following NIC's on the KVM parent in a bonded setup
> (mode 4, hash policy 3+4, IEEE 802.3ad dynamic link aggregation)
> :
> Intel Corporation Ethernet Controller XXV710 for 25GbE SFP28 (rev 02)
>
> Both the parent/guest are running the same kernel version of 4.19.107
>
> I'm not sure whether this is a NIC issue, driver issue, or something else=
.
> I'm happy to provide any more information about the system on request if =
it
> is relevant (qemu versions, mobo/cpu/ram).  I've observed this issue on 3
> different KVM parents/guests in different regions.
>
> If this has already been fixed or is a known issue, then I apologize, but
> I could not find anything by searching the mailing list w/ my codes from
> dmesg.
>
> If anyone can provide any information about this or any pointers on this
> or how to narrow the issue down, I'd greatly appreciate it.
>
> Thank you.
> ---------------------------------------------------------------------
> Intel Technology Poland sp. z o.o.
> ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia
> Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 |
> Kapita zakadowy 200.000 PLN.
> Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i
> moe zawiera informacje poufne. W razie przypadkowego otrzymania tej
> wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie;
> jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
> This e-mail and any attachments may contain confidential material for the
> sole use of the intended recipient(s). If you are not the intended
> recipient, please contact the sender and delete all copies; any review or
> distribution by others is strictly prohibited.
>
>

--0000000000008c278505b3179e99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello=C2=A0Arkadiusz, I suppose=C2=A0that makes sense. I d=
idn&#39;t expect VF/PF communication issues to increment bandwidth counters=
 in=C2=A0/proc/net/dev (which Prom reads).<br><br>I will get the i40e drive=
r upgraded and hopefully the problem will go away for good.<br><br>Thank yo=
u very much for the reply, much appreciated!</div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Nov 1, 2020 at 1:35 PM =
Kubalewski, Arkadiusz &lt;<a href=3D"mailto:arkadiusz.kubalewski@intel.com"=
>arkadiusz.kubalewski@intel.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Good day JD!<br>
<br>
The message you have provided: <br>
iavf 0000:00:05.0: PF returned error -5 (IAVF_ERR_PARAM) to our request 15<=
br>
indicates that there was a failure while communicating with parent PF port.=
<br>
In fact, failed command was trying to get statistics of a VF port from pare=
nt PF.<br>
Command have failed, so the stats returned shall be equal to 0.<br>
Probably Prometheus considered them valid and that is why it shows &quot;im=
possible&quot; stats.<br>
<br>
About the command failure...<br>
It is related to old issue, where PF and VF are out of sync on their commun=
ication channel.<br>
<br>
The issue was already fixed in 2.12.6, please use the latest driver to get =
rid of the issue <br>
<br>
Hope this helps =F0=9F=98=8A<br>
<br>
Best Regards,<br>
<br>
Arkadiusz Kubalewski<br>
Software Engineer<br>
CG=C2=A0EPG SW ITP=C2=A0Linux=C2=A0base driver<br>
<br>
-----Original Message-----<br>
From: Intel-wired-lan &lt;<a href=3D"mailto:intel-wired-lan-bounces@osuosl.=
org" target=3D"_blank">intel-wired-lan-bounces@osuosl.org</a>&gt; On Behalf=
 Of JD<br>
Sent: pi=C4=85tek, 30 pa=C5=BAdziernika 2020 18:33<br>
To: intel-wired-lan &lt;<a href=3D"mailto:intel-wired-lan@lists.osuosl.org"=
 target=3D"_blank">intel-wired-lan@lists.osuosl.org</a>&gt;<br>
Subject: [Intel-wired-lan] i40e/iavf bandwidth spikes to 500Gbps &amp; retu=
rning IAVF_ERR_PARAM<br>
<br>
Hello,<br>
<br>
Over the past month I&#39;ve observed some KVM servers exhibiting extremely=
 high bandwidth activity (500gbit, which is impossible).<br>
Please see the attached graphs from Prometheus. It starts small then progre=
ssively gets worse over time.<br>
<br>
During these spikes, I see the following appear on the KVM guest about once=
 every minute.<br>
iavf 0000:00:05.0: PF returned error -5 (IAVF_ERR_PARAM) to our request 15<=
br>
<br>
And on the KVM parent, I see this about once every minute:<br>
i40e 0000:81:00.0: VF 20 failed opcode 15, retval: -5<br>
<br>
This doesn&#39;t seem to happen with any obvious cause, the only other thin=
g I see in dmesg that may be related is the following (which is repeated a =
few times over several hours, but not at the same rate)<br>
<br>
vfio-pci 0000:81:0c.3: Event logged [IO_PAGE_FAULT domain=3D0x0000<br>
address=3D0xfffffffdf8040000 flags=3D0x0008]<br>
<br>
<br>
The KVM guest is running the iavf driver:<br>
driver: iavf<br>
version: 3.9.3<br>
<br>
The KVM parent is running the i40e driver:<br>
driver: i40e<br>
version: 2.11.21<br>
<br>
I&#39;m running 2 of the following NIC&#39;s on the KVM parent in a bonded =
setup (mode 4, hash policy 3+4, IEEE 802.3ad dynamic link aggregation)<br>
:<br>
Intel Corporation Ethernet Controller XXV710 for 25GbE SFP28 (rev 02)<br>
<br>
Both the parent/guest are running the same kernel version of 4.19.107<br>
<br>
I&#39;m not sure whether this is a NIC issue, driver issue, or something el=
se. I&#39;m happy to provide any more information about the system on reque=
st if it is relevant (qemu versions, mobo/cpu/ram).=C2=A0 I&#39;ve observed=
 this issue on 3 different KVM parents/guests in different regions.<br>
<br>
If this has already been fixed or is a known issue, then I apologize, but I=
 could not find anything by searching the mailing list w/ my codes from dme=
sg.<br>
<br>
If anyone can provide any information about this or any pointers on this or=
 how to narrow the issue down, I&#39;d greatly appreciate it.<br>
<br>
Thank you.<br>
---------------------------------------------------------------------<br>
Intel Technology Poland sp. z o.o.<br>
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gos=
podarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapi=
ta zakadowy 200.000 PLN.<br>
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i mo=
e zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci=
, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek prz=
egldanie lub rozpowszechnianie jest zabronione.<br>
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.<br>
<br>
</blockquote></div>

--0000000000008c278505b3179e99--

--===============4312044279401362149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4312044279401362149==--
