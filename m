Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C351B47A64
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Sep 2025 12:08:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6087D84713;
	Sun,  7 Sep 2025 10:07:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lXkjANjT-6Ql; Sun,  7 Sep 2025 10:07:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B89E846E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757239662;
	bh=KnnYBGJLuU87m/TYWsgCWAzurW6kZLYOyTeZ7Z1OKbU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rr+tl1rMyhda4H9AdT5o2PJvKZK2Ma+ZNknaQigycm0eqUR8z8A5AVDqOUuC38peT
	 m+kmKWUiSNjGtbd7ekiQhZ6uuotUQCSYTSdW4gbymcKuFXc3uknVjUA3jTxcAeiFkt
	 tQOLR7NpNJR7y0oKCptASNHEozHnC2bPLUhcTQCu3NdMXSrMFMLshfsOh9BuuDJRFP
	 EbO0APfdgE3iSywUJrWjak60Ii7CUseGdAe6CSIrnkbY9WBlO2xlE4rGNBNuwClTzG
	 jSb2fAuR7Y83aS6uevt5NXXop/5NHA3mX53SWKhWVbqVZY3PtXvtcIRiJtE8ltCgw6
	 OjVM7SkR7n7cA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B89E846E0;
	Sun,  7 Sep 2025 10:07:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C0694CA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 10:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A71CC610AE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 10:07:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6OEaUIireWZF for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Sep 2025 10:07:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9A5EA60DB2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A5EA60DB2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A5EA60DB2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 10:07:38 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-131-GfL7j75JNe-MNtBMaDAXZg-1; Sun, 07 Sep 2025 06:07:33 -0400
X-MC-Unique: GfL7j75JNe-MNtBMaDAXZg-1
X-Mimecast-MFC-AGG-ID: GfL7j75JNe-MNtBMaDAXZg_1757239652
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3e26569a11aso1627659f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 07 Sep 2025 03:07:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757239652; x=1757844452;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KnnYBGJLuU87m/TYWsgCWAzurW6kZLYOyTeZ7Z1OKbU=;
 b=EabBzJNYATXBpal/EWb30n7QPYmYTIkQRu72sTK3IG8wBk9demRI2ynq7o4nXmoqoa
 Rk1F/WDeYZ3rWcQ5Mf6eC+c5Iy3UYSRGfHrDJj03xO6BLMi4DBV4UuPJgAH16Y8HTWrm
 p26gY7QkWJkKnvLTKmwAZgTHoNrLyv0ffxfFxEq1XGlD/gjVwee8gh3V/BoW4PKIi60+
 y7Sutli2u41G5sMdKQr7M859XbecWz0eWB+Pes+FkUcOFk5v86rCMqb0v+mP+ykGOakI
 6OR+Qu6laWiqENyw7NFpjipzwPc++pDewoz4kL6j4Fe7/5iVsE21SodI1MF5/EnRFvxD
 RdxA==
X-Gm-Message-State: AOJu0YwV/ApuCwzI60cwY1TGZNLrIWaaF513jcOvELQOwqeEtLpp3HQx
 4uIt+jSC4jy4FmUX+KkKX3YurlDdT1qWh5SZCoVKzXB8I2PvVtpITcZY6f6Mprd6AeYP5hd76YG
 PvINhsYjULt1Z9RhS+7HPj9KEZRpnnSFxXGI3WQole15LCSfClwPFYTZn6T0YwmtZtGnwqlg=
X-Gm-Gg: ASbGncv3gUv6va9N65LZTC3XRmCYByh6aAJ98jdjMJhfpviEEdUGcRurbstq57v2sNj
 +hf9d6uPcAiadMYpdAtxAvInyIYmd5C6WQkiZLVTOro8AlDiKX3aUyMs02OsUUIQRfqDoCYim96
 vt4kWdlok/dzP4GvyWVGD4BZ4vGZoEo35+d5YTZ9UITTsI5caTMkyry5JE669mmxffySA1BrrgW
 liva4nym2U40rXgn8FU8y3zN23a2do2FevnhP3CucwaakI7YnBqmHIEyCEtmLgWLvklumJRNZ5K
 /XvxN/8nKlQc/4QByqWdDit6OjgpcZ6D0ORJ/OM4Yas=
X-Received: by 2002:a5d:64e4:0:b0:3e0:152a:87bb with SMTP id
 ffacd0b85a97d-3e64392b6camr2784004f8f.31.1757239652070; 
 Sun, 07 Sep 2025 03:07:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdnOLhg7b9jF423cv+4EKzrwVRujfCTbhh8PbaI9gyYT0tkEGWRqv07DZlKchYFI78NSvaJA==
X-Received: by 2002:a5d:64e4:0:b0:3e0:152a:87bb with SMTP id
 ffacd0b85a97d-3e64392b6camr2783990f8f.31.1757239651669; 
 Sun, 07 Sep 2025 03:07:31 -0700 (PDT)
Received: from [192.168.68.125] ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3e18537589dsm11894722f8f.54.2025.09.07.03.07.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Sep 2025 03:07:31 -0700 (PDT)
Message-ID: <5ad712d1-47ce-446e-bc96-e03b72459eee@redhat.com>
Date: Sun, 7 Sep 2025 13:07:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, przemyslawx.patynowski@intel.com,
 jiri@resnulli.us, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
References: <20250903214305.57724-1-mheib@redhat.com>
 <20250903214305.57724-2-mheib@redhat.com>
 <20250905122530.GB553991@horms.kernel.org>
From: mohammad heib <mheib@redhat.com>
In-Reply-To: <20250905122530.GB553991@horms.kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: TceYGyU0n7OcahawNJ1H3Lg9i8u8LsKG2wbE2_7Ah0E_1757239652
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1757239657;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KnnYBGJLuU87m/TYWsgCWAzurW6kZLYOyTeZ7Z1OKbU=;
 b=fudmXP/ahxO2U8VEngWqxUoiG58NyjqRuoaffC+7e7926vN4jKKFoQ5/4IUiMgBU29FPdL
 DNuauEor+J4fEorsHYaigF2w4m0AlABzFfqEaDyFUhIBrclEO6+oT/yXWDBfT4vO654EEi
 +FotScF1/C6VQTdq0BeSaLaAqENiLNk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=fudmXP/a
Subject: Re: [Intel-wired-lan] [PATCH net-next, v3,
 2/2] i40e: support generic devlink param "max_mac_per_vf"
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

Hi Simon,

Thanks for the review i fixed it in v4.


On 9/5/25 3:25 PM, Simon Horman wrote:
> On Thu, Sep 04, 2025 at 12:43:05AM +0300, mheib@redhat.com wrote:
>> From: Mohammad Heib <mheib@redhat.com>
>>
>> Currently the i40e driver enforces its own internally calculated per-VF MAC
>> filter limit, derived from the number of allocated VFs and available
>> hardware resources. This limit is not configurable by the administrator,
>> which makes it difficult to control how many MAC addresses each VF may
>> use.
>>
>> This patch adds support for the new generic devlink runtime parameter
>> "max_mac_per_vf" which provides administrators with a way to cap the
>> number of MAC addresses a VF can use:
>>
>> - When the parameter is set to 0 (default), the driver continues to use
>>    its internally calculated limit.
>>
>> - When set to a non-zero value, the driver applies this value as a strict
>>    cap for VFs, overriding the internal calculation.
>>
>> Important notes:
>>
>> - The configured value is a theoretical maximum. Hardware limits may
>>    still prevent additional MAC addresses from being added, even if the
>>    parameter allows it.
>>
>> - Since MAC filters are a shared hardware resource across all VFs,
>>    setting a high value may cause resource contention and starve other
>>    VFs.
>>
>> - This change gives administrators predictable and flexible control over
>>    VF resource allocation, while still respecting hardware limitations.
>>
>> - Previous discussion about this change:
>>    https://lore.kernel.org/netdev/20250805134042.2604897-2-dhill@redhat.com
>>    https://lore.kernel.org/netdev/20250823094952.182181-1-mheib@redhat.com
>>
>> Signed-off-by: Mohammad Heib <mheib@redhat.com>
>> ---
>>   Documentation/networking/devlink/i40e.rst     | 32 +++++++++++++
>>   drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
>>   .../net/ethernet/intel/i40e/i40e_devlink.c    | 48 ++++++++++++++++++-
>>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 31 ++++++++----
>>   4 files changed, 105 insertions(+), 10 deletions(-)
>>
>> diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
>> index d3cb5bb5197e..524524fdd3de 100644
>> --- a/Documentation/networking/devlink/i40e.rst
>> +++ b/Documentation/networking/devlink/i40e.rst
>> @@ -7,6 +7,38 @@ i40e devlink support
>>   This document describes the devlink features implemented by the ``i40e``
>>   device driver.
>>   
>> +Parameters
>> +==========
>> +
>> +.. list-table:: Generic parameters implemented
>> +    :widths: 5 5 90
>> +
>> +    * - Name
>> +      - Mode
>> +      - Notes
>> +    * - ``max_mac_per_vf``
>> +      - runtime
>> +      - Controls the maximum number of MAC addresses a VF can use
>> +        on i40e devices.
>> +
>> +        By default (``0``), the driver enforces its internally calculated per-VF
>> +        MAC filter limit, which is based on the number of allocated VFS.
>> +
>> +        If set to a non-zero value, this parameter acts as a strict cap:
>> +        the driver will use the user-provided value instead of its internal
>> +        calculation.
>> +
>> +        **Important notes:**
>> +        - MAC filters are a **shared hardware resource** across all VFs.
> 
> Sorry for not noticing this before sending my previous response.
> 
> make htmldocs is unhappy about the line above. Could you look into it?
> 
> .../i40e.rst:33: ERROR: Unexpected indentation. [docutils]
> 
>> +          Setting a high value may cause other VFs to be starved of filters.
>> +
>> +        - This value is a **theoretical maximum**. The hardware may return
>> +          errors when its absolute limit is reached, regardless of the value
>> +          set here.
>> +
>> +        The default value is ``0`` (internal calculation is used).
>> +
>> +
> 
> ...
> 

