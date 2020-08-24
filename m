Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F14225071D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Aug 2020 20:07:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F14C85E7D;
	Mon, 24 Aug 2020 18:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xzguz1S6pubk; Mon, 24 Aug 2020 18:07:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82AD885E9B;
	Mon, 24 Aug 2020 18:07:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 751EE1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Aug 2020 18:07:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7095187E99
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Aug 2020 18:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ahHUmA7UNcN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Aug 2020 18:07:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8991387D05
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Aug 2020 18:07:11 +0000 (UTC)
IronPort-SDR: w+gW0tCvH7p2mFovZWLtMvsTfPuoiBiVCj+SGlUwwsyaF0wVh3Bm9aAag20ouPmt+LJd5sKVs1
 4+yJTcB9U5Ag==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="240782683"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="240782683"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 11:07:09 -0700
IronPort-SDR: k1H72bbxXJ/pm02vOIGYmdJG+i2QDsYAS6yFugN89ETyUvZjAvXsP2foQfXHuJVYVwTb1DK6Ky
 elS6DmOpPCyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="298806939"
Received: from fmsmsx602-2.cps.intel.com (HELO fmsmsx602.amr.corp.intel.com)
 ([10.18.84.212])
 by orsmga006.jf.intel.com with ESMTP; 24 Aug 2020 11:07:10 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 24 Aug 2020 11:07:10 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 24 Aug 2020 11:07:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Aug 2020 11:07:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 24 Aug 2020 11:07:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bvESQj+tWrAAYVxk8i0S9UmSiXpR0d4VkmYsqKK/7dkR5nUmd1QeZt5uTaYaPwJWQcBhLr6rE2l3jw6Dypf3Nvjv2UdzElHOVpePNcliUjOFzSHGesdzDlElu/3fXhmxjgaoclsXwXOTtV6DeSYtznTKY+1Bnv/vWFrKD7wEn7c32poM7n+NfubInX7sdJ7KAKSXkWisPbX3562tizm9UvYx0vImySqmF3kYGf4NMDMkhC/Mv/JX8gAmFOnYLDaCo8WijOnE/MtzQD9pXoVUovdrhU1aivNhN15ZOqynQzDrof9nsmmes7e3sZQYihKE3pQpqoyIAcnXO4BOWMa39w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uiMboN8Xt1yDnwWma2BPVzoKaTOGvqHvidgjJcJFAGg=;
 b=AToGFyVu4eLHE8egR5taEyTA+1FFx1w2lPI+8B+LrgRGb8BBK8fjKjWjGb3fgUf/pYzv+xD6/ovEavTwxpfF0ra4eavIbCVz4nCV/iHjcdevEfvu3He/F+Gv++KN7W+yrugaHqFSqO84/kYuCnblQtySCbdS8w+eswBUQhjpOo7YOyEElaM3+MfXxqASrcunbX8gr7T291AT+JoBpM1hILCy3yOms8rWMqeYj89JMJ/ioaEKyghtGDWTqGCDYBa5Fh7Dqy28kC71hzOn/SqV1H1ovH+c6HL1f/Jq82eUI1BmhATmV2/wl6tpQngtjlFWklBXgpDPVFNCpRQ3G77tKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uiMboN8Xt1yDnwWma2BPVzoKaTOGvqHvidgjJcJFAGg=;
 b=HSKmSwY/npxy1LWVK55jAosv2HdVHdH99kCMAnHb9lQvCV8KzLBMHvZmqaeGJGJDrOF/PgEvJt27d1HtxhA4w9ySoqB1JPhjjd1RqWykBoxt/Mf7LnxNNRq+JsPKzSXColui3vmCJ+IMbvSXCQ+0d/YWoLMtR90Wc61lJ0fTxPE=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2672.namprd11.prod.outlook.com (2603:10b6:805:58::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.26; Mon, 24 Aug
 2020 18:07:08 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f8e7:739a:a6ef:ce3b]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f8e7:739a:a6ef:ce3b%3]) with mapi id 15.20.3305.026; Mon, 24 Aug 2020
 18:07:08 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, "Brown, Aaron F"
 <aaron.f.brown@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Guedes, Andre" <andre.guedes@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 4/4] igc: Fix race condition in PTP tx
 code
Thread-Index: AQHWZTg12BLUowXkwkSKS2WPtM6QcKk3BkQAgAx1WACABDy0AA==
Date: Mon, 24 Aug 2020 18:07:08 +0000
Message-ID: <c6911616f51969b848e58434d21dc9844095e29c.camel@intel.com>
References: <20200728233754.65747-1-andre.guedes@intel.com>
 <20200728233754.65747-5-andre.guedes@intel.com>
 <DM6PR11MB2890FFB4041BB4F13D0326A3BC400@DM6PR11MB2890.namprd11.prod.outlook.com>
 <159805948887.34417.3341607631899328702@dmsimone-mobl2.amr.corp.intel.com>
In-Reply-To: <159805948887.34417.3341607631899328702@dmsimone-mobl2.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 555d137f-8780-4459-da90-08d848588407
x-ms-traffictypediagnostic: SN6PR11MB2672:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2672BA9C955EEF4A2813A35FC6560@SN6PR11MB2672.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wSY9RZjABlPb+uOYiRhkH7KXLyAkB1VW4DmZJZQERdO0rVSSlensy/70yO7h5EaND1XqFZFKBtqP7i7Ep6V/7ThY8oxpgNfPsxR5spm0lexdf31CBtn+h9+flBxKgliR14TuhaXS6s0kQwtiX8G2KvAQ7HKKyxn2M5XlXpawVzr5RTJvYXYzTY3Iw42A2lrkFowcfS7wXFzPQhZ1bUz9dVFFC74l5Ii9HAi7EcdSiwtK81yj/cH9+ve4FBQbfVpz4mS3BUqCJXHhtH7RS8d9G0L+d101g+IIUFs8TPS1wPrpKvzfLrfoDkiBCp6F4Z3c
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(39860400002)(376002)(346002)(136003)(2616005)(91956017)(66556008)(5660300002)(66476007)(2906002)(186003)(76116006)(26005)(64756008)(6486002)(66946007)(6512007)(316002)(66446008)(71200400001)(53546011)(83380400001)(110136005)(6506007)(6636002)(8676002)(478600001)(36756003)(8936002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: a9afVEs3WsqBcpHJ4tkkjbZUfSrCVapli2KC6EZ5DB2uydP1SUfll0WKS5PKXhbK4o8k9Q3gxBE+U8HZ8/kGz0TTy3kIu+uGhvrfI7oqZslrZiU84YrafracjK7iRyFE5MTenFfnni16oA+4HfaDFe7iYOoDMFUp43JfpMf76kwM/5gj8QCoQhydcd1vsmeNHZNbsGwnQWhK18MDNBeJdR7+g04diWV69TNnsOt07y8O2pIAN8o4y/W3M0DE1eiDwTzIaSDZ1+kqjLLDvQbs3ghL9Ms/NglGNunS+vCzJiV2pDpyVaAVt2Cl+Y3qYDtWKnKBfKNWpVunqFp2px2ft7Zmlnsb25CFD2V1LJ4dXTSRpundEGrh1FZpC9McMkMnkOPvuRghuNwG7ujhWG9ZPMWr1yP7gTJXXMjsti3NdMqnJvODBFGs9ZaZ+NZQsbfDuzJoya0o980s+GVi71sGjyHhPX9hi700z68Xzm3Jvmlnd2H3L7Z0Ej5TIEUd/OwUu1diKSIog36wyYpGhD7NuQhcMwUhtim9r1WEQIL8njdQ91CUXw5L3+5H4MB+tCvOQ+UAcR5OyppmfpjL9PAuA1c+LExeg95N7aas5JpBBhTOSMveAgxohC1nFWu0uh1r9lgC2CAyjnxlQ2gYZCfXIw==
Content-ID: <805C64E1AA9AC64D9422DE51A082B0DC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 555d137f-8780-4459-da90-08d848588407
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2020 18:07:08.1011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i61gyHqEcTXqoHs39HFlHYcloKIFmApvMvLgW0XzO5Muim2JtohC4VQGMmiUCenTRKNA0USsBnvDWR6F4sGLuYcWsG5I1s7joeFSZEiNmyw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 4/4] igc: Fix race condition in PTP tx
 code
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

On Fri, 2020-08-21 at 18:24 -0700, Andre Guedes wrote:
> Hi Jeff/Tony,
> 
> Quoting Brown, Aaron F (2020-08-13 20:09:42)
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > > Behalf Of
> > > Andre Guedes
> > > Sent: Tuesday, July 28, 2020 4:38 PM
> > > To: intel-wired-lan@lists.osuosl.org
> > > Subject: [Intel-wired-lan] [PATCH 4/4] igc: Fix race condition in
> > > PTP tx code
> > > 
> > > Currently, the igc driver supports timestamping only one tx
> > > packet at a
> > > time. During the transmission flow, the skb that requires
> > > hardware
> > > timestamping is saved in adapter->ptp_tx_skb. Once hardware has
> > > the
> > > timestamp, an interrupt is delivered, and adapter->ptp_tx_work is
> > > scheduled. In igc_ptp_tx_work(), we read the timestamp register,
> > > update
> > > adapter->ptp_tx_skb, and notify the network stack.
> > > 
> > > While the thread executing the transmission flow (the user
> > > process
> > > running in kernel mode) and the thread executing ptp_tx_work
> > > don't
> > > access adapter->ptp_tx_skb concurrently, there are two other
> > > places
> > > where adapter->ptp_tx_skb is accessed: igc_ptp_tx_hang() and
> > > igc_ptp_suspend().
> > > 
> > > igc_ptp_tx_hang() is executed by the adapter->watchdog_task
> > > worker
> > > thread which runs periodically so it is possible we have two
> > > threads
> > > accessing ptp_tx_skb at the same time. Consider the following
> > > scenario:
> > > right after __IGC_PTP_TX_IN_PROGRESS is set in
> > > igc_xmit_frame_ring(),
> > > igc_ptp_tx_hang() is executed. Since adapter->ptp_tx_start hasn't
> > > been
> > > written yet, this is considered a timeout and adapter->ptp_tx_skb 
> > > is
> > > cleaned up.
> > > 
> > > This patch fixes the issue described above by adding the
> > > ptp_tx_lock to
> > > protect access to ptp_tx_skb and ptp_tx_start fields from
> > > igc_adapter.
> > > Since igc_xmit_frame_ring() called in atomic context by the
> > > networking
> > > stack, ptp_tx_lock is defined as a spinlock.
> > > 
> > > With the introduction of the ptp_tx_lock, the
> > > __IGC_PTP_TX_IN_PROGRESS
> > > flag doesn't provide much of a use anymore so this patch gets rid
> > > of it.
> > > 
> > > Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/igc/igc.h      |  5 ++-
> > >  drivers/net/ethernet/intel/igc/igc_main.c |  7 +++-
> > >  drivers/net/ethernet/intel/igc/igc_ptp.c  | 49 ++++++++++++++---
> > > ------
> > >  3 files changed, 40 insertions(+), 21 deletions(-)
> > > 
> > 
> > Tested-by: Aaron Brown <aaron.f.brown@intel.com>
> 
> Please hold this patch back. I think I found an issue with it. I'm
> investigating it and should send a v2 soon.

Thanks Andre, I've dropped this patch from dev-queue.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
