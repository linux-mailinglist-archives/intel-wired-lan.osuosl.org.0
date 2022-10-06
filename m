Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F555F5DE7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Oct 2022 02:36:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CA82401B3;
	Thu,  6 Oct 2022 00:36:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CA82401B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665016615;
	bh=6rJ+alOw/6Nn3CDlKtiRRNBg6lVpbyY0XHY7mOpgGfc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xYsQYX5n79wh1khXdXembhWwbOhpBzYMJT+erEnqB4SIUPqx1N8kzKBLYfMm0+O49
	 tGyKzQgS8qArQdCxQ8uxL+owiBl+AZbl28ZZhhfjbuTMifkBm7Kj6OH+diCR0c+5fs
	 upIjvq03mu02sYIv8BXuN3aBLtZZwr3kNmDEGCHqjpB0uhYQE4cVutdf90vTulAUoF
	 q66KFZ6umUr0e6oNYmwM1Kb0sJENHXZHSGYW2Hu0L8v3reGIPKDRnWKQZpffQngbLu
	 UMQDMPjoYXHvjoS3SsPufGEyFm5kJOxzQec3c3h7HzSR76BtfzvZTkSOGO70RLdtCk
	 x4XYPVm5zuXWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f6VaBpBoyUuz; Thu,  6 Oct 2022 00:36:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CB3E40A9B;
	Thu,  6 Oct 2022 00:36:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CB3E40A9B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9ECB01BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 00:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 73B334186E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 00:36:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73B334186E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nnIPfAuS6hbw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 00:36:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1185241869
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1185241869
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 00:36:47 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id bh13so464832pgb.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 17:36:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date;
 bh=HGMyotpguw8XwNf4Vq02rrAo8ppFbjjeUnU4iOUzJD0=;
 b=WoZ3p0LQxLUJk5Li8Vl5tSEP/OswffHHQJm9ArEHFZJ8JmWuuTGMM3csFLBYEwQHYa
 fvOdFN6M6phiIKcfzDoRHKuC15D6jKr2/LWdfi15EK9gApdKJZd4838+Zj4rJSAQqiee
 1pPabIh8SyHC5DEFGziVzkexIdSO9qz6gBMwh7y8sSJne6q27E9L7EV2HhKXXXYdlKsH
 3o2GUhs9UAxwE8yXDJqrBkB3SbjXMPLPP0pilYMVcQGz5WLq6EXFXDOEFq6Q1INpL9DA
 1o+JOLm+r4Mf4mB/2A8oSTK5TYOr0jqjw+qXWQsdwvOUDjXt/DqjjCsfqqATucZ31GIA
 Dr7w==
X-Gm-Message-State: ACrzQf2AOkPInGKBbYd/4RlPuTYz47kUATq2G4Hm3mSYRh8uezxj8nR3
 yFIJp3Gx3k+WVh4aQFh31IabwdZuSq32tLriM10vZyBCkCHMiiGb5hcKDcGGbyPsuceDU5ABj3S
 kTvfphBC7F0Q9iqug96BGFvG4GV8XQSVjJUO9bTaG4oN6Fh6sYZVacrK7S8rvchY4iyzkQGse3K
 r9LzfBxA==
X-Google-Smtp-Source: AMsMyM5+Al5Oqip/VJkIKQcSA9Ig1ymrD4QO1BwJbN96KtWTCk8iccSn8FU3VhDLAg3xTA5SaWk/1Q==
X-Received: by 2002:a65:6bca:0:b0:420:712f:ab98 with SMTP id
 e10-20020a656bca000000b00420712fab98mr2091051pgw.350.1665016607229; 
 Wed, 05 Oct 2022 17:36:47 -0700 (PDT)
Received: from fastly.com (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 w6-20020a170902e88600b00174d9bbeda4sm17988plg.197.2022.10.05.17.36.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 17:36:46 -0700 (PDT)
Date: Wed, 5 Oct 2022 17:36:44 -0700
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <20221006003643.GB30279@fastly.com>
References: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
 <1665004913-25656-4-git-send-email-jdamato@fastly.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1665004913-25656-4-git-send-email-jdamato@fastly.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
 bh=HGMyotpguw8XwNf4Vq02rrAo8ppFbjjeUnU4iOUzJD0=;
 b=sXb8nG7X+awxg5gECHRiRSFj9Z/RDAacIhnfHwV0X7dTU5sfD5PUfgYxau7ryLJL0Y
 gQddTfD0GpQkjv8NK1vp3Ymgu+UxhxEJMCaORVpBKhLjBmC+oRfAydjn3vCUVppYr8D6
 LIkfnhymJFm4L2yEW6aR1IlhmrbWD97dvz8c0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=sXb8nG7X
Subject: Re: [Intel-wired-lan] [next-queue v2 3/4] i40e: Record number of
 RXes cleaned during NAPI
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 05, 2022 at 02:21:52PM -0700, Joe Damato wrote:
> Adjust i40e_clean_rx_irq and i40e_clean_rx_irq_zc to accept an out
> parameter which records the number of RX packets cleaned.

I just realized that this change probably also needs to include an
"rx_clean_complete" as was added in the previous patch for the TX case so
that when the tracepoint is hit it will be more clear which of the two (RX or
TX) triggered clean_complete = false.

I think the tracepoint should have separate bool flags for each of these
cases (but neither will be used to modify control flow as Jesse asked
earlier).

I'll leave that fix for the v3, in addition to addressing any other feedback on
the rest of the changes.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
