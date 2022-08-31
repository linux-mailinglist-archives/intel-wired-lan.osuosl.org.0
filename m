Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401315A7B4F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 12:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 498FB40C13;
	Wed, 31 Aug 2022 10:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 498FB40C13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661941445;
	bh=Alrs+KM0H1LcKDh/zb/EHp3AB7XoRB9UirxqkbE05pA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lpYNM1kLOnaSJW0f6INYkpM2o8UN6VN849GnSX9BZyn1CXOKJFhlLxzPmk8aWq1OT
	 fTBxes1ZEsRhoiOUDaX8HEbGlfZnZ7zrhkk+EDvJ1osbxORbR2m1XgWCGCnZm1Do8r
	 vhHzMhICfNbNLsAHWNwFpG9JTWgeGgFbi3wBA+PAehSayWRKovASLKpI5jansOyR42
	 pSitzHpdAS26u+k87FQElJH43SbAJp2blT+SE7HX+XiO+njCTmjwSyFwyfKZ2o7TVy
	 yVkEofYRqXdQDuRewHZ6MBhnlknmpqNNpNsV5izW1FdFWBHCZUM9VjqQ7KSSFU19p7
	 sr5vcHJWpydwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N58nukiKTqIS; Wed, 31 Aug 2022 10:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A3D14049A;
	Wed, 31 Aug 2022 10:24:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A3D14049A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 29B901BF48D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 03F184049A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:23:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03F184049A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XlA4GhW9NfG6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 10:23:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CBD24014C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5CBD24014C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:23:58 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-135-ykba-OcXOa6ns0uwh_ouAQ-1; Wed, 31 Aug 2022 06:23:56 -0400
X-MC-Unique: ykba-OcXOa6ns0uwh_ouAQ-1
Received: by mail-wm1-f70.google.com with SMTP id
 f18-20020a05600c4e9200b003a5f81299caso8091380wmq.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 03:23:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
 bh=tsS+L2YjkO3WVV5HkYObnWDH4T6ckh7IBFMzdt529zs=;
 b=dZ07O1mmjwD+F6Ajxr5YXveXbU6JUiotqmQfyZPRcpxHVLdqJkmUDZh6SEGrgiM0Xp
 JykgWAJ13XYk42ZLkE9yDVysUi7SmM/vr0d9h1gEJwPp/cyjYNP6ZEyOXkOdw15EJNVB
 o8dYJiQwwQROar8T4NX6wC7d2bkJvjqe2GYREG7lLve2L6Kv7HtdLxM0VtdNW+/9GlNz
 kYEW3ZVt+6dqo/qHe7dpKSnYt4h2SNtOuHmAE7KJwzwEHKZgE4axJKhlkgTK27YqpkAm
 j9RVW1EuQ9MsS3UvLpk4u4yYnEOj0PrHFdPQMh40qotpfEBIemHEouryRbrpIe8qbOGa
 raYQ==
X-Gm-Message-State: ACgBeo05nyveGkJLGh3QKLx7zvSlFpUHZZPfv/fPwCi3XtUJvsrkdmvj
 PfUTWbN4yrSuR06inIOBq2WnZT2njeiPDlSleH0LXCho1aIQc5A8pAm3ScaPoT+K0DOEjDk82Qe
 XOxrqYhwiFka5QigoBbUFJdhUuwO8gA==
X-Received: by 2002:a5d:6b49:0:b0:225:6e92:22f5 with SMTP id
 x9-20020a5d6b49000000b002256e9222f5mr10878283wrw.529.1661941434985; 
 Wed, 31 Aug 2022 03:23:54 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4MTk4YJKv8LPNAZQ8lpm7FcWbRB4lTOKVM8J9PDWuEDMAYwn7MnJgFAQ5hDogEwUWYw+1Zyw==
X-Received: by 2002:a5d:6b49:0:b0:225:6e92:22f5 with SMTP id
 x9-20020a5d6b49000000b002256e9222f5mr10878260wrw.529.1661941434821; 
 Wed, 31 Aug 2022 03:23:54 -0700 (PDT)
Received: from pc-4.home (2a01cb058918ce00dd1a5a4f9908f2d5.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8918:ce00:dd1a:5a4f:9908:f2d5])
 by smtp.gmail.com with ESMTPSA id
 a15-20020a056000050f00b0021f0af83142sm11936974wrf.91.2022.08.31.03.23.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Aug 2022 03:23:54 -0700 (PDT)
Date: Wed, 31 Aug 2022 12:23:51 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20220831102351.GC18919@pc-4.home>
References: <20220829094412.554018-1-wojciech.drewek@intel.com>
 <20220829094412.554018-4-wojciech.drewek@intel.com>
MIME-Version: 1.0
In-Reply-To: <20220829094412.554018-4-wojciech.drewek@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1661941437;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tsS+L2YjkO3WVV5HkYObnWDH4T6ckh7IBFMzdt529zs=;
 b=POe7mHvCQ8ti69OTHqWHvn2WcVfz6ei5HLZzjGnMBTBZTP8+DTYdKiZFv3p35+6cFm24jF
 c5iuU4hLFvgLI1OD26tYotALeK4uFHB00/uaAd9eipjZGXTygedn61j6IpN1erkWgni8I2
 Bt1ozcPKgdjhkXEw0CEnViuPgeYGBEg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=POe7mHvC
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v2 3/5] net/sched:
 flower: Add L2TPv3 filter
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, komachi.yoshiki@gmail.com,
 jchapman@katalix.com, edumazet@google.com, boris.sukholitko@broadcom.com,
 louis.peens@corigine.com, intel-wired-lan@lists.osuosl.org, vladbu@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, pablo@netfilter.org,
 baowen.zheng@corigine.com, maksym.glubokiy@plvision.eu, jiri@resnulli.us,
 paulb@nvidia.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 29, 2022 at 11:44:10AM +0200, Wojciech Drewek wrote:
> Add support for matching on L2TPv3 session ID.
> Session ID can be specified only when ip proto was
> set to IPPROTO_L2TP.

Acked-by: Guillaume Nault <gnault@redhat.com>

(I'll stop reviewing here since I have no expertise in ice driver
offload).

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
