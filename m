Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mE2ODuFcuGnXcgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 20:41:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2242F29FDC7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 20:41:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5914B834EF;
	Mon, 16 Mar 2026 19:41:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UbfuRJ0rC3RG; Mon, 16 Mar 2026 19:41:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3969835A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773690072;
	bh=zAS1USyAQYni2mHN1dHdWcJ/9C2Y6YMcT5syY77rR2E=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5IBF+ENtVIG9Udyxt4wllFvAl5AWmWzh+4pSNXgXjV8Vimqt9fvaYoLVaXHebZ07m
	 QAEXevKb7D221BmCdoBmFd5mKF+P5CNl5k9dJxVkfvG3CiAuRoiTt9S1181PbmJSpH
	 8CPn3iOl8Pw2Mp05yCfHoHjAefqzC8akdW/BEh5ANyIHeNVp6+JNEjtpnwDrhgtVVc
	 ymhTujhcEJCcs/vOoJJC41JZDvb3/H4+slHIuoKKz9acG0qR2b43E0Aiie+HiwCcN4
	 p1ekKgbcFMILCbIG7wtd+NcXeM8xHKjRmY8IFwNM7Q18VHqc8MycxAI1EBaqj8TeQB
	 9Zl2WbG/CWBPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3969835A7;
	Mon, 16 Mar 2026 19:41:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B1483BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 19:41:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0CAE183576
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 19:41:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v1EWhA--RgGp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 19:41:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6330B834EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6330B834EF
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6330B834EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 19:41:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 4A7584385E;
 Mon, 16 Mar 2026 19:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FBBCC19421;
 Mon, 16 Mar 2026 19:41:08 +0000 (UTC)
Date: Mon, 16 Mar 2026 12:41:07 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S .
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>
Message-ID: <20260316124107.0dd3cc2b@kernel.org>
In-Reply-To: <878cd07a-b7fb-491a-9cec-8ddbab2bb13b@intel.com>
References: <20260313150917.271086-1-marco.crivellari@suse.com>
 <0ca7f92b-ec4e-469c-ad2b-648d278bcfe9@intel.com>
 <20260314091048.235a6d0b@kernel.org>
 <878cd07a-b7fb-491a-9cec-8ddbab2bb13b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773690069;
 bh=+r/rKSDJHKoEyUKWlrdPrbGCuVC2E2OzQyf0nGl0zCc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=t6gf85r8cnydejSet9c0sttbHQI2BMNRJUEL4LM4qSqlCJPzzGrYam2YVn67iGS6l
 UsQQkMIXKR/3xG0sCF3Wxa4rzDUn8mCMroPEAiHofQNkMgtxKsvXC5lI6kVEmpsmnA
 qSraGb/SPn2C47x4f/prj3MqR7r6mTTJFdCNdgPhrjnCRGyyOSKsN/UJFO60tGmw3b
 9qcfktfmvpFSoaPZl/ufmkfdQYL2LDdO7qV7v7psaivdxOReDjwVRD+NozCIzeAzPa
 Pf5gxG1Aq5ju6cAFsij9yibQ2GqLAQM7cFvAxE+zIwfMaj7Y8qQYql8y4xa9qf/MJW
 Qoo16doqzV/Tg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=t6gf85r8
Subject: Re: [Intel-wired-lan] [PATCH] idpf: Replace use of
 system_unbound_wq with system_dfl_wq
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
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2242F29FDC7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 16 Mar 2026 09:58:29 -0700 Tony Nguyen wrote:
> On 3/14/2026 9:10 AM, Jakub Kicinski wrote:
> > On Fri, 13 Mar 2026 17:08:57 +0100 Przemek Kitszel wrote:  
> >> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>  
> > 
> > Process question - even tho you are also a maintainer I only read
> > Tony's tags as "please apply directly". LMK if that's right, I'll
> > try to remember / make a note..  
> 
> I talked to Przemek about this a little this morning. Since the 
> Reviewed-by tag is used more prevalently in our process, perhaps an 
> Acked-by could mean take this directly and the Reviewed-by keeps the 
> same process of going through IWL. Other thought would be to explicitly 
> ask/state for it to get taken directly. Open to other ideas as well if 
> there's something else you'd prefer.

Sounds complicated :S Let me continue ignoring Przemek's tags for the
purpose of direct application. I guess it's more about who sends the
PRs than who is a maintainer. If you send PRs I naturally never see
your review tags, as the patches will eventually come out with your SoB.
