Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEC05213C0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 May 2022 13:29:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3088B40AA6;
	Tue, 10 May 2022 11:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v9yYZBLVgiK9; Tue, 10 May 2022 11:28:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33ED740167;
	Tue, 10 May 2022 11:28:58 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 615851BF5A0
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 11:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4EC3A60E6D
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 11:28:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MrKVv-NO4slP for <intel-wired-lan@osuosl.org>;
 Tue, 10 May 2022 11:28:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20D7760B48
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 11:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652182132; x=1683718132;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jdaBOHoROQItmzyznKZpLn6mBTqr/JGk48xD2hBA6To=;
 b=DkDczsYa7PDx7M78euOTiJ3pdo0zw8x6aFti77BzKTe497U8Qd0IxF/C
 h33Qh/zH89leKSDV5pex3ajIQGtmHla+A9fCXMC7lQsDbcy0F3QpDzUK0
 QwgBs6hzMCKEkIO2ufvWTYJr5tdi/d6l9aNgGBVbucOY4uzNuSBk9XN+n
 4nzAhWyI/86j2YOhpdZU/QbfL5HVFskZeDqH/XGPmbYRIojD4gH3B1BB5
 4P6MQfd9CDGEFsAfQDvZaaR0FyFlorS94up/yAfE2loasxtPw9tdlW/yL
 31e1HsoFkFtkl2UbXIcu4Xzu/r8C2ue0eTyudHml3tmzdJ6IEo9b5SpsQ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="249246077"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="249246077"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 04:28:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="593460667"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga008.jf.intel.com with ESMTP; 10 May 2022 04:28:49 -0700
Date: Tue, 10 May 2022 13:28:47 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
Message-ID: <YnpMbwAFMnYTrc33@boxer>
References: <BL0PR11MB299331AAD0B587D12B965D5899C99@BL0PR11MB2993.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BL0PR11MB299331AAD0B587D12B965D5899C99@BL0PR11MB2993.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] ixgbe: correct SDP0 check of
 SFP cage for X550
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 10, 2022 at 11:21:42AM +0000, Skajewski, PiotrX wrote:
> Hi Jeff,
> 
> Our analysis (using 0x15c4) showed that every time the cage is empty SDP indicates 0 and when cage is full it indicates 1.
> No matter what transceiver we used, from those we have.

Please wrap your sentences to 75 chars per line, people that read mailing
lists will be grateful for that.

> The same happens even we don't use the device which fall into crosstalk fix e.g 0x15c2.
> 
> When proposed patch was applied, the devices are no longer able to negotiate speed.
> so basically this patch should not be accepted.

We don't know what you're referring to. Please respond to the patch
itself rather than carrying only the subject of the patch.

> 
> NACK
> 
> BR,
> Piotr
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
