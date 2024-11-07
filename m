Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F389C0D56
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 18:54:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D412040863;
	Thu,  7 Nov 2024 17:54:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7NKkvNyhS6_V; Thu,  7 Nov 2024 17:54:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39AC84070B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731002055;
	bh=IMXXbzX/ngEOrXlpSpu4Xani728oKkuAIfb3cs+OThU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6GmiaAApg/N7lonAYeDf4iYFoyuCgNMykVzE7lFInzl2/v+tWxtKESWA0MIdoIBS8
	 JiMTYwrBLli0bdrcMo+w24vCP8XSXL/Ahc/Wi4jmtCL9+3y5dhlbnUorzsxF9K7oRz
	 bw6vraJTzLHTp9eJamH/EUh3YvDHL6tjgrdWZdjL5OzJdNup0ATi6qGWetlPBTpdbs
	 HoOJj7jl0D1nyTfNMmOu/mW+PR+Yuk3SNJOQHjugHtsgpy2lXF/xxvfOCSbB+Cx0Bg
	 ajNvkv7zIYn/gNN4Sb9WZQk355XXyOFxN5+rb5pLG4VYK2SHjpN2ND00jo3e3x+QhS
	 36YdHQuDEhamg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39AC84070B;
	Thu,  7 Nov 2024 17:54:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5EE473B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 17:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45574407DC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 17:54:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9HdPhKTjcWio for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2024 17:54:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::331; helo=mail-ot1-x331.google.com;
 envelope-from=richardcochran@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 658414038B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 658414038B
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com
 [IPv6:2607:f8b0:4864:20::331])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 658414038B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 17:54:12 +0000 (UTC)
Received: by mail-ot1-x331.google.com with SMTP id
 46e09a7af769-7187e0041d5so860108a34.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 Nov 2024 09:54:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731002051; x=1731606851;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IMXXbzX/ngEOrXlpSpu4Xani728oKkuAIfb3cs+OThU=;
 b=RZgO8V1vHgI+4ZxYiHdxE9PsvTEBCPqChaW9u32hxlUb5cmnlfAdErf8DrMsF9Yd3a
 C12xAvd2GDP4J/oUVCU1M5/3muXotlcmKKIdILu3st+UCG0WZmz8/g8s2D2DIrFCtYCu
 oPZjpwrys3leqf9xdAZ6NQNN5qnH3vCFVU92d0fM6Z5dm+a2HpRhsfHsRsI8OMRlB2gA
 wtGL7NaiFn4TGNAX/jvUt3ohGthIB/4SbwXNxdw0f5FM8UNbv3Z8fGX3ATe6Z+/eJFw3
 2Vt0eK21BpSWJQDei3LpQZyD7F3Gg3NoHypFUlRlM9lq4tkxha/M5vvXtX86LCgWwUjO
 a2KQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXSdp9/ZPKULd19tAxXZhEDGf0CWJOg1esgkbTuok8k2EqqBXoLkpm2tAu41NGQ3Ooq7MQEhaL/bq02L52SSM4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw0qOdcfbjUmBjc3IJ16OR9Cah/mcyE/NSc79tw9QX3W8ZmGR/i
 sflWOnNSIrqqKU3W+vxJXfHS4VbjPSntXBn/fBGQeEq8Ubvwp50P
X-Google-Smtp-Source: AGHT+IHUaby3ekpiBk0MqL38wJNS3HxAKjFKkS+Z7fITxx11LELPRNGVP6twkqT8l1QJorHtDi64xw==
X-Received: by 2002:a05:6830:6f07:b0:718:10ce:c6a7 with SMTP id
 46e09a7af769-71a19bfc3f8mr947180a34.30.1731002051307; 
 Thu, 07 Nov 2024 09:54:11 -0800 (PST)
Received: from hoboy.vegasvil.org ([2600:1700:2430:6f6f:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-71a1080ecccsm352876a34.18.2024.11.07.09.54.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2024 09:54:10 -0800 (PST)
Date: Thu, 7 Nov 2024 09:54:08 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Message-ID: <Zyz-wPkx7IokVl_J@hoboy.vegasvil.org>
References: <20241106010756.1588973-1-arkadiusz.kubalewski@intel.com>
 <20241106010756.1588973-2-arkadiusz.kubalewski@intel.com>
 <20241105180457.01c54f15@kernel.org>
 <MN2PR11MB466441745C8C1D64835C51739B5C2@MN2PR11MB4664.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MN2PR11MB466441745C8C1D64835C51739B5C2@MN2PR11MB4664.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731002051; x=1731606851; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=IMXXbzX/ngEOrXlpSpu4Xani728oKkuAIfb3cs+OThU=;
 b=gNVN7DShHfbfuLU52Pv/uuZBfD3tO7t1Kwojr7HWyGXrdr1TF7Bi4sJR+rvmo+w7NC
 YlOhTR37R1vbP9fzjp0ARVmjXZl/QfneIn6AEkT1DBUqC/0qoPtjH06htHPRndYXzkWv
 xMgX9ugE+LgnogNZP8aeXDbA07CgqF3kiErtBe7NyBz0nkorCc3RZL0/qGLvkEN19CVC
 xSW1dT/ycEnIb1xasTvYnrxElTmMeNjYdDBUh8chqVdv1rMIW74/4tNpCgJ/BlqfUDpw
 r/CXu15llpR7/0k8WMrW2DrtzUsiv/6tyK6k8anhn44/cCNplirHHGqR2eB0oxkQguaM
 VQJw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=gNVN7DSh
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] ptp: add control over
 HW timestamp latch point
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 07, 2024 at 09:01:41AM +0000, Kubalewski, Arkadiusz wrote:
> >From: Jakub Kicinski <kuba@kernel.org>
> >Sent: Wednesday, November 6, 2024 3:05 AM
> >Richard has the final say but IMO packet timestamping config does not
> >belong to the PHC, rather ndo_hwtstamp_set.

Right, PHC means the hardware clock.  That is distinct from the time
stamping settings.  These belong to the network device, and are
contolled by using the SIOCSHWTSTAMP ioctl.

> Ok, thank you for feedback.
> 
> Richard do you agree with Kuba?

IMO, setting the time stamp point should be with an ioctl in a way
similar way to SIOCSHWTSTAMP.

Thanks,
Richard
