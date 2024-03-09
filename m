Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D098773DC
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Mar 2024 21:32:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9413E40794;
	Sat,  9 Mar 2024 20:32:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gU6E0NQwtZ7C; Sat,  9 Mar 2024 20:32:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 147CB4078D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710016371;
	bh=/OTMXNhmX4O6lceZQYHXvvgYFS14rznJ5JJ4O2NR9B8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=olzWlukxf8xxlMWktVcbTj3SPXdci6wuVBXKqaCms+oued6Ink2GEAc9JTjEJRccc
	 bgTltaon+GaP0Lx1iD1yPNxKQPOi7vtQE6jWkgE0xmzA9d5seoM3qJmtYgC7U1EAzp
	 7rB64/cOrFaK740D6eyg84L1bpVT2S+P9mI89uqwWQjMm/NdQ7hfUIetXYAiELrpqa
	 EA5/VpYLfKrx0Gyh8XCNdur7YfiaLwsDZOvCZBsvHNBA2XtxK3clYisvGfRh/aZt+D
	 XuafoCYtizIi/Hv3Om7YjoAbONH/vXEW50j7H/5GmGQgxlFfH55NsFrGY9ECuhN0pD
	 3OQpf7eI5DevA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 147CB4078D;
	Sat,  9 Mar 2024 20:32:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 941451BF348
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Mar 2024 20:32:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E57D608C0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Mar 2024 20:32:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vr1Me6Ng1X7s for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Mar 2024 20:32:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102c; helo=mail-pj1-x102c.google.com;
 envelope-from=keescook@chromium.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 574DC6066F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 574DC6066F
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 574DC6066F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Mar 2024 20:32:47 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 98e67ed59e1d1-299d3b09342so2294798a91.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 09 Mar 2024 12:32:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710016366; x=1710621166;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/OTMXNhmX4O6lceZQYHXvvgYFS14rznJ5JJ4O2NR9B8=;
 b=bo58LZwaSZfRwMtMBJ4SCbu+Y9HNUHZ0eELxNNPusEFZzUE1zns8OBKKDAKO1T0tRo
 VdGNpOszt7WUCwEKKHtLu8HwCaQo3ovlJ3Lsdv3x8EWqi5ZbT71sZ15Y1zT6aHW0P+kE
 t1oiF+eARH4xxFWVlBwWIqEiAFDlPN9nbuNVqTDM+xaIoJMRROQuPVtb0CVc5lFBJA9h
 OIyUGUkyKfECY6kvodpDP10Zj/K3kxD2PboZ3/D0rAbROwKgiSgbReIxhuviUg6DGxwJ
 jMMvQaytgQuhj9sny1FTxzlKPIeP0JdS+tXZwHFvD8vqpjdEN/YVBW5hsQCEKJKF06DO
 Tyig==
X-Forwarded-Encrypted: i=1;
 AJvYcCWq00ibE1xzpAX2smBHkK1b4YgUiEJK021bh4M2TxwiNRHSlXe0VMGxEdnpnH1Xb29o/XgZbnJXHYxzXENMGnEio82D00gW/VvQ89e/lpKFNQ==
X-Gm-Message-State: AOJu0Yz0BpsIPcqeEjRsTwhH9G7t9lkpTUqQLdzG3JtEEZvcuaSe0ij1
 a6B8tqsRRQrGaQu+0LkvVsV4hUMg/UuuLY95ZA85JR1woNkiEdcF52BhuvY7TQ==
X-Google-Smtp-Source: AGHT+IGQkvj/tf7BRo0+9QPNS1Oh6nikqb9cyPmTEPrdArJNXrYufFGDu4ArsCBeCVR+xUAj9syNog==
X-Received: by 2002:a17:90a:1347:b0:29b:7fe8:be84 with SMTP id
 y7-20020a17090a134700b0029b7fe8be84mr1876129pjf.41.1710016366573; 
 Sat, 09 Mar 2024 12:32:46 -0800 (PST)
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 m12-20020a17090a34cc00b0029a8a599584sm1797656pjf.13.2024.03.09.12.32.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Mar 2024 12:32:46 -0800 (PST)
Date: Sat, 9 Mar 2024 12:32:45 -0800
From: Kees Cook <keescook@chromium.org>
To: Simon Horman <horms@kernel.org>
Message-ID: <202403091230.ACF639521@keescook>
References: <20240306235128.it.933-kees@kernel.org>
 <20240308202018.GC603911@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240308202018.GC603911@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1710016366; x=1710621166; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/OTMXNhmX4O6lceZQYHXvvgYFS14rznJ5JJ4O2NR9B8=;
 b=G8Otw2oBr8nXaLVBL/h3fo1VjomK6OWdXEU+ZR5G9fyaOujRDQNtkZWnb9e1fzVRQ6
 S72aK+j0+ElYwBZgaQpdt2IeikerbSSyFnInLM95Iz5+7w5VQ4WnCqXKI7LG0gtI+yys
 f5XuPV9lwzFhQLGDK9GuE/FQvREIn9friNer0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=chromium.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=chromium.org header.i=@chromium.org header.a=rsa-sha256
 header.s=google header.b=G8Otw2oB
Subject: Re: [Intel-wired-lan] [PATCH v2] overflow: Change DEFINE_FLEX to
 take __counted_by member
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-hardening@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 08, 2024 at 08:20:18PM +0000, Simon Horman wrote:
> On Wed, Mar 06, 2024 at 03:51:36PM -0800, Kees Cook wrote:
> > The norm should be flexible array structures with __counted_by
> > annotations, so DEFINE_FLEX() is updated to expect that. Rename
> > the non-annotated version to DEFINE_RAW_FLEX(), and update the
> > few existing users.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Hi Kees,
> 
> I'm unclear what this is based on, as it doesn't appear to apply
> cleanly to net-next or the dev-queue branch of the iwl-next tree.
> But I manually applied it to the latter and ran some checks.

It was based on v6.8-rc2, but it no longer applies cleanly to iwl-next:
https://lore.kernel.org/linux-next/20240307162958.02ec485c@canb.auug.org.au/

Is this something iwl-next can take for the v6.9 merge window? I can
send a rebased patch if that helps?

> > @@ -396,9 +396,9 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
> >   * @name: Name for a variable to define.
> >   * @member: Name of the array member.
> >   * @count: Number of elements in the array; must be compile-time const.
> > - * @initializer: initializer expression (could be empty for no init).
> > + * @initializer...: initializer expression (could be empty for no init).
> 
> Curiously kernel-doc --none seems happier without the line above changed.

I've fixed this up too:
https://lore.kernel.org/linux-next/202403071124.36DC2B617A@keescook/

-- 
Kees Cook
