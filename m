Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E07479D608
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 18:17:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EF9482180;
	Tue, 12 Sep 2023 16:16:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EF9482180
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694535418;
	bh=98t0ja4c2Ykj4t+5DFS2T1Mv7w/Y3PsK5VEfuwfFrtg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h5njk6v4axicqyB8pEFWGzlyMGpSetG5hJhebJ5egA6AOGOCROrRidJfTDGxtCQyB
	 65E9udynkgkFHbZoI6qJ2MsH3AZCLaz3RvNBf9Fq3+ReSf7mzAXUCo1JWqmJPHNGjK
	 nWRL4lQHBfe9zbaAk4TOYCG3PucZYO5dleOKu3vT68SCU4VAtKh347k8sy37GvTzEh
	 MPtMpnv86vp5ZdBGyjbQ5hzeAx+/RoA9CgDDUMuheHVIjRpbP+JNqoe55L0K1jofgB
	 Fjh6X8jKUotrrPe6YZJEXQwdtfYheJF0n6mVACdatombeYLIdAWDSKxG3Z0cevFxLN
	 Zjzuz5bDUTO1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zcIGLrJyQ42c; Tue, 12 Sep 2023 16:16:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F97781F47;
	Tue, 12 Sep 2023 16:16:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F97781F47
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C3ACB1BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 16:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9CD304027F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 16:16:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CD304027F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bkSWRvf1vH74 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 16:16:51 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 42C83400CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 16:16:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42C83400CB
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-1c1e3a4a06fso42268385ad.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 09:16:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694535410; x=1695140210;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3MwTmVCnTEtep42XfZ4TFNmY2WBZrbi61crWobHgN3g=;
 b=Q/zycgcnDVmuLsYxTuXzRps+4cBmD3eKtTc//KzewT2zLSWyGoTrR8BW9ePowkFYXJ
 O5ffdhw7/Efaf7LIqN51V//lakU17s8UptHYLcm/3heg7/tq13Buq8Hzjcc/vEE6HZ41
 TxYW5/NVaQ7uWrqgyKcWD5QoDXUgUWIGrNsLJzc9K1UaXnIvtLx3jnXgLkivvqkcQCze
 3/5EY/ekwRd4LbkqEHjOu+l8eiAAFnH8FYTj2cIkUYI1NgTatgtL+/Shq5drsi717tuG
 /53VIgZUsvbQkDgdsU3h5rl7UxuLv3e14vCmldt/mHHefUinw/ceHkE8D5/qDUNHHtiB
 PFyA==
X-Gm-Message-State: AOJu0YxijvvktcZ81LnYH07bJXbkuFhj5H7YiIkcXp+uVFN7v4DVh0yK
 88SHCa4tF91K+YwFKhgvnxn/P7TcnTBlBsX3OyM=
X-Google-Smtp-Source: AGHT+IEl/c3bl7m/pr2Ark1A+7Rka01Cb400iuEhzUjlRm3MNTOq7Gn0sjiWvD3rr/lJGDYA1zlGiQ==
X-Received: by 2002:a17:902:ab15:b0:1c1:de3a:d3d7 with SMTP id
 ik21-20020a170902ab1500b001c1de3ad3d7mr186339plb.68.1694535410652; 
 Tue, 12 Sep 2023 09:16:50 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 5-20020a170902e9c500b001bb04755212sm8608895plk.228.2023.09.12.09.16.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Sep 2023 09:16:50 -0700 (PDT)
Date: Tue, 12 Sep 2023 09:16:49 -0700
From: Kees Cook <keescook@chromium.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <202309120916.5313AE37C5@keescook>
References: <20230912115937.1645707-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230912115937.1645707-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694535410; x=1695140210; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=3MwTmVCnTEtep42XfZ4TFNmY2WBZrbi61crWobHgN3g=;
 b=Rjn9L6qSxu6oQQwR4VdtC/hSGh0CpFVr37MWFUV8YvxjMHhIjZ0tLT8aKAs6bQTLoJ
 SkOVjkviQr9qkpy9Gl6yT0cO3fFxaeIIu/6EKuF+AvDewyOe2yT43P/AQCEAy6gTJUfR
 XsQA7Qgm5VMjkSwG0e7yU2mpHWu/MF3IRzBD0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=Rjn9L6qS
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/7] introduce
 DEFINE_FLEX() macro
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Steven Zou <steven.zou@intel.com>, edumazet@google.com,
 David Laight <David.Laight@aculab.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 12, 2023 at 07:59:30AM -0400, Przemek Kitszel wrote:
> Add DEFINE_FLEX() macro, that helps on-stack allocation of structures
> with trailing flex array member.
> Expose __struct_size() macro which reads size of data allocated
> by DEFINE_FLEX().
> 
> Accompany new macros introduction with actual usage,
> in the ice driver - hence targeting for netdev tree.
> 
> Obvious benefits include simpler resulting code, less heap usage,
> less error checking. Less obvious is the fact that compiler has
> more room to optimize, and as a whole, even with more stuff on the stack,
> we end up with overall better (smaller) report from bloat-o-meter:
> add/remove: 8/6 grow/shrink: 7/18 up/down: 2211/-2270 (-59)
> (individual results in each patch).
> 
> v5: same as v4, just not RFC
> v4: _Static_assert() to ensure compiletime const count param
> v3: tidy up 1st patch
> v2: Kees: reusing __struct_size() instead of doubling it as a new macro
> 
> Przemek Kitszel (7):
>   overflow: add DEFINE_FLEX() for on-stack allocs
>   ice: ice_sched_remove_elems: replace 1 elem array param by u32
>   ice: drop two params of ice_aq_move_sched_elems()
>   ice: make use of DEFINE_FLEX() in ice_ddp.c
>   ice: make use of DEFINE_FLEX() for struct ice_aqc_add_tx_qgrp
>   ice: make use of DEFINE_FLEX() for struct ice_aqc_dis_txq_item
>   ice: make use of DEFINE_FLEX() in ice_switch.c

Looks good to me! Feel free to pick up via netdev.

-Kees

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
