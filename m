Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULM2LxQwBWr9TAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 04:14:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9D053CF5A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 04:14:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9B15408A3;
	Thu, 14 May 2026 02:14:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7UM3mSK0KVX4; Thu, 14 May 2026 02:14:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA7104088F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778724880;
	bh=y2RTmidLFUWyisi4RSReri/X3r/i1gr292HwxfeTjrg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2aaKdAqH37hSZ+MlDdrQm4fWm47eLHQvVASVMNSlUIQKDiJRB1YxNDsgvigjAOHlW
	 tCd55LtOhq90RC+BFxFQG/60YTtLb3OK2C374iepZy41qz2Cxy8QvtbPqc38IUQd/5
	 F8pOKnrxpC2CKSpWW30HRzuKQuRQMrnFh++m1L+39HsTeJBhG9YpIPOWtYZaWTblzD
	 oLXK/Ub291VozXHYdohvu3zfhBVcrIYOtqh8aj3G67GvKYjuRENANyc20uyY8w6fTa
	 yV2AEHuG+GZmSk5c09YzoZfJmvEGKCFtSTggGLmNazqYYApC1SSRPS+fcNi8CaTz4Y
	 Z9ClL0aannMoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA7104088F;
	Thu, 14 May 2026 02:14:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 29A28223
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 02:14:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F47781831
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 02:14:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mETsbZ4e2shU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 02:14:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 65DA381628
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65DA381628
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65DA381628
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 02:14:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D4835600AE;
 Thu, 14 May 2026 02:14:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 589BEC19425;
 Thu, 14 May 2026 02:14:35 +0000 (UTC)
Date: Wed, 13 May 2026 19:14:34 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <20260513191434.7db663fe@kernel.org>
In-Reply-To: <20260511233159.2558165-3-grzegorz.nitka@intel.com>
References: <20260511233159.2558165-1-grzegorz.nitka@intel.com>
 <20260511233159.2558165-3-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778724876;
 bh=G/iBw356i6FwwNFaRGJcDFTyhXVbkFhL5HSpQTP3Iwo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bH7sqF9vhCpKUOclspI6MDe9PtkaGG/fsJ8QmG3hFxDk1aKKIhYT6O79lK8N/mOU0
 qlmsuLsHo6Juq4ajoabBOc56Oz/wCYHtEl2pHqFbb9qBPNgOYoL4ihbpfWoZX4Nu9t
 5DA7aEsALv4g0Xv5Ex9xP3he8wsWbq59LwWu9RhIDzzguAZdE27851sdDNotmlrUBq
 UMqy04RwmCWTEmVFmaBZEohgEs332uWGt+mBeZQN110JAZCEtuwS3tnnzbM9VMUQgm
 pkdxGeHJVe/l2ZZo6YfzToAcUmuUecRRoqeIzWQF2E/mVfeBju1eodTCcb72JALyzt
 9XwfBXUacRv7w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bH7sqF9v
Subject: Re: [Intel-wired-lan] [PATCH v8 net-next 2/8] dpll: allow
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
X-Rspamd-Queue-Id: 8D9D053CF5A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,google.com,intel.com,vger.kernel.org,gmail.com,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net,nvidia.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:jiri@nvidia.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
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
X-Rspamd-Action: no action

On Tue, 12 May 2026 01:31:53 +0200 Grzegorz Nitka wrote:
> --- a/drivers/dpll/dpll_core.h
> +++ b/drivers/dpll/dpll_core.h
> @@ -59,6 +59,7 @@ struct dpll_pin {
>  	u32 pin_idx;
>  	u64 clock_id;
>  	struct module *module;
> +	char module_name[MODULE_NAME_LEN];
>  	struct fwnode_handle *fwnode;
>  	struct xarray dpll_refs;
>  	struct xarray parent_refs;


Warning: drivers/dpll/dpll_core.h:70 struct member 'module_name' not described in 'dpll_pin'
-- 
pw-bot: cr
