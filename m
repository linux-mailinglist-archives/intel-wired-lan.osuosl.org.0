Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB8E9943D6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2024 11:14:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E1B680E69;
	Tue,  8 Oct 2024 09:14:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id koadDBTRmGsA; Tue,  8 Oct 2024 09:14:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC8F980E3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728378863;
	bh=gjzBqg5gmnyslj1f7FzCfy4oe6l+aeujhqIrttDmUiU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Gd0i/NbISfA/DqxblrPqDmTZGjio0zNqtnWdGq8Sm/vb9V7bvEio9r+FqkXG3OXcd
	 kvQr4/CjEK5ZSif4mur4AS4WbFo+06t/adcF86ZOZLeE0iFa5sOzjMqXRpKAvH4D2i
	 lZ263iIK/q+hS2/Q1oSgScKOrwZhVglDZ9AxTUalHihsP7SykB6xDpDfnDJwS6LEZ6
	 dHpIcS0YEULVvDlW4kRGfB+J2jESZGqOem8oE6twZQ7AFb2N13IrSxz3vj7EQaqEuJ
	 g0qHTBdvpTOzku3W6x01RTAOG8+Ps8ZPkZ6yZiFCWeYN5xFhGgdQXshMNNNXjsUoKQ
	 iRHJ8igLupDHQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC8F980E3A;
	Tue,  8 Oct 2024 09:14:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E962C1BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 09:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D4841605D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 09:14:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l9OaL1OsRpxR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2024 09:14:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1AEA36060E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AEA36060E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AEA36060E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 09:14:18 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-468-MRrZ38ENOOuoMntP1lmYAw-1; Tue, 08 Oct 2024 05:14:16 -0400
X-MC-Unique: MRrZ38ENOOuoMntP1lmYAw-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-42f8ceb8783so23071215e9.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Oct 2024 02:14:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728378855; x=1728983655;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gjzBqg5gmnyslj1f7FzCfy4oe6l+aeujhqIrttDmUiU=;
 b=vAf2+Al6O/a/arq3OXK1BEHDnJwwZ9ksywdoVAW50kefUUTKcOVpKM1ZtLzDhywWR8
 7xu0mzoObZ+RB0YoqMXzD8rY3qR29Ipwu2jSLuoiG2OcnWYK5/BvCdDMWNJjpSG0jXnY
 DINpx5pTU9O/7gGNo7AjGbS7+MKwsaGA8LytdaRPHTGc9lbSfMCAw+FlS1fDO05kTBXS
 9rlCWNreXsC8Q4WmAU2f7UG9V1arXQVOfA1s5mQ4RrmtHG0IHzZlMfubX02W5lbwX/3T
 nsrsS9AYoV25EjMNlGyaEImioZo2C1ZB29geoBspb2fS7I0U9BvfBkLMX0KUevI+EBR+
 rrLw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVUqT7Zs70q9dCph9EYh5zcK5paB29p1sLqcyWR6wg0ymA8iCg2moK9/UTXm1TaJdK7GjxnJu55YVkhOZbtgGQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzLvi5FMa9HDh7TI7rx577lfCCvLB/qafJ7Y1hC9PwVW8nVyuGc
 XUkLXu4+qPDTWVJbc8WSsrcokWQxIs0vq+ouovngoqjXX+xAvWvkRhrWt/8zSpMlBsKz5fe8N1P
 4Zn0Jg+FpOILPFj4aRZOS0grlQcs3V/Lzdtz4eFR8JjynRrR9HNcoyWmHkRMm3ziy3ws=
X-Received: by 2002:a05:600c:468f:b0:42c:af06:718 with SMTP id
 5b1f17b1804b1-42f85aea086mr109974365e9.28.1728378855360; 
 Tue, 08 Oct 2024 02:14:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEntxED6Ajev+yYqCnvqbFQbY5VYJc60hLz2Tup0O0K/v+7ozifBz2tuAGRqhC6j91M0iDvhQ==
X-Received: by 2002:a05:600c:468f:b0:42c:af06:718 with SMTP id
 5b1f17b1804b1-42f85aea086mr109974165e9.28.1728378854940; 
 Tue, 08 Oct 2024 02:14:14 -0700 (PDT)
Received: from [192.168.88.248] (146-241-82-174.dyn.eolo.it. [146.241.82.174])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42f89ec63c3sm102594535e9.38.2024.10.08.02.14.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2024 02:14:14 -0700 (PDT)
Message-ID: <6db0670f-6a39-4a23-94d2-5b944fea8dff@redhat.com>
Date: Tue, 8 Oct 2024 11:14:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20241004105407.73585-1-jdamato@fastly.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20241004105407.73585-1-jdamato@fastly.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1728378857;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gjzBqg5gmnyslj1f7FzCfy4oe6l+aeujhqIrttDmUiU=;
 b=OM7wCO675OHsJu1LLpzoknx+RXC/DWmGVw2N81q2wzQuZnguP9f5It0dcmnKWCF/u1VT2q
 eObk7+9opeNibZ2UWbrosJZCULLbNdLl774R2ZZ1oJ7KbfOdjI4/RUD0Ltq9jiyQqh4Awq
 mh3qgJBz3FHYhv3vSdH+cw1wcg9dcrk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=OM7wCO67
Subject: Re: [Intel-wired-lan] [net-next v3] idpf: Don't hard code
 napi_struct size
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
Cc: przemyslaw.kitszel@intel.com, Joe Damato <jdamato@fastly.com>,
 open list <linux-kernel@vger.kernel.org>, aleksander.lobakin@intel.com,
 Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 horms@kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/4/24 12:54, Joe Damato wrote:
> The sizeof(struct napi_struct) can change. Don't hardcode the size to
> 400 bytes and instead use "sizeof(struct napi_struct)".
> 
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index f0537826f840..9c1fe84108ed 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -438,7 +438,8 @@ struct idpf_q_vector {
>   	__cacheline_group_end_aligned(cold);
>   };
>   libeth_cacheline_set_assert(struct idpf_q_vector, 112,
> -			    424 + 2 * sizeof(struct dim),
> +			    24 + sizeof(struct napi_struct) +
> +			    2 * sizeof(struct dim),
>   			    8 + sizeof(cpumask_var_t));
>   
>   struct idpf_rx_queue_stats {

@Tony: I'm assuming you want this one to go via your tree first, please 
LMK otherwise.

Thanks,

Paolo

