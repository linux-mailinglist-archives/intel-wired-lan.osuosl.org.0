Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +C4pADziqmkTYAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 15:18:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0BF222791
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 15:18:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B40A61046;
	Fri,  6 Mar 2026 14:18:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vpBpVgWA3cqu; Fri,  6 Mar 2026 14:18:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 791B06105B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772806711;
	bh=UMvvs0244gPUEtPUetu1XgdemaerE6+DpsOHxXFUTd0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3etfBjxzmjBOOvZUqbgahQepkthzh5wqXvoZifD1RFxyDvE54mOHkM0BGlasEVBQq
	 SdRLrXsGKJHqQBSU7q9d0yAb6w1ZRtwC5B2DRwm0D4rrUieAh55gxieIKnsYCtvSzz
	 2FPnXE0LqKdbyzL5cA+A/SAVmLp2svN4K2SfCKZ77H7HctofV2Nebx1CK/mZIa9/1m
	 vHKwgINI9FhXnwgqFft/fzCb8h2TAvoB61aYTQoWmmm6Q6s4S9TTIrH/okr8O8iKcJ
	 uibuFMFmTZQaJ6/ssMaXod/IX18jw2XK8Mx0aonyqOmbxQdlyGZioTV/yAny2u02aG
	 fGXcKvs1HKyRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 791B06105B;
	Fri,  6 Mar 2026 14:18:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 79007223
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 14:18:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5EC6B83B8A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 14:18:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id is-v-Sv41seH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Mar 2026 14:18:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B477181CAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B477181CAD
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B477181CAD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 14:18:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 09887408BE;
 Fri,  6 Mar 2026 14:18:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4CE7C4CEF7;
 Fri,  6 Mar 2026 14:18:27 +0000 (UTC)
Date: Fri, 6 Mar 2026 14:18:25 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <20260306141825.GE461701@kernel.org>
References: <20260304084232.2937498-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304084232.2937498-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772806708;
 bh=7KPGysg3KbSJoPMO+usCcbFIqEq5hjvPWe2DjAfY36Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cTTnofvF3Nlzkug39QioKWgTvBz5RnIQ7wT0lbNOK/y7sWwBt0luvjWYsPFyBw/5J
 0VzpNZDxqvvvfByjlO6zL5CIc5+nO62LqEwo5TRq4qzuQjdGiA0sGVs6BeW0Ux/HsM
 XhbZD3VIF1Hmpm+rWaYIgwGKiu/PGytjAxesGrjGgNzVSuBgiLpHxKYAPCF2PUF+i0
 TQBwAsKOniXVa0gjtmmd4Y6Icciwk2Hdmd+chALllnL875BPW/jr9P/zndBqqSMlyb
 3a/7REVlpTQICm6CQhE/YKfmbHr74Uq6tFgZBaVChELDPdtQcSNqgjeeRf0h/JVzjE
 O6xc7SQKC6Qaw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=cTTnofvF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: stop re-reading
 flash on every get_drvinfo for e610
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
X-Rspamd-Queue-Id: 1C0BF222791
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jedrzej.jagielski@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 09:42:32AM +0100, Aleksandr Loktionov wrote:
> ixgbe_get_drvinfo() calls ixgbe_refresh_fw_version() on every ethtool
> query for e610 adapters.  That ends up in ixgbe_discover_flash_size(),
> which bisects the full 16 MB NVM space issuing one ACI command per
> step (~20 ms each, ~24 steps total = ~500 ms).
> 
> Profiling on an idle E610-XAT2 system with telegraf scraping ethtool
> stats every 10 seconds:
> 
>   kretprobe:ixgbe_get_drvinfo took 527603 us
>   kretprobe:ixgbe_get_drvinfo took 523978 us
>   kretprobe:ixgbe_get_drvinfo took 552975 us
>   kretprobe:ice_get_drvinfo   took       3 us
>   kretprobe:igb_get_drvinfo   took       2 us
>   kretprobe:i40e_get_drvinfo  took       5 us
> 
> The half-second stall happens under the RTNL lock, causing visible
> latency on ip-link and friends.
> 
> The FW version can only change after an EMPR reset.  All flash data is
> already populated at probe time and the cached adapter->eeprom_id is
> what get_drvinfo should be returning.  The only place that needs to
> trigger a re-read is ixgbe_devlink_reload_empr_finish(), right after
> the EMPR completes and new firmware is running.  Additionally, refresh
> the FW version in ixgbe_reinit_locked() so that any PF that undergoes a
> reinit after an EMPR (e.g. triggered by another PF's devlink reload)
> also picks up the new version in adapter->eeprom_id.
> 
> ixgbe_devlink_info_get() keeps its refresh call for explicit
> "devlink dev info" queries, which is fine given those are user-initiated.
> 
> Fixes: c9e563cae19e ("ixgbe: add support for devlink reload")
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

