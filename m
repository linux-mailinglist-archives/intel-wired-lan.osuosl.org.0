Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1B78147F2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 13:22:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E795C824DF;
	Fri, 15 Dec 2023 12:22:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E795C824DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702642977;
	bh=WeOaa6L6hslKdzI8sTl+6hI0kuJLGuqT7pqECoTFqmk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=win1xV7cOH6pGppnBLAFexi8azAoHLXTcRdoqZ0aPALa6QmzZPSWMph1Giaa3rorb
	 8TSF5Dh0dNyXsnw1gs9r0PT8rZQrGI7b1EF+DL56qWKNJ0Kazb7fMUahTBnhIPZwLg
	 0jPmFud8ZvpuUrMDajzEVmg6fU6zf8W0eBRwN5r78M4e7s4zztw+LZ2QKCdM3VBOMN
	 YTWwz8jeKU5QEXEqVuMGXdmpQ2NTnKx1ScYDconD8XOi3bKRywGd1p6aJYH6BKWLXN
	 yFJd0dgxPIFtB2oZM9h2OPvXgzOY8Fo797P3qHR5/NlyNsMEL0zaNxSARC1RHVCGTK
	 oDRcBaF9oRUwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id smdEDfSVh1Da; Fri, 15 Dec 2023 12:22:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6FBE81E9F;
	Fri, 15 Dec 2023 12:22:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6FBE81E9F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DD801BF338
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 12:22:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3133181F01
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 12:22:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3133181F01
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PDPXI3ixNf0Z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 12:22:50 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A4AC981E9F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 12:22:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4AC981E9F
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-40c2c65e6aaso6818835e9.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 04:22:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702642967; x=1703247767;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FN+6GvvrUZvDM7PrumZhDfORffhkx/he1rsNdPj/huk=;
 b=Fo395hPCrmmlHi0VJrzpd79p+hOyYVXZ5q8V76Xr0d74coAAWXLv93G+e0QjwSg57W
 qwcxzMk02zArpCG29NBHuRfraIhct6g/C6eSGP4ypkelqlLD4+MqG1OxwBJElLimD7O9
 O3QTdKHR13y2EfZ2qh7EizUvFiytqiVNm1eFzL1jDwR6g6tN5aKib2uu03/HpuMFv9Xy
 64uozaXsFqwQ8+f7ZktK2eBsPk7vY47nqZBQNZd9qsieC0tXNYnd65VUxlW0UsLt7zeA
 75yVmh5IA7fhpckij6OWPltqE2U204BHICqeKj9D7VH0wWOSdRNgbzvuDPrrk8ma+WpK
 1JVg==
X-Gm-Message-State: AOJu0YzAs63TB+LHbTFPyt7YLR5w3zTAP/1DSl0NHZ2I8xSk6tlxPE/E
 OKYm+kn9BaW76IqS/YYh7Q4IWA==
X-Google-Smtp-Source: AGHT+IHPTOXz858Q7MyMBpsaIk+jCj79ALm/BDWRRrqWoDeyU8iyU3Cws+ZJKqKmnhoz8XfNrS1+4w==
X-Received: by 2002:a05:600c:2051:b0:40c:6924:5f2d with SMTP id
 p17-20020a05600c205100b0040c69245f2dmr752061wmg.231.1702642967155; 
 Fri, 15 Dec 2023 04:22:47 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 n18-20020a05600c501200b0040b37f1079dsm31504681wmr.29.2023.12.15.04.22.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Dec 2023 04:22:46 -0800 (PST)
Date: Fri, 15 Dec 2023 13:22:45 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZXxFFU021-urYrUS@nanopsycho>
References: <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
 <20231118084843.70c344d9@kernel.org>
 <3d60fabf-7edf-47a2-9b95-29b0d9b9e236@intel.com>
 <20231122192201.245a0797@kernel.org>
 <e662dca5-84e4-4f7b-bfa3-50bce30c697c@intel.com>
 <20231127174329.6dffea07@kernel.org>
 <55e51b97c29894ebe61184ab94f7e3d8486e083a.camel@redhat.com>
 <20231214174604.1ca4c30d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231214174604.1ca4c30d@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1702642967; x=1703247767;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FN+6GvvrUZvDM7PrumZhDfORffhkx/he1rsNdPj/huk=;
 b=gqzzmTdWPWbDT0RuA8raAaA1Ks3YllDR5E3K88lQYa7PzbXmY/nCw/DyRks2ITXOxk
 hmjlM6a+qlZNPPDXTQaLloWFaa5UIFnK11yVwNbJ88/U3MeV/vmQ3jzVgInsewUjkkrd
 kw8rZUC/RbLSXd1K9jJRE7IfD5n/TNPQIYh02jRVpHqFS0Uzii8lyvKPkbX6QK63+PX7
 R0GUwfxecGVrEYdVcd4HA9jTsIXKhOTHhUH2lMJyYSrx7MueJAWFs0OFZp7Fih5VW1Km
 YDpVSFBTB7QKHc6cROdmZ56ROaJuEiHcZ/DfvjhwNMxFP8HYyPG640f7wREKlWx0wsNh
 V7Dw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=gqzzmTdW
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 maxtram95@gmail.com, Simon Horman <simon.horman@redhat.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>, anthony.l.nguyen@intel.com,
 qi.z.zhang@intel.com, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Dec 15, 2023 at 02:46:04AM CET, kuba@kernel.org wrote:
>On Thu, 14 Dec 2023 21:29:51 +0100 Paolo Abeni wrote:
>> Together with Simon, I spent some time on the above. We think the
>> ndo_setup_tc(TC_SETUP_QDISC_TBF) hook could be used as common basis for
>> this offloads, with some small extensions (adding a 'max_rate' param,
>> too).
>
>uAPI aside, why would we use ndo_setup_tc(TC_SETUP_QDISC_TBF)
>to implement common basis?
>
>Is it not cleaner to have a separate driver API, with its ops
>and capabilities?
>
>> The idea would be:
>> - 'fixing' sch_btf so that the s/w path became a no-op when h/w offload
>> is enabled
>> - extend sch_btf to support max rate
>> - do the relevant ice implementation
>> - ndo_set_tx_maxrate could be replaced with the mentioned ndo call (the
>> latter interface is a strict super-set of former)
>> - ndo_set_vf_rate could also be replaced with the mentioned ndo call
>> (with another small extension to the offload data)
>> 
>> I think mqprio deserves it's own separate offload interface, as it
>> covers multiple tasks other than shaping (grouping queues and mapping
>> priority to classes)
>> 
>> In the long run we could have a generic implementation of the
>> ndo_setup_tc(TC_SETUP_QDISC_TBF) in term of devlink rate adding a
>> generic way to fetch the devlink_port instance corresponding to the
>> given netdev and mapping the TBF features to the devlink_rate API.
>> 
>> Not starting this due to what Jiri mentioned [1].
>
>Jiri, AFAIU, is against using devlink rate *uAPI* to configure network
>rate limiting. That's separate from the internal representation.

Devlink rate was introduced for configuring port functions that are
connected to eswitch port. I don't see any reason to extend it for
configuration of netdev on the host. We have netdev instance and other
means to do it.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
