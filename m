Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6C2939278
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 18:26:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C997A40294;
	Mon, 22 Jul 2024 16:26:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6NL74_1i1N8W; Mon, 22 Jul 2024 16:26:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCA7240286
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721665586;
	bh=vl5mj0uo2PA1aF36yHGOMdJHVzKQOBQEp4PtqeEz75I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g17wDhM5xs4mba9YYspQd1KY1B+SvQhivmO9GqbvVLbvuUBdq7YSK5jYP1TgfsoMT
	 eETlZ7SzoEdFjuvhcsctFk8bFjwb1A1pdOOgsNX+A4d8Mfu/uRH0Yjlc10qInMaJY9
	 z68ljkheIRx1XtrDF1Qr3aOQAblG1SDjtrbCZbPQsVry3Fxb2gnc8NyWclVdHhOKfz
	 zDwTEa2nRsE8Cxob7CQAuyec1CRAjBqmfutnuX6n46FUAVK3ImzEwkk/wx3nR4u8R8
	 +E2f+YPGiJZpzdundTA44aw1QYm2kIjT6013UGSKkhV4rav/pin1aRLNy/lkKa6Op2
	 CDkSMB42dscsQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCA7240286;
	Mon, 22 Jul 2024 16:26:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C4E01BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 16:26:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03288605A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 16:26:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7tDnkq_a0zjA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 16:26:23 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3976E6059A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3976E6059A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3976E6059A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 16:26:23 +0000 (UTC)
X-CSE-ConnectionGUID: 0rP+p2ipSCqxL8rzyAS47Q==
X-CSE-MsgGUID: NlJT6/seRMWpgI1BBT4oaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="18864442"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="18864442"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:26:22 -0700
X-CSE-ConnectionGUID: MJfk8nFcR9yhhlSdYKqyrQ==
X-CSE-MsgGUID: A60aTNn1Sya+WZABJyDnMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="82950304"
Received: from dosuchow-mobl2.ger.corp.intel.com (HELO [10.94.250.30])
 ([10.94.250.30])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:26:21 -0700
Message-ID: <faaf8123-0450-4ddb-ae86-50b8be1385dc@linux.intel.com>
Date: Mon, 22 Jul 2024 18:26:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240722122839.51342-1-dawid.osuchowski@linux.intel.com>
 <cb7758d3-3ba5-404d-b9e4-b22934d21e68@molgen.mpg.de>
 <0e5e0952-7792-4b9b-8264-8edd3c788fa8@linux.intel.com>
 <232df828-baa3-4c87-b5f3-c0dae9d98356@molgen.mpg.de>
Content-Language: pl
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <232df828-baa3-4c87-b5f3-c0dae9d98356@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721665583; x=1753201583;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=UyZaZjuiGAGlsyQJO9G5s022uxUrMSghFksQSEdmGtA=;
 b=UWSJXu5pZmp0O984grAZ/F4qTyM7okPuGoNeh+l1vsuNm3lEMmFS8i/e
 zBCv4/fjuPJ4z5ru6RO6yisao87euGzviwp+aMtqShELnRKMJdCQV/PX4
 UhwcU+NPCHAOQQwC7wULKssgC7wfI1Gcj0nq48MD38+qtAyx/OJofKZho
 fzXQEBJSJJOW26FHRJ69B4BNxjjfI2yPmEMe+CMBmAIPW0TSIQXWoaWwp
 qCQk+eLhgjoIWzHJL67DvkFXN6nnnfKvnHM2YX8/ZZv8fd4gUq8pY15HI
 MVE58vmd9KM1uXOQajSpA0dd/qRutaqT4/l4OHrMTwCKz/5B70q8mKQTy
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UWSJXu5p
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Introduce
 netif_device_attach/detach into reset flow
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
Cc: netdev@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 22.07.2024 16:35, Paul Menzel wrote:
>> Maybe "Add netif_device_attach/detach" would be the best for this, as 
>> the attaching and detaching doesn't happen only during reset.
> 
> I’d consider it too generic and would mention the place. But if it’s not 
> possible, then it’s not. Maybe:
> 
>> Attach/detach device before starting/stopping queues
>

Okay, will wait for some more feedback from other folks, maybe they'll 
have some input about the naming of the title as well.

>> Once the driver is fully initialized:
>> # echo 1 > /sys/class/net/ens1f0np0/device/reset
>> and then once that is in progress, from another terminal:
>> # ethtool -c ens1f0np0
>>
>> Would you like me to include those in the commit message as well?
> 
> I’d find it helpful, but I am no maintainer.

I will include it in the commit message.

> 
> Kind regards,
> 
> Paul

--Dawid
