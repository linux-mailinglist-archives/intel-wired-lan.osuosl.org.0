Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E717308EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 22:08:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9EE22418AC;
	Wed, 14 Jun 2023 20:08:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EE22418AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686773321;
	bh=QKEC37msVGWMfEBwp3wsoVRHOv5lOMbjFiuolGa5L2s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sJ9QcGZMElF9VD1b1JhMer1DVkGjMRMbYl2nbJ4th0BDEzNJvsvBytALrA/Tau+1x
	 HRSGF5upe0bQYYKUdpkGc1IQ8KenaUe/H8ACWdyl3mnHh2IMgGs5rR3XQI2Dz3KQ5k
	 o1EJQ2sV2LsHzmiK6RglbKRtzHV8fTWx3V67aHxz7wJqJIcRdn2jodmDaa2vPxVDoc
	 xGENckomulkPzHGN9JX+rc6YXxF2WdxnNhul2TphCZ5ecvTJlzL+B+IzL9XE94Wbql
	 D4ZOn4QMEF1wSII0Lsenk/kLFhvSZnKlHRO/ffjwNzNFSM3WMnDyBl2jf522uW4E1k
	 JCgmDHirK2kEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CsXC4HS6agmU; Wed, 14 Jun 2023 20:08:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7772B408C8;
	Wed, 14 Jun 2023 20:08:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7772B408C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 486EA1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 16:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1ECE041B97
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 16:47:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1ECE041B97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PvZk8xLjqrNz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 16:47:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65BC041AE9
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com
 [IPv6:2001:4860:4864:20::2f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65BC041AE9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 16:47:32 +0000 (UTC)
Received: by mail-oa1-x2f.google.com with SMTP id
 586e51a60fabf-19f3550bcceso5017219fac.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 09:47:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686761251; x=1689353251;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=R27xkHouwiZkXeja44yLdq7zfor4HSLUtt+KIbyx+eA=;
 b=YyJglA1y3FXaxu/FA3nQzMEu0X09msmdaL/jsPo+GbBDUGkfpCKNJAZJeM3NpuEBYn
 CyzWPa2bIPgv2S992ZU01C1Diywr57dbMssFe0SR7qPolwNp8Z86Doscw6w1nhhcMbpm
 s/IqLEGODid51MxL6CGt2Dn0byoPH2fKGKHwKaYRTdhSMDhJMBeKZaDUG4b7lCLPdjTj
 h0qwb7D4644dOQklmaCuET2VzhCjuNMVbacTLphv1Kj91H4UmWrb01T4JMZtQKbqm4q2
 789vZC4Q8JPaUL//LYDYQBYA4JKR8ILoousDO/l8WdrSRxkmgzYpYSBOB2MIXib2BQlz
 tJaQ==
X-Gm-Message-State: AC+VfDxBkhJwj9Mbb+Vv5xpG1sUSNhKZhBqOdLjlyZ6nCiqmYHCZDycw
 inEcNEYTDweB4oO4sBORGy4ccg==
X-Google-Smtp-Source: ACHHUZ7uxI6uPZnOCDPv1ZzF3HlzvJwVuZi0A178t64EyAqar8iHnj9X/gBEABjgp0gM9ZY+F54gtw==
X-Received: by 2002:a05:6870:52d6:b0:1a6:4f6a:8a72 with SMTP id
 p22-20020a05687052d600b001a64f6a8a72mr8394370oak.37.1686761251286; 
 Wed, 14 Jun 2023 09:47:31 -0700 (PDT)
Received: from ?IPV6:2804:14d:5c5e:44fb:90ea:5d38:822c:1759?
 ([2804:14d:5c5e:44fb:90ea:5d38:822c:1759])
 by smtp.gmail.com with ESMTPSA id
 ne16-20020a056871449000b0019f4f5c8298sm8861346oab.56.2023.06.14.09.47.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 14 Jun 2023 09:47:30 -0700 (PDT)
Message-ID: <3b83fcf6-a5e8-26fb-8c8a-ec34ec4c3342@mojatatu.com>
Date: Wed, 14 Jun 2023 13:47:25 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
From: Pedro Tammela <pctammela@mojatatu.com>
In-Reply-To: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
X-Mailman-Approved-At: Wed, 14 Jun 2023 20:08:26 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20221208.gappssmtp.com; s=20221208; t=1686761251; x=1689353251; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=R27xkHouwiZkXeja44yLdq7zfor4HSLUtt+KIbyx+eA=;
 b=0RHF1xSpUA2vXerUR6xOhrwsroObFkLih9Bg/2FGaYvVQe76qLzXAP/kzcQ3MCM+fM
 gO/rjG/iby8prwgBrWWN/WLD1aqCh0EhjuU6IXGR2ZRInaupamHMzYkp5lxNLVZ9SDS5
 5/Fvnyynug9i+70msKrr0H/DkCPBgXN9aRm/c0rp04loNCjJ6nD0s3PBZYf0kmthWWUk
 FLMvuMOYr1qg7GAuiS6wnpe7NWKhYWfUWc8ac0q+ksP9gjeHKPn1BvzQVt8YklHzfclO
 O1CAjhtCuXTI9SZP9o/wN0u/X6cAs+3YJjuf8XZRmTEKFgU+bsPR5xuDSSKjASWBVv2P
 5GQQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=mojatatu-com.20221208.gappssmtp.com
 header.i=@mojatatu-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=0RHF1xSp
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 0/9] Improve the taprio
 qdisc's relationship with its children
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
Cc: Jiri Pirko <jiri@resnulli.us>, Maxim Georgiev <glipus@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Cong Wang <xiyou.wangcong@gmail.com>, Peilin Ye <yepeilin.cs@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Zhengchao Shao <shaozhengchao@huawei.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 13/06/2023 18:54, Vladimir Oltean wrote:
> [...]

Hi Vladimir,
Thanks for adding the tdc tests.
This series seem to have broken test 8471 in taprio but I don't see it 
fixed here.
Do you plan to fix it in another patch?

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
