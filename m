Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CF8LJAe+DGqJlgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 21:46:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DEB5844D1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 21:46:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45D3881B58;
	Tue, 19 May 2026 19:46:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M9eH3fNyoFuT; Tue, 19 May 2026 19:46:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB03581B70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779219971;
	bh=9/gISngu1YBPhlTCpjdF9NeYFRX29qtCBzl2K8u7rMA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IEpaSThcxm0kf0oIIP0XjqL8aS3HsKiihkpXJFNGlvRk7bzJt0KBwF0aqODModnt+
	 qEVDXdcZcemO2fg5wefsCqnXYYdsUTvQsftH+omOWv3yuIa68Xg/xpJgVJFF/Qp0Cr
	 euIbeVdJBC02Ki0RmUiadyGC6tS7rd8t2+SO4ii2FI1QUUMnkTbYoCIvFU5gEQ7sR/
	 FuMXBVThSzFTdUD3GCYNAl1GyLa6ZxSnkZCJJuHYuCnQ18eCMnptU6jnYQG/ujr4uq
	 wkwGhhrJuGCPIwB4XO7m0H6FEdpOncVlJgvUivRWkIsNV7Xqmlax7hzYmbAqBmgw8J
	 KMxD3a3ZCdjPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB03581B70;
	Tue, 19 May 2026 19:46:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F2A211B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 19:46:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3F1F404D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 19:46:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7aRYOtFLg-ih for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2026 19:46:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 330B14008E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 330B14008E
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 330B14008E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 19:46:08 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id E9AD460216;
 Tue, 19 May 2026 19:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D2281F000E9;
 Tue, 19 May 2026 19:46:05 +0000 (UTC)
Date: Tue, 19 May 2026 20:46:02 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Wilczynski <michal.wilczynski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20260519194602.GK98116@horms.kernel.org>
References: <20260514-jk-fix-missing-xa-destroy-v1-1-de437bf52347@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260514-jk-fix-missing-xa-destroy-v1-1-de437bf52347@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779219966;
 bh=9/gISngu1YBPhlTCpjdF9NeYFRX29qtCBzl2K8u7rMA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=B9as5wuaORLXiWK4cLkWHmh5uPzJYl+P8FtQ2E1SQffGs6a0SzEn6BHGjiRf65qif
 lpj/RKDO+K/77WnitPgMAJMyTDPHgmUJh9ToHgZjjG7fDvYc/A7freDBX/NSuEi2LW
 EMzcq4uma7zQLPsWsmdfw0OJOBZnNjQ7sHboJCjG0kn/Amk8eA40PERiCjsft5EEYh
 LGmumH61snkjbrhri52tzT1wzyKMxwAwGA+w+URk1Lr3qhJj3gRe7y0FvSyaZZwjez
 LlRkM6KA3fnZQdI84YA+LDbjGhWLr8qiy1lUAXgvf53Uns4JJcSc8Mi6x6GwAlUV34
 ruD1Oc3TqNORQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=B9as5wua
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: add missing xa_destroy
 for sched_node_ids
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:michal.wilczynski@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 77DEB5844D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, May 14, 2026 at 09:55:21AM -0700, Jacob Keller wrote:
> Commit 16dfa49406bc ("ice: Introduce new parameters in ice_sched_node")
> added a sched_node_ids xarray to the port info structure, but never called
> xa_destroy on it.
> 
> Since xarrays can allocate internal memory, this can result in a memory
> leak even if every element in the xarray has been removed.
> 
> Add a call to xa_destroy the structure during ice_deinit_hw(), and one to
> the unrolling cleanup path during errors in ice_init_hw(). While here,
> remove the overly verbose comment explaining the nature of the
> sched_node_ids xarray.
> 
> This was caught by Sashiko during development of unrelated code.
> 
> Fixes: 16dfa49406bc ("ice: Introduce new parameters in ice_sched_node")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

