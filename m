Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CSMOt6VqWnYAQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 15:40:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9B8213A1B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 15:40:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B019C409B9;
	Thu,  5 Mar 2026 14:40:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MzAAOj4JOwsa; Thu,  5 Mar 2026 14:40:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE46240AAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772721626;
	bh=hzvwSp+J/sXpJ4omuzbLYqwo/49PuBoozjtLvyBYlac=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N+7fR+0D0SnHTPsJUh6mX23r/S96zNfUGVkPGeNb5J3OsCtNMUYoB/KA7eqHfQNQ1
	 1RFv5h4y+qFQRqXcX6H9NX9mxG0b0jfxW1al+NzclwU6mLoSZJFPV5z7oCoCNMr7/N
	 1UoEd7dhWeAUjlhTpWvS8KCzQzEbvNqBRNAdVyk0E2n6e4qcbjIhAQbjr/w7JGyUII
	 gfrfcYwGr230dZBeS0/bHDY5WXA2c3eCyU2OQE/tW2Ko7wcM5qmXtuEmLSWgR5dRrG
	 gqhRTibvWA7/ThFt7cteXbUoUHqbuv7Be603zi3xEDeNQKftwwSxiMtQ5OsvypNT62
	 Sh/qa1CtO3MQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE46240AAA;
	Thu,  5 Mar 2026 14:40:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 21D6725B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 14:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 12D4381203
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 14:40:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6u-vhzBjwx8x for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2026 14:40:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::531; helo=mail-pg1-x531.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B847A8116F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B847A8116F
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B847A8116F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 14:40:23 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id
 41be03b00d2f7-c738d1fa6f1so495865a12.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Mar 2026 06:40:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772721623; x=1773326423;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hzvwSp+J/sXpJ4omuzbLYqwo/49PuBoozjtLvyBYlac=;
 b=ThLlfmRwv9BLBJUZfK/xuj031l/3XaBH0s1zPBZzyDlwLGQqg3ZDyT0K0e2zylGVlQ
 dnOV+eaJMPxftU0pzET1ONOeRFnYMBNbrI4AyNC7bzTfUwtzN2z/lSMjZXOdAEX5lAU+
 nzTKa3DHVXuFaml/tasBql2oB4euRFUZ9Gn7eJQqFsgVe/OPlE9X2vprXqmuHV5+eS+O
 bCdGX98o/X3FGoFXygfG1ZCt47vVG+Tio0XZkWU2hdYth7pkt4eUCj+aeRGF1nr2dy1P
 3a41yumiK2ngASVcufGR4ba/6MNiGV8cHeHi0ZMkDW14GODbn8xyAUA0vE0cbWcueae8
 QGvw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV+B0mmzdWYg7sfr4jO0Y2D4OgylXjCyJH+nop8H1nm4Zb8Wzmd9y5dG2hYb72rWuhwTgYLG/81fGAp/FIn9N8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwYFpx3thaFe3b2l7g5igHBOpM/ynNZCkEfpXULQAKJCqUGxmxz
 /AbzOhfiBp4d3cJ6SCoEnchFpYOzbbpLJyWDotqb9j59vP96CDqNm5xmLFnR/b/Zdy0=
X-Gm-Gg: ATEYQzyDcT58zwpidghrIjxNv96HYxJBP9o/LvhFBrJIsoCPFLC0se3rLJbTa8OBsdQ
 TJREVGAhRKmiEh0hHaW38DmxXCwXfW6lo+KjaizND6HByHvt3d364Gy4H+K7/Vl5xZ6fzhnLaG7
 edbl7pmJbkx8ROi96iv3IG8CgqXqdW/s9+BXnLK2+zF9ZN6PIjbb8d1JNaZduQQO31NVlL+M+Jw
 25/sxt7zxq1WaI6qEqo4jyzEtrN6/sLYqRE2ps16SOuF+T/3c5TYugt/WRMxzrzxlcpXELgFLcm
 yrNbIxw2w8K2gZQNuLoas6WL/GAzRBqLc0EXjX6PPzS9Jw2IpcKD7S49q/AygVQ5TQ2CRAdLMjW
 kV2JrYWQCf7QM8nJ01gKUw6DN92MYnGLVuwhJ2F+42RhEjN9ltC12OoWKLOoHc0YWmM9P7KysYb
 wwwZwEOT7dN4DBsA==
X-Received: by 2002:a17:902:f64d:b0:2ae:5598:1da8 with SMTP id
 d9443c01a7336-2ae6ab80a25mr57121095ad.57.1772721622971; 
 Thu, 05 Mar 2026 06:40:22 -0800 (PST)
Received: from localhost ([2a03:2880:2ff:1::])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2adfb5c183bsm234187105ad.24.2026.03.05.06.40.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2026 06:40:22 -0800 (PST)
Date: Thu, 5 Mar 2026 06:40:21 -0800
From: Joe Damato <joe@dama.to>
To: maximilianpezzullo@gmail.com
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <aamV1aAG1TKPKqkN@devvm20253.cco0.facebook.com>
Mail-Followup-To: Joe Damato <joe@dama.to>, maximilianpezzullo@gmail.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260304-fix-typos-in-comments-in-intel-ethernet-drivers-igb-igc-v2-0-b6a9f1d336ff@gmail.com>
 <20260304-fix-typos-in-comments-in-intel-ethernet-drivers-igb-igc-v2-1-b6a9f1d336ff@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304-fix-typos-in-comments-in-intel-ethernet-drivers-igb-igc-v2-1-b6a9f1d336ff@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1772721623; x=1773326423;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hzvwSp+J/sXpJ4omuzbLYqwo/49PuBoozjtLvyBYlac=;
 b=oK5ss+Gf5P+qqjssf0roVeSMlFxfgM+xr4QPWYHTAUhEZfKb2tYtUOhGNTxx24MhIo
 6beGpPetTFwWwdL8sDcz61QDo8sXc4qkG3cmzRsuNa0kOy6RzCV8NTKU6s0wP/TA+agJ
 IWIPY6o8gFi1FcKq0XawiGCHAoNJ5vfokON9KIN2beJBYh5AJaQ6/Y5WJ1IJ4bYWwx0l
 RO25n9Jl6DzXIy5vCmzlSteLAr2z1U7qeIkFcvIX6e+39JK4mzLKspdqNOBAJVfRhp6Q
 JeZTL32AlPIthJB7/b13BYivKVQLU/iiWFrYHKaR1pKkM4yhuiFZlVX4EnmRIoToBGOd
 atfA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=oK5ss+Gf
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] igb: fix typos in comments
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
X-Rspamd-Queue-Id: CF9B8213A1B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:maximilianpezzullo@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[dama.to];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 08:21:19AM +0100, Maximilian Pezzullo via B4 Relay wrote:
> From: Maximilian Pezzullo <maximilianpezzullo@gmail.com>
> 
> Fix spelling errors in code comments:
>  - e1000_nvm.c: 'likley' -> 'likely'
>  - e1000_mac.c: 'auto-negotitation' -> 'auto-negotiation'
>  - e1000_mbx.h: 'exra' -> 'extra'
>  - e1000_defines.h: 'Aserted' -> 'Asserted'
> 
> Signed-off-by: Maximilian Pezzullo <maximilianpezzullo@gmail.com>
> ---
>  drivers/net/ethernet/intel/igb/e1000_defines.h | 2 +-
>  drivers/net/ethernet/intel/igb/e1000_mac.c     | 2 +-
>  drivers/net/ethernet/intel/igb/e1000_mbx.h     | 2 +-
>  drivers/net/ethernet/intel/igb/e1000_nvm.c     | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)

Reviewed-by: Joe Damato <joe@dama.to>
