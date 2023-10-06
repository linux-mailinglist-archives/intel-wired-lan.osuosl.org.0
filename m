Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D167BBD47
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 18:53:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38A5E6FA7E;
	Fri,  6 Oct 2023 16:53:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38A5E6FA7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696611197;
	bh=P3Qena8belJ+wCU9F7ldybCacp3Avwf36vzBq2Gu07Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p8709tr4i3ly131b1/o6VJOX/b3zO9mYAyVECeSIrTVTUnKVLukjyZ2xzh738qqgF
	 goyH8en2JjJrREqDVW1OMYwA96Zl/RvbIGQY1iJc5pvRX48kPN6h3DmyYRGszMKEDj
	 3YLgOuqom5hLGvKhZJLeVB85gFIYFvfGBFda6TNO3eW+4H2l1vzW8OVBWKOncPlvg3
	 CSbcZr6fXfZt1CCi1L27btSWv2cN1iz3w+TMSGi2LxqpJo6hZ8k/CrUEJqhWjEkG9i
	 B135DNt1NUJsde3MI+auMEYXA0vtX+64yYXu70U8uSr1Zr5Wuw1eQz9A9YgC3E0ij2
	 y+8DyPM4ZVOIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 02uDT1QCiewO; Fri,  6 Oct 2023 16:53:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2600560F86;
	Fri,  6 Oct 2023 16:53:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2600560F86
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2753D1BF40D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 16:53:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2DF542E8F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 16:53:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2DF542E8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hVxKtKECC298 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 16:53:09 +0000 (UTC)
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60DAA42E89
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 16:53:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60DAA42E89
Received: by mail-wr1-x42a.google.com with SMTP id
 ffacd0b85a97d-32487efc319so2260016f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Oct 2023 09:53:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696611187; x=1697215987;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=h970WFqLxvJe5qinLhTrSPPuLT8BDW9gx47optmXmQ8=;
 b=UZyEjLtlB/PjdztFLBneYk5Em/bizf1KSKY2PXww4eIKCpf9TL6/wvmH4s2FMeniiW
 IfdYLG6m1rwI24fMf3InhOLgi4VX9VddQR49we2dVC5WspBPO8CqUj1xVy3+Ydo9q9fN
 QRLmpLAMm2es4idiYpOWTphHLA2qtaQgZtpaSh5Rwpj9tNl+cPTWwTwoikTTS2TRbYrF
 OTiQ6O4D2Y3y6XmRXeN04hVMlaYJqd03RY36KbJcw9GVzwqMzy46lD2FLl5YGWoNyeJf
 xWVc9IJJ3i2NXvIY7cSwfGFuuKEbhSt/dTyN752BOJswUstf5ZHHu7EZrL5u3cyPGvwi
 OOOA==
X-Gm-Message-State: AOJu0YxzxNB1s+pYRyY8kKAbmbzgqwcYyUtUSjPu+wZUYh9FvX6tTBAM
 45fHxYAVm+pLOiTpVmQbo4yfVg==
X-Google-Smtp-Source: AGHT+IG7AIHYrhwpOEb9IZJnVzjhVWheK168zk+9p/ADPkPcpyNkE8a+S1hlq/Czi4cKRB1GsbKksw==
X-Received: by 2002:adf:fa49:0:b0:31f:97e2:a933 with SMTP id
 y9-20020adffa49000000b0031f97e2a933mr7798228wrr.56.1696611186809; 
 Fri, 06 Oct 2023 09:53:06 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 z7-20020a7bc7c7000000b003fee567235bsm6395414wmk.1.2023.10.06.09.53.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Oct 2023 09:53:05 -0700 (PDT)
Date: Fri, 6 Oct 2023 18:53:04 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZSA7cEEc5nKl07/z@nanopsycho>
References: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
 <20231006114101.1608796-3-arkadiusz.kubalewski@intel.com>
 <ZR/9yCVakCrDbBww@nanopsycho> <20231006075536.3b21582e@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231006075536.3b21582e@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696611187; x=1697215987;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=h970WFqLxvJe5qinLhTrSPPuLT8BDW9gx47optmXmQ8=;
 b=Kgtbce3D2CavdkH53CF+i5rIVELzgv0c7cC4RwJBX7Q35xaPcyZhtlKhQG/LLE1Jun
 L1W1D5Mlt4hgND3EL0E66wGav20pcNkhTtxeg3DDHpPH4TNjV+UK7/6dCdNxCWpnkrK6
 SY/9On+a1INO7Jg2c7carIiQjYJnLKitSbZmcWXeYgzXdfUGne0SIxPt/oumlfIHGkkE
 qmxSYZuASczxcd8GxDeevdN+oCdKn9pyFFVI0u/QbFkUnVAjAmkuW8PfNABrGqDsUBxK
 jFilfNGyUK3Jk77amZk+HWlsdLAZCzutty/RlEY6Czi7CYGevbp2IpjEDja9K1L6cFPw
 k1Tw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Kgtbce3D
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/5] dpll: spec: add
 support for pin-dpll signal phase offset/adjust
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
Cc: vadim.fedorenko@linux.dev, corbet@lwn.net, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Oct 06, 2023 at 04:55:36PM CEST, kuba@kernel.org wrote:
>On Fri, 6 Oct 2023 14:30:00 +0200 Jiri Pirko wrote:
>> >+version: 2  
>> 
>> I'm confused. Didn't you say you'll remove this? If not, my question
>> from v1 still stands.
>
>Perhaps we should dis-allow setting version in non-genetlink-legacy
>specs? I thought it may be a useful thing to someone, at some point,
>but so far the scoreboard is: legit uses: 0, confused uses: 1 :S
>
>Thoughts?

I don't know what the meaning of version is. I just never saw that being
touched. Is there any semantics documented for it?

Kuba, any opinion?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
