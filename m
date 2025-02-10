Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFD2A2F804
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 19:58:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00057408CE;
	Mon, 10 Feb 2025 18:58:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n9cbEdLDFD8M; Mon, 10 Feb 2025 18:58:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBD95408BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739213892;
	bh=4zHnrC6n0TeOwlGCGatrhmAfbiOBH4dMEPod+mMdLNo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V/lfSjM1WIXO3y9iE/UEQ83jeEx+Iq3DbnW+RS1w7OtwIlrJkLR26UJUSG43f6/SU
	 eP8+2FjBoI23KPz3ikhlYBr0+yhhEyf0+PdeoX2pv8rtibqOAaqKTdxNF2sozn0vgJ
	 a5D3xVH+KW8VOjNxC08ZjrLfXwRWSg/Qr3WrC5HnIldiS6RSsR+aFyCJYVbUABlFTu
	 3kRyLJod97DDGXwU7tDMIOa+bTv4P1oxwsoWv8kSaqhzqSWEdbAC9XVHtNNylHoEm7
	 3DUPS1e29V68yOvenr1fHEDw31wYiTz4DQga4sKxDUgupNnNsvfmBa9d5HRT6URlba
	 3T5k+US+TCahA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBD95408BB;
	Mon, 10 Feb 2025 18:58:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 166D3C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 18:58:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 115F140646
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 18:58:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bNdI7-KDoxGo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 18:58:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1030; helo=mail-pj1-x1030.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D35304012B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D35304012B
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D35304012B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 18:58:09 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 98e67ed59e1d1-2fa8ada6662so1686518a91.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 10:58:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739213889; x=1739818689;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4zHnrC6n0TeOwlGCGatrhmAfbiOBH4dMEPod+mMdLNo=;
 b=lbuXhl9UrHbWBLANBfcWLvetSeRSPItS7lJSPlUL69hEjXGfCmxpKO0GFgi0ZX1SEE
 oLtHJXGVxi/HSGBbWj5jjsY8UPoLmh+pYQeL5DlVm+xmq23xGBbrLUFixOMcLxOnJJlb
 kWZy6eMb9ObsoC7Z0hi6nRWc0QTU1HziAAqjfNEB5RNrvsHH/i8fOvgaF7uBfy1f8+Ta
 +EFt77DNaubsTXOndQdmNUVYMcZK0Y385Z1R37DwfVIGFA2nTagTkVmfu8VAr0tAKurZ
 99kcfPUkdr9N86K3WGgKRiDGTE+Q+397M/aaGVUfUScbh2u+TD0ggAyy4cJkLyzOjz1L
 MGkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUf1tAr3TPH58OdnteVqCzVwayRo0mwX0LOoCtoKd9aTa37gEmfqU13KFyGhZIDNe380df5eJEgQHnbrhNWU38=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxNDhDRktt2JgLByG0Wd6lT1IEHChnTHEask/Nsw19vvpTpVa5l
 zTyRC7oIh7CRm8yFpoHf+BQgr/xp/xZK8goaONQcKay5d25YIJPNgzNGXKjXK2o=
X-Gm-Gg: ASbGnct3Do0hpyBuRDq9tgxl+Rq1mB8716UFZ9oHgLqETaw/mVRk/qAZnY5c7BsoUqm
 ckI86g2250Krjp54hk5eWt9E+VD31US0UlSBF7Tze05EyvI5WuRIk4yRsE55YFIZ8d+wVbMkp/t
 Y+YoOQBEIJ+gvzcTQpypLdgwMQlQ0tzrHZJ+5bkJuXKc5q7OUFflyW6ZaW2os5pH8hGAUFYkuiz
 VrpYeZE+CocbBPaEar5BUHE9x1pD/MLsoMf/mLgh7g/8o/SQjL14CgXuI88XJrrGB25d/LHMBaG
 WNjJiaZmFtTLpZgJW9xWjIaRQ9LLXnsqZeGJUblWf+dMkY3vVRECW9R78A==
X-Google-Smtp-Source: AGHT+IGHgnYSQErZE8yGUy94KoNx/ROxyl34aGTRRYBqnCBnaQxsLlVhC2jGO9rivDS3sBpC5Yd2kQ==
X-Received: by 2002:a17:90b:4b8c:b0:2ee:7411:ca99 with SMTP id
 98e67ed59e1d1-2fa23f5ad20mr21288354a91.1.1739213889121; 
 Mon, 10 Feb 2025 10:58:09 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2fa0b9c5872sm4021465a91.0.2025.02.10.10.58.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 10:58:08 -0800 (PST)
Date: Mon, 10 Feb 2025 10:58:06 -0800
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z6pMPhn5Igl212kd@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
 <20250210-igb_irq-v1-3-bde078cdb9df@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250210-igb_irq-v1-3-bde078cdb9df@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1739213889; x=1739818689; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4zHnrC6n0TeOwlGCGatrhmAfbiOBH4dMEPod+mMdLNo=;
 b=TkOmIllCG7cPUbU2Yq5thTQxivNg+t0XziQvBs4zPTDbAuUKb6QoRBoI72WPnxkZhm
 VmZXJO1tMvpXpGc3k/k7v570ZdiMX9baSo6P3fIatzexS2JhP7f5oru1a2klvSX8wdw7
 XezJfQHypsN5tvGfgz/eY1WqWWlY5wxkceE/I=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=TkOmIllC
Subject: Re: [Intel-wired-lan] [PATCH 3/3] igb: Get rid of spurious
 interrupts
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 10, 2025 at 10:19:37AM +0100, Kurt Kanzenbach wrote:
> When running the igc with XDP/ZC in busy polling mode with deferral of hard
> interrupts, interrupts still happen from time to time. That is caused by
> the igc task watchdog which triggers Rx interrupts periodically.
> 
> That mechanism has been introduced to overcome skb/memory allocation
> failures [1]. So the Rx clean functions stop processing the Rx ring in case
> of such failure. The task watchdog triggers Rx interrupts periodically in
> the hope that memory became available in the mean time.
> 
> The current behavior is undesirable for real time applications, because the
> driver induced Rx interrupts trigger also the softirq processing. However,
> all real time packets should be processed by the application which uses the
> busy polling method.
> 
> Therefore, only trigger the Rx interrupts in case of real allocation
> failures. Introduce a new flag for signaling that condition.
> 
> Follow the same logic as in commit 8dcf2c212078 ("igc: Get rid of spurious
> interrupts").
> 
> [1] - https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=3be507547e6177e5c808544bd6a2efa2c7f1d436
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igb/igb.h      |  3 ++-
>  drivers/net/ethernet/intel/igb/igb_main.c | 29 +++++++++++++++++++++++++----
>  drivers/net/ethernet/intel/igb/igb_xsk.c  |  1 +
>  3 files changed, 28 insertions(+), 5 deletions(-)

I am not an igb expert (nor do I have such a device), but after
reading the source a bit this seems reasonable.

I suppose perhaps a better direction in the future would be to
convert the driver to the page pool, but in the meantime the
proposed change seems reasonable.

Reviewed-by: Joe Damato <jdamato@fastly.com>
