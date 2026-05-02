Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBxxBTE19mk5TAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 02 May 2026 19:32:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5B74B3104
	for <lists+intel-wired-lan@lfdr.de>; Sat, 02 May 2026 19:32:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3477483DC3;
	Sat,  2 May 2026 17:32:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bhjvoy2Ax3dA; Sat,  2 May 2026 17:32:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BC0183DC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777743149;
	bh=FO6nMcMn/OGU6uVS1myEZJa/Wri94sywk/kufi7znt0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YznrV/xE0+vOO2NbY3hAfSvfjobP7wyzfCxwvVxvr1k5vU163+5sFR81yN/3UaJNR
	 BBqHrCsm/1ygEPnzBpPite1Y/iE5t6+J949FJBes2DTEt3VlRI833QGwEzQW9g7UgE
	 ASvtPahY6W2hifF4xT3RfS2qOlnQybYuIb1JwHo0tZnjEcTJamMi9hz+1PwP0Nmzvf
	 iwmNmMlZ6jJ9ndxVU01CE6FM1nW0dDA34FDXevdg3+BMXAaSxeTfN5TSfr130dW7c1
	 Fc+R/7A0gz779wFmgGnYUY+OW/Q7wge7wmxtjGF/Y/YvDD48ye8+1u04sf2yDRvzbi
	 crS+ETkiAFelg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BC0183DC6;
	Sat,  2 May 2026 17:32:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E8B1190
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 148106062D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:32:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2rP2qnm6Bgtz for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 May 2026 17:32:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6FAF96109A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FAF96109A
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6FAF96109A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:32:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5890960120;
 Sat,  2 May 2026 17:31:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 406F3C19425;
 Sat,  2 May 2026 17:31:55 +0000 (UTC)
Date: Sat, 2 May 2026 10:31:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <20260502103154.71b4b5de@kernel.org>
In-Reply-To: <20260430094238.987976-4-grzegorz.nitka@intel.com>
References: <20260430094238.987976-1-grzegorz.nitka@intel.com>
 <20260430094238.987976-4-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1777743116;
 bh=FO6nMcMn/OGU6uVS1myEZJa/Wri94sywk/kufi7znt0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gGyfBsqb83MA8IoSJM0udPhNHy69AFryi5X9Dy1SpE2tZSuT/RBvrQY5Jn8npArWI
 QP/NC9fNm24xkYgn8Bc05tSVeeZtoUka8ZdRvW18FspJFWxkn3seyZT4U0kYaR8CMJ
 +gwG8EoHsCXuoxKx0lpsT5HE00uMHmF8H8RaJvBZBJC3tyXPNQ/d8PrXnWlwqyqNR8
 DrSB6NndZGdyyaIZ5XhkoV5z9qHxyO3C3UNF63S9CkRQtWLcyYM6+rIFH1Bc7AFbV6
 A5driE33UrVCc19Qicg/o0+tgPvcOtOV4Xg15JBzeO65GG693lGKrq+ayDHXa3uOjh
 DxIDhfFia9WPg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gGyfBsqb
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 3/8] dpll: extend pin
 notifier and netlink events with notification source ID
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, jiri@resnulli.us,
 edumazet@google.com, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 netdev@vger.kernel.org, richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 Prathosh.Satish@microchip.com, andrew+netdev@lunn.ch,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 8F5B74B3104
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,google.com,intel.com,vger.kernel.org,gmail.com,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

On Thu, 30 Apr 2026 11:42:33 +0200 Grzegorz Nitka wrote:
> Subject: [PATCH v7 net-next 3/8] dpll: extend pin notifier and netlink events with notification source ID

As AI points out you're only adding this for the internal notification,
but the commit title mentions netlink too. If we don't need it in
netlink we can just drop the references in the commit msg?
