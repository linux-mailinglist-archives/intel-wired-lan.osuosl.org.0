Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PbjyMWXHMWoQqAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 00:00:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5D9695819
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 00:00:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=jOqh4JHq;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (relaxed)" header.from=lunn.ch (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A1F08544F;
	Tue, 16 Jun 2026 22:00:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pyPHCYAF1Fhn; Tue, 16 Jun 2026 22:00:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73D348544C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781647200;
	bh=yn4JTONkucNpp7G5/eQyLNtOYAjCl76BiAINMQrjBJw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jOqh4JHqVXXtLMqh4nJn73yjV7z1xi9nOhIKM8S+bUqX/6YXNT3NbadEhYdzFX79B
	 rckKjC3m24tKdkJjWqkIQ2n83lnrb5QCKWl1sccVnHWqftZjbeaOOhujBKUX9wViEv
	 gHNuEcHkE0Dcx/JOiuOTZZoPyPcSjJnsyEvIoVwvUFRnV2mdBfvZzZuJ19L+EMmi8d
	 kYWzhSFLI5KvfsvvY5DVGdXpvCZBq/DT905C4QdR79+PtdbLwmwBP/1i4Wv/Jr+4dM
	 YbbSwupssNew3PB5gXYDggvhRHSTYxdooiKB+Q9Ygy5CFQQZjy+u5IJLIov3pQvfuv
	 qlKPpcYBnbvNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73D348544C;
	Tue, 16 Jun 2026 22:00:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7034D33C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 21:59:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 566DA40AFD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 21:59:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7ArgVV0mLeqj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 21:59:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CBF554079D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBF554079D
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CBF554079D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 21:59:56 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1wZboy-0082AE-6c; Tue, 16 Jun 2026 23:59:48 +0200
Date: Tue, 16 Jun 2026 23:59:48 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Cc: Helge Deller <deller@gmx.de>, Helge Deller <deller@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <d86c0dd8-8bd8-495a-b750-2a0036fbbee4@lunn.ch>
References: <ai8hmGQmXQu64Ld3@carbonx1>
 <e78576e0-9b55-446f-9d10-da3b7aec9b31@lunn.ch>
 <9d80ed59-5483-4c33-9d27-52fdf24aac6e@gmx.de>
 <51828156-e859-44db-9926-c076796d0f75@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <51828156-e859-44db-9926-c076796d0f75@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=yn4JTONkucNpp7G5/eQyLNtOYAjCl76BiAINMQrjBJw=; b=2U4caDUxztGMOCq6pv1Xs7gM/H
 E6QBytWGgAUz1XgI6p2uVi2GfwWFOCLKay67naLp6JV9n3LPpTwD8xMzGYvpDtSUINmqUqC7L7YzN
 qYgBlgEvLhbyiRNPnoVp9d8UFR1T7izBq3HMwdiviHdvTsm0EHkVd+0D4mVEcFADq5u4=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=2U4caDUx
Subject: Re: [Intel-wired-lan] e1000e: Report link down after "Detected
 Hardware Unit Hang" ?
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lunn.ch : SPF not aligned (strict), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:deller@gmx.de,m:deller@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	FORGED_SENDER(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmx.de,kernel.org,intel.com,lists.osuosl.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA5D9695819

> This does not seem like the right direction to me.
> 
> The "Detected Hardware Unit Hang" print does not indicate that the interface
> is dead, but that the transmitter is stalled.
> 
> This can be due to an unusually high load, or a HW fault / race condition
> with another component, etc.
> 
> When a hang is detected, the transmitter is stopped with netif_stop_queue()
> and eventually ndo_tx_timeout triggers a full reset to the device, which in
> many cases recovers it from the hang.

Does a full reset cause the link to be negotiated again? If so, there
is no harm in setting the carrier down. If the reset is successful,
the carrier will be restored. However, if the reset does not recover
the system, does the carrier say down?

    Andrew

