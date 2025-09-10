Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0864B5123B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 11:15:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD13360BD3;
	Wed, 10 Sep 2025 09:15:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XNnDYA_Qn5uL; Wed, 10 Sep 2025 09:15:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1FDE60FAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757495749;
	bh=cxwgbzB+J6Da8bnPc7iRAfrv9EegcpSX9fIqrctUExo=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pTmfOrRSsJuR1LpSlXLhoq9LNn5Iddo95mSco+PIHQPjYU1ihYp3NH31UPEAY9grX
	 xYuTE4ONJbZVUfmkQs68eSV4omZlXD7jIVflR9AotXp8f0Ie1/MsFGjMj2cRC8UvwR
	 fkOW3D5jWNQpGWLSLSRWoy/LQYsQcZMqQ3MQMc1zLUcAy3KP9gYra0cC0Cl2I7PVBR
	 J9Eg30tfZO3myNyGI0v8lgtZ3TYnEnDO7mZ8CDxvH4Nc75G2MSX6Y6pIex/1NtIXG2
	 lwOYL0lic5n9d88quz/u0wEVUX5lJ3nbV04Tk3zt2eHCPCJ1cg53CNGqRPNnDf+pKH
	 orkif98Jas41w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1FDE60FAA;
	Wed, 10 Sep 2025 09:15:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 26135E1F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 09:15:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17AA440097
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 09:15:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uK5I5_tud0f2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 09:15:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.26.1.71;
 helo=pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=341b5916e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 14B7C4051B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14B7C4051B
Received: from pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com [52.26.1.71])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 14B7C4051B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 09:15:46 +0000 (UTC)
X-CSE-ConnectionGUID: pzWfVioZRL+hiEPa1AikyQ==
X-CSE-MsgGUID: Ccsl+rumQKe/qGtw97kiNA==
X-IronPort-AV: E=Sophos;i="6.18,253,1751241600"; 
   d="scan'208";a="2752247"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2025 09:15:42 +0000
Received: from EX19MTAUWB001.ant.amazon.com [10.0.21.151:54368]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.47.90:2525]
 with esmtp (Farcaster)
 id 3b4f621e-84c4-486a-a0fa-91d03b04897d; Wed, 10 Sep 2025 09:15:42 +0000 (UTC)
X-Farcaster-Flow-ID: 3b4f621e-84c4-486a-a0fa-91d03b04897d
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Wed, 10 Sep 2025 09:15:42 +0000
Received: from b0be8375a521.amazon.com (10.37.244.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Wed, 10 Sep 2025 09:15:39 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <kurt@linutronix.de>
CC: <aleksandr.loktionov@intel.com>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <kohei.enju@gmail.com>, <kuba@kernel.org>, <netdev@vger.kernel.org>,
 <pabeni@redhat.com>, <przemyslaw.kitszel@intel.com>,
 <vitaly.lifshits@intel.com>
Date: Wed, 10 Sep 2025 18:15:21 +0900
Message-ID: <20250910091532.27951-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <87cy7yk7ma.fsf@jax.kurt.home>
References: <87cy7yk7ma.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D041UWB004.ant.amazon.com (10.13.139.143) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1757495747; x=1789031747;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cxwgbzB+J6Da8bnPc7iRAfrv9EegcpSX9fIqrctUExo=;
 b=RjBr0J5z5Ez7TEfCUwDaByQz1LjCnDLVFS+8NGEz5vhAaAvKMrsiUi+C
 FKz3w1MzGNO9my+rbh7UxSLOLBc1sP7N8M3UeTzE6rsU50XMDIvliRY5m
 PSYYEKW4GGv0sMr/VMZB8wjo366J0HlKgbI/b5nccGsnRq0HsCsYz+ZXb
 cJ6mv66H1L7azxqJA6kF04EwE8pYPkIwuqdCK3PgqYqhagewpDGqmk09a
 c2kuFAdNE2n9mWZ2jVdtPEWJ33o9A8NQ1S9ZcidAkHTybRiqE9ZCB0fp3
 wkuO8s7T6NRbZ+3LWBqwkj8EENUL1ZEZrwfGm5ka4mYE8sLRXBDo9yzoH
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=RjBr0J5z
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

On Wed, 10 Sep 2025 10:57:17 +0200, Kurt Kanzenbach wrote:

>On Wed Sep 10 2025, Kohei Enju wrote:
>> + Aleksandr
>>
>> On Wed, 10 Sep 2025 10:28:17 +0300, Lifshits, Vitaly wrote:
>>
>>>On 9/8/2025 9:26 AM, Kurt Kanzenbach wrote:
>>>> On Sat Sep 06 2025, Kohei Enju wrote:
>>>>> Currently igc_probe() doesn't unregister netdev when igc_led_setup()
>>>>> fails, causing BUG_ON() in free_netdev() and then kernel panics. [1]
>>>>>
>>>>> This behavior can be tested using fault-injection framework. I used the
>>>>> failslab feature to test the issue. [2]
>>>>>
>>>>> Call unregister_netdev() when igc_led_setup() fails to avoid the kernel
>>>>> panic.
>>>>>
>>>>> [1]
>>>>>   kernel BUG at net/core/dev.c:12047!
>>>>>   Oops: invalid opcode: 0000 [#1] SMP NOPTI
>>>>>   CPU: 0 UID: 0 PID: 937 Comm: repro-igc-led-e Not tainted 6.17.0-rc4-enjuk-tnguy-00865-gc4940196ab02 #64 PREEMPT(voluntary)
>>>>>   Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
>>>>>   RIP: 0010:free_netdev+0x278/0x2b0
>>>>>   [...]
>>>>>   Call Trace:
>>>>>    <TASK>
>>>>>    igc_probe+0x370/0x910
>>>>>    local_pci_probe+0x3a/0x80
>>>>>    pci_device_probe+0xd1/0x200
>>>>>   [...]
>>>>>
>>>>> [2]
>>>>>   #!/bin/bash -ex
>>>>>
>>>>>   FAILSLAB_PATH=/sys/kernel/debug/failslab/
>>>>>   DEVICE=0000:00:05.0
>>>>>   START_ADDR=$(grep " igc_led_setup" /proc/kallsyms \
>>>>>           | awk '{printf("0x%s", $1)}')
>>>>>   END_ADDR=$(printf "0x%x" $((START_ADDR + 0x100)))
>>>>>
>>>>>   echo $START_ADDR > $FAILSLAB_PATH/require-start
>>>>>   echo $END_ADDR > $FAILSLAB_PATH/require-end
>>>>>   echo 1 > $FAILSLAB_PATH/times
>>>>>   echo 100 > $FAILSLAB_PATH/probability
>>>>>   echo N > $FAILSLAB_PATH/ignore-gfp-wait
>>>>>
>>>>>   echo $DEVICE > /sys/bus/pci/drivers/igc/bind
>>>>>
>>>>> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
>>>>> Signed-off-by: Kohei Enju <enjuk@amazon.com>
>>>> 
>>>> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
>>>
>>>Thank you for the patch and for identifying this issue!
>>>
>>>I was wondering whether we could avoid failing the probe in cases where 
>>>igc_led_setup fails. It seems to me that a failure in the LED class 
>>>functionality shouldn't prevent the device's core functionality from 
>>>working properly.
>>
>> Indeed, that also makes sense.
>>
>> The behavior that igc_probe() succeeds even if igc_led_setup() fails
>> also seems good to me, as long as notifying users that igc's led
>> functionality is not available.
>
>SGTM. The LED code is nice to have, but not mandatory at all. The device
>has sane LED defaults.

Thank you for clarification.
I'll do like that in v2.

>
>>
>>>
>>> From what I understand, errors in this function are not due to hardware 
>>>malfunctions. Therefore, I suggest we remove the error propagation.
>>>
>>>Alternatively, if feasible, we could consider reordering the function 
>>>calls so that the LED class setup occurs before the netdev registration.
>>>
>>
>> I don't disagree with you, but I would like to hear Kurt and Aleksandr's
>> opinion. Do you have any preference or suggestions?
>
>See above.

Got it :)

>
>Thanks,
>Kurt
