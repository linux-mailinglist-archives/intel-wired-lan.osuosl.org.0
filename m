Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 550098C48A0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 23:06:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A34C409C0;
	Mon, 13 May 2024 21:05:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WPR_PFjDRlL2; Mon, 13 May 2024 21:05:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1FA540983
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715634357;
	bh=ByH4IXOe7meQgCOsgj+8mcZz2ctYq1wZFMn2SyMyJGU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BUlXiJ4vohsUSW2Sz3bRAOJD7xOFAsy03tHA3wnlnV7jsmK/INZ0wqYFjNie84559
	 dOXx5xcdm2Aq88H/zFXVAT8v0+vxF1B9WnJsfe6Ar3KOUBEpciYRgITUUxL5jfri9f
	 Ymbb8EwX1gqejolqsbMoh3B9Ik2ltgxP7odBdYPCbGGT1KvxmQlRBEctrkFg56opeq
	 /LN8MaqDmDu9ZwnK7tCwHXnl8DJ/ZriJ2EMuiV3Mr9PJuGo3gLb/aqmf4I3UyofCDh
	 srQwfOvPjLvjjx60iPnph/TFrGkpHuIMWtXkKF7rKxc6Fk9QFFM7lQXsIgqw8kwwuq
	 mwCpfV2KfA/Gw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1FA540983;
	Mon, 13 May 2024 21:05:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6ACEB1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 62DCD81E7D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:39:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IgqXOLrIPv7v for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 08:39:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::22c; helo=mail-oi1-x22c.google.com;
 envelope-from=bagasdotme@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EB11E81E76
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB11E81E76
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB11E81E76
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:39:16 +0000 (UTC)
Received: by mail-oi1-x22c.google.com with SMTP id
 5614622812f47-3c968f64cdeso1602059b6e.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 01:39:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715589556; x=1716194356;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ByH4IXOe7meQgCOsgj+8mcZz2ctYq1wZFMn2SyMyJGU=;
 b=Zb248JjdM4q+7xZhWT1CXVOxWhZuB8G0b5w+ftMOY1HiNrK0djw2NvWrYjpNpICR/r
 LOVmnYX9J4bZVCEypEB0xp4nMU4GspAVNkjWpvy1eH76xrmbtt/ozyrPqKl+ArWjd3TJ
 qcMWO9/LbaljwRsdWuK1yB7fscFKGrI6iINTfkHcOyS1HuiY1Mp3GX6LVdDHEgFKVrCD
 aJXRnpdM0/RmECxnH4dOw3E3QpRtSqkGl651oDHp98AItiWXoyLHpU2Mptj5ZePV1fct
 cPP7PDEsYOfLj5gTcPNlU/USiL4k1a2mugYVaNldjD63u4vOZNXXje8xeqt43AzDyt1o
 liBg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWeWcDyS0ens9O2fiYt4LtJW519PS7Fs9OuR0y5Hs9BeqYpzRPnz5NrgTi+FLAGrSF4h16rqTNzhKUp9mD40lBMH/XFkp/1JBsngnwixAxtJQ==
X-Gm-Message-State: AOJu0Yx50ub8xGS2P187Y5pIw34nZGq2k8UjcfSwsO4ScQM7SkC9L6FI
 YvfJ3mTytzzOioavp5tZplO5gt/SAr83TZZpgt+MSt12ZIuIGPzA
X-Google-Smtp-Source: AGHT+IH6PuFjkJnoKBx1FZT+HCTTmOyft0mWTEdDCJWk2yAMPypNDdyTUqOIUPS6yaqMBz/n9DpUFg==
X-Received: by 2002:a54:4597:0:b0:3c8:665e:1e57 with SMTP id
 5614622812f47-3c99706d302mr11862624b6e.25.1715589555774; 
 Mon, 13 May 2024 01:39:15 -0700 (PDT)
Received: from [192.168.0.107] ([103.124.138.155])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-6f4d2ae0da1sm6899069b3a.107.2024.05.13.01.39.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 May 2024 01:39:15 -0700 (PDT)
Message-ID: <4e55a37b-f225-482e-ab68-4ab4e839da4d@gmail.com>
Date: Mon, 13 May 2024 15:39:10 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Regressions <regressions@lists.linux.dev>,
 Linux Networking <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org
References: <ZkHPRBLlHJpRytIB@archie.me>
Content-Language: en-US
In-Reply-To: <ZkHPRBLlHJpRytIB@archie.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 13 May 2024 21:05:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715589556; x=1716194356; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ByH4IXOe7meQgCOsgj+8mcZz2ctYq1wZFMn2SyMyJGU=;
 b=YXUiP+guDhz9yU1xdc0idpjmAqkfJtSuYL+mtnVa4KLLxVS8Fub7J2/Qax4noBpR7I
 X9omnUnFUYseIjPTe2LOvBeg/7lx7NCKibJDu5oAs9s0zuldzaNJQjwvDfbxavzsf3w/
 yiaiQbqFmUyVgpbQhGTOYTHsojJGz66ZfPFJDSUFw49AtDvVEIFfHQsuij9NVwUBqGdu
 yAts+p1lWKtfB1RuiW02o5iK8v+NKKTFDfUQR1glhi8ZTIGahmCZmxZtIgGPwyrC0kM1
 wEskFi8X2+bdRtQ3blY84hMGYfHrvBPGGXBilPSdvwxYi+hLXtVJm9Adx0AHCnnnlZu0
 XYRg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=YXUiP+gu
Subject: Re: [Intel-wired-lan] pi
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
Cc: lukas.probsthain@googlemail.com, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/13/24 15:28, Bagas Sanjaya wrote:
> Hi,
> 

Please ignore this thread (subject messed up). I will resend with
proper subject instead.

Sorry for inconvenience.

-- 
An old man doll... just what I always wanted! - Clara

