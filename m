Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC4BB51000
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 09:52:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 727FB60766;
	Wed, 10 Sep 2025 07:52:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YimvqRGTAJem; Wed, 10 Sep 2025 07:52:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9BBC6079D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757490766;
	bh=l7AN4NiHt1iHGYTPx66OzebOiDnEDFMIJX2hPqOwVDM=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nl9e1B//tl8EoHkjMYLBOlRBJtnS1xYofoLl+iYfk876B+YBQI2reg2Duik3/1MB3
	 PZGWe1ittzb/kkIrVChX0ZnqOV8MaHwdhK+gskoCngSL2FUuRkNIgAbNEaVoGq6ulP
	 t3lI+AOVvVesZTxkMYwbH/l9L2OhjsjwDbKeD9HKucX7D+2afcXN5ja4pJ1HiXTwfv
	 IUTutSsSSUPJREzwNVCZWb6D5HwnrCzzBSar0Xtl2Lar1q1j/e1F2wxkXrSTKO8+So
	 AIaCR+gigSGO2FZBOR7x1nP3Qpf1jMuvMAYK6VYEG+9yC3dy3VtkRrXXy96Iikmff5
	 f2b4HAdJUcxfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9BBC6079D;
	Wed, 10 Sep 2025 07:52:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 665E4234
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 07:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5670D83CE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 07:52:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V147IUp_vJcs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 07:52:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.34.181.151;
 helo=pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=341b5916e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A0CA283022
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0CA283022
Received: from pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [52.34.181.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0CA283022
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 07:52:44 +0000 (UTC)
X-CSE-ConnectionGUID: RJzxr5h8QpyzBfm2z9+sUw==
X-CSE-MsgGUID: xB2k0nbKTEqNgD6oPH0r5w==
X-IronPort-AV: E=Sophos;i="6.18,253,1751241600"; 
   d="scan'208";a="2747700"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2025 07:52:41 +0000
Received: from EX19MTAUWC002.ant.amazon.com [10.0.21.151:54227]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.52.180:2525]
 with esmtp (Farcaster)
 id df5c196c-d8fb-41fe-8806-ce668abd1f59; Wed, 10 Sep 2025 07:52:41 +0000 (UTC)
X-Farcaster-Flow-ID: df5c196c-d8fb-41fe-8806-ce668abd1f59
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Wed, 10 Sep 2025 07:52:41 +0000
Received: from b0be8375a521.amazon.com (10.37.244.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Wed, 10 Sep 2025 07:52:39 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <vitaly.lifshits@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <kurt@linutronix.de>, <netdev@vger.kernel.org>,
 <pabeni@redhat.com>, <przemyslaw.kitszel@intel.com>,
 <aleksandr.loktionov@intel.com>
Date: Wed, 10 Sep 2025 16:52:23 +0900
Message-ID: <20250910075231.99838-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <15453ddf-0854-4be6-9eed-017ef79d3c77@intel.com>
References: <15453ddf-0854-4be6-9eed-017ef79d3c77@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D031UWA003.ant.amazon.com (10.13.139.47) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1757490764; x=1789026764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l7AN4NiHt1iHGYTPx66OzebOiDnEDFMIJX2hPqOwVDM=;
 b=VDUFdc0BF0A+SvYz+h+VCFjSh9LqsNjHssCFuZlhaH4vGN/m+g6XlVAp
 bOynMzJYS+cDgoxCJWO1tHylg8LpregFDDvm/lLGhLELoC++fgv72o01C
 DEXwhjINj+O78Uk+D8dE24PFLYQU62lVjjaSB1wk4186O7Tfxk3l5NtFn
 jMks77F6RMnGZvPnNtxg3089rJEUqfwWoar7gNHGu39qN5+W81szZ0y1o
 I5WtwzA7QDnypq3OOaRJv+QFrC4oZnspAS+dhXi9v0pBPtdpiXWq53zHc
 GBN5/lLW9YgppbXn//croL7ZwpdgdLFRkYMuydf2GZzK1JEtD97g+4VhW
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=VDUFdc0B
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: unregister netdev
 when igc_led_setup() fails in igc_probe()
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

+ Aleksandr

On Wed, 10 Sep 2025 10:28:17 +0300, Lifshits, Vitaly wrote:

>On 9/8/2025 9:26 AM, Kurt Kanzenbach wrote:
>> On Sat Sep 06 2025, Kohei Enju wrote:
>>> Currently igc_probe() doesn't unregister netdev when igc_led_setup()
>>> fails, causing BUG_ON() in free_netdev() and then kernel panics. [1]
>>>
>>> This behavior can be tested using fault-injection framework. I used the
>>> failslab feature to test the issue. [2]
>>>
>>> Call unregister_netdev() when igc_led_setup() fails to avoid the kernel
>>> panic.
>>>
>>> [1]
>>>   kernel BUG at net/core/dev.c:12047!
>>>   Oops: invalid opcode: 0000 [#1] SMP NOPTI
>>>   CPU: 0 UID: 0 PID: 937 Comm: repro-igc-led-e Not tainted 6.17.0-rc4-enjuk-tnguy-00865-gc4940196ab02 #64 PREEMPT(voluntary)
>>>   Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
>>>   RIP: 0010:free_netdev+0x278/0x2b0
>>>   [...]
>>>   Call Trace:
>>>    <TASK>
>>>    igc_probe+0x370/0x910
>>>    local_pci_probe+0x3a/0x80
>>>    pci_device_probe+0xd1/0x200
>>>   [...]
>>>
>>> [2]
>>>   #!/bin/bash -ex
>>>
>>>   FAILSLAB_PATH=/sys/kernel/debug/failslab/
>>>   DEVICE=0000:00:05.0
>>>   START_ADDR=$(grep " igc_led_setup" /proc/kallsyms \
>>>           | awk '{printf("0x%s", $1)}')
>>>   END_ADDR=$(printf "0x%x" $((START_ADDR + 0x100)))
>>>
>>>   echo $START_ADDR > $FAILSLAB_PATH/require-start
>>>   echo $END_ADDR > $FAILSLAB_PATH/require-end
>>>   echo 1 > $FAILSLAB_PATH/times
>>>   echo 100 > $FAILSLAB_PATH/probability
>>>   echo N > $FAILSLAB_PATH/ignore-gfp-wait
>>>
>>>   echo $DEVICE > /sys/bus/pci/drivers/igc/bind
>>>
>>> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
>>> Signed-off-by: Kohei Enju <enjuk@amazon.com>
>> 
>> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
>
>Thank you for the patch and for identifying this issue!
>
>I was wondering whether we could avoid failing the probe in cases where 
>igc_led_setup fails. It seems to me that a failure in the LED class 
>functionality shouldn't prevent the device's core functionality from 
>working properly.

Indeed, that also makes sense.

The behavior that igc_probe() succeeds even if igc_led_setup() fails
also seems good to me, as long as notifying users that igc's led
functionality is not available.

>
> From what I understand, errors in this function are not due to hardware 
>malfunctions. Therefore, I suggest we remove the error propagation.
>
>Alternatively, if feasible, we could consider reordering the function 
>calls so that the LED class setup occurs before the netdev registration.
>

I don't disagree with you, but I would like to hear Kurt and Aleksandr's
opinion. Do you have any preference or suggestions?

I'll revise and work on v2 if needed.
Thanks!
