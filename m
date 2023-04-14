Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C1F6E2575
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 16:18:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BA1742BC7;
	Fri, 14 Apr 2023 14:18:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BA1742BC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681481934;
	bh=gXrzRb25zPUSeGbA0rS/t5jqM3ru/33O2F2yMSGrbEw=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r4jsmN0JtXqH0JHel/8+eCgHWRDVYlYDleXKxOQ89PlrxbYjy0ymC9bUm4Nq60fq8
	 504utCw66f1QVy92X8yuUMCK+qcQpHV3KXYOEwfVys5R0SR+3enVyxZ0PmugzzA3l1
	 CzHmSyG7eU9+n9IQ26f7lFGeFsfcFOUe7P0Tx5TfTk1kIzq6JoIyUiHqnMObmwM4AH
	 4V8nCjuJMali+iBxzRKTtqhjDQR3cAtXw9xhlhzB8aTVAdiwoA1VZ6+wUEfQmPV/T0
	 72x6UPHhJJnW38l2AGvPX2XC+JDQgga+OpTj07H/AhdtFpjPsvKCzcYk2afiOWa0cm
	 4BfOohLzH2HSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZI99jQ6vL2B5; Fri, 14 Apr 2023 14:18:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DFED42BBE;
	Fri, 14 Apr 2023 14:18:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DFED42BBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9448F1C3D5E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 14:18:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7075F42BBE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 14:18:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7075F42BBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OVbgZjybI0SU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 14:18:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F070400D2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F070400D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 14:18:45 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-315-0rtKYSpNNjuR_H1cTJK8IA-1; Fri, 14 Apr 2023 10:18:43 -0400
X-MC-Unique: 0rtKYSpNNjuR_H1cTJK8IA-1
Received: by mail-ej1-f71.google.com with SMTP id
 tc8-20020a1709078d0800b0094e48438d06so3985030ejc.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 07:18:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681481922; x=1684073922;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sX4uJHc1E4iUI/WZObcqqEuHDDY4tzWA7F305PZUU8s=;
 b=Wl9PaZmAEajDHaDm0iFwOiVulvmrFr0d1wUxm6p5Q77lCkOY1WaRn0b9PiyF9HIb4n
 ThQVqj4L15r3nKJzxScd+sRM3OM4oPShtIcA+6cR03A0niZcGZ8yXhKjgHhJn4ZkpvPC
 t4bBltYH+qn+Ay2EeU003Pvlt3ieNCtyyVL3/XcOUQrLc8alLJCZ3jQ1JGwAJw+tgc06
 wUaFaOOjyFdUI2unKhqGgPYV3NvcbEOr3oqgx2IzREE4eo/gwgVn9mmL0cfuIBuqwPqD
 tjzMgtCGUMMfyvNA89MOfxHT2WK3ko08wy+eruJHQl3eMZrIhcsqk8XazIr6Vcz6g9SX
 3DDA==
X-Gm-Message-State: AAQBX9clUKmamczx67oFauy2UnNUrNkVG6aOaP250/XubXS54DurzE16
 mw3MPakMt58ocOKOwbCpnShFR3yo6TTeou9L+E5nEa9DFA7O2nwEq4IKko9IYCPAi+ahgIb5ni3
 0XgvhkJ8hTSdsmoebxR/7IdoQ3AGZfQ==
X-Received: by 2002:a17:907:7241:b0:94a:643e:9e26 with SMTP id
 ds1-20020a170907724100b0094a643e9e26mr5922567ejc.14.1681481922678; 
 Fri, 14 Apr 2023 07:18:42 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZGanoF3DPoBXFRBQWN2exgOX9hffPn/GzhyqL5JtNnAtLoKcw780bho7MF1qA/qcnMgOnwzA==
X-Received: by 2002:a17:907:7241:b0:94a:643e:9e26 with SMTP id
 ds1-20020a170907724100b0094a643e9e26mr5922524ejc.14.1681481922343; 
 Fri, 14 Apr 2023 07:18:42 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 p9-20020a170906838900b009497509fda3sm2503755ejx.40.2023.04.14.07.18.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Apr 2023 07:18:41 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <a81e4d8e-c668-5238-225a-8223af45a063@redhat.com>
Date: Fri, 14 Apr 2023 16:18:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: David Laight <David.Laight@ACULAB.COM>,
 "'Song, Yoong Siang'" <yoong.siang.song@intel.com>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Vedang Patel <vedang.patel@intel.com>, "Joseph, Jithu"
 <jithu.joseph@intel.com>, Andre Guedes <andre.guedes@intel.com>,
 Stanislav Fomichev <sdf@google.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
References: <20230414020915.1869456-1-yoong.siang.song@intel.com>
 <8214fb10-8caa-4418-8435-85b6ac27b69e@redhat.com>
 <PH0PR11MB5830D3F9144B61A6959A4A0FD8999@PH0PR11MB5830.namprd11.prod.outlook.com>
 <4dc9ea6c77ff49138a49d7f73f7301fd@AcuMS.aculab.com>
In-Reply-To: <4dc9ea6c77ff49138a49d7f73f7301fd@AcuMS.aculab.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681481925;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sX4uJHc1E4iUI/WZObcqqEuHDDY4tzWA7F305PZUU8s=;
 b=WjtV6vZ5IsECtSF9Rad7AejqERNrFJHaWDg4MxPjslCkLwysRL1fZehBSkw1eZx/FZygJ/
 5fQwzA0U/eplBOt6z3chkwL3JxR1lx6J5OFiPPWmMKFgcguyBbsjQ/29M7+4VTvUCZZrup
 PqlVxeIdtQJWVxoN6JqgF6y9iIyG33E=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WjtV6vZ5
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/1] igc: read before write to
 SRRCTL register
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 brouer@redhat.com, "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 14/04/2023 14.32, David Laight wrote:
> From: Song, Yoong Siang
>> Sent: 14 April 2023 12:16
> ...
>>> I have checked Foxville manual for SRRCTL (Split and Replication Receive
>>> Control) register and below GENMASKs looks correct.
>>>
>>>> -#define IGC_SRRCTL_BSIZEPKT_SHIFT		10 /* Shift _right_ */
>>>> -#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT		2  /* Shift _left_ */
>>>> +#define IGC_SRRCTL_BSIZEPKT_MASK	GENMASK(6, 0)
>>>> +#define IGC_SRRCTL_BSIZEPKT_SHIFT	10 /* Shift _right_ */
>>>
>>> Shift due to 1 KB resolution of BSIZEPKT (manual field BSIZEPACKET)
>>
>> Ya, 1K = BIT(10), so need to shift right 10 bits.
> 
> I bet the code would be easier to read if it did 'value / 1024u'.
> The object code will be (much) the same.

I agree. Code becomes more readable for humans and machine code will be 
the same.

>>>> +#define IGC_SRRCTL_BSIZEHDRSIZE_MASK	GENMASK(13, 8)
>>>> +#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT	2  /* Shift _left_ */
>>>
>>> This shift is suspicious, but as you inherited it I guess it works.
>>> I did the math, and it happens to work, knowing (from manual) value is in 64 bytes
>>> resolution.
>>
>> It is in 64 = BIT(6) resolution, so need to shift right 6 bits.
>> But it start on 8th bit, so need to shift left 8 bits.
>> Thus, total = shift left 2 bits.
>>
>> I didnt put the explanation into the header file because it is too lengthy
>> and user can know from databook.

Well, users usually don't have access to the databook (Programming
Interface) PDF.  Personally I have it, but I had to go though a lot of
red-tape to get it (under Red Hat NDA).


>>
>> How do you feel on the necessary of explaining the shifting logic?
> 
> Not everyone trying to grok the code will have the manual.
> Even writing (8 - 6) will help.
> Or (I think) if the value is in bits 13-8 in units of 64 then just:
> 	((value >> 8) & 0x1f) * 64
> gcc will do a single shift right and a mask 9at some point).
> You might want some defines, but if they aren't used much
> just comments that refer to the names in the manual/datasheet
> can be enough.
> 

After Alexander Lobakin opened my eyes for GENMASK, FIELD_PREP and
FIELD_GET, I find that easier to read and work-with these kind of
register value manipulations, see[1] include/linux/bitfield.h.  It will
also detect if the assigned value exceeds the mask (like David code
handled via mask). (thx Alex)

  [1] 
https://elixir.bootlin.com/linux/v6.3-rc6/source/include/linux/bitfield.h#L14

So, instead of:
   srrctl |= IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;

I would write

   /* BSIZEHDR value in 64 bytes resolution */
   srrctl |= FIELD_PREP(IGC_SRRCTL_BSIZEHDRSIZE_MASK, (IGC_RX_HDR_LEN / 
64));

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
