Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE585959FEB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 16:32:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9907F4033F;
	Wed, 21 Aug 2024 14:32:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 14c1-snSSEbe; Wed, 21 Aug 2024 14:32:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A31040361
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724250731;
	bh=biVSu46zBw/d45X/5pV0QE3qmX7CqejUbyRqyBHiwko=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ThH/SC+F606tZIQv8bNWaAqVX3xelXvJ3xZRc7zoa1SWDaNDFs7XsT9usUYiozPgx
	 R+G/u+04Ae7TXbUlvFI0Xy3aYb7byKyXrFI0nkD8h5Nz1aidSX4DHRlP81lT22RI4a
	 uD1OOUs0fZWvHvuMSwZf2DlfJvNAHNCtbkWtM9JnVSebPl7YiKLIeMh5MIdHGLnd9Z
	 yBS1eQzQPcsxfSCjXJdB0eDbDM+vdHJCpNWsd57/0FegLWHEAg7Cl9j2uYNpmIw2rF
	 2BeVr0tMY85ghePtL7M+nOUU/9um1zeid7HZ1NKfuEGR4RjJg+gxZdxL2GtPof6LnC
	 MTErq7/rtMZ5g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A31040361;
	Wed, 21 Aug 2024 14:32:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E14761BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:32:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE1B94033F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:32:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ef2BCFhFqj33 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 14:32:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::733; helo=mail-qk1-x733.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B2D7E4026E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2D7E4026E
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2D7E4026E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:32:08 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id
 af79cd13be357-7a1e31bc1efso423865985a.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 07:32:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724250727; x=1724855527;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=biVSu46zBw/d45X/5pV0QE3qmX7CqejUbyRqyBHiwko=;
 b=S6ddeuVtDeJMaNpjEh8idwNttaYuo+rrP97UUzUp1v04ksEVoVnVhngBD69NRu7vSs
 v/Cu7sNxuzUfSY1pzl+UkX77CSY66lVr4q+7BHE6LmVVCgbujqEf5rieHBQ0hSztIyO+
 wborn5SW1ejrdmFQjqHasa/lng6vqxgEUmhp5rx6EmjhcUHXZ3hMTgMGxTJYsVUgwp9Z
 AEXLZFwVlXyk7IpUYEsYeEKhUp4uH/uRHbKk7wo4F+q2qWtn8pQMU+JQaj7dAZYq7yrR
 Uj9QCzgtdMLeWE0xCbdqUN/qleKrfG2f7/T14iV6TpiqEzhMnO2u+2EValSwKn74bjeR
 BHIA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUbjGBTWRvp2Gw00KiV9601scKnenFl+21/+pHhcVejT42505Fxa71lratp4sGjEEbHQVzjQLIAqJmpfS+cC/I=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz3ccZ6AV9XFadZXRgSjGKGgMAfHhxh0mayYIkkEjM8Y02hMHlg
 7L6xm2bH8g6NU6ZOyFoMsEX5hiyxKk6rdnv7i5qSauWGI4fcCxfi
X-Google-Smtp-Source: AGHT+IE2DHCr84PEpAqQls+B0QryLYvQ0CnKet2drBbYwwxjPkBAQG7j1JIGKJA4tQoL/ZAiF953BA==
X-Received: by 2002:a05:620a:1a27:b0:79f:170d:8b7f with SMTP id
 af79cd13be357-7a674023332mr320905085a.24.1724250727292; 
 Wed, 21 Aug 2024 07:32:07 -0700 (PDT)
Received: from localhost (193.132.150.34.bc.googleusercontent.com.
 [34.150.132.193]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7a4ff013ef2sm626421085a.11.2024.08.21.07.32.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2024 07:32:06 -0700 (PDT)
Date: Wed, 21 Aug 2024 10:32:06 -0400
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Krzysztof Galazka <krzysztof.galazka@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Message-ID: <66c5fa663e274_dc0c22942f@willemb.c.googlers.com.notmuch>
In-Reply-To: <20240821142409.958668-1-krzysztof.galazka@intel.com>
References: <20240821142409.958668-1-krzysztof.galazka@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1724250727; x=1724855527; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=biVSu46zBw/d45X/5pV0QE3qmX7CqejUbyRqyBHiwko=;
 b=lbqjIZRCuaGjFivBaP2M+nsThpdbFS61liHi3VySzvgGrjzg/QxeMD4FuWGU7BsnyV
 IMGhb+6F5LbSfQ7iv7lXlWCze9/Y9IrNQ9HV2XtEQ65V6i4PElcQLm9WRTjeK3ElXCxs
 v1eEzTQHkcOefn72Ob8oGyc8cEExfI+3Dt1MGjuEUpPCvS7hBOwKFz9K6a9KyOn5mPpg
 IWsjw5jutpfKbAzkDis4C3FkS26S+k9FqitbRe4RVorlw6tzIcic1sx/jsaVDya87LdC
 DobY8g5s4rfUKxrxLh22r26zabOqEOHwFassJcEwy4blzPlXgyJxGT7V/DwF2jRNVVl0
 nbhg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=lbqjIZRC
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] selftests/net: Fix csum test
 for short packets
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
Cc: netdev@vger.kernel.org, Krzysztof Galazka <krzysztof.galazka@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Krzysztof Galazka wrote:
> For IPv4 and IPv6 packets shorter than minimum Ethernet
> frame payload, recvmsg returns lenght including padding.

nit: length

> Use length from header for checksum verification to avoid
> csum test failing on correct packets.
> 
> Fixes: 1d0dc857b5d8 (selftests: drv-net: add checksum tests)
> Signed-off-by: Krzysztof Galazka <krzysztof.galazka@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

This is not Intel driver specific, so can be sent straight to net

> ---
>  tools/testing/selftests/net/lib/csum.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/tools/testing/selftests/net/lib/csum.c b/tools/testing/selftests/net/lib/csum.c
> index b9f3fc3c3426..3dbaf2ecd59e 100644
> --- a/tools/testing/selftests/net/lib/csum.c
> +++ b/tools/testing/selftests/net/lib/csum.c
> @@ -658,6 +658,9 @@ static int recv_verify_packet_ipv4(void *nh, int len)
>  	if (len < sizeof(*iph) || iph->protocol != proto)
>  		return -1;
>  
> +	/* For short packets recvmsg returns length with padding, fix that */
> +	len = ntohs(iph->tot_len);
> +

Are you running into this while running the standard testsuite in
csum.py, or a specific custom invocation?

Since the checksum is an L3 feature, trusting the L3 length field for
this makes sense (as long as the packet wasn't truncated).

>  	iph_addr_p = &iph->saddr;
>  	if (proto == IPPROTO_TCP)
>  		return recv_verify_packet_tcp(iph + 1, len - sizeof(*iph));
> @@ -673,6 +676,9 @@ static int recv_verify_packet_ipv6(void *nh, int len)
>  	if (len < sizeof(*ip6h) || ip6h->nexthdr != proto)
>  		return -1;
>  
> +	/* For short packets recvmsg returns length with padding, fix that */
> +	len = sizeof(*ip6h) + ntohs(ip6h->payload_len);
> +
>  	iph_addr_p = &ip6h->saddr;
>  
>  	if (proto == IPPROTO_TCP)
> -- 
> 2.43.0
> 


