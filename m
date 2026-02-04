Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOxkCfNXg2mJlQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 15:30:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C68AE71D5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 15:30:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B46CC60BD9;
	Wed,  4 Feb 2026 14:30:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Iakw6o3_EQF; Wed,  4 Feb 2026 14:30:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C794A605C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770215407;
	bh=AsQa8W6KnKJ7vVh4W36ji+1sTPnT2pkn89GFbzErC2o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zDkBxeFA9IUYEv3ZeZX6YWhl4+s5HxUbpR4NPxxWh2IgqDTLCt83tFbk0BqK/lKYC
	 1q12SGiIaaJnsAO0AOIaClzPJnXuGqvcgVR+MhaSOtrNH1vSaRfDIgp84jKITUM4KX
	 q17vwer3geqzllc7pGrRLwZI2ei4V4M+x3+NkanaacCQaMYJ4f0L9r+xdA0UyAKlLQ
	 JX8Z/HpvvKND0hPv0NOZRM8Hn/tMdfcHM740FZj5n0Eq3YP/k26E//Md2gM4dthZTy
	 UTGq5lNzkRSWCWX12eKsOFhGGTjD3s4/U1fi7I2nNhM3/TpJ3uODlHhGTpcIkb8wZl
	 t3WuDRAo89PVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C794A605C7;
	Wed,  4 Feb 2026 14:30:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 74F1BF4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 14:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6236F60BD9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 14:30:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dLwICvA-DNaP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 14:30:04 +0000 (UTC)
X-Greylist: delayed 2282 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 04 Feb 2026 14:30:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7041B60C30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7041B60C30
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a01:4f8:242:246e::2;
 helo=sipsolutions.net; envelope-from=johannes@sipsolutions.net;
 receiver=<UNKNOWN> 
Received: from sipsolutions.net (s3.sipsolutions.net
 [IPv6:2a01:4f8:242:246e::2])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7041B60C30
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 14:30:04 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.98.2) (envelope-from <johannes@sipsolutions.net>)
 id 1vndIR-0000000EPxD-1SEs; Wed, 04 Feb 2026 14:51:55 +0100
Message-ID: <f3ef31b332a5f28a20054d5e55e6024421f14dd1.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Ethan Nelson-Moore <enelsonmoore@gmail.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-wireless@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel	
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>,  Paolo Abeni <pabeni@redhat.com>, Stanislav
 Yakovlev <stas.yakovlev@gmail.com>
Date: Wed, 04 Feb 2026 14:51:54 +0100
In-Reply-To: <CADkSEUhXO-01yaNUawo58MQ=xOC5bCDHWCFrCwe6TX2D+WVR=w@mail.gmail.com>
References: <CADkSEUhXO-01yaNUawo58MQ=xOC5bCDHWCFrCwe6TX2D+WVR=w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
 Resent-Cc:Resent-Message-ID; bh=AsQa8W6KnKJ7vVh4W36ji+1sTPnT2pkn89GFbzErC2o=; 
 t=1770215404; x=1771425004; b=c7ElgIRUuYAK0BFa3HrcBTVI7vmw/FgkmVog76bhl5BVZET
 d2j3cCw99mpyPMg/1oZE6wDFIRDTvYkwOfioNXHkjydOgZg4cGfcVs0qcA2qyQVwg2EDKna1he9wc
 sgkv58Fz+DFCC/mt3/u7l6Wmd9VlR+C9VQTbp858n44W6B0dWORsSt88ILz/959kHIPRymHsAzJsB
 gSHPzkv9XbmtYe7NsnKs4kQPQyVn0/9pE+sXcQNxMNsfRiAWE9NulLlTrJdyVe9L1WMmOisbjxvH1
 q1gOcF2wToEq5c5NZfgaTk4a8sWIc8+daszEu1jIhJOFn1RkJxNS5Z1HkvXSYEQg==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=sipsolutions.net
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=sipsolutions.net header.i=@sipsolutions.net
 header.a=rsa-sha256 header.s=mail header.b=c7ElgIRU
Subject: Re: [Intel-wired-lan] PCI ID conflict between ipw2x00 and i40e
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[sipsolutions.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:enelsonmoore@gmail.com,m:netdev@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:stas.yakovlev@gmail.com,m:andrew@lunn.ch,m:stasyakovlev@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[johannes@sipsolutions.net,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[gmail.com,lists.osuosl.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[johannes@sipsolutions.net,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 0C68AE71D5
X-Rspamd-Action: no action

On Wed, 2026-02-04 at 02:15 -0800, Ethan Nelson-Moore wrote:
> I have written a script to find device IDs that are claimed by
> multiple drivers in the kernel. It has found that the PCI ID 8086:104f
> is supported by both drivers/net/wireless/intel/ipw2x00 and
> drivers/net/ethernet/intel/i40e. I assume the i40e one is correct,
> since that's what the ID is assigned to in the pci.ids database. Can
> anyone at Intel confirm this?

FWIW, I wouldn't be surprised if both are correct, and we just forgot
about an almost 30 year (I think) old device ID assignment ... I'll try
to figure out who even does these assignments etc., I don't know right
now. Let's see if I can figure out anything for the ancient WiFi IDs,
but I'm not very hopeful.

If we knew the subdevice IDs we could perhaps match on that, or add some
code to have ipw2x00 reject PCIe devices, and i40e reject PCI devices,
or something like that ...

johannes
