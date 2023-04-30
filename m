Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF6B6F2981
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Apr 2023 18:30:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 141CB81B7B;
	Sun, 30 Apr 2023 16:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 141CB81B7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682872198;
	bh=cKLC2UbivTismVvn/B7Zp/KEymxpHy1pNm6NZo7peBw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ddeQT68NhotZ0KLhdg3tJ1Rey5sx0yey9/kNFtxyI5sblRBl7ajhp7lEWquOyBfU7
	 Cu0KQMeh5h0O3IR83hj3K8kxiRSZp9isJ6AB/67sRXRR+Y7aQATBKfmkvXjlzc6xLw
	 2XViz8qgOpzUjgw+qlkxpHDUD42+kO/3QfBgHvhXISBiHHzUVKNvP6oqd4XaRiG4zY
	 Dhq6cmX+pdHPsT2kbwCWkO501gUiBMqjZIvA/G26M2hrlXG2Bscnk5H6UUd5qBzUuR
	 6tDI9wUsoGYzbbBcve7h3Fdv/X21gkuvHzB/rBnPYTGoDDwcjgjcS4zU6eHq+A7tHm
	 Nay59sadGZy0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mv_5desFMFGP; Sun, 30 Apr 2023 16:29:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E266681345;
	Sun, 30 Apr 2023 16:29:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E266681345
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 413391BF47A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 16:29:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2364B415FC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 16:29:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2364B415FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7pJbjwultR7h for <intel-wired-lan@lists.osuosl.org>;
 Sun, 30 Apr 2023 16:29:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC312415E7
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC312415E7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 16:29:50 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id
 4fb4d7f45d1cf-50bc3a2d333so921705a12.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 09:29:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682872188; x=1685464188;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=mksp2EbXNW2wgcwhANvHUI82fFo1K/yFsluJZOmKsIM=;
 b=N2wYhqZxCYHpP003pSOKlBxdEmOIhwC4gjp8QFSIcQGQnhp3KBt1ZO6Vu2jqzbAAQS
 vGHQuXCJhmgdXL55+OKYy5V+417L1MQiZEfBruKaZKnxOdz624VDEy6TCrgrLmsmFpCr
 P7lUXo28dBdh4NTqDdgYFhadcdZOQENM1ekCR60oOZ2QncP+eEDtZHCvjPsUDZpIgTz3
 O5ti/lPcscEfO92Ovup7apoPLFg2eJoY4mytTlwfpkypsvEOW5CMNGIHoy0uWWzIHff1
 pdS4LwlTqkQh2QC/7E8EoDysCGLoAsHxNXfWGxvVtAG4ZIjq5kw/EEKZYO63UG1LKaBi
 1oGg==
X-Gm-Message-State: AC+VfDwwUA7FacikaO8xNCp7DiINmf2U7MFNJp6fWWoC5UGyYSara3yG
 kXXjdU2JkVJOLEjKif5BMPzVNBoLTejYOF4b5LA=
X-Google-Smtp-Source: ACHHUZ6kMlUFNA1MwtGIJisEEpyMGEZ13nvEvZsSr2PkjlD5Fnfp/9BZsnlsltElMntOLkdhYcIeNJaTzO99bPZDJAw=
X-Received: by 2002:aa7:db81:0:b0:504:a248:3741 with SMTP id
 u1-20020aa7db81000000b00504a2483741mr3565902edt.14.1682872188211; Sun, 30 Apr
 2023 09:29:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZuTsq4cKMV0=pTP_=mgb5CxYXGxNDpmF1NCfrmpvCpJdQ@mail.gmail.com>
In-Reply-To: <CAA85sZuTsq4cKMV0=pTP_=mgb5CxYXGxNDpmF1NCfrmpvCpJdQ@mail.gmail.com>
From: Jesse Brandeburg <jesse.brandeburg@gmail.com>
Date: Sun, 30 Apr 2023 09:29:37 -0700
Message-ID: <CAEuXFEzaFAzp_Lx-8pphyNsi=Cjff40CPTbBHD=oJo_WmKmgYA@mail.gmail.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682872188; x=1685464188;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=mksp2EbXNW2wgcwhANvHUI82fFo1K/yFsluJZOmKsIM=;
 b=KjlgDDTJMygsHsoMcroXcF8SnAQJ5fi97o9Xhur/RvZQ/wh/KAnhq3G1MqWxoPfs8g
 5f3vcN5sINcg3sIqo4oPRzvVg0dRZvixDiFxx4S5DrVLKlSxJvlBdREjMLXb6GmeUDKw
 nTvi1MSdlcb1nMjdiJbAVVtRcF+hzG767bVJ+gCS1zvk46Ipv2skCa4JqHfLhJ2kwA3w
 ZXeiN6EWaFQnm6DjYLH2p6uO/8z+0U7+8wmnbHPXILNHYoQDpVmY1JseN4PbER0FrlhK
 QLU9DdiOT+j8W/2ykZt2M4zRlo9LwraJ9zQ4aazq8J6LEyoRuTfz3nXmRus7jRFGtsaB
 V83A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=KjlgDDTJ
Subject: Re: [Intel-wired-lan] [ixgbe] regression: jumbo frames not working
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: multipart/mixed; boundary="===============2918902968496722674=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2918902968496722674==
Content-Type: multipart/alternative; boundary="000000000000fb189205fa9036a8"

--000000000000fb189205fa9036a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 28, 2023 at 2:13 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:

> Hi,
>
> Since upgrading to kenel 6.3, I've hit an issue...
>
> I historically use 9k jumboframes on my network as such:
> 3: eno1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP
> group default qlen 1000


Thanks for the report! Our team is investigating, hopefully we will be able
to reproduce and get back to you this week.

A detail that would help is lspci -nn -d ::0200 to get a list of the
adapter type you=E2=80=99re using in case it=E2=80=99s relevant.


>
> But now the largest frame i can send is 2030 bytes (ie ping -s 2002)...
>
> I don't see any warning from the XDP subsystem so I almost assume
> that's not it...
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>

--000000000000fb189205fa9036a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Fri, Apr 28, 2023 at 2:13 PM Ian Kumlien &lt;<a href=
=3D"mailto:ian.kumlien@gmail.com" target=3D"_blank">ian.kumlien@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
Since upgrading to kenel 6.3, I&#39;ve hit an issue...<br>
<br>
I historically use 9k jumboframes on my network as such:<br>
3: eno1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc mq state UP=
<br>
group default qlen 1000</blockquote><div dir=3D"auto"><br></div><div dir=3D=
"auto">Thanks for the report! Our team is investigating, hopefully we will =
be able to reproduce and get back to you this week.=C2=A0</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">A detail that would help is lspci -nn -d =
::0200 to get a list of the adapter type you=E2=80=99re using in case it=E2=
=80=99s relevant.=C2=A0</div><div dir=3D"auto"><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex" dir=3D"auto"><br>
<br>
But now the largest frame i can send is 2030 bytes (ie ping -s 2002)...<br>
<br>
I don&#39;t see any warning from the XDP subsystem so I almost assume<br>
that&#39;s not it...<br>
_______________________________________________<br>
Intel-wired-lan mailing list<br>
<a href=3D"mailto:Intel-wired-lan@osuosl.org" target=3D"_blank">Intel-wired=
-lan@osuosl.org</a><br>
<a href=3D"https://lists.osuosl.org/mailman/listinfo/intel-wired-lan" rel=
=3D"noreferrer" target=3D"_blank">https://lists.osuosl.org/mailman/listinfo=
/intel-wired-lan</a><br>
</blockquote></div></div>
</div>

--000000000000fb189205fa9036a8--

--===============2918902968496722674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2918902968496722674==--
