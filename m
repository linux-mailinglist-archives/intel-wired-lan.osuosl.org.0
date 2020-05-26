Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6D21E2FEB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8652C2040A;
	Tue, 26 May 2020 20:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qr-pp2U+uoel; Tue, 26 May 2020 20:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3AB1F204FE;
	Tue, 26 May 2020 20:24:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E72E51BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E2B56886B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gGikgvDTK4Ws for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:24:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DC2438869E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:24:22 +0000 (UTC)
IronPort-SDR: d23/nSWLcb9dw4T9WUB7nonSHpmQj44z+ESjMXYmTWHsQR/19MPDxdTYQkmHqAj9VuIM24oCC6
 WOygnw1ctauw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:24:22 -0700
IronPort-SDR: tF1e+SP6Py2fCGL/TkaKUFdquy6vnA/0V0zd6ruCr2sRFJKVrTYOPptwu2iRxuZ+Wzfw28LtNe
 yhXpiBY1Tt4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="468437156"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga005.fm.intel.com with ESMTP; 26 May 2020 13:24:21 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:24:21 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX154.amr.corp.intel.com (10.22.226.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:24:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:24:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VcCEpD3KaW50y/rp9iREZyYgFH+WeCkwisS79dXVznZOVIVhs+w+3MM0QpFE0TkDuiikumECgsao7RZa7CLXGAZ2eZo3VRkWTHKa+1QG6tVMfg6gjWK63s9oYpJ46T2L/X6p7o8Vh8IWUoJzU+9GK0xkDOwiT0udFJa0iDKE9Utqh8COjrOo35+1ijURGguvCY3vuKxfNhqiRZpKwPYJXCBxECJhJQC8azn1/5Ue01K5SguBMx9DtgZspJBGskUS430gf0E7ClhEgFBEYE9FSI8ln883KvbLDTDm/jm5loYAaAahndoruRLN9qhiwALqcrr2OLKzg4TD4s6Y0aMpew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5AlK4V91XK0krakLVATru6SO/hAFf0j3ALk4xBc3MZQ=;
 b=Bn3tAWn8byxMj164fKZBsReBLRZi0Gt9EcTIrIZIN5AzCTFlCv3h2p3WsUX1E5XOpSeuU1Fgemrt2EAJFNCFFvNEwIeCSJgMqOYp535THQE5d8WwPNRlwYosp8awppm1QEW3yk56jnNRkFg7JrLQQc1XsHVDb88nYjEiYMViQzap6Gu6UF9PtVjMAvSK3MDSV3AElPogLfz9Ha2dV/EfNfdagKfLomhtpqOdai4rUsGyDXvXblfDRRymZJfPaa0VnzX8Ovz8bjFVc1+Uv9QE5HTCoRKf2pMsX80mCRTqBUhjlXlZPBzCgYE47Bw4Vm2iYVFikawVH7JYlqu+hZzVGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5AlK4V91XK0krakLVATru6SO/hAFf0j3ALk4xBc3MZQ=;
 b=S6R8h5KQ/1Glizvfny2+HtHxOWXARfu5+4bzRYPWCpMpOol18Mjzscr+Ejn9nbyLKcwu+5WVvRh1nGnEb47ODVaojOlbU3vDjYK0xdO81hQWqMz9jgc74iPWNny5jBckSB6GrEKjSq1GubuyyMe9KcoJ8FmlC7yL0rQ5a64I9po=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1643.namprd11.prod.outlook.com (2603:10b6:4:b::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Tue, 26 May 2020 20:24:19 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:24:19 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 06/14] ice: avoid undefined behavior
Thread-Index: AQHWKxtXEFpYdz4sA0O0ob+DkVFwNKi64PoQ
Date: Tue, 26 May 2020 20:24:19 +0000
Message-ID: <DM5PR11MB1659BB83B798B2EF26E24D2D8CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4a76d30-3e39-4fdf-bfb2-08d801b2c511
x-ms-traffictypediagnostic: DM5PR11MB1643:
x-microsoft-antispam-prvs: <DM5PR11MB1643D8A4A041D2076DE31B068CB00@DM5PR11MB1643.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WN3LyQb3XMoSuytVMO+x/zYYzhtWNESrPFeEqgwF5QNCQIlRtG6ILWJSUoHHG3CfKffrOCKplShh0N9hH8clXCGBCAJ/vwRxaQRc9MMJ+DEE+nP9wSa/v3C4qzYxRBXothhQNGj1LuiF0eFzvY9K2m7/U6Xyne0Zm/yuWZT/onUfTr7zLRyZxmrQcY9vY02EHUG8EdmymDqHA/qS0K67j3ft5s/9Ih5V3pzewzTHqt+UxQdXjcTW11bwmwHnNDyuRUacW01XIXBHQikJurzbx+QnzwHNUqPGygm2VICncKeh7LAZRor5sReCJFN6CDON
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(39860400002)(396003)(136003)(55016002)(316002)(26005)(9686003)(33656002)(186003)(71200400001)(6506007)(53546011)(7696005)(5660300002)(66476007)(478600001)(8676002)(8936002)(2906002)(52536014)(6916009)(66446008)(66946007)(64756008)(86362001)(66556008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: TsVQ36pBK2e1TNF/mVhgpR+nEzdOzfTcUPda1rqATi+OFKc30UOcSRFLskGbfPDgH1J2TIE1OJgffMCOGtY/a0SpMZw4a9Klr59SG7pAmMgY/NStuIqR3ek/Za3ldtUvV3V2gB7PWs09951COIORQ5JUidbCYo0xeDmrbfuBlH8SrIAcvj7sspgsuJP3tUqNQ7IrsXxh0/eRojIFJlmurURShs5s8HkYow+7USmUMYedtdZJNbG6HKgxIxHuR19bLhOq4ytJmq4GdbreTTDTs5qVnelQ/YxnDHYMt1B37dnaN/eeMmEounbNik0XM0ED/uCElHdvaKMF/LjnCy0FOcuhPDsmqANovwk8NspbiUubK3rx4evfkCIWYfqFfmk+ukQi3HS5WfofY8pEXaunWA7frPBxPnkZ7Yl2KY44jc+zEqNzU3nWSfMiEORxmfOw86Ri8UFlw4+6ElOXPTQUo+SPENDHS5vVvGCWrhkyo3wS3X3kUzbLGRoZH+JTc3mu
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d4a76d30-3e39-4fdf-bfb2-08d801b2c511
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:24:19.3756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: guEtF97hru+hrR3V4h2IX4V4reWb6X8WTj0tJmoZsbqlpfrtQWZKhX+jXIby5PSQjcEabNL7BGPav7dJL9xpEKuzsGfwgUQ1IpPh8nisWCA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 06/14] ice: avoid undefined
 behavior
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
> Tony Nguyen
> Sent: Friday, May 15, 2020 5:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S44 06/14] ice: avoid undefined behavior
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> When writing the driver's struct ice_tlan_ctx structure, do not write the 8-bit
> element int_q_state with the associated internal-to-hardware field which is
> 122-bits, otherwise the helper function ice_write_byte() will use undefined
> behavior when setting the mask used for that write.  This should not cause
> any functional change and will avoid use of undefined behavior.
> Also, update a comment to highlight this structure element is not written.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c      |  5 +++--
>  drivers/net/ethernet/intel/ice/ice_common.c    | 12 ++++++++++--
>  drivers/net/ethernet/intel/ice/ice_common.h    |  3 ++-
>  drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h |  2 +-
>  4 files changed, 16 insertions(+), 6 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
