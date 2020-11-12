Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E8D2B1147
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 23:19:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6C43F20348;
	Thu, 12 Nov 2020 22:19:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 21FeDY5xLfAq; Thu, 12 Nov 2020 22:19:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6407C20370;
	Thu, 12 Nov 2020 22:18:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A99951BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 22:18:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A543386E70
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 22:18:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0UEfhYIU8inv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 22:18:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2BC3686DD9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 22:18:56 +0000 (UTC)
IronPort-SDR: ppVZkqSWMOku9fWl3CjcMV5xUk6R2Njr5EJXZDjU7GPiE2J9z6bgWJodCZ4TyDHQI9XYO1p4At
 jT9YKn+9SAFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="188397628"
X-IronPort-AV: E=Sophos;i="5.77,473,1596524400"; d="scan'208";a="188397628"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 14:18:55 -0800
IronPort-SDR: TWTXPJWtq5JimRJ7YHL/OlOiy/u++OxXwE3+ryFIcdstq/sosEJPOUbk/BSBT7K/Tumqd8a/z2
 GOVOB/w+bDog==
X-IronPort-AV: E=Sophos;i="5.77,473,1596524400"; d="scan'208";a="530838760"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.132.156])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 14:18:55 -0800
Date: Thu, 12 Nov 2020 14:18:54 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201112141854.00001197@intel.com>
In-Reply-To: <160521830157.29792.4388568942163519947@ngilbert-mobl1.amr.corp.intel.com>
References: <20201104031210.27772-1-andre.guedes@intel.com>
 <20201104031210.27772-8-andre.guedes@intel.com>
 <5cec65f6-a155-57d8-623e-4308ac62ba0f@intel.com>
 <160521830157.29792.4388568942163519947@ngilbert-mobl1.amr.corp.intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Andre Guedes wrote:

> Quoting Neftin, Sasha (2020-11-12 01:13:27)
> > > +#define IGC_XDP_PASS         0
> > > +#define IGC_XDP_CONSUMED     BIT(0)
> > > +
> > Hello Andre, please, move these defines to igc_defines.h to bottom the 
> > file under /* XDP defines */ comment.
> 
> Hi Sasha, looking at the macros defined in igc_defines.h, they seem to be
> hardware-related (registers, fields, masks, etc) which is not the case of
> the XDP macros defined here. In addition to that, note that these macros
> are used only in igc_main.c so maybe it makes sense to leave them here?

FWIW, I agree with Andre here, I'd just leave them in the igc_main.c
file.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
