Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Nf1J321gWkrJAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 09:44:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF67D656E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 09:44:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DA8780E00;
	Tue,  3 Feb 2026 08:44:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9CGVH12UbMRu; Tue,  3 Feb 2026 08:44:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B00E780E10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770108282;
	bh=VgHLoc4JJmVQ+DPngHL651kkYSwBeL/ZVkdO3ynZe2Q=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u/F9oCWS6gmjzuQ/Uio9j9RcObMEuRAzbETa3mc+MPrwsQz0vv1fY+kNh+ey5Jahf
	 Qf9K2XsGJ2FYES5DbFOo8RXBBU+TU1ZgjkJMiuy3S0RFgEwLPxFcOyN2FKADrXj4hs
	 BdM9IQj3Vd7bZ8Hv4sEjWoSVFpT6pHuCUxj6VoNCuHcimnOG3kcEFmSgQDs2mjxIQS
	 dSRwkn9+xXM+hT2tViDnagUu5Xio79lec4/0HpFUCBc2wdLMS+FOBH35OrlA3Owbfw
	 5EqFs8ug1MMCyLTCNI85RQFgIe1ZDkvjPN8t0VT4HCiiJvIv+NSIOpfF7rO1LxulzS
	 kX35QQgasMbnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B00E780E10;
	Tue,  3 Feb 2026 08:44:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AB701A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 08:44:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 345B860804
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 08:44:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2junCRNaINWj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 08:44:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 164626073B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 164626073B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 164626073B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 08:44:37 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-159-JPcjHJSxO3mm_oQd02PArA-1; Tue, 03 Feb 2026 03:44:35 -0500
X-MC-Unique: JPcjHJSxO3mm_oQd02PArA-1
X-Mimecast-MFC-AGG-ID: JPcjHJSxO3mm_oQd02PArA_1770108274
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-42fb1c2c403so4321390f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Feb 2026 00:44:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770108274; x=1770713074;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VgHLoc4JJmVQ+DPngHL651kkYSwBeL/ZVkdO3ynZe2Q=;
 b=ofuFfbY5lWDTqxNGV10p/Tq6tKyiQW5qEXbpoFDBPDJuzqobJaGDVdw3SfukBayLyS
 zgY3JItVStF9eDx5Gduro96lHwWt85kLapeMXlWZC1lplAzfiHSJTtoLlx1neKMBpmim
 ETrx5KCQo8ATMqAg44riWcB1+ziuOeCo6dsb8QgzCh1THgPmPe84WceQl4iYfk97Q/9j
 bY/izmTHAoIlfp3Va+nKARtZUqMuoAiHlljlu2zW9lhToS6wzE6rPapnxSED1aP2o5Mr
 gVP+MfJd3jMNjRxuA+TkSmaQXK0AttjwVNJP8gMwKOaF50VxhMAaIfZRFjA0Ov8cU7bh
 odYg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQRfluQShMtabkENxaCgtIwG9aFSDmVn5ZXJJvtrtETZ1U7h0c3nigHPyHGHUCUhy3AwSJv9a204rU4FUFJfA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzLs/AD96iYpjvVjIcgVfd89jXrWcX6HJlMED5kDfKmpJQp77z8
 DjZaJWM/64oEvW6CD+/B9LyMoOp8l5wifzhg8H7phWXE4Isaa3R/7KJhhjGjgFOagBSK3Ig6EaH
 Maodv5XDOqZ1R5S4bdeG1w1j1tT42M0prZJvkIgmSuibMCjM3tlSqgOvV2Y/8gy7ON8jKcFc=
X-Gm-Gg: AZuq6aITcF3xOVayDGgyVMQYy/7JoX52zIpamLDE/t+D7bVutTXiepmoO3kUzxj9XGr
 xLohblj8vc8QBO8DxpyRVdyytnLK91sVdmgAMZaIZiKcQUnq2DzelpVFDXgOQe8HJPVt3ZLgKpg
 K6O7ZoXNp7lfvBrNQMldWaAn4cKfjWnZDRjxFLRqqKX7myCcVAM+mlLrYXUccNoO9jFq57c1xE+
 tkK5B09kreN7S2J75F2P1b7orud+w7sctqT1JvZat+FAuBdo2MLXH2mtX17eU1o3hv2tI6JG1pe
 +bGEY/Vr8uqo0/OWV3vxUoNmXYrbp4JRpZ+CJBEa9WjFsv/3SfMKLSLmedRj+fm61mh5NpDHMVJ
 p0L1YoX6Y
X-Received: by 2002:a05:6000:401f:b0:430:f241:a11f with SMTP id
 ffacd0b85a97d-435f3aaa5aemr19352652f8f.30.1770108274179; 
 Tue, 03 Feb 2026 00:44:34 -0800 (PST)
X-Received: by 2002:a05:6000:401f:b0:430:f241:a11f with SMTP id
 ffacd0b85a97d-435f3aaa5aemr19352628f8f.30.1770108273800; 
 Tue, 03 Feb 2026 00:44:33 -0800 (PST)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-435e10f82aesm52194011f8f.19.2026.02.03.00.44.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Feb 2026 00:44:33 -0800 (PST)
Message-ID: <14cb0b22-ec39-43e4-a35b-22ad558b2e34@redhat.com>
Date: Tue, 3 Feb 2026 09:44:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Cc: ivecera@redhat.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20260202084820.260033-1-poros@redhat.com>
 <20260202155813.3f8fbc27@kernel.org>
 <b064ca33-1d94-4c7e-b0d0-78430d8cd0ac@intel.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <b064ca33-1d94-4c7e-b0d0-78430d8cd0ac@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: qeang0h0FF_eawq-oJi8zw1DmglRyzDFXr8SgDiEWME_1770108274
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770108276;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VgHLoc4JJmVQ+DPngHL651kkYSwBeL/ZVkdO3ynZe2Q=;
 b=coGhzWOPrCwEE4yar3gOZVA+VELdXH17SpVMDjnG7Ff6fmegsO2Qf4m+rwVnnZhFZSqBIU
 xbClAs1XvG4xOg0Ngnp2ok2+xIi30QRYaReqsiJ2yzSp3AhN9QctYGmfDlXK8WVp6Nwl+h
 RLhsJD81V+649b5OhvkAsR5EUofY0bk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=coGhzWOP
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
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
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: BBF67D656E
X-Rspamd-Action: no action


On 2/3/26 02:00, Jacob Keller wrote:
>
>
> On 2/2/2026 3:58 PM, Jakub Kicinski wrote:
>> On Mon,  2 Feb 2026 09:48:20 +0100 Petr Oros wrote:
>>> +    netdev_unlock(netdev);
>>> +    ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
>>> + !iavf_is_reset_in_progress(adapter),
>>> +                           msecs_to_jiffies(5000));
>>> +    netdev_lock(netdev);
>>
>> Dropping locks taken by the core around the driver callback
>> is obviously unacceptable. SMH.
>
> Right. It seems like the correct fix is to either a) have reset take 
> and hold the netdev lock (now that its distinct from the global RTNL 
> lock) or b) refactor reset so that it can defer any of the netdev 
> related stuff somehow.
>
I modeled this after the existing pattern in iavf_close() (ndo_stop), 
which also temporarily releases the netdev instance lock taken by the 
core to wait for an async operation to complete:

static int iavf_close(struct net_device *netdev)
{
         netdev_assert_locked(netdev);
         ...
         iavf_down(adapter);
         iavf_change_state(adapter, __IAVF_DOWN_PENDING);
         iavf_free_traffic_irqs(adapter);

         netdev_unlock(netdev);

         status = wait_event_timeout(adapter->down_waitqueue,
                                     adapter->state == __IAVF_DOWN,
                                     msecs_to_jiffies(500));
         if (!status)
                 netdev_warn(netdev, "Device resources not yet released\n");
         netdev_lock(netdev);
         ...
}

This was introduced by commit 120f28a6f314fe ("iavf: get rid of the crit 
lock"), and ndo_stop is called with netdev instance lock held by the 
core just like ndo_change_mtu is. Could you clarify why the 
unlock-wait-lock pattern is acceptable in ndo_stop but not here?

