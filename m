Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF98615459
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 22:37:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D9654035D;
	Tue,  1 Nov 2022 21:37:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D9654035D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667338646;
	bh=/NwtmaV9ZvkbSz3vadxAC4gGovyYGedaI3fdqxl6aw0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LvvIm3H5i45gYX9lEfJ9iyoKGW+dHINIT7tiLyfbyI8dewmBdhiUGa3iZE+1mH6jU
	 jfMnkDrruaBvYvqbqBdzglcyVFIhuUV6/W8fkOSy2eCdA35vjkBoIb246M16KaxbSm
	 qZVoXGpNn21JBwSaDlVT+eU9l+P19514SRwxyeGTX0pbmUGMg/HU89GkxFZElAxXvK
	 yBG/Fc3aISHCejlv8W2T3EeS79EMEZ0IPW6bBsha6++fNK9S4edKPJicHjaI2H6twe
	 mUfQhmB1PbMEuy1c+Q2pfPaUace32tnzSEUAMAiAQI2U3Ni/twKMq6T5dQDkSB6ie/
	 uMrz2PqShwjfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d_H5n342TW1Y; Tue,  1 Nov 2022 21:37:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 59C1A40412;
	Tue,  1 Nov 2022 21:37:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59C1A40412
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A59261BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 21:37:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74B29409AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 21:37:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74B29409AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2HX6jLm0FnFk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 21:37:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8026F409A2
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8026F409A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 21:37:19 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 q1-20020a17090a750100b002139ec1e999so188524pjk.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Nov 2022 14:37:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cAGeZclIjBMFiBmV0n4LbZW8io+5YMRxyVOhuTAk5qw=;
 b=eiHjZYChJi+RLm2GztM2kRenb5FXwmYXZXG+35x4Flz0anyfNw7e0vcyjiID2dHL4U
 5r9W3Net4sOBFdwmuqq9/oX8QbvYY+qByH4f3w6MeMbwicdTGs/521da0AwFa+sBfl4J
 SKLSpG4BwUSPznY0RkGVREpP9g28qjKR0bim7JN5cCGzrZjCdeZDP3jk6oMkVfZIUv1q
 X0n0GWVQWC9reDszk53kibyS/6gfWNdcHCbruC4RmekNY9RhEhhSAVX6T2QWwr7CRb6n
 YPPG4qhx6vTO8b1mNMbPTySDtLVcrN3LTh96M7p0tZy2Yw3AAIVbNCP0C+Mf2mWL9Aez
 /G0w==
X-Gm-Message-State: ACrzQf0atCh9TSBWkwMMtS33cnPDy3kOtTKLjpWb6sCpckOZVqOO4l+b
 aFi00NxmhpoZo7ctz27yCtv7Sw==
X-Google-Smtp-Source: AMsMyM5Fz7z4//NNU/2FQNhB3+uFr7/xzcvoPBqfaxkDh2S2pNYrRUQ5dD2oLYwynDTb/ap+OrDczA==
X-Received: by 2002:a17:903:2596:b0:186:a395:c4bd with SMTP id
 jb22-20020a170903259600b00186a395c4bdmr21887754plb.60.1667338638881; 
 Tue, 01 Nov 2022 14:37:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 k36-20020a635624000000b0046ae5cfc3d5sm6232753pgb.61.2022.11.01.14.37.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Nov 2022 14:37:18 -0700 (PDT)
Date: Tue, 1 Nov 2022 14:37:17 -0700
From: Kees Cook <keescook@chromium.org>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
Message-ID: <202211011433.A64BF17F46@keescook>
References: <20221018092340.never.556-kees@kernel.org>
 <20221018092526.4035344-2-keescook@chromium.org>
 <202210282013.82F28AE92@keescook>
 <DM5PR11MB1324802F3F2098CB3239CF36C1379@DM5PR11MB1324.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM5PR11MB1324802F3F2098CB3239CF36C1379@DM5PR11MB1324.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cAGeZclIjBMFiBmV0n4LbZW8io+5YMRxyVOhuTAk5qw=;
 b=FYEKX7LpkD3IyhVOK2UB4R1S8Ui+o/o1MFilXFE+ITlFq/9x6MeK2KLm0E8IVhfOOu
 3cPOHKbTHaTg57/V5O7YzNhABL1msNpCOul4oX4Hx1BOLHcDF9vD5ZVyBqHxnGb4mGzw
 L47q0wTWQbxWh/JLB9fx45Y8WkUDFfWRHBmR0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=FYEKX7Lp
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] igb: Proactively round up to
 kmalloc bucket size
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 31, 2022 at 08:42:36PM +0000, Ruhl, Michael J wrote:
> Looking at the size usage (from elixir), I see:
> 
> --
> 	if (!q_vector) {
> 		q_vector = kzalloc(size, GFP_KERNEL);
> 	} else if (size > ksize(q_vector)) {
> 		kfree_rcu(q_vector, rcu);
> 		q_vector = kzalloc(size, GFP_KERNEL);
> 	} else {
> 		memset(q_vector, 0, size);
> 	}
> --
> 
> If the size is rounded up, will the (size > ksize()) check ever be true?
> 
> I.e. have you eliminated this check (and maybe getting rid of the need for first patch?)?

Hi!

It looked like igb_alloc_q_vector() was designed to be called multiple
times on the same q_vector (i.e. to grow its allocation size over time).
So for that case, yes, the "size > ksize(q_vector)" check is needed. If
it's only ever called once (which is hard for me to tell), then no. (And
if "no", why was the alloc/free case even there in the first place?)

-Kees

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
