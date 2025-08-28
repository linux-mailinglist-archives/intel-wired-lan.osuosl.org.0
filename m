Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DD5B3AADF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 21:26:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86CF1822C6;
	Thu, 28 Aug 2025 19:26:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oEYKocusCUJf; Thu, 28 Aug 2025 19:26:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0A7283DF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756409166;
	bh=ZNKCiEXVNimfghYWuXUmKnsDjiRGghYXpeYN/YwzGig=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8I2DUgxOG1egl5RtaPpRqfaiQeGbrz+dSsE4hY8t4mPD7jLEu8Z4/mk+1Wi5rN9hA
	 OwzZlXQUwYYLc6QOUmzh42hYizT+5BME4iioGEhbSLNANdwh9zECBNM6EMoptwu4I4
	 pA/6ldvUbuP0ma1VGEn+ZSiE2xuso+Ciu6qPXhZakdhSZAAyEX91Ruchdbq06oCbzB
	 FriGaQPj4ufPlsYBLZ8pMOlWf2FiUuTiw8jasSoadBTuTQWOD9OZX+ZnvkKoj1ZV/c
	 uXhzx8GwvxNnzJKA2Fj1vBd3WlkpN4sEIwwt/KYC3ujq4+IhVQil8Ewm3I3YTcHdCk
	 Xyo+cFvl6aSYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0A7283DF7;
	Thu, 28 Aug 2025 19:26:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D3AFF92D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 19:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA0D140F25
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 19:26:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DFdG4QfApycy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 19:26:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42a; helo=mail-pf1-x42a.google.com;
 envelope-from=vnranganath.20@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3882040167
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3882040167
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3882040167
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 19:26:05 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id
 d2e1a72fcca58-76e2ea21430so75208b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 12:26:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756409164; x=1757013964;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZNKCiEXVNimfghYWuXUmKnsDjiRGghYXpeYN/YwzGig=;
 b=MVRoe+l2hnOE6m3ggY/dF7Lhim0/AX4GKq4CZS1zGb6xsHHo2DYzB/0pMQo97jVKk9
 cRsIsk7jZ7Q7y3uUjx942c4eQn2I0HjJDI3LAlwS5LtxXnFd4AY4Llqsbt+99BGkURz3
 UIOEWZoMt8ANGZ+3MNNfZYz4jjomb15h+hgduXWr42jGjhDbLdWr4cq8shgMpOcf/i7m
 3E+6tt8dzH5bymqZ498opVV1XP05hb1zymNxqFymOAiq9cDYMQvOIXzEclWtXmxwazzw
 LbH9GqM29hRxVHbEG7WWAce5+cL+wqjz3QpHIC6Kyuf9CUNWR8GFfUqla29imW6OLO4P
 mHOw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXLuijefBoe071l2PR1o0wiGyeE5KSjnIggny7aE4n/4RaQBJ+ucyJtHE5jm8nBoboHOywfBv//hV7b04y+ijU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YznAxsL4JpQZJTCQ0Hkn+0IeCqlO6Xucaypm5pC5drzEvZ6xo1w
 WuUJTVInaBrsQ9EAxPxfog/mGFHxt5LcZE1aLvYLtAyz0KYK10EFsdNo
X-Gm-Gg: ASbGncsYwoky6kI1SDPVhddlccdoG2z7/EC39Hpjbm1jTqBA7N/erqARWavaBq0fp7+
 FRU6A6cq2ixJ85uw792YPT/tIYkcOFgRBj4/aSe9kv8D/gjhfQkE8pwTzdJUUrqPqrCHOw3aedc
 ltVn8IApMHseTqgs9WwOriQyk3s/ay3Fs2uFWJfE3O5ZK3Zmx6Mu0wUy4TiUgLAbtNtvcrGsf4s
 UoK3MxQOh6ej3H98VlIDay6vfMIxSz14UOzKrbYyNK1700GvEuWXm3XT7lDudO3gsnPMmvnqqrp
 jxvQ7fg7N8hjm35acQYWJDogMePevQFTStf/elkH6RGBr0h+GELe7gfzr4st9UV6uloA6PbXtwx
 RTF1fttvOgNmzoztjXY1nOu7E8OS+Bw==
X-Google-Smtp-Source: AGHT+IGcyabkfIuSoXCOILkTR8xN93+W1H/AO1TgmOhp+v3ddQPFBzXanNv611WeYtUQcZLAXv1+Hw==
X-Received: by 2002:a05:6a20:729f:b0:23d:da6d:b050 with SMTP id
 adf61e73a8af0-24340dc88e9mr18828886637.6.1756409164421; 
 Thu, 28 Aug 2025 12:26:04 -0700 (PDT)
Received: from ranganath.. ([2406:7400:98:c01d:44cd:e101:4619:945f])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7722a2aafa2sm221784b3a.22.2025.08.28.12.26.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Aug 2025 12:26:03 -0700 (PDT)
From: Ranganath V N <vnranganath.20@gmail.com>
To: vadim.fedorenko@linux.dev
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, skhan@linuxfoundation.org,
 vnranganath.20@gmail.com, aleksandr.loktionov@intel.com
Date: Fri, 29 Aug 2025 00:55:51 +0530
Message-ID: <20250828192551.13216-1-vnranganath.20@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <29cbde11-b7bc-4eba-a0ea-b20e4a9ecb79@linux.dev>
References: <29cbde11-b7bc-4eba-a0ea-b20e4a9ecb79@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1756409164; x=1757013964; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZNKCiEXVNimfghYWuXUmKnsDjiRGghYXpeYN/YwzGig=;
 b=UCK8ATvctOJBKlgOtN7Ci2TtOoU1GCOtCbCZ8fES9JJ6YbyHb+A5oOYXYPf6/MbuqJ
 pIco9Wmi7D1ub603oRbvNmTbSBmhPGGh25GN6pejJ4+viCKmqVJ5k4o+lEKL1goXDyqA
 Fbkd/qAsywrL+6gDbiYtpIJpt8PTUNCB3KnY1hZhI/9FSs7s9BbJCECXh26iiKSHFVYd
 kh5N4oCW942NfyhwXVQeLM8VQjGam6FzFPkH4Bm41zNKRjnbjqaV2GLQ937kQxU0HMz8
 Jrf6WD00b4FbVdlfPh3IDLoUYcN9GSsHHxHhGl7Ifj7c8SsuWVRu5bADYL+TM+bifsRW
 Nf3w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=UCK8ATvc
Subject: Re: [Intel-wired-lan] [PATCH] net: igb: expose rx_dropped via
 ethtool -S
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

>> On 28/08/2025 12:42, Ranganath V N wrote:
>> Currently the igb driver does not reports RX dropped
>> packets in the ethtool -S statistics output, even though
>> this information is already available in struct
>> rtnl_link_stats64.
>> 
>> This patch adds rx_dropped, so users can monitor dropped
>> packet counts directly with ethtool.
>> 
>> Signed-off-by: Ranganath V N <vnranganath.20@gmail.com>
>> ---
>>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 1 +
>>   1 file changed, 1 insertion(+)
>> 
>> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> index 92ef33459aec..3c6289e80ba0 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> @@ -81,6 +81,7 @@ static const struct igb_stats igb_gstrings_stats[] = {
>>   }
>>   static const struct igb_stats igb_gstrings_net_stats[] = {
>>   	IGB_NETDEV_STAT(rx_errors),
>> +	IGB_NETDEV_STAT(rx_dropped),
>>   	IGB_NETDEV_STAT(tx_errors),
>>   	IGB_NETDEV_STAT(tx_dropped),
>>   	IGB_NETDEV_STAT(rx_length_errors),

> This stat is never used in the igb driver, what's the benefit of
> constant 0 value in the output?

Hi,
I initially proposed exposing it, but after reviewing 
the driver, I realized that stats.rx_dropped is never 
updated in igb. Exposing it would always show 0.

Ixgbe behaves the same: the counter is present 
but never incremented.But this patch wouldn't provide meaningful data.

Thanks again for your guidance.

Ranganath
