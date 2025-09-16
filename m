Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCC4B595B6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 14:05:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 444CA80E05;
	Tue, 16 Sep 2025 12:05:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NdQjmIm4y6Bn; Tue, 16 Sep 2025 12:04:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8E8F81141
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758024299;
	bh=IFlVJcArwRuB5pQMhIHpC2dkGPMYzDZIC1g0hf8SJZw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y89vTNITPxbYYN06YLomu7ddIGw+MQBafMuaihSvtkMOk2ysTiLtoOguEi0t/lvX9
	 Y9Jjuj4LIpo80FyvPCbciTNHMpRRVjpkT2UMbD4L88YjHAxuoJEeWN0LZWkQKKJcyT
	 XyNL1vVNy1VMit7EzbMV27Y8T5xHShRb15aK51260zD8gd82SKny+CSOIVdmXHg+z3
	 sMmkQJ/ZeippIWbZ9E1aQqvgPknbflYXdInROCaeqd8Gn2gImhCAJkmC9eiaxjoNsP
	 R3lDOdBES7JbLxibFG1j/CSM2eq2Nmpb0hgwYkKd46atfm/kYbJOjQe0fUIyAo5+qd
	 kP9AGnaGO/H5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8E8F81141;
	Tue, 16 Sep 2025 12:04:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 05B0B199
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 12:04:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE7B740818
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 12:04:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kvbaUGbK1BqQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 12:04:56 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 77AED40802
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77AED40802
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 77AED40802
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 12:04:53 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-45cb5e5e71eso33502795e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 05:04:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758024291; x=1758629091;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IFlVJcArwRuB5pQMhIHpC2dkGPMYzDZIC1g0hf8SJZw=;
 b=I330KBUwYRg0+7RDHnLd9d3zFzwHTd5wIdzDrZykw8uOpX9GDIY+7lGppgvm45r0Gt
 RC5ZTL4jy7vYH1THbWZqxLGE5bkAueNa4fTjoBJpL5kgZcPbqWTDAl2/TRiZ7ePmqw2B
 zu40d6Fy3CuglrEJtJ3A2wTDyDFZnh5G3y1PH26TjUQkegrf6vkBtJt9XbhhRDG72YN2
 KpZUYVPlDymI/pwyPKGDA9IsU2MY5HoJjepHLrK6+xFea5sExQ9iLUhPyyxcDuxK9pMC
 CpFu2rIcH2/hu2BaHYjRl9YR69QwxiO9XkhHRKjhcxQj90QFA9NT2GKjNC6CJshcPc/d
 oCtw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVteXNwT6q3e7fPlHcyTXeqsiv+7ZMG9aQWlZEwBoEzhGDs9TTP3nVY30yijJccYxvHv0l/Hsq6UbxjR+xnLOY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxwLgR13r987mrvnZCRNQTqkh2sYwlHac6hmJOZmdgcMB/zH4S9
 AtE1Xjyu7PmRKPFUXKNSYD21e01Nikt19wVVKuqGnqpz2ikNtHETYhsuu2HGPjMkhxg=
X-Gm-Gg: ASbGnctE0c3XNxaNVSasi8O6NP3xEv0zNQxZEgAYze/B6LW26vADAUxT0mRKMfyKydg
 1e782SL9IlkssM71vCp3LQGSE39bZ5kBXDIQqYMiwV5b7rqg3jPeY0o5Dos0AUImsWS1xy2rcXJ
 CUeh/VUPs3PzgYbe3UznXwJ29vjgeCsJvrmG1IYy8yGdCGBJC8Xe8TAj4YDaRR3/PLFHakL6Pt4
 OQSEm2MmMdNwZ5GLIYX/4DHwL1dMaSSQ6oq9s38iUzyW1o+HbpHfr52tzQo8f8FhdzktKFBXNki
 rlxLrjoh3RyLrCrNNlApM3bc8CDur9JmPMxkjaXFxrm+vP2cVfV3eC8xBY5H2sJ1h5HLDGm9WkX
 o7IwoMxvYFL0glTOgvIYb+apRsfSHSztLldI=
X-Google-Smtp-Source: AGHT+IHXZCY8k+7hYQ8XiEwjomG782rdKfYg9mbN/tQoUYffmZEo0KfqDGcVU/8jZ68nDml+ck/41g==
X-Received: by 2002:a05:600c:1994:b0:45f:2cf9:c236 with SMTP id
 5b1f17b1804b1-45f2cf9c56fmr68757235e9.4.1758024291301; 
 Tue, 16 Sep 2025 05:04:51 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3ec486e6193sm3410937f8f.25.2025.09.16.05.04.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Sep 2025 05:04:50 -0700 (PDT)
Date: Tue, 16 Sep 2025 14:04:40 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Cc: Mina Almasry <almasrymina@google.com>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, 
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org" <horms@kernel.org>,
 "sdf@fomichev.me" <sdf@fomichev.me>,
 "asml.silence@gmail.com" <asml.silence@gmail.com>, 
 "leitao@debian.org" <leitao@debian.org>,
 "kuniyu@google.com" <kuniyu@google.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Vecera,
 Ivan" <ivecera@redhat.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <42xbm6obaa22qoictrgaeqza76iucvasquthb3igqhozrlxmbl@dtspujve2njn>
References: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
 <CAHS8izPU7beTCQ+nKAU=P=i1nF--DcYMcH0wM1OygpvAYi5MiA@mail.gmail.com>
 <SJ2PR11MB8452C5DFFFDDF084EE1C066B9B3AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ2PR11MB8452C5DFFFDDF084EE1C066B9B3AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1758024291; x=1758629091;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=IFlVJcArwRuB5pQMhIHpC2dkGPMYzDZIC1g0hf8SJZw=;
 b=wjohAtX2NVREHyRLZyLcQv40DxeJKJ8Dtmou3VDPyrX2NX9fY9LeDeockKhKwIhU9t
 dy2P71IblK7MOlNUclvp9byJdHQ3cdqUCLW+pFlo5NIiIL1de2fNhwY8BnXlllaC1DUD
 hqrZeDfbMYwrRaUIQAjz3niTkz6Az4DqkboPAR3gA5e4ocF5JtxpBaoiswm3xLvIzKYx
 RbYvjEr3UrEGb/feGxneLqwUWCL28px/++fsYbupsSnpmkrORxN+ybwLE6+kTBoZ9VbK
 NYh+i4MwR08f4aF+pBhsCm3OFVT8pYnbvPnRTo6p36Mde3A8357ixHgpfEbg6o67CNwT
 a37Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=wjohAtX2
Subject: Re: [Intel-wired-lan] [RFC PATCH v2] net: add net-device TX clock
 source selection framework
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

Fri, Aug 29, 2025 at 09:05:02AM +0200, arkadiusz.kubalewski@intel.com wrote:
>>From: Mina Almasry <almasrymina@google.com>
>>Sent: Thursday, August 28, 2025 6:58 PM
>>
>>On Thu, Aug 28, 2025 at 9:50 AM Arkadiusz Kubalewski
>><arkadiusz.kubalewski@intel.com> wrote:
>>> ---
>>>  Documentation/netlink/specs/netdev.yaml     |  61 +++++
>>>  drivers/net/ethernet/intel/ice/Makefile     |   1 +
>>>  drivers/net/ethernet/intel/ice/ice.h        |   5 +
>>>  drivers/net/ethernet/intel/ice/ice_lib.c    |   6 +
>>>  drivers/net/ethernet/intel/ice/ice_main.c   |   6 +
>>>  drivers/net/ethernet/intel/ice/ice_tx_clk.c | 100 +++++++
>>> drivers/net/ethernet/intel/ice/ice_tx_clk.h |  17 ++
>>>  include/linux/netdev_tx_clk.h               |  92 +++++++
>>>  include/linux/netdevice.h                   |   4 +
>>>  include/uapi/linux/netdev.h                 |  18 ++
>>>  net/Kconfig                                 |  21 ++
>>>  net/core/Makefile                           |   1 +
>>>  net/core/netdev-genl-gen.c                  |  37 +++
>>>  net/core/netdev-genl-gen.h                  |   4 +
>>>  net/core/netdev-genl.c                      | 287 ++++++++++++++++++++
>>>  net/core/tx_clk.c                           | 218 +++++++++++++++
>>>  net/core/tx_clk.h                           |  36 +++
>>>  tools/include/uapi/linux/netdev.h           |  18 ++
>>>  18 files changed, 932 insertions(+)
>>
>>Consider breaking up a change of this size in a patch series to make it a
>>bit easier for reviewers, if it makes sense to you.
>>
>>--
>>Thanks,
>>Mina
>
>Yes, will surely do for non-RFC submission.

Please, do it always. You request for comment of something you make hard
to read. Does not make sense to me :/


>
>Thank you!
>Arkadiusz
