Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMO4Bqcg+mkyKAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 18:53:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 166AE4D1AD1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 18:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53BFA816E9;
	Tue,  5 May 2026 16:53:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bf-TGQQbO-cF; Tue,  5 May 2026 16:53:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2531816EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778000035;
	bh=++N5JgPd8L+AbUlzci2D4bjyBkyXSLq4VxF4krQ3+cY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ap07K2BYEqF4ORMovfBH07fkFx5zm2XPHe7SYZ5bzu73hCKfWbCxm2T722W8j6T0o
	 ZLW364Wua7R0aXgxeoAnu4g3awAM2UJhBUVk1osaA1CqfO/pbzZ1hifx642mtUGjEc
	 Zsk/f14MnfUORBcs4GpWrUZiZdyjNZ8b7iLCjE9Ys34GScJ11GzP7lBPvPAFdylnnd
	 WguagpYTlT/0ExnWVrs8qApCtKgV1LkxaOoknbD3WfywZsTLKwFgnQQzEJJUvXXfXg
	 mbgNUtoi+Fs6BeCLTmkpxemKjWfyor9RIMz8D03HrFXpVuiQqp1d/FrC690IX/FCJN
	 7W8ncg366NUTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2531816EF;
	Tue,  5 May 2026 16:53:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7124C2DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 16:53:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5689F816E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 16:53:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gEtipLvwoLrx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 16:53:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8E899816E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E899816E5
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E899816E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 16:53:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C3B9243E85;
 Tue,  5 May 2026 16:53:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5109C2BCB4;
 Tue,  5 May 2026 16:53:51 +0000 (UTC)
Date: Tue, 5 May 2026 17:53:49 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260505165349.GR15617@horms.kernel.org>
References: <20260430123154.132072-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260430123154.132072-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778000032;
 bh=VGK4IhLQAaz4z7KHq8KXx42hoDpRWK1OJIWRKuV6dRU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EYLXkfHZ09FJ8kOQpDmNuzWSw6Fuy9t0qASjTWpyBiitva3u9oNOr5Z6l9jMNwnkm
 H0jvusQNHcBKPM8Qu9MPxOZZaL8ho7KO2UEplbFAnZJwCcIhHmDwU3QL1A/q5D4SEc
 COvoDYGzLzsYOB81+nER5pTKjDQXoJFCygLMByqEEUxk/usnoXDORa/rNhQ2PYIVWJ
 BPM4tYU/y7/OiX7mljP993/ai979km8ovvgGK4zwKddO8NtQZ2Q+aTuxAFkbSTJTiq
 k7o3gpSgNwes5tFm9KDFlrcT0OfNJjMG8Nl4qDMwiSSXjGpEW92pZhosZT2jE+NP/d
 7Rb/2FWp0H4lg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=EYLXkfHZ
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix X550 AQ PHY
 identification returning ixgbe_phy_unknown
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
X-Rspamd-Queue-Id: 166AE4D1AD1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

On Thu, Apr 30, 2026 at 02:31:53PM +0200, Aleksandr Loktionov wrote:
> ixgbe_get_phy_id() reads the two MII_PHYSID registers and combines them
> into hw->phy.id with the lower 4 revision bits masked out by
> IXGBE_PHY_REVISION_MASK (0xFFFFFFF0).
> 
> Commit 5f1c3589b0f0 ("ixgbe: Correct X550 phy ID") replaced
> X550_PHY_ID (0x01540220) with X550_PHY_ID2 (0x01540223) and
> X550_PHY_ID3 (0x01540221).  These are the raw values read directly off
> hardware, but after revision-bit masking both reduce to 0x01540220.
> The switch cases in ixgbe_get_phy_type_from_id() therefore never match,
> and X550 AQ PHY devices always fall through to ixgbe_phy_unknown.  A
> wrong PHY type means the wrong ops vector is selected, resulting in
> failed PHY initialization and no link.
> 
> Restore X550_PHY_ID (0x01540220) as the match value -- the
> revision-stripped ID that the driver actually stores.  Keep X550_PHY_ID2
> and X550_PHY_ID3 as documentation of the hardware-reported values.
> 
> Fixes: 5f1c3589b0f0 ("ixgbe: Correct X550 phy ID")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

