Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOODHk4AxGlXvQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:33:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0291632812F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:33:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A1CB61046;
	Wed, 25 Mar 2026 15:33:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XqIBCML-3ghI; Wed, 25 Mar 2026 15:33:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EF356100F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774452812;
	bh=CgGVEdDotrUxFWiSjF8zmnyJCQXPhbkhrROl5zrGJNE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yKwyRMyT4pKBqrXQldJeTnUn8fZaevanQjxlp/d3kShZ9iRzPzdUn8wlkyKVpQbwR
	 9wqwyDfhc8VV3s9nXVVkQ6wIvNnDbSMyi2L0F94NoUOloFyyRxzTuR2eThNIHwjvtx
	 lHH2xbZ3B1JFW6seJy5Y+dsez42fGk9DlIsyhl0XSr+ELlMqBD0aI15xGlHLr/DcsX
	 0QT0Ka+jxOP1R67S7LaprgXYOcxuMUPPaQhy0uy9ra3Lt0kB6AXPC/wMi0WlDoEMAj
	 usR2d/Y2UtwF58IiFqGG8kiXdg875KR19pqm8r39b6sEVEn0M2dmawe+36inVs/OHS
	 QGywrf+wuOW+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EF356100F;
	Wed, 25 Mar 2026 15:33:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 592E7353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E5EA4009E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:29:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W5aeg1LKRrLB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 15:29:14 +0000 (UTC)
X-Greylist: delayed 563 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 25 Mar 2026 15:29:13 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6101840081
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6101840081
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=83.149.199.84;
 helo=mail.ispras.ru; envelope-from=pchelkin@ispras.ru; receiver=<UNKNOWN> 
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.84])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6101840081
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:29:13 +0000 (UTC)
Received: from localhost (unknown [79.139.245.7])
 by mail.ispras.ru (Postfix) with ESMTPSA id 0A6A4413A4D1;
 Wed, 25 Mar 2026 15:19:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru 0A6A4413A4D1
Date: Wed, 25 Mar 2026 18:19:46 +0300
From: Fedor Pchelkin <pchelkin@ispras.ru>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Agalakov Daniil <ade@amicon.ru>, lvc-project@linuxtesting.org, 
 Roman Razov <rrv@amicon.ru>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 linux-kernel@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Daniil Iskhakov <dish@amicon.ru>, "David S. Miller" <davem@davemloft.net>
Message-ID: <20260325180127-711d8e8fbff840853081f11e-pchelkin@ispras>
References: <20260318120512.687149-1-ade@amicon.ru>
 <20260318120512.687149-3-ade@amicon.ru>
 <5128e54e-4164-4cb1-8ae1-e58d6a40c005@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5128e54e-4164-4cb1-8ae1-e58d6a40c005@intel.com>
X-Mailman-Approved-At: Wed, 25 Mar 2026 15:33:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ispras.ru; s=default; t=1774451987;
 bh=CgGVEdDotrUxFWiSjF8zmnyJCQXPhbkhrROl5zrGJNE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FABBEw/37TiAtd+C2rszl59lq2kNQvjmeRtRirvxCr+ARggo14pCI2v/SAGWBj72r
 3gf3sFpnQ1aM1xs/SBJS9HQH4BZwv753opCIKSbOSgzD6XOJdhW52sVPevE9ow2MDj
 5/bi8ITcQS68lg1n0mUTy2SGVA86x2GFMcrOqk0Q=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=ispras.ru
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=ispras.ru header.i=@ispras.ru header.a=rsa-sha256
 header.s=default header.b=FABBEw/3
Subject: Re: [Intel-wired-lan] [PATCH net 2/3] e1000: fix endianness
 conversion of uninitialized words
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[ispras.ru : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:ade@amicon.ru,m:lvc-project@linuxtesting.org,m:rrv@amicon.ru,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:dish@amicon.ru,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxtesting.org:url,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[pchelkin@ispras.ru,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pchelkin@ispras.ru,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 0291632812F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On Tue, 24. Mar 16:26, Tony Nguyen wrote:
> On 3/18/2026 5:05 AM, Agalakov Daniil wrote:
> > [Why]
> > In e1000_set_eeprom(), the eeprom_buff is allocated to hold a range of
> > words. However, only the boundary words (the first and the last) are
> > populated from the EEPROM if the write request is not word-aligned.
> > The words in the middle of the buffer remain uninitialized because they
> > are intended to be completely overwritten by the new data via memcpy().
> > 
> > The previous implementation had a loop that performed le16_to_cpus()
> > on the entire buffer. This resulted in endianness conversion being
> > performed on uninitialized memory for all interior words.
> > 
> > Fix this by converting the endianness only for the boundary words
> > immediately after they are successfully read from the EEPROM.
> > 
> > Found by Linux Verification Center (linuxtesting.org) with SVACE.
> > 
> > Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> 
> While this is definitely better, I'm not sure there's a bug here since it's
> being immediately overwritten. Seems like this patch would be better going
> to *-next as an improvement.

It's worth stating in the commit message that the uninitialized memory is
touched with le16_to_cpus() in the loop only on BE systems.  Little-endian
ones are not affected - le16_to_cpus() is a no-op there.

Anyway, for the BE case, touching and manipulating uninit memory bytes is
still in general considered a bug, even if this memory is overwritten a
few lines after that.  I guess if KMSAN supported big-endian architectures,
it would hit this, and that wouldn't be a false-positive.

I'm not aware of the details on how you treat the bugs in these drivers
for BE-systems: maybe they aren't prioritized and then would occasionnaly
go as -next material.  But, again, this situation looks like a real bug
worth fixing on BE-systems.
