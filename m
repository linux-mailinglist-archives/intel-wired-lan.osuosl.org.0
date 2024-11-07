Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C45559BFE1F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 07:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BCCB60AA6;
	Thu,  7 Nov 2024 06:07:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Opodh8M8_cGb; Thu,  7 Nov 2024 06:07:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8355060A9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730959641;
	bh=+58MCPVLMc2XXw/f3+Ja18WlJKZ7ljWZEi6YBuoEEno=;
	h=Date:To:From:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XMW0n4bCbISbMWEg9YkvSdL3bbe7vlorxvXiymKJqKEN9joVnMZrzVNPanvh5xy8O
	 C2KbdYcar7v97ixOsJZyGD66YGTLXS/uMYQ/sPM2ax9ZYfatuE8j6BLhjjHQ9xUkM3
	 MARoWl4N0u3dzd3PYgn5CXDSKeQ7j6vm5eql5K0DvKbImhqW49vCng8XEs3FduOyi4
	 dPPMsAJndKfQTskcbrhRkV8pNVwjPErwITBhwAYmc18YprePaaXdQWh+7rE44LwKZw
	 2nSEZAp8gHeTOHTpOeUoB+KnLdE2Zi++ylQv5HswDm2LpLi6OyO2PIZhhUvA8iOjnR
	 q5X01MPsL9nKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8355060A9E;
	Thu,  7 Nov 2024 06:07:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1522420EF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 06:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0200640BDD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 06:07:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e7yGnDTqxPpC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2024 06:07:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 091EF401AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 091EF401AF
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 091EF401AF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 06:07:16 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aedb4.dynamic.kabel-deutschland.de
 [95.90.237.180])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1B0DE61E5FE05;
 Thu, 07 Nov 2024 07:07:06 +0100 (CET)
Message-ID: <80949168-67a8-4d28-a6c7-3cae9f92daad@molgen.mpg.de>
Date: Thu, 7 Nov 2024 07:07:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: intel-wired-lan@lists.osuosl.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: [Intel-wired-lan] Expected effects of layoffs on driver Intel Wired
 Ethernet driver development?
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

Dear Intel Wired Ethernet Linux Kernel driver folks,


It looks like some developers are not working for Intel anymore – like 
Sasha Neftin. I assume this is a result of layoffs from the news [1]. Is 
this true, or was the team *not* affected by the layoffs, and developers 
just moved on by themselves?

If it was due to layoffs, could you please share, how the team was 
affected and how Intel is going to make sure, that driver developments 
continues as before, so customers know what to expect?


Kind regards,

Paul


[1]: 
https://www.theverge.com/2024/8/1/24210656/intel-is-laying-off-over-10000-employees-and-will-cut-10-billion-in-costs
      "Intel is laying off over 15,000 employees and will stop 
‘non-essential work’",  Aug 1, 2024, 10:14 PM GMT+2
