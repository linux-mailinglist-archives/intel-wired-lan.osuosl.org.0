Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ECB966748
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 18:48:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2190E40267;
	Fri, 30 Aug 2024 16:48:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BA6lQJT1pjSg; Fri, 30 Aug 2024 16:48:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13F6A411B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725036535;
	bh=XZlnrG+MBzbRlPSV5XEPi8X4abe5ATIQGU9hv5YY0sY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B4Iyvd0Ke61Z/6md1INFQz8qOYgDJMKgOBC3vBkbTK5vYBiNiTEvrODuaIpw5oExC
	 oySdSbegjpQwPxQda2gAPj/c6pMiGOBUxKRsi9P/8W4qrFGrB7x2NoSnHCmI2vC2ld
	 75NoBUN67BW8nyXA5mNl1N8XD65rnNwWcjIGa1H4gMBKY6bfl7ZKT9L62fVyNrur5J
	 hLOwTf03FytiZW0iXOf2glYG8FPgI/AOfFAslvfb3BH68RJTlNTYnDhM8Vz5KJI5rx
	 kzAjWkWgVXOc8uL5EsJVrPm5jScCBW8yyTbYdLmslFwj6/m4XLttO4P7VpWRRapTmk
	 F0OCnSVIzrcPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 13F6A411B2;
	Fri, 30 Aug 2024 16:48:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 803D71BF35F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 16:48:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6CB4761462
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 16:48:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BDd6LfybOHVf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 16:48:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8BB286145F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BB286145F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8BB286145F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 16:48:50 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-439-8W0A4LZAMHaENzxQkOMaig-1; Fri, 30 Aug 2024 12:48:48 -0400
X-MC-Unique: 8W0A4LZAMHaENzxQkOMaig-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-42bac946976so18654005e9.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 09:48:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725036527; x=1725641327;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XZlnrG+MBzbRlPSV5XEPi8X4abe5ATIQGU9hv5YY0sY=;
 b=U9Krhm36jjqh7Y1HaPDoQqdTh4wLf3N3Z3u1I3xBgDI8K+cpZ6/Pjq/l0oCP+Ua0UN
 OxHXt3Zq1fTY880n1JYIx2Jbb0/aPm254O09r0QLRDUvRecD242ziPTqHMCuEZvTSei7
 UxEvd/nLfabt75iLSglcII+dTofRrSF1jlrqSawMC4WHdRSZNwYutA2K6ohpZFHWvu+q
 WEA1I13rlDIJhbQjaDZNUTODBl8hJfMCj7yXkqujxPnNyoQWwN5mx0xexgEaw+V6BXJe
 7FjEV8DO1opFZa1795cvgPO5QHSX9/zMqhqZAehTdwNPmDEwHRcz5Kk7ENxmrncbjZ/3
 z98Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXn7Q/H4ixMofOk68Wik2fUlWq5E+kL0zjKY4LdEenvcscv//tNC/Fx+YIU4DCUDT9f5khE4zQBGxS1Mo4/5dw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyF6h/KDu+L+K2bWr9rvpR7hj04/jEIzYZFKSenbbCyQi30Kjst
 +ZLFxNGRFzjTYqxxX01U1InZmrzFwrRgKrTyJgR7yJHErGoGlHoB6fsTdmCnzoCib5cqZKrGMBd
 tJCr5BMcFkywTZuWhmwS9WrPlTiF4rE5VDc3LPhJzUTHdyJttMvrjUkNwTy1bfTB1eME=
X-Received: by 2002:a05:600c:4585:b0:426:554a:e0bf with SMTP id
 5b1f17b1804b1-42bb02ee854mr52119505e9.16.1725036527363; 
 Fri, 30 Aug 2024 09:48:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSO8pwAfemPfd5c5TXEQmZMnCL+D2vs8xMbOiFoUKsPLsdScOWIk07tHbzNNc7AtAjq8VmBA==
X-Received: by 2002:a05:600c:4585:b0:426:554a:e0bf with SMTP id
 5b1f17b1804b1-42bb02ee854mr52119315e9.16.1725036526830; 
 Fri, 30 Aug 2024 09:48:46 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:1b53:e610::f71? ([2a0d:3344:1b53:e610::f71])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bb6df0adbsm51704445e9.15.2024.08.30.09.48.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2024 09:48:46 -0700 (PDT)
Message-ID: <d0244464-0596-4309-89ff-d8dcd9aa3d35@redhat.com>
Date: Fri, 30 Aug 2024 18:48:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <cover.1724944116.git.pabeni@redhat.com>
 <f67b0502e7e9e9e8452760c4d3ad7cdac648ecda.1724944117.git.pabeni@redhat.com>
 <20240829190445.7bb3a569@kernel.org>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20240829190445.7bb3a569@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725036529;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XZlnrG+MBzbRlPSV5XEPi8X4abe5ATIQGU9hv5YY0sY=;
 b=GNaOMbq5PmcqsMNo9tL55NZbVDVWyCB94g/FyfmZIlE10d0qtOPPMMqpqdD3OE0iTPJj1d
 TSx3C89ayI7VMQvQJEg09uE10HzUJPXriz17EWSOloXzdV9cHl5OHLFY/60J0158RrtyhK
 QRPgPHbFCWOrgBbYFm9w39vf/dp3p/c=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=GNaOMbq5
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 04/12] net-shapers:
 implement NL group operation
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

On 8/30/24 04:04, Jakub Kicinski wrote:
>> +static int __net_shaper_group(struct net_shaper_binding *binding,
>> +			      int leaves_count,
>> +			      const struct net_shaper_handle *leaves_handles,
>> +			      struct net_shaper_info *leaves,
>> +			      struct net_shaper_handle *node_handle,
>> +			      struct net_shaper_info *node,
>> +			      struct netlink_ext_ack *extack)
>> +{
>> +	const struct net_shaper_ops *ops = net_shaper_binding_ops(binding);
>> +	struct net_shaper_info *parent = NULL;
>> +	struct net_shaper_handle leaf_handle;
>> +	int i, ret;
>> +
>> +	if (node_handle->scope == NET_SHAPER_SCOPE_NODE) {
>> +		if (node_handle->id != NET_SHAPER_ID_UNSPEC &&
>> +		    !net_shaper_cache_lookup(binding, node_handle)) {
>> +			NL_SET_ERR_MSG_FMT(extack, "Node shaper %d:%d does not exists",
>> +					   node_handle->scope, node_handle->id);
> 
> BAD_ATTR would do?

We can reach here from the delete() op (next patch), there will be no 
paired attribute is such case. Even for the group() operation it will 
need to push here towards several callers additional context to identify 
the attribute, it should be quite ugly, can we keep with ERR_MSG_FMT here?

>> +	if (ret < 0)
>> +		goto free_shapers;
>> +
>> +	ret = net_shaper_group_send_reply(info, &node_handle);
>> +	if (ret) {
>> +		/* Error on reply is not fatal to avoid rollback a successful
>> +		 * configuration.
> 
> Slight issues with the grammar here, but I think it should be fatal.
> The sender will most likely block until they get a response.
> Not to mention that the caller will not know what the handle
> we allocated is.

You mean we should return a negative error code, and _not_ that we 
should additionally attempt a rollback, right? The rollback will be very 
difficult at best: at this point destructive action have taken place.

Thanks,

Paolo

