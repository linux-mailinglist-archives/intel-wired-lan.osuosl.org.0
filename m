Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56AB3AB4A56
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 06:03:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A74A681EF7;
	Tue, 13 May 2025 04:03:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RaUCiTIjb_lR; Tue, 13 May 2025 04:03:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 112B181E98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747109025;
	bh=nzzB3RQAsADcI31qVz9GqQrs/q8/eBx88YSQARAhtFs=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=loRmhGxfgNDKOQyCEswBN8ZEh+A3Dt0MZMjvAXbclcoDtYbLIlU3qJZnnVUQhZABj
	 taEUbZMeFvc/hsAYvcaOkKUHeJSySDxYIFE2Z7jrpg8C5Dsz2iYCEewNgSN4ZWsnnV
	 07DOriE5nEfDBretgBUqpwsIlmMCiP1dzWezv/+fsDvF499hUEP5FSBtOdP+CeaHDJ
	 ELjeQCqa42AwIkVrOiwtlzpnoWzC2/2Z7m0ng/jAq1U8AysiZgZ4vwiQk/UIDUFKMr
	 FPobpqRY/KRVSFfsdKnvedcp65sSy4gxb8PEKWhDCFO2y+YQWSTNN9wupr0dcVguEh
	 g6VCwC/23nwEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 112B181E98;
	Tue, 13 May 2025 04:03:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8ED83154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 04:03:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FE8A608F0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 04:03:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jNcnSPCdItDE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 04:03:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::430; helo=mail-pf1-x430.google.com;
 envelope-from=haifeng.xu@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D4535607EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4535607EC
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4535607EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 04:03:42 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id
 d2e1a72fcca58-739b3fe7ce8so4686515b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 21:03:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747109022; x=1747713822;
 h=content-transfer-encoding:subject:from:to:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nzzB3RQAsADcI31qVz9GqQrs/q8/eBx88YSQARAhtFs=;
 b=DSdb4mkFNbp4PPmqOhZljfeEybj/JNp5uKPlbJfVzbDmsLBNwTOGjoYhlzBFQwMrlj
 iD8YIdYPlDpUbjb3EIsS/HPymTquYhZmQLAa39Eb7znX3cZ7ENpi41QXGRQZ2lsVP/6U
 JtuVABfnaZKru8omXewHr59/ikNY2sgQNYr9d259swGzrCZeNJShrsA/QkzqicJrgVXl
 cHAug3KYXVCv+b0MTnjUTJcbq2GzrXUWc22x9iYvWCPdB29MG1neG3E9rm3SqYI9pEMn
 393ZoRTSNlZ7EMAGIh2ExYGHfQmLUzl5RIGS0/KXm2hxY+rRnZFiqss+zk13Y4vpSTy8
 rIQA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVwPvq3/wbFg1E02M8I2s69PpErGRlUOgK8F+nmTgaedHSMvlyhchkillt3UrBJWVQ0D0yutMqKypBEqKdMNn8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzwAmyJ6j4eh/lhgIMp5o719EhRTgRtAnQ2tfLj6Ipi7Uw4j/No
 I6VcrnQHbNVntXwTIXOSQ2lFJFlnS+9HPAJOs9avthm7xgXGKbKdDMIEe8t9pX9pbuqzfFBe3vi
 ZfjzD8w==
X-Gm-Gg: ASbGncvmaOYhCTEQiuuA2rcccTRb2XV9n8bIXJ2fE9QfFLiSEd2hfPESZf4kWVbaenP
 2Imjc1/4BHWuax5z9nNjIzX9gYxLFilawgl44RgzdlPlYqJ05NHGKE2hvA2ldHpgFaRcOIZn7QT
 0GiXqtGdby+qOJtDuvCaUwBazfvPaWR34ULRwlxoafIuOKzQMrcXoQqXJudHGri9T3RXRpybS24
 7C7q9qUReInQ7HKRXJWuuxKzMn2RqY2rvEoO9YqmBd4kBwGEx/J5jnwH3lFYLgHsRYrIK4NgoTY
 KIauA009/zrE6/J60ercYJlIzUx5zr6cEJdqm0ni7CmZkbfEAaocyksgGe7cp3eO
X-Google-Smtp-Source: AGHT+IE6FehQ0Pj2VSk9mpLd2SRg9MECNcebEAawn/KZn7HTf7AREaTP1HNWEQRmjJgttvr6iHqtPA==
X-Received: by 2002:a05:6a21:3292:b0:1f3:418c:6281 with SMTP id
 adf61e73a8af0-215abb4f8f6mr21761065637.4.1747109022091; 
 Mon, 12 May 2025 21:03:42 -0700 (PDT)
Received: from [10.54.24.77] ([143.92.118.3]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7423772750bsm6819207b3a.42.2025.05.12.21.03.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 May 2025 21:03:41 -0700 (PDT)
Message-ID: <0c8bf3f2-1620-420e-8858-fe1c2ff5a8e9@shopee.com>
Date: Tue, 13 May 2025 12:03:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
From: Haifeng Xu <haifeng.xu@shopee.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1747109022; x=1747713822; darn=lists.osuosl.org; 
 h=content-transfer-encoding:subject:from:to:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=nzzB3RQAsADcI31qVz9GqQrs/q8/eBx88YSQARAhtFs=;
 b=TUD3VWdPBr8jF2VZkhdaV4/+1Kl9PxS4akaJ2lQOAz2eNHClbLRg86aHKA89sfMUeI
 P0GD1s2LeRoS0mwQi7sAu4WjxqB5gTColBlRsVR7XDprNSxn63bdxl5P7WCvoEkZp6KR
 xDw1SdMWMCGpsdJeQEdhKCZbKNa3VScuB8Sd9BXEkVHitLsmKqAZ3IQ6wj7aC0vSqfTT
 /Z1rJmZnqlu4xHBMHkE51VpCA6XQzCHVpjIUwcw4ej7ZR+yyf67VhLlV52IGL/dbENcz
 NlsNs4VMiBqHp9sh3O4IJKhj6eF7l0Yfr0LbtESbcOpEeh+FACbxSiJgYiogLYzsEfyw
 DwbQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=TUD3VWdP
Subject: [Intel-wired-lan] i40e: How the packets will be processed when
 status_error_len is 0
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

Hi all,

	If the packets arrive at the rx and then raise soft irq to handle it, but in i40e_clean_rx_irq, status_error_len is 0 and return.
	The data isn't fetchted from the rx buffer, so the how the packets arrive at the rx will be processed?
	
	FYI, the every rx/tx queue has been bounded to one cpu(64 queues, 64 cpus).

Thanks!
