Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4BDB5184B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 15:51:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B6CA409A9;
	Wed, 10 Sep 2025 13:51:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hoOnxw05oKNr; Wed, 10 Sep 2025 13:51:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95CFA4086C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757512291;
	bh=xLJ1r4kV2vMMr1+ESlMM2obSRiujKVKs8cw24LVOZn4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lZIU/1eTxkW5pdaVMSPyvMUBKiLEmb+mmAe6ZkCKrh4q5s3ztlJln/vtAI3WDP/qF
	 rVN2axbwBOg99ivr7owoJ96+N7g16etAgrxnwf2+S/Z2T7nmW1TW3tcEESw6jEIq//
	 i/eVVtnwG9U4VSnlYD75VbtjNXZTRKCnwpQX7DvW1BZEztUfYJW31T2HLcFxSLWbZJ
	 L9uRCaQEHru0Paq+lsRGFfxz9CG5AWbcU1ftZYx0vKI8K5TMJMAFocL+gJD3MSN5lP
	 zM6iRZMWm1s76JUHAkNYTf5yR/QKOmyhR0WXWF59ylArj7TIUmIojMq0SF06pcqjOc
	 CVS3N6ROFqvzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95CFA4086C;
	Wed, 10 Sep 2025 13:51:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 80E4010E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 13:51:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 673FD81E2B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 13:51:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qj_zaw2IhNrL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 13:51:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7A32C81FFC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A32C81FFC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A32C81FFC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 13:51:25 +0000 (UTC)
Received: from [192.168.2.205] (p5dc55aad.dip0.t-ipconnect.de [93.197.90.173])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 957A761E64852;
 Wed, 10 Sep 2025 15:50:34 +0200 (CEST)
Message-ID: <5d0627e4-4289-486b-80bb-a6cdc085e149@molgen.mpg.de>
Date: Wed, 10 Sep 2025 15:50:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, kohei.enju@gmail.com
References: <20250910134745.17124-1-enjuk@amazon.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250910134745.17124-1-enjuk@amazon.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] igc: don't fail
 igc_probe() on LED setup error
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

Dear Kohei,


Thank you for your patch.

Am 10.09.25 um 15:47 schrieb Kohei Enju:
> When igc_led_setup() fails, igc_probe() fails and triggers kernel panic
> in free_netdev() since unregister_netdev() is not called. [1]
> This behavior can be tested using fault-injection framework, especially
> the failslab feature. [2]
> 
> Since LED support is not mandatory, treat LED setup failures as
> non-fatal and continue probe with a warning message, consequently
> avoiding the kernel panic.
> 
> [1]
>   kernel BUG at net/core/dev.c:12047!
>   Oops: invalid opcode: 0000 [#1] SMP NOPTI
>   CPU: 0 UID: 0 PID: 937 Comm: repro-igc-led-e Not tainted 6.17.0-rc4-enjuk-tnguy-00865-gc4940196ab02 #64 PREEMPT(voluntary)
>   Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
>   RIP: 0010:free_netdev+0x278/0x2b0
>   [...]
>   Call Trace:
>    <TASK>
>    igc_probe+0x370/0x910
>    local_pci_probe+0x3a/0x80
>    pci_device_probe+0xd1/0x200
>   [...]
> 
> [2]
>   #!/bin/bash -ex
> 
>   FAILSLAB_PATH=/sys/kernel/debug/failslab/
>   DEVICE=0000:00:05.0
>   START_ADDR=$(grep " igc_led_setup" /proc/kallsyms \
>           | awk '{printf("0x%s", $1)}')
>   END_ADDR=$(printf "0x%x" $((START_ADDR + 0x100)))
> 
>   echo $START_ADDR > $FAILSLAB_PATH/require-start
>   echo $END_ADDR > $FAILSLAB_PATH/require-end
>   echo 1 > $FAILSLAB_PATH/times
>   echo 100 > $FAILSLAB_PATH/probability
>   echo N > $FAILSLAB_PATH/ignore-gfp-wait
> 
>   echo $DEVICE > /sys/bus/pci/drivers/igc/bind

Sweet!

> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
> Changes:
>    v1->v2:
>      - don't fail probe when led setup fails
>      - rephrase subject and commit message
>    v1: https://lore.kernel.org/intel-wired-lan/20250906055239.29396-1-enjuk@amazon.com/
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  1 +
>   drivers/net/ethernet/intel/igc/igc_main.c | 12 +++++++++---
>   2 files changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 266bfcf2a28f..a427f05814c1 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -345,6 +345,7 @@ struct igc_adapter {
>   	/* LEDs */
>   	struct mutex led_mutex;
>   	struct igc_led_classdev *leds;
> +	bool leds_available;
>   };
>   
>   void igc_up(struct igc_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index e79b14d50b24..728d7ca5338b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7335,8 +7335,14 @@ static int igc_probe(struct pci_dev *pdev,
>   
>   	if (IS_ENABLED(CONFIG_IGC_LEDS)) {
>   		err = igc_led_setup(adapter);
> -		if (err)
> -			goto err_register;
> +		if (err) {
> +			netdev_warn_once(netdev,
> +					 "LED init failed (%d); continuing without LED support\n",
> +					 err);
> +			adapter->leds_available = false;
> +		} else {
> +			adapter->leds_available = true;
> +		}
>   	}
>   
>   	return 0;
> @@ -7392,7 +7398,7 @@ static void igc_remove(struct pci_dev *pdev)
>   	cancel_work_sync(&adapter->watchdog_task);
>   	hrtimer_cancel(&adapter->hrtimer);
>   
> -	if (IS_ENABLED(CONFIG_IGC_LEDS))
> +	if (IS_ENABLED(CONFIG_IGC_LEDS) && adapter->leds_available)
>   		igc_led_free(adapter);
>   
>   	/* Release control of h/w to f/w.  If f/w is AMT enabled, this

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
