Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C60819A022
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 22:48:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 935B125406;
	Tue, 31 Mar 2020 20:48:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XMVZ0X4IcxUr; Tue, 31 Mar 2020 20:48:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 68495253F8;
	Tue, 31 Mar 2020 20:48:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 307691BF41E
 for <intel-wired-lan@osuosl.org>; Tue, 31 Mar 2020 20:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 24DF286DF8
 for <intel-wired-lan@osuosl.org>; Tue, 31 Mar 2020 20:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kRs0X-O1LJjl for <intel-wired-lan@osuosl.org>;
 Tue, 31 Mar 2020 20:48:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DAD5D86D8D
 for <intel-wired-lan@osuosl.org>; Tue, 31 Mar 2020 20:48:13 +0000 (UTC)
IronPort-SDR: DeZUnO+fRp2xuMoXWlXNbLFRaW27QiZVbfgOqUZ+pYVSEsPGmGkSz2tlXxWC9iUc2nrjLsrQrO
 K9Pxz4vGis4A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 13:48:13 -0700
IronPort-SDR: Vgur34bl6YJCec3FaUaKKg835cHz3mxXIAjRtU4skhJGUumchXmx2rG7i8J7P0vjkGLx4KlP7J
 wVrB1DejYt/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,329,1580803200"; d="scan'208";a="448822284"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga005.fm.intel.com with ESMTP; 31 Mar 2020 13:48:12 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 31 Mar 2020 13:48:12 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.47]) with mapi id 14.03.0439.000;
 Tue, 31 Mar 2020 13:48:12 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>, "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, 
 "Avivi, Amir" <amir.avivi@intel.com>, "Guedes, Andre"
 <andre.guedes@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 07/12] igc: Remove 'queue' check in
 igc_del_mac_filter()
Thread-Index: AQHV/XlJ5NxubzutJUqMC8DxGb42YqhjY1oA///QRwA=
Date: Tue, 31 Mar 2020 20:48:11 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722DE96@ORSMSX103.amr.corp.intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-8-andre.guedes@intel.com>
 <7d8b419b-a4e4-0222-c6b5-a6c422232ff7@intel.com>
In-Reply-To: <7d8b419b-a4e4-0222-c6b5-a6c422232ff7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 07/12] igc: Remove 'queue' check in
 igc_del_mac_filter()
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Neftin, Sasha
> Sent: Tuesday, March 31, 2020 8:53 AM
> To: intel-wired-lan@osuosl.org; Lifshits, Vitaly <vitaly.lifshits@intel.com>; Avivi,
> Amir <amir.avivi@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH 07/12] igc: Remove 'queue' check in
> igc_del_mac_filter()
> 
> On 3/19/2020 01:00, Andre Guedes wrote:
> > igc_add_mac_filter() doesn't allow us to have more than one entry with
> > the same address and address type in adapter->mac_table so checking if
> > 'queue' matches in igc_del_mac_filter() isn't necessary. This patch
> > removes that check.
> >
> > This patch also takes the opportunity to improve the igc_del_mac_filter
> > documentation and remove comment which is not applicable to this I225
> > controller.
> >
> > Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> > ---
> >   drivers/net/ethernet/intel/igc/igc_main.c | 27 ++++++++++-------------
> >   1 file changed, 12 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> > index a71f1a5ca27c..8a3cae2367d4 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -2234,14 +2234,17 @@ static int igc_add_mac_filter(struct igc_adapter
> *adapter, const u8 *addr,
> >   	return -ENOSPC;
> >   }
> >
> > -/* Remove a MAC filter for 'addr' directing matching traffic to
> > - * 'queue', 'flags' is used to indicate what kind of match need to be
> > - * removed, match is by default for the destination address, if
> > - * matching by source address is to be removed the flag
> > - * IGC_MAC_STATE_SRC_ADDR can be used.
> > - */
> > +/* Delete MAC address filter from adapter.
> > + *
> > + * @adapter: Pointer to adapter where the filter should be deleted from.
> > + * @addr: MAC address.
> > + * @flags: Set IGC_MAC_STATE_SRC_ADDR bit to indicate @address is a
> source
> > + * address.
> > + *
> > + * In case of success, returns 0. Otherwise, it returns a negative errno code.
> Block comments should align the * on each line (please, remove one space
> before *)
> > +  */ >   static int igc_del_mac_filter(struct igc_adapter *adapter, const u8
> *addr, 

Yes, that comment block throws a checkpatch warning:
-------------------
u1322:[1]/usr/src/kernels/next-queue> git format-patch $item -1 --stdout|./scripts/checkpatch.pl -
WARNING: Block comments should align the * on each line
#42: FILE: drivers/net/ethernet/intel/igc/igc_main.c:2245:
+ * In case of success, returns 0. Otherwise, it returns a negative errno code.
+  */

total: 0 errors, 1 warnings, 0 checks, 57 lines checked

Aside from that:
Tested-by: Aaron Brown <aaron.f.brown
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
