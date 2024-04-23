Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA568AEAA2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 17:17:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCB9081FF7;
	Tue, 23 Apr 2024 15:17:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h95NF_nimdfU; Tue, 23 Apr 2024 15:17:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E55DA81FD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713885440;
	bh=Vb/jtEQiqMYQ/ISAQh9mg0MTb6zQnFx3hOrCArI3w1E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XpvShkwZO1L08fwUDt7AvmdmbabW3jRiURVTWw/1TS0Z9+fi4D4gCTdTnLSLOo7nQ
	 ao4bVeLxRC0vF0yzorN4jVSGhaPf0ehlBl+5E3TwqT/pzeAhq8WedvZnVet0gbGniN
	 0W7+tdEUUmDltLj0kcjBGGtIdHS3pRBUA0q0bpf6OXAS993rVFzj/ZiJSlF5CNjK9Z
	 IgRMkKNg6/Es/mW9pSbyTVkeMc6AY+XODLU6ss+DK3VbO3mAYj+gzjLagR6BtlKtTE
	 gEBhhRHz0pdt8EgZqBu8jFSu62bZw9HiXckcnJhwJt2YhRhcJopDM1papXxS8hiUJ2
	 P6duyMLL1C6hg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E55DA81FD5;
	Tue, 23 Apr 2024 15:17:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0DEBE1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:46:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED591402E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:46:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Khf7LPFYG3bS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 14:46:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42e; helo=mail-pf1-x42e.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D8CC7402E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8CC7402E4
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8CC7402E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:46:48 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-6ed0e9ccca1so5306449b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 07:46:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713883608; x=1714488408;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Vb/jtEQiqMYQ/ISAQh9mg0MTb6zQnFx3hOrCArI3w1E=;
 b=ZuzToKG2Ec3x7i6fxDkfaSAC8KK+d4kVjjv/wmUg4S2dP9nVJBhh25h1uok/7lwEZQ
 Y4VQXkeRX9aCyysckHeP8/T0OjQVaJJWxvfewExZjlhjD3RLrS1JDc7wbnkOh0BV/Bo1
 krk/BheNi2Whv1XlRnIysE0Xe6Yw66Azz+gmkIHANF0Wg8W+QlQuY5uU0UoGT9oG9U0j
 g0Ow1ghzPdKswfPZQaWIkYU0ekoqFTs+eEnZDVuIOG8EMSqM3YKFydG3Hn64gUV1n9Q5
 dhe2u/cvAQS1uF/nlbwcVwEA+HGRoKS5DVzz4U+Q4ADmu9wgdcQUbikf/kOuDovonoG0
 5uSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWZ4d7kYut1n9p7A9ObPB99rrbHaXRTed3XkFR0DhlaU6JSS0gUPACjkv8unNF3Lu+/Cfs1ARjuD4IaKx6FnMynfebGGKJuGPRhIiv1uqCSCg==
X-Gm-Message-State: AOJu0Yw0bWKzVFBPT64dQ/jehjl7AmsPEe1mjZm4oM3sbavYnWsHtLVo
 hOVLM6Oz2bG63ri0/4YU86lJTH8w52OGteFIG7COjZGkggFNnyi8
X-Google-Smtp-Source: AGHT+IE1b3OGo1AOOyHI2O/gtQLNNZdbLcFXucTipISHaNiAukcRoQ6PFKyPGYCIilU3YAqWXr+loQ==
X-Received: by 2002:a05:6a21:2792:b0:1aa:6a28:cf6e with SMTP id
 rn18-20020a056a21279200b001aa6a28cf6emr12043604pzb.48.1713883607972; 
 Tue, 23 Apr 2024 07:46:47 -0700 (PDT)
Received: from ?IPV6:2001:ee0:50f5:5d0:b2f6:b23d:3030:9638?
 ([2001:ee0:50f5:5d0:b2f6:b23d:3030:9638])
 by smtp.gmail.com with ESMTPSA id
 l185-20020a6391c2000000b005ffd8019f01sm3689182pge.20.2024.04.23.07.46.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Apr 2024 07:46:47 -0700 (PDT)
Message-ID: <e4f5cbd0-c803-4c3c-9703-f52e56864106@gmail.com>
Date: Tue, 23 Apr 2024 21:46:35 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Heiko Carstens <hca@linux.ibm.com>
References: <20240422-fix-oob-read-v1-0-e02854c30174@gmail.com>
 <20240422-fix-oob-read-v1-5-e02854c30174@gmail.com>
 <20240423065052.10211-C-hca@linux.ibm.com>
Content-Language: en-US
From: Bui Quang Minh <minhquangbui99@gmail.com>
In-Reply-To: <20240423065052.10211-C-hca@linux.ibm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 23 Apr 2024 15:17:07 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713883608; x=1714488408; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Vb/jtEQiqMYQ/ISAQh9mg0MTb6zQnFx3hOrCArI3w1E=;
 b=C6BspBOgcDXuiWMQq5VEGsulwvwQimZ7OR3gMYr5BHwYYeEWx8gjc5jC59r8vYYIFi
 vorEjo+dt1MVMZuh5tQFaWXsRHEPMgr7R9iF5KRupisUc7kZw9YIaqfRWX0gSzG/6rd4
 juc40j/oXFkfBG3PvoBI9C5v4FttM6bHmUAFHKE+Iq59FNdb6P7Oy874Zp8t/Frz0zcK
 oOluZc5rma5kXgc26a9lrSgNcpuN/9NW5VO5sHY9lVvSspLBGzTsk579bFFy0Mxnu8ZF
 87UowFZmmIBKQLQL4cLQ7SQddrB+RxXmJl8DQbSglKMtLgGyW+QmiOGK15CoA9UA16VO
 lCYg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=C6BspBOg
Subject: Re: [Intel-wired-lan] [PATCH 5/5] drivers/s390/cio: ensure the
 copied buf is NULL terminated
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
Cc: Javed Hasan <jhasan@marvell.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>, linux-scsi@vger.kernel.org,
 Saurav Kashyap <saurav.kashyap@cavium.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, linux-s390@vger.kernel.org,
 Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>,
 intel-wired-lan@lists.osuosl.org,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Arun Easi <arun.easi@cavium.com>,
 Fabian Frederick <fabf@skynet.be>, Krishna Gudipati <kgudipat@brocade.com>,
 Manish Rangankar <manish.rangankar@cavium.com>, Jens Axboe <axboe@kernel.dk>,
 Nilesh Javali <nilesh.javali@cavium.com>, GR-Linux-NIC-Dev@marvell.com,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Saurav Kashyap <skashyap@marvell.com>, Rasesh Mody <rmody@marvell.com>,
 netdev@vger.kernel.org, Anil Gurumurthy <anil.gurumurthy@qlogic.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>,
 GR-QLogic-Storage-Upstream@marvell.com, Sven Schnelle <svens@linux.ibm.com>,
 Sudarsana Kalluru <skalluru@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/23/24 13:50, Heiko Carstens wrote:
> On Mon, Apr 22, 2024 at 11:41:40PM +0700, Bui Quang Minh wrote:
>> Currently, we allocate a lbuf-sized kernel buffer and copy lbuf from
>> userspace to that buffer. Later, we use scanf on this buffer but we don't
>> ensure that the string is terminated inside the buffer, this can lead to
>> OOB read when using scanf. Fix this issue by allocating 1 more byte to at
>> the end of buffer and write NULL terminator to the end of buffer after
>> userspace copying.
>>
>> Fixes: a4f17cc72671 ("s390/cio: add CRW inject functionality")
>> Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
>> ---
>>   drivers/s390/cio/cio_inject.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/s390/cio/cio_inject.c b/drivers/s390/cio/cio_inject.c
>> index 8613fa937237..9b69fbf49f60 100644
>> --- a/drivers/s390/cio/cio_inject.c
>> +++ b/drivers/s390/cio/cio_inject.c
>> @@ -95,10 +95,11 @@ static ssize_t crw_inject_write(struct file *file, const char __user *buf,
>>   		return -EINVAL;
>>   	}
>>   
>> -	buffer = vmemdup_user(buf, lbuf);
>> +	buffer = vmemdup_user(buf, lbuf + 1);
>>   	if (IS_ERR(buffer))
>>   		return -ENOMEM;
>>   
>> +	buffer[lbuf] = '\0';
> 
> This would read one byte too much from user space, and could potentially
> fault.
> 
> Why isn't this simply memdup_user_nul() like all others, which would do the
> right thing?

Thanks for your review. It's my mistake, I blindly follow the pattern in 
rvu_debugfs

static ssize_t rvu_dbg_qsize_write(struct file *filp,
				   const char __user *buffer, size_t count,
				   loff_t *ppos, int blktype)
{
	cmd_buf = memdup_user(buffer, count + 1);
	if (IS_ERR(cmd_buf))
		return -ENOMEM;

	cmd_buf[count] = '\0';
}

I will send a patch to fix this too.

For this case, as the original code uses vmemdup_user, which internally 
uses kvmalloc not kmalloc, so I try to keep the original behavior. And 
vmemdup_user does not have the counterpart vmemdup_user_nul. I can 
kvmalloc(lbuf + 1), then copy_to_user(lbuf) and set buffer[lbuf] = '\0' 
or do you think I should create vmemdup_user_nul?

Thanks,
Quang Minh.
