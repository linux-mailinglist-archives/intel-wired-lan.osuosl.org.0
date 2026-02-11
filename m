Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGrQObStjGl/sAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:26:28 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F23D2126169
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:26:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8E52610E9;
	Wed, 11 Feb 2026 16:26:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iHz9ZM5qzKXa; Wed, 11 Feb 2026 16:26:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E125560BB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770827184;
	bh=U8OQLsQWotDEOWmIt32koqWKwxvKijxA596LnFgwDY0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mXFEGC8N2uvFNNLlm6XT1IjKtnrji2CSjyKclMGsMkQIIdCbdnb3WuLnzlma+GoZk
	 faCP9xuB3EoVdkwn/lAqyNvHSNMyvU2PslPWtMrTOW2uf7PyLvtbHlGRLKVAeScwr7
	 iFB2MLs5uiMRcSRktUhW2uLi4oHqAeF0LI/9v/mUgljOP7eE7qVeAW26Eap7mFSwtc
	 bdkCBVxnmB7VOiUGYnijous+YBooLMIZknjR0cvbRPmkWFW4uzh6Tkrq6nfDKJdnMw
	 H5CceZdgdPEFH4AcxWvdKYAUJp0+YipvuNHPrJwsTMnqUVz3P0pS1Lk4v+Pi5jpjf+
	 CRW5+Tx+wBEGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E125560BB6;
	Wed, 11 Feb 2026 16:26:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D6FC91F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 16:26:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C7FBE60A65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 16:26:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DHYjgQsXgoEZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 16:26:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 071C56088C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 071C56088C
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 071C56088C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 16:26:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 656A44381F;
 Wed, 11 Feb 2026 16:26:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCA81C4CEF7;
 Wed, 11 Feb 2026 16:26:20 +0000 (UTC)
Date: Wed, 11 Feb 2026 08:26:19 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Pielech, Adrian" <adrian.pielech@intel.com>
Cc: <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>,
 <pabeni@redhat.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <horms@kernel.org>, <andrew+netdev@lunn.ch>, <krzysztof.galazka@intel.com>
Message-ID: <20260211082619.229a4486@kernel.org>
In-Reply-To: <54e57b6a-8cd6-4e2f-8ced-0cbb41c99e4e@intel.com>
References: <b5446385-1f51-4359-b484-6dfccb50dad0@intel.com>
 <20260203190811.1f9e7530@kernel.org>
 <a29bc22b-a1e3-4a9e-a63c-5d1c71a6f08b@intel.com>
 <20260204174033.5aa7dc6a@kernel.org>
 <54e57b6a-8cd6-4e2f-8ced-0cbb41c99e4e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770827181;
 bh=mCWtPE9gnBMrzM8S/tFxpYDnP3SU/+oGWJ6SD/M0GUw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nWBIOReDXe/ddBd95F1rWUDR/68Bg7vHLGO7hpyEjuY9aeTi/O5SqjkynxrrMu8Hy
 fuLsuo2eECLJ336wZpsthr1qpYRA+uesxX1BKXQMzwAGzOtmy0OSH3xQn0yatlc3a6
 eQpvRD6v5+ZC12gGV+hstmPNF/nR992GszKR59KXNZK2D+XofZ4aQ2IKsUJs10SiYb
 /MWuqRy/ffokM2ZKnzkOj2lpWzOzTSpmdg1MoWUXY/1OvBYTKobUarzn034go1KbjS
 sFLqG0Ju1hdsuj6rJgmc9O84IXBjnbOmA/KT1CXQHjuw4xh5F+bNZaJU5wYFoBuL4b
 10Uj9cnUE4Yag==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nWBIOReD
Subject: Re: [Intel-wired-lan] [ANN] intel's netdev-ci for i40e
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
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:adrian.pielech@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:krzysztof.galazka@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F23D2126169
X-Rspamd-Action: no action

On Wed, 11 Feb 2026 10:17:52 +0100 Pielech, Adrian wrote:
> > Looks good now, thanks!
> > 
> > One more note, the "driver metadata" is currently reported as:
> > 
> > {"devlink":{"driver":"i40e", ...
> > 
> > looks like you have some extra nests there. That's perfectly fine,
> > but we need there to be a "driver" key in the outmost object.
> > Right now our UIs show "undefined" for the drivers here:
> > https://netdev.bots.linux.dev/devices.html  
> 
> I have moved position of "driver" from device.devlink.driver to
> device.driver. Regenerated current and past results. You can refresh
> your dashboard as well to wipe duplicated entries.

Please don't regenerate past results in the future.
It's a pain to have to clean up the DB.
