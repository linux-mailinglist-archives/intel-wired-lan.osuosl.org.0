Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CC53F09EC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Aug 2021 19:09:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68B1E80ED6;
	Wed, 18 Aug 2021 17:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id azRx65lBmHDG; Wed, 18 Aug 2021 17:08:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B13080EDD;
	Wed, 18 Aug 2021 17:08:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A69871BF44A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 17:08:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9F1EC4018B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 17:08:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8IWuslkFcVx9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Aug 2021 17:08:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E991140185
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 17:08:49 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id t42so220135pfg.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 10:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=M71yeZtn0Mun3ZvdAVAmKe6cwHYWfdCa6xD1ze29eOk=;
 b=eSI1HCjh4Kl6cOZHIBRVDdCsWKr+5XL5Y1ma4RLKwOto7zySlZunuiaBhdzu3t7x0g
 JhkjjJ9e11TtkFw5I0fq5ujIlqgwC6LRqOyKqcfIEEYIdiKa9SODn0xOsEKeEIS8qnAZ
 Uy9xorihpMF2C2+Nn6mF+PPQuliZQep+xePSJBy3R+Knk0tODf2CHQTQacUzFXCIATCQ
 EdXgQQ/f0Peao9Hq9Vc28705MaMt6X6giB6Ygu0TyRziy63Y2o+2Q2kgRva7a+EHSLF5
 /yFTfQjVlU1T9m1ZK6puh9nRIY8lfOdVcyGdOFn6O11gLsjk9wV2C2yBgzU+PCEk+cSh
 EnhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=M71yeZtn0Mun3ZvdAVAmKe6cwHYWfdCa6xD1ze29eOk=;
 b=bHXQs4ZtP290KkBnb4JTPEUGvPn/wv1yCWI3GW4crvcpb+AVKSt3QvjooErBazqJcV
 oSki76UhN9Lm0xkmtHVm9KUKSZ2I2gcuYwcvVp69+fTj2C5Us8PRt/jDbjYlUS65IHRm
 vwvfoahToLlqRnRFzLrQk+waifSGdvYjwkMnotkGmCUzsQTQxW97i/G/8R5TH3/4gwmD
 OWAIaBy5cc/Cq3YQm9T193Yo8EmCsTHZGMhPAMNoFAb5Clp45XgprGy+2PCiIBL0i7I6
 /ZvJwP8gIbaIhBrMLLGIC5JJFrZKdeyRUUfDRlYbTpGOCNmrzo4v0e5zRZwk+7Oo/TsV
 MWeA==
X-Gm-Message-State: AOAM530JH9/JEjWrvw5RYt+5SDqi9uGCVn4b18WqOFkxjyEmgpXMRly4
 0S0ms4V39GDfsRc1sXXToEE=
X-Google-Smtp-Source: ABdhPJw3R40Uavn6HH+tNvVbXV+cgGaLDjHn0YN8aESokpiCkJ+872e8mbpXwzGHN61RBJu98HTrMw==
X-Received: by 2002:a63:101c:: with SMTP id f28mr9842153pgl.330.1629306529482; 
 Wed, 18 Aug 2021 10:08:49 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id k22sm305834pff.154.2021.08.18.10.08.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 10:08:48 -0700 (PDT)
Date: Wed, 18 Aug 2021 10:08:46 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20210818170846.GF9992@hoboy.vegasvil.org>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [RFC net-next 0/7] Add basic SyncE interfaces
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
Cc: cong.wang@bytedance.com, arnd@arndb.de, gustavoars@kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, colin.king@canonical.com,
 nikolay@nvidia.com, linux-kselftest@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, shuah@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 16, 2021 at 06:07:10PM +0200, Arkadiusz Kubalewski wrote:

> Multiple reference clock sources can be available. PHY ports recover
> the frequency at which the transmitter sent the data on the RX side.
> Alternatively, we can use external sources like 1PPS GPS, etc.

There is a generic PHY subsystem (drivers/phy) used by USB, PCIe, CAN,
and so on.  Why not use that?

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
