Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIsrOSad12kUQQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 14:35:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBC83CA7CE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 14:35:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76C2B40907;
	Thu,  9 Apr 2026 12:35:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GJKGF8rRSpFL; Thu,  9 Apr 2026 12:35:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCFAA40814
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775738145;
	bh=w706NqgBqyMKvr0nVOHn4NlIhTaCVyxRXyIz0wu2eTw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T34IdG677omdV5Mm+zotG6xSw+781CGS2xI7dj6fZ30bHBqDfZJC8TUbbEcE0edrw
	 0br//nxV8ahXiA/glAyqbIri7aMIIQAqo3wJ3V5uol7j3UlzRh20T3qw+KPRVCttLt
	 5pEnkQsXLZOWU47gJFHPG3ZuznvMJrSAclX88Od2JWjMCp8xtsn0XvPml8QyUv1FdL
	 koW3e1ObE3YsZXOo7KPcgPC41IAo1ppjsuDWSecpY5YBtgJvxLc9f2eqIb1QGZaIZh
	 A4iofW5SBQT/+4NiFqxrj4kQCI8Epxap53gXTr3v3xb8oogMVUvMRlMKTvM4oVZmnd
	 vm0oO2rBZKaCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCFAA40814;
	Thu,  9 Apr 2026 12:35:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 73C5F1F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 12:35:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 59B5581445
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 12:35:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rBKTB_595-8S for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 12:35:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2001:41b8:202:deb::311:108; helo=stravinsky.debian.org;
 envelope-from=leitao@debian.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 558788143D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 558788143D
Received: from stravinsky.debian.org (stravinsky.debian.org
 [IPv6:2001:41b8:202:deb::311:108])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 558788143D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 12:35:43 +0000 (UTC)
Received: from authenticated user by stravinsky.debian.org with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.96) (envelope-from <leitao@debian.org>) id 1wAobc-009CdJ-16;
 Thu, 09 Apr 2026 12:35:32 +0000
Date: Thu, 9 Apr 2026 05:35:28 -0700
From: Breno Leitao <leitao@debian.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, 
 netdev@vger.kernel.org, Leszek Pepiak <leszek.pepiak@intel.com>
Message-ID: <adedA3IogGaBhXIQ@gmail.com>
References: <20260409093020.3808687-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260409093020.3808687-1-aleksandr.loktionov@intel.com>
X-Debian-User: leitao
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=debian.org; 
 s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=w706NqgBqyMKvr0nVOHn4NlIhTaCVyxRXyIz0wu2eTw=; b=OC2TM+lfxYsLQIhsCdB3HrmzIP
 054IXBC5UmIQIuU01hqYd0KX4/xz+4PAH8Kg9X5PRVH8Pddy86B4veXRGWqPjJz838D7tkhHHYJ7U
 dP0ENSI6N3dwoH+L8DqU9Ml2ob5B1rcwo9Z0P8EMb9TQQTq8bAtgaLQM3geR57eZPjcT/FR//ohZr
 XPfJql6cSUVy16+W0D0hSf/ZQnCstnMP7SCJwBYjbd193ja0sUlJOBy/7LD0m6Ez+kYqGgu55CrzZ
 /E1FXD28pda3h1/NhV1KCQkivjTdHkg2Z44tFBlXDTnraek4mzyB/y2OYno8/5mbEzMbeLwXQyMpY
 IMSr4ziQ==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=debian.org header.i=@debian.org header.a=rsa-sha256
 header.s=smtpauto.stravinsky header.b=OC2TM+lf
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: fix kernel-doc
 comment style in iavf_ethtool.c
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER(0.00)[leitao@debian.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:leszek.pepiak@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[leitao@debian.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: BBBC83CA7CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 11:30:20AM +0200, Aleksandr Loktionov wrote:
> iavf_ethtool.c contains 31 kernel-doc comment blocks using the legacy
> `**/` terminator instead of the correct single `*/`. Two function
> headers also use a colon separator (`iavf_get_channels:`,
> `iavf_set_channels:`) instead of the ` - ` dash required by kernel-doc.
> 
> Additionally several comments embed their return-value descriptions in
> the body paragraph, producing `scripts/kernel-doc -Wreturn` warnings.
> Void functions that incorrectly say "Returns ..." are also rephrased.
> 
> Fix all issues across the full file:
>  - Replace every `**/` terminator with `*/`.
>  - Change `function_name:` doc headers to `function_name -`.
>  - Move inline "Returns ..." sentences into dedicated `Return:` sections
>    for non-void functions (iavf_get_msglevel, iavf_get_rxnfc,
>    iavf_set_channels, iavf_get_rxfh_key_size, iavf_get_rxfh_indir_size,
>    iavf_get_rxfh, iavf_set_rxfh).
>  - Rephrase body descriptions in void functions that incorrectly said
>    "Returns ..." (iavf_get_drvinfo, iavf_get_ringparam, iavf_get_coalesce).
>  - Remove boilerplate body text for iavf_get_rxfh_key_size and
>    iavf_get_rxfh_indir_size; the `Return:` line now conveys the same
>    information without the vague "Returns the table size." sentence.
> 
> Suggested-by: Anthony L. Nguyen <anthony.l.nguyen@intel.com>
> Suggested-by: Leszek Pepiak <leszek.pepiak@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Breno Leitao <leitao@debian.org>
