Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JcaCg8Xx2mWSgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Mar 2026 00:47:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0CF34C885
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Mar 2026 00:47:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3513B411BB;
	Fri, 27 Mar 2026 23:47:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WJ9ptgayJcpe; Fri, 27 Mar 2026 23:47:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 243DC411B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774655243;
	bh=zxFh21zA0f1E32WvYWkeJsNVFM+NjTzu0tGKpTPaBHM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r31XxDFG/Ds8uycn9J92dMJ3uJyHSmWGg7B5txi9pWLnHi0d6h11T+etPOj6QiL5j
	 iKa2WkvGHcS3ahDaQSMvUDnjkA5ysfM+YpSmfbasTsB6eZyD4bD4JG95miPWurwMvV
	 KIDi5Sd9TR8GPIRnyg5RGiBn0DmxCrzKam+WO5rRCrwhEap9SnwQLAXGcK8JGCJIg9
	 hG5y7jVtFQGcfYqQIyb5s5OEQmF4yjXcX6X4vVQUZ446o0UpaCH0EIv2HHwLCPrDVu
	 5JMWCtWSWhhFeC72LERaW/ggQnXI2D3i2SaMMe/IE9LS4z2Bmwpr0xwQ4hGch9P4p6
	 RI9eXippsS7TA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 243DC411B8;
	Fri, 27 Mar 2026 23:47:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BDF1510F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 23:47:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9AB5540752
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 23:47:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8VtxPUTekPhD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 23:47:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CFFD0400C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFFD0400C7
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CFFD0400C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 23:47:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 196D6405D2;
 Fri, 27 Mar 2026 23:47:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F5A4C19423;
 Fri, 27 Mar 2026 23:47:19 +0000 (UTC)
Date: Fri, 27 Mar 2026 16:47:18 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20260327164718.72bf4b65@kernel.org>
In-Reply-To: <f930e404-412c-46c0-9e3c-feee4d3c70fb@intel.com>
References: <20260325063143.261806-1-przemyslaw.kitszel@intel.com>
 <20260325063143.261806-2-przemyslaw.kitszel@intel.com>
 <20260326143808.1fd69825@kernel.org>
 <f930e404-412c-46c0-9e3c-feee4d3c70fb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774655240;
 bh=LJC6boXcVhCOgdtGYeqxWCvOrumqAszQh6+n3gXpp+A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=km2qaZOBKVgNrSzyi1afKAHfByPv2flHHCdCWRdIpAQYPxYvE2C+GMSKp5spf+21s
 6NVoLUMYoVLr9HU9okRXyJoZW1qzcWnQGKy0CcV/YsyjRKtFAdzGEC3K7Qnn/HEiI9
 wfhf20Rr5klNZmdq8/X5BwVXTayxGCVeWGF0oyjk9lW3QkfVb0tVHDSMgzhNLwoqQ3
 WWRNU9yNyiLRVZA63p+1ChWhOyvWmturIlJJxB3iMdfuOMv/ZBydBg5Dk1SodZQEFv
 RDdIYZ93jtZq8qHj9tzybuzIkVr++WgjrPpOAo15epn1mA4fbtJ7tFSf/A6BNauO0F
 h31Z3ot0FVk1Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=km2qaZOB
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] devlink: unify
 devlink_shd_get_priv() into devlink_priv()
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, edumazet@google.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2E0CF34C885
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 27 Mar 2026 08:42:47 +0100 Przemek Kitszel wrote:
> > If we are worried about misuse we should instead add an accessor
> > for "individual" (better name welcome) instance and WARN_ON()
> > when devlink_priv() is used in the shared setup.  
> 
> that would require the same amount of code as this patch (curr ver)
> has, only with WARN_ON() instead proper value (IOW: we detect what
> developer wanted, and give them big warning instead)

I guess I don't understand why you're so certain that you know what
the developer wanted. I'm of the opinion that the "individual" devlink
instances should not exist at all. Y'all want them, and claim to have
use cases for them. And yet, it is somehow not valid to get their priv.

