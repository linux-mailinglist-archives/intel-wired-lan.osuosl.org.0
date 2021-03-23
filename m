Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 756EE34569E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 05:17:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 411634047A;
	Tue, 23 Mar 2021 04:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RROqN1rpa9oz; Tue, 23 Mar 2021 04:17:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1832540473;
	Tue, 23 Mar 2021 04:17:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A8F2F1BF324
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 04:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9721A607B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 04:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ERoPs8MlkU5t for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Mar 2021 04:17:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A00F3606A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 04:17:10 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id b184so12948397pfa.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 21:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CUX3mLQWrZfnyxdTSeCG3Sj7YKQRqZrfDF48jRcdMOg=;
 b=Ja/S0tV/SRAeSgHwdw3vK1MNNCSKdgNrd4rq0qwI+vutZrYyUtx8vwTz4utgJsGk8T
 lBpdejYddDuaLdR5XQUfHWZHcWcTHsJTLKJnr2QcbcnhrI8uo0D6n6kby+tIPKtk9Ego
 kWVU6WaV4f5hrV8U6F6EXF7iGKj3oQLCOF1EpXv0E8cWw/Pseob4Kzv/DReQOmA0rKC2
 aUET/7hoGrv7v8jozzOWMrAZYNcxIrUhTUE3nW4nEXiop4WRjv2Iw7oT+DGR3y0BbrOg
 tmcmiH3jUWW4BisYrUXuqOcC0ce81vtSr0kquLA5anJLqy1XYYUXvd5o67Frs48QUmKr
 HyNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CUX3mLQWrZfnyxdTSeCG3Sj7YKQRqZrfDF48jRcdMOg=;
 b=TRJDFxVNBt4RwFPZHoHx2Y50GhHl1nw2IH5KwZzVj9hJQRzcGAFZxZfy3wWHDsBvNC
 35CqP8wnrdur5lI3TirmNy4toalyAYp7zUiZVEPNX48c7ffinzhkKI0FUZZGBTLzVc0j
 CcD5gQp96vAWG1F7blQaUJ35PUOFBojKnHvSYyD6WkaRIGLJmo0QYKiKNIC+fpZu3hRk
 0uE1hxc8YNyiZnjVSXYaMcvxdsItZGyls0iNYaNQFixEwjIotrrQZCXey03QqVvWKXTE
 Whw67jzjgI/rV3zCLb+372sD7ygUW+p7DihEle/GNqUiAUg2CK2qCDJBji22BVO0pDV9
 N7cA==
X-Gm-Message-State: AOAM530y9IeSwCHq4I9d7gxNIRw/myN2MkP8pANUzbFyRXtoVrVk74i1
 x1PMq93bQQIevtzE9Vm5juI=
X-Google-Smtp-Source: ABdhPJw2iM5Godyx1NKH/CekPRZlUpMb2ROBXPNMM9MyrR9xlXknQJwkQuISrS3SaivsUfFFxD/QJw==
X-Received: by 2002:a65:430b:: with SMTP id j11mr2432448pgq.143.1616473030034; 
 Mon, 22 Mar 2021 21:17:10 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:48:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id i8sm861786pjl.32.2021.03.22.21.17.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 21:17:09 -0700 (PDT)
Date: Mon, 22 Mar 2021 21:17:07 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210323041707.GB25323@hoboy.vegasvil.org>
References: <20201114025704.GA15240@hoboy.vegasvil.org>
 <874klo7pwp.fsf@intel.com>
 <20201117014926.GA26272@hoboy.vegasvil.org>
 <87d00b5uj7.fsf@intel.com>
 <20201118125451.GC23320@hoboy.vegasvil.org>
 <87czvrkxol.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87czvrkxol.fsf@vcostago-mobl2.amr.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for PTP getcrosststamp()
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
Cc: linux-pci@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andre.guedes@intel.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 22, 2021 at 08:36:26AM -0700, Vinicius Costa Gomes wrote:
> After a long time, a couple of internal misunderstandings, fixing some
> typos in the delay adjustment constants and better error handling, this
> one shot method is working well.
> 
> I will propose a new version, implementing PTP_SYS_OFFSET_PRECISE using
> the one shot way.

+1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
