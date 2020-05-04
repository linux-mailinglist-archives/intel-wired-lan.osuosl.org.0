Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA9E1C48D4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 May 2020 23:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B678D86B70;
	Mon,  4 May 2020 21:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wDS9b81kjSsP; Mon,  4 May 2020 21:14:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2794086B74;
	Mon,  4 May 2020 21:14:49 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 04C211BF2FD
 for <intel-wired-lan@osuosl.org>; Mon,  4 May 2020 21:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F2B0D88419
 for <intel-wired-lan@osuosl.org>; Mon,  4 May 2020 21:14:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 16LKoF0lcU7U for <intel-wired-lan@osuosl.org>;
 Mon,  4 May 2020 21:14:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
 [209.85.166.176])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 88F0088418
 for <intel-wired-lan@osuosl.org>; Mon,  4 May 2020 21:14:46 +0000 (UTC)
Received: by mail-il1-f176.google.com with SMTP id x2so236389ilp.13
 for <intel-wired-lan@osuosl.org>; Mon, 04 May 2020 14:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+tB1FLCTHaKiWMThc7N5D1i28Z7/ZwX6hwEXhm9V/Uo=;
 b=MGGrDTO2TNysIzs6ASXqo+7bi2TLJWUr7uFjMBJGM5+RcAEwiO2s21dCgU1db5OIaf
 G0t2LesAu8/FxfawQnUiVWol1pUSt/Sfo2vf8sFmyHQHfxWxQOOLfbtqu+bDAm7S0aaZ
 HDhji/rzGFEYLnKse0hOFY8bQXRo/DDdKSonLSWu6vtcTmfyCOtiXa890a+LI8NWKfdP
 LLAzYoKVru8jNrGzWgOqF35QUqs5d3pfg3sEeB1T25+hAtk3NkjbaLQOd4YVFgOhTqPy
 kS5PnsydrsXW5leLg34dIHSb3L0HarVMZSd7TKJVH0szyz4G+ESMNHoxDGDgrFh95SjA
 I7NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+tB1FLCTHaKiWMThc7N5D1i28Z7/ZwX6hwEXhm9V/Uo=;
 b=L2Yromf1bnu37H/1WoyCRjxFHudD2+YIvSww/f+g77xXcGJDeM13Z2J99Gt1AysOcF
 qCh2cApCbaS0Pqb7WqfQ86rHYGV2C2Y0DmebUj8FzJnGH0VzQTYf32gq/xsFnn7Ic4a9
 cWer4ABGdDCSxqdgYyCu/HmmmmKs5SN+m+BFMRlqTXEZIL0WgNG2dpdmPJjJyNlEyNQI
 9VYiK8S3ppF06i7cPFKd7SKEbF2AYRDkHC+6jG333DHjvbMxV2n17C2hJDUtkAaQfS6P
 W45SiguvzDCuMwbg+w72LayQVLtleLPe4A3HpTAcorWvWEroavPCDBAYSX0Gu4LdqkR4
 YAog==
X-Gm-Message-State: AGi0Pub5+wb/PhxSM46TsgTiWxx+oBGwVHvcrFzYZLmgtzD5RrgpQ7uZ
 H5dpJ2r7tEj9cl0KlvsY3Q8eCA+UZamfzxyUKs8=
X-Google-Smtp-Source: APiQypJD9oKw94u+FRX7uHOOiOZ4LTRZNKCz61OIA4IRKmeuCjpRjT6RHnUZOsUtkkvojJSpGzml86K2h96E4hPck0Q=
X-Received: by 2002:a92:d30c:: with SMTP id x12mr370198ila.95.1588626885707;
 Mon, 04 May 2020 14:14:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAGrNP8nfqAZnEoOBsrxrsvszw7T5pdKHG4mt6fVcKB6iigV_BA@mail.gmail.com>
 <87zhaswn5t.fsf@intel.com>
 <CAGrNP8=qr3_ZPL7c4oWz0L6hzLSSHjh3iWa52VsUTmJjfUqxdw@mail.gmail.com>
In-Reply-To: <CAGrNP8=qr3_ZPL7c4oWz0L6hzLSSHjh3iWa52VsUTmJjfUqxdw@mail.gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 4 May 2020 14:14:34 -0700
Message-ID: <CAKgT0UfJ9gOhu=N1rCFa1u-3GhAoFjY=-N09-P=w1MYd0O05_A@mail.gmail.com>
To: Dan Williams <dwilliams@nextdroid.com>
Subject: Re: [Intel-wired-lan] Does the 'igb` kernel module support setting
 2-Tuple filters (aka `--config-ntuple`) on a i210 NIC?
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
Cc: Daniel Gandhi <dgandhi@nextdroid.com>, Nick Rizzo <nrizzo@nextdroid.com>,
 intel-wired-lan@osuosl.org
Content-Type: multipart/mixed; boundary="===============2386870240799190743=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2386870240799190743==
Content-Type: multipart/alternative; boundary="000000000000340d8d05a4d90549"

--000000000000340d8d05a4d90549
Content-Type: text/plain; charset="UTF-8"

On Mon, May 4, 2020 at 6:58 AM Dan Williams <dwilliams@nextdroid.com> wrote:

> > We have a computer logging a high rate of ethernet packets ( 25k
>>> > packets/sec ~70 Mb/sec);   But we're having trouble convincing the
>>> hardware
>>> > to receive all of these packets, at a sustained rate -- specifically
>>> we're
>>> > dropping packets while processing through the kernel layers.    We're
>>> > currently attempting to optimize the network stack,  but we're having
>>> > trouble setting the driver parameters... which is what this message is
>>> all
>>> > about.
>>>
>>
>> That's weird. That packet rate is not *that* high, the Linux kernel
>> should be able to handle that fine.
>
>
>> Can you give more details of the workload you are running?
>>
>
> Okay, in more detail: we have two groups of incoming streams:  (for the
> minimum setup to cause a problem)
> - 4x Camera Streams  each transmits a 3.2mb image every .1 s, split into
> jumbo frames (mtu is set to the full 9000)
> - Constant stream of data from a Lidar at 18k packets / sec.  Each packet
> is 1206 bytes long.
> - Both streams continue steady-state, indefinitely (we have verified
> behavior out to 4 hours so far)
>

So you mentioned before that your rate was ~70mb/s or so. As far as the
streams is anything changing in terms of the sources or are the streams
coming from the same source throughout the run? I ask because if the
source/destination ports and IP addresses are not changing then the hash
will not change so the work on the queues should be constant as well.


> We receive all of these over ethernet, and routed to a single network port
> on a single NIC.   The driver is the 'igb' kernel module, as supplied from
> ubuntu.
> The OS is Ubuntu 16.04 LTS with a 4.15.0-88-lowlatency kernel.
>
> ----
> Biggest Problem:
>
> Over time decay of packet processing.
>
> We've been working on this for a couple of weeks; when the processes start
> we're logging the full data rate (~24kpps) but over time, something slows
> down, and our logging rate shrinks.
> (on the order of 20 packets / second / minute, consistently falling over
> hours. ... after the first hour, we've lost 500 pps, after the second hour,
> 1kpps... etc.)
>

It might be useful to provide "ethtool -S <iface>" output for the interface
at the start, then one hour in, and then two hours in. That would allow us
to check and see if there are any other indicators that are changing over
time such as flow control frames.


> Our user-land process simply isn't seeing the full count of packets -- we
> have debug code that reads it from the OS, and then immediately drops the
> buffer on the floor.  Generally, we see drops in netstat, but not in the
> driver. (i.e. from `ethtool -S | grep rx_*`)
> So, our tentative guess is that we want to tune some parameters, somewhere
> in the kernel or network driver to help out the kernel.    Ideas welcome,
> of course :)
>

The fact that you are seeing drops in the netstat would imply that your
application isn't able to keep up with the data rates being provided by the
network. Some of that can be addressed by trying to smooth out the
burstiness of the traffic by increasing the interrupt rate as I describe
below.


> ( We are *also* dropping from the ring buffer, when both the lidar stream
> and a camera stream are assigned to the same queue, but that looks like a
> releated but separate issue)
>

So in terms of the ring buffer there are essentially two knobs you have to
control some of that. The first is the size of the ring buffer, controlled
via "ethtool -G <iface> rx <ring size>", the default is 256, you may want
to try increasing it to 512 and see if that helps. The other item you could
look at adjusting is the interrupt moderation, that is controlled by
"ethtool -C <iface> rx-usecs <irq delay>". For your workload something like
an IRQ delay of 50usec might make sense. That should limit the interrupts
to about 20K per second which should mean that you only have one or two
frames in the ring per interrupt, assuming the queue doesn't get stuck in
NAPI polling mode.


> Things we've tried / checked:
> - irq alignment -- they're already reasonable set
> - cpu assignment (via `taskset`)
> - change processor task scheduling / priority (no effect)
>
> Ideas:
> - what is the default hash algorithm?  if we can't change it, maybe we can
> work around it?
>

It is a Toeplitz hash, and there is not a way to change that.


> - is there any other way to set the queue settings on this network card?
> Debug tool?  Rebuilding the kernel module with custom settings?
>

On the network card itself there isn't an option there. One option you
could look at would be receive packet steering, or receive flow steering.
You can find more information on those here:
https://www.kernel.org/doc/html/v5.1/networking/scaling.html



> - Our hardware also has an 82579 NIC as well -- would you guys recommend
> we use that NIC, instead?
>

The 82579 would likely have fewer options than the i210 you are currently
using. In addition it would support fewer queues.


> - Do other network cards / chipsets have better support under linux?
> Particularly when tuning input queues?
>

In the 1Gb space there usually isn't much out there for tuning individual
queues. Normally high queue counts aren't that common on 1Gb devices so it
doesn't make much sense to usually optimize for that.

In the 10Gb space the drivers tend to have many more options when it comes
to queue specific tuning, but I don't know if you would want to head in
that direction.

--000000000000340d8d05a4d90549
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 4, 2020 at 6:58 AM Dan Wi=
lliams &lt;<a href=3D"mailto:dwilliams@nextdroid.com">dwilliams@nextdroid.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><span>&gt; We have a computer l=
ogging a high rate of ethernet packets ( 25k</span><br><span>
&gt; packets/sec ~70 Mb/sec);=C2=A0 =C2=A0But we&#39;re having trouble conv=
incing the hardware</span><br><span>
&gt; to receive all of these packets, at a sustained rate -- specifically w=
e&#39;re</span><br><span>
&gt; dropping packets while processing through the kernel layers.=C2=A0 =C2=
=A0 We&#39;re</span><br><span>
&gt; currently attempting to optimize the network stack,=C2=A0 but we&#39;r=
e having</span><br><span>
&gt; trouble setting the driver parameters... which is what this message is=
 all</span><br><span>
&gt; about.</span><br></blockquote><span>
</span><br><span></span>
That&#39;s weird. That packet rate is not *that* high, the Linux kernel<br>
should be able to handle that fine. </blockquote><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><br></blockquote><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Can you give more details of the workload you are running? =
<br></blockquote><div><br></div><div>Okay, in more detail: we have two grou=
ps of incoming streams:=C2=A0 (for the minimum setup to cause a problem)</d=
iv><div>- 4x Camera Streams=C2=A0 each transmits a 3.2mb image every .1 s, =
split into jumbo  frames (mtu is set to the full 9000)<br></div><div>- Cons=
tant stream of data from a Lidar at 18k packets / sec.=C2=A0 Each packet is=
 1206 bytes long. <br></div><div>- Both streams continue steady-state, inde=
finitely (we have verified behavior out to 4 hours so far)</div></div></blo=
ckquote><div><br></div><div>So you mentioned before that your rate was ~70m=
b/s or so. As far as the streams is anything changing in terms of the sourc=
es or are the streams coming from the same source throughout the run? I ask=
 because if the source/destination ports and IP addresses are not changing =
then the hash will not change so the work on the queues should be constant =
as well.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div>We receive all of these over ethernet, and rout=
ed to a single network port on a single NIC.=C2=A0=C2=A0 The driver is the =
&#39;igb&#39; kernel module, as supplied from ubuntu.</div><div>The OS is U=
buntu 16.04 LTS with a <span>4.15.0-88-lowlatency kernel.<br></span></div><=
div><span><br></span></div><div><span>----</span></div><div><span>Biggest P=
roblem:</span></div><div><span><br></span></div><div><span>Over time decay =
of packet processing.<br></span></div><div><span><br></span></div><div><spa=
n>We&#39;ve been working on this for a couple of weeks; when the processes =
start we&#39;re logging the full data rate (~24kpps) but over time, somethi=
ng slows down, and our logging rate shrinks. <br></span></div><div><span>(o=
n the order of 20 packets / second / minute, consistently falling over hour=
s. ... after the first hour, we&#39;ve lost 500 pps, after the second hour,=
 1kpps... etc.)</span></div></div></blockquote><div><br></div><div>It might=
 be useful to provide &quot;ethtool -S &lt;iface&gt;&quot; output for the i=
nterface at the start, then one hour in, and then two hours in. That would =
allow us to check and see if there are any other indicators that are changi=
ng over time such as flow control frames.</div><div>=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Our user-land =
process simply isn&#39;t seeing the full count of packets -- we have debug =
code that reads it from the OS, and then immediately drops the buffer on th=
e floor.=C2=A0 Generally, we see drops in netstat, but not in the driver. (=
i.e. from `ethtool -S | grep rx_*`)</div><div>So, our tentative guess is th=
at we want to tune some parameters, somewhere in the kernel or network driv=
er to help out the kernel.=C2=A0=C2=A0=C2=A0 Ideas welcome, of course :)</d=
iv></div></blockquote><div><br></div><div>The fact that you are seeing drop=
s in the netstat would imply that your application isn&#39;t able to keep u=
p with the data rates being provided by the network. Some of that can be ad=
dressed by trying to smooth out the burstiness of the traffic by increasing=
 the interrupt rate as I describe below.</div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><div>( We are *=
also* dropping from the ring buffer, when both the lidar stream and a camer=
a stream are assigned to the same queue, but that looks like a releated but=
 separate issue)</div></div></div></blockquote><div><br></div><div>So in te=
rms of the ring buffer there are essentially two knobs you have to control =
some of that. The first is the size of the ring buffer, controlled via &quo=
t;ethtool -G &lt;iface&gt; rx &lt;ring size&gt;&quot;, the default is 256, =
you may want to try increasing it to 512 and see if that helps. The other i=
tem you could look at adjusting is the interrupt moderation, that is contro=
lled by &quot;ethtool -C &lt;iface&gt; rx-usecs &lt;irq delay&gt;&quot;. Fo=
r your workload something like an IRQ delay of 50usec might make sense. Tha=
t should limit the interrupts to about 20K per second which should mean tha=
t you only have one or two frames in the ring per interrupt, assuming the q=
ueue doesn&#39;t get stuck in NAPI polling mode.</div><div>=C2=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><div>Th=
ings we&#39;ve tried / checked:</div><div>- irq alignment -- they&#39;re al=
ready reasonable set</div><div>- cpu assignment (via `taskset`)</div><div>-=
 change processor task scheduling / priority (no effect)<br></div></div><di=
v></div><div></div><div><br></div><div>Ideas:<br></div><div>- what is the d=
efault hash algorithm?=C2=A0 if we can&#39;t change it, maybe we can work a=
round it?<br></div></div></blockquote><div><br></div><div>It is a Toeplitz =
hash, and there is not a way to change that.</div><div>=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div></div><div>=
- is there any other way to set the queue settings on this network card?=C2=
=A0=C2=A0 Debug tool?=C2=A0 Rebuilding the kernel module with custom settin=
gs?</div></div></blockquote><div><br></div><div>On the network card itself =
there isn&#39;t an option there. One option you could look at would be rece=
ive packet steering, or receive flow steering. You can find more informatio=
n on those here:</div><div><a href=3D"https://www.kernel.org/doc/html/v5.1/=
networking/scaling.html">https://www.kernel.org/doc/html/v5.1/networking/sc=
aling.html</a><br></div><div><br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div></div><div>- Our har=
dware also has an 82579 NIC as well -- would you guys recommend we use that=
 NIC, instead?</div></div></blockquote><div><br></div><div>The 82579 would =
likely have fewer options than the i210 you are currently using. In additio=
n it would support fewer queues.</div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>- Do other network card=
s / chipsets have better support under linux?=C2=A0 Particularly when tunin=
g input queues?</div></div></blockquote><div><br></div><div>In the 1Gb spac=
e there usually isn&#39;t much out there for tuning individual queues. Norm=
ally high queue counts aren&#39;t that common on 1Gb devices so it doesn&#3=
9;t make much sense to usually optimize for that.</div><div><br></div><div>=
In the 10Gb space the drivers tend to have many more options when it comes =
to queue specific tuning, but I don&#39;t know if you would want to head in=
 that direction.</div><div>=C2=A0</div></div></div>

--000000000000340d8d05a4d90549--

--===============2386870240799190743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2386870240799190743==--
