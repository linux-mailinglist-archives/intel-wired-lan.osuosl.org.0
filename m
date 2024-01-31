Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DB0843F01
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 13:00:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4788161509;
	Wed, 31 Jan 2024 12:00:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4788161509
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706702419;
	bh=HRIlhUmLDjTPjpQJWhot1CNU7PKVSI6pop1UZB6zBPk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vDLaxqjfpBG+Eau4Hhw42skw6/NHfooGRlDpmDF9yZxMnaF+aFDLPLJY5CRnbBrE9
	 /qOPd2FGfarTzgRGx0jN7QbkF95rDwICcdQse1ZjXnzHGpcWQkiZko95Ndl575KYCP
	 5Ym7TQzwDHrq1U29648Ej878C3SR3qC0p0L2MybC6MrXFjdXl87bV3rSconU96T7dF
	 g6oUEWfzGSlDVNYy0y256gMfOAlI6v6MQayamONlSFCWClmcfHpXO0o7NLV1jDYu59
	 a42PDkEJfwGm21+e4XSqBfuKhd9v1RePo+Asn8P8NOG5RcY1IKQEbyXnESZWyn8s4B
	 XgE2VKYn+lOPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FtIerSgUL63T; Wed, 31 Jan 2024 12:00:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42D6161470;
	Wed, 31 Jan 2024 12:00:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42D6161470
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C86D81BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 12:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FEB541E85
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 12:00:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FEB541E85
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yL6r1ueUhCrt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 12:00:11 +0000 (UTC)
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E888E41C59
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 12:00:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E888E41C59
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-3394bec856fso500564f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 04:00:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706702408; x=1707307208;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HRIlhUmLDjTPjpQJWhot1CNU7PKVSI6pop1UZB6zBPk=;
 b=ftSSZ8oIJ4JE3SwSSLNl0GzgKuHS0x8qRYpPoFMqIDkz4Oyg8cFcMK5Qg5W6Hie0J5
 vTuCr1C81oZaPRVanQyEENXr3mqURaV6Y+XAh+NGvTAXVT5T5jkg/qb5R9Sehj/7B6jK
 juZU5JTR6BSk7uM/cSUcHYK/qtRCfpIlvM2tn8NWBlkvCL/Buua7e/wdK6nzBd+EaUlU
 WrMU4AoUugsPvsEGFhKebGBYM0tp/ds/HebyTHK4VQmCfnBvfcxMauxgrWdfwj//nEaF
 81Y3MoueofPa2x2v2Z7zfLrzPwoxuBlrfJ04DmsOjVs5F24m0U/qrStrBikwtAGeYgMy
 mJrg==
X-Gm-Message-State: AOJu0YycXchxzqOYK0URkn2Vl6JhNuUpJq0r9nBk2RJIZc0keOsdiafE
 lq7nCcSSC4ivrJgMLSkwMXJLfocQX0pDWHYgUEro7nOMcASZNxHoimXL4A7f4GQ=
X-Google-Smtp-Source: AGHT+IE/gZETgx51O7pzrCc3cEr494HTU9XfJV8azb9nJPzczdS5zJhegdsdVTGJc1Cb3wC4htdFyQ==
X-Received: by 2002:adf:dd8b:0:b0:33a:ded0:c309 with SMTP id
 x11-20020adfdd8b000000b0033aded0c309mr1288727wrl.13.1706702408470; 
 Wed, 31 Jan 2024 04:00:08 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCU/uzCB3VwH+x4UZ0/JI+iYwp4TEf7h9P3oHFQu4kmLs2PpqfRUeMAuxSO2exbX8NFFnywp9GbXo9B0FY00u6gCHLamjEQFCckgF5FkQjjJtzeQxXC2AJxKfNm78BC6gqliQ9xHevRjGoOQ33Z5xahTB0cofWFeJ42FqQQFHCd2w8Kl2roAuskO5t/99Y49u1DiRdjrujfdB61Wo1J+QrPFK6s/SbDz86ixx+uyLMrCWo6z195T4OBXWsW5q2RYnQI5OODIvHQIn7Leh3JBndKSfm9r1xSISWUbihBsp3Pno0GQuIAxX8+9z1ip5PFJvmp9gGjnE0RUCIWuxPyCL9/CLzVg1Zqgjx92LA5FCZgDZFh2y1LYIV8ZVQStOu4/oEqFX8+K7Nrg9+fFdNiX7xmDig3ttLbaGZbIw74ofQJNPxU27aQhNdKNNY4N0QienQ9zXSHD6h3qhbZEY9IDheZpmCOjymOsAUtknS/q8nbmWA==
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ch19-20020a5d5d13000000b00337b47ae539sm13337744wrb.42.2024.01.31.04.00.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Jan 2024 04:00:07 -0800 (PST)
Date: Wed, 31 Jan 2024 13:00:04 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zbo2RJErBsD0Sc_z@nanopsycho>
References: <20240131080847.30614-1-ksundara@redhat.com>
 <ZbokUx7myZ1bVWLL@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZbokUx7myZ1bVWLL@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1706702408; x=1707307208;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=HRIlhUmLDjTPjpQJWhot1CNU7PKVSI6pop1UZB6zBPk=;
 b=eFrm37PjPKyOQtPOkqE3T3pjdNTlZ37ZhIdIODiPm8Y5jIXMUJNVgrehu0RfEPkxT5
 gS24lzXLQ0VzCXfXs8eH4CBeeYd0vND9T4LnugvPDtdjIJYLeo3kMGOTzzilMCo+qSEU
 freU9b5jQmw5wZbCfK0bDrSS+0klLr8xerw5cBATlaznrTLBzUZzGKF6zb1xOOl0yXbg
 PUabM465YRshWLmPZvGVTwvmqTZaj7Knz1uuvKS1HfUrKjjtz62e8/cEmGrx8ZHtZhi1
 2N67S1EgdqyJ2a1n5V3hgsfwDMhp4sRpxPkvvFvpWXCESKnoVMizn38UUhDMhOhezAxQ
 F4rw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=eFrm37Pj
Subject: Re: [Intel-wired-lan] [PATCH] ice: Add get/set hw address for VF
 representor ports
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
Cc: vchundur@redhat.com, aharivel@redhat.com, cfontain@redhat.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, kuba@kernel.org,
 karthiksundaravel <ksundara@redhat.com>, rjarry@redhat.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Jan 31, 2024 at 11:43:44AM CET, michal.swiatkowski@linux.intel.com wrote:
>On Wed, Jan 31, 2024 at 01:38:47PM +0530, karthiksundaravel wrote:
>> Changing the mac address of the VF representor ports are not
>> available via devlink. Add the function handlers to set and get
>> the HW address for the VF representor ports.
>> 
>> Signed-off-by: karthiksundaravel <ksundara@redhat.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_devlink.c | 134 ++++++++++++++++++-
>>  1 file changed, 132 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> index 80dc5445b50d..56d81836c469 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> @@ -9,6 +9,8 @@
>
>As Jiri already wrote, you are not changing MAC of VF in your code. Try
>to look at ice_set_vf_mac in ice_sriov.c. In current implementation you
>nedd to set new MAC value for VF and reset it. You shouldn't use PF VSI.
>
>Pointer to VF you can get from representor struct (through parent VSI).

What if it is in a different host? Would you still be able to change the
mac?


>
>You shouldn't manage the rules during MAC changing, as in switchdev
>slow-path there shouldn't be VF MAC rules. It can be problematic as user
>already can have MAC + sth rule (which also needs to be change). I will
>leave it to user (most probably the MAC change happens before adding any
>rules).

Rules are on the representor, not the VF, correct? Seems unrelated to
me.


>
>In few days we will send patchset for subfunction support where the
>subfunction MAC chaning is implementing from devlink API. I will add you
>to the CC.
>
>Thanks for working on it, it is a gap in our solution.
>
>Thanks,
>Michal
>
