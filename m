Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGPMD90Nn2neYgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 15:57:33 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DE8199135
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 15:57:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03C6C4188F;
	Wed, 25 Feb 2026 14:57:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LYYp2gl3G95a; Wed, 25 Feb 2026 14:57:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7632B41CCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772031450;
	bh=WOFZD4dDncjyTTf4CK7xsUk9kkt0EXLPHp2enm9+JaE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IJG2vop64Lasy6kiDfBwgT79XGm1DwLRNPrrOIjT3MaxmH03/PW+Mh/BL0Byz3++b
	 YvxlpASwRSzDOUk65L7bSoX/0oVhcx/UCGkBUuXHoLAQgJS/lesKKNpibP2Zo36asV
	 6ZKqnikdLGOvW+5vweXVDc03aPeI8If4CVMl9Us3l5TjSMbpJmdo56ZE14rAa2xyvd
	 svXcL+cW2Flwe2Y9jmYchEf5+SvxMk5DNH66WYZ3Stj19pavgS6EIENhNU3kCZt4wP
	 pFtZXihtas0NqK+MaXM33H2pE8jCuRZQ4IK5JDvXh1bKRIwbJN49Yf/seSSb/1su/f
	 p9cFEpmb0EjPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7632B41CCF;
	Wed, 25 Feb 2026 14:57:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 326161B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 14:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2407B4255B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 14:57:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qFo7dqhtGpQY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 14:57:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 11CE342538
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11CE342538
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11CE342538
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 14:57:26 +0000 (UTC)
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-180-ZXk3vr5OOV2gLDsTNabfBA-1; Wed, 25 Feb 2026 09:57:23 -0500
X-MC-Unique: ZXk3vr5OOV2gLDsTNabfBA-1
X-Mimecast-MFC-AGG-ID: ZXk3vr5OOV2gLDsTNabfBA_1772031442
Received: by mail-lj1-f199.google.com with SMTP id
 38308e7fff4ca-389e0db12cbso5721911fa.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 06:57:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772031442; x=1772636242;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=WOFZD4dDncjyTTf4CK7xsUk9kkt0EXLPHp2enm9+JaE=;
 b=wBPRSxLelWRSwnP94tAXENAx9eixlbIs6KzAsh8wfDk+YLkh5HoEOad4l8Bpc4EcsT
 DdY9rVc3H0RpFyCo6TiUIfUO2p614GKpqmfLY4fGfL18UmhihpcIGeiiByVtjuxnmcph
 w5PGPYZMyz7nBJ4z0GaspUWKFy4++MC9+nlKYwJTO53VJGicZ5Y4cb7v/FT10yFShtYz
 HQ3owLjdQDwAL6O/izDbCFferz/rPk5qYI1K9XV+qulTJmr/+7u1CJ6YwkPgLyGzYo6H
 SvqUjBUHmiTsZ7hr45D50ldcoMnfDy1vGznEkOlQm+q6dft/lpQ/uvYo1gFtXpUeotsq
 h7TA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVXqemIb10hRbUjZwY5LlEG0wlERwI7yyT4D5BwZU7bRHNoqB0kdKXcfXtC+LPtjMZfBhj9CM+8Qy6yuchziBQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx/mVt1oNOlIbzwKQmHhzCzA/7ypYOM3Gb3RonrameVKZh0C4XP
 fHXrzLebg5LnM/55HuksgvAd1JY27GTZdVR6luV7xTnE1agbf3OmugpGkqiHzTS8idl5qRrvyJQ
 yw/9QexsDbUzQ5+id08vv5GQ1x9WPgHZw28OFdzj4PZYZQ+xLNgmOnbgRGdkJ/tlNQIivzU4=
X-Gm-Gg: ATEYQzz7UMlsqjrxKLUYP4WUjvr85nBt7rMPAEQmjsNVjAQB+oDrqduMwy1lGNuay6r
 RiPGw6GCT5iHtG4Fia3YmsX5rR0mh2a6l1ApoSc1T175jDnEa3u900e3cfybF0DUeenBvirXpRF
 bi/AENAB6OWWPEqBUIWspxb+vT17uVPHTy2nDjHAeUNA7SuiAnZnz378BQ9ts03QtHOaAomp9u/
 7d725dR/zywkFZ+Ksz6XinKY7o2fJXToVjzLKbskcN7dOU4SlMR7xTXgEIJZETiR6thANAy1+sg
 pkRVkZ8XkNltrHQYPpTNe2yDcWN8norveYIihHUbcrmqRh2upcQNU0WJ9py1G7f+qPRzTiGhlaw
 pTQn4+UF40ViDKMjRA4VZ
X-Received: by 2002:a05:651c:1581:b0:387:799:17f8 with SMTP id
 38308e7fff4ca-389a5d4e7f8mr51094571fa.16.1772031442089; 
 Wed, 25 Feb 2026 06:57:22 -0800 (PST)
X-Received: by 2002:a05:651c:1581:b0:387:799:17f8 with SMTP id
 38308e7fff4ca-389a5d4e7f8mr51094491fa.16.1772031441579; 
 Wed, 25 Feb 2026 06:57:21 -0800 (PST)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-389a770ecb7sm30766031fa.0.2026.02.25.06.57.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Feb 2026 06:57:20 -0800 (PST)
Message-ID: <6d93637e-cc59-45e5-9365-8140f53e4004@redhat.com>
Date: Wed, 25 Feb 2026 15:57:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
References: <20260225100137.383527-1-poros@redhat.com>
 <CADEbmW2WNCLuRYVs5FTKR6GR16yOMmQGyg0vYR98SQCCwb_5HA@mail.gmail.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <CADEbmW2WNCLuRYVs5FTKR6GR16yOMmQGyg0vYR98SQCCwb_5HA@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: BPxnRv6mK0kEP8qk6poyJY18lGSWtaGJaWEQjsgYGdU_1772031442
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1772031445;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WOFZD4dDncjyTTf4CK7xsUk9kkt0EXLPHp2enm9+JaE=;
 b=UnLHqxHFxlwQozkurPLpQAcGGnGZw12Pw35CCjA039TSiqGIKszuKqzAdJkBxEaGkJZTlK
 ISBgYS9+4OZklZd1rOE1nUVvUaKmlDDoYKSWEbD1rTiv/nXnI09V0whY99bG2dV04UUdci
 0wXtm4zg2w1JTAKrAInkO+M+pUeINbo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=UnLHqxHF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: fix VLAN filter lost on
 add/delete race
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:mschmidt@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:ahmed.zaki@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 59DE8199135
X-Rspamd-Action: no action


On 2/25/26 12:17, Michal Schmidt wrote:
> On Wed, Feb 25, 2026 at 11:02 AM Petr Oros <poros@redhat.com> wrote:
>> When iavf_add_vlan() finds an existing filter in IAVF_VLAN_REMOVE
>> state, it transitions the filter to IAVF_VLAN_ACTIVE assuming the
>> pending delete can simply be cancelled. However, there is no guarantee
>> that iavf_del_vlans() has not already processed the delete AQ request
>> and removed the filter from the PF. In that case the filter remains in
>> the driver's list as IAVF_VLAN_ACTIVE but is no longer programmed on
>> the NIC. Since iavf_add_vlans() only picks up filters in
>> IAVF_VLAN_ADD state, the filter is never re-added, and spoof checking
>> drops all traffic for that VLAN.
>>
>>    CPU0                       CPU1                     Workqueue
>>    ----                       ----                     ---------
>>    iavf_del_vlan(vlan 100)
>>      f->state = REMOVE
>>      schedule AQ_DEL_VLAN
>>                               iavf_add_vlan(vlan 100)
>>                                 f->state = ACTIVE
>>                                                        iavf_del_vlans()
>>                                                          f is ACTIVE, skip
>>                                                        iavf_add_vlans()
>>                                                          f is ACTIVE, skip
>>
>>    Filter is ACTIVE in driver but absent from NIC.
> I don't get it. If, as the diagram shows, iavf_del_vlans() skipped it,
> then how does the filter become absent from NIC?

VLAN teardown            Workqueue           VLAN setup
-------------            ---------           ----------
iavf_del_vlan(100)
   f->state = REMOVE
   schedule AQ_DEL_VLAN
                                              iavf_open()
                                                restore_filters()
                                                  f is REMOVE, skip
                                                iavf_add_vlan(100)
                                                 f->state = ACTIVE

                          iavf_del_vlans()
                           f is ACTIVE, skip
                          iavf_add_vlans()
                           f is ACTIVE, skip

Is it clear like this?

> Michal
>
>> Transition to IAVF_VLAN_ADD instead and schedule
>> IAVF_FLAG_AQ_ADD_VLAN_FILTER so iavf_add_vlans() re-programs the
>> filter.  A duplicate add is idempotent on the PF.
>>
>> Fixes: 0c0da0e95105 ("iavf: refactor VLAN filter states")
>>
>> Signed-off-by: Petr Oros <poros@redhat.com>
>> ---
>>   drivers/net/ethernet/intel/iavf/iavf_main.c | 9 ++++++---
>>   1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> index 4b0fc8f354bc90..6046b93c7f3472 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> @@ -782,10 +782,13 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter,
>>                  adapter->num_vlan_filters++;
>>                  iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_VLAN_FILTER);
>>          } else if (f->state == IAVF_VLAN_REMOVE) {
>> -               /* IAVF_VLAN_REMOVE means that VLAN wasn't yet removed.
>> -                * We can safely only change the state here.
>> +               /* Re-add the filter since we cannot tell whether the
>> +                * pending delete has already been processed by the PF.
>> +                * A duplicate add is harmless.
>>                   */
>> -               f->state = IAVF_VLAN_ACTIVE;
>> +               f->state = IAVF_VLAN_ADD;
>> +               iavf_schedule_aq_request(adapter,
>> +                                        IAVF_FLAG_AQ_ADD_VLAN_FILTER);
>>          }
>>
>>   clearout:
>> --
>> 2.52.0
>>

