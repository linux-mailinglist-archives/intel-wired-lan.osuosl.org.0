Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKjcHNi+wmmOlQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 17:42:00 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EDC3193B2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 17:41:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5948B409A4;
	Tue, 24 Mar 2026 16:41:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o0fwAvch6Bki; Tue, 24 Mar 2026 16:41:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4C6A4095F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774370516;
	bh=7MatbDgQaWgyh+g+DD4yZjrx8Tdr7YMJC0zFSYrDllM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q9Tv7UKfcKzSsN+nXHXwQ1SC4hr9vSo0Jvdekg6tawmxtKbi+p+2R2BLN9aIX6OfH
	 fH2tdFdxc+R79tP0rYRZvj+w79BT+PVtrn+0SQYLwURIzm0OxtPsxsE1rvAB4Svem4
	 I6n/zqrcYJ0biWv2g5B+J3Qj4XsAjtTnhRob5e0SPvf8MDQFpoiJTkxLv4Atgu+R7X
	 y+3AqvK9A/eVtdZvuUZCaYsm0Y5qfg6xKhw8FcAusP0NUo5F8CfHmqtjj7Cwn9HhoE
	 Zd55eZ1o0SkQpbrlBSTAPGKMuIDk0aS1KSs8SAxEs2Xjp1A1cWsjfLY+ma1b/yj4Ec
	 BlLVo1vBNBUuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4C6A4095F;
	Tue, 24 Mar 2026 16:41:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 48204F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 16:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A97F80E55
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 16:41:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QslerHRURaQx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 16:41:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62f; helo=mail-pl1-x62f.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3AC9980E52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AC9980E52
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3AC9980E52
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 16:41:53 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-2ab46931cf1so545515ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 09:41:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774370512; x=1774975312;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7MatbDgQaWgyh+g+DD4yZjrx8Tdr7YMJC0zFSYrDllM=;
 b=cK0pTPWN6zs64w2wV1MJ3hBfrSU+dnVZibmVpxiQXpVEk6bJgNOeby371d4BQKZoqd
 rjLo1lreduiy9jkguYXcEdE4ghaWUOmSb9N79m8nyDmLR3SioN8H/rUSq49gSgeJ7db2
 lFwsqIncNBQ5wiOeJUSTUZPcUYxIBnM2FR0qepxqG6DSn2HuZhl6mKBRcrUsydIRliJO
 iM4aTwikd6hJZSsv8F32is44d6B8OtrsNaufInKIFMNygUOgUQDs4TXEQjzI6/JxNm4U
 Xq+8PWjhbdT3o0FfXrVMEmHb7bx0jfjLlxjSKbJZEeLvk9vuU3tCa0R5Jh/WV3GUId8d
 S8sg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW8N3m47BARVrJYDRuLvpdNjqk4GvqS0sn7VmpGEMEN82te3XZGKwetc7E3TXXCS7AmVUkRKKFZv6v4zeTRasE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzEIdq1JpiSqOQZAyMxoTb50yJJ4GTR6ePLqnxpph1/LnL6+lkJ
 z09bBJwotXWxbhwBiAfity5n9ikQg3cekmN8XtOAuYD2OUMO0mmxhX/WpxpKsm/17FE=
X-Gm-Gg: ATEYQzxH6YHmjKFmNLFKk76la0X7qlEAU+u//f/0cGb3Pb13w3iaKtZmACO3yrRAdlD
 JHRP3HRA+qNJJkrNu1V+7GUHYoSruVWnNfh4bGONzO/wyr53lIGobKTh6Y9Al88XUf+Oxw3pI9u
 dEsfM+MD5z8kEJdFB7AN/LgbMqjj/wamvHdwzgbvd8/T8uO7ZnKG9l/DMY/rHxHZiw5tbytQc7M
 mRnXd9PTaXyD7cloIDALAEWRoAQW4ySRRxPJHBEoQCjx3sU0lqF9iTuTYvgSzl2+ys5KZWEpw0h
 DBYDLxYzcz2C8kK8L/5aKeJZ5GHMURfMXmbSkhXkvYhgJVEAjdHRi5fNkgLXc6YphsOsAUougVC
 hG4lT52VCMROAQ3Cr9etkrClPoyPSmxNE4/vKrlht93B5uj/sq8KjbFU4l6xQUoTRGbJTnrLIJB
 OnuR9N
X-Received: by 2002:a17:902:db0e:b0:2b0:5a4c:726f with SMTP id
 d9443c01a7336-2b0a4e0f962mr38951665ad.15.1774370512477; 
 Tue, 24 Mar 2026 09:41:52 -0700 (PDT)
Received: from localhost ([2a03:2880:2ff:50::])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b083516b96sm191790655ad.7.2026.03.24.09.41.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2026 09:41:52 -0700 (PDT)
Date: Tue, 24 Mar 2026 09:41:51 -0700
From: Joe Damato <joe@dama.to>
To: Matteo Croce <technoboy85@gmail.com>
Cc: Mohsin Bashir <mohsin.bashr@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Message-ID: <acK+z8Udlg1qyDeu@devvm20253.cco0.facebook.com>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Matteo Croce <technoboy85@gmail.com>,
 Mohsin Bashir <mohsin.bashr@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20260320132356.63194-1-teknoraver@meta.com>
 <20260320132356.63194-2-teknoraver@meta.com>
 <1d708196-7b89-431f-bb17-177564196894@gmail.com>
 <CAFnufp0LRVxwh50cLrg=hUe6itshTqrNy53HkvBWk6MQ7uL0KA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFnufp0LRVxwh50cLrg=hUe6itshTqrNy53HkvBWk6MQ7uL0KA@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1774370512; x=1774975312;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7MatbDgQaWgyh+g+DD4yZjrx8Tdr7YMJC0zFSYrDllM=;
 b=xg9GdYTiTG+/7bAHuYWlV6xa6eLUREWLM19xXqkAZSzXAEYJdKlFQPLJbNW/PGll0b
 AeKS555+m7oTvjvFlZjUK73oVhRCJd/m1Xw0IpIsDq5A4CMHigdiRpJ2At32Wcu/7hK4
 eFvWwzEAhAT8PERjAK5zQVcKC6jOlrFSuZvJKrQ8JyovRE4EQLUbXvBdoeegk3MVwVhP
 imZwh0Gbyv3hNYvZLOHVfWBofO7rfUJRIxunBCOSY4MjutP8BzjOxht/6lMyEEMRF5yZ
 vWgg1ltfvrMBsgggiO3VDRijbTT/FDPJwCYavr+NErAOgPZT6ZYWe4ThiEISfKJutlYZ
 Sw5A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=xg9GdYTi
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] e1000e: add basic XDP
 support
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:technoboy85@gmail.com,m:mohsin.bashr@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mohsinbashr@gmail.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[dama.to];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_SENDER(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 55EDC3193B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 22, 2026 at 03:11:56AM +0100, Matteo Croce wrote:
> Il giorno ven 20 mar 2026 alle ore 22:23 Mohsin Bashir
> <mohsin.bashr@gmail.com> ha scritto:

[...]

> I addressed all the comments and I'll send a v4 soon, thanks!

I was paging through the code last night and I was wondering: have you
considered splitting this patch into multiple smaller patches?

It would probably make it easier for reviewers to read and comment on.

Just my 2 cents since you are sending a v4.
