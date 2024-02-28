Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 587E586B475
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:16:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A7BF409F3;
	Wed, 28 Feb 2024 16:16:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ROPmqa4MEr-U; Wed, 28 Feb 2024 16:16:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 463BA40994
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709136989;
	bh=bfjds2qROW0bvdzSePF9+wJs94wOzgupIfS1XbRJIJ8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3fEjIKYi4zTJk6e1au/WlEeclWbzE8UmzwrtzVuTrP48snloePAUaVVtiNYvGd034
	 b33zDgZWfr8cKPLT0qf+xwBg68zycyexfilb8vHmmCIirBAH2dGXJxSSRSs0VSt3Ta
	 GeOW4kcgWQ0bullTmpNqXl6Z+yujN4teX74kOAYB0YR/brLboB96abeWonqdUF4xSF
	 xwZP9CJUNJoY0FHG0BtFwPrWeLb6pymbHs8k61+wJmJ0CYBphTt/QipOMpCRYolGlp
	 miSqQZk9Th8UBcjR7qQHGWhYfMZIuM4SlPL8WrL53sC2xCe4stMKdh92Zf80h17TwT
	 nTBTs1o74fKjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 463BA40994;
	Wed, 28 Feb 2024 16:16:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AAEE21BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:16:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A2382409A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:16:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tek7MD0WI78z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:16:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1132; helo=mail-yw1-x1132.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CD16540994
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD16540994
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com
 [IPv6:2607:f8b0:4864:20::1132])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD16540994
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:16:25 +0000 (UTC)
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-608c40666e0so45773927b3.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:16:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709136984; x=1709741784;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bfjds2qROW0bvdzSePF9+wJs94wOzgupIfS1XbRJIJ8=;
 b=Ek3UdQ58dfrduh6m5KjLRYoTpNKqR/4vo1sqXLz6iCH93Hj6IKvMRnhqX4InnDVG/v
 M7xTlWdZtU+Gx65QbfHsS8e2+TM1cShx/lLLYK/tJIWkmzjh7T2WbBJpUtdTzMBRK++h
 A16MagZveCjnMnoqHCc5Yu+2Ryo5RV0HF7rn6kXCkJPWNgmtRPWXwC/2FpeVm7c9BooB
 FUmMJPKVRmuzsL5N0Sw9Rhp15Q3lG5wnB8YnZTIpYOqG/oKZqpY2YDDcxXf7kwnfHgFx
 BJYxEz6mTM+LMJn46u8fxawoEVblMCpVyymjlqdp/aP+xqM7wg+vbyhf1TBVjIHvrz9o
 BiGQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUeXwwLRXldKRmyvT4lyGnK8Rs3TaN3ggAXDJuGM/Lp7Zy/K38ImPgkFX15v8mf+UsLnp20CHOwBEnfCdZO71vQEI3BDbYKXtOYttIcWBBM6A==
X-Gm-Message-State: AOJu0YypzqtU2nQBrVuDoR6iCwNnecVVydxHYOff+RCKAjzq7kNiKNZC
 PY41D0eRmY4thDe3meMfrP6xkkO33kjPZybMx9yBFCRo1PIM4Ny+
X-Google-Smtp-Source: AGHT+IGRWx7BefJXgsOF8UDKZq6u9sWMOTAUPepP0gk7cEVY5aJQnte0UhFGWBjNGyR1b4oJrRlKng==
X-Received: by 2002:a81:e348:0:b0:5ff:aa34:7c5f with SMTP id
 w8-20020a81e348000000b005ffaa347c5fmr4887584ywl.46.1709136984377; 
 Wed, 28 Feb 2024 08:16:24 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 i196-20020a8191cd000000b006094292e834sm302616ywg.75.2024.02.28.08.16.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:16:24 -0800 (PST)
Date: Wed, 28 Feb 2024 08:16:22 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9cVnjqfLefeMvh@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-4-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201122216.2634007-4-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709136984; x=1709741784; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=bfjds2qROW0bvdzSePF9+wJs94wOzgupIfS1XbRJIJ8=;
 b=jy8fdBRXToH0O3y9Y6Pj6fD3+6GDs09iwq7febUG8nZFvhWafaz+rC8F0ARnMxq9yl
 cB8SAkK/uhKAxle12ZgHJ+r0KjbXDZejb6rTm6Iz3lKPB5pF+fnSxEH7Z7oijNThXvPs
 iKJn0q3h2FvF8NykvAD1c5JaD0umlJ5qrqOI9FSQb3PIQxhvH2lOZb0X68MxWD4nzetG
 jnFqt1s/XtGhBPgvFreOJbcTgutCrPhggX2tmhViS/KTCLN09uZ6hQkWlcQSpmcx72nF
 PksdpBzvENqK6si2XNoUotjTwmjZwWtLzel4rcKLgfTOrm1pjr5095qiFfzCwV33UMGu
 ZDmw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=jy8fdBRX
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 03/21] lib/test_bitmap:
 use pr_info() for non-error messages
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
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 ntfs3@lists.linux.dev, Wojciech Drewek <wojciech.drewek@intel.com>,
 Ido Schimmel <idosch@nvidia.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dm-devel@redhat.com, linux-kernel@vger.kernel.org,
 Jiri Pirko <jiri@resnulli.us>, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 01, 2024 at 01:21:58PM +0100, Alexander Lobakin wrote:
> From: Alexander Potapenko <glider@google.com>
> 
> pr_err() messages may be treated as errors by some log readers, so let
> us only use them for test failures. For non-error messages, replace them
> with pr_info().
> 
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Alexander Potapenko <glider@google.com>
> Acked-by: Yury Norov <yury.norov@gmail.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Signed-off-by: Yury Norov <yury.norov@gmail.com>
