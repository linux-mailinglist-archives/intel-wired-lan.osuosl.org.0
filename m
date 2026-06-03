Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uSFLB7lLIGoX0gAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 17:43:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C04639594
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 17:43:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=6vSoc5y1;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=onemain.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBFC984452;
	Wed,  3 Jun 2026 15:43:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cnBTcmnAjTnb; Wed,  3 Jun 2026 15:43:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53BAF84455
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780501430;
	bh=ALxcJ38/KI+nrcVbIPqgS4dMUa9NwXNjv6BfuH3JzpQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6vSoc5y1ELZSGl0djJIbvWBxmbHBGdfyp9r9gmrd1mpwPHz7wQ0xH1KHHL2sIFQDu
	 G/fuMLMuHUoG20pfZCx/wuVFOr78pCr5FUOqPg/l8DEakvhfG0zyB8xZ36Ide55ddA
	 mgO+qzH+4euhyT1pYJvSC40LTfXB8KpZRJ7nFSE8N1WdJ2dSgwuPDPal7zpfiIq2e8
	 y6O4cbEfNLqd2f9/eEYKUeTL6YFTI8LbWu7vynR4xb3xuGO1eZlRIxl9uza+GjGDcv
	 tn2v8GJ9TPQ2OCuNNGsYDHLSbU4MuPcfBTm1dqnC23lMvRo4lDSHbzMjBZH78tGz0e
	 R24kTk2pToJEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53BAF84455;
	Wed,  3 Jun 2026 15:43:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AD4C1192
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 15:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9EEC1420FE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 15:43:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fg48OPcEQNDO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2026 15:43:47 +0000 (UTC)
X-Greylist: delayed 333 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 03 Jun 2026 15:43:47 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7473640027
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7473640027
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=51.81.61.66;
 helo=mta-102a.earthlink-vadesecure.net; envelope-from=sln@onemain.com;
 receiver=<UNKNOWN> 
Received: from mta-102a.earthlink-vadesecure.net
 (mta-102a.earthlink-vadesecure.net [51.81.61.66])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7473640027
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 15:43:47 +0000 (UTC)
Received: from [192.168.0.23] ([50.47.159.51])
 by vsel1nmtao02p.internal.vadesecure.com with ngmta
 id c590d1c8-18b59c4657ae0029; Wed, 03 Jun 2026 15:37:52 +0000
Message-ID: <620a9c51-604b-4622-a9a3-40f6a54e7aa6@onemain.com>
Date: Wed, 3 Jun 2026 08:37:31 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dawei Feng <dawei.feng@seu.edu.cn>
Cc: aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, jianhao.xu@seu.edu.cn, zilin@seu.edu.cn
References: <eb74ae1c-3027-42f5-ad5b-a6f2c2cd6a98@onemain.com>
 <20260603032822.763195-1-dawei.feng@seu.edu.cn>
Content-Language: en-US
From: Shannon Nelson <sln@onemain.com>
In-Reply-To: <20260603032822.763195-1-dawei.feng@seu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256;
 bh=ALxcJ38/KI+nrcVbIPqgS4dMUa9NwXNjv6BfuH
 3JzpQ=; c=relaxed/relaxed; d=earthlink.net; h=from:reply-to:subject:
 date:to:cc:resent-date:resent-from:resent-to:resent-cc:in-reply-to:
 references:list-id:list-help:list-unsubscribe:list-unsubscribe-post:
 list-subscribe:list-post:list-owner:list-archive; q=dns/txt;
 s=dk12062016; t=1780501072; x=1781105872; b=YICi2Gl5iYhscsf53vglN3e1/uy
 47bOrYvxRnFxVBXT+OeCjYp81fx+t3MmqW3+NwGq/yiY+Hrk3OuN4U/oI7IVTOKIaMfm7j3
 2yvczT/p84E+vIiHUH0+MPWMPfqeuMIQXMuh3lVH+dmGbHOKHb6ilMuhMV61AFx7MNIfsWG
 hCL6vjiuRgHFY8dwkFMmLSiRAe1SLMj6YJ2Gjp3huX8TMPZRGcfd6Mn46F3sFKRFVaSYGRn
 HoghF60O8PFLLqBrwm7Tu/JTKgHpzVwVFAgc3k+pV4oeGDIgtyw5SkTQ2X3D2Xq0xOwGyTe
 Lo/4/4uGZOsPXN0j0/SaixuKLDNvttw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=onemain.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=earthlink.net header.i=@earthlink.net
 header.a=rsa-sha256 header.s=dk12062016 header.b=YICi2Gl5
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix netdev leak in
 i40e_vsi_setup() error paths
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[onemain.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dawei.feng@seu.edu.cn,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:zilin@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,onemain.com:from_mime,onemain.com:mid];
	FORGED_SENDER(0.00)[sln@onemain.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sln@onemain.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 38C04639594

On 6/2/26 20:28, Dawei Feng wrote:
> Hi Shannon,
>
> Thanks for the suggestion. I took a closer look at the cleanup paths, and
> I think the localized v1 fix is safer here.
>
> In particular, i40e_vsi_reinit_setup() has early failure paths that can
> reach i40e_vsi_clear() before unregister_netdev() is called. Moving
> free_netdev() into i40e_vsi_clear() could therefore free a
> still-registered netdev.
>
> So I plan to keep the current v1 approach for this fix, rather than moving
> free_netdev() into the common VSI teardown path.
>
> Best regards,
> Dawei

That sounds fine, thanks for looking.
sln

