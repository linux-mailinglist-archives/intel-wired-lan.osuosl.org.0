Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E9E76F0D2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Aug 2023 19:44:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70DA441F5C;
	Thu,  3 Aug 2023 17:44:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70DA441F5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691084655;
	bh=tHmHFrUmJJz2N9FbyTMk5b8Dc/PdlkhVmnGThcOPkm8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gu8acj1Fg/RyQNLHh/qAIUm3rHOmP36ukWYuAyTk7w9w41/BGs3U8/G0CwezpMxyI
	 9UISXhjItqa/OzVpIcA1FtvjmiZOaPfPgDLYAUHTwWQfeGUX56yHQT8yGy5b1kLb89
	 GYxiQckAcynZZZbB/a9AncpyZZbmqIwjYoWe9yPxkHTMbsR4Rwcd/24OGJzhPsn7AO
	 0LJZCB9ts6vFNeCdwOSS0CAr6b9uy37lS1/0k0szMf9azZ88pFps2AUFL/xdMhdme3
	 QSpE1WV9g7xi0dq/x3m9421j/dYmYbGM6mXNxYMoxKi5z/PHqkvxVUJ8GALC40gq43
	 0VaL8BgveR+XA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DTfmN2HgYzqi; Thu,  3 Aug 2023 17:44:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF7F741B54;
	Thu,  3 Aug 2023 17:44:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF7F741B54
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BFC51BF38D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 17:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 937554049E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 17:44:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 937554049E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nz9SuWv7Vk5B for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Aug 2023 17:43:57 +0000 (UTC)
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3BF09402D4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 17:43:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BF09402D4
Received: by mail-wr1-x442.google.com with SMTP id
 ffacd0b85a97d-31771bb4869so1159030f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Aug 2023 10:43:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691084635; x=1691689435;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Io7mQTC7u4TMkvW7liLcAJzZyli7X14Wo5yp9Zcv/ck=;
 b=SqOdXLR34/pKfexp2jshiFg5kw5lMdIUSQQ2lj+XobH7+X+XfLFG8dV75920jExT6Q
 NNE7QG77nYn9pNT8fqXlpPTX4MS+L125YsL/nAVX8mS1ANCbSHJu3CPj4c6pqLAVat2K
 domzjI5NKc6NmABFWIfidi9hL1ixRVc6dyCvpF6AwxaC58574PV6dFHloqKoNDKoS0Qu
 +aOw6+LvjHhIRVjFd7hu16MSzbbnNBn7/S1jSi5BFXSTtLfQXcqvy4/vikNgVlDte1R1
 7Q5/AZ69Jn2yKGqwHOUtai9Ny2ZsyfmuDfJMyHD1Z1EqFw46teu+xBNsEzw+jXRC7jB7
 z0xQ==
X-Gm-Message-State: ABy/qLbKB1rTmDXFGXBcZFeCYYxEIfNMMKDQZtXk3M168o+S5jqFyEYk
 ynx4Gq+VsNLvhDj53Vir0kuxnw==
X-Google-Smtp-Source: APBJJlHd2CXTasjwVIRtla9qRgzSufHmd1/PKnldS+Y0B5CKOM7CBU2XoOXRoMAj4v/vKI9MMsJQPw==
X-Received: by 2002:adf:fd8b:0:b0:314:3ca0:c8c2 with SMTP id
 d11-20020adffd8b000000b003143ca0c8c2mr8146003wrr.11.1691084634834; 
 Thu, 03 Aug 2023 10:43:54 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 y16-20020adff150000000b0031762e89f94sm382920wro.117.2023.08.03.10.43.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Aug 2023 10:43:53 -0700 (PDT)
Date: Thu, 3 Aug 2023 19:43:52 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <ZMvnWIhrpOJA8bG+@nanopsycho>
References: <20230801115235.67343-1-marcin.szycik@linux.intel.com>
 <20230803131126.GD53714@unreal> <ZMuq9ph8HY6uAiGk@nanopsycho>
 <457944e2-c8bc-74a7-ec5b-4502c4ec2664@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <457944e2-c8bc-74a7-ec5b-4502c4ec2664@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1691084635; x=1691689435; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Io7mQTC7u4TMkvW7liLcAJzZyli7X14Wo5yp9Zcv/ck=;
 b=Cb3LtfP8TOWjRvBUCv9dFJns9DPK8qUrY9qqw+Ub9jScKInJoo6afAViNN5pgcQtsS
 nPXjvf2gxnrlxfoVrsbD83bhVzRQECaiYPAZn0wEdRE6ggozX4fRJmse6mBDWFOwyuZZ
 Ga/WVr0CcDe3SN0rqJQF7WWrjqOg6PEZEpalhgVWn0c7lJQYEK4T/LC2TuajG22E4FQn
 lwnYk++RpMOhqHPOcqS9Yg/uXa4JR03bnKkqpM4Q1yBDvEfCHxaH8DCdy/hd5aDdCe1k
 6IlaGleXY3SAKklfUH/oxtWHst6idHHY/ekPlObAiKwj9Zdqa0zt67d/gTypNV/Sedma
 PXiQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=Cb3LtfP8
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Leon Romanovsky <leon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Aug 03, 2023 at 05:11:16PM CEST, marcin.szycik@linux.intel.com wrote:
>
>
>On 03.08.2023 15:26, Jiri Pirko wrote:
>> Thu, Aug 03, 2023 at 03:11:26PM CEST, leon@kernel.org wrote:
>>> On Tue, Aug 01, 2023 at 01:52:35PM +0200, Marcin Szycik wrote:
>>>> ADQ and switchdev are not supported simultaneously. Enabling both at the
>>>> same time can result in nullptr dereference.
>>>>
>>>> To prevent this, check if ADQ is active when changing devlink mode to
>>>> switchdev mode, and check if switchdev is active when enabling ADQ.
>>>>
>>>> Fixes: fbc7b27af0f9 ("ice: enable ndo_setup_tc support for mqprio_qdisc")
>>>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>>>> ---
>>>>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 5 +++++
>>>>  drivers/net/ethernet/intel/ice/ice_main.c    | 6 ++++++
>>>>  2 files changed, 11 insertions(+)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
>>>> index ad0a007b7398..2ea5aaceee11 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
>>>> @@ -538,6 +538,11 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
>>>>  		break;
>>>>  	case DEVLINK_ESWITCH_MODE_SWITCHDEV:
>>>>  	{
>>>> +		if (ice_is_adq_active(pf)) {
>>>> +			dev_err(ice_pf_to_dev(pf), "switchdev cannot be configured - ADQ is active. Delete ADQ configs using TC and try again\n");
>> 
>> Does this provide sufficient hint to the user? I mean, what's ADQ and
>> how it is related to TC objects? Please be more precise.
>
>Application Device Queues, a conflicting feature unrelated to switchdev.
>If it's enabled, there's a good chance the user knows what it is because
>they configured it.
>
>Could you suggest a better error message?

The user would need to know what he needs to do in order to make this
work. So it would be nice to hint what rules need to be removed.

>
>> 
>> 
>>>
>>> It needs to be reported through netlink extack.
>>>
>>>> +			return -EOPNOTSUPP;
>>>> +		}
>>>> +
>>>>  		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to switchdev",
>>>>  			 pf->hw.pf_id);
>>>>  		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to switchdev");
>>>
>>> Thanks
>>>
>> 
>
>Regards,
>Marcin
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
