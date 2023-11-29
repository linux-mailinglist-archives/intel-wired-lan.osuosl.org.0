Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFB67FD9D6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 15:41:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47905614DF;
	Wed, 29 Nov 2023 14:41:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47905614DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701268904;
	bh=tixl+I4OvfuOulaKLpXBDW/99L5BPYD34qfoylc9gLM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JdCZspKZJ/ns/rgnfaAsj49Ujhvn1oX+2MO2AALRLd9HPFoBbXfHkf88MKAv90YQ/
	 4jYKXY7gf9o7IGzaklLaEF8IFuAOoTmG67sRUsf5JhlQMvTdgFxgVvvisfWmFu/9U2
	 N+1MWiN7sIvHBYvcrwvwOl29cdgOGlEx8TcQjCX/mN2xhjnz+L3fD2RmA9zeFwYVkJ
	 XkIC8lJYnjP8iWB07/nrpBvpyp0zM8sBi6w3ljDrgC6fCiYQEfqAYSXqtl3fFQlZR+
	 FjC4nueMtp7hhQ1Mby3KzEbkQxbSOnmSSJRbW1IGqrCNSV/LYYCQBzpS/Jy1UGF+0+
	 9Z3/pVrqeV9Lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oi6KLUtc7fHx; Wed, 29 Nov 2023 14:41:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F56F614DB;
	Wed, 29 Nov 2023 14:41:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F56F614DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 814461BF371
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 14:41:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 61D71614DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 14:41:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61D71614DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ybXR-1AOptv3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 14:41:36 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D905360B53
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 14:41:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D905360B53
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-5488bf9e193so9237397a12.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 06:41:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701268893; x=1701873693;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yyYsrVXR9VfHQeLrjs7Rji7raTyh+wNRCcIFYzXejwI=;
 b=b1Q2nSoXwQaKlmxoyCBC/rbezKaHXjzlZnPa5KDgHkvcXnKJJlsvXy0TH/Yd4vYIVi
 EvEygOgba9J+DDY3vXAQu1J33X8PPOjF5V+7P1DWt26mqibnDyIaCLJaIt8rZJ/vXSbj
 O6ZKg79iXTQXhFpljwyXkasbbBs0R1RYH6DX3Qqlt0Rvya+0EwcRual2YufdPV6n1EMG
 4pRQMQNksImVc0kHe5u1AS3iDI+yn/kYB/bsgZQwILLnY1UqYDbdWe163Sv81zP1OWdc
 QZoUwjcIGMK9nQL/7fF4APzEvE8m5SjonnFXiAR45Rq6eAMgXhUQcxvgN+eQNf0Gj8dg
 4Qlw==
X-Gm-Message-State: AOJu0YwfqHaLUV6vTI4JPujUKGOcwcpW9QSTK6V7jXYVN2fcl6O7DO6U
 pYRSNDmvZrmE70lU79cZtxAdmQ==
X-Google-Smtp-Source: AGHT+IHbWCQjyNsC/fDqwswBwuL8Ht4forXS21KOSAiBuCRNt8Yv7qu5c2eiDsLfudjMrXbWoHZ7aw==
X-Received: by 2002:a50:cd9d:0:b0:54b:5243:f7d6 with SMTP id
 p29-20020a50cd9d000000b0054b5243f7d6mr7475815edi.32.1701268893292; 
 Wed, 29 Nov 2023 06:41:33 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 o24-20020aa7c7d8000000b005432f45bee9sm7311740eds.19.2023.11.29.06.41.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Nov 2023 06:41:32 -0800 (PST)
Date: Wed, 29 Nov 2023 15:41:31 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: "Bahadur, Sachin" <sachin.bahadur@intel.com>
Message-ID: <ZWdNm5pnmZsrO874@nanopsycho>
References: <20231127060512.1283336-1-sachin.bahadur@intel.com>
 <ZWRkN12fhENyN4PY@nanopsycho>
 <BY5PR11MB42574D2A64F2C4E42400213A96BDA@BY5PR11MB4257.namprd11.prod.outlook.com>
 <ZWWYx18w2BnLyAZL@nanopsycho>
 <BY5PR11MB42574A519BF05AF80BC03E1A96BCA@BY5PR11MB4257.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR11MB42574A519BF05AF80BC03E1A96BCA@BY5PR11MB4257.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1701268893; x=1701873693;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=yyYsrVXR9VfHQeLrjs7Rji7raTyh+wNRCcIFYzXejwI=;
 b=RYU4KI+3o0K01Vy8l0HsnQF6d2NWB29zyP0CIN4V4WNDN6LT3Utjw8KQBN0v60PpH6
 RcxWUJam3FkeTCbTYQehs3vHqezAWr5S0R2c5sY2X1mQeP2+XgV491k5Es9y2BuubjYg
 7KRbOxUhzvqtqll8HY7sBxGdXH+vzpcHcsfnq8N8Xz49wSyZzs11I+bBILp48LVEr5Ry
 aIazTV5taBj83g6xtgkzmJLTGvVpv/Moxhhj7QapHlngb7n3JT297s54NF84psedI7FJ
 UsuJPSJiVshT4hhl6E1ccON+CKJgZ2RoorV6LctF6Br1oPAEg1aj2wfKvC7/nhs5EBCK
 fRVA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=RYU4KI+3
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: Block PF reinit if
 attached to bond
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Nov 28, 2023 at 06:45:47PM CET, sachin.bahadur@intel.com wrote:
>
>
>> From: Jiri Pirko <jiri@resnulli.us>
>> Sent: Monday, November 27, 2023 11:38 PM
>> To: Bahadur, Sachin <sachin.bahadur@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
>> kernel@vger.kernel.org
>> Subject: Re: [PATCH iwl-net v4] ice: Block PF reinit if attached to bond
>> 
>> Mon, Nov 27, 2023 at 05:23:55PM CET, sachin.bahadur@intel.com wrote:
>> >
>> >> Nack. Remove the netdev during re-init, that would solve your issue.
>> >> Looks like some checks are needed to be added in devlink code to make
>> >> sure drivers behave properly. I'm on in.
>> >
>> >Sure. This fix should apply to all drivers. Adding it in devlink makes
>> >more sense. I am not a devlink expert, so I hope you or someone else
>> >can help with it.
>> 
>> No, you misunderstood. I'll just add a check-warn in devlink for case when port
>> exists during reload. You need to fix it in your driver.
>
>
>What should be fixed in my driver. Can you clarify ? 
>And are suggesting I add the check-warn in devlink code ?

Remove the netdev during re-init.


>
>
>> >
>> >>
>> >>
>> >> >+			return -EBUSY;
>> >> >+		}
>> >> > 		ice_unload(pf);
>> >> > 		return 0;
>> >> > 	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
>> >> >--
>> >> >2.25.1
>> >> >
>> >> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
