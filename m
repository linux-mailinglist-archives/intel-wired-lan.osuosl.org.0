Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618B87C6F77
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 15:42:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6AB644026E;
	Thu, 12 Oct 2023 13:42:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AB644026E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697118159;
	bh=y6Qv7QnPWJAPqe/5yF//HlpEoBPuJuTs+l8CKOJTspM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sVQP2xfJDdMz1XNh6C7LztLpQKBNqEB54cPk9AZDyZv6/2Zg1Gvlh7UIRQZVzHIH5
	 5fKTPeynHcgC++W5AQunBbIQYYO7RNxqE1WD4GBIptMFVkdeBfkLQHScuCWlOz3SiC
	 7PdFVoL2pmS7VUUCUMz8WW2r3saQ6mUkbOc4GZRndzF9BslnfA3seEk9DJFf3keLOp
	 6US4ZWE99VGhjejbpSfK6IhVOf9iRuSDTcpI/xcSYFBOYWWVd99uJl6jxoWoXmQtDL
	 3PyKzYHg1eeiDAjld38SOkKZi+kqde1j+fcN7P7F4cMyP46lerYB4RGrcRiVflBYuY
	 oq/68UKIgKTiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5vqgrltJGBzY; Thu, 12 Oct 2023 13:42:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 415024013F;
	Thu, 12 Oct 2023 13:42:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 415024013F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE3431BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 13:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FB0341EFE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 13:42:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FB0341EFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RpOufKcnyOQr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 13:42:31 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1181E41EF3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 13:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1181E41EF3
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-53b8f8c6b1fso1795742a12.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 06:42:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697118149; x=1697722949;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ptKGcVsgbG5guyvEzNf7T8XWxFq0oIGK9V19XuyWDf8=;
 b=m5NPGv6Y+WyFaH85nqlr5atdYr1GqGMnd1LQ0bv0uCPx/MrfeHVhNF3E3DaZkw97tf
 D07jhWL9QLDo2gXWO4+9beAwe/Oui44Tdj/coVaJVTenn6LYntg8Gfxt6nDFyGnWrCkL
 s8HfTzWK568qeZ+1uoZawIT2FJNrlFikudmCUVAmtetBIiolOFKCRB5eNS7y1rC994E9
 9laCbyq/9MwOugfp7F2ffuXf0XlvYD1eOmv8JtKNejrsE14P/sCXfLuQ8hDcNOeMeFSG
 +r+73iv0HIy0iAY5p6trLzYAf5QzhQqYVex6tOJ+e37Hzf4D6vEaUQxzKKfCUJINmAM7
 daGQ==
X-Gm-Message-State: AOJu0YwBDpCxns5Uv+hOo3k7xmnB583V8VTd3Yy/ghagAOz2KNywB/o3
 09esFMx8u/O1fkK7w3KUo5Bsog==
X-Google-Smtp-Source: AGHT+IFs1Cpu+Eb1jCRwmQJrX297SwOYbLj3Nj99SCnBBymP4GBDj2PjQh/8sjowPyhMbuB0//dtpA==
X-Received: by 2002:a17:906:318e:b0:9b2:d554:da0e with SMTP id
 14-20020a170906318e00b009b2d554da0emr19260450ejy.69.1697118148835; 
 Thu, 12 Oct 2023 06:42:28 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 e5-20020a17090681c500b00993a37aebc5sm11025050ejx.50.2023.10.12.06.42.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Oct 2023 06:42:28 -0700 (PDT)
Date: Thu, 12 Oct 2023 15:42:26 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
Message-ID: <ZSf3wqZ33fA0yfA1@nanopsycho>
References: <20231011131348.435353-1-pawel.chmielewski@intel.com>
 <20231011131348.435353-2-pawel.chmielewski@intel.com>
 <ZSa7Y9gwC8qCBv2r@nanopsycho> <ZSf1m7uIYGuF35a8@baltimore>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZSf1m7uIYGuF35a8@baltimore>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1697118149; x=1697722949;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ptKGcVsgbG5guyvEzNf7T8XWxFq0oIGK9V19XuyWDf8=;
 b=TOBz343YKcgXu5qFFoYf2JoiJv3n/LYR9dnjh7q7OePm+i0Qkj/9AzJMoUMAf0pi1g
 +ue2gAiqOtKB6gp53glAY2y+4Q3ehDj6thE6vY8o3iqlgZkVKrsgY6ASo2zGoESENZ5V
 ECavcWDpSN1D4yLb/8i8/vImfv7D7v4tt0nHn2vihT0jX9xFXa1fhZODxPGS6wtFYQ20
 AwrQN6GzOJXRmhHgdUW6l373iFf9QzEiXiDsdKL2VfHJRu0i2f7YvGKVU8wfoW3Nclyv
 fqMtqF+BE8FD1o6usm3ycn+9ZlEPPqagPHudeapdaH/6cFFflYTPfEhTKzGwgvLR34YK
 wxLw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=TOBz343Y
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] ethtool: Add forced
 speed to supported link modes maps
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 netdev@vger.kernel.org, jdamato@fastly.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, Paul Greenwalt <paul.greenwalt@intel.com>,
 horms@kernel.org, vladimir.oltean@nxp.com,
 Jacob Keller <jacob.e.keller@intel.com>, kuba@kernel.org,
 d-tatianin@yandex-team.ru, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Oct 12, 2023 at 03:33:15PM CEST, pawel.chmielewski@intel.com wrote:
>> >diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
>> 
>> Why you put this into ioctl.c?
>> 
>> Can't this be put into include/linux/linkmode.h as a static helper as
>> well?
>
>I'm a little bit confused, include/linux/linkmode.h doesn't contain
>similar ethtool helpers.. Did you maybe meant ethtool.h?

I just looked there linkmode_set_bit_array is. ethtool.h might be the
place.


> 
>> 
>> >index 0b0ce4f81c01..34507691fc9d 100644
>> >--- a/net/ethtool/ioctl.c
>> >+++ b/net/ethtool/ioctl.c
>> >@@ -3388,3 +3388,16 @@ void ethtool_rx_flow_rule_destroy(struct ethtool_rx_flow_rule *flow)
>> > 	kfree(flow);
>> > }
>> > EXPORT_SYMBOL(ethtool_rx_flow_rule_destroy);
>> >+
>> >+void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
>> >+				    u32 size)
>> >+{
>> >+	for (u32 i = 0; i < size; i++) {
>> >+		struct ethtool_forced_speed_map *map = &maps[i];
>> >+
>> >+		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
>> >+		map->cap_arr = NULL;
>> >+		map->arr_size = 0;
>> >+	}
>> >+}
>> >+EXPORT_SYMBOL(ethtool_forced_speed_maps_init);
>> >-- 
>> >2.37.3
>> >
>> >
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
