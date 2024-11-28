Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FDF9DBCB8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Nov 2024 20:59:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6E286068D;
	Thu, 28 Nov 2024 19:59:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3CbkDAbdOLnW; Thu, 28 Nov 2024 19:59:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C60F60647
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732823954;
	bh=RQoJvwwRV2WuKH22MOuMgnTVVA7Jtg/d2Ctxd5KIy5A=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9d9Vbmc1OUfiSDg2Az0NDNODbc5242bUPd5eLB4q6BatkR51TA1aQlfKBZXlaobdX
	 iUEDFPjflWKENe7gu1Cwe5nk0XuEFjsiEz/zAyV2L4zyy4fRVD/tTTZ+fygcH08hce
	 oWYkn3Zi0dITE6CxfXTaqmEBxcGwDuzrLqztkzW6R22j7hPEMMe06OlMnsRpxSbQj4
	 7/M0gu+kDNzCs677gWTjip2QzLcnodOY75B6o4zjQQLD5FsPnKH2JAMl9BDnpiwi6d
	 KDktAkdd/1eokfhcp01jwSOEJ4yQSc1M76ek+107+3LX3yjX+IOeCt3CE67fPHMPlh
	 zorW+SlegB9sQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C60F60647;
	Thu, 28 Nov 2024 19:59:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C96F471F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 19:59:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B677F40102
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 19:59:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0zVf-d-2TcP2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Nov 2024 19:59:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::c2e; helo=mail-oo1-xc2e.google.com;
 envelope-from=richardcochran@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 287D0400DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 287D0400DC
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com
 [IPv6:2607:f8b0:4864:20::c2e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 287D0400DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 19:59:10 +0000 (UTC)
Received: by mail-oo1-xc2e.google.com with SMTP id
 006d021491bc7-5f1e365469eso484752eaf.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 11:59:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732823950; x=1733428750;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RQoJvwwRV2WuKH22MOuMgnTVVA7Jtg/d2Ctxd5KIy5A=;
 b=gY9WiYSdDjYgT4A75ypwnJlNzgem6S//nBD6enUongCsOiSy/wQGVnd/cRQu4B49go
 99l7f3x4uUGZEPSd+q47ADpD5U2fAHxWz2JkgMJkl89Xm9uuLOyDOMyI/rZE5CHihwC6
 YXG70SmSfslupcjwE0Zf7iq20l+CYgyno3RbDyMd2fSfxXQW+rfqg5go9wK5inZoW/Wy
 fN77M6pRFfxbrIFr7FLIssCz8rADzpstcgtCvzZ4TB6pXgw2EGXzSIcqb+1AHBB4+xDX
 15H5aEl7bAoBDskKvJbSaeDMQo+kZK5zOJ1QsyzblxLvDpQUsMDDU3W0b1NQzSFc+Tde
 xrRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWaLSeanV5sA/T3NnuxYk3kF8gVm3cUNdUSKrzCTY6bzrtASm/g7oIAZjPdqduNGn2/xEFMJqnbhj0OrmdeaNQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxE1fxEMv3d91cWCmjY81Wzzc8SEM/TxCQ1wp1m7T98JZOMIW3J
 ziXYaw8H95nFX6I+992R35phX84nREGcrhvrHjO47VSjoFeyF2ua
X-Gm-Gg: ASbGnctIU0fq/xeCRyzm9dlh2yiDL+F3l/0rpiuOwbanP5uiEskE2T3ZkXL7dAPPENH
 eVRHiRtx8jKLYBL+LhyEnlbilpvj83jM8xNjihu8/Ybqc23ZOpaHEzkt+u6QgrPhGK8mtY/7Cfi
 Zd1u1Em7Af7+FSa/TF4AXN8GZmVGguL2jL8YsRly4heOHgRXPeDno6x5RHD5tdgvSQ8hAHQFlkc
 165L/57PBWqxSp5+CSq1SIyYvUr8/MDrgZS0Fb7vGljmykq7rbu3LpQigcvBjOTryzGTw==
X-Google-Smtp-Source: AGHT+IHFkbPlipMnHbPl0yjwyi6QLmWlxz6kS5RUQqGeJVF42MyMeYrGcOOJbrV3b4mnMkEG8c5EtA==
X-Received: by 2002:a05:6820:1620:b0:5f1:e8fd:5da2 with SMTP id
 006d021491bc7-5f20a1e71a6mr6974410eaf.7.1732823949941; 
 Thu, 28 Nov 2024 11:59:09 -0800 (PST)
Received: from hoboy.vegasvil.org ([2600:1700:2430:6f6f:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-5f21a4cc99dsm451475eaf.33.2024.11.28.11.59.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2024 11:59:09 -0800 (PST)
Date: Thu, 28 Nov 2024 11:59:06 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Olech, Milena" <milena.olech@intel.com>,
 Vladimir Oltean <olteanv@gmail.com>
Message-ID: <Z0jLiisnLOTSvbaW@hoboy.vegasvil.org>
References: <20241126102311.344972-1-przemyslaw.korba@intel.com>
 <946b6621-fd35-46b9-84ee-37de14195610@lunn.ch>
 <PH0PR11MB4904824FA658713F78CA404D94282@PH0PR11MB4904.namprd11.prod.outlook.com>
 <6cca6089-ed72-407a-8f23-70bb67b42e63@intel.com>
 <1c95b010-cb57-4864-aa0b-82b7093f44d1@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1c95b010-cb57-4864-aa0b-82b7093f44d1@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1732823950; x=1733428750; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=RQoJvwwRV2WuKH22MOuMgnTVVA7Jtg/d2Ctxd5KIy5A=;
 b=kY+iCnXxu9O5XDRFQnSe+kQlk8XjzM0k7DEHh4jwl2U9v5kUIJU/8BJNagUpk2RBA2
 aDCuRjDsyI5jgPbNv7cJXmUXVYmHsUIRwaYR0kuGMHZhMtjzXOTrhwYU+uZsN+MBJajt
 NIh3K5+cZ7l9ql9D6Sd5paFNtQNKm5CMklMyI2FSbwEtdE173Th+avO/KbOGuaZ/q5mu
 LptY1HUqfn1z65OnDv1qlC5vVYN1UZ37KS8StenNb2gXM1/EGHe6fDvCsahaaIqak9PK
 YpUq/8PIYc0o6fdaibG8W0MtQ78/3GDsETcVKl1spM5iAa1/shUvHWpKvMZpc373o2IL
 VRWA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=kY+iCnXx
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect PHY
 settings for 100 GB/s
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

On Thu, Nov 28, 2024 at 05:20:44PM +0100, Andrew Lunn wrote:

> "only Intel's driver" is a bit of a worry. Part of being a Maintainer
> is to ensure that all drivers behave the same. There should not be any
> difference between an Intel PTP device, a Marvell PTP devices, a
> Microchip PTP device etc. They should all implement the API in a
> uniform way.

Yes, and I appreciate it being on CC even for driver changes.

> What i have also seen is that if one driver gets something wrong,
> other drivers might as well.

Yeah, unfortunately there are many device drivers (not just
PTP/network drivers) that get things wrong.  These are then copied by
the authors of new drivers, and so on.

Thanks,
Richard
