Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 826EAC6C2B6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Nov 2025 01:50:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E63EC40A80;
	Wed, 19 Nov 2025 00:49:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X82xGI4OtfaK; Wed, 19 Nov 2025 00:49:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 712BB40A89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763513399;
	bh=u1JZP4mJOczUNP4pl5LS4F0RC54qpkfUlqRw4pgbJgQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3mYMwPYbQhV44wEy/w3jvhFoJyGk+bSHDV+m36wKGzs3IvUMPLBcUGbLyzIXH4HTv
	 wTxN/WbdysJPbAnAqyTl6n1plE4IigaWvQUVaCzLQdHeCA1sWcj0hxFWUnX8qs/Awt
	 Yu9/167PzSdrQbZmjZbgZEpB6Gbl4BooJLLt2CjqsqmayA6Z1Qe8s0D4lxq2yE/X7k
	 EwyGQcYU/C1qFNkl1Q9BXOlvUkBYzBOTlga03dnj51vvbK4wBS/ogk40oAjqx6qMGT
	 +nYBbFkm0DxC9xz3XWcg56JndbRYPus9T05SGw1YcYgFf63LPzgQyAiFugGS/coY3R
	 HbzFcBt1hxa4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 712BB40A89;
	Wed, 19 Nov 2025 00:49:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 78949158
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 00:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A37E827FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 00:49:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 28hRitRoYGdQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Nov 2025 00:49:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102a; helo=mail-pj1-x102a.google.com;
 envelope-from=alessandro.d@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B7B47827CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7B47827CE
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B7B47827CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 00:49:56 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 98e67ed59e1d1-3436d6aa66dso259974a91.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 16:49:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763513396; x=1764118196;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=u1JZP4mJOczUNP4pl5LS4F0RC54qpkfUlqRw4pgbJgQ=;
 b=mwaS415Cc0oM71HyRDPrH+2PEPFgVlv2f/yiB7cdgHa+/UdcNW9i5WN/KqyJ+0Iw3N
 xniw58J3cvvJQ3b9VeKhKGP/LDLkuADkHHhtFxxlwDKqFUtusUzIwGP+by5h9tO5qY7g
 VA8oQQO0rWGOs+TkidCrTa5lk/nyuQjs0xx5Dhh2Hox4B4V4MsvbT3MASd3u5bxJaUu0
 ZZni+Scoj4oUTy/BiRxY9dXfZfQsf1PurgqhriwqnFpPYVxMK3G9JRkg7aZZui2KFV6B
 Bl9Bf6mAYqktdnDZsEDbcH8RvFcK/1+54qaqS1VPQPF4BYUnT/u833xLmp1LYlV6OXj5
 EVCg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgyUy8RCjiPumNCclCV1hkRgdMGRnS7yTjmx2v1cWFPMSkK0rUulnIH9s3LZbnkP8kyX5sBauPlOBtKR0xhJQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzw7CxPYbXE0o/8CIkqXDDzDKBqlQWSLLscbWQkvEJ5TL3xzAxi
 YQVG3sWUnrUZ+OcJ3y6GibYOpojUhAn63LQpmrUR55GdQkcXMGDWhjF0
X-Gm-Gg: ASbGnctOVlSGWDN+cIh5waTrMShcxVr5B2MYz5yLnAkUGn4wxmBy6DGmv98nEJNwHSA
 9+FdM7VVoUx0kY/xBlrQr2tlDlcWS6G9geayq/MpeDl/yMFTBfKWI3TlARW0d4eMYuhQQ2/CtjI
 2Mye8s0CjuQKqErlJQ/ITjdTlQt2gNQJCvw9K1lHHO5ooc5efXnGteh1Pc9FfJ/M4Gkj9vHQC5e
 B1rH/A4rBjZ1uWhieIL7EwhbE8MDh8Hwd9WyDQCZK+AWdToYil73lLQ7UHIxWVCMrryaG6kcpyN
 iuU460xrZflMOVerQE12U9BGwohJz3pneYpTPA/m8komjeAT7J0CnDZvh/kazaI9vRpJW4P4OV7
 4Iikk5aCFIStgK5c+GYkBQb5B1eSKTdAH6HmmDUMyPi+O/4kx4GMMNVHaU6jjOYM+m4O3d+tbr6
 GoU44h5rlKXx7y2NdqmH+/zXr5MyOfALQJsmz2Vg==
X-Google-Smtp-Source: AGHT+IE8JxmF1L3MBeFjrjhCVliPKr3nWeWpK8dN326PMLP1SXtwFKRVIWLKhkDIZdOHuuTrc26bbg==
X-Received: by 2002:a17:90b:1345:b0:340:29a3:800f with SMTP id
 98e67ed59e1d1-345bd3038cemr513343a91.15.1763513396057; 
 Tue, 18 Nov 2025 16:49:56 -0800 (PST)
Received: from lima-default ([103.246.102.164])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-345bbfc8d8esm704033a91.2.2025.11.18.16.49.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Nov 2025 16:49:55 -0800 (PST)
Date: Wed, 19 Nov 2025 11:49:44 +1100
From: Alessandro Decina <alessandro.d@gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Daniel Borkmann <daniel@iogearbox.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 "Sarkar, Tirthendu" <tirthendu.sarkar@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <aR0UKHeilBX5oTg9@lima-default>
References: <20251118113117.11567-1-alessandro.d@gmail.com>
 <20251118113117.11567-2-alessandro.d@gmail.com>
 <IA3PR11MB89867864D4ED892C677CA8CEE5D6A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <aRy+xA5xSErIb61j@boxer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aRy+xA5xSErIb61j@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763513396; x=1764118196; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=u1JZP4mJOczUNP4pl5LS4F0RC54qpkfUlqRw4pgbJgQ=;
 b=frrpBG6JV8nv48nwf6zCEr9Bqmnf34/+uYYyTyR+O4vOz5O/hqwnZhU7k0EON42G90
 IwXaqZHZyHhcAylidvpmwN0vo4exeESry1RloyQI2bGCPJWyM23EzfNcxHkuMPxbjzST
 eEp5bcP3Th71VJc4lFdZvjLLutSihDh+vyJ7s/k3wrltAmh01xgUzSguRkF6lNVmB7oF
 5IROt9arq42/PhqATOeDybPe2qvMB9egLwyJilX2qWY1bD+h+N9rI6v0yaC3NmN1nw8T
 E5zOIFuJ5+HnPBhW7mNKhm24azuG60Apbk1gU9SomhHXTu65c/wMtRrELMQIIpHsm/7+
 Hrng==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=frrpBG6J
Subject: Re: [Intel-wired-lan] [PATCH net v4 1/1] i40e: xsk: advance
 next_to_clean on status descriptors
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

On Tue, Nov 18, 2025 at 07:45:24PM +0100, Maciej Fijalkowski wrote:
> Repro steps would be nice to have, rest would be rather redundant to me.

Yeah unfortunately I don't really know how to _manually_ reproduce.

I don't know why I'm getting these status descriptors, but I'm getting
them reproducibly every few minutes on ubuntu 24.04 across 3 machines
where I've hit this bug/tested the fix. The machines are doing ~300Mbps
of UDP traffic, some of which is done using AF_XDP. The AF_XDP code is
TX only, so it's executing the build-skb-in-zc-path all the time as all
the ingress traffic goes to sockets. 

If you have any idea on how to reliably produce the descriptors I'm
happy to give it a try. 
