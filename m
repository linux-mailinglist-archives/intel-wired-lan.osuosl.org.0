Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D0C86B491
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:18:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B5F960E76;
	Wed, 28 Feb 2024 16:18:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tHhpTyfBRB5J; Wed, 28 Feb 2024 16:18:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7967660E3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709137101;
	bh=rl2J8wUQ0nkL1SOPD3XRF42shMc7kd3Rtbu+FuDVg5g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZF490qz7Ch0ZKctC/SWeIRkB8ZlNc5K4teHQxjbh2NwMkTpREvB9IYWMBUoGUazmU
	 catLBSyPjlosd7XpbfM2GiNWgbu+BH+dNynhy8h18cU2xFURocuIHZzVGxL19u/MLC
	 pvNqOIOyZAX7N+TvT4V78Qw9jz8kK0V5vc6qyjoaQ0/WNo97kSG/O5lqIt99Z4IwvN
	 +FPvrZJbQtCg8UnU4uhuoENhPBf6lMrBtLGPf2mrwdnZ/JhkjztrThpC188gHEuPV+
	 9ClFDu3f7Fi53P0787LR5BF9Hhnfm1N5pu81cSbULg2IJXe7WuWnY2f4NvxLiPzOz4
	 mCMLamBD7ylrQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7967660E3F;
	Wed, 28 Feb 2024 16:18:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC6811BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:18:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B78F3400E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:18:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2hL-yPMcqoIp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:18:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b29; helo=mail-yb1-xb29.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C0660400D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0660400D9
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0660400D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:18:17 +0000 (UTC)
Received: by mail-yb1-xb29.google.com with SMTP id
 3f1490d57ef6-dc6d9a8815fso5645977276.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:18:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709137096; x=1709741896;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rl2J8wUQ0nkL1SOPD3XRF42shMc7kd3Rtbu+FuDVg5g=;
 b=omZbNNQL1EGESlFjdPzwdOZE7kEVRJ9DlVlErCtjnMgt4SqD507g533WfGbx1YyZ1Z
 1ZDjuFbpOVELNltZrn1Nn4anpFh58Ea/02+/OZMLLoFRef6tE+TVw/JuCY/WuUKeeCV8
 gcqvTpe0jOQB992ImYfDpFp9eP5JpE8KlzBmx1KJUJsRjiP/kd5zx+1X2klC4dPjU44B
 vmok89q0pr3Ye33KrCbphiDg92KWViLME8xQclqbGL6czcJzrPxDi3RQ9TUaN4LdSG/u
 AssCGI7xlcMGmuom/LgpfQwVGAekPPverCricc4ktAO45IFmoYiIK7C8HEZ2fzhdviVK
 Fwjw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUhSr6kU3hw4v9G5qPc9zFYSBD7OTrlsxcAtT6kjtqNesCahKoR4v1YXYSAtFmbEStog/Xcq43meL81HPEqqGCgYnykFqw00ZNhDJjyvGnuaw==
X-Gm-Message-State: AOJu0YwZZ2jRAGX41rFYvNcUlgozas6zkxZnq1ua7+CZIQWzkMFtMlMt
 IRd+O+wsh6VWJRV93p9j2/LQb/cGhjSEgJIlwKN04D0//LpddGAMYdimZ+WCE9c=
X-Google-Smtp-Source: AGHT+IHq8mQJHHCspvj6dHRiMav2oJi1D7d3a2gVdEsp6p3DsPADLGfhpHlDysvZKge1cU6fkAdzkw==
X-Received: by 2002:a25:2f46:0:b0:dcd:5f08:3666 with SMTP id
 v67-20020a252f46000000b00dcd5f083666mr3229434ybv.29.1709137096483; 
 Wed, 28 Feb 2024 08:18:16 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 b26-20020a25ae9a000000b00dcc75d4e22dsm2063296ybj.5.2024.02.28.08.18.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:18:16 -0800 (PST)
Date: Wed, 28 Feb 2024 08:18:15 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9cxygyGo8nla0I@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-5-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201122216.2634007-5-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709137096; x=1709741896; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=rl2J8wUQ0nkL1SOPD3XRF42shMc7kd3Rtbu+FuDVg5g=;
 b=UitF0Ke57qzOb/a3xAVXDC+V22bbugHr8w+eGIUoPhJHZh+4DoSdgl6Dhnf6n76GfD
 eJAnqtz30POo20LDHS5GykcaCBBieeCGPxlW8ZUrza0+dfhEZM54OR/b8XWM3IOzA12l
 i4W/StYA/W2MuNwILNMRxn4nreUIdz+zf4pSOWPxmmivONQDmf8J9Thnk8YEEclJ4eAB
 8xIKy8kYTQ9cgJNa7WS6hzlW+JS8qneisIrCv64oPk++HCOEPM3Qwolhcihlss/JvHGe
 7tgbsQ4uPE4tqlgJquo+aSHxTNiWg1sWC4KxFQVMevZOoI0joJDk7XcvUNpVSA1nx9hK
 bYMw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=UitF0Ke5
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 04/21] bitops: add missing
 prototype check
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, dm-devel@redhat.com,
 Alexander Potapenko <glider@google.com>, Jiri Pirko <jiri@resnulli.us>,
 linux-s390@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wojciech Drewek <wojciech.drewek@intel.com>,
 Ido Schimmel <idosch@nvidia.com>, Andy Shevchenko <andy@kernel.org>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, ntfs3@lists.linux.dev,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 01, 2024 at 01:21:59PM +0100, Alexander Lobakin wrote:
> Commit 8238b4579866 ("wait_on_bit: add an acquire memory barrier") added
> a new bitop, test_bit_acquire(), with proper wrapping in order to try to
> optimize it at compile-time, but missed the list of bitops used for
> checking their prototypes a bit below.
> The functions added have consistent prototypes, so that no more changes
> are required and no functional changes take place.
> 
> Fixes: 8238b4579866 ("wait_on_bit: add an acquire memory barrier")
> Cc: stable@vger.kernel.org # 6.0+
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Acked-by: Yury Norov <yury.norov@gmail.com>
