Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1BC2B14AA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Nov 2020 04:25:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFFD08789E;
	Fri, 13 Nov 2020 03:24:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kUBLSfPBS2Jr; Fri, 13 Nov 2020 03:24:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1008C87899;
	Fri, 13 Nov 2020 03:24:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E04B1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 03:24:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9804D8714D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 03:24:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6G0YDq7YRAIk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Nov 2020 03:24:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2528C87360
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 03:24:55 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id x15so5115679pfm.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 19:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IrE75K0NizerR3Wqiaotbx/ZTvWDabFAa1OrR3pXQBM=;
 b=tiqP62IaMm6SRIY34zK1I6Vd/AdYWXLclGpsFGDxzEfFmvIutxtBVS8EATJ3zTl1v6
 iMT/9l21aMFpcbx/Zd22XI0meooOfiwQjMMXX5V4hDMKXVRBxmiqT693bbRnaRcZMcPB
 cJUe4emdu6yTO1EOepN4hnPfht8E518Eg++8grjl+hqUlO33jxCx5Z9Ewp9VMxf8HZJ7
 2doCEx5PDUL4l+tpiloMAyeGBqQbluCKb8quaDFIZT1dCqN1nHzZ6OadfU5z2SMvYJ/t
 dwr5IcM6rFyY2n08rG3whqdZZPimxVaSZTNEvEw//8DPm+darGuDtFXqeLcGC0PVK8Ec
 C7GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IrE75K0NizerR3Wqiaotbx/ZTvWDabFAa1OrR3pXQBM=;
 b=FSawC9CCXLSJYTZChOV2G49puEsrgXG3mXkPNdyk0uDCKmksO1t7yvq7sH81lML5lG
 x7+69s7cvI49arWr/5UZMfHeb5BLTa7fsBaHlHe/d4ZtUBUz6+dUgfeLZEgbBlzgskQc
 dM70oUbzz0OENZCHVBMMTLM1zsO1TELySi6YL05vG96+d+tYjFMeNgKr9TaVJUeuEU0/
 H7C3lG57ht94vH+nX2LfBHYY4Du3l1023YtL98C3DGpHj1bimEcSK5uFZhAp7DogAF4/
 7cWITdP5rpE1TLd70GyLxT8sshk1Jgp0ks3oQh5M2UovJI2uzLRT/f6hvd6LdNyv7px6
 Nk6Q==
X-Gm-Message-State: AOAM532KCqoZcF1LCp3/hlI//9a5efHLMAQWwrugfDt2OD5evgNCrLDB
 RWkWX2y4LVeznfMmc1aAcgo=
X-Google-Smtp-Source: ABdhPJzcuTIzDajv93N7IQPN6QpZ/QfdtRcZ+OE7vEUpY+BoiTpWkaSmuDsIvd1J3W0wjx3m3Q5maQ==
X-Received: by 2002:a65:590e:: with SMTP id f14mr456228pgu.58.1605237894762;
 Thu, 12 Nov 2020 19:24:54 -0800 (PST)
Received: from hoboy.vegasvil.org (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id v23sm8361002pjh.46.2020.11.12.19.24.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 19:24:54 -0800 (PST)
Date: Thu, 12 Nov 2020 19:24:51 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201113032451.GB32138@hoboy.vegasvil.org>
References: <20201112093203.GH1559650@localhost>
 <87pn4i6svv.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pn4i6svv.fsf@intel.com>
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 12, 2020 at 03:46:12PM -0800, Vinicius Costa Gomes wrote:
> I wanted it so using PCIe PTM was transparent to applications, so adding
> another API wouldn't be my preference.
> 
> That being said, having a trigger from the application to start/stop the
> PTM cycles doesn't sound too bad an idea. So, not too opposed to this
> idea.
> 
> Richard, any opinions here?

Sorry, I only have the last two message from this thread, and so I'm
missing the backstory.

Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
