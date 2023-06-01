Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D624671A1DE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 17:07:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 758C281FBF;
	Thu,  1 Jun 2023 15:07:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 758C281FBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685632055;
	bh=i67DdFvB1KcBgtHPkHHOewAjgD0BMWAIFi5DOgGQPcE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VpTIurdDqpJC8sAIlQavq2RZRbSX3YdF6v8hN6rYxRCl+wkq5Oc+1u5y76W9TOmjE
	 T/4TDaBQulfNLAxExC0qQpkQndtkhiLaL4g3ZZFzBIVjs5zXkST95OHe29Uewst6ZH
	 zAKXxY2RYHTeNMThGvsXpXqJo101o1it0bzFbvknEv2kb83kJ0fsTu5upOIlWng0gk
	 COzRaLM1oH2l9S4brqSa4mCl26AyeVPvwyr4Ht+N7oelbQwM49080YQBZFMko6Lx4m
	 Y2c0zEFKCeobgBkwWLEc2but2msjVrHjpb0U7CDewQqv/E6Vjy7uRmFCaqDZLXwLrN
	 +N/TomgTBWGow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G6I0MtRbrhRF; Thu,  1 Jun 2023 15:07:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 536BC83530;
	Thu,  1 Jun 2023 15:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 536BC83530
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5AFD1BF852
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 05:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB03F403B4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 05:55:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB03F403B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uo24fMGP1D9K for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 05:55:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2178840101
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com
 [IPv6:2607:f8b0:4864:20::f30])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2178840101
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 05:55:16 +0000 (UTC)
Received: by mail-qv1-xf30.google.com with SMTP id
 6a1803df08f44-6263b2526a0so5291346d6.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 22:55:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685598915; x=1688190915;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=pmuR1dL8BN3S/VBquLiRUhN53n3pNEx4e85rlgu9ZQU=;
 b=ISCsk858OFRIS6ap6X4vWCHGUqSFY5IPhKYrkF1cflhQgvIj+ygKEUjT9OPaFrj297
 46vfhVANGBiUxN8cqQRIpV1HHxKeup6gZVj01Q4BBZ22o/mHWKWjmwVXscpLbzgtHuT8
 3YG486pu3Aweuem+3tPTlyaelVSgDbweMQ6aGTzvNxyZ/hm88Epe28p5fhLdrmBYuqsN
 BnMICkRz/DgmxRhVLei/tAZ8u93RmwSRcNfi5UOL9OuKp6kJDnI7EokzgLSMQL68ie9Z
 7IHLXpit5F/f3oT6dfwpWi15XzZFBFT9WnimCV0peD7ztDIplkpCF6/ghTBICfhTuEdQ
 RQ9w==
X-Gm-Message-State: AC+VfDzQJ5ZR2E0onm+0TdzrZKDRgVv87rkVjvQGvLkTXpCCw19+hBm9
 xWW6idrhwqoc5PXLUo1Bd6sfSD0Pt3xnPNiDgqHN2LGL6O6tkwhzS7pM1Q==
X-Google-Smtp-Source: ACHHUZ4qdNLeG5vVhyH7n1eupcWCzDRI9xIPuPA1J2gEarxS7lKc4CgWot7gEKKGiCs+aPjA/EQ2ydymB6pm0qmSQFA=
X-Received: by 2002:a05:6214:29ce:b0:626:f3d:9e37 with SMTP id
 gh14-20020a05621429ce00b006260f3d9e37mr7474274qvb.35.1685598914833; Wed, 31
 May 2023 22:55:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230531090805.3959-1-eggcar.luan@gmail.com>
 <92180324-fa55-5427-839e-d555ac5a6cd7@molgen.mpg.de>
In-Reply-To: <92180324-fa55-5427-839e-d555ac5a6cd7@molgen.mpg.de>
From: egg car <eggcar.luan@gmail.com>
Date: Thu, 1 Jun 2023 13:55:03 +0800
Message-ID: <CACMC4jY=c8kBwxRjLL++ro=Zz1O54h5Y6ADU6x+46pgN8XhkpA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailman-Approved-At: Thu, 01 Jun 2023 15:07:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685598915; x=1688190915;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=pmuR1dL8BN3S/VBquLiRUhN53n3pNEx4e85rlgu9ZQU=;
 b=WVh/hk0XzqcZT1+uW9aJ20vALUHKezA0SQU1QYhEjdQqauy+6c53fsOf05KMFJ0o1q
 T5/01BpCh/Vg8rnLPq8/3Mvlkyp3xZmPnzRaIilkQxgGbk01UkdM9ieph4NsMiyTnSZd
 v8T9JjJ7e8GQS4poitlukf/Y4F/8NSaxU+iAwZjTPq3I4PC/0OMtfxUe0ecUE9bn+pF4
 qZUnmIBWcx7YdNALNzQFqCBCbPEBO62dU61esLVji8BPw3VUfUPvB0dY32qSK21hy51T
 NmEy5DHX3BMDwstATawp14L/T+TvlNpoomDDdi1irWcRZAjHU8Jk5kQe+5QGZHXcBmWM
 yh8w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=WVh/hk0X
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix extts capture value format
 for 82580/i354/i350
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============3353684133478305878=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3353684133478305878==
Content-Type: multipart/alternative; boundary="0000000000008d704605fd0b1488"

--0000000000008d704605fd0b1488
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Paul,

> It=E2=80=99d be great, if you added a paragraph how to reproduce the issu=
e.

I have tested an i350 NIC with a 1PPS signal input to a SDP pin, running
'ts2phc'
program from linuxptp project, and found that the 1PPS timestamps reading
out are
raw register value in resolution of 1ns and a maximum range of 2^40 ns,
thus about 1099 s.
It was supposed to be in TAI timestamp format.

Sorry I'm new to kernel development, should I make a new patch to add a
paragraph
in the commit information?

> I do not see the variable *flags* being used.

This patch has a typo, please ignore this one, I have submitted a new one
that fixed this.

I have tested the patch on a Ubuntu server 22.04 machine with kernel
version 5.19.17, then I generated
the patch in the 'net-queue' development repo. I just handwritten the
changes in the dev repo, made a
silly mistake.

Apolotize for that, I'll be more careful next time.

--0000000000008d704605fd0b1488
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Paul,<br><br>&gt; It=E2=80=99d be great, if you added=
 a paragraph how to reproduce the issue.<br><br>I have tested an i350 NIC w=
ith a 1PPS signal input to a SDP pin, running &#39;ts2phc&#39;<br>program f=
rom linuxptp project, and found that the 1PPS timestamps reading out are<br=
>raw register value in resolution of 1ns and a maximum range of 2^40 ns, th=
us about 1099 s.<br>It was supposed to be in TAI timestamp format.<br><br>S=
orry I&#39;m new to kernel development, should I make a new patch to add a =
paragraph<br>in the commit information?<br><br>&gt; I do not see the variab=
le *flags* being used.<br><br>This patch has a typo, please ignore this one=
, I have submitted a new one that fixed this.<br><br>I have tested the patc=
h on a Ubuntu server 22.04 machine with kernel version 5.19.17, then I gene=
rated<br>the patch in the &#39;net-queue&#39; development repo. I just hand=
written the changes in the dev repo, made a<br>silly mistake.<br><br>Apolot=
ize for that, I&#39;ll be more careful next time.<br></div>

--0000000000008d704605fd0b1488--

--===============3353684133478305878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3353684133478305878==--
