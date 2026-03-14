Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDppKSJ7tWki1AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 16:13:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E75728DA0B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 16:13:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9FB541194;
	Sat, 14 Mar 2026 15:13:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d_bw-rMP1jzC; Sat, 14 Mar 2026 15:13:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E5814111B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773501212;
	bh=6CKRQJSo/5LxMth9T/SMAY5K+hO6PGZ56l/+iIWhIvA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K3R3MHI6JsI2sJTKCf3GW6aKWLvshScp06JUOiIkXFpF6B5B2UEmKxLk+AsCYot1P
	 G2huLmESd6fa6JDhFJKT77aseOXBHfBJZOHd4TmIRlYeDRdHSmCAQv02GPAsCjRE8Q
	 9z3OHMa358MGBaPZMJAKCd7Xmotm9/iNx0jqTCUw4t4j5/HEPR9bc5jQUSNaLqA3xS
	 vCHHyErrVuTaMon4nxjwkj2PV1bmLiBYu1VQSpckR+gNsdS4TSZx1fKkbYSwOFekhW
	 s3fSRihc43j6Jt76jIOk+BJDaWGSMUXXmOPafJ+awJOVIaclEp4J0G4/t7GpCiUbD0
	 yav+/55xXyQ2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E5814111B;
	Sat, 14 Mar 2026 15:13:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B9014201
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 15:13:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B69AB822E6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 15:13:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yrs0xQghkolR for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Mar 2026 15:13:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1A710822E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A710822E4
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A710822E4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 15:13:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 7CFEC417BE;
 Sat, 14 Mar 2026 15:13:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D6BBC116C6;
 Sat, 14 Mar 2026 15:13:29 +0000 (UTC)
Date: Sat, 14 Mar 2026 08:13:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Message-ID: <20260314081328.2635a33d@kernel.org>
In-Reply-To: <IA3PR11MB8986CA12EE22E9C07BCE7E83E545A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260312093101.1589970-1-aleksandr.loktionov@intel.com>
 <20260312093101.1589970-2-aleksandr.loktionov@intel.com>
 <20260312074225.27a4a7b3@kernel.org>
 <IA3PR11MB8986CA12EE22E9C07BCE7E83E545A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773501209;
 bh=WHizFYmIry56OpDo0uge9SNh3o7uX3ISwBlv4bw6UCI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=s0xiJomY/kqz2SMx2xzgjhda5Gn2iTrFLX7yij0NGEflBpEude46o4ab+7zRS6pb4
 8gpbS0Z+pNldMCGrn2+maz6pA5QsNEYaa+f70WDxzp+XGyoqxSj5iJ/XuMxMRVhIkp
 uW0CzxNZi9AIdgLZcYFEED6gFkatyD0ED4uYGZB8MMfsUdUYHN8WEqvHDgvdWjmjX4
 +FWG4ld1S2a7rkrHjVsqei2eEmuZFemVY64w8d0ta124pOJILK2I7nezqFENa0WBK+
 zlQ1yEcH7u33DEWAibcYxMCgAMacyC2XgKpqvv9K9ffF2bit5x9E5zt0p4K9NFveC7
 nj4shqo33sIYw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=s0xiJomY
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/2] ethtool: treat
 RXH_GTP_TEID as intrinsically symmetric
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
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6E75728DA0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 11:28:29 +0000 Loktionov, Aleksandr wrote:
> > -----Original Message-----
> > From: Jakub Kicinski <kuba@kernel.org>
> > Sent: Thursday, March 12, 2026 3:42 PM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> > Anthony L <anthony.l.nguyen@intel.com>
> > Subject: Re: [PATCH iwl-next v4 1/2] ethtool: treat RXH_GTP_TEID as
> > intrinsically symmetric
> > 
> > On Thu, 12 Mar 2026 10:31:00 +0100 Aleksandr Loktionov wrote:  
> > > +	/* Strip TEID before checking - it carries no src/dst asymmetry  
> > */  
> > > +	rxfh &= ~(u64)RXH_GTP_TEID;  
> > 
> > No need for the u64 cast.  
> 
> But without (u64) it will work only while it defined as implicit int
> #define 	RXH_GTP_TEID	(1 << 8)
> 
> When it will be defined as BIT(8) or unsigned int it will break.
> What you'd recommend preventing such issues in the future?

We will convert the 1 to 1ULL once we actually allocate the previous 31
bits? The type is only u64 because it may come from a UINT but the upper
bits must be zeros right now.
