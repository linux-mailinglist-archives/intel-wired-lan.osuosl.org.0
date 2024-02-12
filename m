Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009EE850CDE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Feb 2024 03:10:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8EBE41579;
	Mon, 12 Feb 2024 02:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gCJ-3aMNOPFV; Mon, 12 Feb 2024 02:10:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD74840BDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707703842;
	bh=6XqNeV8HICRTclL6GDae/YFFVPmhHEsvis2v55t51iI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4ytowCTSDVAco1lfc/UPbz3k2XpWmctiTjZepe+EX4eInfU9dyBBCqurFUHPSqUeR
	 Q+TLz6oX3/hyoYLK0YPI+rp1dBa8yqaX3TM60lO2UhftltCsTiicGh3Mu+hynv+RyX
	 fKWTpvzelqqM8BOu5DRrUh6XvXmCzZyAk2UzbXbmkqIQWWnCIkTmQaYSdWpk8L6wkc
	 uQiZMCrBdKXw2JOpW9nmUW6NOzyjP8k5ZpHunXy8L6GnWgsf+yKcqfRjCBYHYTM4IY
	 5Rjsj3tLYEjR1zbhfKIEDA0NKhmE2A1NxqD/P4SSjvlSo+aDOzQR8tcKN/M1AwdX8c
	 uStnKdn22gXyQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD74840BDD;
	Mon, 12 Feb 2024 02:10:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7073A1BF420
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 02:10:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59AA960AF4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 02:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T7iezNgswJeW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Feb 2024 02:10:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112d; helo=mail-yw1-x112d.google.com;
 envelope-from=hayatake396@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9C11B60A92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C11B60A92
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com
 [IPv6:2607:f8b0:4864:20::112d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C11B60A92
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 02:10:39 +0000 (UTC)
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-60492a2593fso25592387b3.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Feb 2024 18:10:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707703838; x=1708308638;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6XqNeV8HICRTclL6GDae/YFFVPmhHEsvis2v55t51iI=;
 b=NuSFOoXJmhYy1gdhNYExrfy69rCimnAo6y11PFwJ8Uz0KYCWTGUopjN+OJm4joeLcG
 ivaNKFX5Q/KLELeuC6QHexV+5UjDmPIzUrbHgIcV6Pv5PlvzskXn4g8mKwNWoChm8+sM
 aQWq7QCY8f5cQZaUd6WLAIvPndUKFhTjbfvIJaG7matZml98QgslXFFTKWEdr2WoIn4i
 lOUC8c+QDk4RjwhIUgGduHeMQVF2ZYZzBXigI8/DdpAURPihaA8C5K0R8jecDn1Kl0Va
 boWtC6s48sRwoMTKH6rrgpmTmlaf0B9K2aUmpCR4jpYCek9cr4EJAM5EsD/bBxEvjodP
 HezQ==
X-Gm-Message-State: AOJu0Yx++TwUwrhsQDtkqu2EJoJrMOXg8s1wglLKlnE+mzjfqy4VYgv+
 9TUMPgH0C90mdoIvr7AsBUi+qAXYm19LK78FESm8SNbE3tStk6lJxvn7VQ3bOvaR+9sa4siq4Ht
 YCpZCynkFK6+D+k3+M/XFJmtJ8Nk=
X-Google-Smtp-Source: AGHT+IHZVH2z4XzjxzYa7ZY/aj3j/96lF0YHhg6eswXwPgd8cDrQWDvUvHENdPBsxgVmuErpURN2XDu9u5q+rMSUgn0=
X-Received: by 2002:a0d:e242:0:b0:5ee:a910:107 with SMTP id
 l63-20020a0de242000000b005eea9100107mr5487218ywe.21.1707703838313; Sun, 11
 Feb 2024 18:10:38 -0800 (PST)
MIME-Version: 1.0
References: <20240131134621.1017530-1-hayatake396@gmail.com>
 <20240131131258.47c05b7e@kernel.org>
 <CADFiAc+y_SXGtVqZkLoiWw-YBArMovMkuWw3X596QDwEtdBJ2g@mail.gmail.com>
 <CADFiAcK_XjLNjzZuF+OZDWjZA4tFB8VgeYXVJHR8+N3XryGxwA@mail.gmail.com>
 <20240208072351.3a806dda@kernel.org>
 <CADFiAc+i9i29SL0PM8gzmDG6o=ARS6fSrTPKNyqh9RLmWWB78A@mail.gmail.com>
 <20240209173838.GH1533412@kernel.org>
In-Reply-To: <20240209173838.GH1533412@kernel.org>
From: Takeru Hayasaka <hayatake396@gmail.com>
Date: Mon, 12 Feb 2024 11:10:27 +0900
Message-ID: <CADFiAcLCv=r8pyEYR_46LfTWdmmb+ssN99nKxB2EdNXf3guE_w@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707703838; x=1708308638; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=6XqNeV8HICRTclL6GDae/YFFVPmhHEsvis2v55t51iI=;
 b=E4II/+RNvXb0ff1DVYTBvLv8GE6pIDLb0EVbFANvl3Xyy1fSALaqqJfgDEURpwh1Mf
 nNzoZ9ezIO9DoWd0YvdVID5yo/CkHvbgf7GtpggSgs8KbveugoKtOJ4iAcVZNONe67fK
 XPJmhNj77ubMeaUmyxIVXwBCvCngOO2AtdRL7Md8odNqFQGBZ9NWVzF2KZchVLyA+5Z1
 yxMiYKcjIB9brjyX4RUe7MZIH9gMR1X/52HhtjAbY8zGhDGS4Tb7SmQZgVAFmtWSI+eg
 UQBaj3iUnLyRgiOg1tspyk3rd/q4zG8J/PZL6btI5YI37YlYZB3FOxWyXQQ3hV3YObv2
 fuGQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=E4II/+RN
Subject: Re: [Intel-wired-lan] [PATCH net-next v6] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: Jonathan Corbet <corbet@lwn.net>, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 laforge@gnumonks.org, linux-kernel@vger.kernel.org, vladimir.oltean@nxp.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Simon-san.

Thank you for your reply!

> It appears that the series at the link above has been marked as
> "Changes Requested" in patchwork. Although I am unsure why.
>
> I would suggest reposting it, say with the tags supplied by Marcin Szycik
> as [PATCH net-next v8].

I have resent it earlier with version 8, including Marcin-san's Reviewed-by tag.

> Also, please don't top-post on the Kernel MLs [1]

My apologies. I wasn't aware of the proper etiquette. I appreciate
your guidance.

I was not aware of many things, so please do let me know if there is
anything else. Thank you for your advice!

Takeru
