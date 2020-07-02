Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A97212F12
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 23:52:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4527E88BBC;
	Thu,  2 Jul 2020 21:52:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7L1t-alkJlD5; Thu,  2 Jul 2020 21:52:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7467688BB3;
	Thu,  2 Jul 2020 21:52:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9178F1BF31C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 21:52:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8AB8485EAC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 21:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id irIBxZokfXI4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 21:52:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com
 [209.85.219.180])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F04785E65
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 21:52:41 +0000 (UTC)
Received: by mail-yb1-f180.google.com with SMTP id p204so10679265ybc.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jul 2020 14:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DxAH4zVtzpFpj7/N/TdLcQPXuRHFsx6q5o/dn/pPA0Y=;
 b=HEGDGaO29NiFtw5+luxmzf9aCam7zRqoQL6GTveEQxnSSws8J5ruAL21HfOMdXYxNk
 KP+dMSZ6TmKzQ4Tdi5Vq3BL7TOM3Y4tLV6kmpgo6q1Ms5POe6wJeg4IDHItvDG8Gt4eQ
 PuWQe22wQfiIllsF4mb9xpcFfiPMUy6a7nTQc7vtp3nCtO1uxYsgsL68OsutMNsCRZS3
 LtjU5oCVPkiRRS3zbNPEGGz3nKFDKxYeJldp3X3AuFnBUNtpUarh9YCh29FuxVxSIYJH
 dIDe8JRGsMyT8v4iODo3SZ1CoJ5XJ3ML27VX787gNAuXCyFVodqyBWCzjtbldd4vUxVH
 Ecxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DxAH4zVtzpFpj7/N/TdLcQPXuRHFsx6q5o/dn/pPA0Y=;
 b=RflvnakZLEJAs0G+wr8YUMF/BcPoyfXInLz8qOMVvUq7hhsB7kHBbzqpbGSFkJs9ZI
 9qjidmb9YACfkw852BM9vM0SVi6HvcvXl4uEFwC8bmKThB3Jr0gYqVypmE6ozaOCrTiX
 kuk0QK53+OL3hiLpiCiEMB+GlJkB5c8NY+ry59R145de9SUi4PBljHTuLA+EPpqGlB01
 5/MQFqp0P90cMd3O6r/tAoGnG1aoayOrHmcOoUq73TEXMmoSzLCU0Gx1feBUkQ8XmYKe
 J8gXM8LHWteN3z7LcD1hUk6rXlLLFkUtwTowZKb+zNCi7dkFmwDfBzjATeWa1Es53gmn
 20AA==
X-Gm-Message-State: AOAM530q4KbN+Gcb/5DiRpkcCX0ePTTaZF0GPJ6/HkQF/zAF8Qlza1ph
 N20OutCYYiPvRnL0ch9P7W5rp254r822iUJExQqf+g==
X-Google-Smtp-Source: ABdhPJwcR86Gt5dEmXNhYPPXrbJr1yzqmHqxwvnqRVE8RBfPaNrREbpNAhFyC87wmLo7p8kQiVNA2mz9pgrpuqxcajI=
X-Received: by 2002:a25:3c82:: with SMTP id
 j124mr51607705yba.228.1593726759904; 
 Thu, 02 Jul 2020 14:52:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAMcMvsjtsz3A+f-wA4yS7w+3dTaKO9tgCjeWPz_eAC5rMRHTNw@mail.gmail.com>
 <BYAPR11MB3606500178A5979CDCF5BCCAEF6C0@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB3606EAFBC4331FB21C14AEE4EF6C0@BYAPR11MB3606.namprd11.prod.outlook.com>
 <CAMcMvsh2DGng_TEzWEvizL0i=7_sh4X3qSUBkMc34oHkCFw9pA@mail.gmail.com>
In-Reply-To: <CAMcMvsh2DGng_TEzWEvizL0i=7_sh4X3qSUBkMc34oHkCFw9pA@mail.gmail.com>
From: Paul Stewart <pstew@google.com>
Date: Thu, 2 Jul 2020 14:52:28 -0700
Message-ID: <CAMcMvsiJNsmhT0=YorPuvs-RovN0h4RJAV=c+0a9DT1peo_zMg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0159821043145227461=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============0159821043145227461==
Content-Type: multipart/alternative; boundary="000000000000652fe705a97c6dff"

--000000000000652fe705a97c6dff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

At the risk of over-sharing, I'd like to add that mail to "support@intel.co=
m"
is bouncing.  Here's what I had sent, for the record:

Hello Intel.  I have an issue using an Atom C3708 in an SGMII backplane.
My setup:

   - CongaTec B7AC system-on-module (Atom C3708 model)
   - Connected one 10GBit port over SGMII to Marvell 88E1512 SGMII

Essentially the design is:

Embedded ARM host  -> RGMII -> Marvell 88E1512 -> SGMII -> Atom C3708

Both are running Linux 4.x (4.14.28 on ARM, 4.19.129 on the Atom).  The
system is configured so the ARM + Marvell can be powered on separately from
the Atom C3708.  Ethtool reports on the Ethernet interface:

localhost ~ # ethtool -i eth1
driver: ixgbe
version: 5.1.0-k
firmware-version: 0x8000084f
expansion-rom-version:
bus-info: 0000:0b:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

The shared EEPROM is changed on the Atom so that it is configured for
SGMII.  Therefore "lspci -nn" reports:

0b:00.0 Ethernet controller [0200]: Intel Corporation Device [8086:15c6]
(rev 11)
0b:00.1 Ethernet controller [0200]: Intel Corporation Device [8086:15c6]
(rev 11)
0c:00.0 Ethernet controller [0200]: Intel Corporation Device [8086:15c6]
(rev 11)
0c:00.1 Ethernet controller [0200]: Intel Corporation Device [8086:15c6]
(rev 11)

The scenario that works is if the ARM host + Marvell is powered and running
before the Atom starts up.  In this scenario, both sides detect link and
bidirectional communication is established.  If the ARM + Marvell is
rebooted, the Atom reports link down then back up, and communication
re-establishes.  if the Atom is rebooted, the Marvel reports link down, and
then back up, and communication re-establishes.

The scenario that doesn't work is if the Atom is powered up and fully
booted before the ARM/Marvell turns on.  At this point the ARM/Marvell
reports link up, but the Atom never reports link up, seemingly no matter
what I do apart from rebooting the Atom.  Rebooting does re-establish the
link.  Things I've tried that don't work:

   - On the Atom: ifconfig down / up
   - Rebooting the ARM/Marvell
   - On the Atom: ethtool -A eth1 autoneg off / on
   - On the Atom:
      - echo 1 > '/sys/devices/pci0000:00/0000:00:16.0/0000:0b:00.0/remove'
      - echo 1 > '/sys/devices/pci0000:00/0000:00:16.0/rescan'
      - (Driver reloads but link still not detected)

It's fairly clear from that last test that there is something stored within
the peripheral itself at startup.  Note that rebooting the Atom does
restore the link.  Are there any suggestions as to what to do in order to
establish a link short of reboot?


On Wed, Jul 1, 2020 at 4:05 PM Paul Stewart <pstew@google.com> wrote:

> Yes, I wouldn't be happy with half-duplex either.  It's not what I had in
> mind.  I don't know what exactly a "PHY" counts as in this setup -- we're
> talking about a backplane link -- SGMII to SGMII.   Both SGMII partners a=
re
> "happy" at least to the extent that they're both driving their respective
> lanes.  It's just that the Intel side doesn't seem to be able to update i=
ts
> state, or however the firmware on the adapter is configured doesn't have =
it
> re-assessing its state.
>
> As to Denverton: Literally speaking this is a CongaTec B7AC
> system-on-module.  Atom(TM) CPU C3708.
>
> On Wed, Jul 1, 2020 at 3:20 PM Fujinaka, Todd <todd.fujinaka@intel.com>
> wrote:
>
>> The response I got is =E2=80=9Ccan=E2=80=99t do half duplex so the PHY c=
ould be happy but
>> the SGMII wont=E2=80=99. Put it in the actual bug tracker=E2=80=9D.
>>
>>
>>
>> I think the best course of action is for you to contact your factory
>> support. Or if you got this retail to contact support@intel.com.
>>
>>
>>
>> =E2=80=A6
>>
>>
>>
>> Oh, I looked, Mr. Bloom, and I think this is probably a =E2=80=9Cclone t=
o lan
>> tenant and assign to the QV team=E2=80=9D sort of thing. I=E2=80=99m not=
 sure if it=E2=80=99s QV
>> Maciej Bucio or Tools Kamil Bednarski.
>>
>>
>>
>> *Todd Fujinaka*
>>
>> Software Application Engineer
>>
>> Data Center Group
>>
>> Intel Corporation
>>
>> *todd.fujinaka@intel.com <todd.fujinaka@intel.com>*
>>
>>
>>
>> *From:* Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> *On Behalf
>> Of *Fujinaka, Todd
>> *Sent:* Wednesday, July 1, 2020 3:03 PM
>> *To:* Paul Stewart <pstew@google.com>; intel-wired-lan@lists.osuosl.org
>> *Subject:* Re: [Intel-wired-lan] ixgbe-x550 link detection after boot
>>
>>
>>
>> That doesn=E2=80=99t sound right. Denverton is x553. But I don=E2=80=99t=
 generally do SOC
>> so let me try to get someone else to look at this.
>>
>>
>>
>> *Todd Fujinaka*
>>
>> Software Application Engineer
>>
>> Data Center Group
>>
>> Intel Corporation
>>
>> *todd.fujinaka@intel.com <todd.fujinaka@intel.com>*
>>
>>
>>
>> *From:* Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> *On Behalf
>> Of *Paul Stewart
>> *Sent:* Wednesday, July 1, 2020 2:09 PM
>> *To:* intel-wired-lan@lists.osuosl.org
>> *Subject:* [Intel-wired-lan] ixgbe-x550 link detection after boot
>>
>>
>>
>> Hi there.  I have a system with a Denverton based chipset which has a
>> built-in 4 ports of 10GBE.  It's properly configured to enumerate
>> as 8086:15c6 (IXGBE_DEV_ID_X550EM_A_SGMII).  It also successfully detect=
s
>> link to its backplane partner with the stock ixgbe driver, but only if t=
hat
>> partner is up and running before the driver starts up.  If the Denverton
>> chipset comes up first, nothing I've tried so far as succeeded in having
>> the chipset detect link.  I've tried the normal "ifconfig down/up",
>> "ethtool -A eth1 autoneg off" etc, but nothing so far seems to do as muc=
h
>> as just rebooting the system.  Are there any hints as to how I can get t=
his
>> going?  I've also tried "hw->mac.ops.reset_hw(hw)" and calling
>> "hw->mac.ops.setup_link()" again from the kernel and that surprisingly
>> didn't work either, so I'm getting curious as to what can get the system=
 to
>> re-evaluate link state.  It's really true that the Links status register
>> does not mark the link as up (as shown by ethtool -d).
>>
>>
>>
>> If it's of any consequence the SGMII link partner is a Marvell 88E1512.
>> MDIO is not connected.  For its part, the Marvell part detects link from
>> the Denverton whether or not that understanding is reciprocal.
>>
>

--000000000000652fe705a97c6dff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">At the risk of over-sharing, I&#39;d like to add that mail=
 to &quot;<a href=3D"mailto:support@intel.com" target=3D"_blank">support@in=
tel.com</a>&quot; is bouncing.=C2=A0 Here&#39;s what I had sent, for the re=
cord:<div><br></div><div>Hello Intel.=C2=A0 I have an issue using an Atom C=
3708 in an SGMII backplane.=C2=A0 My setup:<div><ul><li style=3D"margin-lef=
t:15px">CongaTec B7AC system-on-module (Atom C3708 model)</li><li style=3D"=
margin-left:15px">Connected one 10GBit port over SGMII to Marvell 88E1512 S=
GMII</li></ul><div>Essentially the design is:</div></div><div><br></div><di=
v>Embedded ARM host=C2=A0 -&gt; RGMII -&gt; Marvell 88E1512 -&gt; SGMII -&g=
t; Atom C3708</div><div><br></div><div>Both are running Linux 4.x (4.14.28 =
on ARM, 4.19.129 on the Atom).=C2=A0 The system is configured so the ARM=C2=
=A0+ Marvell can be powered on separately from the Atom C3708.=C2=A0 Ethtoo=
l reports on the Ethernet interface:</div><div><font face=3D"monospace"><br=
></font></div><div><font face=3D"monospace">localhost ~ # ethtool -i eth1<b=
r>driver: ixgbe<br>version: 5.1.0-k<br>firmware-version: 0x8000084f<br>expa=
nsion-rom-version:<br>bus-info: 0000:0b:00.0<br>supports-statistics: yes<br=
>supports-test: yes<br>supports-eeprom-access: yes<br>supports-register-dum=
p: yes<br>supports-priv-flags: yes</font><br></div><div><br></div><div>The =
shared EEPROM is changed on the Atom so that it is configured for SGMII.=C2=
=A0 Therefore &quot;lspci -nn&quot; reports:</div><div><br></div><div><font=
 face=3D"monospace">0b:00.0 Ethernet controller [0200]: Intel Corporation D=
evice [8086:15c6] (rev 11)<br>0b:00.1 Ethernet controller [0200]: Intel Cor=
poration Device [8086:15c6] (rev 11)<br>0c:00.0 Ethernet controller [0200]:=
 Intel Corporation Device [8086:15c6] (rev 11)<br>0c:00.1 Ethernet controll=
er [0200]: Intel Corporation Device [8086:15c6] (rev 11)</font><br></div><d=
iv><br></div><div>The scenario that works is if the ARM host=C2=A0+ Marvell=
 is powered and running before the Atom starts up.=C2=A0 In this scenario, =
both sides detect link and bidirectional communication is established.=C2=
=A0 If the ARM=C2=A0+ Marvell is rebooted, the Atom reports link down then =
back up, and communication re-establishes.=C2=A0 if the Atom is rebooted, t=
he Marvel reports link down, and then back up, and communication re-establi=
shes.</div><div><br></div><div>The scenario that doesn&#39;t work is if the=
 Atom is powered up and fully booted before the ARM/Marvell turns on.=C2=A0=
 At this point the ARM/Marvell reports link up, but the Atom never reports =
link up, seemingly no matter what I do apart from rebooting the Atom.=C2=A0=
 Rebooting does re-establish the link.=C2=A0 Things I&#39;ve tried that don=
&#39;t work:</div><div><ul><li style=3D"margin-left:15px">On the Atom: ifco=
nfig down / up</li><li style=3D"margin-left:15px">Rebooting the ARM/Marvell=
</li><li style=3D"margin-left:15px">On the Atom: ethtool -A eth1 autoneg of=
f / on<br></li><li style=3D"margin-left:15px">On the Atom:</li><ul><li styl=
e=3D"margin-left:15px">echo 1 &gt; &#39;/sys/devices/pci0000:00/0000:00:16.=
0/0000:0b:00.0/remove&#39;<br></li><li style=3D"margin-left:15px">echo 1 &g=
t; &#39;/sys/devices/pci0000:00/0000:00:16.0/rescan&#39;<br></li><li style=
=3D"margin-left:15px">(Driver reloads but link still not detected)</li></ul=
></ul><div>It&#39;s fairly clear from that last test that there is somethin=
g stored within the peripheral itself at startup.=C2=A0 Note that rebooting=
 the Atom does restore the link.=C2=A0 Are there any suggestions as to what=
 to do in order to establish a link short of reboot?</div></div></div><div>=
<span id=3D"m_6196816418484591782gmail-:1etb" style=3D"display:inline-flex;=
min-height:28px;vertical-align:bottom;font-family:Roboto,RobotoDraft,Helvet=
ica,Arial,sans-serif;font-size:22px"><div id=3D"m_6196816418484591782gmail-=
:1ete" style=3D"font-size:0px;padding:0px;width:20px;height:20px;display:in=
line-block;margin:0px 8px 0px 0px"><br></div></span></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 1, 20=
20 at 4:05 PM Paul Stewart &lt;<a href=3D"mailto:pstew@google.com" target=
=3D"_blank">pstew@google.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">Yes, I wouldn&#39;t be happy w=
ith half-duplex either.=C2=A0 It&#39;s not what I had in mind.=C2=A0 I don&=
#39;t know what exactly a &quot;PHY&quot; counts as in this setup -- we&#39=
;re talking about a backplane link -- SGMII to SGMII.=C2=A0 =C2=A0Both SGMI=
I partners are &quot;happy&quot; at least to the extent that they&#39;re bo=
th driving their respective lanes.=C2=A0 It&#39;s just that the Intel side =
doesn&#39;t seem to be able to update its state, or however the firmware on=
 the adapter is configured doesn&#39;t have it re-assessing its state.<div>=
<br></div><div>As to Denverton: Literally speaking this is a CongaTec B7AC =
system-on-module.=C2=A0=C2=A0Atom(TM) CPU C3708.</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 1, 2020 =
at 3:20 PM Fujinaka, Todd &lt;<a href=3D"mailto:todd.fujinaka@intel.com" ta=
rget=3D"_blank">todd.fujinaka@intel.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div>
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
</blockquote></div>

--000000000000652fe705a97c6dff--

--===============0159821043145227461==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0159821043145227461==--
