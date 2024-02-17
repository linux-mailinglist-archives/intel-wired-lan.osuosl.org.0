Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4012859135
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Feb 2024 17:55:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A0EC40830;
	Sat, 17 Feb 2024 16:55:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sd_mVKPoUnKV; Sat, 17 Feb 2024 16:55:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB7084075B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708188924;
	bh=6N7H1dJxAdgtz17OJV7h2M/b32+Y0VMenOKk4p0Y73M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WEu3FDm+dOq6xqESONdq8+i7WwiPj6PgH3T54ZLYME8RIiPrLQz0zehaESiBLsTvR
	 0rTOBwbXwsXKq4W3/ANJOuCVwdx+WLiY6qQ6g172yGsoq5+QvLHDxpQqv/rkKxPUDP
	 e3kr3gejVsT6aHgs2DpfQx9a0FPFOza/dCfe05eDOHBJ4sM6j7eTTPrl+HsjTxvYhU
	 JQniR/l0GLie66+NhKUbTD/YcM9kqZuzKnALegj/lCjUa8G+6VXrxL3WS8UPAAYwP1
	 bxShBrSgisYue13lwDVAGLx+wwxY7tizqDlcM/pr7LgtjmaGnb3Wc81BEgifmHHQ6s
	 yRTfLTXC+NQeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB7084075B;
	Sat, 17 Feb 2024 16:55:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 72A401BF841
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 16:55:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D49940103
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 16:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nwmeMZBbx5Ca for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 16:55:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::32d; helo=mail-ot1-x32d.google.com;
 envelope-from=richardcochran@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 690A3400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 690A3400B9
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com
 [IPv6:2607:f8b0:4864:20::32d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 690A3400B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 16:55:20 +0000 (UTC)
Received: by mail-ot1-x32d.google.com with SMTP id
 46e09a7af769-6e2b466d213so451704a34.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 08:55:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708188920; x=1708793720;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6N7H1dJxAdgtz17OJV7h2M/b32+Y0VMenOKk4p0Y73M=;
 b=xSRlDMSneqJfQXBrBb44ZMJzq6uf+TbroW/t6A3YwVk9/ZL02DmT415Mt6LvCsY9As
 eKgnsgMkWiSdx4ZuZ/512cy6J4ILtxgXrH/gUh9vGsVuS5lWX2qhvTG/onsxK+2fQp91
 13xDC2brFBQLchtrT6Z1dr+N6dVPowd+VI37T0Tro45nBj2pkQLDbFMQmjxfiwkVQGJr
 exAHcJd42xA1GQ4TuYI05Zo4ADFYEbLXBgLjtebODHMlzKg+xQqEtBS+aasfuqMChdnM
 mSHC45oJ+DX2/dpSvR63aufg4aq+2L8iW94s9NikX+ikaikqQykPminwg9QhZInyg07I
 600A==
X-Gm-Message-State: AOJu0Yw6KLYHoLN/LCs1ax5yYYtydaSuvy6ACTzGs8LMbskdN6MZ2BHd
 tX0VcFe+dH+7ZJSx9XoPoVcJaHKpx3M3f5RbH2U06FmpsbnRLkxf
X-Google-Smtp-Source: AGHT+IGbFFkZ2PWjmMxaXxYBlH/e83lIN7wTMd/FjXj5Co/BgIFwbdfXGResrmYNGntMpaORY52b2w==
X-Received: by 2002:a05:6359:4595:b0:178:686b:900e with SMTP id
 no21-20020a056359459500b00178686b900emr5562703rwb.3.1708188919682; 
 Sat, 17 Feb 2024 08:55:19 -0800 (PST)
Received: from hoboy.vegasvil.org ([2600:1700:2430:6f6f:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id
 i13-20020a25f20d000000b00dcc620f4139sm771059ybe.14.2024.02.17.08.55.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Feb 2024 08:55:19 -0800 (PST)
Date: Sat, 17 Feb 2024 08:55:16 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <ZdDk9AHE8svlNbbl@hoboy.vegasvil.org>
References: <20240217010455.58258-1-vinicius.gomes@intel.com>
 <20240217010455.58258-3-vinicius.gomes@intel.com>
 <ZdDLI4o1Bll1xvH6@hoboy.vegasvil.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZdDLI4o1Bll1xvH6@hoboy.vegasvil.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708188920; x=1708793720; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=6N7H1dJxAdgtz17OJV7h2M/b32+Y0VMenOKk4p0Y73M=;
 b=HCLSf+8s7lUyvrK5xcWKGDMvXsWtWZBC0vS0nZMOJQqZqdxwLJDKJ1I3ssrcZNfEmA
 1IHkjiZBdB6v3N7+v2I0c4sf5SLXtVwis6lfMHvcLIC/LQI/QQS93LNv2HC2M2x8UFNc
 l/y2gADvkM+O5c/DTJdI1tjY2zcBk/yl8m45DUEzSmD+p/b+vakPqfT/QfccJ8oZrv3w
 9GS9UydKnMyUiDUQBbP9CoshGVDo+uJmdPYKIz7IdX0Mw7Ab1VSxyldEun68Uq+bcsP4
 /lhf0KImadQXfKvwDQdpITrqV6LPgqxk34TRpLOf3n04SDtgdib727wAisWQCc+XCXYt
 tGbw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=HCLSf+8s
Subject: Re: [Intel-wired-lan] [iwl-net v1 2/2] igb: Fix missing time sync
 events
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
Cc: sasha.neftin@intel.com, netdev@vger.kernel.org, kurt@linutronix.de,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, anthony.l.nguyen@intel.com,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Feb 17, 2024 at 07:05:07AM -0800, Richard Cochran wrote:

> Does setting ICR.Time_Sync[TXTS] also clear ICR.Time_Sync[RXTS] ?
> 
> That is what you seem to be saying.

Okay, so you really mean that if the _same_ bit becomes set between
the read and the acknowledgment, then that event will be missed,
right?

In that case, thank you for fixing this more than nine year old bug!

Acked-by: Richard Cochran <richardcochran@gmail.com>

 
