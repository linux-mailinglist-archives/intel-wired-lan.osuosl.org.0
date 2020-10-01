Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A6627F9F3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Oct 2020 09:12:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 918F223039;
	Thu,  1 Oct 2020 07:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FFsnCd7CNqoi; Thu,  1 Oct 2020 07:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C91BC22EC9;
	Thu,  1 Oct 2020 07:12:43 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 977641BF2FC
 for <intel-wired-lan@osuosl.org>; Thu,  1 Oct 2020 07:12:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7E90422D22
 for <intel-wired-lan@osuosl.org>; Thu,  1 Oct 2020 07:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jsIXJkVv1vsY for <intel-wired-lan@osuosl.org>;
 Thu,  1 Oct 2020 07:12:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 61BE920363
 for <intel-wired-lan@osuosl.org>; Thu,  1 Oct 2020 07:12:41 +0000 (UTC)
IronPort-SDR: VtkVrYUUU9zm6k7opfeC8UDwqOJlljMZOZM5Ix1Q73PWr8fTOUTy2zReZtifsHd4RwQVptoRjw
 dUnJ1wTZFD2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="226774030"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="226774030"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 00:12:40 -0700
IronPort-SDR: IXOjgKGM6rRH3GxlGEa5AgdJGVXwMNFBXnoemrw+Hz9OQtA6TuU9FkyZwIv3S77+7RI+7KubbF
 9neJaxdh7PBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="415962416"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 01 Oct 2020 00:12:40 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Oct 2020 00:12:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 1 Oct 2020 00:12:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 1 Oct 2020 00:12:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GLO896e457C9kSgIeLzmuRET9U+2C0fmxq+fQ4zG6fvNcPaEKCiIdzt44KJzKLj87G6SrRXe/kE2VDH2KCp4rLxwXpZRLaEL4xo/ui4s/X+nkBf5QNbwCRMx8/DUBj9SCw6sa7lhqGGTlc079vIxwU2CgYcag9j4l2JmUNqBXYuVWa0yLDypYJOg8kwNrtQNpCQQm/0TbfiI29p89xGpQ6DL4M5r+plFf9L4+Z0eRIjhY2XRixdi4cKFTbFqCQ9sjNoMA+PoYum88XLaTKUpbrEiNU07am9srWScX17XI4skEqN5hratH4HTA6BCE8vQuL+XNLlOZbcv4cfo9SIEFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=psoOM1Ps85rsBWvGf4Hc1LlGSkE8BTSuZRAa7T1JF40=;
 b=jR2+qHP65ZMSq8uzZOQGB/AhZmQkcxoURbOCbS68v7i5nHylMuuFJuXyQQfNzXfzyE7+kKQnu+9RUBdUs0vnpTpAhxbTQyDVWvdz4bx+k30BZwy1HE1UBEPHXHzMArseP3T4Bd7joNEUZVuBN945qHAfsNs6dF45widU+nlmrQ85XC+lCFomS1HXHyCuhLPYnl6FBNZsp21iGAQ0yiglIyMdvEofhsM5GsqV9u1zbOM8hSZukNRDhKTaaLZKNlnyimPy4XZPIoJKUc3m3oXZ7o+gMiw7vzYCnl5UN7C37ZW8Qjf0K1XVRMIq62Qs1G5h7wrHr72EeSuMYXzQq4dNYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=psoOM1Ps85rsBWvGf4Hc1LlGSkE8BTSuZRAa7T1JF40=;
 b=fxsi4Ih202JLhBxkHKbL3twNZXrL3cyV34CEEifBWsgLJUXVz99o9sAzr2/Oh4d+7gkX84QjvTkEWN6u6U7FWSf5+MfRFKS/6D+5irwb9TfXrPdxy/sEqlCVbEh+1nmWHcdtGRwFTGtVdPNPZ2RZ/K4mqODE43GAIgWSejFiayk=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4219.namprd11.prod.outlook.com (2603:10b6:5:14e::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.34; Thu, 1 Oct 2020 07:12:37 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4%7]) with mapi id 15.20.3412.028; Thu, 1 Oct 2020
 07:12:37 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] e1000e: do not panic on malformed
 rx_desc
Thread-Index: AQHWhfyelW0sILBaC0WUYG9a0G9TuqlhizIAgCDtB7A=
Date: Thu, 1 Oct 2020 07:12:37 +0000
Message-ID: <DM6PR11MB289011FE3900BC2174DA68EDBC300@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200908162330.4681-1-ztong0001@gmail.com>
 <d8c2fdeb-0ae1-5633-7cef-61607fb22d39@intel.com>
In-Reply-To: <d8c2fdeb-0ae1-5633-7cef-61607fb22d39@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.130.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95c92442-fa2c-4f05-492b-08d865d96075
x-ms-traffictypediagnostic: DM6PR11MB4219:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB42190F66146E7A2AA6E54572BC300@DM6PR11MB4219.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xJnH/FtZJirFgwQvWllAMrxK2iYsdzBF07cik+aTzZ+39N10Aicl+MSBWcQFWZYp7K+BTrVuEHKjacw8KoO4XKFEGNxr+fun4jZf1PG2G6+nnSFOH6hNqIEHNQ/Mzqcit2TUm6lFw2vWikUN/te9tu94cLsXAZA0pD6Q4fxwsyUqZfnMvrruEO1B1SL2xqzsKmLSXT1l4a4UBUTArDpgY0vRgpuIsAJSUap71Gc+O3ygbbBXRSRZ3zfAYmRJKHGY3+oqpaibbNSxbPQN/IoPRTJ5irz5cPmB2raIkFCLEU7Iey6qlO0F78iND7+ntakONfG3BzZysbY4UX8+bphn4g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(136003)(366004)(346002)(39860400002)(6506007)(186003)(52536014)(33656002)(76116006)(110136005)(316002)(66946007)(66476007)(64756008)(66556008)(26005)(9686003)(2906002)(7696005)(55016002)(5660300002)(8676002)(71200400001)(53546011)(478600001)(8936002)(86362001)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: UEHzWxP6mqyWmiGkQYP0b5RPJJG7ASvkeW2Kjt07QHnIrCkBYkR3ug/KTdynp3JLxOnopN+NITBfcMxPR7HSFR/ICJdoiRS86zLPjN5DmrQ/rfyrlbYFINxD8fM1HO8cAXr+qOaqxFpiCPCFjnKqTc1dGbxahCg2GVxDYERtHlhNd8Gp0i2DYfGsEA60ybqJUxf/NsblV2atvVmtFQ6GoOCvimE7DXj2pl0WeqDL5YiTISLUljOeo9/aRtcQNvzWWI1fXq+zjyGmReQUu24KQwhPNlsLtScYM7jGb7F6pZEQG7QSGKVn7mMfRBO4vSkfR4OHTX1twdTpF8lKYBt7Tvd6ceNvxP02qEbcppY3fSa/0eKQLxKMx4FhnORK4kYrqIse7W7BkMHwDd9lg7cCyr8KZv5qSaXz5R/OXQr3TL+CRxhTaJJfhxbrMA5aSH96NaDsIE6oGlGCvZ9bXVJC+myueZkKcEyilPL+pNvLg0/CZlVuKmFdJfS44JoZW9FSJVp71HWeoT8MO2ACmJjWmNcDCZkOzsgxSd8tR6ymCBb+B4eccU+dNLkoCc8lFNiH41z7oDOudX/D7jWDN+iAv/X9UR8ypG01FDmiD/bgW7DPlIOSWJ/dhKC4oMCD2w5mP2t4z0mhbvfMfjFQ5jBCHw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95c92442-fa2c-4f05-492b-08d865d96075
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2020 07:12:37.1574 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MFSE3E08p5yWi52+fKPc+JNAO0YKNjEaRfPKy3niVFSnFYvrdHd7FnS+HT/hu1wD4gybId0bCRTUXoVyj8dI8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4219
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: do not panic on malformed
 rx_desc
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
> Sent: Thursday, September 10, 2020 1:23 AM
> To: intel-wired-lan@osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH] e1000e: do not panic on malformed
> rx_desc
> 
> On 9/8/2020 19:23, Tong Zhang wrote:
> > length may be corrupted in rx_desc and lead to panic, so check the
> > sanity before passing it to skb_put
> >
> Tong, what is scenario caused to skb panic? How it is happen on your
> system? Can you please share the test hint and your setup with us?
> > [  103.840572] skbuff: skb_over_panic: text:ffffffff8f432cc1 len:61585
> put:61585 head:ffff88805642b800 data:ffff88805642b840 tail:0xf0d1 end:0x6c0
> dev:e
> > th0
> > [  103.841283] ------------[ cut here ]------------
> > [  103.841515] kernel BUG at net/core/skbuff.c:109!
> > [  103.841749] invalid opcode: 0000 [#1] SMP DEBUG_PAGEALLOC KASAN PTI
> > [  103.842063] CPU: 1 PID: 276 Comm: ping Tainted: G        W         5.8.0+ #4
> > [  103.842857] RIP: 0010:skb_panic+0xc4/0xc6
> > [  103.843022] Code: 89 f0 48 c7 c7 60 f2 3e 90 55 48 8b 74 24 18 4d 89 f9 56
> 48 8b 54 24 18 4c 89 e6 52 48 8b 44 24 18 4c 89 ea 50 e8 01 c5 2a ff <0f>
> > 0b 4c 8b 64 24 18 e8 c1 b4 48 ff 48 c7 c1 e0 fc 3e 90 44 89 ee
> > [  103.843766] RSP: 0018:ffff88806d109c58 EFLAGS: 00010282
> > [  103.843976] RAX: 000000000000008c RBX: ffff8880683407c0 RCX:
> 0000000000000000
> > [  103.844262] RDX: 1ffff1100da24c91 RSI: 0000000000000008 RDI:
> ffffed100da2137e
> > [  103.844548] RBP: ffff88806bdcc000 R08: 000000000000008c R09:
> ffffed100da25cfb
> > [  103.844834] R10: ffff88806d12e7d7 R11: ffffed100da25cfa R12:
> ffffffff903efd20
> > [  103.845123] R13: ffffffff8f432cc1 R14: 000000000000f091 R15:
> ffff88805642b800
> > [  103.845410] FS:  00007efcd06852c0(0000) GS:ffff88806d100000(0000)
> knlGS:0000000000000000
> > [  103.845734] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [  103.845966] CR2: 00007efccf94f8dc CR3: 0000000064810000 CR4:
> 00000000000006e0
> > [  103.846254] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> 0000000000000000
> > [  103.846539] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
> 0000000000000400
> > [  103.846823] Call Trace:
> > [  103.846925]  <IRQ>
> > [  103.847013]  ? e1000_clean_rx_irq+0x311/0x630
> > [  103.847190]  skb_put.cold+0x2b/0x4d
> > [  103.847334]  e1000_clean_rx_irq+0x311/0x630
> >
> > Signed-off-by: Tong Zhang <ztong0001@gmail.com>
> > ---
> >   drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++++
> >   1 file changed, 4 insertions(+)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Regression, did not produce trace before patch.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
