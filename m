Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LDBFDIaGKmoDrwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 11:57:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1303670A02
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 11:57:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=GzspxWHf;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 443A56077F;
	Thu, 11 Jun 2026 09:57:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TMqgHxx0Bd7q; Thu, 11 Jun 2026 09:57:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E8B56077B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781171842;
	bh=MQi1GXYgeLxT/ZiHzfowLgMstlZJ1PcdT5YjwgaF9z0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GzspxWHfumN9D1FIicIyV3Ln4YW1riVJwGlX4ziezNo2KjwRMYlhxXooN3l7+CFaI
	 i+3u6CkA0VhNS/LeyctfiI8kynFCoMCBkcEErPH0eHfHxaaRxhQ54Y7MqMKE2DnTMp
	 CK/lmWpNtK+I+lLu4GowLSar2dO4wbO/n8CdC3zM08DysbiN3sLm5Hon3GjAqcdYK5
	 DQxdtjnFb5VM7uJRUhnVGxtL5Ja0sCxBd5ZyFiKTLWFIN2Lmo+c7M6WGu73fE3u0WI
	 d4Mf00s7jCZNweR7gGeVQ9tF+aCIZLux67fe63ieVHFvEbiLMjlcCErA8zaXS1DvL7
	 ovs8CT5MeRuDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E8B56077B;
	Thu, 11 Jun 2026 09:57:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A638192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 09:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C22340181
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 09:57:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6sL4KAqyM_Ix for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2026 09:57:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 337FD4016F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 337FD4016F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 337FD4016F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 09:57:18 +0000 (UTC)
X-CSE-ConnectionGUID: Q/7rySkFTgmczH/0CEyRdQ==
X-CSE-MsgGUID: qsCdwwDuRSeRq9JTydHTXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="85878385"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="85878385"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 02:57:19 -0700
X-CSE-ConnectionGUID: dzsk0NkGSKeWXfX6TsWfuA==
X-CSE-MsgGUID: cFzqVN17S1yy/u5AokpLMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="248307637"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.245.113.42])
 ([10.245.113.42])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 02:57:14 -0700
Message-ID: <97cdf8fb-8a8c-4d14-aee6-cda196d22c85@linux.intel.com>
Date: Thu, 11 Jun 2026 11:57:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dawei Feng <dawei.feng@seu.edu.cn>, jacob.e.keller@intel.com
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jianhao.xu@seu.edu.cn, kuba@kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com,
 stable@vger.kernel.org, zilin@seu.edu.cn
References: <00f5f6e3-e80f-4c16-8d2f-f8148bcddfa8@intel.com>
 <20260611020254.308446-1-dawei.feng@seu.edu.cn>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20260611020254.308446-1-dawei.feng@seu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781171840; x=1812707840;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Y4iF2arspFBq1Jv8QVwxqZvgeFBzKCiYqK4M2WzHJaY=;
 b=XDVtLFRoBIrDexXAS5lO/T5+GDJIYqafJU/NkhaPxxo/XTYS95V88k8j
 8r/TwA278bf13x8topq4OQ/Ev2l7aS5dhn+gyUld4ZaQout0qRvG54fR7
 Z87TdOYxUJGGkYt5Bhn69icl4gOY3BK9/2XbQyWazR0ZxV+/x8nbSuZqp
 m3c6KO+c+mokr37KEtpxMSEJxJuP1QsNIimJKkyUPs/FLLMV4TAhTqDNr
 cJXCCaLJFW7EDIhGK6pnrURVw0uhBrA/ZKNauK0Vs4swhWkKV9W2pp4/x
 MJvcRNoWQ+ld0Bo1ovf8+2ey73gTp3zp+uCuMr3GdWTKHh8JqrgfX1Om5
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XDVtLFRo
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix memory leak in
 ice_lbtest_prepare_rings()
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:dawei.feng@seu.edu.cn,m:jacob.e.keller@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:jianhao.xu@seu.edu.cn,m:kuba@kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:stable@vger.kernel.org,m:zilin@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E1303670A02



On 11.06.2026 04:02, Dawei Feng wrote:
> Hi Marcin,
> 
> Thanks for your review.
> 
> On Tue, 9 Jun 2026 at 16:27:20 Marcin Szycik wrote:
>> IMO last two paragraphs should not be included in commit message,
>> rather after ---.
> 
> The reason the manual inspection and testing commentary was placed above
> the `---` line is that we were strictly following the example template
> provided in Documentation/process/researcher-guidelines.rst. 
> 
> In the researcher-guidelines[1], the example explicitly places the build
> and hardware testing disclaimer before the Signed-off-by tags, which is
> why we included it directly in the commit message.
> 
> Please let me know if you would like a v2 to adjust the position of the
> mentioned commit log details.

Thanks for linking the docs, now I see the commit message is exactly as
recommended.

Thanks,
Marcin
>> Correct me if I'm wrong, but looks like unroll order is reversed:
>> ice_vsi_stop_lan_tx_rings() unrolls ice_vsi_cfg_lan()
>> ice_vsi_free_rx_rings() unrolls ice_vsi_setup_rx_rings()
>> (was reversed before this patch too, but since we're fixing it, might as well)
> 
> You are right. I'll update it in v2.
> 
> [1] https://docs.kernel.org/process/researcher-guidelines.html
> 
> Best regards,
> Dawei

