Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBlWGf8z9mktTAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 02 May 2026 19:27:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0B84B30A7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 02 May 2026 19:27:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E5C3610A1;
	Sat,  2 May 2026 17:27:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pDhSgEtqqmMk; Sat,  2 May 2026 17:27:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EE4C6109F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777742842;
	bh=wlP+d1NIKAAByaeePWEIuCAi+E0RlB12el0dg4r9gnA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V+tQZ9hoA+KlJ4QZpXkEWCSygpA9HqYKEB7+sJXlHhr3t6J28qAgZOwn+FJpSuA2B
	 x7XAk2UlPasif03tmKZg7llrzai5QhHNmb8183StZ17f7UQBHU/9IVJIC2IHF7XoJ3
	 7g2NMpW0rKGqttHolg/4rFmxc87ymV/Mdw2Yhl866WCsEtHykGEtv/laIOKi8IBRqW
	 TK9wG00qJhCWYdMoblA7bWgHVzBhCxYLU/8tltey1M8bH2IjhRKETwTvSUeMNpjCkr
	 qd4krjA6IAHsR9vS/FU3ausil6QD5Sos85dwLDoMBfUBQy9V9DY7aKhN5h7nSah6Cb
	 I80/jzshi2jpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EE4C6109F;
	Sat,  2 May 2026 17:27:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E2C29127
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0FE2412D3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:27:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qsKnWv8EjWCm for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 May 2026 17:27:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 34F33412D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34F33412D2
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34F33412D2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:27:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6E05B60120;
 Sat,  2 May 2026 17:27:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B9A8C19425;
 Sat,  2 May 2026 17:27:16 +0000 (UTC)
Date: Sat, 2 May 2026 10:27:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <20260502102715.2ac364c8@kernel.org>
In-Reply-To: <20260430094238.987976-3-grzegorz.nitka@intel.com>
References: <20260430094238.987976-1-grzegorz.nitka@intel.com>
 <20260430094238.987976-3-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1777742837;
 bh=iuYfZKUsNFsWCYPYDPPaNu+LCCi5oQDcfqzf4SNpk70=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=l/a5kajjxzIX7CwRTkvhKQ0DYG8l2UfCCg5YkiLPBia0fvmdwd/b36WgPs/y3EOCf
 Oba4ioqDlb4yliOCAqRiCn1t1j21Q0XXIa741i1Gj/u+YVjEgijMYDthLOeqPhxE/b
 4FdfNHjgOiCLujSG60SEWhgQBijMV5dPTbJqPp2neSrXywc+3gBNMw8+6bGb080S5s
 SrxIIa5+ERxkrmONbsucmHHWWO+khgtawrjGPuqRd5oT3GoGvzD3vYwSOTIXilwXnD
 lISSAZ3Wh4Ts6VMB2fCVE8DGre5lt4VpkJg6i1OZwU14Twa9Yx6NzYl3tvLAXYcUgZ
 ZpzVXnW8Cwe3Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=l/a5kajj
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 2/8] dpll: allow
 registering FW-identified pin with a different DPLL
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
 davem@davemloft.net, Jiri Pirko <jiri@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: CF0B84B30A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,google.com,intel.com,vger.kernel.org,gmail.com,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net,nvidia.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:jiri@nvidia.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

On Thu, 30 Apr 2026 11:42:32 +0200 Grzegorz Nitka wrote:
> Relax the (module, clock_id) equality requirement when registering a
> pin identified by firmware (pin->fwnode). Some platforms associate a
> FW-described pin with a DPLL instance that differs from the pin's
> (module, clock_id) tuple. For such pins, permit registration without
> requiring the strict match. Non-FW pins still require equality.

AI asks what prevents the modules from disappearing:

Does this relaxed check expose pin->module to a use-after-free during
netlink queries?
If module A registers a firmware-described pin allocated by module B,
they will have different module pointers. 
Because fwnode_dpll_pin_find() increases the pin's refcount but does
not take a reference to module B via try_module_get(), it appears module B
could be unloaded while module A still holds an active reference to the pin.
When module B unloads, its struct module memory is freed, leaving
pin->module as a dangling pointer.
A subsequent user-space Netlink query using DPLL_CMD_PIN_GET iterates over
the registered pins and calls nla_put_string() with module_name(pin->module),
which would dereference the freed module memory.
