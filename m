Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F9477393D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 11:08:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BA92610B6;
	Tue,  8 Aug 2023 09:08:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BA92610B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691485700;
	bh=7WjrYowH8+RecrkMQ5faaO25wetnh1q6GQTkm9WaM7A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZJWCXyBg9TWKbN0RdOjtjhyg+kxSm2RW/5gBXCLOhSdWU/55iV4enQ9lDAhvpIR6x
	 kq6ytkfFXOpdqvZ8ed+kr/fsqW7VVCSl93sv+9hSgINxOFYGyEO6KcA0GHXj5IQJ4C
	 qMKq6H9kG3ot7GLh59nPl6bCBF2cREyHn9b6jP4U1mc2ArOwnQUqEXkKT3D9BxG9o2
	 nQxFUDkxfC6T5Gb9SXA81LMgrm0B2c7I4XNMS52ZTpShrXSl/OmvszTL3PcrUlMbYB
	 tCkfV0muofVCwSN68nQu69nZpKmUcAcSU39DazAo1RO/CoxNmGXzBugvJutUJg1GcH
	 Mnlze8FxLquQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V47GinqZJlMm; Tue,  8 Aug 2023 09:08:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A8E7606DC;
	Tue,  8 Aug 2023 09:08:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A8E7606DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 653EB1BF28D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 09:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C14961099
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 09:08:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C14961099
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRQ2C_XUV98N for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 09:08:13 +0000 (UTC)
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE8A660759
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 09:08:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE8A660759
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-58451ecf223so58475597b3.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Aug 2023 02:08:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691485691; x=1692090491;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=YQmrlSF1etaTQwOr3qLYhfPTQagr4vCwIJuRXoehTGo=;
 b=VhEfa00wmThJrozKawBMe2A1eH6B2z1/PpZJcWUr9AElMBhnXWLD+acLhNaXdv0T3B
 lQzLIhV+DCUaWyU4FSnAgJEGirOuKzskv01U+yLZ52Ns70LC1K2c1QaEkTqXy20ig1Se
 T+bzfBACa/2yUwfbk+211ugzk2IL9B9wUeWKiw9kqB7BrWV+avytCAXL6QlTCFF6qIFx
 6xX0J4xRhsOWSSnU7QFE2qCbsgNtWsBOfk8EE4Z+K5Yg5tPb9EazBp2V4fEmbeBlmQLJ
 ba9HWVhdgIXgCxNec+wDRd/4VH08z4+ZcsiXTI6t+FJj4Bzd6xOyvqUdZvyK7LB2vqwF
 Hwyw==
X-Gm-Message-State: AOJu0YwxzZV/DQSpJyuqZ6wzgc6M4eEZVkTMayDWUM9rtwfh+2qCG3Zr
 58KctWjMZJ0uqBzUC3pP78jcsydf6YaIO8yyZp6zMQ==
X-Google-Smtp-Source: AGHT+IFkFqDAPqkMZL6EOB3nTaTaTclyG8LGaWCNTS0UTd9Fw91qMj4d/RD9Nwx9UORxt61p5bPLTt5CLy8a5USEoQk=
X-Received: by 2002:a0d:e64a:0:b0:559:f18d:ee94 with SMTP id
 p71-20020a0de64a000000b00559f18dee94mr12567880ywe.10.1691485691463; Tue, 08
 Aug 2023 02:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230807193324.4128292-1-vladimir.oltean@nxp.com>
In-Reply-To: <20230807193324.4128292-1-vladimir.oltean@nxp.com>
From: Jamal Hadi Salim <jhs@mojatatu.com>
Date: Tue, 8 Aug 2023 05:08:00 -0400
Message-ID: <CAM0EoM=UM4SO+OVngZPsA22hP2tufhdGwNoWOSdK_1gY=30bJA@mail.gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20221208.gappssmtp.com; s=20221208; t=1691485691; x=1692090491; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=YQmrlSF1etaTQwOr3qLYhfPTQagr4vCwIJuRXoehTGo=;
 b=yz3191m8r7PPh74O1VayV2JHqTo89Iee1CB/hBMLgWSXDLzuv0v0UI4WLcIdEQxPiU
 Avs238YH21ljuwZkDsdyiLvXSQRFrG7GGk/ZZwEkLK3Abt93rKnISh1WgImPY2LKof5H
 +hNd+nok43vRqo5Zr8dwD4P8pSdrrHwW3cehK7ysr3c36am4UME+Fd2qin6wEgk5u3bF
 WgxqHjfcPjdjtrVg+4CveeBD7IZVj/kM5lRE6A0ikC5hm2XMyHqsaTv427ItMA6DfhFf
 eHSzN11GCBzylXMnOA47cmzaHDCsTlNHxlb59gtKfoczdD8TBZKqlhCWvxuqYgcfdV/t
 CkjQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=mojatatu-com.20221208.gappssmtp.com
 header.i=@mojatatu-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=yz3191m8
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 00/11] Improve the taprio
 qdisc's relationship with its children
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 linux-kernel@vger.kernel.org, Peilin Ye <yepeilin.cs@gmail.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Maxim Georgiev <glipus@gmail.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============2484060317574202742=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2484060317574202742==
Content-Type: multipart/alternative; boundary="000000000000c86075060265b36f"

--000000000000c86075060265b36f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 7, 2023 at 3:37=E2=80=AFPM Vladimir Oltean <vladimir.oltean@nxp=
.com>
wrote:

> Changes in v4:
> - Clean up some leftovers in the ptp_mock driver.
> - Add CONFIG_PTP_1588_CLOCK_MOCK to
> tools/testing/selftests/tc-testing/config
> - Wait for taprio schedule to become operational in the selftests
>
> Changes in v3:
> Fix ptp_mock compilation as module, fix small mistakes in selftests.
>
> Changes in v2:
> It was requested to add test cases for the taprio software and offload
> modes.
> Those are patches 08 and 09.
>
> That implies adding taprio offload support to netdevsim, which is patch 0=
7.
>
> In turn, that implies adding a PHC driver for netdevsim, which is patch 0=
6.
>
> v1 at:
>
> https://lore.kernel.org/lkml/20230531173928.1942027-1-vladimir.oltean@nxp=
.com/
>
> Original message:
>
> Prompted by Vinicius' request to consolidate some child Qdisc
> dereferences in taprio:
> https://lore.kernel.org/netdev/87edmxv7x2.fsf@intel.com/
>
> I remembered that I had left some unfinished work in this Qdisc, namely
> commit af7b29b1deaa ("Revert "net/sched: taprio: make qdisc_leaf() see
> the per-netdev-queue pfifo child qdiscs"").
>
> This patch set represents another stab at, essentially, what's in the
> title. Not only does taprio not properly detect when it's grafted as a
> non-root qdisc, but it also returns incorrect per-class stats.
> Eventually, Vinicius' request is addressed too, although in a different
> form than the one he requested (which was purely cosmetic).
>
> Review from people more experienced with Qdiscs than me would be
> appreciated. I tried my best to explain what I consider to be problems.
> I am deliberately targeting net-next because the changes are too
> invasive for net - they were reverted from stable once already.
>
>
Thanks for getting those tdc tests in as well. For this patchset:
Acked-by: Jamal Hadi Salim <jhs@mojatatu.com>

cheers,
jamal

> Vladimir Oltean (11):
>   net/sched: taprio: don't access q->qdiscs[] in unoffloaded mode during
>     attach()
>   net/sched: taprio: keep child Qdisc refcount elevated at 2 in offload
>     mode
>   net/sched: taprio: try again to report q->qdiscs[] to qdisc_leaf()
>   net/sched: taprio: delete misleading comment about preallocating child
>     qdiscs
>   net/sched: taprio: dump class stats for the actual q->qdiscs[]
>   net: ptp: create a mock-up PTP Hardware Clock driver
>   net: netdevsim: use mock PHC driver
>   net: netdevsim: mimic tc-taprio offload
>   selftests/tc-testing: add ptp_mock Kconfig dependency
>   selftests/tc-testing: test that taprio can only be attached as root
>   selftests/tc-testing: verify that a qdisc can be grafted onto a taprio
>     class
>
>  MAINTAINERS                                   |   7 +
>  drivers/net/Kconfig                           |   1 +
>  drivers/net/netdevsim/ethtool.c               |  11 ++
>  drivers/net/netdevsim/netdev.c                |  38 +++-
>  drivers/net/netdevsim/netdevsim.h             |   2 +
>  drivers/ptp/Kconfig                           |  11 ++
>  drivers/ptp/Makefile                          |   1 +
>  drivers/ptp/ptp_mock.c                        | 175 ++++++++++++++++++
>  include/linux/ptp_mock.h                      |  38 ++++
>  net/sched/sch_taprio.c                        |  68 ++++---
>  tools/testing/selftests/tc-testing/config     |   3 +-
>  .../tc-testing/taprio_wait_for_admin.sh       |  16 ++
>  .../tc-testing/tc-tests/qdiscs/taprio.json    | 102 +++++++++-
>  13 files changed, 443 insertions(+), 30 deletions(-)
>  create mode 100644 drivers/ptp/ptp_mock.c
>  create mode 100644 include/linux/ptp_mock.h
>  create mode 100755
> tools/testing/selftests/tc-testing/taprio_wait_for_admin.sh
>
> --
> 2.34.1
>
>

--000000000000c86075060265b36f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 7, 2023 at 3:37=E2=80=AFP=
M Vladimir Oltean &lt;<a href=3D"mailto:vladimir.oltean@nxp.com">vladimir.o=
ltean@nxp.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">Changes in v4:<br>
- Clean up some leftovers in the ptp_mock driver.<br>
- Add CONFIG_PTP_1588_CLOCK_MOCK to tools/testing/selftests/tc-testing/conf=
ig<br>
- Wait for taprio schedule to become operational in the selftests<br>
<br>
Changes in v3:<br>
Fix ptp_mock compilation as module, fix small mistakes in selftests.<br>
<br>
Changes in v2:<br>
It was requested to add test cases for the taprio software and offload mode=
s.<br>
Those are patches 08 and 09.<br>
<br>
That implies adding taprio offload support to netdevsim, which is patch 07.=
<br>
<br>
In turn, that implies adding a PHC driver for netdevsim, which is patch 06.=
<br>
<br>
v1 at:<br>
<a href=3D"https://lore.kernel.org/lkml/20230531173928.1942027-1-vladimir.o=
ltean@nxp.com/" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.or=
g/lkml/20230531173928.1942027-1-vladimir.oltean@nxp.com/</a><br>
<br>
Original message:<br>
<br>
Prompted by Vinicius&#39; request to consolidate some child Qdisc<br>
dereferences in taprio:<br>
<a href=3D"https://lore.kernel.org/netdev/87edmxv7x2.fsf@intel.com/" rel=3D=
"noreferrer" target=3D"_blank">https://lore.kernel.org/netdev/87edmxv7x2.fs=
f@intel.com/</a><br>
<br>
I remembered that I had left some unfinished work in this Qdisc, namely<br>
commit af7b29b1deaa (&quot;Revert &quot;net/sched: taprio: make qdisc_leaf(=
) see<br>
the per-netdev-queue pfifo child qdiscs&quot;&quot;).<br>
<br>
This patch set represents another stab at, essentially, what&#39;s in the<b=
r>
title. Not only does taprio not properly detect when it&#39;s grafted as a<=
br>
non-root qdisc, but it also returns incorrect per-class stats.<br>
Eventually, Vinicius&#39; request is addressed too, although in a different=
<br>
form than the one he requested (which was purely cosmetic).<br>
<br>
Review from people more experienced with Qdiscs than me would be<br>
appreciated. I tried my best to explain what I consider to be problems.<br>
I am deliberately targeting net-next because the changes are too<br>
invasive for net - they were reverted from stable once already.<br>
<br></blockquote><div><br></div><div>Thanks for getting those tdc tests in =
as well. For this patchset:</div><div>Acked-by: Jamal Hadi Salim &lt;<a hre=
f=3D"mailto:jhs@mojatatu.com">jhs@mojatatu.com</a>&gt;</div><div><br></div>=
<div>cheers,</div><div>jamal=C2=A0</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
Vladimir Oltean (11):<br>
=C2=A0 net/sched: taprio: don&#39;t access q-&gt;qdiscs[] in unoffloaded mo=
de during<br>
=C2=A0 =C2=A0 attach()<br>
=C2=A0 net/sched: taprio: keep child Qdisc refcount elevated at 2 in offloa=
d<br>
=C2=A0 =C2=A0 mode<br>
=C2=A0 net/sched: taprio: try again to report q-&gt;qdiscs[] to qdisc_leaf(=
)<br>
=C2=A0 net/sched: taprio: delete misleading comment about preallocating chi=
ld<br>
=C2=A0 =C2=A0 qdiscs<br>
=C2=A0 net/sched: taprio: dump class stats for the actual q-&gt;qdiscs[]<br=
>
=C2=A0 net: ptp: create a mock-up PTP Hardware Clock driver<br>
=C2=A0 net: netdevsim: use mock PHC driver<br>
=C2=A0 net: netdevsim: mimic tc-taprio offload<br>
=C2=A0 selftests/tc-testing: add ptp_mock Kconfig dependency<br>
=C2=A0 selftests/tc-testing: test that taprio can only be attached as root<=
br>
=C2=A0 selftests/tc-testing: verify that a qdisc can be grafted onto a tapr=
io<br>
=C2=A0 =C2=A0 class<br>
<br>
=C2=A0MAINTAINERS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 =C2=A07 +<br>
=C2=A0drivers/net/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A01 +<br>
=C2=A0drivers/net/netdevsim/ethtool.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 11 ++<br>
=C2=A0drivers/net/netdevsim/netdev.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 38 +++-<br>
=C2=A0drivers/net/netdevsim/netdevsim.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0drivers/ptp/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 11 ++<br>
=C2=A0drivers/ptp/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A01 +<br>
=C2=A0drivers/ptp/ptp_mock.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 175 ++++++++++++++++++<br>
=C2=A0include/linux/ptp_mock.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 38 ++++<br>
=C2=A0net/sched/sch_taprio.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 68 ++++---<br>
=C2=A0tools/testing/selftests/tc-testing/config=C2=A0 =C2=A0 =C2=A0|=C2=A0 =
=C2=A03 +-<br>
=C2=A0.../tc-testing/taprio_wait_for_admin.sh=C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 16 ++<br>
=C2=A0.../tc-testing/tc-tests/qdiscs/taprio.json=C2=A0 =C2=A0 | 102 +++++++=
++-<br>
=C2=A013 files changed, 443 insertions(+), 30 deletions(-)<br>
=C2=A0create mode 100644 drivers/ptp/ptp_mock.c<br>
=C2=A0create mode 100644 include/linux/ptp_mock.h<br>
=C2=A0create mode 100755 tools/testing/selftests/tc-testing/taprio_wait_for=
_admin.sh<br>
<br>
-- <br>
2.34.1<br>
<br>
</blockquote></div></div>

--000000000000c86075060265b36f--

--===============2484060317574202742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2484060317574202742==--
