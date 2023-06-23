Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8175D73BB68
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jun 2023 17:19:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2820160FB1;
	Fri, 23 Jun 2023 15:19:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2820160FB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687533565;
	bh=UnNIcxgxf9Gnz7wy/kOkPkFmFQZtPsvXa9bVdyaO8I0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yR4BHgWWEq49U04AfV6PJ8lVkh6wCQcG/aO8OAZY73WHHQOrDs5Zj4Vy4XwiadKlD
	 cnQjUfD/phum8fiFfWXfuMRrhGz8E4xgQtDZfChQMIntDpiMK2WGGZqflpfme5XzLh
	 91Ei2EOziu3O108+kyP1TJUEg1sRwU7DDyhsjs4c7F2mho2ynBAtZu1Bt31E66i5MB
	 q737ykv/SIFRzkXl+nkavZn2GzST3XERImAI8y6feOVNGLmfwDgWzD7VWz9pbOkha4
	 AAOY1wpUTYGf4WBc+7NdEfbjOurccHbK7M7FpD7ZZQ7+8amupgfEn/GiodNBZNBQqj
	 uznW/foCLPmVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IoTr2g6OqON5; Fri, 23 Jun 2023 15:19:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A0DC60F32;
	Fri, 23 Jun 2023 15:19:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A0DC60F32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 702251BF33B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 15:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 482A181FCD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 15:19:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 482A181FCD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oVmeUoatmtl9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jun 2023 15:19:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D5F681F8E
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D5F681F8E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 15:19:15 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id
 4fb4d7f45d1cf-51bee0c0acbso773384a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 08:19:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687533554; x=1690125554;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=h7eKK3NYw/OZosKXCLsiNWhf+zhDMnVZ3w9TgoZpnvM=;
 b=Xnb6NGNfBoaur2v7Jf3h2+xBXB4jWTejLnSJzYm6DFHQ5qH8zq8kjZOQriCXroukTG
 4qrJai6Glif/csoK+7b93r1xSEbRwxgig1Bv2P0CrDVXdo0y0E7SlOWSp8fIJoNSEMmr
 yEfZoheK6p03fo8o7AJV1QUzad6jjjLBeWTPz17ds6qLPHVrfNwBfiDylwuAg4cwO62N
 sKHWG743yPUuD2s8H8PblSuUKl7htr7T4raRuLE0WSysSNZjQAvPND4bvXHDNK3c7y8K
 SaT8l1vIyacSYgSTL+FX1kkasgp4ESErhTYgmFxtfdsOjSK2Jx0TKjJNRRDHX5C3yihH
 ATRA==
X-Gm-Message-State: AC+VfDzt/UJ2qZKASJShaSLl/9o+b6jSdWfAJRI/TOPxqKTfCcPsY6KC
 tKTO/WP0LXxXfPrn52tz06/d+g==
X-Google-Smtp-Source: ACHHUZ6xDfyN1tOEN2NYIoQBlq6pUTkM/ulf1OBBxm30WI7jeWoGeDV0AOfPPrS7ih1GjfWzDkCK7g==
X-Received: by 2002:a05:6402:3da:b0:51a:42b2:cb83 with SMTP id
 t26-20020a05640203da00b0051a42b2cb83mr10642649edw.42.1687533553669; 
 Fri, 23 Jun 2023 08:19:13 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 l24-20020a056402125800b0051a5177adeasm5305833edw.21.2023.06.23.08.19.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jun 2023 08:19:12 -0700 (PDT)
Date: Fri, 23 Jun 2023 17:19:11 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZJW37ynDxJCwHscN@nanopsycho>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687533554; x=1690125554; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=h7eKK3NYw/OZosKXCLsiNWhf+zhDMnVZ3w9TgoZpnvM=;
 b=pufECKMNhHNzLknHPIC3dP0Oi2kgtKveh/tvCIae1JBk8aEl2hgIxP6zVbMt2ojNNG
 M6wOQJkOdAHyQGlOQprGiN7ZndNROlGcHr43PmS/VxAx83A25Njs0VjqIYbCtrHFiZLL
 bbAgmPHAcnMJnBqZIc+/jThJV7657kRiif+YP1vqk+YsQig588X+/yevhli32B5Hpp0I
 sugJRRFkIhM9n4wozD7pkxZzENYZwNlgHZIjzRyRx62ZgGU/XwpooKqqWTO1bjb9y1HO
 dLI+EEkcs4q8FajFm5rZrPUz9iZ5OtAfmltUu0hBKyUCAmgcFAHsgRfAcEYmUOagcuCf
 jxHA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=pufECKMN
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 00/10] Create common DPLL
 configuration API
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

Fri, Jun 23, 2023 at 02:38:10PM CEST, arkadiusz.kubalewski@intel.com wrote:
>Implement common API for clock/DPLL configuration and status reporting.
>The API utilises netlink interface as transport for commands and event
>notifications. This API aim to extend current pin configuration and
>make it flexible and easy to cover special configurations.
>
>Netlink interface is based on ynl spec, it allows use of in-kernel
>tools/net/ynl/cli.py application to control the interface with properly
>formated command and json attribute strings. Here are few command
>examples of how it works with `ice` driver on supported NIC:

I don't understand. The discussion in the RFCv8 thread is still going
on. The things I mentioned there are ignored. Like for example:
1) mode_set op removal
2) odd ice dpll locking scheme (either fix or describe why it is ok -
				that's the unfinished discussion)
3) header file bits squash I suggested. Vadim wrote that it sounds
   reasonable, yet nothing changed

I thought we are past this. Why I have to point the same issues over and
over?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
