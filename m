Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B1B72AD4A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 18:29:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F13B42664;
	Sat, 10 Jun 2023 16:28:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F13B42664
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686414538;
	bh=TvB8P7fZVvoiHiS+N0FRWOvYrQ+NCn/t0D4YPr0ZmF4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AJ9/saydOvgQocgnsjYPL8q/fjVB9Xc4ZVwZWYdp+a1ZAUdA0LnoBOumvLOZskGQK
	 6/hWKg5ghI4PhFb6DKzzeIcVyw7TJlQpaFvlbEkcMZ2ytTw/IL8N/4syK2juORgkHt
	 FLcoVe8hXu3UvII+DepBSO/LfxNof8bumycsYbNRlZTGKfk3XdFM29JfGajM+aUoqI
	 QVkFrRDT4kL5XyHEjnqrfv1TG3rJ9tyB3B4Qo+GyIrU29JWl8HgPIYK3sz5Ve3Dh55
	 XFExIa3erZShwb8HjCmdbWcJO5UA9gOjMCwKN/nxWsM0ltUvVTbpZWCKdFNErbF1/2
	 KVuHhEbHRhUrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d4u_BV7rO-Ce; Sat, 10 Jun 2023 16:28:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01BA541C3F;
	Sat, 10 Jun 2023 16:28:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01BA541C3F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 357171BF32E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 16:28:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C9448196A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 16:28:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C9448196A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0wgpg5v0jAQd for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 16:28:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9394981ED4
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9394981ED4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 16:28:49 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-5149390b20aso4848882a12.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 09:28:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686414528; x=1689006528;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=30WOLsGQCYvxDVRWI/IBP3AT/golpqjgGSCaFINHdfo=;
 b=TqdtswoGeRKFssbN3G/71vUXy7VqMIcPWMhYfoXVB0uO9QztZFWi1+ZqEWIoQLl4ph
 TSDqdEzCJ2zIBOP2+VvDKCF/gTprl1zYTEIMsiHWKgTmEF4BrOd0hxp1ISfi/Wq2WEiP
 8KjGv5GBg4euBscyUfWsVVCmNo8Ux12zlYJ4nC59Dzj5YkJJ4UiAxsMAPIHPZyuqey3D
 IiidqDcBa7AwUIa5FWclNPv1q0c63m92DTJhq4jkwv/mt2xlzc8EnYqls1klB9I6xD/d
 ca7E/hqQtI9dNiKmlU1b+WWdWT0sribIpoN9g/2cNFKChn0DUIrGsW/z7W/7+yWp/Z2i
 S3oA==
X-Gm-Message-State: AC+VfDwyFGBmzWNwZhPLgQ/YEi+7kJCTKguSAB8y824HeIO75xEo2OzL
 RJTDyp6BmpwncUi50tYYLOLxew==
X-Google-Smtp-Source: ACHHUZ5KAnAn+uVG/YplGa6zQ40p3y3TLHFiee/1HtvuRh+HE/5jDxye7qmmH//ArHvb+lfWrfUfuw==
X-Received: by 2002:aa7:cf99:0:b0:511:111f:c8bf with SMTP id
 z25-20020aa7cf99000000b00511111fc8bfmr1792605edx.9.1686414527666; 
 Sat, 10 Jun 2023 09:28:47 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 v26-20020aa7dbda000000b0050cc4461fc5sm2962933edt.92.2023.06.10.09.28.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jun 2023 09:28:46 -0700 (PDT)
Date: Sat, 10 Jun 2023 18:28:45 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZISkvTWw5k74RO5s@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686414528; x=1689006528; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=30WOLsGQCYvxDVRWI/IBP3AT/golpqjgGSCaFINHdfo=;
 b=guia8WUFmfAeCNlbh5rPHTD2q3nJKVeKcvJMUly1nhsb9uaYE2E4cKXnC0m4+bWjAA
 2YOLywPxfAUw7h8ao5xVZRpev5PZRAee+L2+7zkCqrmwVGOzppw2OUl/hu6CrqWA3vzQ
 VBLrYGQie4fpsenx1m3AcVS2na89o0vuu480gAcZKmof7dw/X178PywDejxDqrIWkxBY
 87ycKrSlj5IDAROexkK6ol52X27DLrFjGHOYqD+BDuQPH9HDpEljVpnsOJWKMMJqDMV+
 ise+X0heN9K374K6+gMzmESCjlS01pg9sOpuYos016GSQGQs/E5bgVoaELFJqVPBq1L6
 elqg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=guia8WUF
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 01/10] dpll: documentation on
 DPLL subsystem interface
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 airlied@redhat.com, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com, kuba@kernel.org,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Jun 09, 2023 at 02:18:44PM CEST, arkadiusz.kubalewski@intel.com wrote:
>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>
>Add documentation explaining common netlink interface to configure DPLL
>devices and monitoring events. Common way to implement DPLL device in
>a driver is also covered.
>
>Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> Documentation/driver-api/dpll.rst  | 458 +++++++++++++++++++++++++++++
> Documentation/driver-api/index.rst |   1 +
> 2 files changed, 459 insertions(+)
> create mode 100644 Documentation/driver-api/dpll.rst

Looks fine to me. I just wonder if the info redundancy of this file and
the netlink yaml could be somehow reduce. IDK.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
