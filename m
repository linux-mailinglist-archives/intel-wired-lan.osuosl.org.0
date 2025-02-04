Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DDCA27CAA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 21:18:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CC4860E16;
	Tue,  4 Feb 2025 20:18:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oltsuC-NvGts; Tue,  4 Feb 2025 20:18:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDE3160E1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738700315;
	bh=Dso1EsGyxnhW5FWhayp/zMY4aUV2+LaYO3ijOICijXI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4yYJW6IQNQjn7Xl+V9uSZ6EF7mKyvPdmYJbtK0ex5fX8s2AtdrNPTlYXAuvJ6+HMY
	 8SzwakbaPSP3tQXYK8fHyrFLC/3oLNm1e6fsKDzmv4a0/DXklgZqHP51SyoeNS42ZA
	 tOiDK5BWBjyaepYc4QP5RK2raO58fLrVugMUMSNpxPEQBvEBkPLdY3G2JKhJTJbJyx
	 QHDfAt7amIbHrbPyAriSnjVgdG7S4MaQwG7XyVy4wjDNnFkaPEvraWLCVQbreRNCfN
	 jT7JajN5mNYeCJEYPqHy6jhGw4SwksWPzZCHXGgpMs9XGv+pN02Ul/zKjU6WEyhExG
	 bagxnPIabnxSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDE3160E1A;
	Tue,  4 Feb 2025 20:18:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3382A1A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 20:18:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2EECA60E1A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 20:18:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PUfQdiFg1GJd for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 20:18:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.115;
 helo=mx05lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EFA5360DFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFA5360DFD
Received: from mx05lb.world4you.com (mx05lb.world4you.com [81.19.149.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFA5360DFD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 20:18:31 +0000 (UTC)
Received: from [88.117.60.28] (helo=[10.0.0.160])
 by mx05lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1tfPNK-000000005UN-3Y68; Tue, 04 Feb 2025 21:18:27 +0100
Message-ID: <bd604c16-0f5c-479c-aa13-932f1570e5b5@engleder-embedded.com>
Date: Tue, 4 Feb 2025 21:18:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: anthony.l.nguyen@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, bhelgaas@google.com,
 pmenzel@molgen.mpg.de, aleksander.lobakin@intel.com,
 Gerhard Engleder <eg@keba.com>, Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Avigail Dahan <avigailx.dahan@intel.com>, Simon Horman <horms@kernel.org>
References: <20241219192743.4499-1-gerhard@engleder-embedded.com>
 <20250106111752.GC4068@kernel.org>
Content-Language: en-US
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <20250106111752.GC4068@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AV-Do-Run: Yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dso1EsGyxnhW5FWhayp/zMY4aUV2+LaYO3ijOICijXI=; b=wH/g5+strem6Fjbax6JIGuA4jI
 zAz+g1rjHx2TLNWIJccj9GLm/xwcXe9FkCI5BIZFy3yXAWoaU1WMs4Zn7YjJLn7dKfMhLeavUdNJh
 /pjcw3iMEz4nrkA+a8xScAmUKmcEE2XhzLwCPfjRK+kna7A46CgYgiZ/bdZ8qkKkDPPs=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=wH/g5+st
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] e1000e: Fix real-time
 violations on link up
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

On 06.01.25 12:17, Simon Horman wrote:
> On Thu, Dec 19, 2024 at 08:27:43PM +0100, Gerhard Engleder wrote:
>> From: Gerhard Engleder <eg@keba.com>
>>
>> Link down and up triggers update of MTA table. This update executes many
>> PCIe writes and a final flush. Thus, PCIe will be blocked until all
>> writes are flushed. As a result, DMA transfers of other targets suffer
>> from delay in the range of 50us. This results in timing violations on
>> real-time systems during link down and up of e1000e in combination with
>> an Intel i3-2310E Sandy Bridge CPU.
>>
>> The i3-2310E is quite old. Launched 2011 by Intel but still in use as
>> robot controller. The exact root cause of the problem is unclear and
>> this situation won't change as Intel support for this CPU has ended
>> years ago. Our experience is that the number of posted PCIe writes needs
>> to be limited at least for real-time systems. With posted PCIe writes a
>> much higher throughput can be generated than with PCIe reads which
>> cannot be posted. Thus, the load on the interconnect is much higher.
>> Additionally, a PCIe read waits until all posted PCIe writes are done.
>> Therefore, the PCIe read can block the CPU for much more than 10us if a
>> lot of PCIe writes were posted before. Both issues are the reason why we
>> are limiting the number of posted PCIe writes in row in general for our
>> real-time systems, not only for this driver.
>>
>> A flush after a low enough number of posted PCIe writes eliminates the
>> delay but also increases the time needed for MTA table update. The
>> following measurements were done on i3-2310E with e1000e for 128 MTA
>> table entries:
>>
>> Single flush after all writes: 106us
>> Flush after every write:       429us
>> Flush after every 2nd write:   266us
>> Flush after every 4th write:   180us
>> Flush after every 8th write:   141us
>> Flush after every 16th write:  121us
>>
>> A flush after every 8th write delays the link up by 35us and the
>> negative impact to DMA transfers of other targets is still tolerable.
>>
>> Execute a flush after every 8th write. This prevents overloading the
>> interconnect with posted writes.
>>
>> Signed-off-by: Gerhard Engleder <eg@keba.com>
>> Link: https://lore.kernel.org/netdev/f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch/T/
>> CC: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
>> ---
>> v4:
>> - add PREEMPT_RT dependency again (Vitaly Lifshits)
>> - fix comment styple (Alexander Lobakin)
>> - add to comment each 8th and explain why (Alexander Lobakin)
>> - simplify check for every 8th write (Alexander Lobakin)
>>
>> v3:
>> - mention problematic platform explicitly (Bjorn Helgaas)
>> - improve comment (Paul Menzel)
>>
>> v2:
>> - remove PREEMPT_RT dependency (Andrew Lunn, Przemek Kitszel)
> 
> Reviewed-by: Simon Horman <horms@kernel.org>

Is there anything left from my side to get this change over iwl-next
into net-next?

Gerhard
