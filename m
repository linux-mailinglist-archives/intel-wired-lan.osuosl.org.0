Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOmqE4EEqGkRnQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 11:08:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C863A1FE1C0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 11:08:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 769CA81222;
	Wed,  4 Mar 2026 10:07:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2O_RRJFIBb7A; Wed,  4 Mar 2026 10:07:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89B728122A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772618877;
	bh=XUB+u/5VQDwSB6p3ZnGBSCJK4zuEu+T2wWn+DW/Iwmc=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mBsds9LRSm6Bx6M1lju0kKqhavktzMKAZVsyz9iBslRo0XfVCst/p7QfmNskICdt8
	 O6yFpcMoIsZ18lWRVU0ofmVDtVLB/l6tkptnwDdWJz+/amewBsuVncbIDp8q4Iuqua
	 4IZnTVHfwoZZky3AMjPhYz5DBNUA95WG3jviyzr7BBDt4S42WL3d9BWoVGouSIXAiv
	 1yBZ000Xj60YPphfG/9G9LeakmWccb081wQ6lL0a76MjotWVTK1TT2M4i4cj7AA7PD
	 xEH0RHXUsWu84yQcGY+SQRrG1dH/9f0/DXUwk6FceyyybxzbBxh0M3/oQvSFv8LQDr
	 gDmo9W8og3LxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89B728122A;
	Wed,  4 Mar 2026 10:07:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 240B425B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 10:07:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 161D2403BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 10:07:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id noATopz3xaPf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 10:07:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jani.nikula@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F282C403BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F282C403BA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F282C403BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 10:07:53 +0000 (UTC)
X-CSE-ConnectionGUID: 3XhxkjCbRoOfhl794VSl5g==
X-CSE-MsgGUID: JHpQECITSOqPRZLEXDUlCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73802860"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="73802860"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 02:07:53 -0800
X-CSE-ConnectionGUID: bz9U9LFUSsSRQ/6Br6NcBA==
X-CSE-MsgGUID: u08Ynn+0S6q5PdDfdJkP/A==
X-ExtLoop1: 1
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 02:07:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Corbet <corbet@lwn.net>, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Kees
 Cook <kees@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Randy Dunlap
 <rdunlap@infradead.org>, Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <878qcj8pvw.fsf@trenco.lwn.net>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
 <33d214091909b9a060637f56f81fb8f525cf433b@intel.com>
 <878qcj8pvw.fsf@trenco.lwn.net>
Date: Wed, 04 Mar 2026 12:07:45 +0200
Message-ID: <352c3f9f8ffd2d031c86a476e532a8ea6ffcf1ed@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772618874; x=1804154874;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4nLniX2BsUbSbyK0ug4iVQYKHRMIZaO2R8VMdLqlTaY=;
 b=OsStdSp0jLKnF7uc7hBVoXufYFgzzw0ytDeRQFvLhcDqNN6Cadi9acbH
 DY9x8Wmi+Q0cG5G5xSiEUVuB2q0TJcE2oG/H1RbsxNzkgJeuv3OTBicMi
 t68G1+/tHTbI+1IrNC41tqm89SnWf/0+S5Dtp5CV7oV4Q1/95UExPGP00
 vkoK8q5GKr/PX036dbAskhD1vi1Icef0X8KqhYZVR++mK1wXdRwIHmPGz
 /E0Gr5H9HrJFx4gYnAzTUdHobVauXtPTDHTOQFimqwCW/v4y5Vca60cia
 B7BOa0iBkHVBh8ilyy5CfgFh3t9ymkOVDcjpHFT5oKuyNi4Az6NCqE3lV
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OsStdSp0
Subject: Re: [Intel-wired-lan] [PATCH 00/38] docs: several improvements to
 kernel-doc
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
X-Rspamd-Queue-Id: C863A1FE1C0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:mchehab+huawei@kernel.org,m:aleksander.lobakin@intel.com,m:kees@kernel.org,m:mchehab@kernel.org,m:linux-doc@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:gustavoars@kernel.org,m:aleksandr.loktionov@intel.com,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Mon, 23 Feb 2026, Jonathan Corbet <corbet@lwn.net> wrote:
> Jani Nikula <jani.nikula@linux.intel.com> writes:
>
>> There's always the question, if you're putting a lot of effort into
>> making kernel-doc closer to an actual C parser, why not put all that
>> effort into using and adapting to, you know, an actual C parser?
>
> Not speaking to the current effort but ... in the past, when I have
> contemplated this (using, say, tree-sitter), the real problem is that
> those parsers simply strip out the comments.  Kerneldoc without comments
> ... doesn't work very well.  If there were a parser without those
> problems, and which could be made to do the right thing with all of our
> weird macro usage, it would certainly be worth considering.

I think e.g. libclang and its Python bindings can be made to work. The
main problems with that are passing proper compiler options (because
it'll need to include stuff to know about types etc. because it is a
proper parser), preprocessing everything is going to take time, you need
to invest a bunch into it to know how slow exactly compared to the
current thing and whether it's prohitive, and it introduces an extra
dependency.

So yeah, there are definitely tradeoffs there. But it's not like this
constant patching of kernel-doc is exactly burden free either. I don't
know, is it just me, but I'd like to think as a profession we'd be past
writing ad hoc C parsers by now.


BR,
Jani.


-- 
Jani Nikula, Intel
