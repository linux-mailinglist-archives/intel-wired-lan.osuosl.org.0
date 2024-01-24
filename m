Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA6583AE05
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 17:10:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E59B41B1B;
	Wed, 24 Jan 2024 16:10:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E59B41B1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706112631;
	bh=WHydiE7tpdUSU12ilDbL71RFZP9znBJhZcjs7gKwSUc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t/Bx7S1xm6YtitT+MYlUgtEYjwl2x0tuKGCbyMvtkpl/3rIzMK387ALpwqudPeSw7
	 anQnaNj9uO5s9sEBl9B4dlWZKh3Lt8bubcSX3TH+heWpkD1w5t3Yn2YgcIXMha2Zyd
	 2Dy9lubmXpVqnYlMcverxz1WsRyzv/Y+n7tsCN5cNPoSBy4c08OLUAsPJLh6hZSb/e
	 TCfxBWxpsvTifeHP2jmBv1dKqPwIbnzEa4UKQnyDdL5o2D/0IOu3pvTsHHKlFLpLNj
	 WvKm+HtmIVnWV1iix1xpvW2pCcqfYUPDB9csr0yFh3gq+rTm56bIxuJLP8dHDhs+US
	 sLDFkW2cJ00mg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iN_o_Xw7jb2k; Wed, 24 Jan 2024 16:10:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD7B541993;
	Wed, 24 Jan 2024 16:10:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD7B541993
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D9D6F1BF345
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 02:55:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC8E1617B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 02:55:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC8E1617B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dwdIJF1qBlf0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 02:55:39 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com
 [IPv6:2607:f8b0:4864:20::1136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 53B676160D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 02:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53B676160D
Received: by mail-yw1-x1136.google.com with SMTP id
 00721157ae682-5edfcba97e3so51649367b3.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 18:55:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706064938; x=1706669738;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=WHydiE7tpdUSU12ilDbL71RFZP9znBJhZcjs7gKwSUc=;
 b=XaA40x/KIi0yqd7G1j7hiP9hLDllvYdkWg3twe33zXfC/HR0yTb9kqScL4/zeA5KLb
 h7iMrDcZ5j0MbfljRGlIfmXu+Fa7/OYIcvNwMFnEYaBDPYwlJhR7yGTFIogEqf62db84
 8cvBx3/YCSWSRIYDWOLT9DwL7giniaM76f3tH46M2X/aF6e8Wvf9P7Vc+foPZ0W22hDG
 fMErFFP6e8Nrj0cb7wR11cIBSSKZm5NKyorNPf8CZuLl3zIKNF60WmdgpiviO6lJZvhV
 ojpHN/E6ybDabm0fMV6CIw71ohRGtMMtf59b0VrkUlAlkjIekjdyiCa1co6NhvBNQfWP
 eIIw==
X-Gm-Message-State: AOJu0YzgbmCXmz4jiNxr2ci/6R2R26/uIJBd1lxu7Z/RMYkT4dxUsdXk
 OdAcZxvCGjBJnUaAVW5EKs5eyxXW0PpskFc+B3pP88pW+NjdpRrHQ7e2dSPM3dQtBXCCBJHXfmG
 LDAFXkiR2T8AnySqPvIRYD7qjnME=
X-Google-Smtp-Source: AGHT+IGhZbfO7EGBr8/Pm9vADCMOXIZ18aeNawicBzusjIdkZMVCgVK7+AtbN9y5FtILo04BosPF6FAcpNFhjNqDi6g=
X-Received: by 2002:a0d:e244:0:b0:5ff:4e3b:dc89 with SMTP id
 l65-20020a0de244000000b005ff4e3bdc89mr157993ywe.11.1706064938176; Tue, 23 Jan
 2024 18:55:38 -0800 (PST)
MIME-Version: 1.0
References: <20240120072806.8554-1-suresh2514@gmail.com>
 <20240122205137.GH126470@kernel.org>
In-Reply-To: <20240122205137.GH126470@kernel.org>
From: suresh ks <suresh2514@gmail.com>
Date: Wed, 24 Jan 2024 08:25:27 +0530
Message-ID: <CABAyFk6YG=8vMn8e1O=1YhH+eamPRToB+r3rxT812aL3S+xi9w@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Content-Type: multipart/alternative; boundary="0000000000009a9689060fa83261"
X-Mailman-Approved-At: Wed, 24 Jan 2024 16:10:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706064938; x=1706669738; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=WHydiE7tpdUSU12ilDbL71RFZP9znBJhZcjs7gKwSUc=;
 b=H/LQCP/adycvZ5jkBpODpPf2fn8Q8ffIMFBq4wj92zwkzQXa4QmjkR1QsiFTUiw12J
 xCb6HPHxZ9RjNBIc/Z13IyQTl4u9BQY3qYzxofUq47kQPMbZX2lt7X3oPcsXv56bxO/e
 BOf+AfCjXPKZf4hLVabRE0aAhkenIXugGvHvFrRKgo3UgQyFrbT4PdTi3CZbtW2/7uhL
 MkU/oA9Xk3oPc5WtlH83vS29ClHuEt1t9UcrYpEy/iPq9quDBndwbrz1fL/NTnmi2eu8
 IutA/VcbhRlttC8o8CNxagBuZGG3XeB8oiqWO+EcErckGt51vLsouad2Hkj7BbAIN0Zr
 vo/w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=H/LQCP/a
Subject: Re: [Intel-wired-lan] [PATCH iwl v2] i40e: print correct hw max rss
 count in kernel ring buffer
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--0000000000009a9689060fa83261
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Simon,

Thanks a lot for getting back to me.

I would say, it's not fixing any issue.  This is since the beginning.   My
analysis is given below:

[1]
If I check the i40e_reconfig_rss_queues() function history, I see
'pf->rss_size_max' has been used since the beginning.

Later via the below commit, we enabled more than 64 RSS.    <<<<<

+++
commit 9a3bd2f1e38e5f668200b5e720b4d87023f394d2
Author: Anjali Singhai Jain <anjali.singhai@intel.com>
Date:   Tue Feb 24 06:58:44 2015 +0000

    i40e: Enable more than 64 qps for the Main VSI

    When running in a single TC mode the HW can be configured to enable
more
    than max RSS qps for the Main VSI. This  patch makes it possible to
    enable as many as num_online_cpus().

    ethtool -L can still be used to reconfigure number of qps
    to a smaller value.

    Change-ID: I3e2df085276982603d86dfd79477c0ada8d30b8f
    Signed-off-by: Anjali Singhai Jain <anjali.singhai@intel.com>
    Signed-off-by: Shannon Nelson <shannon.nelson@intel.com>
    Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
b/drivers/net/ethernet/intel/i40e/i40e_main.c
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -7252,23 +7259,27 @@
 int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count)
 {
+   struct i40e_vsi *vsi =3D pf->vsi[pf->lan_vsi];
+   int new_rss_size;
+
    if (!(pf->flags & I40E_FLAG_RSS_ENABLED))
        return 0;

-   queue_count =3D min_t(int, queue_count, pf->rss_size_max);
+   new_rss_size =3D min_t(int, queue_count, pf->rss_size_max);

-   if (queue_count !=3D pf->rss_size) {
+   if (queue_count !=3D vsi->num_queue_pairs) {
+       vsi->req_queue_pairs =3D queue_count;
        i40e_prep_for_reset(pf);
....
+++

So accordingly we should have changed  to using 'vsi->num_queue_pairs'
instead of 'pf->rss_size_max'  to print maximum rss size. Currently it's
printing 64 as maximum RSS whereas the system supports more than that.
 It's evident in my commit message kernel log which says:
  "kernel: i40e 0000:af:00.1: User requested queue count/HW max RSS count:
 104/64".

It should have been 104/104 <<<<

So I am a bit confused about whether I should add a 'Fixes:' tag  and even
if I use a tag, which commit I should show here.


thanks....
*Suresh KS*
suresh2514@gmail.com
91-7709100053



On Tue, Jan 23, 2024 at 2:21=E2=80=AFAM Simon Horman <horms@kernel.org> wro=
te:

> On Sat, Jan 20, 2024 at 12:58:06PM +0530, Suresh Kumar wrote:
> > pf->rss_size_max is hardcoded and always prints max rss count as 64.
> >
> > Eg:
> >   kernel: i40e 0000:af:00.1: User requested queue count/HW max RSS
> count:  104/64
> >
> > whereas  ethtool reports the correct value from "vsi->num_queue_pairs"
> >
> > Channel parameters for eno33:
> > Pre-set maximums:
> > RX:     n/a
> > TX:     n/a
> > Other:      1
> > Combined:   104
> > Current hardware settings:
> > RX:     n/a
> > TX:     n/a
> > Other:      1
> > Combined:   104  <-------
> >
> > and is misleading.
> >
> > Change it to vsi->num_queue_pairs
> >
> > Signed-off-by: Suresh Kumar <suresh2514@gmail.com>
>
> Hi Suresh,
>
> following-up on our earlier emails.
>
> I do think that if this it is a fix it should have a fixes tag.
> Which should be for the commit where the bug was first visible to users.
>

--0000000000009a9689060fa83261
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Simon,<div><br></div><div>Thanks a lot for getting back=
 to me.</div><div><br></div><div>I would say, it&#39;s not fixing any issue=
.=C2=A0 This is since the beginning.=C2=A0 =C2=A0My analysis is given below=
:</div><div><br></div><div>[1]</div><div>If I check the=C2=A0i40e_reconfig_=
rss_queues() function history, I see &#39;pf-&gt;rss_size_max&#39; has been=
 used since the beginning.</div><div><br></div><div>Later via the below com=
mit, we enabled more than 64 RSS.=C2=A0 =C2=A0 &lt;&lt;&lt;&lt;&lt;</div><d=
iv><br></div><div><a class=3D"gmail_plusreply" id=3D"plusReplyChip-0">+++</=
a><br></div><div>commit 9a3bd2f1e38e5f668200b5e720b4d87023f394d2<br>Author:=
 Anjali Singhai Jain &lt;<a href=3D"mailto:anjali.singhai@intel.com">anjali=
.singhai@intel.com</a>&gt;<br>Date: =C2=A0 Tue Feb 24 06:58:44 2015 +0000<b=
r><br>=C2=A0 =C2=A0 i40e: Enable more than 64 qps for the Main VSI<br>=C2=
=A0 =C2=A0 <br>=C2=A0 =C2=A0 When running in a single TC mode the HW can be=
 configured to enable more <br>=C2=A0 =C2=A0 than max RSS qps for the Main =
VSI. This =C2=A0patch makes it possible to<br>=C2=A0 =C2=A0 enable as many =
as num_online_cpus().<br>=C2=A0 =C2=A0 <br>=C2=A0 =C2=A0 ethtool -L can sti=
ll be used to reconfigure number of qps<br>=C2=A0 =C2=A0 to a smaller value=
.<br>=C2=A0 =C2=A0 <br>=C2=A0 =C2=A0 Change-ID: I3e2df085276982603d86dfd794=
77c0ada8d30b8f<br>=C2=A0 =C2=A0 Signed-off-by: Anjali Singhai Jain &lt;<a h=
ref=3D"mailto:anjali.singhai@intel.com">anjali.singhai@intel.com</a>&gt;<br=
>=C2=A0 =C2=A0 Signed-off-by: Shannon Nelson &lt;<a href=3D"mailto:shannon.=
nelson@intel.com">shannon.nelson@intel.com</a>&gt;<br>=C2=A0 =C2=A0 Signed-=
off-by: Jeff Kirsher &lt;<a href=3D"mailto:jeffrey.t.kirsher@intel.com">jef=
frey.t.kirsher@intel.com</a>&gt;<br><br>diff --git a/drivers/net/ethernet/i=
ntel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c<br>--- =
a/drivers/net/ethernet/intel/i40e/i40e_main.c<br>+++ b/drivers/net/ethernet=
/intel/i40e/i40e_main.c<br>@@ -7252,23 +7259,27 @@<br>=C2=A0int i40e_reconf=
ig_rss_queues(struct i40e_pf *pf, int queue_count)<br>=C2=A0{<br>+ =C2=A0 s=
truct i40e_vsi *vsi =3D pf-&gt;vsi[pf-&gt;lan_vsi];<br>+ =C2=A0 int new_rss=
_size;<br>+<br>=C2=A0 =C2=A0 if (!(pf-&gt;flags &amp; I40E_FLAG_RSS_ENABLED=
))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>=C2=A0<br>- =C2=A0 queue_cou=
nt =3D min_t(int, queue_count, pf-&gt;rss_size_max);<br>+ =C2=A0 new_rss_si=
ze =3D min_t(int, queue_count, pf-&gt;rss_size_max);<br>=C2=A0<br>- =C2=A0 =
if (queue_count !=3D pf-&gt;rss_size) {<br>+ =C2=A0 if (queue_count !=3D vs=
i-&gt;num_queue_pairs) {<br>+ =C2=A0 =C2=A0 =C2=A0 vsi-&gt;req_queue_pairs =
=3D queue_count;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 i40e_prep_for_reset(pf);</d=
iv><div>....</div><div><a class=3D"gmail_plusreply" id=3D"plusReplyChip-1">=
+++</a></div><div><br></div><div><div>So accordingly we should have changed=
=C2=A0 to using &#39;vsi-&gt;num_queue_pairs&#39;=C2=A0 instead of &#39;pf-=
&gt;rss_size_max&#39;=C2=A0 to print maximum rss size. Currently it&#39;s=
=C2=A0 printing 64 as maximum RSS whereas the system supports more than tha=
t.=C2=A0 =C2=A0It&#39;s evident in my commit message kernel log which=C2=A0=
says:</div></div><div><div>=C2=A0 &quot;kernel: i40e 0000:af:00.1: User req=
uested queue count/HW max RSS count: =C2=A0104/64&quot;.=C2=A0=C2=A0</div><=
div><br></div><div>It should have been 104/104 &lt;&lt;&lt;&lt;</div><div><=
br></div><div></div></div><div>So I am a bit confused about whether I shoul=
d add a &#39;Fixes:&#39; tag=C2=A0 and even if I use a tag, which commit I =
should show here.</div><div><br></div><div><br></div><div><div><div dir=3D"=
ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div>thanks....<br></div><b><span style=3D"color:rgb(204,0,0)">Sur=
esh KS</span></b><br><div><span style=3D"color:rgb(11,83,148)"><a href=3D"m=
ailto:suresh2514@gmail.com" target=3D"_blank">suresh2514@gmail.com</a><br><=
/span></div><div><span style=3D"color:rgb(11,83,148)">91-7709100053</span><=
br><br></div></div></div></div><br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 23, 2024 at 2:21=E2=80=
=AFAM Simon Horman &lt;<a href=3D"mailto:horms@kernel.org">horms@kernel.org=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On Sat, Jan 20, 2024 at 12:58:06PM +0530, Suresh Kumar wrote:<br>
&gt; pf-&gt;rss_size_max is hardcoded and always prints max rss count as 64=
.<br>
&gt; <br>
&gt; Eg:<br>
&gt;=C2=A0 =C2=A0kernel: i40e 0000:af:00.1: User requested queue count/HW m=
ax RSS count:=C2=A0 104/64<br>
&gt; <br>
&gt; whereas=C2=A0 ethtool reports the correct value from &quot;vsi-&gt;num=
_queue_pairs&quot;<br>
&gt; <br>
&gt; Channel parameters for eno33:<br>
&gt; Pre-set maximums:<br>
&gt; RX:=C2=A0 =C2=A0 =C2=A0n/a<br>
&gt; TX:=C2=A0 =C2=A0 =C2=A0n/a<br>
&gt; Other:=C2=A0 =C2=A0 =C2=A0 1<br>
&gt; Combined:=C2=A0 =C2=A0104<br>
&gt; Current hardware settings:<br>
&gt; RX:=C2=A0 =C2=A0 =C2=A0n/a<br>
&gt; TX:=C2=A0 =C2=A0 =C2=A0n/a<br>
&gt; Other:=C2=A0 =C2=A0 =C2=A0 1<br>
&gt; Combined:=C2=A0 =C2=A0104=C2=A0 &lt;-------<br>
&gt; <br>
&gt; and is misleading.<br>
&gt; <br>
&gt; Change it to vsi-&gt;num_queue_pairs<br>
&gt; <br>
&gt; Signed-off-by: Suresh Kumar &lt;<a href=3D"mailto:suresh2514@gmail.com=
" target=3D"_blank">suresh2514@gmail.com</a>&gt;<br>
<br>
Hi Suresh,<br>
<br>
following-up on our earlier emails.<br>
<br>
I do think that if this it is a fix it should have a fixes tag.<br>
Which should be for the commit where the bug was first visible to users.<br=
>
</blockquote></div>

--0000000000009a9689060fa83261--
