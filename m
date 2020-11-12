Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 067542B10C6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 22:58:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9E268737C;
	Thu, 12 Nov 2020 21:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kqEv6-4KWjP3; Thu, 12 Nov 2020 21:58:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22FBD8738E;
	Thu, 12 Nov 2020 21:58:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABFA01BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 21:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A239C8776F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 21:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kV2puEf6x6Q0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 21:58:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F26728775A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 21:58:22 +0000 (UTC)
IronPort-SDR: blP5pIsDZoV6YwXrQ0/DHZe/Qr73Z6T2UE+GfKG9WA2Ru4WSdRxnfMXhY5Sa83ctuzHvKSVN7j
 5TKUygZVTDOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="149658203"
X-IronPort-AV: E=Sophos;i="5.77,473,1596524400"; d="scan'208";a="149658203"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 13:58:22 -0800
IronPort-SDR: sJSkAnyqv+D5w5AOHZfH3eVkJjYYISZwPs5oyEka0AvY+0C2XMDRyS1vFvxuGtqyY35gB0QJSM
 abIgV/o5mQfQ==
X-IronPort-AV: E=Sophos;i="5.77,473,1596524400"; d="scan'208";a="532333027"
Received: from ngilbert-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.212.192.230])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 13:58:22 -0800
MIME-Version: 1.0
In-Reply-To: <5cec65f6-a155-57d8-623e-4308ac62ba0f@intel.com>
References: <20201104031210.27772-1-andre.guedes@intel.com>
 <20201104031210.27772-8-andre.guedes@intel.com>
 <5cec65f6-a155-57d8-623e-4308ac62ba0f@intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Nov 2020 13:58:21 -0800
Message-ID: <160521830157.29792.4388568942163519947@ngilbert-mobl1.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH v4 7/9] igc: Add initial XDP support
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

Quoting Neftin, Sasha (2020-11-12 01:13:27)
> > +#define IGC_XDP_PASS         0
> > +#define IGC_XDP_CONSUMED     BIT(0)
> > +
> Hello Andre, please, move these defines to igc_defines.h to bottom the 
> file under /* XDP defines */ comment.

Hi Sasha, looking at the macros defined in igc_defines.h, they seem to be
hardware-related (registers, fields, masks, etc) which is not the case of
the XDP macros defined here. In addition to that, note that these macros
are used only in igc_main.c so maybe it makes sense to leave them here?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
