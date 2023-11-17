Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A37037EF237
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Nov 2023 13:05:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DAB0420A3;
	Fri, 17 Nov 2023 12:05:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DAB0420A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700222730;
	bh=YlhEZY5V8w/leH6Th2j+EmVWT3wuad6YVGBa35oniXo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vDKIejL213jQffsHrvevXqm64DpmdoqVEtWzHLkUs9b+eAiD58ZL9IriqC0qM1kkW
	 DI+8ftfBMwW5SwDZs2woWQQlchCnUlyuL9mX8JsZVFFNZwgyh3Q1EqTpobvYgq2Tgk
	 tbU6BhyRM2vAg19jeJIQ8oJDS0YLm4/UqO8XOf1JtTJjcM8iwupyAbisDnEMbiqNKj
	 X1ftvj42EcSkc4HHVNMu6ukmCSXFG0YmAabAkVRIf/llDbWnyng2GNtBfmHCWTGaod
	 y+KOmFtZFm/fJ2VMBstEtcpNwcJDioRiF2KUiN5oEukFQnJLbH2eVPdbfRkY9ng+LU
	 sPU22/ELR1ngg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ml0I7d2ZEsv3; Fri, 17 Nov 2023 12:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77D7942C94;
	Fri, 17 Nov 2023 12:05:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77D7942C94
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B32E1BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 12:05:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 229196FB2E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 12:05:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 229196FB2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dWyj5dYUTVkJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Nov 2023 12:05:22 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A4C686FB29
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 12:05:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4C686FB29
Received: by mail-lf1-x136.google.com with SMTP id
 2adb3069b0e04-507973f3b65so2710450e87.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 04:05:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700222719; x=1700827519;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
 :references:cc:to:content-language:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iTLJfhF/Kvz1TJHe3rbPkbM2Y309st43b6vz+/FStcc=;
 b=kqarHYb4J+Dm0xj69rlbRKTR/3KstObKe291N+dYwwjLiPD+BDed93ZVgxehKJ48Kp
 Qydgp+hf9k5RcgoAL9fEk2/CddOZZMFf9mGetdBMwKoAu+VzwMGxrFsc/eE0iMC+nTDR
 YKCJ4TCkc/XsZ/CvdQczGAqOUHfxc45u4sSfm/RnsFpQa2uq4wU/bLBs9xo7flS+WUpC
 x3vJPqE8dDbiiLFRnweZYyQ4+CpdyUXGcIPx5vcak6NYim9Q3XU8s5KSAgPdwGafU5/t
 1DlnnrPynB5q2weZQZ755419LHDfr/5Bfm984AUoV7lknt0o3DN7Kf8PF1FFYJG1YNnM
 MX2w==
X-Gm-Message-State: AOJu0Yx9O0gX6PASc/5ut10anW1+9QcvSsOMWjrewFwCmFzJpR34v+Va
 7ciAZepvXlThEBEvjP5a6i7KeQ==
X-Google-Smtp-Source: AGHT+IH84wJxlxB8n1Ax4FKov7QyS4oJcFwNEd5FcT25I6IvVvvJ+s5C4sOFgyyoT/4ifB9jk3X9zA==
X-Received: by 2002:a2e:b815:0:b0:2c5:be8:68ae with SMTP id
 u21-20020a2eb815000000b002c50be868aemr7559668ljo.0.1700222718831; 
 Fri, 17 Nov 2023 04:05:18 -0800 (PST)
Received: from [10.100.10.83] ([57.133.65.178])
 by smtp.gmail.com with ESMTPSA id
 14-20020a05600c22ce00b004053a6b8c41sm2441432wmg.12.2023.11.17.04.05.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Nov 2023 04:05:18 -0800 (PST)
Message-ID: <e1b2f012-7e0a-4167-bfa9-026d49f1b45b@inovex.de>
Date: Fri, 17 Nov 2023 13:05:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <f38a6ca4-af05-48b1-a3e6-17ef2054e525@inovex.de>
 <7bbe621e-52cc-8111-bec7-70632900c3b0@intel.com>
From: Christian Rohmann <christian.rohmann@inovex.de>
Autocrypt: addr=christian.rohmann@inovex.de; keydata=
 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
 6/S+Umx1vXWUG6ol8Oalq8coKRpry3O+ytxj/sc=
Organization: inovex GmbH
In-Reply-To: <7bbe621e-52cc-8111-bec7-70632900c3b0@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inovex.de; s=google; t=1700222719; x=1700827519; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
 :references:cc:to:content-language:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=iTLJfhF/Kvz1TJHe3rbPkbM2Y309st43b6vz+/FStcc=;
 b=BRbd4x5Zp/SgUq3jw9gadGi+rm+NKGv0azP3TFOn8pfX/KChNmKsk7sP6ZxdlS3/TP
 VtSKilWiCf1GX/C7DKEDwaVvWvbVCcNnEt8EaQIahPfsV9U8wUwI2rjQjzvE+WcYISeN
 E3iY+AQoTLORILDiI9j240PHJfj01dVkGvB21UF1AXwNj3YkUk+PDlwbwqZu6TFkxhHJ
 8jVF8n+pAMDL8BI5ipqbjAANIIC2Tt2BaTu8T/EAb0Ui50iLoKk5ifIHrqfqriEnZJ5x
 oWdvwD/unklJRs/GbN9FRxyORtwppnonKla1Qbn3UWq3pokPmZehOKlOiP9vRsWTovqT
 k+Zg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=inovex.de header.i=@inovex.de
 header.a=rsa-sha256 header.s=google header.b=BRbd4x5Z
Subject: Re: [Intel-wired-lan] Counter spikes in /proc/net/dev for
 E810-CQDA2 interfaces (ice driver) on kernel >=6.2
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
Cc: leszek.pepiak@intel.com, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hey Przemek,

thanks for picking up on this so quickly!


On 17.11.23 11:13, Przemek Kitszel wrote:
>> If you require any more information to narrow down the issue, please 
>> don't hesitate to contact me.
>
> Was there anything logged in dmesg or other system logs at that time?

Nothing I would correlate with this issue:

--- cut ---
[...]
[Thu Nov 16 09:46:05 2023] brqe861cc6a-7a: port 4(tap12f22cf7-9f) 
entered blocking state
[Thu Nov 16 09:46:05 2023] brqe861cc6a-7a: port 4(tap12f22cf7-9f) 
entered disabled state
[Thu Nov 16 09:46:05 2023] device tap12f22cf7-9f entered promiscuous mode
[Thu Nov 16 09:46:05 2023] brqe861cc6a-7a: port 4(tap12f22cf7-9f) 
entered blocking state
[Thu Nov 16 09:46:05 2023] brqe861cc6a-7a: port 4(tap12f22cf7-9f) 
entered forwarding state
[Thu Nov 16 09:46:41 2023] vxlan-710: e2:d6:9b:e7:3e:1f migrated from 
10.101.11.101 to 10.101.11.99
[Thu Nov 16 09:46:49 2023] vxlan-112: fa:16:3e:0a:e3:78 migrated from 
10.101.11.101 to 10.101.11.97
[Thu Nov 16 09:46:57 2023] vxlan-449: fa:16:3e:3b:a2:96 migrated from 
10.101.11.101 to 10.101.11.98
[Thu Nov 16 09:47:13 2023] vxlan-710: b2:61:c3:32:2b:a3 migrated from 
10.101.11.101 to 10.101.11.98
[Thu Nov 16 09:47:14 2023] vxlan-167: ce:48:98:bb:37:b5 migrated from 
10.101.11.101 to 10.101.11.98
[Thu Nov 16 09:47:16 2023] vxlan-449: fa:16:3e:0c:e2:dd migrated from 
10.101.11.101 to 10.101.11.99
[Thu Nov 16 09:47:21 2023] vxlan-449: fa:16:3e:5e:f8:65 migrated from 
10.101.11.101 to 10.101.11.99
[Thu Nov 16 10:09:10 2023] clocksource: timekeeping watchdog on CPU44: 
hpet wd-wd read-back delay of 245282ns
[Thu Nov 16 10:09:10 2023] clocksource: wd-tsc-wd read-back delay of 
237530ns, clock-skew test skipped!
[Thu Nov 16 11:09:00 2023] brq993a79c9-f7: port 2(tap6b35cfee-6c) 
entered disabled state
[Thu Nov 16 11:09:00 2023] device tap6b35cfee-6c left promiscuous mode
[Thu Nov 16 11:09:00 2023] brq993a79c9-f7: port 2(tap6b35cfee-6c) 
entered disabled state
[Thu Nov 16 11:09:00 2023] brq8daed714-05: port 10(tapcd40cc09-db) 
entered disabled state
[Thu Nov 16 11:09:00 2023] device tapcd40cc09-db left promiscuous mode
[Thu Nov 16 11:09:00 2023] brq8daed714-05: port 10(tapcd40cc09-db) 
entered disabled state
[Thu Nov 16 11:09:03 2023] device vxlan-393 left promiscuous mode
[Thu Nov 16 11:09:03 2023] brqbe0ca29c-93: port 1(vxlan-393) entered 
disabled state
[Thu Nov 16 11:09:03 2023] device tap39935f01-25 left promiscuous mode
[Thu Nov 16 11:09:03 2023] brqbe0ca29c-93: port 2(tap39935f01-25) 
entered disabled state
[Thu Nov 16 11:09:05 2023] device vxlan-715 left promiscuous mode
[Thu Nov 16 11:09:05 2023] brq993a79c9-f7: port 1(vxlan-715) entered 
disabled state
[Thu Nov 16 11:13:03 2023] clocksource: timekeeping watchdog on CPU71: 
hpet wd-wd read-back delay of 245352ns
[Thu Nov 16 11:13:03 2023] clocksource: wd-tsc-wd read-back delay of 
244653ns, clock-skew test skipped!
[Thu Nov 16 12:11:25 2023] brqf6366546-d3: port 1(tapa284b204-c0) 
entered blocking state
[Thu Nov 16 12:11:25 2023] brqf6366546-d3: port 1(tapa284b204-c0) 
entered disabled state
[Thu Nov 16 12:11:25 2023] device tapa284b204-c0 entered promiscuous mode
[Thu Nov 16 12:11:25 2023] brqf6366546-d3: port 1(tapa284b204-c0) 
entered blocking state
[Thu Nov 16 12:11:25 2023] brqf6366546-d3: port 1(tapa284b204-c0) 
entered forwarding state
[Thu Nov 16 12:22:21 2023] clocksource: timekeeping watchdog on CPU107: 
hpet wd-wd read-back delay of 242419ns
[Thu Nov 16 12:22:21 2023] clocksource: wd-tsc-wd read-back delay of 
234387ns, clock-skew test skipped!
[Thu Nov 16 12:50:37 2023] clocksource: timekeeping watchdog on CPU83: 
hpet wd-wd read-back delay of 245073ns
[Thu Nov 16 12:50:37 2023] clocksource: wd-tsc-wd read-back delay of 
243257ns, clock-skew test skipped!
[Thu Nov 16 13:32:22 2023] clocksource: timekeeping watchdog on CPU13: 
hpet wd-wd read-back delay of 248006ns
[Thu Nov 16 13:32:22 2023] clocksource: wd-tsc-wd read-back delay of 
245352ns, clock-skew test skipped!
[Thu Nov 16 13:52:43 2023] clocksource: timekeeping watchdog on CPU63: 
hpet wd-wd read-back delay of 244863ns
[Thu Nov 16 13:52:43 2023] clocksource: wd-tsc-wd read-back delay of 
245561ns, clock-skew test skipped!
[Thu Nov 16 14:28:24 2023] clocksource: timekeeping watchdog on CPU33: 
hpet wd-wd read-back delay of 245282ns
[Thu Nov 16 14:28:24 2023] clocksource: wd-tsc-wd read-back delay of 
245352ns, clock-skew test skipped!
[Thu Nov 16 15:22:12 2023] clocksource: timekeeping watchdog on CPU1: 
hpet wd-wd read-back delay of 244863ns
[Thu Nov 16 15:22:12 2023] clocksource: wd-tsc-wd read-back delay of 
245631ns, clock-skew test skipped!
[Thu Nov 16 15:29:20 2023] clocksource: timekeeping watchdog on CPU1: 
hpet wd-wd read-back delay of 245282ns
[Thu Nov 16 15:29:20 2023] clocksource: wd-tsc-wd read-back delay of 
245282ns, clock-skew test skipped!
[Thu Nov 16 15:43:34 2023] clocksource: timekeeping watchdog on CPU85: 
hpet wd-wd read-back delay of 245142ns
[Thu Nov 16 15:43:34 2023] clocksource: wd-tsc-wd read-back delay of 
242907ns, clock-skew test skipped!
[Thu Nov 16 16:13:06 2023] clocksource: timekeeping watchdog on CPU85: 
hpet wd-wd read-back delay of 245212ns
[Thu Nov 16 16:13:06 2023] clocksource: wd-tsc-wd read-back delay of 
245561ns, clock-skew test skipped!
[Thu Nov 16 16:27:22 2023] clocksource: timekeeping watchdog on CPU45: 
hpet wd-wd read-back delay of 246260ns
[Thu Nov 16 16:27:22 2023] clocksource: wd-tsc-wd read-back delay of 
237600ns, clock-skew test skipped!
[Thu Nov 16 16:41:32 2023] clocksource: timekeeping watchdog on CPU122: 
hpet wd-wd read-back delay of 245631ns
[Thu Nov 16 16:41:32 2023] clocksource: wd-tsc-wd read-back delay of 
245282ns, clock-skew test skipped!
[Thu Nov 16 16:52:43 2023] clocksource: timekeeping watchdog on CPU95: 
hpet wd-wd read-back delay of 245282ns
[Thu Nov 16 16:52:43 2023] clocksource: wd-tsc-wd read-back delay of 
245282ns, clock-skew test skipped!
[Thu Nov 16 17:15:04 2023] clocksource: timekeeping watchdog on CPU2: 
hpet wd-wd read-back delay of 246190ns
[Thu Nov 16 17:15:04 2023] clocksource: wd-tsc-wd read-back delay of 
234666ns, clock-skew test skipped!
[Thu Nov 16 17:57:42 2023] clocksource: timekeeping watchdog on CPU38: 
hpet wd-wd read-back delay of 244863ns
[Thu Nov 16 17:57:42 2023] clocksource: wd-tsc-wd read-back delay of 
245561ns, clock-skew test skipped!
[Thu Nov 16 18:44:33 2023] clocksource: timekeeping watchdog on CPU67: 
hpet wd-wd read-back delay of 245073ns
[Thu Nov 16 18:44:33 2023] clocksource: wd-tsc-wd read-back delay of 
235155ns, clock-skew test skipped!
[Thu Nov 16 19:02:50 2023] clocksource: timekeeping watchdog on CPU125: 
hpet wd-wd read-back delay of 245352ns
[Thu Nov 16 19:02:50 2023] clocksource: wd-tsc-wd read-back delay of 
244793ns, clock-skew test skipped!
[Thu Nov 16 19:19:00 2023] clocksource: timekeeping watchdog on CPU57: 
hpet wd-wd read-back delay of 245212ns
[Thu Nov 16 19:19:00 2023] clocksource: wd-tsc-wd read-back delay of 
245142ns, clock-skew test skipped!
[Thu Nov 16 19:27:09 2023] clocksource: timekeeping watchdog on CPU51: 
hpet wd-wd read-back delay of 245561ns
[Thu Nov 16 19:27:09 2023] clocksource: wd-tsc-wd read-back delay of 
245352ns, clock-skew test skipped!
[Thu Nov 16 19:50:34 2023] clocksource: timekeeping watchdog on CPU85: 
hpet wd-wd read-back delay of 245282ns
[Thu Nov 16 19:50:34 2023] clocksource: wd-tsc-wd read-back delay of 
245142ns, clock-skew test skipped!
[Thu Nov 16 20:11:49 2023] clocksource: timekeeping watchdog on CPU115: 
hpet wd-wd read-back delay of 245701ns
[Thu Nov 16 20:11:49 2023] clocksource: wd-tsc-wd read-back delay of 
245142ns, clock-skew test skipped!
[Thu Nov 16 20:31:06 2023] clocksource: timekeeping watchdog on CPU38: 
hpet wd-wd read-back delay of 241860ns
[Thu Nov 16 20:31:06 2023] clocksource: wd-tsc-wd read-back delay of 
248984ns, clock-skew test skipped!
[Thu Nov 16 20:37:08 2023] clocksource: timekeeping watchdog on CPU34: 
hpet wd-wd read-back delay of 245561ns
[Thu Nov 16 20:37:08 2023] clocksource: wd-tsc-wd read-back delay of 
244933ns, clock-skew test skipped!
[Thu Nov 16 20:45:18 2023] clocksource: timekeeping watchdog on CPU30: 
hpet wd-wd read-back delay of 245282ns
[Thu Nov 16 20:45:18 2023] clocksource: wd-tsc-wd read-back delay of 
245073ns, clock-skew test skipped!
[Thu Nov 16 21:02:35 2023] clocksource: timekeeping watchdog on CPU96: 
hpet wd-wd read-back delay of 245352ns
[Thu Nov 16 21:02:35 2023] clocksource: wd-tsc-wd read-back delay of 
245212ns, clock-skew test skipped!
[Thu Nov 16 21:02:51 2023] vxlan-117: fa:16:3e:9f:4b:81 migrated from 
10.101.11.17 to 10.101.11.101
[Thu Nov 16 21:10:32 2023] vxlan-117: fa:16:3e:a2:d8:b1 migrated from 
10.101.11.16 to 10.101.11.101
[Thu Nov 16 21:11:46 2023] clocksource: timekeeping watchdog on CPU85: 
hpet wd-wd read-back delay of 242279ns
[Thu Nov 16 21:11:46 2023] clocksource: wd-tsc-wd read-back delay of 
248425ns, clock-skew test skipped!
[Thu Nov 16 21:14:41 2023] vxlan-117: fa:16:3e:03:ec:41 migrated from 
10.101.11.17 to 10.101.11.98
[Thu Nov 16 21:19:30 2023] vxlan-117: fa:16:3e:3e:6e:72 migrated from 
10.101.11.17 to 10.101.11.97
[Thu Nov 16 21:23:02 2023] vxlan-117: fa:16:3e:a3:7d:e1 migrated from 
10.101.11.17 to 10.101.11.97
[Thu Nov 16 21:37:10 2023] clocksource: timekeeping watchdog on CPU103: 
hpet wd-wd read-back delay of 245422ns
[Thu Nov 16 21:37:10 2023] clocksource: wd-tsc-wd read-back delay of 
245212ns, clock-skew test skipped!
[Thu Nov 16 22:09:45 2023] clocksource: timekeeping watchdog on CPU85: 
hpet wd-wd read-back delay of 245422ns
[Thu Nov 16 22:09:45 2023] clocksource: wd-tsc-wd read-back delay of 
244863ns, clock-skew test skipped!
[...]
--- cut ---


BTW, this machine runs OpenStack Nova + Neutron, that's the bridge, tap 
and vxlan messages you see there.
We observe the issue on multiple machines. But some of them either don't 
have the issue or very very sendomly, others have this every hour or so.
All of them are the exact same make and model including all of the 
peripherals and firmware versions.



> Thank you for the report, I will take a look.
>
> We have already received similar report from Nebojsa Stevanovic, CCed.
>
> Sorry that the issue is not resolved yet. I will review what we have
> changed in the drivers between 6.1 and 6.2, where bug was introduced. 


Thank again for looking into this.



Regards


Christian

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
