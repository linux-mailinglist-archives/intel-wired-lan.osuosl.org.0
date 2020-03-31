Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 608DF19A027
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 22:50:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A90025351;
	Tue, 31 Mar 2020 20:50:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UK-yKdyk+7Gd; Tue, 31 Mar 2020 20:50:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3AF2D253F8;
	Tue, 31 Mar 2020 20:50:50 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F19EA1BF41E
 for <intel-wired-lan@osuosl.org>; Tue, 31 Mar 2020 20:50:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ECC2F87EAF
 for <intel-wired-lan@osuosl.org>; Tue, 31 Mar 2020 20:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N6OB1fNhl8hh for <intel-wired-lan@osuosl.org>;
 Tue, 31 Mar 2020 20:50:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E3FF387EA6
 for <intel-wired-lan@osuosl.org>; Tue, 31 Mar 2020 20:50:47 +0000 (UTC)
IronPort-SDR: +miWlUe8a6frlwn+FHGmIZt5dySbsbFaRIoYiHtS/IXPdVe2aPs3WJ416VC6A+O+FSB7ENjsAX
 EVqSmIZRo+IQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 13:50:47 -0700
IronPort-SDR: vWvIhAkgZa8Oa1ELsEQDlsdO1K4BC/u2I9rDeDrSE4PiRIf2aN1d6YtfpiSmum1UYhAwaRiZQz
 7Bd3ZxwtmGZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,329,1580803200"; d="scan'208";a="267411135"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga002.jf.intel.com with ESMTP; 31 Mar 2020 13:50:47 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 31 Mar 2020 13:50:46 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.76]) by
 ORSMSX160.amr.corp.intel.com ([169.254.13.166]) with mapi id 14.03.0439.000;
 Tue, 31 Mar 2020 13:50:46 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>, "Neftin, Sasha"
 <sasha.neftin@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>, "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, 
 "Avivi, Amir" <amir.avivi@intel.com>, "Guedes, Andre"
 <andre.guedes@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 07/12] igc: Remove 'queue' check in
 igc_del_mac_filter()
Thread-Index: AQHV/XlIkgpxOBRQBU+ua1cH61MxHahjY1oAgABSbYD//4sVMA==
Date: Tue, 31 Mar 2020 20:50:45 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D9404498623451@ORSMSX112.amr.corp.intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-8-andre.guedes@intel.com>
 <7d8b419b-a4e4-0222-c6b5-a6c422232ff7@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B9722DE96@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <309B89C4C689E141A5FF6A0C5FB2118B9722DE96@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Brown, Aaron F
> Sent: Tuesday, March 31, 2020 13:48
> To: Neftin, Sasha <sasha.neftin@intel.com>; intel-wired-lan@osuosl.org;
> Lifshits, Vitaly <vitaly.lifshits@intel.com>; Avivi, Amir <amir.avivi@intel.com>;
> Guedes, Andre <andre.guedes@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH 07/12] igc: Remove 'queue' check in
> igc_del_mac_filter()
> 
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Neftin, Sasha
> > Sent: Tuesday, March 31, 2020 8:53 AM
> > To: intel-wired-lan@osuosl.org; Lifshits, Vitaly
> > <vitaly.lifshits@intel.com>; Avivi, Amir <amir.avivi@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH 07/12] igc: Remove 'queue' check
> > in
> > igc_del_mac_filter()
> >
> > On 3/19/2020 01:00, Andre Guedes wrote:
> > > igc_add_mac_filter() doesn't allow us to have more than one entry
> > > with the same address and address type in adapter->mac_table so
> > > checking if 'queue' matches in igc_del_mac_filter() isn't necessary.
> > > This patch removes that check.
> > >
> > > This patch also takes the opportunity to improve the
> > > igc_del_mac_filter documentation and remove comment which is not
> > > applicable to this I225 controller.
> > >
> > > Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> > > ---
> > >   drivers/net/ethernet/intel/igc/igc_main.c | 27 ++++++++++-------------
> > >   1 file changed, 12 insertions(+), 15 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > b/drivers/net/ethernet/intel/igc/igc_main.c
> > > index a71f1a5ca27c..8a3cae2367d4 100644
> > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > > @@ -2234,14 +2234,17 @@ static int igc_add_mac_filter(struct
> > > igc_adapter
> > *adapter, const u8 *addr,
> > >   	return -ENOSPC;
> > >   }
> > >
> > > -/* Remove a MAC filter for 'addr' directing matching traffic to
> > > - * 'queue', 'flags' is used to indicate what kind of match need to
> > > be
> > > - * removed, match is by default for the destination address, if
> > > - * matching by source address is to be removed the flag
> > > - * IGC_MAC_STATE_SRC_ADDR can be used.
> > > - */
> > > +/* Delete MAC address filter from adapter.
> > > + *
> > > + * @adapter: Pointer to adapter where the filter should be deleted from.
> > > + * @addr: MAC address.
> > > + * @flags: Set IGC_MAC_STATE_SRC_ADDR bit to indicate @address is a
> > source
> > > + * address.
> > > + *
> > > + * In case of success, returns 0. Otherwise, it returns a negative errno
> code.
> > Block comments should align the * on each line (please, remove one
> > space before *)
> > > +  */ >   static int igc_del_mac_filter(struct igc_adapter *adapter, const u8
> > *addr,
> 
> Yes, that comment block throws a checkpatch warning:
> -------------------
> u1322:[1]/usr/src/kernels/next-queue> git format-patch $item -1 --
> stdout|./scripts/checkpatch.pl -
> WARNING: Block comments should align the * on each line
> #42: FILE: drivers/net/ethernet/intel/igc/igc_main.c:2245:
> + * In case of success, returns 0. Otherwise, it returns a negative errno code.
> +  */
> 
> total: 0 errors, 1 warnings, 0 checks, 57 lines checked
>

[Kirsher, Jeffrey T] 
Yeah, Andre let me know and I will fix it when I go to push the patch upstream.
 
> Aside from that:
> Tested-by: Aaron Brown <aaron.f.brown
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
