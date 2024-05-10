Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 750BC8C22C3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 13:06:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F372423FE;
	Fri, 10 May 2024 11:06:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uYAIOY4wIg1o; Fri, 10 May 2024 11:06:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E77B42396
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715339198;
	bh=cNv3h2hPAcC4VeJUM9WPf+YFoITQA3YIHDEMNhnkbuU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ldn3bdG9FEuxbfm1hSQ3HeQJJK6WNYW6MowOTqpAoiQjzGi5DxWwyQVxFWSL+SE+G
	 KMOj06Q7+xhoD4MMAQWq1vSaIwkaU9nirPemBfSjkX50TR7lFYteysAPx/vU33gwdX
	 O8w5cFQPm/kM8Hqg6P8QOlBS2DIjvZhUI3D1byqO+zFjQTBfOgrKbkvlQCwN/3EH1j
	 97eks8kontO40BpxXuMr28OycSVZMDsIowimUAVhcwMWIkD92nKfzM/e7RFOM6YUNd
	 6KOGBE3ShUrUUjbZY3LznrR9wXaLcoAnWOMFnQXhJteQUBoeVJUADuxa4WwrFKqb1j
	 Q6MlYn083kXdg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E77B42396;
	Fri, 10 May 2024 11:06:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 920781BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:06:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C73A42392
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:06:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Z0xItHruaG2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 11:06:34 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::436; helo=mail-wr1-x436.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9940E42390
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9940E42390
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9940E42390
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:06:33 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-34db6a29998so1298068f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 04:06:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715339191; x=1715943991;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cNv3h2hPAcC4VeJUM9WPf+YFoITQA3YIHDEMNhnkbuU=;
 b=JHDFgTXeVawWQ2cUCM5qKF/MpluN+1iS6PbrriCDfO67/NyizEJJkQFwYe35wHsnyt
 jMrLAZZwxjWe3cMbqOQ8/bLW+sIdjaHUtk08rQL9HqAx7B0tdxER6YlmVb9MvV2IwpIW
 Y0G+Q4Qfw6jakmbXfom3au0r9t+aX9DX1rh0Uz6HnlMbOD2IqGu3M2FPh2i83VQBQ9KJ
 l4LC4nkX+UHJ8JDQzYXhFHd3flQyq/6z32MJkIgFOLL3RxoKLnzzIjQp2l6VZj8OsFw0
 oPLotSjq3uwpdUcesy6bhKPmZ1WHR/JFbOodmfIlJYCd4+2TL4XNA+D47TNOsmssdMIi
 pWkQ==
X-Gm-Message-State: AOJu0YwjY1UtvbYcH5+cIQT0Kk80i7zRzRVWygVuo/lpCUk39BGfkbq2
 kYjgHQZ9dCI5JOqNb1+9Uo29nBQIHDyEkMZAVkYTAq7P611ceLiKLDI68Hy0bgs=
X-Google-Smtp-Source: AGHT+IErsx9K72qykBumWEujWyAufY8IZ1byl3WQ4ZzxercswAzMR2gbGDdw18CLAFN+3oRp5/TKqw==
X-Received: by 2002:a5d:5cc5:0:b0:34d:96ca:8c24 with SMTP id
 ffacd0b85a97d-3504a73c028mr1372977f8f.37.1715339191092; 
 Fri, 10 May 2024 04:06:31 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3502b79bd4fsm4331410f8f.7.2024.05.10.04.06.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 May 2024 04:06:30 -0700 (PDT)
Date: Fri, 10 May 2024 13:06:27 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zj3_sxDq5R0ZsYBa@nanopsycho.orion>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <20240507114516.9765-7-michal.swiatkowski@linux.intel.com>
 <Zjyv8xAEDhtzXAIx@nanopsycho.orion> <Zj3K0+JB55UFZYXF@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zj3K0+JB55UFZYXF@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1715339191; x=1715943991;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cNv3h2hPAcC4VeJUM9WPf+YFoITQA3YIHDEMNhnkbuU=;
 b=kMHtT5AbA5Unjpbl6XWw3XifAOoTswNwp3VraCjn3cxQLau8gJGtT1lSqtFuFprNHv
 wpcaiYPj2fHPff8jgPVFrVzhEPzW/PR7MOozHCIyVA9gKWbMltao6SycdOV3lz0jYWPB
 ntgPBBknsh62vd98uwUCWKn40PEVeeOy1+oyMHATIeOd3uefrJEpvQTBXrjpkZZDvbyu
 qbypT3X434PjNW5Ehp5TZAjgJfbN/ep7xRo+1CY3lZioSStUDn1olvJQxqx2gVK0gnVB
 k377fYoWPBgp5eEPHgIoXs/JDO+O4GPRZP0Nub3z1AeiydA3VgnzAYC25/bc4mEpzvBD
 U5Hw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=kMHtT5Ab
Subject: Re: [Intel-wired-lan] [iwl-next v1 06/14] ice: base subfunction aux
 driver
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, May 10, 2024 at 09:20:51AM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Thu, May 09, 2024 at 01:13:55PM +0200, Jiri Pirko wrote:
>> Tue, May 07, 2024 at 01:45:07PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >From: Piotr Raczynski <piotr.raczynski@intel.com>
>> >
>> >Implement subfunction driver. It is probe when subfunction port is
>> >activated.
>> >
>> >VSI is already created. During the probe VSI is being configured.
>> >MAC unicast and broadcast filter is added to allow traffic to pass.
>> >
>> >Store subfunction pointer in VSI struct. The same is done for VF
>> >pointer. Make union of subfunction and VF pointer as only one of them
>> >can be set with one VSI.
>> >
>> >Reviewed-by: Jiri Pirko <jiri@nvidia.com>
>> >Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> 
>> Perhaps it would make things clearer for reviewer to have all patches
>> related to sf auxdev/devlink/netdev at the end of the patchset, after
>> activation patch. Not sure why you want to mix it here.
>
>I need this code to use it in port representor implementation. You
>suggested in previous review to move activation at the end [1].

Yeah, I just thought that sfdev patches could be separate. Nevermind
then.

>
>[1] https://lore.kernel.org/netdev/Zhje0mQgQTMXwICb@nanopsycho/
