Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AE986B4CF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:26:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF2BE60E7D;
	Wed, 28 Feb 2024 16:26:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZIgZ-E6tUvXm; Wed, 28 Feb 2024 16:26:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18249605FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709137611;
	bh=jKTyKBoJ+zqx71icHaiIJXRtovwN+h+pKT79UfPo2co=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n9YiElVtsXK12W8/qN3xBAUVFqW+qxEiQEtNVtel0CGpqkxaspGsVKLVgIW8TJzxw
	 fqVYFuuYbIrKqwdtw3g/tLEgQ7wEH0oFZNSAXtNPMWIsbnVWA8HcMXfOLtxtGDuYIv
	 zvfmv61zkRywbMJp0w5NzCf7MYZCUIh83Ljt67ydZwd4WITDGABNXzJGAC8MoOJ1HV
	 NBjBp3B1PHv76eoOYVQfjRBfEgCDkSWm2ZaeIkYNYwwH5y70jHcXjgdXzOi656F7+T
	 ocKBem6epWrjUwwErBeeyYjYy+5ZBHbd9AKQ2+DgBguReWbJTR4fHc5czJVsvXgNgc
	 Dmd6FxrZKYsag==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18249605FA;
	Wed, 28 Feb 2024 16:26:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B29681BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9EDBB4070B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FtoZ5Zta33X0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:26:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b35; helo=mail-yb1-xb35.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4680940328
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4680940328
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com
 [IPv6:2607:f8b0:4864:20::b35])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4680940328
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:26:47 +0000 (UTC)
Received: by mail-yb1-xb35.google.com with SMTP id
 3f1490d57ef6-dc6d8bd618eso5969602276.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:26:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709137606; x=1709742406;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jKTyKBoJ+zqx71icHaiIJXRtovwN+h+pKT79UfPo2co=;
 b=pUMk/jWpHhxhfwcLz/fS+wYgpwTionaBcxBMKHO6ZiVAouIepjV/yE4YincticSdA7
 JcEkWlrwB/ggNYd1a/HeENdy/wtRlJ8GN0oiWlU26sWeT7UctCwd9PLtrQroud8UaZwl
 EUbTJTa9NK90/ZfMFjFGF4Hqnj7OVJrB8gqcsi3U1Oe9zWnTfsNhA4cglcpuIEzYjW3o
 v9K18IfUq2cCuLH6li8rTwUnekwdlIp28hOIVeLFLmJqKbEypt9bJrTgcyqMqXjQnTNQ
 DHRDVqb1gGsgvkJXOGSYNmaoXu63ad73pBaCegQyeXi2rC/wa7P4S0P9qBDKdHhrWrmc
 4MeA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXRtozLHs4zyvDFCxnDWt2HEqqjiWs36UvvhhSYifQ3VlmJ8h5PUjc+au3x4yn8MvP+OzsjrbHZdEtNOZYOwA0+0fESHGM5OcLmD+RRWvS5pw==
X-Gm-Message-State: AOJu0Yy2MFoC1CDc1DNF5tQf0v262kGvmqS3OcDVDlFyBNFYAI1if09B
 Us6F7Ajo3mI0awaKnYNb/8lEyop6mdFFMlWKxEVvU2VApY49vxRp
X-Google-Smtp-Source: AGHT+IEzDdshAZPifjikVHSc+ExEKZEbNWC8tYDB1UrSX7QHB04ABcGjvuz4tLQbulb0mZqEO3cKSg==
X-Received: by 2002:a25:c5ca:0:b0:dc2:2f4f:757 with SMTP id
 v193-20020a25c5ca000000b00dc22f4f0757mr2619998ybe.7.1709137606029; 
 Wed, 28 Feb 2024 08:26:46 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 x11-20020a25accb000000b00dc6d6dc9771sm2072223ybd.8.2024.02.28.08.26.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:26:45 -0800 (PST)
Date: Wed, 28 Feb 2024 08:26:44 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9exCzbAnOxAY50@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-10-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201122216.2634007-10-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709137606; x=1709742406; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=jKTyKBoJ+zqx71icHaiIJXRtovwN+h+pKT79UfPo2co=;
 b=QMwj1V0tMuhNA/HtPLRTUf6Nnzm48AruXA7b8FZ+ARD/c2Grm25CDBf/Houf4gofhE
 EiTIx9UurUkQMmuL+ZcFw/cyyskw152cJWvCupf/oI9CLKfieUw0WDqMLnpnLgOJ7cON
 79cZEWXI3m5kXBTPZrGNBtGsvnyzYmlO1+SDl8biQ3R+AvLNo+XK3A/bOUUjPWMpt0+e
 uuyZJyYpsQ71rXdBSFsdGLbt+abXGsA/Fk+K3oJjKdv+QjU0o7+eEUz2qFLfS4Wwz0G9
 5P/nJv9bInA+lmZPRK+i7jaN1OwFPZCG0ggMdlV08VvLPtcyh1XMbgiaOnwAPAzhuFYN
 rVHw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=QMwj1V0t
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 09/21] fs/ntfs3: add
 prefix to bitmap_size() and use BITS_TO_U64()
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

On Thu, Feb 01, 2024 at 01:22:04PM +0100, Alexander Lobakin wrote:
> bitmap_size() is a pretty generic name and one may want to use it for
> a generic bitmap API function. At the same time, its logic is
> NTFS-specific, as it aligns to the sizeof(u64), not the sizeof(long)
> (although it uses ideologically right ALIGN() instead of division).
> Add the prefix 'ntfs3_' used for that FS (not just 'ntfs_' to not mix
> it with the legacy module) and use generic BITS_TO_U64() while at it.
> 
> Suggested-by: Yury Norov <yury.norov@gmail.com> # BITS_TO_U64()
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Reviewed-by: Yury Norov <yury.norov@gmail.com>
