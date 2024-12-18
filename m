Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5369F6E1F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 20:21:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72DB6614C5;
	Wed, 18 Dec 2024 19:21:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xI57m23McbTI; Wed, 18 Dec 2024 19:21:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CAF4614E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734549713;
	bh=tOtmzgBrXNpnRWLYy9N50Vkhc34EB9OOhkcohKuZ4oE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lIPWqQ+Y5k+/C49XYfNcVc3HLCUEvbwKI84NSI6rae4vB1u5Y99XXDJUlJOAg2R7e
	 LLt99YlQ69n/dwfQ05Id5QJjjuglbTplo5SITt/eAa9JUQXlvyr1+g6FsewtpdvlAl
	 jPdhhayZbhmd0eJaikgxuVMf+pIls+rsEBUdtNos1mIPeiLEMIkSYnX5iMk/rDCuHN
	 2cAE1v99KtjBH9AWtPn9/0VvSaLZv4sMIQNUcZn4G1Ygx5WurLd6XXwjJ3CEI1Caa7
	 fuGHEwiHWIzI0JAqLC3kFg2QHEkOjp/F+TmVmZGNc2cVyG0yrPsKrEVB94IKYKS86Z
	 uG4t4vh4j5Vtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CAF4614E4;
	Wed, 18 Dec 2024 19:21:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C16FCE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 19:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2839F41A3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 19:21:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ebok4_wMEJ5N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 19:21:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.135;
 helo=mx25lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CB68F404EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB68F404EF
Received: from mx25lb.world4you.com (mx25lb.world4you.com [81.19.149.135])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB68F404EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 19:21:49 +0000 (UTC)
Received: from 88-117-62-55.adsl.highway.telekom.at ([88.117.62.55]
 helo=[10.0.0.160]) by mx25lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1tNzcB-000000006xh-2Ssf; Wed, 18 Dec 2024 20:21:47 +0100
Message-ID: <54d9d905-1cee-4922-8631-c2b69779d18a@engleder-embedded.com>
Date: Wed, 18 Dec 2024 20:21:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Avigail Dahan <Avigailx.dahan@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, bhelgaas@google.com,
 pmenzel@molgen.mpg.de, Gerhard Engleder <eg@keba.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20241214191623.7256-1-gerhard@engleder-embedded.com>
 <cd7d3122-5231-bb7c-cb2c-7b8b94a46968@intel.com>
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <cd7d3122-5231-bb7c-cb2c-7b8b94a46968@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-AV-Do-Run: Yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tOtmzgBrXNpnRWLYy9N50Vkhc34EB9OOhkcohKuZ4oE=; b=n4Iy9MxcJ+btrLbm+6tvm07Lbd
 Hg7F+N4LF1KChrHtH+2+TKHensIyj7k0cokUuFEEKU8+ZTfc0/ZxEKDISxuLQOqJj0RuufM93AC3h
 Ix1QEgz3HU5Ikatoxe8Qz1PCEFXUjYMTiiMoWLuelfE4ohCkxc0EaiuHpb2dqqaEU4Io=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=n4Iy9Mxc
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] e1000e: Fix real-time
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

On 18.12.24 16:08, Avigail Dahan wrote:
> 
> 
> On 14/12/2024 21:16, Gerhard Engleder wrote:
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
>> Flush after every write:       429us
>> Flush after every 2nd write:   266us
>> Flush after every 4th write:   180us
>> Flush after every 8th write:   141us
>> Flush after every 16th write:  121us
>>
>> A flush after every 8th write delays the link up by 35us and the
>> negative impact to DMA transfers of other targets is still tolerable.
>>
>> Execute a flush after every 8th write. This prevents overloading the
>> interconnect with posted writes.
>>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> CC: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> Link: 
>> https://lore.kernel.org/netdev/f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch/T/
>> Signed-off-by: Gerhard Engleder <eg@keba.com>
>> ---
>> v3:
>> - mention problematic platform explicitly (Bjorn Helgaas)
>> - improve comment (Paul Menzel)
>>
>> v2:
>> - remove PREEMPT_RT dependency (Andrew Lunn, Przemek Kitszel)
>> ---
>>   drivers/net/ethernet/intel/e1000e/mac.c | 9 ++++++++-
>>   1 file changed, 8 insertions(+), 1 deletion(-)
>>
> Tested-by: Avigail Dahan <avigailx.dahan@intel.com>

Thank you for the test!

Gerhard
