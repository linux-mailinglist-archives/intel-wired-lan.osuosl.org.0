Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F7C83B7B0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 04:15:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5823C4011F;
	Thu, 25 Jan 2024 03:15:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5823C4011F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706152508;
	bh=wLYh+nt9ge5g6rYsCdV5xXhNgsQcoc3etE0lS+iSEeE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=brDhBkHP2gYfDan1vXnHvCgmb9PJRfBb4UzhvMeL3xAo/3v90EFP1KELW5jG0wy2M
	 fFYyC9kneZC1eticRXjtsybKNrzXCC8ldUAWWHd2DAYWzBelt8Wa2dB4RxRRMOQMcl
	 +kMnEFoSeTIN0HBNDRdZn9tkR/6y9M2rVtSboJzDnGBhk1FSb2TXV60+R4QJki641m
	 UmpmCK3k91nNBnMIuyRGMucIZcmrxRvQtIyiachisSygBQZYGd6aDZeFGGQYQPwY1v
	 Zg1M6eA184v9flHfbIabtC10R49Y5mU65WmXKcaPJ4bXvCgGSg/mKhGacw64XmnMqJ
	 ljXv2IRUSDQ7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NMGRfulrKm0C; Thu, 25 Jan 2024 03:15:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0218B40181;
	Thu, 25 Jan 2024 03:15:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0218B40181
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 825B41BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 03:15:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5829E41BCB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 03:15:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5829E41BCB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w0ExIM9TNTQp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 03:15:00 +0000 (UTC)
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com
 [IPv6:2607:f8b0:4864:20::735])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 723E441BC5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 03:15:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 723E441BC5
Received: by mail-qk1-x735.google.com with SMTP id
 af79cd13be357-7839ece697bso31262285a.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 19:15:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706152499; x=1706757299;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=wLYh+nt9ge5g6rYsCdV5xXhNgsQcoc3etE0lS+iSEeE=;
 b=o4ywg+QfVK6JlrUUACNSkj4Fu8BCO4P6BLXviJR8lOfheRWWLKNH7hyGwjE1yX5VqN
 J7ok95VYHt+jvqxP8CcNZS96z+mvj1TWJDuJOwoQ6EbXCle6EPdpZ2hPoWI2HuNN+pWX
 j3llVj3utAc6wody/kf5Rg/yRv2pfvpmgnjxD2Bf5MHBOzKcdE7NfSbAcpxLu9x48wYj
 82zCXRXuWzeBoGy9ELEDtP31oV9TFBRnkzmXdXCCqMyo563VaTNgA7bDqQmo4nZjiYkx
 15JD7Bf8rXJfPp+65+XZTXA8BnVxGbJwK6DcXcZ1EJrWJ3PqIWIrjATf14xDsW+M7kp9
 Njxw==
X-Gm-Message-State: AOJu0Yyc+DbRWZzHMcdIVJ6PJkzhlt0gMlDKbEa8ZVSSh87y5cZgseaW
 XIF4gmGf5Fb+fqc1F3rkDnWdlCR/Nqbg5lEZz3JjO7toVy6Jv4tm
X-Google-Smtp-Source: AGHT+IHOs69jL/rPE0t0HMtGCa5y5wiNEaj6SzkzPpZk1ytWzC8VCVQgo4yw26holTpKtpmMw0tPTA==
X-Received: by 2002:a05:620a:60f3:b0:783:8c3d:64f2 with SMTP id
 dy51-20020a05620a60f300b007838c3d64f2mr447238qkb.72.1706152499163; 
 Wed, 24 Jan 2024 19:14:59 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCXzWW5l6p/Y7MrkFmuSjDLXZMh9OxAExxWa/R1HVEPAOgGIrzBdTCUuevUGRZFggyj6au6tt/Ylu0wyjvP7/k+gQd9neU6UZHSUS2NeaCTUkQ==
Received: from localhost (131.65.194.35.bc.googleusercontent.com.
 [35.194.65.131]) by smtp.gmail.com with ESMTPSA id
 h7-20020a37de07000000b007815c25b32bsm4665470qkj.35.2024.01.24.19.14.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jan 2024 19:14:58 -0800 (PST)
Date: Wed, 24 Jan 2024 22:14:58 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Alan Brady <alan.brady@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Message-ID: <65b1d232a7ff8_250560294f3@willemb.c.googlers.com.notmuch>
In-Reply-To: <20240122211125.840833-1-alan.brady@intel.com>
References: <20240122211125.840833-1-alan.brady@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706152499; x=1706757299; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wLYh+nt9ge5g6rYsCdV5xXhNgsQcoc3etE0lS+iSEeE=;
 b=MH5WZamzvSPMoMaMvZy78UIVKKv2LAadspf2rFxkvoojzBkQm3tnvRcKMNo0zSPVst
 javb5kX/V1tgkdY1QeGDZVQKdR2EVS9c91KNEDlb9CxxkA49iP9yrILSzi4TMr7f6ZiD
 +K/gu3KDdzH+2o7JXwfyR88b4cr6K+knvYimaErVLdkbtcklaVKGr44HPkfBLWxXcg4X
 RrWXejrtcxM54URRLzOAdkkgRUUTGs3XD7IvKJ4jQF8n18AdYynUB1tZJdfLh4uAHxwW
 7p2JOS2dRskx8PwfcBGEHcuickEmQ13G+4/IVCOUN6QKIcqBYF+lIcSGUwfWzFlTQUEa
 1x1g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=MH5WZamz
Subject: Re: [Intel-wired-lan] [PATCH 0/6 iwl-next] idpf: refactor virtchnl
 messages
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
Cc: netdev@vger.kernel.org, Alan Brady <alan.brady@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alan Brady wrote:
> The motivation for this series has two primary goals. We want to enable
> support of multiple simultaneous messages and make the channel more
> robust. The way it works right now, the driver can only send and receive
> a single message at a time and if something goes really wrong, it can
> lead to data corruption and strange bugs.
> 
> This works by conceptualizing a send and receive as a "virtchnl
> transaction" (idpf_vc_xn) and introducing a "transaction manager"
> (idpf_vc_xn_manager). The vcxn_mngr will init a ring of transactions
> from which the driver will pop from a bitmap of free transactions to
> track in-flight messages. Instead of needing to handle a complicated
> send/recv for every a message, the driver now just needs to fill out a
> xn_params struct and hand it over to idpf_vc_xn_exec which will take
> care of all the messy bits. Once a message is sent and receives a reply,
> we leverage the completion API to signal the received buffer is ready to
> be used (assuming success, or an error code otherwise).
> 
> At a low-level, this implements the "sw cookie" field of the virtchnl
> message descriptor to enable this. We have 16 bits we can put whatever
> we want and the recipient is required to apply the same cookie to the
> reply for that message.  We use the first 8 bits as an index into the
> array of transactions to enable fast lookups and we use the second 8
> bits as a salt to make sure each cookie is unique for that message. As
> transactions are received in arbitrary order, it's possible to reuse a
> transaction index and the salt guards against index conflicts to make
> certain the lookup is correct. As a primitive example, say index 1 is
> used with salt 1. The message times out without receiving a reply so
> index 1 is renewed to be ready for a new transaction, we report the
> timeout, and send the message again. Since index 1 is free to be used
> again now, index 1 is again sent but now salt is 2. This time we do get
> a reply, however it could be that the reply is _actually_ for the
> previous send index 1 with salt 1.  Without the salt we would have no
> way of knowing for sure if it's the correct reply, but with we will know
> for certain.
> 
> Through this conversion we also get several other benefits. We can now
> more appropriately handle asynchronously sent messages by providing
> space for a callback to be defined. This notably allows us to handle MAC
> filter failures better; previously we could potentially have stale,
> failed filters in our list, which shouldn't really have a major impact
> but is obviously not correct. I also managed to remove slightly more
> lines than I added which is a win in my book.
> 
> Alan Brady (6):
>   idpf: implement virtchnl transaction manager
>   idpf: refactor vport virtchnl messages
>   idpf: refactor queue related virtchnl messages
>   idpf: refactor remaining virtchnl messages
>   idpf: refactor idpf_recv_mb_msg
>   idpf: cleanup virtchnl cruft
> 
>  drivers/net/ethernet/intel/idpf/idpf.h        |  192 +-
>  .../ethernet/intel/idpf/idpf_controlq_api.h   |    5 +
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   29 +-
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |    3 +-
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |    2 +-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1984 ++++++++---------
>  6 files changed, 1045 insertions(+), 1170 deletions(-)

Great improvement, +1.

This makes virtchan more robust during edge case conditions, more
scalable and the code cleaner: less open coded duplication across
every vc operation.

The code mostly matches what I am familiar with and we have extensive
test experience with. From an initial side-by-side comparison.

I'll need to read the code that differs more closely (such as the
xn_bm_lock that Simon commented on) and will run a sanity test. Even
just a successful boot will have exercised much of this code.

One comment for patch [4/6] only.

