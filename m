Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 144713FBDB2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Aug 2021 22:58:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3941E404F3;
	Mon, 30 Aug 2021 20:58:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y98XTxcVPUrT; Mon, 30 Aug 2021 20:58:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA739404F4;
	Mon, 30 Aug 2021 20:58:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1888E1BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 20:58:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1363C608F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 20:58:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id irnQ_TNgyMfy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Aug 2021 20:58:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F8B9608EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 20:58:01 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id x16so7630720pll.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 13:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wCOTcT4aDgkVs5iOttnpiCbbWmKqiOCvsGsS29KMnVI=;
 b=nSjWBAyABcIj/Tcr9MQ1eq6PF0/JE7WIdQCH1KM/kA4xbkJKohX9oIaipsNgnloCIA
 l72wmfq89Cv0YfR3otP8/WFajqtZEVUg3XJd3fyy8W1abaxjDmE8c4WErs0d+PttQR0X
 ytPMEy8TYpGTg8OE7xEp+lRYTHdd3UKF1u9e427kiEzEKTl26HTNmv9ieVwpXcKm0Rig
 f0FY1y0WPhe2jyYxwY0LqFZeqIpm3lV1U8/Q2fhXUEhC4y56E5IPv39zN/mE6mpHKGmR
 P+itEElqo+rea05iwMoNiYi22t7OVLfJFU13ry91z4lELoaWnoHTccYKhUxoTdwp+jO1
 ZfBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wCOTcT4aDgkVs5iOttnpiCbbWmKqiOCvsGsS29KMnVI=;
 b=VDasTCmwMj09bHr0Vq5ipzE3ATsLCrJLcGvw4m6jaGiEK27VwZZIdjh8Flq0oqxQkr
 MtSaSQ3PdKnPEURcDb3oajlZ13pum6L6satB5tZ1PKyrEIFixyWYdK1BtOJSPhncwOXW
 vF6umXPSIOkuy+6+FWZJ5yrhTKfqgOm/vKYmbQyYR1nFmIAoIk7BoASSIUfu4HxSEa7H
 8y8hjASxyDNtynT1efvm1OVjyMogLlonMJyxDM8HzJxU7c5Smjpc0Wse++w1br1v9OaZ
 52caqI6aLXqzxXwoD7j+1DEy/u78uhBjh9+1ZUWS++0uc3G3/UMHXdBxNLSDNnH1Q+wj
 BxJg==
X-Gm-Message-State: AOAM530sjRe4Qh6VKKGk61OCh116SLSD7WuhUXFgoIfNeoJsQffF2HA1
 o1s2v0+wAjY82sviFAIMsvY=
X-Google-Smtp-Source: ABdhPJyyB7uhFyxEIgMP2A0oPDvmFLCM+SX00jvt+VPSQuUIlCuXEpFmk1yczmsJq4+EoZxuDG62+Q==
X-Received: by 2002:a17:90a:9cd:: with SMTP id 71mr1123018pjo.62.1630357081078; 
 Mon, 30 Aug 2021 13:58:01 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id t4sm14962859pfe.166.2021.08.30.13.57.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 13:58:00 -0700 (PDT)
Date: Mon, 30 Aug 2021 13:57:58 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210830205758.GA26230@hoboy.vegasvil.org>
References: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
 <20210829080512.3573627-2-maciej.machnikowski@intel.com>
 <20210829151017.GA6016@hoboy.vegasvil.org>
 <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [RFC v2 net-next 1/2] rtnetlink: Add new
 RTM_GETSYNCESTATE message to get SyncE status
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
Cc: "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Aug 29, 2021 at 04:42:55PM +0000, Machnikowski, Maciej wrote:

> Please take a look at the 10.2 Operation modes of the G.8264 and at the Figure A.1
> which depicts the EEC. This interface is to report the status of the EEC.

Well, I read it, and it is still fairly high level with no mention at
all of "DPLL".  I hope that the new RTNL states will cover other
possible EEC implementations, too.

The "Reference source selection mechanism" is also quite vague.  Your
patch is more specific:

+enum if_eec_src {
+       IF_EEC_SRC_INVALID = 0,
+       IF_EEC_SRC_UNKNOWN,
+       IF_EEC_SRC_SYNCE,
+       IF_EEC_SRC_GNSS,
+       IF_EEC_SRC_PTP,
+       IF_EEC_SRC_EXT,
+       __IF_EEC_SRC_MAX,
+};

But I guess your list is reasonable.  It can always be expanded, right?


> If you prefer EEC over DPLL I'm fine with the name change. I think it will be less confusing.

Yes, thanks for doing that.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
