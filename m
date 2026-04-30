Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHpOJBBq82k72gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 16:41:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDC94A42A7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 16:41:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17D1484CE8;
	Thu, 30 Apr 2026 14:41:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2zq-XByyK0aZ; Thu, 30 Apr 2026 14:41:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 404EB84CE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777560073;
	bh=DWwCZMRNrBohx6wiH/R/ajuzPFQYuehky0ir6Vh4LgE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C/kmWV0iuwkfH/DVNoZ1CEkHHST8XbU7vmda/Gp+yQj7boEWdQY0C1vfzAaYfqbYA
	 8ByxN8ddZGcvUSY3eT41kpsotpjCpmn0RhNjuaWq5nvi0eDfN7UrdMnZbwzM/iPmvB
	 4wQ1v90OTuHkQst9whTdwWn8hkjs3emYxJngHEvj+o787WD4IO0vnx77lBnNc+D7Mi
	 d9ekQZlBUP9viPkQYCmA/WhTL0kq+36PJirm0ZyLPIo0xg5AhRWnx6SIBbasd7l2zF
	 MQeBeeBgd+EaiQW6xJWaxus19KJ7bQD+tJ9nwpHBCTtCW9zlQMzeLrmh4ZIhgx61PF
	 sIqk2qA2AYbiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 404EB84CE7;
	Thu, 30 Apr 2026 14:41:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8FDDE192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 14:41:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7583584CDF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 14:41:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6EcvhiBSJ466 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 14:41:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::433; helo=mail-wr1-x433.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 54DFF84A56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54DFF84A56
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54DFF84A56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 14:41:10 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id
 ffacd0b85a97d-44509921fbcso588113f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 07:41:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777560068; x=1778164868;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=DWwCZMRNrBohx6wiH/R/ajuzPFQYuehky0ir6Vh4LgE=;
 b=RZAbKVmQaLZgU4g2H8aotLVdrIYhujWn4cFFVH7Gx8dZZB6D3bWaA+tiHkHMIz4cVg
 96kQfQjeTUwi9tjKKye7ty58TU8YbUUbzzMKBvpJHlPd7aZlcA3Dy0t7s9LK0kRoK8vU
 VdPcLJ1W0JX3tO5GnQgRnz+GiQpaQpzzv6PvbKgiw4Dqv6WKaBmOCoYtiAecj2sI1O2L
 Qiy86/q4UGDDPg4pQsx9nZb3CNwvps7lSQQUpT+uhxaWzoHyFJOjqBiznjG0fC+WOmvT
 8gaQRbCN2Jj2fDi86nZexP2NqmPXi1OxPmuFEJq8nGoNbbOXLKCupTXsDR1+2IMC/wVS
 GkCA==
X-Forwarded-Encrypted: i=1;
 AFNElJ+hTsTOJ/+zWoDZhtzRkCTkJbHBbOoYRz8k8gAPoGXZYpkFRloiJvpgPd1svf3YgaYY9YTmLuqs28unNqsD3TQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzfZQ5fUvOKoA3jbQ8GJXdRZj1INLTQc6ykQo+rc0DY3P3WrmXI
 rqCgqZae/TbUAPU8iGj/x5cfYCsDZzQlerLCUHsGIQSD24pQCvgw2Lp1HRgd9IzN
X-Gm-Gg: AeBDiesTCCixY3iZuJytdAh1xr6jt4oKjVZv69skEkfTk/JTa2x/4nEiAVUJPo3uk2q
 ys+kT6Yk2xVXk85+jGkNDZqSZ0FBjAreRrbyQSbFkvR3OzHSPmvaFG0M5A08MuHStGhOCQD0qYA
 Dfrn6+Da1Ox9h1HSH4bAnbGblHDh7hmfewxjx6uAEoBSFD+yYsw5aOvrx/13mvCvh8YgMmkbT6P
 lAW0WpT6YL1nB7jCNv76mn6ON9wZJLLMv5tAjg6XhnQ09xziLomv4S452pLU106mNAsYu289kuO
 5C/6LdZAW0+7JcIuuWparooMgL4lDv6RGPTBCyJfcHybudE43cKfrk9JQDzRvv79Ty96SsSBULu
 02Mnorw2OQA/Ia34CBirerGmczfrbal4AMp/nVRD0KvLDIIJunTjpFpp2dkeZa/K8MjizXAQjRo
 EUaoXLZ1Pv5Av7Qf7+A+PYpFxAqqnSacF7mKbGd3UN0+cQT6WsiME+0y0iQcIY2rBHg/OmzEfpv
 nE=
X-Received: by 2002:a05:600d:1b:b0:489:1f6b:6276 with SMTP id
 5b1f17b1804b1-48a8445258bmr44879875e9.15.1777560067659; 
 Thu, 30 Apr 2026 07:41:07 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48a82301adesm65720755e9.10.2026.04.30.07.41.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2026 07:41:07 -0700 (PDT)
Date: Thu, 30 Apr 2026 15:41:05 +0100
From: David Laight <david.laight.linux@gmail.com>
To: KhaiWenTan <khai.wen.tan@linux.intel.com>
Cc: anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, faizal.abdul.rahim@intel.com,
 hong.aun.looi@intel.com, khai.wen.tan@intel.com, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>
Message-ID: <20260430154105.505739ac@pumpkin>
In-Reply-To: <20260428060009.311393-1-khai.wen.tan@linux.intel.com>
References: <20260428060009.311393-1-khai.wen.tan@linux.intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777560068; x=1778164868; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DWwCZMRNrBohx6wiH/R/ajuzPFQYuehky0ir6Vh4LgE=;
 b=Y2e5etjR7ALiCO5Gk+6HJFdSwwmlXs+7pVtb5W97wvMwrdSx5ETfor/YZcJgGdVerW
 zyeWFd1NYg/4kLV6MF68ns8xbTaf4PkA0udjZIlWMOW+Ap23SUHdS2riY8DHdCSDEAGO
 06CyPS/+dntydvkfvJ10KDN7XFkwjEM7zeyNp5+l9TmlHHV33UlGMxHpb90AK/lz05EV
 ndXzWtwZDNQTZEjn2cj1qvELcZf+1kDG/CFkwaNkbVX6XuzTpFCbZh20MC/M+WmVan04
 qO6oGPol7sJJWbrPjiWEbi+72le7dGtilPo1TU+5+lBOKZ5FneQ51hwGA4rduuaMo8LK
 dTig==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=Y2e5etjR
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/3] igc: add support for
 forcing link speed without autonegotiation
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
X-Rspamd-Queue-Id: 6FDC94A42A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,ozlabs.org:url,osuosl.org:dkim];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TAGGED_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

On Tue, 28 Apr 2026 14:00:06 +0800
KhaiWenTan <khai.wen.tan@linux.intel.com> wrote:

> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> This series adds support for forcing 10/100 Mb/s link speed via ethtool
> when autonegotiation is disabled on the igc driver.

I'll ask 'why' ?

In particular forcing half/full duplex has always been a very good way
of 'breaking' a network connection.

It really is much better to restrict the advertised link modes and let
the autodetect/autonegotiation logic in the phy/mac do its job.

About the only think I can think of is to force 10M HDX when connected
to a remote system that supports 10M/100M HDX.
In that case you need to send out single link test pulses, not the
burst used to identify 100M HDX, or the pattern encoded on the burst
used by autonegotiation.
But you need to got back to the mid 1990s to find such systems.
Anything that supports FDX will do autonegotiation.

	David

> 
> Changes in v4:
> - Validate that autoneg is AUTONEG_ENABLE or AUTONEG_DISABLE early
>   in igc_ethtool_set_link_ksettings() to avoid passing unexpected
>   values to igc_handle_autoneg_disabled(). (Simon Horman)
> 
> Changes in v3:
> - Modify condition from "if (duplex == DUPLEX_HALF)" to
>   "if (duplex != DUPLEX_FULL)". (Simon Horman)
> 
> Changes in v2:
> - When forcing half-duplex, set hw->fc.requested_mode = igc_fc_none,
>   since half-duplex cannot support flow control per IEEE 802.3.
>   (Simon Horman)
> - Split the original single patch into three patches for clarity:
>   patches 1 and 2 are preparatory cleanups; patch 3 carries the
>   functional change.
> 
> v3 at:
> https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20260422155701.7420-1-khai.wen.tan@linux.intel.com/
> 
> v2 at:
> https://patchwork.kernel.org/project/netdevbpf/patch/20260416015520.6090-4-khai.wen.tan@linux.intel.com/
> 
> v1 at:
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20260409072747.217836-1-khai.wen.tan@linux.intel.com/
> 
> Faizal Rahim (3):
>   igc: remove unused autoneg_failed field
>   igc: move autoneg-enabled settings into igc_handle_autoneg_enabled()
>   igc: add support for forcing link speed without autonegotiation
> 
>  drivers/net/ethernet/intel/igc/igc_base.c    |  35 +++-
>  drivers/net/ethernet/intel/igc/igc_defines.h |   9 +-
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 209 +++++++++++++------
>  drivers/net/ethernet/intel/igc/igc_hw.h      |  10 +-
>  drivers/net/ethernet/intel/igc/igc_mac.c     |  16 +-
>  drivers/net/ethernet/intel/igc/igc_main.c    |   2 +-
>  drivers/net/ethernet/intel/igc/igc_phy.c     |  65 +++++-
>  drivers/net/ethernet/intel/igc/igc_phy.h     |   1 +
>  8 files changed, 257 insertions(+), 90 deletions(-)
> 
> --
> 2.43.0
> 
> 

