Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mK3oJqYDAmrknAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 18:28:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78426512215
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 18:28:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C33240445;
	Mon, 11 May 2026 16:28:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oI5ffr7cTz6K; Mon, 11 May 2026 16:28:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5F744040B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778516897;
	bh=vJlSU8Uv4Mos+oyiqsIwa29218B2Wja/Xm7NhiwexR4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BG3wySlt5CTW3rYuEta836pxB1Bl6w+vUqoUgVZJb2CTpfDyuG/K0wyuFmkknALPF
	 4dF+wsvZ8IYCbEWSNz2G1KxtCPN0SsHO2+1J37zZKfCg6saRYkjbZbqYZb3/8iWBgn
	 /YEmzZdgRGZvBwVOqQ1ELZTK9K+L7bnQAy6yh9N3zr8TcLW09ynPBLuOWxoAaW9UBL
	 9s8BDSpIf95P7Mxf1E85Vpu3winQfHjy/7wCmGH6AxUeM6ItuGWYG3qOGyHBgRfV/k
	 zKUqfzjr+TaXIbKZjUHxde8NG2pdymoIITICJPh/JWqZTH7H3oIc6XFJz/jZXlmNSI
	 zh7B42LUh1wjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5F744040B;
	Mon, 11 May 2026 16:28:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D8425223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 16:28:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA1504032E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 16:28:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rwYOw3U8UkVK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 16:28:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 400144031B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 400144031B
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 400144031B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 16:28:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0D655403E9;
 Mon, 11 May 2026 16:28:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FA99C2BCB0;
 Mon, 11 May 2026 16:28:11 +0000 (UTC)
Date: Mon, 11 May 2026 17:28:09 +0100
From: Simon Horman <horms@kernel.org>
To: KhaiWenTan <khai.wen.tan@linux.intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, faizal.abdul.rahim@intel.com,
 hong.aun.looi@intel.com, hector.blanco.alcaine@intel.com,
 khai.wen.tan@intel.com, Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Message-ID: <20260511162809.GF27589@horms.kernel.org>
References: <20260507214706.309984-1-khai.wen.tan@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260507214706.309984-1-khai.wen.tan@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778516894;
 bh=NniAWlMwg0MnR6VwlJuOsYihhqkKD5tw4Vf1zwmvhOQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FdErAr2g44EhXnJtKEi7rHDBqfcWm0A5OWtbXe1WEibnye4I94d9KVuTYU34JKGWy
 IGXB3TEIxXv8Sv1tx7NbvltWUQHb43Orf8jMN7lU2Tw8JGmXDOn8AKPo8289yRITae
 tChraIzauoxsLjkZofATYli3oPIj6hfDzAI1q4Ld6Mq9PHFQar8Vh8dmBTEtsZ4QOm
 OQdV+DuR1bnzRA/v/6W1PUu9joKz3BbYGWlniw4DeKbNNFg01sWcukZ3q6BRBUZkBb
 pwq+mQ+q/O9aEZOgBWXX2r1hEoP5UOPQNA0N8Hg059Gb4xPMiAm/9XxHS2etI8f43O
 GB6wxhZXaRkfg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FdErAr2g
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 0/4] igc: add support for
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
X-Rspamd-Queue-Id: 78426512215
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:hector.blanco.alcaine@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 05:47:02AM +0800, KhaiWenTan wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> This series adds support for forcing 10/100 Mb/s link speed via ethtool
> when autonegotiation is disabled on the igc driver.
> 
> Changes in v5:
> - add removal justification to include copper context in commit
>   description for igc: remove unused autoneg_failed field (Paul)
> - check that cmd->base.duplex is either DUPLEX_HALF or DUPLEX_FULL
>   in igc_ethtool_set_link_ksettings() (Simon)
> - dynamically override hw->fc.current_mode to igc_fc_none during
>   link configuration instead of mutating requested_mode (Simon)
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

Thanks for your persistence.

For the series:

Reviewed-by: Simon Horman <horms@kernel.org>

