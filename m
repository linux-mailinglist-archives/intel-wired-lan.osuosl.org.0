Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBvfMMnEz2lH0QYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:46:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47165394A9C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:46:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D276360909;
	Fri,  3 Apr 2026 13:46:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GlnrUtwzQleA; Fri,  3 Apr 2026 13:46:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5302860A43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775224007;
	bh=xxhtBG2R8JaN8Nk2sHBSqKmFphpOjAF88oxqgUpC5EY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OMA+k0PToSia0v47fLoC/Eu8VMslK9DiWPROixyA8kxTQlZhdS1TTRaETWMJ/ZaIv
	 9X+B19uKcNFX9KyzQ3s6jT8EowlA3DTYVeTBmpDr766yEAPxcaSPPZ6zz1HgjGshLd
	 9zvf+Gyn1GMUUnCWcx7fJZ2m8wiqhETOHE5gm9K3wuJqqcoft+mCVN/wz48EZG1BGS
	 nTzn8beg46DG6dejd8n9YzOt7ZE4IQuFJMXoXkzoWjdGAESWd2B6d0m39JmGtZPzvu
	 dyj0H0fqfP7tnKfBt1mpktA89Ir2e1Kyxm3R3xOVZj3eHOY9kkLA8H1UPSrcv5WDOb
	 JxJybm62EkWWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5302860A43;
	Fri,  3 Apr 2026 13:46:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 002A31A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E5DB381D24
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:46:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lhXEjgxus3dZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 13:46:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5EC4A813EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EC4A813EA
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5EC4A813EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:46:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 027AE409AD;
 Fri,  3 Apr 2026 13:46:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF2F8C4CEF7;
 Fri,  3 Apr 2026 13:46:42 +0000 (UTC)
Date: Fri, 3 Apr 2026 14:46:40 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20260403134640.GG113102@horms.kernel.org>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
 <20260327073046.134085-8-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260327073046.134085-8-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775224003;
 bh=dhORVKWFgjtVArpJ/zyWhD6ZCl+KA8tWqkp4buwBhVc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=td0Sco6pI+LxyaIhFPmXSLmUkKKwdApeH2C2hVh83THoIuY85J2eBJ2r4F5l5UNMn
 F8tOC1z5zuCKJrd2ZmDV3DcJH7CV4SHKLPcMfZJnzK2qXc+319MlYKxVzt4i31O/3Q
 1JlmkYIre6WzEO6NbaJbSnE/Sy8M9fNKyuRhnRCGfG59f0/ZV3OC7syhptbDxYhPXv
 5pA8iyVmjkxqkrKRhzXpyDFRDZVJNegQuC1Tenh+Mf90FS50jqJhncnQ1ZZxkPHht4
 EQvtcSaJ0RQDRFNKZgyvk6z7FS0EVwlUMDllVjJvN20HvQcoKdHBUgdmXy/RDapie3
 eN6Oa/WwJlomA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=td0Sco6p
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: fix cls_u32 nexthdr
 path returning success when no entry installed
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:marcin.szycik@linux.intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 47165394A9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 08:30:42AM +0100, Aleksandr Loktionov wrote:
> ixgbe_configure_clsu32() returns 0 (success) after the nexthdr loop
> even when ixgbe_clsu32_build_input() fails for every candidate entry
> and no jump-table slot is actually programmed.  Callers that test the
> return value would then falsely believe the filter was installed.
> 
> The variable 'err' already tracks the last ixgbe_clsu32_build_input()
> return value; if the loop completes with a successful break, err is 0.
> If all attempts failed, err holds the last failure code.  Change the
> unconditional 'return 0' to 'return err' so errors are propagated
> correctly.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>

This feels like a bug fix that should be routed via iwl-net with
a Fixes tag and some description of the user-visible effect
of this bug.

Else, please clearly state in the commit message that this is not a bug.

...
