Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C3F1F5B5D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2020 20:40:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9960589370;
	Wed, 10 Jun 2020 18:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zgQh++wU4y+F; Wed, 10 Jun 2020 18:40:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 129798936D;
	Wed, 10 Jun 2020 18:40:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50C3A1BF313
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 18:40:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 435CB23307
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 18:40:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VUULeHOYoKaQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 18:40:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 5D37D228B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 18:40:40 +0000 (UTC)
IronPort-SDR: 2kTo2rLsy45KMW3weXEQ0GSuA9G6Pfs9FFnaNZ0vPs9H5BUZtgQs1AOuSzALLk9/SphlEgqzmo
 mN/njx7jsMcQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 11:40:39 -0700
IronPort-SDR: TsHG5nD+xrBFEJFgqdjQmTDsK3Zqk/AkJquSGLYfYfISId71sEZCDlcUNQ9I94AUFCnodzp7cu
 sjuIIobHFh3g==
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="260246946"
Received: from camachog-mobl.amr.corp.intel.com (HELO localhost)
 ([10.251.0.149])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 11:40:39 -0700
MIME-Version: 1.0
In-Reply-To: <20200610124308.41422-1-sasha.neftin@intel.com>
References: <20200610124308.41422-1-sasha.neftin@intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Jun 2020 11:40:38 -0700
Message-ID: <159181443856.78170.15999671258648186100@camachog-mobl.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igc: Remove unneeded check for
 copper media type
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sasha,

> PHY of the i225 device support only copper mode.
> There is no point to check media type in the
> igc_power_up_link() method.

A quick grep shows that we have many checks like this in the igc code. How
about we extend this patch to remove all of them at once?

Regards,

Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
