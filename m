Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0D776EA2F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Aug 2023 15:26:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AE7761321;
	Thu,  3 Aug 2023 13:26:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AE7761321
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691069194;
	bh=xicdnqEh3BDudVWGHQj1Nnwxcng/TwBru+SzrPAoTbE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tvGLi8Ocwd6ibkiS2xNVmhfO5Jtx+a4DjIfvH1Y3NrQX05a+jeAdY090ZHjStiQTQ
	 MzCQ8PaFZa3c0fKrgJhjUiERouFax2YsP4PxVYF4bh2Mg1bxw2SkagVH5Df8+Rxi8x
	 4gqkkdiQwAvmnI2L8YxkWma5jq7uoaYeTL0z4ihL9sfe0DmVta0A5eLiRl+cAPyqlP
	 P0jY+tFiPpImpOtky4A168d2LclgUeE8yetG42TJ4tfWF7OBOrpAwmbPdjLBLme/PK
	 iaB/YZm+7XInSpoqOsPjAznabd97Mdx/cedDS7UuzDa5xd3nsMnDNvu3xuehD8yxfg
	 Ltu0rN4mqJi9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y6Dy-K_BZGoM; Thu,  3 Aug 2023 13:26:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A66D600BB;
	Thu,  3 Aug 2023 13:26:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A66D600BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 51F3F1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 13:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B94E8205E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 13:26:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B94E8205E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZjjY2EQ6euu5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Aug 2023 13:26:19 +0000 (UTC)
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C91A580C42
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 13:26:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C91A580C42
Received: by mail-ed1-x541.google.com with SMTP id
 4fb4d7f45d1cf-51e2a6a3768so1226807a12.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Aug 2023 06:26:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691069176; x=1691673976;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tsfLa50d0LTbTXWGIG9cWCrDi/9kxGjI71wE6S3Ncd0=;
 b=XFpjGBvdjloctTiwT/AcbA6ibOGK6I2XLT9On/FUcWWKo/oJlQgY1BrBxhjgQnU+KJ
 Syum1tKV6r4pgJORAtIGu3Ut1QcUnBJwAwH70uYLV0QKCfD4aw9OaKvhzttO1yRcpy31
 Gmov1Y+dWHEwlm07MHh0XLzHEeRn4+Cq9GS4a/9WafihNpuRRCZ3tqhkdBIOaFEXCHqV
 EpHs4sOwVqazfmKZ5twxZiiUZfcTCbyK3DwCGMZvVrbZcLkkcSEk2YVy24yaTtH1dVoC
 ieMqNgGYQVe4BMGAfMMhkXzULVb2nCgRvJE3Fg0WmpQhSan+w6G/XuzsN8Atd3paejA1
 jnjQ==
X-Gm-Message-State: ABy/qLah8QM7FQ6d8wWnYcqFh4ZFH/Dit4iLNnCI9nA2YHffOrut5G13
 GVwwBpVJXjhoREjg9h2UTgkyoA==
X-Google-Smtp-Source: APBJJlHDFRJQKUaRPC6zjQ12Grp104tPB3KJmKbvY+QD51uwRYjZpcZCH1rkAtq5qzoHXh22xgUpug==
X-Received: by 2002:aa7:c0d2:0:b0:522:d6f4:c0eb with SMTP id
 j18-20020aa7c0d2000000b00522d6f4c0ebmr6632791edp.40.1691069176497; 
 Thu, 03 Aug 2023 06:26:16 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 ay9-20020a056402202900b005223d76a3e3sm10039636edb.85.2023.08.03.06.26.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Aug 2023 06:26:15 -0700 (PDT)
Date: Thu, 3 Aug 2023 15:26:14 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <ZMuq9ph8HY6uAiGk@nanopsycho>
References: <20230801115235.67343-1-marcin.szycik@linux.intel.com>
 <20230803131126.GD53714@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230803131126.GD53714@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1691069176; x=1691673976; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=tsfLa50d0LTbTXWGIG9cWCrDi/9kxGjI71wE6S3Ncd0=;
 b=IoDOJWgnq1g0EZJtytRQIX8dk7lTzTaSp4bYaSLV0C5R85mxcwHWG/Z0hTtTK2HeyJ
 F/PAv+8ZuyKmrnJ4cOs/k4w17cs1tM/jo58yeEHU4SD5xbIt0rX6gVJrvijp4QTncqIJ
 /YRuy98ENiQxc8R3it4TkDdPQl57pGKzfGNs+apma+QzCD8WeX1XU5PepK6Qce5Ku8CG
 Lik2txXBHL9OZYwsR+A1IbsANVCvPOdWpD7dVKSCb3qEW7KpJ9cRowLVAFaypBOZn+W6
 e4D2D/QF704pracRnmkptpthLJ2D3qLjzYXTNJrns85mt/OIYsxiHjhXRoqFavehFCvn
 O0Mg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=IoDOJWgn
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Block switchdev mode
 when ADQ is acvite and vice versa
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Aug 03, 2023 at 03:11:26PM CEST, leon@kernel.org wrote:
>On Tue, Aug 01, 2023 at 01:52:35PM +0200, Marcin Szycik wrote:
>> ADQ and switchdev are not supported simultaneously. Enabling both at the
>> same time can result in nullptr dereference.
>> 
>> To prevent this, check if ADQ is active when changing devlink mode to
>> switchdev mode, and check if switchdev is active when enabling ADQ.
>> 
>> Fixes: fbc7b27af0f9 ("ice: enable ndo_setup_tc support for mqprio_qdisc")
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 5 +++++
>>  drivers/net/ethernet/intel/ice/ice_main.c    | 6 ++++++
>>  2 files changed, 11 insertions(+)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
>> index ad0a007b7398..2ea5aaceee11 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
>> @@ -538,6 +538,11 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
>>  		break;
>>  	case DEVLINK_ESWITCH_MODE_SWITCHDEV:
>>  	{
>> +		if (ice_is_adq_active(pf)) {
>> +			dev_err(ice_pf_to_dev(pf), "switchdev cannot be configured - ADQ is active. Delete ADQ configs using TC and try again\n");

Does this provide sufficient hint to the user? I mean, what's ADQ and
how it is related to TC objects? Please be more precise.


>
>It needs to be reported through netlink extack.
>
>> +			return -EOPNOTSUPP;
>> +		}
>> +
>>  		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to switchdev",
>>  			 pf->hw.pf_id);
>>  		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to switchdev");
>
>Thanks
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
