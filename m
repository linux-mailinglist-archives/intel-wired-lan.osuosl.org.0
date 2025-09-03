Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB1FB42C14
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 23:44:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 423C5823E2;
	Wed,  3 Sep 2025 21:44:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r994LlSV8EWa; Wed,  3 Sep 2025 21:44:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 862A380AD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756935862;
	bh=6IuCNS7pDho9ZKiwaVee/+v5YbDlDITCmQruYWgSMFA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HqrJV9vOPKiGGxnEtw4sOkSXsUePnDpgdKYBwt6EqszjcUw8Wc8hHf8uf34Hg8S/x
	 9/jZn3xgfz66YzriosATZQuZzOw6ZnMTIhv8MRIdw+wmz7baLideZ6KWvO3BMCA7Dy
	 Rci7lMz5m7yFxoi04/su1qhAg6zpqPHJ4e8dmZUC0q57Oon5chJZ7wHXPmFkaKyZP/
	 Eq1eyuSUNXafgHCo4NJzUqtDzHimuC8ndA+S43yC2/U0ccPclLIkB+zzL+Ua/WeFMC
	 3E9Alb9cQAKVOJhQUDBzSeU69NDmpyJBjMa2DJbDWj0GwgcyHgaix+5/YyHMVSVnhr
	 NtbGIXfYB3FPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 862A380AD6;
	Wed,  3 Sep 2025 21:44:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 897E0106
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 21:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A85240D37
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 21:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UQkP20kHSTbT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 21:44:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8A09A40AC0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A09A40AC0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A09A40AC0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 21:44:19 +0000 (UTC)
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-530-VpQ_nrV9OJau-sz8nqW0bQ-1; Wed, 03 Sep 2025 17:44:17 -0400
X-MC-Unique: VpQ_nrV9OJau-sz8nqW0bQ-1
X-Mimecast-MFC-AGG-ID: VpQ_nrV9OJau-sz8nqW0bQ_1756935856
Received: by mail-yw1-f197.google.com with SMTP id
 00721157ae682-72398d58466so6099687b3.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Sep 2025 14:44:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756935856; x=1757540656;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6IuCNS7pDho9ZKiwaVee/+v5YbDlDITCmQruYWgSMFA=;
 b=ZM0WUsbgDAmGQfgap/1z8JhVlEh6mlzHFT9gO3GOXWkXYy+XAsz44iOs8pkHJWLJIo
 v0ciLCTGVAbBLnkQE4ndM1jKsQHLnSrYugO3wVtkOTaxtIJFknMLri84k2zJNN085obF
 TJL9OM3SbM2R7PYLEt1eO/NBKS3RYiHrzdYx4BByn/qFLhWT61ikgVRaNLpVyOlk/g0z
 KO/kpcz5T0Imz7J5HB5FWi9uW6aaI5t45Whle1o3fQDuo2rFLDJP3HfTwDypRoEXrtOV
 cmHrq1L4VT4uXa1pdgBwe30lvf3nAgnOKlkZsh9fwluYUkRjvMEDFOfX10APWePT6Lgr
 O3JA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXFyJ5KN6xC3f+IWz+zY2JTNu+8btBdVh4x8rSqsfUSYTShiduT73Ev79Pm8EC+kTkzlrSjIXgXgCq6pYW1NqE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywj/6P2r8YK3pDGCsCU5ca79EzfXISN9ynW/4nKABPk6MtddTXu
 fm6/WVhbU49cJpja3LIk+nhUnzEpNduXlXwjxpFi8o9zTxYE1axQzK8Zx58ELVemH91fCCejDap
 vegUeAc4RRlvddp2zPn9HtE/6K+MA/KmqDQfBHXX/wzFgwfz+yoPrCy61/l6PgGt9tGqhrJc=
X-Gm-Gg: ASbGncuPzj4UtawxJvgNh1Poi9HCCJ+mQWqFJ+pXvUcDYikRFZYJgLWSd7TSglFxvuJ
 xiH2k6CU2r1BswLMZl9tsHi+UqRnY/1tFbCTNU/cECiB6ha1UiBYIsikpmPBxPhaAV0w4o+i+ab
 aBr1jTPvitljwBSyHHNUE+rzyC8WElcicPQE7hYvEnsTqSuGtd+jQwLFZjaG93V2nzKbocmFpS/
 xyBNzMxy7a/zjWAyZIL5rRn5ibm1EooMI1tizz+3xOP4RDgx6ssFfNUVmsWE7fa+Ba/C0vcL8zd
 +N6XuDwi/2Q3mgJbIO6C++53hDJU5S8MbleWXbkPfQY=
X-Received: by 2002:a05:690c:8e10:b0:723:b3a6:781c with SMTP id
 00721157ae682-723b3a67b21mr48037527b3.43.1756935856644; 
 Wed, 03 Sep 2025 14:44:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZwb3LytZni2u9cZ2InCnvHlul8mehbMHJNDAE0FmjECYBPUHP1jyQCKVnIWbCznr4CyjB/w==
X-Received: by 2002:a05:690c:8e10:b0:723:b3a6:781c with SMTP id
 00721157ae682-723b3a67b21mr48037247b3.43.1756935856029; 
 Wed, 03 Sep 2025 14:44:16 -0700 (PDT)
Received: from [192.168.68.125] ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-723a8511f0asm16193297b3.34.2025.09.03.14.44.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Sep 2025 14:44:15 -0700 (PDT)
Message-ID: <7a6d4052-537d-4de6-b1af-a26e362704ab@redhat.com>
Date: Thu, 4 Sep 2025 00:44:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us,
 netdev@vger.kernel.org, horms@kernel.org, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
References: <20250903190229.49193-1-mheib@redhat.com>
 <6033dd40-8adc-48f4-9acb-be50d992add7@intel.com>
From: mohammad heib <mheib@redhat.com>
In-Reply-To: <6033dd40-8adc-48f4-9acb-be50d992add7@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: AVLP-VP809UTmZKXX5khWYPxaCiOFBQho-y2z3eVJxY_1756935856
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756935858;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6IuCNS7pDho9ZKiwaVee/+v5YbDlDITCmQruYWgSMFA=;
 b=imhn+athoYEnOH/HD+UYWzYUCJ1g4K31tXxXLmT09L9NxJZhSjVlNLCiqpN+e0CGjrr5fd
 3D918nnrHdOdtqYrmPGYxMM8671c3f0hY1CMB/bpxT/8iYlaigM9RCKqOL00TPHCIx1jV6
 eTU2KnduPBnuAfHcC4YwsG4HhMS6XoM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=imhn+ath
Subject: Re: [Intel-wired-lan] [PATCH net-next, v2,
 1/2] devlink: Add new "max_mac_per_vf" generic device param
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

Hi Jacob,

Thanks for the review.

It’s indeed an easy change. I’m wondering why untrusted VFs were 
originally limited to 16+2 MACs, and if changing this (overwriting that 
behavior) could be risky.

Anyway, I applied your suggestions in v3.

On 9/3/25 11:11 PM, Jacob Keller wrote:
> 
> 
> On 9/3/2025 12:02 PM, mheib@redhat.com wrote:
>> From: Mohammad Heib <mheib@redhat.com>
>>
>> Add a new device generic parameter to controls the maximum
>> number of MAC filters allowed per VF.
>>
>> While this parameter is named `max_mac_per_vf`, the exact enforcement
>> policy may vary between drivers. For example, i40e applies this limit
>> only to trusted VFs, whereas other drivers may choose to apply it
>> uniformly across all VFs. The goal is to provide a consistent devlink
>> interface, while allowing flexibility for driver-specific behavior.
>>
> 
> Would it make more sense to apply the limit to all VFs if set, and apply
> the default variable behavior for when its unset? This would avoid the
> need to have this much flexibility and latitude for each driver.
> 
> It seems like that wouldn't be too difficult.

