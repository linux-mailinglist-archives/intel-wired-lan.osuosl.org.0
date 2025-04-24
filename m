Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D16A9B571
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 19:37:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E7C682077;
	Thu, 24 Apr 2025 17:37:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MCx9JBT2NNAc; Thu, 24 Apr 2025 17:37:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F10482071
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745516252;
	bh=x6A+BmOhRjEKa2A7bNFOh7TDTW4+s5FQeNV+pD9zutA=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G9IGzEDYvKzaHE6e+gsiFUdYAOwvzVIQAQF6RYWtQ4WCzWrqqNq2VHNxejTbNlo/x
	 bgoVmT1cduccYKomMbUtqOOsqDmxY2f53YSNTKfqfO1IilhiG/CgPzEM7CqHkkYCrs
	 CT1c+ueVAlG/Inr1UHTbF1p+qIU6dqqL4vEvEycbc1g0cY+/Utqb0wzYqblnZx9x15
	 GvkFgL8NfXsmkBO65YSm7XmsvhZUK1fXoj6EitPT6YaRyN8qrEBegrIzaJg8x1vep0
	 AvGeOmfyi9jCL9nO5OIpuaMjq0+re3J/0tD+GtXI45a4yr0S3NqQ8UmVF8V12xBCZ6
	 VSiChVT5yKbfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F10482071;
	Thu, 24 Apr 2025 17:37:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A9E6968
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 17:37:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B9BD405C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 17:37:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6bRoJtMNNOJw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 17:37:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62b; helo=mail-ej1-x62b.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 81D9C400EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81D9C400EA
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 81D9C400EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 17:37:29 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id
 a640c23a62f3a-ac3fcf5ab0dso217908966b.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 10:37:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745516247; x=1746121047;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=x6A+BmOhRjEKa2A7bNFOh7TDTW4+s5FQeNV+pD9zutA=;
 b=mE6mT8ODsYyQTNBmPF+6j5Ct+OS8YzamuLdGAjWdJ13IVI7WdCpWzd4Rws5vz/vqrO
 WEQH/6Ok41zLI4aks/H0rXgRgnlrNTuuaAhpqW+NTY1IdEn7VKYhywpHmZ1yPjOQqNzl
 S+JQS3wASesJnQABHRZrT1vVYInjsYp2APSYGk08oARzeMxtV0EE+z6P25NBRnhSU0FC
 ge5yycgS8bqx3fNc9b6Bv2+isX5HWiJFsX37oava/42m40plBdyGwcjkejZBwtzQTszC
 c/R2db+ajtwnpBwPrKB1vNGOLLtCAPMRDgh0NaIu3+r+Jdzvyco0EnErlf0XafwnoLA8
 eRzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUoH/LVc+/kJafAf5Xd4ofyulTjEf4HFkumbrC64A9eginEfNflmsEzWzeijZmmOx9xspLeIdMpdsvy7KwiXdQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxzaJD8aSGZOjztKxb+MgdO0qcEfpoMHvdVRQ6GvslMjasb1J+N
 0hDndactBvC5SULgZTPrNnCHbw+HfwMi4ZMCcnbe+E625BsmVlIwpyccZc4ldQ==
X-Gm-Gg: ASbGncuwYbInAoHJiFVNzt260Rs7tdBOM/aIp62MGsVGJA42p6/IDsSgVRU9eU6Ny4j
 T39naRIt/go8qRbS6q/+lI1D887y6pY9WDzcdFUPO6l41c+cAz8Jbq/zl6NQRXP58xvKW4CfLWN
 V0ZLT5KiQOsCwHKCCbKlPqSKV68CrOXY4ha4ZBVd5vfBgowBO0pHHE4oRV1gQHpN6uZkMhC6XvW
 elTrKsQg+ywq+LjATq23TmyWl7U5o46It/OXozZRBhNrCi0QJXevgCeef5wJoL1SRS0qH+tsOvl
 YLC57IYxbAJCXnGrKImrOEea8+CxdhWffQx61Mk=
X-Google-Smtp-Source: AGHT+IHKWpWhhsKR32jfktbVGjn1ALPFr2s2NdvrcRHWijC5IHeb2inGJwixc+7kSpHIfT0i6voQ+Q==
X-Received: by 2002:a17:907:3e82:b0:acb:39bb:f880 with SMTP id
 a640c23a62f3a-ace5751c70bmr387066366b.54.1745516247597; 
 Thu, 24 Apr 2025 10:37:27 -0700 (PDT)
Received: from [10.2.1.132] ([194.53.194.238])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ace598f7275sm139203066b.78.2025.04.24.10.37.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 10:37:27 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <2a80cde6-27d4-46f2-8ad0-b7feefd4764c@jacekk.info>
Date: Thu, 24 Apr 2025 19:37:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
 <20250424162444.GH3042781@horms.kernel.org>
 <dc357533-f7e3-49fc-9a27-4554eb46fd43@jacekk.info>
 <20250424171856.GK3042781@horms.kernel.org>
Content-Language: en-US
In-Reply-To: <20250424171856.GK3042781@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1745516247; x=1746121047; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=x6A+BmOhRjEKa2A7bNFOh7TDTW4+s5FQeNV+pD9zutA=;
 b=V+e5ZWLhViWIOmEWYzBH3XoD4SZhqzZOrOiaBdnLw5QLWCEv7tH33AH4mZMw7zCCDZ
 QNQjA0UTdGPaeqmliHW80QT9XhCChhT/DNNCN2xTu4FwaVYTnd/hbUFTOXVKLtjM/X8k
 s3YHyxphNouLXP/J+gJRVnNcLnzq1TcOnaJpiIHV6G2vQnTEPNRf7bNKnZKWVSBcEnnK
 ydZh+iTJQFKxvv4PTbMczDl5LYyUekfCusoBCN9sFwq0tIDV98br534qfiuHaC864mBc
 6sAJOve4Dv1Lq4ETe0FjpM2whIOU/xAoB9RwpWdlSyska4cimM65d5p9Ca/qhihkA81c
 Oh3Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=V+e5ZWLh
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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

> Although I do wonder if commit 4051f68318ca9 is backported,
> will this patch (once accepted) end up being backported far enough?

Stable 5.10 (and newer) already has 4051f68318ca9 and ffd24fa2fcc7:

https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/net/ethernet/intel/e1000e/ich8lan.c?h=linux-5.10.y#n4139
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/drivers/net/ethernet/intel/e1000e/ich8lan.c?h=linux-5.10.y&id=8f1e3ad9456935f538c4ba06d2c04f2581ec385f
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/drivers/net/ethernet/intel/e1000e/ich8lan.c?h=linux-5.10.y&id=eb5e444fe37d467e54d2945c1293f311ce782f67

In my opinion my patch should be backported as well.

-- 
Best regards,
   Jacek Kowalski

