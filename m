Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIcNJ3qevWmW/gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:22:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2677C2DFDB3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:22:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C155A60B44;
	Fri, 20 Mar 2026 19:22:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P549h2DKa1PJ; Fri, 20 Mar 2026 19:22:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C948761BDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774034550;
	bh=Yj0gX886MqSdYm6VhyiKop7VBmixk4UQXUMgNG9ABv4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B7xbH0Bu+2iaTrz7YBdsu3YCflPTkbTRdaGtWdVrKNK3QIU4rPpIT84mRl1fw/6JA
	 W0jO02Gz7YGsfUW6FELz0U6qcjHg4iHK3BBiHwf/gr6jLMGmiVS3pTANarRBFik/Bt
	 K4ZgmV2x4AQdMUOFirlrfhKKmNHn6UXam4J0I/4R7YL95LoY0aLmUa1egiWMuapeNC
	 4q8r4uuvtb9wWCbZ/6yIH9/FAkMZR06GEASnuAh7Y4hZo0CqeBAeDytUitnE08ypxB
	 qQDAShU3QEtOngluTAHugNHwyaclZ/CvKZ/Yq5dL3qdLVbolE+P2S70cqp5q7XRNrM
	 ADNJswlpm/dog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C948761BDE;
	Fri, 20 Mar 2026 19:22:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4774E25C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 391BB41B78
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:22:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Er6RX7jIjr7u for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 19:22:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9E13E41B63
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E13E41B63
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E13E41B63
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:22:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id F24AF43CFE;
 Fri, 20 Mar 2026 19:22:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF2F2C4CEF7;
 Fri, 20 Mar 2026 19:22:26 +0000 (UTC)
Date: Fri, 20 Mar 2026 19:22:24 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <20260320192224.GA164092@horms.kernel.org>
References: <20260320050537.422528-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260320050537.422528-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774034547;
 bh=TggM05cJ/nNvU3rSwbGrgvekmiHgnNF4O6+tt/fSZ5s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=haDJhrWxjcGLKvlrrefGIqiIYgSk7UEAILzIfevI3Fed9774J0boBznB/XgeQQfb2
 Ka3Xl8Is5S/sNSjsIA8hX5ikL1cspdn1LjaeIbxxgPJ2Xrm5d/lIecSXhp7UgVoKvo
 f4Ocy+7OFyFfwNsYO/lYm1FXkiaLOZXpVC8rSc2vdykHtaBrbQb+0I9HK73kFQ/GKt
 9vcgtgnTFT8l02AksNupSeogtPAbZFi/4SmJJHM5PNYQceTl1WS2sB8yNrHRjjDDa7
 8EpOYFDd3dU6MNycIGo98a4XuiWHARCk1tUKUUCHWSu+N83A+pKcPPuk6YgzK8BP4r
 vIdp+tkE09G5Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=haDJhrWx
Subject: Re: [Intel-wired-lan] [PATCH] ice: fix ICE_AQ_LINK_SPEED_M for 200G
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
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
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2677C2DFDB3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 06:05:37AM +0100, Aleksandr Loktionov wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> When setting PHY configuration during driver initialization, 200G link
> speed is not being advertised even when the PHY is capable. This is
> because the get PHY capabilities link speed response is being masked by
> ICE_AQ_LINK_SPEED_M, which does not include the 200G link speed bit.
> 
> ICE_AQ_LINK_SPEED_200GB is defined as BIT(11), but the mask 0x7FF only
> covers bits 0-10. Fix ICE_AQ_LINK_SPEED_M to use GENMASK(11, 0) so
> that it covers all defined link speed bits including 200G.
> 
> Fixes: 24407a01e57c ("ice: Add 200G speed/phy type use")
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

