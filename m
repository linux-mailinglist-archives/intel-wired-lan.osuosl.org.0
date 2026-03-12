Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNmMOdnQsmnrPwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 15:42:33 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 087E42738DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 15:42:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 244F2844EF;
	Thu, 12 Mar 2026 14:42:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c_ZyxGcvf2R4; Thu, 12 Mar 2026 14:42:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB98F844D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773326550;
	bh=nUpI4Bhk2+1zo7sVNjOjuTz5Qtpuxb58ibO8tnQWaWI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T5UfZDbFHkv6sRpwWELA6UL9CzBY8wa6PUUD1o+af1GwNod75dn9JUquk0Vt3Bcws
	 j8PpH4YVBdOp0nSABGYfob0CIoge4WP17mN9K0ner4ON1wYJ3GP/QfBRGYjK8eiabD
	 OS07Qb/Y6tvL3Gnn0aMqclB1D+1mUaL609bz3p630sk8hktOLjZhpQkuViGvarnwSp
	 hNCJacLPfJsEpuOG2zCnJVPFe5Lh3jsvVfiUon7GGNNe8lof+pWVDmr6Ws6b2GQTVq
	 arL3qFVKwdO/1ZoV3nzvVzU5VtobSWpiLKqkb/Q8tw14CcCDZpjU0DI1olmtSebFwN
	 x+l84CGH93L4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB98F844D7;
	Thu, 12 Mar 2026 14:42:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AFEEF228
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 14:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95A33410D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 14:42:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dxqdrs_l_UnL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2026 14:42:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C461F410D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C461F410D4
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C461F410D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 14:42:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E900943665;
 Thu, 12 Mar 2026 14:42:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 919D0C4CEF7;
 Thu, 12 Mar 2026 14:42:26 +0000 (UTC)
Date: Thu, 12 Mar 2026 07:42:25 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com
Message-ID: <20260312074225.27a4a7b3@kernel.org>
In-Reply-To: <20260312093101.1589970-2-aleksandr.loktionov@intel.com>
References: <20260312093101.1589970-1-aleksandr.loktionov@intel.com>
 <20260312093101.1589970-2-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773326546;
 bh=6Qr5Lqzt2TKO4ndBM40+Rf8eOWfEXXbUKDK6Jz+dC7Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bpMxmg5UOAiMC6OE7QbjMoUeH54aXEm+/rIn7I67Jte7+lCVTSt8PNv/SK/2PgcJ1
 7NnqyTBM3or2V3JebBnKcKwo9q4AFoIUKqKNTvuAThRp9F3MmA6LpsRhyniNBCkxnd
 a8EPBFNOG3M34p9mANm+KD3SRHwncDo0Umyp3ZBBQMgLk+DrOcKZein6OEVjdmVxoK
 Wxs70TUQvDOL3fYvT+C9Bp4X9YvAK+si0DtWrPjV/QOBvQDs18CvxZIHGOEoDAsCtS
 afLceEvdHAJ9NExeK9ptPZhHzoj4Ts+IytMXDssGBM24hQ6fCQrG7amoWN0ZV1t7SU
 qPo5WmV+bZ/4Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bpMxmg5U
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 087E42738DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 12 Mar 2026 10:31:00 +0100 Aleksandr Loktionov wrote:
> +	/* Strip TEID before checking - it carries no src/dst asymmetry */
> +	rxfh &= ~(u64)RXH_GTP_TEID;

No need for the u64 cast.
