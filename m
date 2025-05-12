Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E527FAB3371
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 11:27:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CE3E60D9D;
	Mon, 12 May 2025 09:27:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1uz3-jlelboa; Mon, 12 May 2025 09:27:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0999C60D7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747042051;
	bh=gR6RSCFdomwmTTjaiIz2dN19Lr7QR2BK4HvMI6nqX0M=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OJSm07xs+Fb9yHxYniNFdqnxGwPqSeKZB5LOnbuDQSvSActr8csQVgt0K/LvIoxkD
	 imyp/aoP5s5Nc/w+bvlOgBo1MqnoVXEsQmVae1v1Zadr0fxy4lJnwcDYidIYJP3dKD
	 5353F7Z/uBSVYrMxortoNZuKVxb9JC8LuiS6FY3Y9s/Xb+DbuZzxHDPhJFhKk7k1a/
	 orC8stQj2SjbmG9NrdY067VsR4KiWBay/HLVN3I0v3lOKsDLooqn8qk6QLHZqvTPFS
	 3w3pdrZKNENzNQC4acgZrdCoxLCoa/FIyx/7Maf7OrtFuayYUBRm42pSO5bBArTj9q
	 PPCKtviB8rFUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0999C60D7F;
	Mon, 12 May 2025 09:27:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E79017D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 09:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 53D5140445
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 09:27:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3mJOzM4MYeFO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 09:27:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 22E5C40409
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22E5C40409
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 22E5C40409
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 09:27:26 +0000 (UTC)
Received: from [192.168.2.107] (p57bd9455.dip0.t-ipconnect.de [87.189.148.85])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BA307601EBF0A;
 Mon, 12 May 2025 11:27:10 +0200 (CEST)
Message-ID: <355fc4f1-0116-4028-a455-ec76772f19b3@molgen.mpg.de>
Date: Mon, 12 May 2025 11:27:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250409113622.161379-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250409113622.161379-4-martyna.szapar-mudlaw@linux.intel.com>
 <55ae83fc-8333-4a04-9320-053af1fd6f46@molgen.mpg.de>
 <4012b88a-091d-4f81-92ab-ad32727914ff@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <4012b88a-091d-4f81-92ab-ad32727914ff@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: add
 link_down_events statistic
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

Dear Martyna,


Thank you for your reply.

Am 14.04.25 um 15:12 schrieb Szapar-Mudlaw, Martyna:

> On 4/9/2025 2:08 PM, Paul Menzel wrote:

>> Am 09.04.25 um 13:36 schrieb Martyna Szapar-Mudlaw:
>>> Introduce a new ethtool statistic to ice driver, `link_down_events`,
>>> to track the number of times the link transitions from up to down.
>>> This counter can help diagnose issues related to link stability,
>>> such as port flapping or unexpected link drops.
>>>
>>> The counter increments when a link-down event occurs and is exposed
>>> via ethtool stats as `link_down_events.nic`.
>>
>> It’d be great if you pasted an example output.
> 
> In v2 (which I just submitted) the generic ethtool statistic is used for 
> this, instead of driver specific, so I guess no need to paste the 
> example output now.

I think it’s always good also as a reference how to test the patch. I 
just saw your v3. Should you resent, it’d be great if you added the 
example output.

[…]


Kind regards,

Paul
