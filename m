Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B9B96DF5C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 18:17:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 042A060A90;
	Thu,  5 Sep 2024 16:17:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mkH5n1SuilZw; Thu,  5 Sep 2024 16:17:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 249B560A95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725553072;
	bh=iaE5XqWoFR9AdfJpm9q1/ADqgtzDcMWaCwCzCaQbFu4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t3sioEFKS24iUgJa919eiLouubrVj2Jo2l4P8WqyWlbeUfWjCrwTtksS87KGf4/dc
	 gmROmoamlkG898Rn7klYi0v+11g9K4o28lnQzhoRKl92TI8NuWWP/KNJIq9kKPrKNb
	 ZzOhmuQWGILbJ+fC6NsJvSPsiWu+U6oF2O/hjynK9bzOPtOoQ8BM2EeVNoylHp/FUa
	 lCda+oVywaGhHKqJ3fUScHJ6pHnrJVBhlpooChQEizbLyGY8EDcXws7uwRiKvlH0cW
	 brpFQEbjMHW91f+w+RX854fSevh9O/ruGz2Bc6uZqEhfuhH4FV6AQh+AGsioc7i09v
	 kWqhxyEYQhevw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 249B560A95;
	Thu,  5 Sep 2024 16:17:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D3AAA1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 16:17:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CCE3740200
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 16:17:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6J1pwu2bu67O for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 16:17:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D905C40169
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D905C40169
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D905C40169
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 16:17:48 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-652-Iu-Tsu2cOqaLWlLLbbvcug-1; Thu, 05 Sep 2024 12:17:46 -0400
X-MC-Unique: Iu-Tsu2cOqaLWlLLbbvcug-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-374c294d841so847248f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Sep 2024 09:17:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725553065; x=1726157865;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iaE5XqWoFR9AdfJpm9q1/ADqgtzDcMWaCwCzCaQbFu4=;
 b=lQu3nf+zLQClcMEiVko+Av66M+aHBrHW85nRqBxDW9EFtJNvq/hTcpjIBuZEZBKFg3
 FU8pxEmpUP48Xr6pQRst0CHUZvlDDtI/xhZ/3OFODTnXEQOGKVVs8tkbm+nFBy4hG3iU
 Mp7t553dFA6GRPqNZnWNvbcrpngs/aEx5qdTFY37gXaQ/j5DBXqiDNGventCdW5YFdKi
 y8X+ETXlL/SObu4V24JToKcWSndQDOyYPH31jFIOo4d1+Lb1uO/lyNMrGbamOR7Q0M/d
 kGAv4rQMpHV80vb34/prSEJ9QswpnhBGCHO7zYUMYnB9kmqL7GIrpd3w1llitgVVhlLS
 QwCw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWgvSyhxX+FgHZslN/ZLpX+VPGsEyPgUDKZsNDxG3MeZxxHM+69NpMfMwRgR07gJTTbz4k0tdNIdMptFF8NY6U=@lists.osuosl.org
X-Gm-Message-State: AOJu0YypsTMCwV9xrVD7egnkP62gOGg5jp6QXQ9rHALmIMYzK7a268ZW
 +iuI/LONiawQrx94xMwjltwPClrOwLRlR/a72BSy6jgZuIBIQpmSjYI6Z90rSMFsJ82Ac2Q2y9h
 X31GF7MzS80VgyZe435+LFA7yq9yVnuM3jkuUU2kpK2oJ8B3SI6dt+q15CD+M8zbDtw8=
X-Received: by 2002:adf:f7c8:0:b0:374:c512:87ce with SMTP id
 ffacd0b85a97d-374c5128a82mr12130911f8f.30.1725553065031; 
 Thu, 05 Sep 2024 09:17:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvu/apiMAq4RvAl5wSKKN+12JGeZYYbO4xdhF9luYBHaFwsBjDjg3e4qWvyCzXP2gyQw0nog==
X-Received: by 2002:adf:f7c8:0:b0:374:c512:87ce with SMTP id
 ffacd0b85a97d-374c5128a82mr12130890f8f.30.1725553064557; 
 Thu, 05 Sep 2024 09:17:44 -0700 (PDT)
Received: from [192.168.88.27] (146-241-55-250.dyn.eolo.it. [146.241.55.250])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3749ef7e109sm19554723f8f.67.2024.09.05.09.17.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Sep 2024 09:17:44 -0700 (PDT)
Message-ID: <46484afd-7b50-465d-b763-0ac60201bd3d@redhat.com>
Date: Thu, 5 Sep 2024 18:17:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <cover.1725457317.git.pabeni@redhat.com>
 <a0585e78f2da45b79e2220c98e4e478a5640798b.1725457317.git.pabeni@redhat.com>
 <20240904180330.522b07c5@kernel.org>
 <d4a8d497-7ec8-4e8b-835e-65cc8b8066b6@redhat.com>
 <20240905080502.3246e040@kernel.org>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20240905080502.3246e040@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725553067;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iaE5XqWoFR9AdfJpm9q1/ADqgtzDcMWaCwCzCaQbFu4=;
 b=QankzAG5YXiX0tAxHM3aCiwo5QvmjnjdVyrH7WlSukHmP4ucTJafjH2A/r+6PnVFeJAkD/
 dC0DzlCK1+I6yB17rkAdVM7BwRqvZqbmeo0tlucdvEL4VGClPLNB+rQl/s5lMGg6AzqxFW
 pbbyEWGX1G8SXkvUamNL6YxZm3txat4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=QankzAG5
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 02/15] netlink: spec: add
 shaper YAML spec
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/5/24 17:05, Jakub Kicinski wrote:
> On Thu, 5 Sep 2024 16:51:00 +0200 Paolo Abeni wrote:
>> On 9/5/24 03:03, Jakub Kicinski wrote:
>>> On Wed,  4 Sep 2024 15:53:34 +0200 Paolo Abeni wrote:
>>>> +      -
>>>> +        name: node
>>>> +        type: nest
>>>> +        nested-attributes: node-info
>>>> +        doc: |
>>>> +           Describes the node shaper for a @group operation.
>>>> +           Differently from @leaves and @shaper allow specifying
>>>> +           the shaper parent handle, too.
>>>
>>> Parent handle is inside node scope? Why are leaves outside and parent
>>> inside? Both should be at the same scope, preferably main scope.
>>
>> The group() op receives as arguments, in the main scope:
>>
>> ifindex
>> node
>> leaves
>>
>> 'parent' is a nested attribute for 'node', exactly as 'handle'. We need
>> to specify both to identify the 'node' itself (via the 'handle') and to
>> specify where in the hierarchy the 'node' will be located (via the
>> 'parent'). Do I read correctly that you would prefer:
>>
>> ifindex
>> node_handle
>> node_parent
>> leaves
> 
> I don't see example uses in the cover letter or the test so there's
> a good chance I'm missing something, but... why node_parent?
> The only thing you need to know about the parent is its handle,
> so just "parent", right?
> 
> Also why node_handle? Just "handle", and other attrs of the node can
> live in the main scope.

I added the 'node_' prefix in the list to stress that such attributes 
belong to the node.

In the yaml/command line will be only 'handle', 'parent'.

> Unless you have a strong reason to do this to simplify the code -
> "from netlink perspective" it looks like unnecessary nesting.
> The operation arguments describe the node, there's no need to nest
> things in another layer.

Ok, the code complexity should not change much. Side question: currently 
the node() operation allows specifying all the b/w related attributes 
for the 'node' shaper, should I keep them? (and move them in the main 
yaml scope)

Thanks,

Paolo

