Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E55C272D52D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 01:49:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80AC0410AF;
	Mon, 12 Jun 2023 23:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80AC0410AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686613754;
	bh=FH7uw/PAp6KGMziVXMb20PvVd4LmBZ5A22Gb8m3lGDA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LbYm2krRd0fDGVOAjfhgcg4u6+uIwyLRWJmHYo+XZhT4jGxrIvrztnOWvAdYcbmRB
	 Hc6qKaq2blacEnc/amXsxpstTJ8tngz6EgB3D5E/9toqcaTmqpRE24I4C1+LxG2PlL
	 ryihsNmo+2pVX3/trrPeSeyDf35xcz/mapJLBaj2EKC5x5hCi+m2CHbkb7Fb64U3C/
	 lxtPQnNvd05ANqV+Qd10k/HJCfFx4PjrPAe01Y8UzqUNYeamv8P8Id28Sof+TjsJC5
	 B6eoRvllyh7NGuC9QhskcQo8LIbD8H5f1qwM/VnnOAgrXQ9GF5OevNCBT/Mgbxmpaj
	 +LiCCeQevk+fg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fB3SIEH7pcqR; Mon, 12 Jun 2023 23:49:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35F7D410AC;
	Mon, 12 Jun 2023 23:49:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35F7D410AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1BDAC1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 23:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0C9A60B28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 23:49:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0C9A60B28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zob9uwUEHxib for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 23:49:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4044F60AF6
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4044F60AF6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 23:49:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7984F617D1;
 Mon, 12 Jun 2023 23:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFBE1C433EF;
 Mon, 12 Jun 2023 23:49:03 +0000 (UTC)
Date: Mon, 12 Jun 2023 16:49:02 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20230612164902.073544e2@kernel.org>
In-Reply-To: <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686613745;
 bh=yIRi0WXE4Net4p4k+Jwnbq1wiuvuUouDv0057sNyh8E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pATI2xnVISuzMZb0xj8Z0Dh8wi/xUu264Dagb7GZ18oJGWd0UDTfUnpFyrkKxTn49
 KnH5MJO1+0YIs8eeunryQEtM3/Lr/oI7DWX8tWHda1pmlG2nOr8St15FcWk/p4OZ4t
 HCt5lsQYkPCIZjdFOD8Fhgt8+2qGu13uXTiB663Ti3QiHFr3VPcNcdfC16dOQHt783
 E1EjRnwQzQ5ZwrEVGKXkTK5RSe9V/3IE3SDMqCoedd4mXEM+IxjIOzw7mrg27+s+/i
 qrBeNUPnL1ved78C/i8rKikra3VLoUpLIthzyRVEDsEIX0OkHLGwtXev5H3gk+yB16
 mJ86IHEFRAgDg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pATI2xnV
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
 ricardo.canuelo@collabora.com, jiri@resnulli.us, arnd@arndb.de,
 idosch@nvidia.com, richardcochran@gmail.com, claudiajkang@gmail.com,
 kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
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

On Fri,  9 Jun 2023 14:18:44 +0200 Arkadiusz Kubalewski wrote:
> +Every other operation handler is checked for existence and
> +``-ENOTSUPP`` is returned in case of absence of specific handler.

EOPNOTSUPP
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
