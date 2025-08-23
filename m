Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC84B3280B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Aug 2025 11:55:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68AD8612DF;
	Sat, 23 Aug 2025 09:55:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MXwy9sil7pvZ; Sat, 23 Aug 2025 09:55:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F210612E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755942938;
	bh=qJRTU7xQcrHqjtGf0jDczE0LpVrmI9Kmr/4ZyPcx9Pw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V6HGsv0B9TMX8UT6r3QvS45zZNRVAhxIQfSbtBSmG1pfQecSPuinGXNk58P/38GLh
	 tjtZUqDyAUPGYXO/nYWXCmC37+v0GEGJxNlMjuPRAF56wzn8prl+C60MywPsh+v6KU
	 GRcjKLa8SYZixssD7hvzZqLzwE7B2yoWu4DGJGIwLNH62l6+QM8ebPgOsqUnVEDTKB
	 8Y+0j0LrjKdCrTIsOOT7g4MbB88ZA616KVm+jkAiw/PU/Z2Ve7MG86dQDU8IB59ykK
	 BKIZIItge+CTM3MYelYJMZIg0NOZinyO91pyIWgJO6fzTzxk25+QKtCHer1KxxY+5M
	 VsLD+MGzS1vsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F210612E2;
	Sat, 23 Aug 2025 09:55:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B46F619C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 09:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A48E0401F1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 09:55:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kWVBTeNfmZ2a for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Aug 2025 09:55:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AB3B240151
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB3B240151
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB3B240151
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 09:55:35 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-448-55Y4Y3A7NhOHi6VH7lHalA-1; Sat, 23 Aug 2025 05:55:30 -0400
X-MC-Unique: 55Y4Y3A7NhOHi6VH7lHalA-1
X-Mimecast-MFC-AGG-ID: 55Y4Y3A7NhOHi6VH7lHalA_1755942929
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3c79f0a57ddso148493f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 02:55:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755942929; x=1756547729;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qJRTU7xQcrHqjtGf0jDczE0LpVrmI9Kmr/4ZyPcx9Pw=;
 b=sCdzlOT/L8V+Xx+f1wwJE89ZMLFbWAHfSjBTRtZhs5182s1kTH1rlynaOEDPJM9D7n
 jy++2OVql3ceu9mnPzbLVJJ9QYEXpy7nt1G7nK40qoO8IoWavKOlLIJvhs7Yb6/sQ9FE
 0Y5R3SVAhhPWOTidG3z9m8kA/BVeMvbXpSxGRZQ/oGW1dqFKU136aYL5aY+v5PqdjN+g
 7hyboOIbCrVRfeyEIOWlLVrE4MtDRNDjuqP0lq6UbyXoD2pTpZoGgVxZN2r6saZxXaE6
 zYzzHGq3NLVmovYnSFDXl7FLmSsokBPbNBe9Nti61017ql7J4/d1F/VeN0ekOSWCT1k3
 trKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWrtR5IXYCd2X7aoPTjLgJL1qoPxNZb7JTqecFxWqTJIfggWAjEAvzk3lAral3VkOJ5QwmWmTCUzpuJzWG8SA8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzCiAuHSySHraXoB+jaFdVIbiFSO1RbsyhKagLnkAVy6CuTuLlS
 FnwxmDunFxwOHppD8Y6nVC7KncLl5l79dYHRRyEA73QA7bubyzVnLli4vRwL4qQr69bmhrHuvuO
 4fS/evNzD7t8CqWsgpz3/uYEzmcI/xBsiCKb8QGrza6dRuUYzBctZgOFYXhsZ4Kf+VM/dsNs=
X-Gm-Gg: ASbGncvcIOYMVtVHROgo+RTvxaeNUfFUZu0t9Mu1tbKgKjcsxwn40NKtwY5q1KaoBpG
 VqPGMuQ4YEhj1aOWtQWJQ4dZnTxFsKtnP70jYCIZzVKO/ODO3mxo1ta1tIl97HjQfEqSxtYY/BH
 fnT/+efnmpCey2QMlDWQwv7GkgkvEF+FTFaZTjdZFkOcQCrgYy0eR/Tl2aUsUp2RP6IU838ipN+
 DoErSRo+F8igsZL6xQm0WE4R0IrvJ2mM39SJUiu7EAI/tbPyHtnIFJJ++a/D6Iwdk6xBpywhnu/
 2+3dYC3pasU+YCmMoP4CDwmtXEN0UAJT52uhyJs1oSc=
X-Received: by 2002:a5d:64ed:0:b0:3b9:16ac:4f8b with SMTP id
 ffacd0b85a97d-3c5dcc0da2bmr3904284f8f.50.1755942929159; 
 Sat, 23 Aug 2025 02:55:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDd2aQ7j8dTvaofCMIeJpKfGZazONCY9/CgH5Oqqvd+1zoSPgxPl531KoOoLOxfCHQtV47xg==
X-Received: by 2002:a5d:64ed:0:b0:3b9:16ac:4f8b with SMTP id
 ffacd0b85a97d-3c5dcc0da2bmr3904273f8f.50.1755942928668; 
 Sat, 23 Aug 2025 02:55:28 -0700 (PDT)
Received: from [192.168.68.125] ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3c711f89a11sm2928208f8f.64.2025.08.23.02.55.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Aug 2025 02:55:28 -0700 (PDT)
Message-ID: <f2a0eb8b-2238-4bd2-bc81-eb0284fea6c8@redhat.com>
Date: Sat, 23 Aug 2025 12:55:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Simon Horman <horms@kernel.org>
References: <20250821233930.127420-1-mheib@redhat.com>
 <41eae08f-5f77-4099-bcd4-ccc7bbcf6426@intel.com>
From: mohammad heib <mheib@redhat.com>
In-Reply-To: <41eae08f-5f77-4099-bcd4-ccc7bbcf6426@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: T32DZedRUTXEW_hSER9UlI-qAgxUCvT_G6JeGmznIKM_1755942929
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1755942934;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qJRTU7xQcrHqjtGf0jDczE0LpVrmI9Kmr/4ZyPcx9Pw=;
 b=EWSnQ2YFdACHsrxAG9+FyzCsr8U5gZYTBbYi9Csmc7fmsfx/Q4cBaIBxK3gJM+ckdIzfRo
 zXbVMfz5zQ6pxeGyCZFFiDDx6tEZSa9wi5cYEWxG80lJy2SZZ9LlziA/TQhg4YKalE8soU
 WGPcW5+4vUU2LTfO/aFbXf8M8eQc+nk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=EWSnQ2YF
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: add devlink param to
 control VF MAC address limit
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

Hi,

Thank you for the review. All comments have been addressed in v2.
On 8/22/25 12:09 PM, Przemek Kitszel wrote:
> On 8/22/25 01:39, mheib@redhat.com wrote:
>> From: Mohammad Heib <mheib@redhat.com>
>>
>> This patch introduces a new devlink runtime parameter
>> to control whether the VF MAC filter limit feature is
>> enabled or disabled.
>>
>> When the parameter is set to non-zero, the driver enforces the per-VF 
>> MAC
>> filter limit calculated from the number of allocated VFs and ports.
>> When the parameter is unset (zero), no limit is applied and behavior
>> remains as before commit cfb1d572c986
>>     ("i40e: Add ensurance of MacVlan resources for every trusted VF").
>>
>> This implementation allows us to toggle the feature through devlink
>> while preserving old behavior. In the future, the parameter can be
>> extended to represent a configurable "max MACs per VF" value, but for
>> now it acts as a simple on/off switch.
>>
>> Example command to enable per-vf mac limit:
>>   - devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
>>     value 1 \
>>     cmode runtime
>>
>> Fixes: cfb1d572c986 ("i40e: Add ensurance of MacVlan resources for 
>> every trusted VF")
>> Signed-off-by: Mohammad Heib <mheib@redhat.com>
>
> thank you for the patch, I have a few questions/objections
>
> 1. it git-conflicts with [1], please post your next revision based on
> Tony's (fixes) tree dev-queue branch [2]
>
> 2a. it is good practice to link to the previous discussions, and CC
> individuals involved (Jake, Simon)
>
> 2b. for changes that utilize given subsystem (devlink), you need to CC
> respective maintainers (Jiri)
>
> 3. it would really be better to treat not-zero values as strict limit
>
> 4. this idea is not limited to i40e, the parameter should be global
> (for all drivers to implement), as it seems generic enough
>
> 5. when someone will make a per-given-VF param, this one will not be
> deprecated but will still work as a cap (max) value. (Leaving it at
> zero will be ofc perfectly fine).
Sure, I would be happy to add this to other drivers. Currently, I’m not 
aware of any other driver that has a per-VF MAC limit implemented.
If you know of any, please point me to them.
Otherwise, I will go through the drivers I’m working with and check 
whether they have such a limit or not.
>
> [1] 
> https://lore.kernel.org/intel-wired-lan/20250813104552.61027-9-przemyslaw.kitszel@intel.com/T/#mac68de249365b8c4fa83054592dd98f0f789fab4
>
> [2] 
> https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/log/?h=dev-queue
>
>> ---
>>   Documentation/networking/devlink/i40e.rst     | 19 +++++++
>>   drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
>>   .../net/ethernet/intel/i40e/i40e_devlink.c    | 56 ++++++++++++++++++-
>>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 14 ++++-
>>   4 files changed, 89 insertions(+), 4 deletions(-)
>>
>
Thanks,


