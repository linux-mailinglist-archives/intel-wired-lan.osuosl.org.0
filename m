Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E665F7F51
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 22:56:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9A8B8289B;
	Fri,  7 Oct 2022 20:55:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9A8B8289B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665176159;
	bh=Cm5540jYh3Bci61+Ex+mmq58RCgVgLgIZHs2xsZely0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DzoeOwFC38KYLAarj6KVj3ieBUw7sQEjEJMW0aNrcN9SXVG/Pc8eIi8sjSMVqBjww
	 HM/7mGN4rD80a9vM5MiId9F0p4Zo09ZI0NEQs4BLFgK9q9soHNZpQOD+ePIFgVD00m
	 evg7QH5sJqDBDC9Xua1sJow+EpHMJDXZfaIWoX0Dsd/rURgUjFEZ7B996qElysmowJ
	 O0U0mtFmmr3iEev4WMxtCKslxl9cKR6qNzseTZ/IfbyDqbWlNs/osXbBGC4A0kURfJ
	 p9VPLAw9IgEnuKaG5pDdIOTgvbqj9igM+hKrjtUw2aSFvZ0VW/MFOk/R80+ndk+PzK
	 rySg0mD0lqJ9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c1eGGOhnILN3; Fri,  7 Oct 2022 20:55:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B31198283D;
	Fri,  7 Oct 2022 20:55:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B31198283D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 717A71BF350
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 20:55:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4BCD360812
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 20:55:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BCD360812
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id atZZJTnpscHf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 20:55:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DE52607F2
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8DE52607F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 20:55:52 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id b5so5642492pgb.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Oct 2022 13:55:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IFPWhrX4gIO5dljIOB1AVs/J7AIxycktaaljB/3y5TE=;
 b=itNvDPJe8TO40syWfV+r/17lvPMvz8KQG2lMlkX5Dwh0mhLrtv1XHs2II9eBPsAQB3
 IL0h5uKlQDuKVcxRSPI/RSFB2ckd2R/N7NPBIA5+EtbOzLGaAQarmaBV/1blm2x0AZyG
 PznC1AqQuMJT6e9ddmxTcx68Rl+t1oYoVxRjGS/piBn30znS4dcVNrA8kMrZ4OkXZ7qT
 Ybsv5CZMKTO2fMma2/WfyQxArrU7lQRDdWwoGtULuqp5N++CNAuols9f8iOJKGq758nr
 V+6XqTDt4/BNAXX09Wcjq7ayKoskniAudvaluLlz1mrWr2TFaybuFrgrfR2fYrgczSaH
 zzjw==
X-Gm-Message-State: ACrzQf3sl4CGo1opwTue00AqXPylvhPBOwyNEa13gXmL7Xj9p+oURso1
 6vpYR69MUNm9pNHxGarSpJafqQ==
X-Google-Smtp-Source: AMsMyM5ynb0ayFDpF0qOz1Muc+k+zDdevfazNbJKhwe4/n2m89iIiPLOE5BvxyKhwwkoJWz44NsJIg==
X-Received: by 2002:a63:fd57:0:b0:43c:9a42:74fb with SMTP id
 m23-20020a63fd57000000b0043c9a4274fbmr6114525pgj.174.1665176151932; 
 Fri, 07 Oct 2022 13:55:51 -0700 (PDT)
Received: from fastly.com (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 n9-20020a17090a160900b001f319e9b9e5sm5027722pja.16.2022.10.07.13.55.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Oct 2022 13:55:51 -0700 (PDT)
Date: Fri, 7 Oct 2022 13:55:49 -0700
From: Joe Damato <jdamato@fastly.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20221007205548.GA49007@fastly.com>
References: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
 <25beff49-5564-dd48-c6db-d29b126677a0@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25beff49-5564-dd48-c6db-d29b126677a0@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IFPWhrX4gIO5dljIOB1AVs/J7AIxycktaaljB/3y5TE=;
 b=VstAuSCzctae/UrTiE31xi4DhUL3U/EtKRvAgM3WBdobwp9bVW3puJYhhKkV1j9Von
 NdiMNzRyuUUPa27H7JN0NntkOQ2mF3ADOfr4BBwCVJKG4f0QyxybKmk2rytmCzgJZko9
 nIx/OqSwWP6ViskYRss/qRitRJBDpJceU8FH8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=VstAuSCz
Subject: Re: [Intel-wired-lan] [RFC,
 next-queue 0/4] i40e: Add a non-XDP i40e_napi_poll tracepoint
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 07, 2022 at 01:36:20PM -0700, Jesse Brandeburg wrote:
> On 10/7/2022 10:57 AM, Joe Damato wrote:
> >Greetings:
> >
> >This is an RFC which is similar to the series up for review, except that
> >this implementation does not touch XDP at all and adds a conditional in
> >i40e_napi_poll to only fire the tracepoint when XDP is not enabled.
> >
> >This should avoid the issues that Maciej has with the naming of out
> >parameters (since none of that code is touched in this series) and it
> >clears the way for Maciej, Sridhar, et al to implement the XDP tracepoint.
> >
> >I am submitting this an alternative to what's already up for review.
> >
> >If you prefer to accept this code, please let me know that you want the
> >non-XDP version and I'll submit it as the 'v4'.
> 
> Given the discussion, this is the series I prefer. I'm very happy to see
> some more debugging helpers coming into the driver so thanks for your work
> on this Joe! As for the rest of the team they seem to be fine speaking for
> themselves, so I imagine they'll let you know :-)
> 
> For the series:
> Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

OK, thanks!

There's a minor build failure for a format string (lu should be u) in the
tracepoint.

I'll fix that now in this series and re-send it as a v4 with a proper
cover letter.

Thanks again for your detailed feedback and review; I appreciate your time
and energy on this.

Thanks,
Joe
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
