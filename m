Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EpTFDNaw2m1qQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 04:44:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF2031F2EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 04:44:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C02D413C6;
	Wed, 25 Mar 2026 03:44:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s0lw3jgg5Axa; Wed, 25 Mar 2026 03:44:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1129A413E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774410287;
	bh=8qGfWg8X4KJtLew92ZFxzyzGqOExS2eUNwPHfxuPVJ4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fHVMpYf4jBpHXJId6SavwpmWK+9qJrr8VA0+riWA7LLmfwwecmrVTAGChuBf6r8sa
	 e2cOVy4PIwOxTFicnGmv8hfzloPLmM6VCpYIHwc651UQpNkSzv9xQeGc7foS7gcXIY
	 PL+Va0+RqXSTkK42D+OtDJnOCikok+HNqDcnAEngFifbRLMzHHD0jLwzDyd5DVzLkY
	 Wp8nqI/CnSfK/BztDGzYtW0cZvu/WmHPBipU9ktZM5HpvfJruUnNPrSX31Y0tymrk3
	 m29MCSnP5577X3WYvdOefc7yySa3POh4p4bzyiBx3khvMydlrge3U23NdwTGAXI+k+
	 ipnPp9bUgWXyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1129A413E1;
	Wed, 25 Mar 2026 03:44:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C6B63F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 03:44:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A41DC413D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 03:44:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7ZVFxL8be6j6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 03:44:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EFD23413C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFD23413C6
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFD23413C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 03:44:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 127D360120;
 Wed, 25 Mar 2026 03:44:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B295C2BCB0;
 Wed, 25 Mar 2026 03:44:41 +0000 (UTC)
Date: Tue, 24 Mar 2026 20:44:40 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stanislav Fomichev <stfomichev@gmail.com>
Cc: Stanislav Fomichev <sdf@fomichev.me>, netdev@vger.kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 horms@kernel.org, corbet@lwn.net, skhan@linuxfoundation.org,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, saeedm@nvidia.com, tariqt@nvidia.com,
 mbloch@nvidia.com, alexanderduyck@fb.com, kernel-team@meta.com,
 johannes@sipsolutions.net, sd@queasysnail.net, jianbol@nvidia.com,
 dtatulea@nvidia.com, mohsin.bashr@gmail.com, jacob.e.keller@intel.com,
 willemb@google.com, skhawaja@google.com, bestswngs@gmail.com,
 aleksandr.loktionov@intel.com, kees@kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kselftest@vger.kernel.org, leon@kernel.org
Message-ID: <20260324204440.1752423d@kernel.org>
In-Reply-To: <acMU93XN02PHmAGi@mini-arch>
References: <20260320012501.2033548-1-sdf@fomichev.me>
 <20260320012501.2033548-4-sdf@fomichev.me>
 <20260323162003.0d155055@kernel.org> <acLUMN1BYkIVyOk8@mini-arch>
 <20260324142114.216fcb01@kernel.org> <acMU93XN02PHmAGi@mini-arch>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774410282;
 bh=gQK6J5IvA9RmrkZN+cbxNmFla6H107ZP9bVcDvKPjRY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZH5/BwS61g4MXioBvBtBh9BzuX2edP0Y5CNv8b7utbnLqKrt2Ig6FM1yb4aKlGtut
 H9/iJjjgJUKN+oYGIXfB106Cm4tMLptjuvkKcjmmeeMgI06minn5KC9OivyKstv8T/
 56u8jKtsopr7dN1CmbeRk9mGks61tQx6DNAZsG5vhWfD6vFFf5rPA0Fzb4+VxiSRwm
 ebUMaIeNpkbK7NRte7tgB1IjAyHiLu6z0CD/MOcfr0zRTopQ3iPJIaPkBeanBVXmTp
 /ahpZBDlBOHnGZrr7ICiuCAc6N7vajPt0ed93vZyxXubarOU6YqqqFSmQUkL6GJ0+A
 t4pIxs1A5yedg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ZH5/BwS6
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 03/13] net: introduce
 ndo_set_rx_mode_async and dev_rx_mode_work
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FREEMAIL_CC(0.00)[fomichev.me,vger.kernel.org,davemloft.net,google.com,redhat.com,kernel.org,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[37];
	FORGED_RECIPIENTS(0.00)[m:stfomichev@gmail.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:aleksandr.loktionov@intel.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BDF2031F2EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 24 Mar 2026 15:49:27 -0700 Stanislav Fomichev wrote:
> > > Not sure why cancel+release, maybe you're thinking about the unregister
> > > path? This is rtnl_unlock -> netdev_run_todo -> __rtnl_unlock + some
> > > extras.
> > > 
> > > And the flush is here to plumb the addresses to the real devices
> > > before we return to the callers. Mostly because of the following
> > > things we have in the tests:
> > > 
> > > # TEST: team cleanup mode lacp                                        [FAIL]
> > > #       macvlan unicast address not found on a slave
> > > 
> > > Can you explain a bit more on the suggestion?  
> > 
> > Oh, I thought it's here for unregister! Feels like it'd be cleaner to
> > add the flush in dev_*c_add() and friends? How hard would it be to
> > identify the callers in atomic context?  
> 
> Not sure we can do it in dev_xc_add because it runs under rtnl :-(
> I currently do flush in netdev_run_todo because that's the place that
> doesn't hold rtnl. Otherwise flush will get stuck because the work
> handler grabs it...

I was thinking of something a'la linkwatch. We can "steal" / "flush"
the pending work inline. I guess linkwatch is a major source of races
over the years...

Does the macvlan + team problem still happens with the current
implementation minus the flush? We are only flushing once so only
pushing the addresses thru one layer of async callbacks.
