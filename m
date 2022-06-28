Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2955855EFAE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 22:37:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADB3861149;
	Tue, 28 Jun 2022 20:37:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADB3861149
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656448634;
	bh=RSIypZEUoDUdMSpa8aS8fE4ZvF3P92Pgm7aapxUMO9Y=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RGOLevTt41gW7BBoSHPPQcfkcrmqhGA4ajhfziMqG9d32WTKQgHGhNbuIrHDXmnAQ
	 55rzfIOH4JOwRENiT4gj6FzfqQczxpA1F9H022EzubKlrW1B2F5YcVuQEfUdCDpd9e
	 KkSgDvXG5AbySyvvXUx4p8MHIM++md5MxaccKZZ4m+dV6NzQ1BctnY3peARNrYmYDi
	 UPqx9h46m3PpG+acI4xy6+9wLp50wGF0Ue7RUAG7bXX6LTmA3jctI+ZDHlx9qLZdCa
	 MDfoTTD21RR98XRmPOlQWdst0/xP43Cbf+JqJ/Flte5T1tjwCn6mXTYkOt7FIoV/KB
	 bYQRn4BYICXqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id acCiwZn_751Z; Tue, 28 Jun 2022 20:37:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 920A260B1D;
	Tue, 28 Jun 2022 20:37:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 920A260B1D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48C2A1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 20:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2115A60B1D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 20:37:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2115A60B1D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CeU2NERICFrk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 20:37:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01D4C60AC1
Received: from mail-oa1-x63.google.com (mail-oa1-x63.google.com
 [IPv6:2001:4860:4864:20::63])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 01D4C60AC1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 20:37:06 +0000 (UTC)
Received: by mail-oa1-x63.google.com with SMTP id
 586e51a60fabf-101d2e81bceso18711498fac.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 13:37:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:dkim-signature:mime-version:references
 :in-reply-to:from:date:message-id:subject:to:cc;
 bh=EblnqfuvUBsRYXQNR+4QQAG8lG6XAKnM7/BxdqM5Y8w=;
 b=SzsNJdIZRIwCLJPUf3B2Qy1Mjs1qYkoOpQYTO1IvUYuf+jyWJW5rSL/FgkOPLsPpKx
 CDhx3daiShafjYI0hBwIr9mTAqf4U6bQN3ooDnc2n24hqackTdVcS7j3Y5e5Mv/GvCS5
 JjFbXpmdT3UGCOj5N0piMGVEfyVNIQvsV0pU5lAhxuzsppJmFPQLjPL6qFerYtMZj4mj
 CaHJBDKor1WHPNXCd5l7pVV2V1vbphdAOeGDrdmG94Qcw+6SiaJuz5izFLqSL1vMKHg9
 EZMqxbFsa3k3aLQtP8J9v9LdaJ6gb41sGlYx7F5PIAGyS19AOg/qok/VIPGeEFuul8Eu
 5yqw==
X-Gm-Message-State: AJIora+iA0Z/z68I/nm4XZSIwGncZ7GplWXsrzMepcMINTDV8HjM2gbj
 ZjMn41jRfi9iMNIfSeS+1zbhr9QSsTMEfPxXJen2Wegq2mbC7g==
X-Google-Smtp-Source: AGRyM1tTwNwejrPD1wwl78aMduIVjTmfGl2ty4tve6kQcKOJxDyGZSafxLeWITtNP7nL1y8ktpvI19m9eKxj
X-Received: by 2002:a05:6870:d10e:b0:108:98f5:93bc with SMTP id
 e14-20020a056870d10e00b0010898f593bcmr929434oac.158.1656448626079; 
 Tue, 28 Jun 2022 13:37:06 -0700 (PDT)
Received: from riotgames.com ([163.116.131.241])
 by smtp-relay.gmail.com with ESMTPS id
 gc13-20020a056870678d00b00101bf258006sm2108936oab.20.2022.06.28.13.37.05
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jun 2022 13:37:06 -0700 (PDT)
X-Relaying-Domain: riotgames.com
Received: by mail-qv1-f71.google.com with SMTP id
 mz4-20020a0562142d0400b004726d99aa49so6152761qvb.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 13:37:05 -0700 (PDT)
X-Received: by 2002:a05:622a:11d0:b0:318:ffc7:5038 with SMTP id
 n16-20020a05622a11d000b00318ffc75038mr12740373qtk.324.1656448624423; 
 Tue, 28 Jun 2022 13:37:04 -0700 (PDT)
X-Received: by 2002:a05:622a:11d0:b0:318:ffc7:5038 with SMTP id
 n16-20020a05622a11d000b00318ffc75038mr12740352qtk.324.1656448624162; Tue, 28
 Jun 2022 13:37:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220628104354.4195-1-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220628104354.4195-1-anatolii.gerasymenko@intel.com>
From: Zvi Effron <zeffron@riotgames.com>
Date: Tue, 28 Jun 2022 13:36:50 -0700
Message-ID: <CAC1LvL2vO-A2nV7H8-eMabiAf4_PQbsFMwVDpJbW3BLwe_vFOw@mail.gmail.com>
To: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
x-netskope-inspected: true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=riotgames.com; s=riotgames;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=EblnqfuvUBsRYXQNR+4QQAG8lG6XAKnM7/BxdqM5Y8w=;
 b=HeNr+Ko4e50BARG8o7yqfvZIs4PyjP2eUBb9OE3ZxJQFf4Eb4DtsrCYwaeqniSgY9E
 vzP9bOheaWsEzun4QCWrpvMzUQOQ/BcZhecpSDDQPyhvjVM4vtJYO7u8HURTlQFZIHQh
 ksZuKKAdjmu5sNVus+qJrtEgjxJ2fNGIffDdk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=riotgames.com header.i=@riotgames.com
 header.a=rsa-sha256 header.s=riotgames header.b=HeNr+Ko4
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/2] ice: FCS/CRC stripping
 control
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 28, 2022 at 3:45 AM Anatolii Gerasymenko
<anatolii.gerasymenko@intel.com> wrote:
>
> Implement possibility to change FCS/CRC stripping feature using
> ethtool command.
>
> Having FCS/CRC could be useful for:
> - network sniffers to inspect FCS/CRC correctness
> - for benchmarking use cases
> - XDP programs
>

Have you thought of exposing this through the XDP hints paradigm that Jesper
is working on? That could make it available to XDP programs that want it
without breaking those that assume they won't have it, allowing both programs
to coexist on the same machine?


> Anatolii Gerasymenko (1):
> ice: Implement FCS/CRC and VLAN stripping co-existence policy
>
> Jesse Brandeburg (1):
> ice: Implement control of FCS/CRC stripping
>
> drivers/net/ethernet/intel/ice/ice.h | 1 +
> drivers/net/ethernet/intel/ice/ice_base.c | 2 +-
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 5 +-
> drivers/net/ethernet/intel/ice/ice_lib.c | 21 ++++++
> drivers/net/ethernet/intel/ice/ice_lib.h | 2 +
> drivers/net/ethernet/intel/ice/ice_main.c | 73 ++++++++++++++++++--
> drivers/net/ethernet/intel/ice/ice_txrx.h | 3 +-
> 7 files changed, 96 insertions(+), 11 deletions(-)
>
> --
> 2.25.1
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
