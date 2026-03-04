Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEatBqgAqGnynAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 10:51:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C221FDE70
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 10:51:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC3764084D;
	Wed,  4 Mar 2026 09:51:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RYzmsoAkLIpe; Wed,  4 Mar 2026 09:51:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23A5840844
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772617892;
	bh=3Y3/4nncXETDDmv6axBoywWGZmnTJNxF6rR4Y1Aqyzk=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v/J5ZxDSvkulmJHIks/ioEyTBGrb++OQjN5OdrzYYsm2N47mqJEhBPTdocUf0WLvr
	 4K3QHxetTSI1S0WbDskJFYLYC3LPIZ4aBdJ4DLyiw5wfUNOvKgSGx2ygPjJ/ZrXbbT
	 FGo4VUoY2OUQ40UgSaDCGksTnG3H60Ac+QWyXdv+SnyKC0MBe2nQEMrtdhrdbO51wX
	 OZKOaBKoAHgM6gUp4eAcVGL8euBvZ9WyCNMUgju+1rmRwOxHbvbZs3z5ABVRVVUUsP
	 RddaY1t4H4dCNTihoVJN0kPG4Lzg+4Ym1vFXBy4YJKv4MiVpyVATKFJlRdALB4IWI0
	 q2kRij43sNUXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23A5840844;
	Wed,  4 Mar 2026 09:51:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D93B231
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 09:51:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E773260621
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 09:51:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yNh5tCLkSk3o for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 09:51:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jani.nikula@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9D07860606
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D07860606
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D07860606
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 09:51:27 +0000 (UTC)
X-CSE-ConnectionGUID: vbCBUtVyQuOnuZYVri+SfA==
X-CSE-MsgGUID: b94iZ1dpTna3chyuRyA3Cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73374997"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="73374997"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 01:51:26 -0800
X-CSE-ConnectionGUID: 1Ea7458+RDWErlLELTBiWg==
X-CSE-MsgGUID: 4l180kpJQLGqACFXzt6ovw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="217531444"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 01:51:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>, Jonathan Corbet
 <corbet@lwn.net>, Kees Cook <kees@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, "Gustavo A. R.
 Silva" <gustavoars@kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Randy Dunlap <rdunlap@infradead.org>,
 Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <20260303155310.5235b367@localhost>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
 <33d214091909b9a060637f56f81fb8f525cf433b@intel.com>
 <20260303155310.5235b367@localhost>
Date: Wed, 04 Mar 2026 11:51:18 +0200
Message-ID: <b345179eb9c440c597f6618697b7272a8e383eff@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772617888; x=1804153888;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=hOx8/u7ut1L3MguJoU5B49CkW48rFlxVpSD60jdidy0=;
 b=K1CjejwW8ksE1jLX2x3W2gttpvvwy7aZMDP+x7rjMHuRh8qQhi832fwS
 gcuDQxAlGznpXaBswI8TFhMz21fiJNyA/i6Xzmvb9JDsKfcqaGAX0TLBc
 tqctpaRvVxNSyAbW2wHhtAY9aDl0HNAYt5amGi5UecQXDZ3qCwCEt3CeZ
 pwKIenxrD73YYTBc7nSh4yVzo5L7uUZCRYjTnHnT5IjeN9Z9T/VGbhTS1
 4SuUttHBKnJoAGDz0wwxXzrZJM0qo86wqMZ9oqLnl4HZZXc+6bDZw+9G1
 e1s8vxaczssg1sgc68ZVNYMazs4NEKQI8T0Svk0saKmFtu6H6097cD7Yg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K1CjejwW
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
X-Rspamd-Queue-Id: 30C221FDE70
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:aleksander.lobakin@intel.com,m:corbet@lwn.net,m:kees@kernel.org,m:mchehab@kernel.org,m:linux-doc@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:gustavoars@kernel.org,m:aleksandr.loktionov@intel.com,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Tue, 03 Mar 2026, Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:
> On Mon, 23 Feb 2026 15:47:00 +0200
> Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> There's always the question, if you're putting a lot of effort into
>> making kernel-doc closer to an actual C parser, why not put all that
>> effort into using and adapting to, you know, an actual C parser?
>
> Playing with this idea, it is not that hard to write an actual C
> parser - or at least a tokenizer.

Just for the record, I suggested using an existing parser, not going all
NIH and writing your own.

BR,
Jani.

-- 
Jani Nikula, Intel
