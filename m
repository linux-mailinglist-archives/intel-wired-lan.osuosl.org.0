Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDB86E5FDC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 13:30:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 892D341D72;
	Tue, 18 Apr 2023 11:30:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 892D341D72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681817444;
	bh=rmjexmj4ag58+s9zbltAbzXw2ZXSbDBogcUsJyM2cmo=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JyCILBxOP1zRQXvr17mTH/peNVUc/RqXHEil1DB3rhp6TYr0vgUzNd0dTKDR/D7dh
	 uyX2ykMZYK9c5PIuDR3GBn/t0+nMGsjlQGP/NKFVw9SRj2Oj+Mx24UGQzqgjfbWNHd
	 dtOz6uxYTdutzWojyXTmkivYY+vTmznLjUAV8R7cffaUoPA6HRyXbtVOl3vqug0JXZ
	 X0D+/FO/UsgAQdLTvR96nXrrmTMEZWX5LdijvD1MUIPkE+AiyU5WkqAm41z/GtPxxw
	 2nxjvOCihiaopua3MPnLzX5/WeWYcqFjPw1auU1WqWZvXyDCiuJDq5BhI9wBJYPIA0
	 VIkxR8OSkGMiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NDlbAScFDFce; Tue, 18 Apr 2023 11:30:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E80B41C38;
	Tue, 18 Apr 2023 11:30:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E80B41C38
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BACA11BF302
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 11:30:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9168383C28
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 11:30:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9168383C28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T8SYl4x8mMGN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 11:30:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 893F883B29
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 893F883B29
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 11:30:36 +0000 (UTC)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-622-YuPTkXSjO8imBBCX9Sylyg-1; Tue, 18 Apr 2023 07:30:32 -0400
X-MC-Unique: YuPTkXSjO8imBBCX9Sylyg-1
Received: by mail-ej1-f69.google.com with SMTP id
 l20-20020a1709065a9400b0094f1a119b2eso2940572ejq.18
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 04:30:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681817431; x=1684409431;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2NZNcaQomO+NKqJjtar1Xw2NrVLmqvUkGrhPIreowuY=;
 b=S6pQdTffuglDZcakXAyX6WGJZEmswUcwZ1yAnQyQ+Go+NAZ2YdjIA0HZ4fUCz3F5k8
 IW6MnD16YBxu6ozFWdKAb/UKSh8bOdEFU/obMYaI8HGZnTQmb4y2PV0yx9XpPAmTBwbX
 fvk/ONMCLRsf+6wU1ih8j5TBsJcxUta4aaa/Y6wEvZLTEy/oc3NCgJnju859A8LqI5U1
 IBgD1fBUIQAUDLXrpKpLAwVXDteUQdnm1yarHa3uSGJyqJdi7d6S+7f0XGT51qDw0TYd
 ve5cBJLBgqJsV5fdIpaIEL+zm9GDa0bM4rkjbeSO/+L3eHBY9eElolSt95RINqyUBrIh
 fqow==
X-Gm-Message-State: AAQBX9cJgjY97qnfMOZELqut4flW6ykRi7mbD23EQiM3hFvYeOO2EnZg
 PDs8FQgrIErqPXPI1A+BGjucHUDPSs/P/dMh2uOYltO75iNBnT2W7vai6vFgp28+q6+rx75oqj+
 MDbpNVHsUrlyIZC+AuHco4xGZfDOVJQ==
X-Received: by 2002:a17:906:f843:b0:94e:aa8e:b56e with SMTP id
 ks3-20020a170906f84300b0094eaa8eb56emr9920077ejb.33.1681817431001; 
 Tue, 18 Apr 2023 04:30:31 -0700 (PDT)
X-Google-Smtp-Source: AKy350acIP+hvK0ByCevyOjLp2f/7rZYWRoDzXgAVCS6a3+YiQfrV/CAqZB6bAiO8cFkN23mV6I27Q==
X-Received: by 2002:a17:906:f843:b0:94e:aa8e:b56e with SMTP id
 ks3-20020a170906f84300b0094eaa8eb56emr9920058ejb.33.1681817430677; 
 Tue, 18 Apr 2023 04:30:30 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 xd10-20020a170907078a00b0095328ce9c8bsm435698ejb.67.2023.04.18.04.30.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Apr 2023 04:30:30 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <231f26bf-4dc7-81ed-fd2d-91badb3af6b9@redhat.com>
Date: Tue, 18 Apr 2023 13:30:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 Stanislav Fomichev <sdf@google.com>, =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vu?=
 =?UTF-8?Q?sen?= <toke@redhat.com>
References: <168174338054.593471.8312147519616671551.stgit@firesoul>
 <168174343801.593471.10686331901576935015.stgit@firesoul>
 <PH0PR11MB5830F70FAC28BDBDE63AF01DD89D9@PH0PR11MB5830.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5830F70FAC28BDBDE63AF01DD89D9@PH0PR11MB5830.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681817435;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2NZNcaQomO+NKqJjtar1Xw2NrVLmqvUkGrhPIreowuY=;
 b=LJysKfmtQUMwUqcr+BfPU8ZWw/e+/gFfgvu7pWJnI+k5MW4cYwKqwntLYGk7S09LS5z/F+
 3DvuzN/xY5N9QJ7Uklbnd5y6yP0sTCpYsAomHm/FtNxlRXM30COEZip5NROJGmggksDD1D
 TXCNpWp8JFAKe9MO+hwFDC/o/JnGOU8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=LJysKfmt
Subject: Re: [Intel-wired-lan] [xdp-hints] [PATCH bpf-next V1 3/5] igc: add
 XDP hints kfuncs for RX timestamp
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
 "martin.lau@kernel.org" <martin.lau@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "ast@kernel.org" <ast@kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 brouer@redhat.com, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "hawk@kernel.org" <hawk@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 18/04/2023 06.16, Song, Yoong Siang wrote:
> On Monday, April 17, 2023 10:57 PM, Jesper Dangaard Brouer<brouer@redhat.com>  wrote:
[...]
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 3a844cf5be3f..862768d5d134 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
[...]
>>
>> +static int igc_xdp_rx_timestamp(const struct xdp_md *_ctx, u64 *timestamp) {
>> +	const struct igc_xdp_buff *ctx = (void *)_ctx;
>> +
>> +	if (igc_test_staterr(ctx->rx_desc, IGC_RXDADV_STAT_TSIP)) {
>> +		*timestamp = ctx->rx_ts;
>> +
>> +		return 0;
>> +	}
>> +
>> +	return -ENODATA;
>> +}
>> +
>> +const struct xdp_metadata_ops igc_xdp_metadata_ops = {
> Since igc_xdp_metadata_ops is used in igc_main.c only, suggest to make it static.

I agree, and I acknowledge that you have already pointed this our
earier, but I forgot when I rebased the patches.  Same for 4/5.

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
