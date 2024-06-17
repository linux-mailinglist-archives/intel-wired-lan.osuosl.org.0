Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC61190BCEB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2024 23:25:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33C92414B8;
	Mon, 17 Jun 2024 21:25:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VCDjW42G6-5n; Mon, 17 Jun 2024 21:25:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EE8940893
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718659557;
	bh=/BsmcbBQ88JD21hmBvShRbkorUVwm2/g+wZKbIpu/pA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F0R1TgRU4DwP4BruwVjUNGqIuA/K+ZVvdI+bpJmilTsUEcTZKMqK4Uu3qjiDdflfl
	 aS829/3Eb2L0oiOP9I85cwppSBaPHX3lh8TPId6TCHzu81m2udbuFBdLV+925Q1ZcA
	 u+VMAnnh0bO/TQMoHT8nYRPCdhz2TVGRqEwIh3b6+fVyAGs+DdIilCPNv/dvwzsbiQ
	 B79IP3vxHPDu5gaMYqwWS5RAZerwsOa1GvkovO9LOaF95qXW0cmciEcc3AoePEanes
	 whUtC2GZd8a8Hhlq5CeetFttCayZOD45P2gmZYXjmve7YmF0GiGR6HVzFihrL6rDwE
	 VCb9ECnYXoOlA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EE8940893;
	Mon, 17 Jun 2024 21:25:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 288171BF28F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 21:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 212EC40377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 21:25:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FlYw92bGrXfD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2024 21:25:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1851C40B22
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1851C40B22
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1851C40B22
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 21:25:51 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af4ad.dynamic.kabel-deutschland.de
 [95.90.244.173])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6BCDE61E646D0;
 Mon, 17 Jun 2024 23:25:36 +0200 (CEST)
Message-ID: <031590ea-8528-490d-a776-5c1c7ad81fa3@molgen.mpg.de>
Date: Mon, 17 Jun 2024 23:25:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20240617190759.2378532-1-jesse.brandeburg@intel.com>
 <2dcd7086-5b7e-4582-9e70-358015ca2b89@molgen.mpg.de>
 <383764d7-711a-4c1b-b188-0fe8d70ebb82@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <383764d7-711a-4c1b-b188-0fe8d70ebb82@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] MAINTAINERS: update Intel
 Ethernet maintainers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jesse,


Am 17.06.24 um 23:19 schrieb Jesse Brandeburg:
> On 6/17/2024 1:29 PM, Paul Menzel wrote:

>> Am 17.06.24 um 21:07 schrieb Jesse Brandeburg:
>>> Since Jesse has moved to a new role, replace him with a new maintainer
>>> to work with Tony on representing Intel networking drivers in the
>>> kernel.
>>
>> Maybe add the names to the summary/title:
>>
>> MAINTAINERS: Intel Ethernet: Replace Jesse Brandeburg by Przemek Kitszel
> 
> Thanks for the feedback Paul! I am more comfortable with the "summary
> subject" style instead of the "detailed subject" style. I also looked at
> a bunch of changes to the MAINTAINERS file, and there isn't much
> precedent for putting names in the subject (there are some examples but
> not many)
> 
> Do you have specific guidance you can point me at that I may not be
> aware of?

There is no guidance, just my frustration looking through `git log 
--oneline` and always having to copy the hash and do `git show …` for 
such a commit to find out what “update” means.

[…]


Kind regards,

Paul
