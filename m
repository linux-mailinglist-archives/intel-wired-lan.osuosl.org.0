Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7655D76F2E7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Aug 2023 20:43:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72D6F820E7;
	Thu,  3 Aug 2023 18:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72D6F820E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691088189;
	bh=8BLOVMljcS3LNfP96vPNFGekqpYjtjFyFgVabDd2E2Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yao+35ouPuWd5WTLo+USyJnsX4Ydmb39tNpWQKSCIBJe6LHKqjUES1ZzEOvqsrJyC
	 +BjXji1H67aJ6QA7SweeF3WlbRSwB+7Q0vbMgSQnmn8e1w5xwUJ2+lMDg4mhQkQpRH
	 iBMqsGhwe+vWH+sVmjMMcEYUYzQzLPIB9APIYfzzJ9YRK7h+mtwvv+wS7Ukcwcy4zW
	 d5X79A5x8ys/OvlNuJ3N4VrQh9+5cjigJvICJa88RIMDjVthoxQe/yvDW09XjtRkB+
	 bykQ4MpSRFbZ/C/AFayLJfkH3VNMZqPvKTr/dP+3M8j6qdYBvQ4DUtQFM/nGg70Bke
	 OUSBuV1cQszLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gv8JQwvFySWV; Thu,  3 Aug 2023 18:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C7F280E8D;
	Thu,  3 Aug 2023 18:43:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C7F280E8D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 319B21BF425
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 17:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 10748402F0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 17:21:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10748402F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tcm2fjw1xQUA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Aug 2023 17:21:14 +0000 (UTC)
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com
 [IPv6:2001:4860:4864:20::2f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F2B441D73
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 17:21:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F2B441D73
Received: by mail-oa1-x2f.google.com with SMTP id
 586e51a60fabf-1bf54f415afso728069fac.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Aug 2023 10:21:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691083273; x=1691688073;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lHdWNd7NcxIk3qmFO2a77DMoqeY4hXR/sOoF4ciAHOQ=;
 b=WODJKOx/SmCdlssSEw6hkfB5/PIRouDxMWdZjjuLtserFJZkQrjPQ6bdwvwboX24WH
 nc0U2OU/1tl7Mku/D42qaQQo2Ur7j9wjuxHbR9zsOMSW/Joia0P93oBEUtc3nQFTqXT+
 JBidhHsLh+Q9DbiZEWZUk3KiJAgS80OlSzmvaVgKn+6ofWxl+T3MVVbQiDiVBULPXCWb
 pukc0GIogPMR5AviW+4+SkeC8H81ZSwsvWuRFatbMpQZQkefS9V54VouxYPjSd1pFAdz
 li7vdfDnFu+Q8k2iEKrI0bJYcnA6iXhAvA7rTLowNxiLBbCUL+UOJOvthRvg+f1RmApd
 KOug==
X-Gm-Message-State: ABy/qLamyLcEHWbWmOnpXOTcLcZ3021YATT+yTGIRK1enCpu/ISVisrz
 E/S5smpkMGZDU0tsWncB8XB2uQ==
X-Google-Smtp-Source: APBJJlGH0lg4xAj9gNoRvacMhdgLpvXIeQDJkix5j8dz6wOxOx3nhnV4WJeq1As92cXHB5U1ImSKeA==
X-Received: by 2002:a05:6870:d7a6:b0:1b0:e98:163b with SMTP id
 bd38-20020a056870d7a600b001b00e98163bmr18685097oab.21.1691083272712; 
 Thu, 03 Aug 2023 10:21:12 -0700 (PDT)
Received: from ?IPV6:2804:7f1:e2c1:9170:5736:6909:750b:c9a8?
 ([2804:7f1:e2c1:9170:5736:6909:750b:c9a8])
 by smtp.gmail.com with ESMTPSA id
 v17-20020a056870955100b001bee99e97a9sm185013oal.43.2023.08.03.10.21.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Aug 2023 10:21:12 -0700 (PDT)
Message-ID: <918bf9fc-1c8f-a006-560e-b437581c6ec2@mojatatu.com>
Date: Thu, 3 Aug 2023 14:21:07 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org
References: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
 <20230801182421.1997560-10-vladimir.oltean@nxp.com>
From: Victor Nogueira <victor@mojatatu.com>
In-Reply-To: <20230801182421.1997560-10-vladimir.oltean@nxp.com>
X-Mailman-Approved-At: Thu, 03 Aug 2023 18:43:03 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20221208.gappssmtp.com; s=20221208; t=1691083273; x=1691688073; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lHdWNd7NcxIk3qmFO2a77DMoqeY4hXR/sOoF4ciAHOQ=;
 b=u/1k5qObBVCl38/3CowQvVgypngd3K1HPJMlDnoQ6QtMtPiP3m3H/2eH+E4S3AG2BU
 F7A9YcqRvxkoV3qvqyc6RRe7lCWCq5dgrM5jf5mJJioLwHv7VZ+fJN7le2jVVBOl0L14
 1zUyZrjKsu5GMwlV/cVvm37GBXQ2Hkj4nPFulaNypdKHHTjqmJkeToq4JeXZ0qe7h6dH
 JQn6NB1zjbbbTmfMnuLFeCN14X26BxH1JXKNIicrRghk8IpJcr+8xM45xpWWLHfug32m
 EVLQDkwsHya09x1PU6t1tONJlqE5MArvrfKFLXPi9V8hjHAx/nDGQGMqQfq2zbh7lav/
 lDQA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=mojatatu-com.20221208.gappssmtp.com
 header.i=@mojatatu-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=u/1k5qOb
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 09/10]
 selftests/tc-testing: test that taprio can only be attached as root
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Maxim Georgiev <glipus@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 01/08/2023 15:24, Vladimir Oltean wrote:
> Check that the "Can only be attached as root qdisc" error message from
> taprio is effective by attempting to attach it to a class of another
> taprio qdisc. That operation should fail.
> 
> In the bug that was squashed by change "net/sched: taprio: try again to
> report q->qdiscs[] to qdisc_leaf()", grafting a child taprio to a root
> software taprio would be misinterpreted as a change() to the root
> taprio. Catch this by looking at whether the base-time of the root
> taprio has changed to follow the base-time of the child taprio,
> something which should have absolutely never happened assuming correct
> semantics.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Pedro Tammela <pctammela@mojatatu.com>
If I understood correctly, these tests depend on CONFIG_PTP_1588_CLOCK_MOCK.
If that is the case, you should add it to the tdc
config file (tools/testing/selftests/tc-testing/config).

cheers,
Victor
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
