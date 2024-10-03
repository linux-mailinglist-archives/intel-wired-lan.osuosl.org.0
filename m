Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAF298F30A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 17:46:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CF456078D;
	Thu,  3 Oct 2024 15:46:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iVzm3EJiOb72; Thu,  3 Oct 2024 15:46:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AFED60770
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727970377;
	bh=vg9O2bmhocfO75+5ltClKdx7MUK6nTYdplQZgbhltGY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OQjSn9L91ndAfn0PlTOzKhLWtj/3HOtxoIc7Z5nPHwyX9G8XSOs+jja4ZrPrvNdkd
	 2yPlm/b4DztGNeZCaYa/bB33uNlTwVlbMhSheSO0Wy7w3aW6PT/psRQZUw3oPnGPId
	 85cXHLV+bqxCuuO3vQqzGsdTfAGdONzJyP4bc5JRjcKld44w8kg9vPeSwzd7JD0k0U
	 V+OCfs8afX3kvhgyxC6OiXq4GHcU8/fUxlZgpshFgaf9rW49VpaQTucyYR5At14ryv
	 jExxoEtwV6ijrp0ef7tb+ePV3f+7WzGChN01IMyA0YOK3mjDfZ3VIQZlIaOyDW0DKc
	 V1wS5dx576SbQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AFED60770;
	Thu,  3 Oct 2024 15:46:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20A151BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 15:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C90440469
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 15:46:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wlfr_3RUbK6H for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 15:46:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 015C640102
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 015C640102
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 015C640102
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 15:46:14 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-208cf673b8dso11364225ad.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Oct 2024 08:46:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727970374; x=1728575174;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vg9O2bmhocfO75+5ltClKdx7MUK6nTYdplQZgbhltGY=;
 b=PTQsqTjIPY5un7HzvrPnDvbdc81yV4f+MIGFL25y8RUViljsEXIbK7ngKD4A/u51KZ
 ZieC83sc/28DiQNfvZfD1wsWWlZUEXOfg3yPiyIT8EI4HhycBGUMTjyK6iGTMCVBg0yX
 LXGiBhBe4y2hAXhc/E5dQeV/mSl4xezaEGChVspqQPJJVd8iMvD4TniXTuBixWIf4rn8
 E9WIny7hfprwHO4r6WY3DhxjcQ5TRZ/Fhm8/9QWRmQcrCxeiuvERYJAtq8TQHLfwGyw/
 iMqEgp3Tuho/4O/taOaorXpcobaxSLB9r+YYitPOXrJ4qRt5bjaN661NTf3SoJpBA1dG
 cZBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWg0e2TAlWj3l6qqH9GW9AxZGAVLo6F0ivRLu5enDvdLmKzrd2+KsYfs3DbKL18h8pVfiOr45F2dXTDbBB33/g=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzegzc1x6lD4+m+yCOntltq5jrrL2Atrfbf3oV0hDQWE1fEc5EM
 A7P0DH9t1PFgbgSr/k7zuqfC8UeZFAwcku4WRam9qnLayX1tNLGOY6w4IoKPhb/yXgIFNpIFJlS
 T
X-Google-Smtp-Source: AGHT+IHJZ2Cva6weRJymSIYfRl+TvfkC3DsPe7+bV+X6mtLTATN118ZY6+JXSzlo5Pl23BKacVdE6A==
X-Received: by 2002:a17:902:e84b:b0:20b:937e:ca1e with SMTP id
 d9443c01a7336-20bc5a0a801mr103188475ad.18.1727970374142; 
 Thu, 03 Oct 2024 08:46:14 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20beeca2256sm10523285ad.91.2024.10.03.08.46.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2024 08:46:13 -0700 (PDT)
Date: Thu, 3 Oct 2024 08:46:11 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zv68Q4ur4-ZVTmaL@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>,
 Simon Horman <horms@kernel.org>
References: <20240925180017.82891-1-jdamato@fastly.com>
 <20240925180017.82891-2-jdamato@fastly.com>
 <6a440baa-fd9b-4d00-a15e-1cdbfce52168@intel.com>
 <c32620a8-2497-432a-8958-b9b59b769498@intel.com>
 <9f86b27c-8d5c-4df9-8d8c-91edb01b0b79@intel.com>
 <Zvsjitl-SANM81Mk@LQ3V64L9R2>
 <a2d7ef07-a3a8-4427-857f-3477eb48af11@intel.com>
 <ZvwK1PnvREjf_wvK@LQ3V64L9R2> <20241002101727.349fc146@kernel.org>
 <b7228426-1f70-4e36-9622-c9b69bfe5be9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b7228426-1f70-4e36-9622-c9b69bfe5be9@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727970374; x=1728575174; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vg9O2bmhocfO75+5ltClKdx7MUK6nTYdplQZgbhltGY=;
 b=P2ajwpUOalhnByTErlRNhrpQS3uCgAvOBi/HjqCB3AggH/ypjHSOZakDKyYatMboUg
 5bhm2MDFO6j1xzNwH4XvsrOi/CwHM7uyy+xEtSZAi/AalDLi54ruF4J0HdOaOaWgl0iI
 A1n10HBlum5YC2YRRhBY0XKpoq6oiyp5V65RE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=P2ajwpUO
Subject: Re: [Intel-wired-lan] [RFC net-next 1/1] idpf: Don't hard code
 napi_struct size
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 03, 2024 at 03:35:54PM +0200, Alexander Lobakin wrote:
[...]
> napi_struct is the only generic struct whichs size is hardcoded in the
> macros (struct dim is already sizeof()ed, as well as cpumask_var_t), so
> I'm fine with the change you proposed in your first RFC -- I mean
> 
>  libeth_cacheline_set_assert(struct idpf_q_vector, 112,
> -			    424 + 2 * sizeof(struct dim),
> +			    24 + sizeof(struct napi_struct) +
> +			    2 * sizeof(struct dim),
>  			    8 + sizeof(cpumask_var_t));

So you are saying to drop the other #defines I added in the RFC and
just embed a sizeof? I just want to be clear so that I send a v2
that'll be correct.
