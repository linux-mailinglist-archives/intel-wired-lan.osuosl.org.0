Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B04235057DE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 15:55:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CE5F6122A;
	Mon, 18 Apr 2022 13:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a17e4MZLn__b; Mon, 18 Apr 2022 13:55:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BABF610F1;
	Mon, 18 Apr 2022 13:55:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E3641BF57F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 15:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 090D041731
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 15:52:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kmBJ8cL0ewI8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Apr 2022 15:52:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 398CB4171F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 15:52:26 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id g18so20048591ejc.10
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 08:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WB0OkA4npUVlTHKxP5L/zecMJKXRJHu4yHb6ykPI+d0=;
 b=p1PdgWeV4/8OWZSYyJ2Gtl7Sb29XmosvPG966HCgE+yOaNpBXl37cLieNQh1YhCimK
 cfjREeBGHHB7QtLvlG2M7NPMi038s27WDZ0PyHroXUbzv8mgsj8Qhdb/F8TEqVYIKDvg
 tN2I6HQfvs2KlGV6UrdM8caLjg8HNpylVyGPM+5YIoS2WwN63G32fgwrsxy2k66zCBgy
 Bri21J62bTzs2JnbGPL282vrgIBnHBLUgIuY3xW1qVAqJTdBaTnOL018zIF1KpddLUp4
 4Ah+hh5gs2LzYujyxZoo+L3hfQCXXhiJI0eiTbhDXRppsWwKweBe2G3/IYbK4AkHMquQ
 LBYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WB0OkA4npUVlTHKxP5L/zecMJKXRJHu4yHb6ykPI+d0=;
 b=e2ryKof2hwyjUWfq55wxnGIaHmD1vneiglVaYUjMcce4+j1BagD9L4x/YVf/Kdq/yZ
 MCA7P5XIiX4kHek8qMgKKQ8UosBqykZV6Ni8kzdvSQmr0m+5lcj9pUqhMn1vOswRqdKW
 wFq/WuftdGh9+TXuj3ZMg/JmxpUccxM9fAVceZ7Qn89x5HIzIAkHXQ+vOw4+rvLlLLdo
 6VFc1obnM4SNt+pjd+c5AMMt29Twm78zuVedR7zK8nJX36a9E7d8mketKrbQowt4Z0jn
 HpcyJ0aSpJpIvhoda8/CXVOUlJvnHxGzlOkrVj1ELYkjGc5eg2JmHrwaeCmypjUXS3Ga
 hYbw==
X-Gm-Message-State: AOAM532D1X9/vwbzHvV6Cz9ilex32EZa4MwtJWVXxKl6Gc82b0GvNLkG
 22bKFqBvg+q12Wb3pO6RKgA=
X-Google-Smtp-Source: ABdhPJwxtNuBtqOCmrmCxvK+GvsLdC4aeyXb2uo3u3eVpeTvHsXFV6Kh5xcnPCNk6rHSsh2eMiP5cg==
X-Received: by 2002:a17:906:dc8b:b0:6ef:86e8:777 with SMTP id
 cs11-20020a170906dc8b00b006ef86e80777mr1451459ejc.326.1650124343944; 
 Sat, 16 Apr 2022 08:52:23 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it.
 [79.50.86.254]) by smtp.gmail.com with ESMTPSA id
 fy11-20020a1709069f0b00b006e8b68c92d8sm2752978ejc.162.2022.04.16.08.52.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 08:52:22 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>
Date: Sat, 16 Apr 2022 17:52:20 +0200
Message-ID: <1897617.PYKUYFuaPT@leap>
In-Reply-To: <alpine.DEB.2.22.394.2204161608230.3501@hadrien>
References: <20220416111457.5868-1-eng.alaamohamedsoliman.am@gmail.com>
 <857a2d22-5d0f-99d6-6686-98d50e4491d5@gmail.com>
 <alpine.DEB.2.22.394.2204161608230.3501@hadrien>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Apr 2022 13:54:51 +0000
Subject: Re: [Intel-wired-lan] [PATCH v3] intel: igb: igb_ethtool.c: Convert
 kmap() to kmap_local_page()
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
Cc: outreachy@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@inria.fr>,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 ira.weiny@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On sabato 16 aprile 2022 16:09:58 CEST Julia Lawall wrote:
> =

> On Sat, 16 Apr 2022, Alaa Mohamed wrote:
> =

> >
> > On =D9=A1=D9=A6/=D9=A4/=D9=A2=D9 =D9=A2=D9=A2 =D9=A1=D9=A3:=D9=A3=D9=A1=
, Julia Lawall wrote:
> > >
> > > On Sat, 16 Apr 2022, Alaa Mohamed wrote:
> > >
> > > > Convert kmap() to kmap_local_page()
> > > >
> > > > With kmap_local_page(), the mapping is per thread, CPU local and =

not
> > > > globally visible.
> > > It's not clearer.
> > I mean this " fix kunmap_local path value to take address of the mapped =

page"
> > be more clearer
> > > This is a general statement about the function.  You
> > > need to explain why it is appropriate to use it here.  Unless it is =

the
> > > case that all calls to kmap should be converted to call =

kmap_local_page.
> > It's required to convert all calls kmap to kmap_local_page. So, I don't =

what
> > should the commit message be?
> =

> If all calls should be changed then you can also say that.

If all calls should be changed with no regards to the surrounding contexts =

and special situations, we can just make an automated s/kmap()/
kmap_local_page()/ or something else similar :)

Thanks,

Fabio M. De Francesco

> =

> I thought that a previous commit on the outreachy list made some =

arguments
> about how the affacted value was just allocated and thus could not yet be
> shared.
> =

> julia



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
