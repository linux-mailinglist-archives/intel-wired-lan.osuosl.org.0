Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMdpKNkOzWmMZwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 14:26:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B03837A6B7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 14:26:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 505906117C;
	Wed,  1 Apr 2026 12:25:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ShcxUKNoK3jo; Wed,  1 Apr 2026 12:25:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BE1E6116F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775046357;
	bh=kjbmHOYNPdjWQqtIIqSCC0ouY/w5LYFYyqsodL/XAZk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RiM3XSJelJIPnYhxjZk9ggq79SLgiutHMBjihmgqjfPOohVjzH0jTrErsZjsTdbX3
	 KaTnrGq5uzDjtwWdyeKCfg5mSFs71B3mmcNtr6qeo8Y+SAviNu3OHaiHBpjelhQCm0
	 9L5U5aOPUkbsB8l4+EvoZsWhBxWDTaoOZd3ZRkRG6lCrZM7da5FPwvGJjs5L+ec60h
	 +w0c1f00R5oiG5VD996sqAKjviugun/Bs0MFOsbeEt++okJCT3GlYAlQ5lzvlLzwDr
	 QtYenUcX9JIc526buLhQw83fAkbpYaPHZayBQOFPN/d8/h/8ESmhilbe93lxHB59Ag
	 knzklV6x8pZ2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BE1E6116F;
	Wed,  1 Apr 2026 12:25:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3438925F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 12:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 231E080EDA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 12:25:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OGCmupBy98Wf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 12:25:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=83.149.199.84;
 helo=mail.ispras.ru; envelope-from=pchelkin@ispras.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 467AF80EBC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 467AF80EBC
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.84])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 467AF80EBC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 12:25:52 +0000 (UTC)
Received: from localhost (unknown [10.10.165.11])
 by mail.ispras.ru (Postfix) with ESMTPSA id C46E140737A8;
 Wed,  1 Apr 2026 12:25:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru C46E140737A8
Date: Wed, 1 Apr 2026 15:25:49 +0300
From: Fedor Pchelkin <pchelkin@ispras.ru>
To: Agalakov Daniil <ade@amicon.ru>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, lvc-project@linuxtesting.org, 
 Roman Razov <rrv@amicon.ru>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 linux-kernel@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Daniil Iskhakov <dish@amicon.ru>, "David S. Miller" <davem@davemloft.net>
Message-ID: <20260401152405-43e821d5458d9b8b8ea8cd5b-pchelkin@ispras>
References: <20260325151615.1407182-1-ade@amicon.ru>
 <20260401120919.282668-1-ade@amicon.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260401120919.282668-1-ade@amicon.ru>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ispras.ru; s=default; t=1775046349;
 bh=kjbmHOYNPdjWQqtIIqSCC0ouY/w5LYFYyqsodL/XAZk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GK0pB+npyko2kR2HRFnphk8B25MDH8xxhKmy61PV8LAO7xZyOvHpsbGuUwcumqlKK
 AgOGMWFDUcuXQH1oJCWU+z7KLa351pJWdFP35A+y4CvnVQh7eycfNWUqSaHSe2kuyY
 0699eQqa4dPw9WKnZSK2r2Z5xza7DEx7GMskEta4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=ispras.ru
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=ispras.ru header.i=@ispras.ru header.a=rsa-sha256
 header.s=default header.b=GK0pB+np
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/2] e1000/e1000e: limit
 endianness conversion to boundary words
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[ispras.ru : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:ade@amicon.ru,m:anthony.l.nguyen@intel.com,m:lvc-project@linuxtesting.org,m:rrv@amicon.ru,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:dish@amicon.ru,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[pchelkin@ispras.ru,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pchelkin@ispras.ru,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 4B03837A6B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 01. Apr 15:08, Agalakov Daniil wrote:
> This series refactors the EEPROM write logic in e1000 and e1000e drivers
> to avoid processing uninitialized memory. Instead of looping over the
> entire buffer, we now only perform endianness conversion on the boundary
> words that were actually read from the hardware.
> 
> Patch 1: e1000: limit endianness conversion to boundary words
> Patch 2: e1000e: limit endianness conversion to boundary words
> ---

Daniil, for future submissions, please post new versions of the patches
in a separate email-thread, not In-Reply-To.

https://docs.kernel.org/process/maintainer-netdev.html#resending-after-review
https://docs.kernel.org/process/maintainer-netdev.html#changes-requested
