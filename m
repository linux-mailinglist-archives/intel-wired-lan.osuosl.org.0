Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4L0gDzFtjGlmngAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 12:51:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DD9123F73
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 12:51:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0955040D26;
	Wed, 11 Feb 2026 11:51:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ahOpsfEES--r; Wed, 11 Feb 2026 11:51:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8335840D00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770810669;
	bh=RhSjZw86q7JLL8KRuEhtDk2hOfqYGgb3WkEvn7xqpfk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=69LKXrZnY0w2Sb+Qe52crXpDcfbEsQhSuJs2SaTrl4huv4aZkhCjlsOlO9ZOWsJoU
	 cy55SAs4vFJ7ougvRFLcy6+xHprwg/f6elvCNS1HaL8JQ7UiZRx8uCHfEW1Edblhi2
	 Svb+gT/9KpU6yMa7B05K+qc8KlHsEPUpI71tffyUpqjrMuEkFU2EmkUPXEzqp/f1Et
	 l6Gf/vNVTvv5T/izkcapxWm0sM7RLn23n9olfgMGVsjkfqHgyDvExWLVZdopP3MPwP
	 8SN0GPPGPWuJYo1lVqtx5El46fmEF8QRV6AJwIW/mOnT18LVQmiFE2D9pUAjtxpL21
	 YMBVDnY/7gsng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8335840D00;
	Wed, 11 Feb 2026 11:51:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 49F6E23D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 11:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B8C94060A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 11:51:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0YlebN1BjNqP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 11:51:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AF7D840378
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF7D840378
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF7D840378
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 11:51:04 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-5-q8Lh0kvYN3WlWtZ7FsbzQg-1; Wed, 11 Feb 2026 06:51:01 -0500
X-MC-Unique: q8Lh0kvYN3WlWtZ7FsbzQg-1
X-Mimecast-MFC-AGG-ID: q8Lh0kvYN3WlWtZ7FsbzQg_1770810661
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-48079ae1001so48056575e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 03:51:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770810660; x=1771415460;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=RhSjZw86q7JLL8KRuEhtDk2hOfqYGgb3WkEvn7xqpfk=;
 b=K3goMj94bknqCwWqnVWHLvWTGWa0wwzC95OcTxAc8QiQDKzeWVbweCaZ11Xv9b71ie
 yFwMalYqlMZJ72Pr0LILrjBIXjGU2XHKqE/N73ykmhDTa8GpiaIC+Eh2FNXJ6Xy4vWxK
 BSG/7Tqt+jeEfEfgq9lFmVUxptzRYl6l80QMFo2SsCs1G4zO85jCEfHTE90nBim9DLS0
 WAk/1taShOr3XJEroC2d3U4IfKH6ktHBnw7rmAXgWucmJV59yDogyXubBlpYDAvx7ALR
 hHciBCNHJzW43rI7DoqYLiXxlBeeuq7sEsqmfjkc6/X5hE/rdxlcG6LPWzOOtlMWEOqq
 T1xw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJ1+zIagrwUGifuE42gNA7uAdwcrKvw2Yo552mm6KrmTciGH5QgpqttuQuMVYSArobVqFzT4LCyndeWnFTNvQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy4IWs05zpDlggF+EqVRpGppQ6UGEghnO+khplmtirqMCxIoypM
 Fu9HzwslzoZI8ywm24EvnYJJl9kFpSInCCBukcYkrXUtbrFVhTffd4Zjh0Q5hlEkuSdhm3S88jQ
 MUxfIqgX7h04eTP+yBXo19FAuc9L/damFbY1XiN5jlHJ8/W5GRS2n1ek6+b0f50SPELKllF4=
X-Gm-Gg: AZuq6aKI7CDEt9v4YuoZB0qtmb6/eNFlX99DJAGCLXHqDg1CITwftsRaVYQ+E70BjcY
 YWVZbskX6URxx4pPOubfx4ToxWaebiIeO45KlQFXZHAbrpqtLphLbcjF6iwJgxK7IdHpA7IC7aH
 Kt7D5AXNW2yWhzVgKYmCnWZ8+LTkWNBqMhh1r5a4TYag7sDtuBXCqhFxsGbb8E0DTD8Wl/qBrqS
 vyYwK8+7r1PkkZMnT+XB5KLr8BQoEv2WmQAMXOeiO4bNupC5QV9caseStIbEC/bGqMzCbKW2Js9
 hRDDAoB5NZbnBKo5e5JaW8ssPFwgRf930Ap95K6ATDSunK/0VdMasjwOUdTG1yU5sobqpKAqmIP
 Zi5eN2Ki/sZWcE4d3tkU+o8dZmg==
X-Received: by 2002:a05:600c:3baa:b0:483:129e:b573 with SMTP id
 5b1f17b1804b1-4835b952e38mr29532825e9.18.1770810660596; 
 Wed, 11 Feb 2026 03:51:00 -0800 (PST)
X-Received: by 2002:a05:600c:3baa:b0:483:129e:b573 with SMTP id
 5b1f17b1804b1-4835b952e38mr29532495e9.18.1770810660222; 
 Wed, 11 Feb 2026 03:51:00 -0800 (PST)
Received: from [192.168.88.32] ([212.105.155.220])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4834d82a4c4sm226143895e9.10.2026.02.11.03.50.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Feb 2026 03:50:59 -0800 (PST)
Message-ID: <d97612d0-09ed-4895-a22a-6fa73abfbbf5@redhat.com>
Date: Wed, 11 Feb 2026 12:50:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, netdev@vger.kernel.org
Cc: ivecera@redhat.com, aleksandr.loktionov@intel.com, shaojijie@huawei.com,
 Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Stanislav Fomichev <sdf@fomichev.me>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
References: <20260207102245.812795-1-poros@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20260207102245.812795-1-poros@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 9irooeLDsk0QuaKixbwgzLlr-c5roTdD6zterB-wQLQ_1770810661
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770810663;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RhSjZw86q7JLL8KRuEhtDk2hOfqYGgb3WkEvn7xqpfk=;
 b=CFTGDkligYSXLCiP9M57emplBlwqTcJhS91Xs6OZLaHU4XGjLXAyGZtZ9GYGOwzmUDRRdc
 7nn4EcapSvTRD1XYrsitu8WNkfigP/32Fj0YWDXqNPSyKAlyLDRaj3sgtldorFiaspA2qO
 GPJRl8Pb/pN5/4XlsCqzvoBTU72epJ0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=CFTGDkli
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: fix deadlock in reset
 handling
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:shaojijie@huawei.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:sdf@fomichev.me,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_SENDER(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 38DD9123F73
X-Rspamd-Action: no action

On 2/7/26 11:22 AM, Petr Oros wrote:
> -/**
> - * iavf_wait_for_reset - Wait for reset to finish.
> - * @adapter: board private structure
> - *
> - * Returns 0 if reset finished successfully, negative on timeout or interrupt.
> - */
> -int iavf_wait_for_reset(struct iavf_adapter *adapter)
> -{
> -	int ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
> -					!iavf_is_reset_in_progress(adapter),
> -					msecs_to_jiffies(5000));

AFAICS, after this change nobody waits anymore on reset_waitqueue, do we
still need such wait queue head? I think a bunch of additional code
could be dropped.

Thanks,

Paolo

