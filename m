Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F53D84E19F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 14:13:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F7A748AB4;
	Thu,  8 Feb 2024 13:13:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P3M48b1Of8Qg; Thu,  8 Feb 2024 13:13:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9D0148D88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707398034;
	bh=qPXEBhfpF1CN4Qdxme+Q5NHy1FcQJHMMeeC+SrNpk/A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XdKWKksgqbCXSpsrpxSjTCLTiumFb62y6qZDAK09c3y45Of9FIXfFzNad/PqYYvKF
	 MbvLl3RKQ4mO9vhwG2Bfoh1vzPEb44Kc8juI/TAcI/0GMz6pjjiQM68mz/wermf4tl
	 +yBtbkqOw4kEi+3PP+3hcfdX/sfnK01wBc/hFxxtu2g+iRJZFDWxmAkb0pP5K5fNu2
	 MNBPpC5nsqT8U8VdZCGqVxjoBjtI63MFuDVEAdKdvpv1b4brH9n5/sjTWMDma077dY
	 l3actpkU577z9COiB+tnm3w2mUagK/a1sSJiGqfXN5Yxp5ZysViefPEkW3nd9yF2++
	 oPRJe4ptyho/w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9D0148D88;
	Thu,  8 Feb 2024 13:13:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D4091BF403
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 13:13:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4515B41D5D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 13:13:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qUJ6CMDPO94v for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 13:13:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112e; helo=mail-yw1-x112e.google.com;
 envelope-from=suresh2514@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B189741AB6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B189741AB6
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B189741AB6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 13:13:50 +0000 (UTC)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-604966eaf6eso15739407b3.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Feb 2024 05:13:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707398029; x=1708002829;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qPXEBhfpF1CN4Qdxme+Q5NHy1FcQJHMMeeC+SrNpk/A=;
 b=TWXMnkwkM96HmYWPdeTkCBFASbzQO0ekMBHpx3r1++YTD9Of2dRj7hEwFWx0o8kfef
 EJKUUBmtj7DZDHRQL9hKFnfcsQvLxekpYINWMhEf1NpKCcyuGZUeuxSfERtlqwI7M5We
 ZsJYrUyKxdGbVX5M3UGKLLlWXjdcLRW4yKquBTvx75oXYPTO8EXqx6rDofLywH5WnpgH
 T1kbT6h+ocH4dasg7tdlhfGW4BGdGBCQS7SZDqPr5oRAk8Ux9dKWhE8DCq9mUeyAu4+h
 9BI90pM0JPp2SNyBUJ2yEqzfskMP0TDwqa+0Jjrjhaylf3fKoHRrWFShHVuqj8uguL3O
 jOSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUBxyw5qqsZIe1/zyIMQgcQIMkOV5O8i2r4NMVTuO+3D8HaRT/qvJr3Idu0OpKxABJCWwzqOGWAzQkstsd3Q+E2AmKn1HnhA09fWQJ4GKLsAQ==
X-Gm-Message-State: AOJu0Yxakx2Uwebm1kTtD9r+rSL2jveQAejBbeIViCukurg61J5UMOHE
 zkJL31o7JZfkQP7x4Ea+Lh1evdvTGgoGUHARoBYm4QrSqWql7EGa2suU6S9SMMRynPU3oVAACQR
 r4icDJc+e8RS526jJ2Bjm5+HNn98=
X-Google-Smtp-Source: AGHT+IEr/zmWeF82dE3ZLpar5KxiIQm3qz3JmDJNIFsWw7ma3T6JES9/faO88VoGDpMNGyrV+mSQ0nr3Na1OkuE5QZs=
X-Received: by 2002:a81:ed07:0:b0:5ee:6471:53e2 with SMTP id
 k7-20020a81ed07000000b005ee647153e2mr7868380ywm.23.1707398029452; Thu, 08 Feb
 2024 05:13:49 -0800 (PST)
MIME-Version: 1.0
References: <20240120072806.8554-1-suresh2514@gmail.com>
 <e524c57e-fe43-4582-bb05-c50f3e529848@intel.com>
 <SJ0PR11MB5866EAA3CBAF4E28842305D5E57D2@SJ0PR11MB5866.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB5866EAA3CBAF4E28842305D5E57D2@SJ0PR11MB5866.namprd11.prod.outlook.com>
From: suresh ks <suresh2514@gmail.com>
Date: Thu, 8 Feb 2024 18:43:38 +0530
Message-ID: <CABAyFk5E6Ga5kvPaL2u5mJNLGUN-jSZxmhQZ6BUZwEmRfrOXMw@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: multipart/alternative; boundary="0000000000000929460610de955d"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707398029; x=1708002829; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=qPXEBhfpF1CN4Qdxme+Q5NHy1FcQJHMMeeC+SrNpk/A=;
 b=BPvLwfAT+wt9KuKIIO0vNbk4g7cDAKLPZsaQlX6VLFhL2vW8k6CYraIWNaA63fWOoH
 6TP1CiEUzvbxayFirrl31YB1HK9zas112C80QrNSF0+0fe0xHhy7k5b/83ZCC0pAaUyJ
 r66YbJ81o+CZ0YwMvo/SrXH7dJQoiTmLLpvwJLdWIPiobDlkjGVGNilzs+7Jus9OCRNb
 haViYyMcAA8xSmwVBJDeLKRQmw99cjgkZHvKexmrbeLAEAK9TZR/f+oYgc2wiwy+FwQ4
 nNERuYu1UrTpmJHaNpZ3Nl4w2VvPiYuBGukKU5fWs5qMzz+W8r/pFRVCsOCJdsCT2w/f
 ANsg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=BPvLwfAT
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--0000000000000929460610de955d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for checking.  Do I need to do anything to reject this patch? If
yes, please let me know.
This is first sucht experience for me.


Would like to get some understanding on below kernel logging for which I
suggested the patch.

The ethtool reports maximum supported queue as 104 and when I set it, it
takes that value also. But kernel logs:

  "kernel: i40e 0000:af:00.1: User requested queue count/HW max RSS count:
 104/64".

So does it meas the firmware supports only 64, but we can set 104 or
something like that ?

Is it any virtual queue set by driver as per number of CPUs ?.  What I
observe is, system has 104 CPUs.
I have another such machine  where maximum supported queue mentioned by
ethtool is as per number of CPUs. But here again, the 'max RSS' is reported
less by kernel.



thanks....
*Suresh KS*
suresh2514@gmail.com
91-7709100053



On Tue, Jan 30, 2024 at 2:03=E2=80=AFPM Loktionov, Aleksandr <
aleksandr.loktionov@intel.com> wrote:

> > -----Original Message-----
> > From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> > Sent: Tuesday, January 30, 2024 9:26 AM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > Subject: Fwd: [PATCH iwl v2] i40e: print correct hw max rss count
> > in kernel ring buffer
> >
> > FWD to Alex
> >
> >
> > -------- Forwarded Message --------
> > Subject: [PATCH iwl v2] i40e: print correct hw max rss count in
> > kernel ring buffer
> > Date: Sat, 20 Jan 2024 12:58:06 +0530
> > From: Suresh Kumar <suresh2514@gmail.com>
> > To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
> > davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
> > pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
> > netdev@vger.kernel.org, linux-kernel@vger.kernel.org
> > CC: Suresh Kumar <suresh2514@gmail.com>
> >
> > pf->rss_size_max is hardcoded and always prints max rss count as
> > 64.
> >
> > Eg:
> >    kernel: i40e 0000:af:00.1: User requested queue count/HW max RSS
> > count:  104/64
> >
> > whereas  ethtool reports the correct value from "vsi-
> > >num_queue_pairs"
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
>
> Please reject this patch, it breaks driver logging.
> The massage clearly states that it dumps max rss queues number that f/w
> supports.
>
> Thank you
>
> > Signed-off-by: Suresh Kumar <suresh2514@gmail.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index d5519af34657..f5c1ec190f7e 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -12524,7 +12524,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf
> > *pf, int queue_count)
> >               i40e_pf_config_rss(pf);
> >       }
> >       dev_info(&pf->pdev->dev, "User requested queue count/HW max
> > RSS
> > count:  %d/%d\n",
> > -              vsi->req_queue_pairs, pf->rss_size_max);
> > +              vsi->req_queue_pairs, vsi->num_queue_pairs);
> >       return pf->alloc_rss_size;
> >   }
> >   -- 2.43.0
> >
>
>

--0000000000000929460610de955d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Thanks for checking.=C2=A0 Do I nee=
d to do anything to reject this patch? If yes, please let me know.</div><di=
v>This is first sucht experience for me.</div><div><br></div><div><br></div=
><div>Would like to get some understanding on below=C2=A0kernel logging for=
 which I suggested the patch.</div><div><br></div><div>The ethtool reports =
maximum supported queue as 104 and when I set it, it takes that value also.=
 But kernel logs:</div><div><br></div><div>=C2=A0 &quot;kernel: i40e 0000:a=
f:00.1: User requested queue count/HW max RSS count: =C2=A0104/64&quot;.=C2=
=A0=C2=A0<br></div><div><br></div><div>So does it meas the firmware support=
s only 64, but we can set 104 or something like that ?</div><div><br></div>=
<div>Is it any virtual queue set by driver as per number of CPUs ?.=C2=A0 W=
hat I observe is, system has 104 CPUs.</div><div>I have another such machin=
e=C2=A0 where maximum supported queue mentioned by ethtool is as per number=
 of CPUs. But here again, the &#39;max RSS&#39; is reported less by kernel.=
</div><div><br></div><div><br></div><div><br></div><div><div><div dir=3D"lt=
r" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D=
"ltr"><div>thanks....<br></div><b><span style=3D"color:rgb(204,0,0)">Suresh=
 KS</span></b><br><div><span style=3D"color:rgb(11,83,148)"><a href=3D"mail=
to:suresh2514@gmail.com" target=3D"_blank">suresh2514@gmail.com</a><br></sp=
an></div><div><span style=3D"color:rgb(11,83,148)">91-7709100053</span><br>=
<br></div></div></div></div><br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 30, 2024 at 2:03=E2=80=AF=
PM Loktionov, Aleksandr &lt;<a href=3D"mailto:aleksandr.loktionov@intel.com=
">aleksandr.loktionov@intel.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">&gt; -----Original Message-----<br>
&gt; From: Kitszel, Przemyslaw &lt;<a href=3D"mailto:przemyslaw.kitszel@int=
el.com" target=3D"_blank">przemyslaw.kitszel@intel.com</a>&gt;<br>
&gt; Sent: Tuesday, January 30, 2024 9:26 AM<br>
&gt; To: Loktionov, Aleksandr &lt;<a href=3D"mailto:aleksandr.loktionov@int=
el.com" target=3D"_blank">aleksandr.loktionov@intel.com</a>&gt;<br>
&gt; Subject: Fwd: [PATCH iwl v2] i40e: print correct hw max rss count<br>
&gt; in kernel ring buffer<br>
&gt; <br>
&gt; FWD to Alex<br>
&gt; <br>
&gt; <br>
&gt; -------- Forwarded Message --------<br>
&gt; Subject: [PATCH iwl v2] i40e: print correct hw max rss count in<br>
&gt; kernel ring buffer<br>
&gt; Date: Sat, 20 Jan 2024 12:58:06 +0530<br>
&gt; From: Suresh Kumar &lt;<a href=3D"mailto:suresh2514@gmail.com" target=
=3D"_blank">suresh2514@gmail.com</a>&gt;<br>
&gt; To: <a href=3D"mailto:jesse.brandeburg@intel.com" target=3D"_blank">je=
sse.brandeburg@intel.com</a>, <a href=3D"mailto:anthony.l.nguyen@intel.com"=
 target=3D"_blank">anthony.l.nguyen@intel.com</a>,<br>
&gt; <a href=3D"mailto:davem@davemloft.net" target=3D"_blank">davem@davemlo=
ft.net</a>, <a href=3D"mailto:edumazet@google.com" target=3D"_blank">edumaz=
et@google.com</a>, <a href=3D"mailto:kuba@kernel.org" target=3D"_blank">kub=
a@kernel.org</a>,<br>
&gt; <a href=3D"mailto:pabeni@redhat.com" target=3D"_blank">pabeni@redhat.c=
om</a>, <a href=3D"mailto:intel-wired-lan@lists.osuosl.org" target=3D"_blan=
k">intel-wired-lan@lists.osuosl.org</a>,<br>
&gt; <a href=3D"mailto:netdev@vger.kernel.org" target=3D"_blank">netdev@vge=
r.kernel.org</a>, <a href=3D"mailto:linux-kernel@vger.kernel.org" target=3D=
"_blank">linux-kernel@vger.kernel.org</a><br>
&gt; CC: Suresh Kumar &lt;<a href=3D"mailto:suresh2514@gmail.com" target=3D=
"_blank">suresh2514@gmail.com</a>&gt;<br>
&gt; <br>
&gt; pf-&gt;rss_size_max is hardcoded and always prints max rss count as<br=
>
&gt; 64.<br>
&gt; <br>
&gt; Eg:<br>
&gt;=C2=A0 =C2=A0 kernel: i40e 0000:af:00.1: User requested queue count/HW =
max RSS<br>
&gt; count:=C2=A0 104/64<br>
&gt; <br>
&gt; whereas=C2=A0 ethtool reports the correct value from &quot;vsi-<br>
&gt; &gt;num_queue_pairs&quot;<br>
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
<br>
Please reject this patch, it breaks driver logging.<br>
The massage clearly states that it dumps max rss queues number that f/w sup=
ports.<br>
<br>
Thank you<br>
<br>
&gt; Signed-off-by: Suresh Kumar &lt;<a href=3D"mailto:suresh2514@gmail.com=
" target=3D"_blank">suresh2514@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-<br>
&gt;=C2=A0 =C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; b/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; index d5519af34657..f5c1ec190f7e 100644<br>
&gt; --- a/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; @@ -12524,7 +12524,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf<br=
>
&gt; *pf, int queue_count)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i40e_pf_config_r=
ss(pf);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dev_info(&amp;pf-&gt;pdev-&gt;dev, &quot;Use=
r requested queue count/HW max<br>
&gt; RSS<br>
&gt; count:=C2=A0 %d/%d\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vsi-&gt;req_queue_pa=
irs, pf-&gt;rss_size_max);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vsi-&gt;req_queue_pa=
irs, vsi-&gt;num_queue_pairs);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return pf-&gt;alloc_rss_size;<br>
&gt;=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0-- 2.43.0<br>
&gt; <br>
<br>
</blockquote></div>

--0000000000000929460610de955d--
