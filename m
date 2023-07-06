Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEE274A357
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 19:44:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E36E541595;
	Thu,  6 Jul 2023 17:43:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E36E541595
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688665438;
	bh=uuX90i78+pcsP1dtQk2N3un4G/+zjy19HkygIJJJw8g=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WFQibJNDnMFWoeZWRMeoIPwO57ZHtmCO0izswWgqlciO7r9E4+UuIZfwPANzGYyjd
	 +UFjH2G8L3wnyKezInRdjBa/M8md5jD3Ym40ia8uT0sMEANUKRLDWRAZQAEi6LOTYA
	 v4ljQV+8wMoNLnZqKDTkdFZ8BN0PXm9x4pl/GoCoP/9uB6Rlf6H0c8SHu/V13L2a86
	 IpNbywSqky539tnr5NWe7WuCmskKhnPN+H0V1GorW81lfGAe/w2qbuCUxAFMJYYs4G
	 yoi+Rkub8p7vWTqWbCrH+2qAsWpKskRV0hIdbBBEiGfsNqss/39cjwWVm8HZVL6unX
	 MJAXoIkXwF7YQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lEE-RkDZo0ze; Thu,  6 Jul 2023 17:43:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBC4440AA5;
	Thu,  6 Jul 2023 17:43:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBC4440AA5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46FB11BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 17:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B76F40AA5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 17:43:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B76F40AA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HaM2STqK96hK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 17:43:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4456940003
Received: from mail-ua1-x92a.google.com (mail-ua1-x92a.google.com
 [IPv6:2607:f8b0:4864:20::92a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4456940003
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 17:43:49 +0000 (UTC)
Received: by mail-ua1-x92a.google.com with SMTP id
 a1e0cc1a2514c-78a5384a5daso335498241.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jul 2023 10:43:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688665428; x=1691257428;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Lre5wVO4GUonISh9R6JXTKoWyWcO0Gb85CdkBCQN+Sw=;
 b=I5JigTxuLZ9UoM6AqofNs0ONKtLa5luXnxlsjBav8ooMX+7df0S1y/D4XcB1WBcP+e
 50qrAcKC5bcCtrQVJSt/fc3TCLhPmRuv4hgj1Px4J77COB7MSPIsyNl/EuSZl7+IAfLf
 +3FZyLrkvu06YZtwO67FY8/hV7FKqEGYRxvf6BiIE2bv0cjeqNjpsYn+KMNDbFxUUsRC
 r+EEdbQJnceYsvtIoe5ERuyTZBy8og/GObToOL+55pf2ysVJzMLgpTu72e25RqeiUJBl
 A/KzjI3EcrPCH7+iovCKJfrGS8QHGf3ipf/qOfdjwIH/wwlfnIc8WGtksjMFRd2guczh
 Dzmw==
X-Gm-Message-State: ABy/qLZjjOlbWPzgTNpusHS8d5OmhTpFs0RWHQsBocDP3k6KEDdu1lD9
 EtB3TXNxT94MudQRCE4m2VfY8y+xLHZfGEduhPI=
X-Google-Smtp-Source: APBJJlH7pbB5/razHoqd4x/hOfzG+cEWWZ/MJQAJa0xydH242Sl4+c7T3JZdQ8zWxqmjHs/Mz48mKl9t0FCQxeSa4H4=
X-Received: by 2002:a67:b646:0:b0:443:5b1f:12e4 with SMTP id
 e6-20020a67b646000000b004435b1f12e4mr1233918vsm.9.1688665427949; Thu, 06 Jul
 2023 10:43:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
 <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
 <e7e49ed5-09e2-da48-002d-c7eccc9f9451@intel.com>
 <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
 <22aad588-47d6-6441-45b2-0e685ed84c8d@intel.com>
 <CAA85sZti1=ET=Tc3MoqCX0FqthHLf6MSxGNAhJUNiMms1TfoKA@mail.gmail.com>
 <CAA85sZvn04k7=oiTQ=4_C8x7pNEXRWzeEStcaXvi3v63ah7OUQ@mail.gmail.com>
 <ffb554bfa4739381d928406ad24697a4dbbbe4a2.camel@redhat.com>
 <CAA85sZunA=tf0FgLH=MNVYq3Edewb1j58oBAoXE1Tyuy3GJObg@mail.gmail.com>
 <CAA85sZsH1tMwLtL=VDa5=GBdVNWgifvhK+eG-hQg69PeSxBWkg@mail.gmail.com>
 <CAA85sZu=CzJx9QD87-vehOStzO9qHUSWk6DXZg3TzJeqOV5-aw@mail.gmail.com>
 <0a040331995c072c56fce58794848f5e9853c44f.camel@redhat.com>
 <CAA85sZuuwxtAQcMe3LHpFVeF7y-bVoHtO1nukAa2+NyJw3zcyg@mail.gmail.com>
 <CAA85sZurk7-_0XGmoCEM93vu3vbqRgPTH4QVymPR5BeeFw6iFg@mail.gmail.com>
 <486ae2687cd2e2624c0db1ea1f3d6ca36db15411.camel@redhat.com>
 <CAA85sZsJEZK0g0fGfH+toiHm_o4pdN+Wo0Wq9fgsUjHXGxgxQA@mail.gmail.com>
 <CAA85sZs4KkfVojx=vxbDaWhWRpxiHc-RCc2OLD2c+VefRjpTfw@mail.gmail.com>
 <5688456234f5d15ea9ca0f000350c28610ed2639.camel@redhat.com>
 <CAA85sZvT-vAHQooy8+i0-bTxgv4JjkqMorLL1HjkXK6XDKX41w@mail.gmail.com>
 <CAA85sZs2biYueZsbDqdrMyYfaqH6hnSMpymgbsk=b3W1B7TNRA@mail.gmail.com>
 <CAA85sZs_H3Dc-mYnj8J5VBEwUJwbHUupP+U-4eG20nfAHBtv4w@mail.gmail.com>
 <92a4d42491a2c219192ae86fa04b579ea3676d8c.camel@redhat.com>
 <CAA85sZvtspqfep+6rH8re98-A6rHNNWECvwqVaM=r=0NSSsGzA@mail.gmail.com>
 <dfbbe91a9c0abe8aba2c00afd3b7f7d6af801d8e.camel@redhat.com>
 <CAA85sZuQh0FMoGDFVyOad6G1UB9keodd3OCZ4d4r+xgXDArcVA@mail.gmail.com>
 <062061fc4d4d3476e3b0255803b726956686eb19.camel@redhat.com>
 <CAA85sZv9KCmw8mAzK4T-ORXB48wuLF+YXTYSWxkBhv3k_-wzcA@mail.gmail.com>
 <CAA85sZt6ssXRaZyq4awM0yTLFk62Gxbgw-0+bTKWsHwQvVzZXQ@mail.gmail.com>
 <d9bf21296a4691ac5aca11ccd832765b262f7088.camel@redhat.com>
 <CAA85sZsidN4ig=RaQ34PYFjnZGU-=zqR=r-5za=G4oeAtxDA7g@mail.gmail.com>
 <14cd6a50bd5de13825017b75c98cb3115e84acc1.camel@redhat.com>
 <CAA85sZuZLg+L7Sr51PPaOkPKbbiywXbbKzhTyjaw12_S6CsZHQ@mail.gmail.com>
 <c6cf7b4c0a561700d2015c970d52fc9d92b114c7.camel@redhat.com>
 <CAA85sZvZ_X=TqCXaPui0PDLq2pp5dw_uhga+wcXgBqudrLP9bQ@mail.gmail.com>
 <67ff0f7901e66d1c0d418c48c9a071068b32a77d.camel@redhat.com>
 <CANn89i+F=R71refT8K_8hPaP+uWn15GeHz+FTMYU=VPTG24WFA@mail.gmail.com>
 <c4e40b45b41d0476afd8989d31e6bab74c51a72a.camel@redhat.com>
 <CAA85sZs_R3W42m8YmXO-k08bPow7zKj_eOxceEB_3MJveGMZ7A@mail.gmail.com>
 <a46bb3de011002c2446a6d836aaddc9f6bce71bc.camel@redhat.com>
In-Reply-To: <a46bb3de011002c2446a6d836aaddc9f6bce71bc.camel@redhat.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Thu, 6 Jul 2023 19:43:37 +0200
Message-ID: <CAA85sZt9VuhEqQ24QmkRoteT4WKc+d-AY570NXRcWbNsOa9CMg@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688665428; x=1691257428;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Lre5wVO4GUonISh9R6JXTKoWyWcO0Gb85CdkBCQN+Sw=;
 b=hrKKVjwauEF/vznwDVULP7i9a68J7Po81xJ6tsR+90D+0qiye2gnfTsUgF0d5X3Mrr
 frUpkVil4s64MExAWb2GuY8262D4RCWA0esFGlaEsBeKrncExEXW8AS+BvYZ96qJWgQN
 w2l6PE28j+fAC4kcTkGU0ZPzNHKnZ4h+IeJ+XdI/Pnz0VvN6LJRiUp9K72ehCj1g1Cyr
 awX9uNh3seTkESQ3Mkl2snjML1u/Sv/GhX6iy98Wmv6LzTL57zSPzY3PJYZvUF83Qv5E
 T2OZ6HyaQhZgchBFC1xWP1jhOsILHSaSwtsu8sZf/+aa/tL9CllMXqHuINhG6AuFnp3U
 AI+g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=hrKKVjwa
Subject: Re: [Intel-wired-lan] bug with rx-udp-gro-forwarding offloading?
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
Cc: Willem de Bruijn <willemb@google.com>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: multipart/mixed; boundary="===============2384616786550542225=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2384616786550542225==
Content-Type: multipart/alternative; boundary="000000000000fa404c05ffd50ee2"

--000000000000fa404c05ffd50ee2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 6, 2023, 19:10 Paolo Abeni <pabeni@redhat.com> wrote:

> On Thu, 2023-07-06 at 18:17 +0200, Ian Kumlien wrote:
> > On Thu, Jul 6, 2023 at 4:04=E2=80=AFPM Paolo Abeni <pabeni@redhat.com> =
wrote:
> > >
> > > On Thu, 2023-07-06 at 15:56 +0200, Eric Dumazet wrote:
> > > > On Thu, Jul 6, 2023 at 3:02=E2=80=AFPM Paolo Abeni <pabeni@redhat.c=
om>
> wrote:
> > > > >
> > > > > On Thu, 2023-07-06 at 13:27 +0200, Ian Kumlien wrote:
> > > > > > On Thu, Jul 6, 2023 at 10:42=E2=80=AFAM Paolo Abeni <pabeni@red=
hat.com>
> wrote:
> > > > > > > On Wed, 2023-07-05 at 15:58 +0200, Ian Kumlien wrote:
> > > > > > > > On Wed, Jul 5, 2023 at 3:29=E2=80=AFPM Paolo Abeni <
> pabeni@redhat.com> wrote:
> > > > > > > > >
> > > > > > > > > On Wed, 2023-07-05 at 13:32 +0200, Ian Kumlien wrote:
> > > > > > > > > > On Wed, Jul 5, 2023 at 12:28=E2=80=AFPM Paolo Abeni <
> pabeni@redhat.com> wrote:
> > > > > > > > > > >
> > > > > > > > > > > On Tue, 2023-07-04 at 16:27 +0200, Ian Kumlien wrote:
> > > > > > > > > > > > More stacktraces.. =3D)
> > > > > > > > > > > >
> > > > > > > > > > > > cat bug.txt | ./scripts/decode_stacktrace.sh vmlinu=
x
> > > > > > > > > > > > [  411.413767] ------------[ cut here ]------------
> > > > > > > > > > > > [  411.413792] WARNING: CPU: 9 PID: 942 at
> include/net/ud     p.h:509
> > > > > > > > > > > > udpv6_queue_rcv_skb (./include/net/udp.h:509
> net/ipv6/udp.c:800
> > > > > > > > > > > > net/ipv6/udp.c:787)
> > > > > > > > > > >
> > > > > > > > > > > I'm really running out of ideas here...
> > > > > > > > > > >
> > > > > > > > > > > This is:
> > > > > > > > > > >
> > > > > > > > > > >         WARN_ON_ONCE(UDP_SKB_CB(skb)->partial_cov);
> > > > > > > > > > >
> > > > > > > > > > > sort of hint skb being shared (skb->users > 1) while
> enqueued in
> > > > > > > > > > > multiple places (bridge local input and br
> forward/flood to tun
> > > > > > > > > > > device). I audited the bridge mc flooding code, and I
> could not find
> > > > > > > > > > > how a shared skb could land into the local input path=
.
> > > > > > > > > > >
> > > > > > > > > > > Anyway the other splats reported here and in later
> emails are
> > > > > > > > > > > compatible with shared skbs.
> > > > > > > > > > >
> > > > > > > > > > > The above leads to another bunch of questions:
> > > > > > > > > > > * can you reproduce the issue after disabling
> 'rx-gro-list' on the
> > > > > > > > > > > ingress device? (while keeping 'rx-udp-gro-forwarding=
'
> on).
> > > > > > > > > >
> > > > > > > > > > With rx-gro-list off, as in never turned on, everything
> seems to run fine
> > > > > > > > > >
> > > > > > > > > > > * do you have by chance qdiscs on top of the VM tun
> devices?
> > > > > > > > > >
> > > > > > > > > > default qdisc is fq
> > > > > > > > >
> > > > > > > > > IIRC libvirt could reset the qdisc to noqueue for the
> owned tun
> > > > > > > > > devices.
> > > > > > > > >
> > > > > > > > > Could you please report the output of:
> > > > > > > > >
> > > > > > > > > tc -d -s qdisc show dev <tun dev name>
> > > > > > > >
> > > > > > > > I don't have these set:
> > > > > > > > CONFIG_NET_SCH_INGRESS
> > > > > > > > CONFIG_NET_SCHED
> > > > > > > >
> > > > > > > > so tc just gives an error...
> > > > > > >
> > > > > > > The above is confusing. AS CONFIG_NET_SCH_DEFAULT depends on
> > > > > > > CONFIG_NET_SCHED, you should not have a default qdisc, too ;)
> > > > > >
> > > > > > Well it's still set in sysctl - dunno if it fails
> > > > > >
> > > > > > > Could you please share your kernel config?
> > > > > >
> > > > > > Sure...
> > > > > >
> > > > > > As a side note, it hasn't crashed - no traces since we did the
> last change
> > > > >
> > > > > It sounds like an encouraging sing! (last famous words...). I'll
> wait 1
> > > > > more day, than I'll submit formally...
> > > > >
> > > > > > For reference, this is git diff on the running kernels source
> tree:
> > > > > > diff --git a/net/core/skbuff.c b/net/core/skbuff.c
> > > > > > index cea28d30abb5..1b2394ebaf33 100644
> > > > > > --- a/net/core/skbuff.c
> > > > > > +++ b/net/core/skbuff.c
> > > > > > @@ -4270,6 +4270,17 @@ struct sk_buff *skb_segment_list(struct
> sk_buff *skb,
> > > > > >
> > > > > >         skb_push(skb, -skb_network_offset(skb) + offset);
> > > > > >
> > > > > > +       if (WARN_ON_ONCE(skb_shared(skb))) {
> > > > > > +               skb =3D skb_share_check(skb, GFP_ATOMIC);
> > > > > > +               if (!skb)
> > > > > > +                       goto err_linearize;
> > > > > > +       }
> > > > > > +
> > > > > > +       /* later code will clear the gso area in the shared inf=
o
> */
> > > > > > +       err =3D skb_header_unclone(skb, GFP_ATOMIC);
> > > > > > +       if (err)
> > > > > > +               goto err_linearize;
> > > > > > +
> > > > > >         skb_shinfo(skb)->frag_list =3D NULL;
> > > > > >
> > > > > >         while (list_skb) {
> > > > >
> > > > > ...the above check only, as the other 2 should only catch-up side
> > > > > effects of lack of this one. In any case the above address a real
> > > > > issue, so we likely want it no-matter-what.
> > > > >
> > > >
> > > > Interesting, I wonder if this could also fix some syzbot reports
> > > > Willem and I are investigating.
> > > >
> > > > Any idea of when the bug was 'added' or 'revealed' ?
> > >
> > > The issue specifically addressed above should be present since
> > > frag_list introduction commit 3a1296a38d0c ("net: Support GRO/GSO
> > > fraglist chaining."). AFAICS triggering it requires non trivial setup=
 -
> > > mcast rx on bridge with frag-list enabled and forwarding to multiple
> > > ports - so perhaps syzkaller found it later due to improvements on it=
s
> > > side ?!?
> >
> > I'm also a bit afraid that we just haven't triggered it - i don't see
> > any warnings or anything... :/
>
> Let me try to clarify: I hope/think that this chunk alone:
>
> +       /* later code will clear the gso area in the shared info */
> +       err =3D skb_header_unclone(skb, GFP_ATOMIC);
> +       if (err)
> +               goto err_linearize;
> +
>         skb_shinfo(skb)->frag_list =3D NULL;
>
>         while (list_skb) {
>
> does the magic/avoids the skb corruptions -> it everything goes well,
> you should not see any warnings at all. Running 'nstat' in the DUT
> should give some hints about reaching the relevant code paths.


I'll check when I get home

But I thought that:
if (WARN_ON_ONCE(skb_shared(skb)))

Would trigger at some point



> Cheers,
>
> Paolo
>
>

--000000000000fa404c05ffd50ee2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Jul 6, 2023, 19:10 Paolo Abeni &lt;<a href=3D"=
mailto:pabeni@redhat.com">pabeni@redhat.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">On Thu, 2023-07-06 at 18:17 +0200, Ian Kumlien wrot=
e:<br>
&gt; On Thu, Jul 6, 2023 at 4:04=E2=80=AFPM Paolo Abeni &lt;<a href=3D"mail=
to:pabeni@redhat.com" target=3D"_blank" rel=3D"noreferrer">pabeni@redhat.co=
m</a>&gt; wrote:<br>
&gt; &gt; <br>
&gt; &gt; On Thu, 2023-07-06 at 15:56 +0200, Eric Dumazet wrote:<br>
&gt; &gt; &gt; On Thu, Jul 6, 2023 at 3:02=E2=80=AFPM Paolo Abeni &lt;<a hr=
ef=3D"mailto:pabeni@redhat.com" target=3D"_blank" rel=3D"noreferrer">pabeni=
@redhat.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; On Thu, 2023-07-06 at 13:27 +0200, Ian Kumlien wrote:<b=
r>
&gt; &gt; &gt; &gt; &gt; On Thu, Jul 6, 2023 at 10:42=E2=80=AFAM Paolo Aben=
i &lt;<a href=3D"mailto:pabeni@redhat.com" target=3D"_blank" rel=3D"norefer=
rer">pabeni@redhat.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; On Wed, 2023-07-05 at 15:58 +0200, Ian Kumlie=
n wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; On Wed, Jul 5, 2023 at 3:29=E2=80=AFPM P=
aolo Abeni &lt;<a href=3D"mailto:pabeni@redhat.com" target=3D"_blank" rel=
=3D"noreferrer">pabeni@redhat.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On Wed, 2023-07-05 at 13:32 +0200, =
Ian Kumlien wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On Wed, Jul 5, 2023 at 12:28=
=E2=80=AFPM Paolo Abeni &lt;<a href=3D"mailto:pabeni@redhat.com" target=3D"=
_blank" rel=3D"noreferrer">pabeni@redhat.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On Tue, 2023-07-04 at 16:=
27 +0200, Ian Kumlien wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; More stacktraces.. =
=3D)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; cat bug.txt | ./scri=
pts/decode_stacktrace.sh vmlinux<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; [=C2=A0 411.413767] =
------------[ cut here ]------------<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; [=C2=A0 411.413792] =
WARNING: CPU: 9 PID: 942 at include/net/ud=C2=A0 =C2=A0 =C2=A0p.h:509<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; udpv6_queue_rcv_skb =
(./include/net/udp.h:509 net/ipv6/udp.c:800<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; net/ipv6/udp.c:787)<=
br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; I&#39;m really running ou=
t of ideas here...<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; This is:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0WARN_ON_ONCE(UDP_SKB_CB(skb)-&gt;partial_cov);<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; sort of hint skb being sh=
ared (skb-&gt;users &gt; 1) while enqueued in<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; multiple places (bridge l=
ocal input and br forward/flood to tun<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; device). I audited the br=
idge mc flooding code, and I could not find<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; how a shared skb could la=
nd into the local input path.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Anyway the other splats r=
eported here and in later emails are<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; compatible with shared sk=
bs.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; The above leads to anothe=
r bunch of questions:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; * can you reproduce the i=
ssue after disabling &#39;rx-gro-list&#39; on the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; ingress device? (while ke=
eping &#39;rx-udp-gro-forwarding&#39; on).<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; With rx-gro-list off, as in ne=
ver turned on, everything seems to run fine<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; * do you have by chance q=
discs on top of the VM tun devices?<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; default qdisc is fq<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; IIRC libvirt could reset the qdisc =
to noqueue for the owned tun<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; devices.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Could you please report the output =
of:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; tc -d -s qdisc show dev &lt;tun dev=
 name&gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; I don&#39;t have these set:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; CONFIG_NET_SCH_INGRESS<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; CONFIG_NET_SCHED<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; so tc just gives an error...<br>
&gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; The above is confusing. AS CONFIG_NET_SCH_DEF=
AULT depends on<br>
&gt; &gt; &gt; &gt; &gt; &gt; CONFIG_NET_SCHED, you should not have a defau=
lt qdisc, too ;)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; Well it&#39;s still set in sysctl - dunno if it fa=
ils<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; Could you please share your kernel config?<br=
>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; Sure...<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; As a side note, it hasn&#39;t crashed - no traces =
since we did the last change<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; It sounds like an encouraging sing! (last famous words.=
..). I&#39;ll wait 1<br>
&gt; &gt; &gt; &gt; more day, than I&#39;ll submit formally...<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; For reference, this is git diff on the running ker=
nels source tree:<br>
&gt; &gt; &gt; &gt; &gt; diff --git a/net/core/skbuff.c b/net/core/skbuff.c=
<br>
&gt; &gt; &gt; &gt; &gt; index cea28d30abb5..1b2394ebaf33 100644<br>
&gt; &gt; &gt; &gt; &gt; --- a/net/core/skbuff.c<br>
&gt; &gt; &gt; &gt; &gt; +++ b/net/core/skbuff.c<br>
&gt; &gt; &gt; &gt; &gt; @@ -4270,6 +4270,17 @@ struct sk_buff *skb_segment=
_list(struct sk_buff *skb,<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0skb_push(skb, -sk=
b_network_offset(skb) + offset);<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (WARN_ON_ONCE(skb_s=
hared(skb))) {<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0skb =3D skb_share_check(skb, GFP_ATOMIC);<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0if (!skb)<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto err_linearize;<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0/* later code will cle=
ar the gso area in the shared info */<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D skb_header_unc=
lone(skb, GFP_ATOMIC);<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err)<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0goto err_linearize;<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0skb_shinfo(skb)-&=
gt;frag_list =3D NULL;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (list_skb) =
{<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; ...the above check only, as the other 2 should only cat=
ch-up side<br>
&gt; &gt; &gt; &gt; effects of lack of this one. In any case the above addr=
ess a real<br>
&gt; &gt; &gt; &gt; issue, so we likely want it no-matter-what.<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Interesting, I wonder if this could also fix some syzbot rep=
orts<br>
&gt; &gt; &gt; Willem and I are investigating.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Any idea of when the bug was &#39;added&#39; or &#39;reveale=
d&#39; ?<br>
&gt; &gt; <br>
&gt; &gt; The issue specifically addressed above should be present since<br=
>
&gt; &gt; frag_list introduction commit 3a1296a38d0c (&quot;net: Support GR=
O/GSO<br>
&gt; &gt; fraglist chaining.&quot;). AFAICS triggering it requires non triv=
ial setup -<br>
&gt; &gt; mcast rx on bridge with frag-list enabled and forwarding to multi=
ple<br>
&gt; &gt; ports - so perhaps syzkaller found it later due to improvements o=
n its<br>
&gt; &gt; side ?!?<br>
&gt; <br>
&gt; I&#39;m also a bit afraid that we just haven&#39;t triggered it - i do=
n&#39;t see<br>
&gt; any warnings or anything... :/<br>
<br>
Let me try to clarify: I hope/think that this chunk alone:<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* later code will clear the gso area in the sh=
ared info */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D skb_header_unclone(skb, GFP_ATOMIC);<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto err_linearize;=
<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 skb_shinfo(skb)-&gt;frag_list =3D NULL;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 while (list_skb) {<br>
<br>
does the magic/avoids the skb corruptions -&gt; it everything goes well,<br=
>
you should not see any warnings at all. Running &#39;nstat&#39; in the DUT<=
br>
should give some hints about reaching the relevant code paths.</blockquote>=
</div></div><div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;ll check wh=
en I get home</div><div dir=3D"auto"><br></div><div dir=3D"auto">But I thou=
ght that:</div><div dir=3D"auto">if (WARN_ON_ONCE(skb_shared(skb)))</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">Would trigger at some point</di=
v><div dir=3D"auto"></div><div dir=3D"auto"><br></div><div dir=3D"auto"><br=
></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><br>
Cheers,<br>
<br>
Paolo<br>
<br>
</blockquote></div></div></div>

--000000000000fa404c05ffd50ee2--

--===============2384616786550542225==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2384616786550542225==--
