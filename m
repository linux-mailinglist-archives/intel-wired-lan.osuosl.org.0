Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2BB211675
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 01:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83A1B89696;
	Wed,  1 Jul 2020 23:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KaUV31kQ_2Fy; Wed,  1 Jul 2020 23:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E5C3A89699;
	Wed,  1 Jul 2020 23:06:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D6C951BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 23:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CD52D8B62B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 23:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6qku3HEvPtjM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 23:05:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com
 [209.85.219.169])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A436E8B614
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 23:05:58 +0000 (UTC)
Received: by mail-yb1-f169.google.com with SMTP id p204so8984899ybc.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Jul 2020 16:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nzrlgXUld8yBXaD2YPY8J/jgAGV3HnK9zLOR8xm5XZU=;
 b=ghlPI6fWD4dRZ7jC8JMvriqONBkU37/rtHU5NKzT7xesaSJfN8H1QrX5oEAMc/WHig
 935o1dLRYsQFNczlXCYHY095cSFpkDeCLwzBMXpujIg7IvsdN625N/JylTBN6QsEkTxU
 qqKW3fyyEFH6XLPqd2hKxpgT5K8ae11yHLGkfVZPxPiMq4RftKbus1AdoY91c7AEA/Eg
 XirBLcdCZn25fKuKko03JCYIzpd6oiuQMBpasLzj3aaoBXsB02wyfStm3knZSTT4NjUN
 ZIiJB4jsZKtgotXS1NpBGd+aC3lNQRtK3kOgy4F2d5/YMTTCdAxp9MYdiWgdAPLWnJRN
 Sctg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nzrlgXUld8yBXaD2YPY8J/jgAGV3HnK9zLOR8xm5XZU=;
 b=NpQropmJ8Q36Kps0uZOKBVKC96Q8LGktNoLzbgTfAcyNarUd1k8IQ6tWy14uWonHqi
 XyMWaQEOUj4lvT66qLhTRwfxT7qLnv0IuNz4ShjqE1GQiqq7CWeN1OLDaWToSShRPO6b
 FOADUtwwuyBZNtXUpEM+urw5RZkLhDxuOloyE7vC2iSjJxxSIpbl9EUAokjeSqNpn2w4
 X7dPOxhaqAzix3/WV0EUucJ8ibBu2AHVMaAcKJzw+gswt6wwGL0COp7N/OkIVCC+lpI4
 wJgHMzv+/Okg94d9yqrmDhoqNx6+8V9Ig16HJGK6yEOkt30a3mmP3Kg2eKOUTNOVvITP
 X4oQ==
X-Gm-Message-State: AOAM531c+8BuLgJ//8jYNaS0pjx565C8FD7me8acJfQrgmMH7zuWExPi
 WamHwhLbioTLOfNqdWPPbt6ctkB5VLJ/wgQFAxw0xg==
X-Google-Smtp-Source: ABdhPJzUB/oFFWLvs694jnj19/+zIlY7QLHb26VqtdNf2nf0y69gO2Mpy9jEdiTuZisnl3EMJKhG+VyxhsP6kEsn+hE=
X-Received: by 2002:a25:d753:: with SMTP id o80mr44688662ybg.423.1593644757205; 
 Wed, 01 Jul 2020 16:05:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAMcMvsjtsz3A+f-wA4yS7w+3dTaKO9tgCjeWPz_eAC5rMRHTNw@mail.gmail.com>
 <BYAPR11MB3606500178A5979CDCF5BCCAEF6C0@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB3606EAFBC4331FB21C14AEE4EF6C0@BYAPR11MB3606.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3606EAFBC4331FB21C14AEE4EF6C0@BYAPR11MB3606.namprd11.prod.outlook.com>
From: Paul Stewart <pstew@google.com>
Date: Wed, 1 Jul 2020 16:05:45 -0700
Message-ID: <CAMcMvsh2DGng_TEzWEvizL0i=7_sh4X3qSUBkMc34oHkCFw9pA@mail.gmail.com>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Subject: Re: [Intel-wired-lan] ixgbe-x550 link detection after boot
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============7363982751854804798=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7363982751854804798==
Content-Type: multipart/alternative; boundary="000000000000a7324005a96955cb"

--000000000000a7324005a96955cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I wouldn't be happy with half-duplex either.  It's not what I had in
mind.  I don't know what exactly a "PHY" counts as in this setup -- we're
talking about a backplane link -- SGMII to SGMII.   Both SGMII partners are
"happy" at least to the extent that they're both driving their respective
lanes.  It's just that the Intel side doesn't seem to be able to update its
state, or however the firmware on the adapter is configured doesn't have it
re-assessing its state.

As to Denverton: Literally speaking this is a CongaTec B7AC
system-on-module.  Atom(TM) CPU C3708.

On Wed, Jul 1, 2020 at 3:20 PM Fujinaka, Todd <todd.fujinaka@intel.com>
wrote:

> The response I got is =E2=80=9Ccan=E2=80=99t do half duplex so the PHY co=
uld be happy but
> the SGMII wont=E2=80=99. Put it in the actual bug tracker=E2=80=9D.
>
>
>
> I think the best course of action is for you to contact your factory
> support. Or if you got this retail to contact support@intel.com.
>
>
>
> =E2=80=A6
>
>
>
> Oh, I looked, Mr. Bloom, and I think this is probably a =E2=80=9Cclone to=
 lan
> tenant and assign to the QV team=E2=80=9D sort of thing. I=E2=80=99m not =
sure if it=E2=80=99s QV
> Maciej Bucio or Tools Kamil Bednarski.
>
>
>
> *Todd Fujinaka*
>
> Software Application Engineer
>
> Data Center Group
>
> Intel Corporation
>
> *todd.fujinaka@intel.com <todd.fujinaka@intel.com>*
>
>
>
> *From:* Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> *On Behalf
> Of *Fujinaka, Todd
> *Sent:* Wednesday, July 1, 2020 3:03 PM
> *To:* Paul Stewart <pstew@google.com>; intel-wired-lan@lists.osuosl.org
> *Subject:* Re: [Intel-wired-lan] ixgbe-x550 link detection after boot
>
>
>
> That doesn=E2=80=99t sound right. Denverton is x553. But I don=E2=80=99t =
generally do SOC
> so let me try to get someone else to look at this.
>
>
>
> *Todd Fujinaka*
>
> Software Application Engineer
>
> Data Center Group
>
> Intel Corporation
>
> *todd.fujinaka@intel.com <todd.fujinaka@intel.com>*
>
>
>
> *From:* Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> *On Behalf
> Of *Paul Stewart
> *Sent:* Wednesday, July 1, 2020 2:09 PM
> *To:* intel-wired-lan@lists.osuosl.org
> *Subject:* [Intel-wired-lan] ixgbe-x550 link detection after boot
>
>
>
> Hi there.  I have a system with a Denverton based chipset which has a
> built-in 4 ports of 10GBE.  It's properly configured to enumerate
> as 8086:15c6 (IXGBE_DEV_ID_X550EM_A_SGMII).  It also successfully detects
> link to its backplane partner with the stock ixgbe driver, but only if th=
at
> partner is up and running before the driver starts up.  If the Denverton
> chipset comes up first, nothing I've tried so far as succeeded in having
> the chipset detect link.  I've tried the normal "ifconfig down/up",
> "ethtool -A eth1 autoneg off" etc, but nothing so far seems to do as much
> as just rebooting the system.  Are there any hints as to how I can get th=
is
> going?  I've also tried "hw->mac.ops.reset_hw(hw)" and calling
> "hw->mac.ops.setup_link()" again from the kernel and that surprisingly
> didn't work either, so I'm getting curious as to what can get the system =
to
> re-evaluate link state.  It's really true that the Links status register
> does not mark the link as up (as shown by ethtool -d).
>
>
>
> If it's of any consequence the SGMII link partner is a Marvell 88E1512.
> MDIO is not connected.  For its part, the Marvell part detects link from
> the Denverton whether or not that understanding is reciprocal.
>

--000000000000a7324005a96955cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I wouldn&#39;t be happy with half-duplex either.=C2=
=A0 It&#39;s not what I had in mind.=C2=A0 I don&#39;t know what exactly a =
&quot;PHY&quot; counts as in this setup -- we&#39;re talking about a backpl=
ane link -- SGMII to SGMII.=C2=A0 =C2=A0Both SGMII partners are &quot;happy=
&quot; at least to the extent that they&#39;re both driving their respectiv=
e lanes.=C2=A0 It&#39;s just that the Intel side doesn&#39;t seem to be abl=
e to update its state, or however the firmware on the adapter is configured=
 doesn&#39;t have it re-assessing its state.<div><br></div><div>As to Denve=
rton: Literally speaking this is a CongaTec B7AC system-on-module.=C2=A0=C2=
=A0Atom(TM) CPU C3708.</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Jul 1, 2020 at 3:20 PM Fujinaka, Todd=
 &lt;<a href=3D"mailto:todd.fujinaka@intel.com">todd.fujinaka@intel.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_5687926238124186964WordSection1">
<p class=3D"MsoNormal">The response I got is =E2=80=9Ccan=E2=80=99t do half=
 duplex so the PHY could be happy but the SGMII wont=E2=80=99. Put it in th=
e actual bug tracker=E2=80=9D.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I think the best course of action is for you to cont=
act your factory support. Or if you got this retail to contact
<a href=3D"mailto:support@intel.com" target=3D"_blank">support@intel.com</a=
>.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Oh, I looked, Mr. Bloom, and I think this is probabl=
y a =E2=80=9Cclone to lan tenant and assign to the QV team=E2=80=9D sort of=
 thing. I=E2=80=99m not sure if it=E2=80=99s QV Maciej Bucio or Tools Kamil=
 Bednarski.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:black">Todd Fujinaka</span><=
/b><span style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,se=
rif;color:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;color:black">Software =
Application Engineer</span><span style=3D"color:black"><u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;color:black">Data Cent=
er Group</span><span style=3D"color:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;color:black">Intel Cor=
poration</span><span style=3D"color:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u><span style=3D"font-size:10pt;color:black"><a hre=
f=3D"mailto:todd.fujinaka@intel.com" target=3D"_blank">todd.fujinaka@intel.=
com</a></span></u><u><span style=3D"color:black"><u></u><u></u></span></u><=
/p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Intel-wired-lan &lt;<a href=3D"mailto:i=
ntel-wired-lan-bounces@osuosl.org" target=3D"_blank">intel-wired-lan-bounce=
s@osuosl.org</a>&gt;
<b>On Behalf Of </b>Fujinaka, Todd<br>
<b>Sent:</b> Wednesday, July 1, 2020 3:03 PM<br>
<b>To:</b> Paul Stewart &lt;<a href=3D"mailto:pstew@google.com" target=3D"_=
blank">pstew@google.com</a>&gt;; <a href=3D"mailto:intel-wired-lan@lists.os=
uosl.org" target=3D"_blank">intel-wired-lan@lists.osuosl.org</a><br>
<b>Subject:</b> Re: [Intel-wired-lan] ixgbe-x550 link detection after boot<=
u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">That doesn=E2=80=99t sound right. Denverton is x553.=
 But I don=E2=80=99t generally do SOC so let me try to get someone else to =
look at this.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"color:black">Todd Fujinaka</span><=
/b><span style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,se=
rif;color:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;color:black">Software =
Application Engineer</span><span style=3D"color:black"><u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;color:black">Data Cent=
er Group</span><span style=3D"color:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;color:black">Intel Cor=
poration</span><span style=3D"color:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u><span style=3D"font-size:10pt;color:black"><a hre=
f=3D"mailto:todd.fujinaka@intel.com" target=3D"_blank">todd.fujinaka@intel.=
com</a></span><span style=3D"color:black"><u></u><u></u></span></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>From:</b> Intel-wired-lan &lt;<a href=3D"mailto:i=
ntel-wired-lan-bounces@osuosl.org" target=3D"_blank">intel-wired-lan-bounce=
s@osuosl.org</a>&gt;
<b>On Behalf Of </b>Paul Stewart<br>
<b>Sent:</b> Wednesday, July 1, 2020 2:09 PM<br>
<b>To:</b> <a href=3D"mailto:intel-wired-lan@lists.osuosl.org" target=3D"_b=
lank">intel-wired-lan@lists.osuosl.org</a><br>
<b>Subject:</b> [Intel-wired-lan] ixgbe-x550 link detection after boot<u></=
u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi there.=C2=A0 I have a system with a Denverton bas=
ed chipset which has a built-in 4 ports of 10GBE.=C2=A0 It&#39;s properly c=
onfigured to enumerate as=C2=A08086:15c6 (IXGBE_DEV_ID_X550EM_A_SGMII).=C2=
=A0 It also successfully detects link to its backplane partner
 with the stock ixgbe driver, but only if that partner is up and running be=
fore the driver starts up.=C2=A0 If the Denverton chipset comes up first, n=
othing I&#39;ve tried so far as succeeded in having the chipset detect link=
.=C2=A0 I&#39;ve tried the normal &quot;ifconfig down/up&quot;,
 &quot;ethtool -A eth1 autoneg off&quot; etc, but nothing so far seems to d=
o as much as just rebooting the system.=C2=A0 Are there any hints as to how=
 I can get this going?=C2=A0 I&#39;ve also tried &quot;hw-&gt;mac.ops.reset=
_hw(hw)&quot; and calling &quot;hw-&gt;mac.ops.setup_link()&quot; again fro=
m the kernel
 and that surprisingly didn&#39;t work either, so I&#39;m getting curious=
=C2=A0as to what=C2=A0can get the system to re-evaluate link state.=C2=A0 I=
t&#39;s really true that the Links status register does not mark the link a=
s up (as shown by ethtool -d).<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">If it&#39;s of any consequence the SGMII link partne=
r is a=C2=A0Marvell 88E1512.=C2=A0 MDIO is not connected.=C2=A0 For its par=
t, the Marvell part detects link from the Denverton=C2=A0whether or not tha=
t understanding is reciprocal.<u></u><u></u></p>
</div>
</div>
</div>
</div>

</blockquote></div>

--000000000000a7324005a96955cb--

--===============7363982751854804798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7363982751854804798==--
