Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CED5607747
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Oct 2022 14:48:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D23A60E51;
	Fri, 21 Oct 2022 12:48:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D23A60E51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666356535;
	bh=Vmgq0KuLQ97lO5B37me93vEIOV6OlfwHG350anM0uHA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mmvZKo5eJJYSqmLbEm99cKQHTw2+bPqBYzn5RjlO3jKrHJx3KPNFYoCzSeIztXmpV
	 C0gcUeiam6CgTAvUbBRGGNWZOeBEcJYexbmUminZvOJ7Qij26iImiMCXjC0l+wgYlD
	 STpHHuRDAIYWVRHUuzHGbNZ4GJK4468lu8DjdgMA6yZWaPxxN1P/gM1v0efnsImH3z
	 ahmsejNPNxvYTsYntdszZCO3SWXywEn5dAMjMiWBotcmPfSXprfjs23lSd2pRNMf8I
	 2WZbMHkYIVgpmX1XvWv/Wgn8nKhGeR5pYEyYB04OP4QXWODgunK+EGYuzsd8mniT60
	 BT2dREQzC6c4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FeBNAe0FTAZ; Fri, 21 Oct 2022 12:48:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B77D60BB0;
	Fri, 21 Oct 2022 12:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B77D60BB0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A37E1BF2B4
 for <intel-wired-lan@osuosl.org>; Fri, 21 Oct 2022 12:48:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6359C418C0
 for <intel-wired-lan@osuosl.org>; Fri, 21 Oct 2022 12:48:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6359C418C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kgEkQHL7EIJt for <intel-wired-lan@osuosl.org>;
 Fri, 21 Oct 2022 12:48:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B284418B6
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B284418B6
 for <intel-wired-lan@osuosl.org>; Fri, 21 Oct 2022 12:48:48 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id i3so2458521pfk.9
 for <intel-wired-lan@osuosl.org>; Fri, 21 Oct 2022 05:48:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5C3AVO3KQTZSkl5k56jSXrjjeWkXIjKnpVmOu2WKA+w=;
 b=YrkSMeSqjSjd0gunZWoT67sUiX/KNcj1are9nqKA37u/QRq6tq6WMAgM9qz+y5U10K
 P8OaXoCAXNt3Zt/ExkIwNeeh3+/NLuVRERwwfgjzvIAz9iibwT4kpeZdlapE4kuAb2mV
 ykO7fAT+Fyf1fVd2WOU9P4yze4NviUfqPXhdgqxFOC3q2U8cDS8D08laLO5MvCA5Jq6O
 CBEvJM5H2c/F3T1NEzIKwjZSfR+TDJS8/7rgeBpZnEUlIfNniwTmqI4FyY9h9IStw5T+
 n8j7D3Qn/ipTx55kz2LH2cfK9xFSPoBQjTgmHpWrliQRt4G8dt+y8gUPGOdSAjzfD6nJ
 Hd1Q==
X-Gm-Message-State: ACrzQf1CXXccxIVHXi7hL66nFkfzMmg/qrPh+Tww/nydHofesBqi53mr
 ACCpsTuQokSNUJEI2LSnP6s=
X-Google-Smtp-Source: AMsMyM7l2QhXJZ8XnYp2zbPdQYvi0a48z/41cisCjeTh1CWC1Gzh62rJ3VQlyrUmnMeZriZmp84M+A==
X-Received: by 2002:a05:6a00:15ce:b0:562:cafb:2844 with SMTP id
 o14-20020a056a0015ce00b00562cafb2844mr19223942pfu.75.1666356527930; 
 Fri, 21 Oct 2022 05:48:47 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:640:8200:33:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id
 a15-20020a170902710f00b0017f8290fcc0sm14489927pll.252.2022.10.21.05.48.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Oct 2022 05:48:46 -0700 (PDT)
Date: Fri, 21 Oct 2022 05:48:44 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <Y1KVLAR2Qi6JeSBj@hoboy.vegasvil.org>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
 <Y06RzWQnTw2RJGPr@hoboy.vegasvil.org>
 <SJ1PR11MB618053D058C8171AAC4D3FADB8289@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <Y09i12Wcqr0whToP@hoboy.vegasvil.org>
 <SJ1PR11MB6180F00C9051443BCEA22AB2B82D9@SJ1PR11MB6180.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB6180F00C9051443BCEA22AB2B82D9@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=5C3AVO3KQTZSkl5k56jSXrjjeWkXIjKnpVmOu2WKA+w=;
 b=j1MjZpD+ug0V6KhohONi2vJRizcJYRla7DkjaDonrhtb6ZWMDlcQe/1dN2rp8x4Rxp
 1IdL9k7mW5V3S29XHgxgn3eM/CQ+W6noeMlQR2kn3rUhNbPF0ukRzBBhtmgdQZc7AzrH
 8oFLnpLfLqpoTYBXTWXL7k0tC4ZnwD5slQW9fhjhPBDQMiOxav15pEuULmzftJLzttav
 2yTGq75fNO6nWxvBmXN0jxYf08giZO0gVe3N84hfeYJC3LMK1QxPTsdmZeK+UwHv28pd
 eeq8+GlNd+kxF0wCR0HmhT7pp1syG/sjuZiKdwYEN3Y/K0UaNwMSgc/2sjMVmClMpDq9
 6mJQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=j1MjZpD+
Subject: Re: [Intel-wired-lan] [PATCH v2 0/5] Add support for DMA timestamp
 for non-PTP packets
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "gal@nvidia.com" <gal@nvidia.com>, "saeed@kernel.org" <saeed@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "andy@greyhouse.net" <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 21, 2022 at 12:25:13AM +0000, Zulkifli, Muhammad Husaini wrote:

> Sorry for misinterpreting SOFTWARE as HARDWARE in my previous reply.
> DMA Timestamping is definitely better than SOFTWARE timestamp because 
> we sample the time at the controller MAC level.

Do you have numbers to back up this claim?

> Could you please provide additional details about this? What do you meant by 
> offering 1 HW Timestamp with many SW timestamps? 

- Let the PTP stack use hardware time stamps.

- Let all other applications use software time stamps.

Hm?

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
