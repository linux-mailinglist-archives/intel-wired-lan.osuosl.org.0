Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C393703100
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 17:07:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ADF4041D54;
	Mon, 15 May 2023 15:07:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADF4041D54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684163260;
	bh=P1cmhmDRHQ45wDoumCYynsGbhl/KQ4CGJv9KhQlrj2w=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4SGuagHlGbvxsCf+1nOt7M/jzUyIStv14kZqjXPWMssf2HNUf3CuSkiq2CFBVtEZj
	 nnvlvBa0PKxg5MIb0NmGeF42WupzL67iV0hF8cFzRB+UuxzCH9+k19Mv+/5c1Hylrh
	 66tjPPKT27odbbcAr5/r0HhbJoiXsq1p32mRQSkmykcY4WyQIEqMk+lWPxSYW5rDgu
	 B8MfPyf+fm/eamiQRXlQ9w5mZY0bAMZIey/D6WaF/++xrhWwu32IWbr7P95Sw2CfN8
	 zv4dhcDZ6KPBBXWFWQQPRq8hQ6EkVRCSULpcwShTv5MvbwrbEfMyt3yRb2kXa3bh/W
	 TWXTSS8s2i5fw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w_QlRn-6gqJl; Mon, 15 May 2023 15:07:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A652441771;
	Mon, 15 May 2023 15:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A652441771
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 449F51BF573
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 15:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1CECE41D41
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 15:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CECE41D41
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i1ejGvOzVAtZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 May 2023 15:07:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7192641771
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7192641771
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 15:07:33 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-61-5DkrupHKMfiotz8FqbxaqA-1; Mon, 15 May 2023 11:07:23 -0400
X-MC-Unique: 5DkrupHKMfiotz8FqbxaqA-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-96640336558so1237485366b.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 08:07:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684163242; x=1686755242;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :to:subject:cc:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jqAunJggVfMk8DVsWWYkCIQsfbXlahXMSDO8JBjiKzE=;
 b=ZgRa4T6hmhWGqJwlWC9fSE1oGF2R0LyKBbY+rbt9uTMLj+K3MutXKEzRi6Am1k+UP8
 M3NykQUca9x7/z+NKSRNCzl/WOFP4XHPmSyOA+h910gOKz70oTXDLcHRmg5qgjmTqzZL
 3eZ7GlsGxpZDsx6BoMrp/wzI9IDo/7Z9RhGwJgsUoFjg8QnZhb2m1Xyn4eBlPBydoPDR
 yZVOUbs3Py4nz3GW1+xrMsMNdIu9zMCOV+aJQfQty9kIvQP92Y3b1x2wYd30JutC4Wcj
 tA2KpLn47mCmjsRdRQbkZOLPcAr3PLPxb+HdVn7cFYaXMkNyFh6Hxvn5RXWyAyefU1vL
 GbUg==
X-Gm-Message-State: AC+VfDzAMzqswVf0dZamgJanvCDDmPlQfMnBhCOdGOvmDVUFJA2H5RoE
 6YSag53ZMa9Dz5Wtfjg/Tqz2i/zPwCiQqOJ+5NwFwIvVwO4X7J2TYcsZczk6EkhiIkhuqbPf2NV
 YuqDB6Aq+/uahYlJiqlR64Si/WQv7UA==
X-Received: by 2002:a17:907:d91:b0:933:4d37:82b2 with SMTP id
 go17-20020a1709070d9100b009334d3782b2mr31485017ejc.57.1684163242598; 
 Mon, 15 May 2023 08:07:22 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4KJfmiDaL9BJh3jJxYB1OG8NuTPCjYqSvJHsOpWGNg4A0jTsW7kReLmT9LoGqXUg8hKEYa+Q==
X-Received: by 2002:a17:907:d91:b0:933:4d37:82b2 with SMTP id
 go17-20020a1709070d9100b009334d3782b2mr31484980ejc.57.1684163242248; 
 Mon, 15 May 2023 08:07:22 -0700 (PDT)
Received: from [192.168.41.200] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 l17-20020a170907915100b0095004c87676sm9682583ejs.199.2023.05.15.08.07.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 May 2023 08:07:21 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <e4a9fa43-06f7-5271-effc-20cac59b0e64@redhat.com>
Date: Mon, 15 May 2023 17:07:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Larysa Zaremba <larysa.zaremba@intel.com>,
 Stanislav Fomichev <sdf@google.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-11-larysa.zaremba@intel.com>
 <ZF6F+UQlXA9REqag@google.com> <ZGI2oDcWX+o9Ea0T@lincoln>
In-Reply-To: <ZGI2oDcWX+o9Ea0T@lincoln>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1684163252;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jqAunJggVfMk8DVsWWYkCIQsfbXlahXMSDO8JBjiKzE=;
 b=DBICviUn80B4vACPChjXgYQ1fVN1D27i6m+AXsAn+MjifeJalm7tmA3rlvBossNCKHUJiM
 4WLzTUQ0tojDuxPoE3ob0pJqM8S6NCXDILIBtqpaGTEShJaL1x8geE/pWpY1n7E2ySLFtQ
 XZn69KL0j/faaojoZvs/k12TRcn8wYU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DBICviUn
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 10/15] ice: Implement
 VLAN tag hint
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Maryam Tahhan <mtahhan@redhat.com>, xdp-hints@xdp-project.net,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 15/05/2023 15.41, Larysa Zaremba wrote:
>>> +	*vlan_tag = ice_get_vlan_tag_from_rx_desc(xdp_ext->eop_desc);
>> Should we also do the following:
>>
>> if (!*vlan_tag)
>> 	return -ENODATA;
>>
>> ?
> Oh, returning VLAN tag with zero value really made sense to me at the beginning,
> but after playing with different kinds of packets, I think returning error makes
> more sense. Will change.
> 

IIRC then VLAN tag zero is also a valid id, right?

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
