Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMQ0Ehfe+mk2TgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 08:22:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5974D68BA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 08:22:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0770681ED1;
	Wed,  6 May 2026 06:22:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I8jz71jfqVJh; Wed,  6 May 2026 06:22:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76CF98217B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778048532;
	bh=3EGkfEISspdpALTIUefHTypJuq7HIG6Z2B3tJmeyaiA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1DrSsWhlbo1nNcUfDyOO0dDukd+A4oBuI6nrfcBss4tmPiLmpg9K7CwDv/LZh9DjT
	 W9ZMDyJeBS18nSMwZn5Coe7CJPbvpEoNQKYxSeZPehriAAnjPK3WU+RN6xgEoLEZ1I
	 S3oE/20Ob7AmUQ1GcqMN4dXUcj23bUceKszTqcD0Bxdv25VDywNEzECquVo8DwLVom
	 W1mh85J928HzGOHra/01P12MIkPOHiqvdMJIKdKvTpGuaeUdRSUCyQXajfsKCDMIeW
	 Y1jwn7iZK7PhO7y8T0l392eCuGjaYJWUF1Y1/j6KKExRgbvGMoLyUjd7rqTeKC1LPh
	 8QqBj7rOd5jdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76CF98217B;
	Wed,  6 May 2026 06:22:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BBE912A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 06:22:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1C3A40C75
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 06:22:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n2Zrd4ClYGtI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 06:22:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C950240C73
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C950240C73
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C950240C73
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 06:22:09 +0000 (UTC)
X-CSE-ConnectionGUID: g9ZMsGQaRjSmaZVGVZgRzA==
X-CSE-MsgGUID: lbguPKYsRGG3eHExYBeeDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="78993991"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="78993991"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 23:22:05 -0700
X-CSE-ConnectionGUID: a80tDqs4S5eL7ELXQ5SBGA==
X-CSE-MsgGUID: 1usHIHH7QRm7nYQgNoAu2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="235179657"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.37.237])
 ([10.247.37.237])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 23:22:02 -0700
Message-ID: <63b186e0-046d-496e-8ae4-d68cd5eb5817@linux.intel.com>
Date: Wed, 6 May 2026 14:21:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Laight <david.laight.linux@gmail.com>,
 KhaiWenTan <khai.wen.tan@linux.intel.com>
Cc: anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, faizal.abdul.rahim@intel.com,
 hong.aun.looi@intel.com, khai.wen.tan@intel.com
References: <20260428060009.311393-1-khai.wen.tan@linux.intel.com>
 <20260430154105.505739ac@pumpkin>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20260430154105.505739ac@pumpkin>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778048529; x=1809584529;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tO/P59QFbb2wY0arYKYcGmAulgqF0HwsaPPCzm3PclY=;
 b=lSrXbCAjY30iTzOl1gf+KQYlbb+V8UzwyWXAfOKqbjcY+rKuEQHY4PHI
 guRyB6UQNk+B9IuphYJamRa3w2DPIT1oqX2QbDc+ltm4B/meo37ASXldn
 65duPB7nkeLd4+vlcfQiw8TOBMFxnWBo8Unr1TURFskIVAgezoA9C3V40
 K73v6hFGZIop4qFjXnZgGbyTzk4mn716OuivF+WrqURgD4glFgCFOl/0L
 3PBu7TbjcehrobUG6mQBEakU0T48YcqnEPL2FvL+4iKYxiIgpRsZNwV6r
 fQSqrQ9G85P20pjD4hQIOCmxFdAUvv5wP8cqqb3hzNl0uuVhc0KJYGwc7
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lSrXbCAj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/3] igc: add support for
 forcing link speed without autonegotiation
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
X-Rspamd-Queue-Id: BF5974D68BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:davidlaightlinux@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]



On 30/4/2026 10:41 pm, David Laight wrote:
> On Tue, 28 Apr 2026 14:00:06 +0800
> KhaiWenTan <khai.wen.tan@linux.intel.com> wrote:
> 
>> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>>
>> This series adds support for forcing 10/100 Mb/s link speed via ethtool
>> when autonegotiation is disabled on the igc driver.
> 
> I'll ask 'why' ?
> 
> In particular forcing half/full duplex has always been a very good way
> of 'breaking' a network connection.
> 
> It really is much better to restrict the advertised link modes and let
> the autodetect/autonegotiation logic in the phy/mac do its job.
> 
> About the only think I can think of is to force 10M HDX when connected
> to a remote system that supports 10M/100M HDX.
> In that case you need to send out single link test pulses, not the
> burst used to identify 100M HDX, or the pattern encoded on the burst
> used by autonegotiation.
> But you need to got back to the mid 1990s to find such systems.
> Anything that supports FDX will do autonegotiation.
> 
> 	David
> 

There's a use case requested:

Profinet Certification tool reports that forcing a link speed without
auto-negotiation is not working.
Forcing the link speed is a critical feature for the industrial automation
"fast-start" use case. When there is a connection lost, the system must
come back up as fast as possible. In PROFINET, that means to force the
speed and rejoin the controller loops. Without supporting forcing the speed
to 100M in Foxville, the certification tool would not be able to certify
the availability of this feature.

I'm hoping this context is enough to justify the need?
