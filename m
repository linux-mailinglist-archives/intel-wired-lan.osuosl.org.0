Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6DA5A7ACC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 12:02:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A94741874;
	Wed, 31 Aug 2022 10:02:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A94741874
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661940151;
	bh=ucY4buFTrDMPuidbz9WcP/P2yAflfZ2h8F1KnAZ6CbA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j205Is9P21ywgh/D3yCe8pitHQYYXmRXCoqDy2x98Mfi0lTSQ3goQaTnkVJ9WkfTV
	 blCitFz7BUBjcBIVz3Y2rgY2Al2SrRDbERHh9gJUqU9s1KJPrc0y1V5j5VVRmJvmu2
	 HUEnCtDSMCf71fk8TKneV9229QUJ71XYaPe0SzW8kRuNFEH4GgCO2sy21r1NOA0DBs
	 q0WWne6Cs2r2eEyO6xtllzhcl26IA3WYiaNsbVEYtHoFhbBpgXQy5KGhmdwDvbUPAG
	 7E0MIRJ0BBJEhAYHPVKSIptHTgq1soWPHSMN9NtrOdDN9RWxEHVo9EpvFd/5E6WENQ
	 PkjVL29pL6tmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gb55nip-CBKq; Wed, 31 Aug 2022 10:02:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3ABA141863;
	Wed, 31 Aug 2022 10:02:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3ABA141863
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F2A01BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:02:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5F27141874
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:02:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F27141874
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ElTmdIkFvJv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 10:02:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6756A41863
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6756A41863
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:02:22 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-211-OAGf3KZkNuCInJGqy9Jsqw-1; Wed, 31 Aug 2022 06:02:19 -0400
X-MC-Unique: OAGf3KZkNuCInJGqy9Jsqw-1
Received: by mail-wr1-f72.google.com with SMTP id
 i4-20020adfaac4000000b00226d1d39229so1883908wrc.18
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 03:02:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
 bh=PV5zOxWi3z8nHUFT/9MG2QSzpeKdCS3Y26UR/yNJn0M=;
 b=DllVgRjwfJcnMOOOVPmTNxrdcVuRNr9yCm9+TKQoX/G9PJ3q+oAh2NnAy1uTMr5/hp
 lvA2EOIBRiWgr7biPP7BNUr71ZJGZ+FA0EGMqimgABtzw92l1VQdSWt0kqHmttA7WfsH
 sSz3xooShmv41j9iIgbnk0UdPOIDIkSePdYXB5CmPZxpCr1YsX4ZfO0dYINJk+mOYOFj
 nCAf466FNrqxSDAfloDX+X5NkgbTQUv7vtSccuqEsJZs/enueF8/NoellxWHuFlXfAdc
 lj+kLqN7Z2xzBHDtVNnWKweCgOY2pfOpPCtsPVLsxbRwSd/iumlGl6ipQs8yaNCZZPtg
 HXRQ==
X-Gm-Message-State: ACgBeo1xKK49ILcWLACatE+tP5In7inwF31cWmSgrDG4PqtfiHpQiBI5
 TNP1987vG6sLzww8pjYWw1Uok9ov/xTgCfU5o18/B+KH8IKhKiB0K6v7r4SqTaCiFSawcVqKTwB
 FiD7DH5OdaIRfN9jjZ8RzbH4FRZ7eAw==
X-Received: by 2002:a05:600c:354a:b0:3a5:b01b:2ab0 with SMTP id
 i10-20020a05600c354a00b003a5b01b2ab0mr1419097wmq.61.1661940138767; 
 Wed, 31 Aug 2022 03:02:18 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4wcwaqkPRYvsQTGeojMP7FZdCOda2Z6QTi/4Fk5r9eYTpzt5Ag/RYmkkd3Xx1+xmL0Is8lKw==
X-Received: by 2002:a05:600c:354a:b0:3a5:b01b:2ab0 with SMTP id
 i10-20020a05600c354a00b003a5b01b2ab0mr1419065wmq.61.1661940138509; 
 Wed, 31 Aug 2022 03:02:18 -0700 (PDT)
Received: from pc-4.home (2a01cb058918ce00dd1a5a4f9908f2d5.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8918:ce00:dd1a:5a4f:9908:f2d5])
 by smtp.gmail.com with ESMTPSA id
 n18-20020a05600c501200b003a32251c3f9sm1979645wmr.5.2022.08.31.03.02.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Aug 2022 03:02:17 -0700 (PDT)
Date: Wed, 31 Aug 2022 12:02:15 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20220831100215.GA18919@pc-4.home>
References: <20220829094412.554018-1-wojciech.drewek@intel.com>
 <20220829094412.554018-2-wojciech.drewek@intel.com>
MIME-Version: 1.0
In-Reply-To: <20220829094412.554018-2-wojciech.drewek@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1661940141;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PV5zOxWi3z8nHUFT/9MG2QSzpeKdCS3Y26UR/yNJn0M=;
 b=DjLGeiBiwOnvAqGJsdrX8s57zP96oKWk564kiyiE1YQ7dLf6Hmexpg7OBdZ0Y4BlkyO8lC
 +wRwcrWMwNgU1hcu1onLRORhEG2LCk9bZ60/gCh89ULF385IRtOwrSl/KTs6VnvDxCUIJM
 UWwujBkCpCvwT1tEfL/KiPKnDsuzJo4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DjLGeiBi
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v2 1/5] uapi: move
 IPPROTO_L2TP to in.h
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

On Mon, Aug 29, 2022 at 11:44:08AM +0200, Wojciech Drewek wrote:
> IPPROTO_L2TP is currently defined in l2tp.h, but most of
> ip protocols is defined in in.h file. Move it there in order
> to keep code clean.

Acked-by: Guillaume Nault <gnault@redhat.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
