Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2222DC3A9E2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 12:37:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C867D413CC;
	Thu,  6 Nov 2025 11:37:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 89uv9QtJn7D8; Thu,  6 Nov 2025 11:37:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AD82413C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762429061;
	bh=hjvib5l1jl7c+bMGrAcG+xXz8naE9IfiWdK2rk+q+nw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E4YixHF79gk6rHhbfFqH7D/zQIG2W1ecBZUaG8vpQEeX+qhbZoCXiGJIUA0ZhRZbJ
	 Cx5KA7vvqVG3VwUs0iAsrr1tY5ornuDE0qnV1s2XYfATRuhKuN4UZbunVmEl+Y7+rF
	 jzZCnxmKD77vivnwFpTkzxEqtonMBe9ZyzDy4GAiDTapdFqb/EL7kjblxhdVYbdnOs
	 EaW0CGbkiK8t8kVHCmviiyzku5ItAX6hIvTBJqY7tjFSeg7845TN806lzv+X/AbTbc
	 BIDit39s9d0vGkiDB4Wc9C56J7xs5wCt5K36emQ5RYKxZhl0g4xiuRFkKgA2Zzf8y/
	 I8SgfMg8TSbDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AD82413C9;
	Thu,  6 Nov 2025 11:37:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 426D3A64
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 11:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3437F84237
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 11:37:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uYTyew8iRxBc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 11:37:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::436; helo=mail-pf1-x436.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7E44284230
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E44284230
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E44284230
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 11:37:38 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id
 d2e1a72fcca58-7a9c64dfa8aso713209b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Nov 2025 03:37:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762429058; x=1763033858;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=hjvib5l1jl7c+bMGrAcG+xXz8naE9IfiWdK2rk+q+nw=;
 b=P9P8Ch7cg2B3A3mayYfWO81jon8ylLjxyJUo9zUNtlPYekVPNi3nyAodslhMYqf+CV
 WLrTHiZf0+wmTEeG2TBeorq95RuR3e/pZAhegg9C3eZME0e4T/D3n8ioeeH98mKCJxkF
 awVP9u6S59jWjUtJ19ZFRVGu0qageCRNeVqsQdWpWKR6dmrDFcJ1Nvqns+/xpzR6pJgw
 z4qnyaq7+mH0Xdzs8zvmaK11nvXhrv6ehgv7j0Es5WJ8UFVSbALBjQdT4mJCgmmLmC+R
 fxsuald+MC2soyz6DQYzh22ZM1tuaplbxyYbSmwIjQhXRt0TzYsmGTap6vd3Z6vxCwkH
 XVQQ==
X-Gm-Message-State: AOJu0YyG9S/mZost7nkRl/bYOiw7rf2qMCg4Qt/INLoayNjZPk0crzIf
 q+0dk6zdyV9MVSJGkfwt8iP97Pw6JpqmqJEqKO6ppNJxQP0XstF+i6SB
X-Gm-Gg: ASbGnctlFh0GVpbfmHy7qM/312VisX06Hp4qykCFr9n7qhaccrnIahT7ZSh/iSYQ3Lm
 wArn27yvwP4T6TFyFvcu8kd0PfUcPG18rOvjfTNnB/bwWjKFcehuGsxLRFO2VymfwDwK0MNqJry
 w32pu9epEsxqltEXvNtRtcw3LgI9X6pfcZSD+5WgvAjJYhbC2hj1bhRnCsflf4lNSu1kKkwPiRm
 VpRFTgKc1oq0YlHyvgtrHJalXBv4Mu3ULc6R4PWqgU4WwM8ev5ObQNgpMdALHWJO1GDIf1HbZAn
 6M8z/nLaXPTiS1ZKMbb+TaAlmr2W5XYzWsqw7Wnv5yoEOpCaEXY/pQ9d4cdWDReA9JFwLC6AfT0
 FYVqJoTXXyEMAucrfFmcUgXWltlsT9k82O62/rSjR0OAxrHeMjChY/YFfACpT7toYZtX+/X5eGm
 LOQxz9x7bURw6kBQs2C6YSZm8v4c9YlVeqA/9M9nPS3ubGYEWx
X-Google-Smtp-Source: AGHT+IE49q3UoW4OFpWbNglvInQNVRlN+yhDQFQFunxA5RskR8zFPZ2d8CXgzPfWY0cjgsF/X3MOtg==
X-Received: by 2002:a05:6a00:4601:b0:7a2:74e5:a4a4 with SMTP id
 d2e1a72fcca58-7ae1eda0949mr8034636b3a.19.1762429057535; 
 Thu, 06 Nov 2025 03:37:37 -0800 (PST)
Received: from ?IPv6:2401:4900:88f4:f6c4:5041:b658:601d:5d75?
 ([2401:4900:88f4:f6c4:5041:b658:601d:5d75])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7af826f9520sm2452518b3a.56.2025.11.06.03.37.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Nov 2025 03:37:37 -0800 (PST)
Message-ID: <f3c89a9182387cd0df012726fc30841aae8d330d.camel@gmail.com>
From: ally heev <allyheev@gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>,  Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet	
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni	
 <pabeni@redhat.com>, "K. Y. Srinivasan" <kys@microsoft.com>, Haiyang Zhang	
 <haiyangz@microsoft.com>, Wei Liu <wei.liu@kernel.org>, "Cui, Dexuan"	
 <decui@microsoft.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>
Date: Thu, 06 Nov 2025 17:07:29 +0530
In-Reply-To: <DS4PPF7551E6552E6053CC02144D0987191E5C2A@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20251106-aheev-uninitialized-free-attr-net-ethernet-v2-1-048da0c5d6b6@gmail.com>
 <DS4PPF7551E6552E6053CC02144D0987191E5C2A@DS4PPF7551E6552.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+deb13u1 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762429058; x=1763033858; darn=lists.osuosl.org;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=hjvib5l1jl7c+bMGrAcG+xXz8naE9IfiWdK2rk+q+nw=;
 b=MfaOyhWtPKhGQ7gEOKsC7EDsYnagIYlijS22vbZKwriwAwaSnvxKAMTOcyREI/d6Hj
 0ujIAtWV6A6woWUYtvTLOEVWAm86ArK6675L3I0KZ4TLLDRf35cRhfGAUGyQkWqCtPeu
 Rd/JAoJyiP9Gh8b+ADtVfDYqAL/DEzF0JCkk3BeNYe2ZfxOIkvVn8t9brZ0GQpiN1qQM
 JXtRG35e2nhHMFfOwaNo/h7+Y/clDDrP6CxvV+ydZmAs+0HnwYv116dS+5gMQ7Pme9o2
 B8d88kba3jWf/Abbbz54pdo8euZet8KryNQp2OIBjFLsQpqfxorAGCSeUI1q2NZ6Dx6+
 3P3g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=MfaOyhWt
Subject: Re: [Intel-wired-lan] [PATCH v2] net: ethernet: fix uninitialized
 pointers with free attr
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

On Thu, 2025-11-06 at 10:18 +0000, Loktionov, Aleksandr wrote:
[..]
> Code style:
> The new declaration + initializer is good, but please ensure both hunks s=
tay within ~80 columns in drivers/net/*.
> Wrapping like this is fine:
>=20
> struct ice_flow_prof_params *params __free(kfree) =3D
>         kzalloc(sizeof(*params), GFP_KERNEL);

I ran checkpatch with `$max_line_length` set to 80. It didn't throw any err=
ors/warnings

Regards,
Ally

