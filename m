Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3E97F2853
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 10:05:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5306440641;
	Tue, 21 Nov 2023 09:05:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5306440641
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700557504;
	bh=898bXkX1x7Mj0SjgjP6MQSRJkm8KWfeIxw2npzi0sGE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2MiJR957dj5kI598scLFVAG0KyvDpOQsBEkmEYq2Faofl8P/7Ke8QnVRizf0Mfxrn
	 XPA8WoSgYGESkfOf+6NkczWC9yOXxdr8m1APNhgEV7NRaQ7iUCbe+o7VT4IK31BkNi
	 R5IBgtK15XYohkgn22+bPytNc0dMmC3ovIGcsXp9jtXE6grhiD5+HgGaiENGs1/9SL
	 sWTnDe1ojHqvcUZQkydAYj5+2kFXM3bkG16YNlk8ZThpVQBZqWd60Qde5ODZksevTT
	 2+mEiCKWoO2zDfcexijy7IoAmIJqML+nNp89+hB3EVuC9ncCXNV9WHbgdHAB2tztVO
	 wOEEDbcWZqrFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TxOKUeW-EzYh; Tue, 21 Nov 2023 09:05:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D88814041C;
	Tue, 21 Nov 2023 09:05:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D88814041C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8CFD81BF331
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 09:04:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E3C34041C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 09:04:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E3C34041C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zRSgQd9KWm2N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 09:04:56 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50A7040338
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 09:04:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50A7040338
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-671-I6I0j8utOqmxQqTRbS3PAw-1; Tue, 21 Nov 2023 04:04:53 -0500
X-MC-Unique: I6I0j8utOqmxQqTRbS3PAw-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-9c37ff224b9so57830866b.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 01:04:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700557492; x=1701162292;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=8atJKDI9wJOzzTdJbmyEhmsz2WSaij3Q6QLr8q5nSo4=;
 b=CG0kR79sypYlxeZrIkwIMpoZ+PCBKU+p08gdC61oGKEA2Y6OEPlN0J6zOL1TGmFcTi
 d6M9YKF1pnsEa1F9K/oBQzRBfzTIG/Ry1abOrpPakAG+tKjWaBKk7PTEpbRfMMkAdbHj
 fwv+rE+a9oM2rrdHfNiOaW/U8bWJrBq62cYYeTs4yFsRlBPzYrZxtGyk+C5+rXytXTkr
 hmDFSXBvaYJ4DxRANDhWWK6OxU5TXLJOYDafv4oHI9l1/zLct/LlDqwMK0K+V3zppzgx
 QWZqqcube3sTK5dwdZM8wQYRfw+PlAY5MbW2KANHG+DIDW9cjliVGcohjf7GgoD7g9jv
 sbdg==
X-Gm-Message-State: AOJu0YwigTrQeJpBCxIHbi6HSOFCgNxz2RkHIat982qEqC4D7ktM+1UY
 0Mgf6cAfmZ0b+aEmo9hAY3L+Gu9jAS4caAJHBWtABhZJu/4ThntmC2fKTDVLeGjw66xCiOnTv5E
 mZmlHANQVIB1acurOsW9svh4vHJjt9Q==
X-Received: by 2002:a17:907:3f8e:b0:a01:97e6:6771 with SMTP id
 hr14-20020a1709073f8e00b00a0197e66771mr1206354ejc.0.1700557492493; 
 Tue, 21 Nov 2023 01:04:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGeojK3fVbnGGYa7XJfXFU/Zqc88WOH++gDDDFn8Ca5DqMiM7BeiZPkPI3Y5Vz/Vhoz7E6dmg==
X-Received: by 2002:a17:907:3f8e:b0:a01:97e6:6771 with SMTP id
 hr14-20020a1709073f8e00b00a0197e66771mr1206326ejc.0.1700557492033; 
 Tue, 21 Nov 2023 01:04:52 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-234-2.dyn.eolo.it. [146.241.234.2])
 by smtp.gmail.com with ESMTPSA id
 qu14-20020a170907110e00b009fc6e3ef4e4sm2900795ejb.42.2023.11.21.01.04.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Nov 2023 01:04:51 -0800 (PST)
Message-ID: <1aef421ad72317b0adb12fecbd705aa2d2eced75.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Jiri Pirko <jiri@resnulli.us>, "Zhang, Xuejun" <xuejun.zhang@intel.com>
Date: Tue, 21 Nov 2023 10:04:50 +0100
In-Reply-To: <ZVdMpLz1LPfMyM8S@nanopsycho>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com> <ZORRzEBcUDEjMniz@nanopsycho>
 <20230822081255.7a36fa4d@kernel.org> <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
 <ZVdMpLz1LPfMyM8S@nanopsycho>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1700557495;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8atJKDI9wJOzzTdJbmyEhmsz2WSaij3Q6QLr8q5nSo4=;
 b=ccTOkgjX8x29ZXIXixXftNLOrkyY8fLHf65pfKTpajVaEnDQy3Db7Ul8yHnVr88l3V6oat
 wgVjaiQHIso6tpKdb2ZHfzL6ZUzzSP8mk17Ti7ey6oLts5wlnJF79D98R75tQ+FDy4pbpb
 JIAkc3ilTIJr4SKaoWdQrXNmT1JtiHA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ccTOkgjX
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 maxtram95@gmail.com, qi.z.zhang@intel.com, "Chittim,
 Madhu" <madhu.chittim@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, anthony.l.nguyen@intel.com,
 Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2023-11-17 at 12:21 +0100, Jiri Pirko wrote:
> Fri, Nov 17, 2023 at 06:52:49AM CET, xuejun.zhang@intel.com wrote:
> > Hello Jiri & Jakub,
> > 
> > Thanks for looking into our last patch with devlink API. Really appreciate
> > your candid review.
> > 
> > Following your suggestion, we have looked into 3 tc offload options to
> > support queue rate limiting
> > 
> > #1 mq + matchall + police
> 
> This looks most suitable. Why it would not work?

AFAICS, it should work, but it does not look the most suitable to me:
beyond splitting a "simple" task in separate entities, it poses a
constraint on the classification performed on the egress device.

Suppose the admin wants to limit the egress bandwidth on the given tx
queue _and_ do some application specific packet classification and
actions. That would not be possible right?

Thanks!

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
