Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0A4B5126D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 11:25:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7619160D5E;
	Wed, 10 Sep 2025 09:25:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FGeooDKdB0UV; Wed, 10 Sep 2025 09:25:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E035F61035
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757496352;
	bh=dsgebjoGUOrCSMEDwcajyXGY4GIsEupdqnjHKO74RKk=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sNT6rPtZRkCB/na74Of14vBQj3LwGSjDLenK5vRMp+RZfT5yFRE86BTtWAYv8X29n
	 GVogyuUjJNCpi7wAyy1SnR5jyydL2uz86oU2/os7gYey6y9QGeBQGescAKTdej1XFP
	 H361T9vYEGGx2Ql3xRRInnL0gLra60a2ET2w06tFxjuNil34+rcFYimGjTgvRg2Yu9
	 7YhwmiHLG78eReYr86XBVaD3j1uGk0ZvFoHl1w2YbYoDQSlpR0KGiiwgxHVrrq8n5T
	 /mUVD6RInCRgoguQpAWggVTQki5A702w04osk+fs5blxGqnz/NfR6SlKweJ+GjP8U8
	 C06UEX1VrwFSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E035F61035;
	Wed, 10 Sep 2025 09:25:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2595710E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 09:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 176BA416C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 09:25:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bgxosknDWYZY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 09:25:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.155.198.111;
 helo=pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=341b5916e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 054224141F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 054224141F
Received: from pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.155.198.111])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 054224141F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 09:25:49 +0000 (UTC)
X-CSE-ConnectionGUID: Kw7qBZ6ZTAamd1guporJ+A==
X-CSE-MsgGUID: kmInTI60TJ2s0uunu3OY5w==
X-IronPort-AV: E=Sophos;i="6.18,253,1751241600"; 
   d="scan'208";a="2633235"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2025 09:25:47 +0000
Received: from EX19MTAUWB002.ant.amazon.com [10.0.21.151:43888]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.9.164:2525]
 with esmtp (Farcaster)
 id ea498177-17d9-4ab8-bc5d-400dc2e76433; Wed, 10 Sep 2025 09:25:47 +0000 (UTC)
X-Farcaster-Flow-ID: ea498177-17d9-4ab8-bc5d-400dc2e76433
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Wed, 10 Sep 2025 09:25:47 +0000
Received: from b0be8375a521.amazon.com (10.37.244.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Wed, 10 Sep 2025 09:25:44 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <aleksandr.loktionov@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <kurt@linutronix.de>, <netdev@vger.kernel.org>,
 <pabeni@redhat.com>, <przemyslaw.kitszel@intel.com>,
 <vitaly.lifshits@intel.com>
Date: Wed, 10 Sep 2025 18:25:08 +0900
Message-ID: <20250910092537.30823-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <IA3PR11MB8986C779F51731B60D07BEB7E50EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986C779F51731B60D07BEB7E50EA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D041UWA002.ant.amazon.com (10.13.139.121) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1757496350; x=1789032350;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dsgebjoGUOrCSMEDwcajyXGY4GIsEupdqnjHKO74RKk=;
 b=TgBR8QzIxNaloZfXP8m33Hrf3nWalFcE6DWHP0Sx0As1YpuHvq2/jT8C
 rgAdrUTKUXePgcK5nHYlUVWBOMistnDxJYs3ZwFI/Of1FiKMhaUgpsWeT
 oLOW+XA4t4qOmy0spShLhxZxSqpF8DRZHG9rcJ37CZ4EqjWcsT9ypsgN8
 HXkNm2FLtIj3YbKyzgZeR5tv3k4PQpbdsGwI6FzcW8lizhTFMhN7OYDYh
 i9qqCOu3DCQwHGSxEOOS2zDSgndcAX0/n4W4dmSa/e9rkGoiOV28hdm8T
 EaX1MVmyPX+HassF66yxX+T705K7mDGdvxbHty9T2byUa0W/jesJDVhkh
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=TgBR8QzI
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

On Wed, 10 Sep 2025 09:02:51 +0000, Loktionov, Aleksandr wrote:

[...]
>> >>
>> >> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
>> >
>> >Thank you for the patch and for identifying this issue!
>> >
>> >I was wondering whether we could avoid failing the probe in cases
>> where
>> >igc_led_setup fails. It seems to me that a failure in the LED class
>> >functionality shouldn't prevent the device's core functionality from
>> >working properly.
>> 
>> Indeed, that also makes sense.
>> 
>> The behavior that igc_probe() succeeds even if igc_led_setup() fails
>> also seems good to me, as long as notifying users that igc's led
>> functionality is not available.
>> 
>> >
>> > From what I understand, errors in this function are not due to
>> hardware
>> >malfunctions. Therefore, I suggest we remove the error propagation.
>> >
>> >Alternatively, if feasible, we could consider reordering the function
>> >calls so that the LED class setup occurs before the netdev
>> registration.
>> >
>> 
>> I don't disagree with you, but I would like to hear Kurt and
>> Aleksandr's
>> opinion. Do you have any preference or suggestions?
>> 
>> I'll revise and work on v2 if needed.
>> Thanks!
>
>Just in case /*I'm Alex*/ here are my 2cents:
>  I’d treat LED setup as best‑effort and not fail probe if it errors.
>Warn once, mark LEDs unavailable, and continue. That keeps datapath
>up and avoids tricky probe unwind. If we still want to fail on LED errors,
>then either (a) fix the unwind (unregister_netdev et al.) or (b) move LED setup before register_netdev().

Got it, thank you for your opinion :)

>
>  If LED labels depend on the netdev name, it’s fine to run LED setup after register_netdev().
>Since errors are non‑fatal, there’s no unwind complexity.
>
>Keep igc_led_setup() returning an error for internal visibility, but don’t propagate it as probe failure:
>err = igc_led_setup(adapter);
>if (err) {
>    netdev_warn_once(netdev,
>                     "LED init failed (%d); continuing without LED support\n",
>                     err);
>    adapter->leds_available = false;
>} else {
>    adapter->leds_available = true;
>}
>
>In remove()/error paths, guard teardown:
>if (adapter->leds_available)
>    igc_led_teardown(adapter);

I would like to adopt this approach, where we don't propagate led's
failure and manage its status using flag like leds_available.

I'll send v2 shortly.

>
>Keep current order but fully unwind on error:
>err = igc_led_setup(adapter);
>if (err) {
>    unregister_netdev(netdev);
>    /* del NAPI, free queues, etc. in reverse order */
>    err = -E...;
>    goto err_free;
>}
>
>With the best regards
>Alex
