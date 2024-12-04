Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 680029E4837
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 23:58:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA584845FF;
	Wed,  4 Dec 2024 22:58:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K5K7nhEgcrTJ; Wed,  4 Dec 2024 22:58:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEF5C845FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733353130;
	bh=GirAyz2Vc6AyIWO7DCGREizNgX08C+P2Yh6QCGAaJaw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oWbMK1tZC64bjdjgQP07QWoPMd2RlyizXUYs8yuY+M+blgmmHTZxgrMp2IINOqMTJ
	 tE9RbjK3uuQX2nbmID8mEy073hefgteXq0PA17TCDrTJ0KI9tOA748rqwR1j21hKyy
	 3VKYJFmfyB7u7ZwwiMEnBml2BUmHyZ+f4v7UKPSx3DFWidrgEPuQHYyjdv3Lp3Pw1O
	 oHrBiiW7afOVyMct3MxWgxCKkW8IIan6HZbvniwAR6h5I/QuxqKCEJYhRjy1YgkmVZ
	 9Ng6ewU2n+KwIuicr7XF5Wg7qc0NWbCd9yDIhioOOMWEZLzxFUqt/Jt0Dc0oxCJXz7
	 /tltA7PvCQ5Qw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEF5C845FD;
	Wed,  4 Dec 2024 22:58:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 593B61DD1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 22:58:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 46FFF60895
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 22:58:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z_AW8llCZA2e for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 22:58:46 +0000 (UTC)
X-Greylist: delayed 9406 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 04 Dec 2024 22:58:46 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 35C2260A50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35C2260A50
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.126;
 helo=mx16lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
Received: from mx16lb.world4you.com (mx16lb.world4you.com [81.19.149.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 35C2260A50
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 22:58:46 +0000 (UTC)
Received: from [88.117.62.55] (helo=[10.0.0.160])
 by mx16lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1tIvsb-000000008U2-1ODm; Wed, 04 Dec 2024 21:21:50 +0100
Message-ID: <06edcab8-280d-4397-8df2-58a35eb094ec@engleder-embedded.com>
Date: Wed, 4 Dec 2024 21:21:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch,
 netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Gerhard Engleder <eg@keba.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20241203202814.56140-1-gerhard@engleder-embedded.com>
 <ef87bd20-6fda-4839-8cff-4ab10bf500a7@intel.com>
Content-Language: en-US
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <ef87bd20-6fda-4839-8cff-4ab10bf500a7@intel.com>
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
 bh=GirAyz2Vc6AyIWO7DCGREizNgX08C+P2Yh6QCGAaJaw=; b=fuT6POE0pV8AZkqh/tVR5YynqL
 ybsdQqZJkfj7yzQWM6Hb+vxiIHHM9chdE+auV+4txYxCGITqr4hBNupqwXlvbbKx+auJjGlMucEzg
 XZ3MRbMQAicd1V+mSnOBnkaVL7Mk54ygvfhPW5oJV2vNtBlwzLVE8z6kP4aaYq+/mDUk=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=fuT6POE0
Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: Fix real-time
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

On 04.12.24 11:10, Przemek Kitszel wrote:
> On 12/3/24 21:28, Gerhard Engleder wrote:
>> From: Gerhard Engleder <eg@keba.com>
>>
>> From: Gerhard Engleder <eg@keba.com>
> 
> duplicated From: line

Nervous fingers, sorry, will be fixed.

>>
>> Link down and up triggers update of MTA table. This update executes many
>> PCIe writes and a final flush. Thus, PCIe will be blocked until all 
>> writes
>> are flushed. As a result, DMA transfers of other targets suffer from 
>> delay
>> in the range of 50us. This results in timing violations on real-time
>> systems during link down and up of e1000e.
>>
>> A flush after a low enough number of PCIe writes eliminates the delay
>> but also increases the time needed for MTA table update. The following
>> measurements were done on i3-2310E with e1000e for 128 MTA table entries:
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
>> interconnect with posted writes. As this also increases the time spent 
>> for
>> MTA table update considerable this change is limited to PREEMPT_RT.
> 
> hmm, why to limit this to PREEMPT_RT, the change sounds resonable also
> for the standard kernel, at last for me
> (perhaps with every 16th write instead)

As Andrew argumented similar, I will remove the PREEMPT_RT dependency
with the next version. This is not the hot path, so the additional delay
of <<1ms for boot and interface up is negligible.

> with that said, I'm fine with this patch as is too
> 
>>
>> Signed-off-by: Gerhard Engleder <eg@keba.com>
> 
> would be good to add link to your RFC
> https://lore.kernel.org/netdev/f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch/T/
> 
> and also CC Vitaly who participated there (done),
> same for IWL mailing list (also CCd), and use iwl-next tag for your
> future contributions to intel ethernet

Will be done.

Thank you for the review!

Gerhard
