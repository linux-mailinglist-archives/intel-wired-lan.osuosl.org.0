Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C01E416E1A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Sep 2021 10:39:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB46F81AD7;
	Fri, 24 Sep 2021 08:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zf0vRdHaREnD; Fri, 24 Sep 2021 08:39:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFEE781D0B;
	Fri, 24 Sep 2021 08:39:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC7D11BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 08:39:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CF6660B3F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 08:39:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZeQQEg6U6yJ3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Sep 2021 08:39:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7BCA60631
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 08:39:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="211106357"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="211106357"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 01:39:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="551500030"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Sep 2021 01:39:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 24 Sep 2021 01:39:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 24 Sep 2021 01:39:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 24 Sep 2021 01:39:04 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 24 Sep 2021 01:39:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HMEy3+rVd2Pcqb15U08ishopUjPlUKZ2IYDetaAXZHfBhTDlWlsKydkqSfeElO9k0OQ1NCZHboZWePOgiDHyEDr3WlbnIBDHtzrO18rCXL3R1AOeVC5VA7IvnVs/gEpvrO4TRag0DUFYRQifDcG8QVprkKELaFLMN5sqPqEQidafuTUawwTp3QPfcz3leUWYUYJ0jSRJKXpOIorqd+UHXzXxt1Fxp76B7IV1uzryFxxab6N/0f4JCciy23SYMd/LoWT6jFUO4oH7SMnj6cFd/fjHMnv4+8XDybOCqHSY6sFXKYZflKUveQNpeTWBwNK7ONqjcyQLfQ7anfkn0JLkiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=mRStWlaul9HXHjo+u15TlJqhgOFMuvdbU/c9oHwhWSY=;
 b=OMawzBb7KTnPM9Nbm+vxBgSd5qJP2lHygB3am0lsq9f7YSN0tz9utCsxK+njLhQwZ/fn9LNiteezGuKHqvodSNte+kSGZXsZPXKll7Y98o8JrirdPUPIbGvtaNuGa4YMu18h8A1/I05Sr8RQqQs2e2SaIuL1AmHTlcyNfBMG1DJ67cXD1y81jmH8xytcXHbW0qmVu1YypN/Jy3gMV5pCQNo/ZCFcEcI5thN3v7oe52cGp7QJXTwG5MbQeg6C6oL+JasAHQ9u+T+6TaPEED8IkDh24KpDP4jQNY4K0wHQCB5h81RXBNCWO/ugKuFChDDTGVWOn6uoxqUll99U53TDIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mRStWlaul9HXHjo+u15TlJqhgOFMuvdbU/c9oHwhWSY=;
 b=F1zxnwgo8glAwY+zKheQO+crEdwAhMTcZ+xf6rIQKscAbpjI4CvsTicojNYCV4AJpvQmI/awD+T+eyKPB1KN4RUTK9O2nr3GHqX95JqZtb1bsXyjjrOgeXg47GPBi7/4pSlbOLp1gLR5vtpxwyMBElt98Q0zUh6R0wxvPhrHYc4=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1854.namprd11.prod.outlook.com (2603:10b6:300:10c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Fri, 24 Sep
 2021 08:39:03 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4544.018; Fri, 24 Sep 2021
 08:39:03 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Allow to enable/disable
 hw-tc-offload on PF
Thread-Index: AQHXqUSeNqDtBRcwuEed1TVwEcch16uy7I9g
Date: Fri, 24 Sep 2021 08:39:03 +0000
Message-ID: <MW3PR11MB45542FF7A2C9683F66EEFE869CA49@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210914084315.25585-1-wojciech.drewek@intel.com>
In-Reply-To: <20210914084315.25585-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27b929ff-ee3f-43b3-add8-08d97f36c37a
x-ms-traffictypediagnostic: MWHPR11MB1854:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1854AF53BB1F69BEBA44E7159CA49@MWHPR11MB1854.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WBCX+ufi9QAsdi9Yk3zsbh6qs3X3lSHJK9sbtbp9PAqN4GUfjniyoR8cd1y7suNWMoZXHlI7QxF9LHZ4/AXamKz3HM0R9I8m9G895Tujfi0ME3vY6WdXhkEq0xvwEY/DzSaxJd6rcB6ILYTFzOzosl3Fw133GysQQ6E5aXzx9HBbWrItsVyXxYM5Us5Tvtr3SiyyndmpL3hq0cAhdEQSA+q66Hd4qlQuHwkX3xRrLQ3B1i9bJhRyKljRVWr/xH80XY9GT/pWccNgN8UqMQVz1JKiMCQ8/mosTRYx2HHupeG9L7297VHi4093ceMmGD3CYR+QmS+h7VmzpG1zNMWgg2yCUb+Cvz3yWIukczu0Rw6hNqzkRCXDO1A6IKKQdYaTLXnADRqKVOGjjbZ7xJ7ucKXPTj+SfFzPIxJzfhEH7dgRCbk7otXhaYPbP6KIl9bYBF5gK9puVxlghE8hTl0BjLR1UPlJKeQvDpIjutDK6UQbuda7rxy5lx88KmOi2MpX2ZN02gG0n721vvri9QdAqhcQWdMtEXz8IuQsvCBu0DvQzx34utlXQJchemN4sZcgBpRGkaXbpG9WBvIB435kUnHeCt0dR6XWJ0n5xTn14TYcXb1zbWBp/piupF2ISgVkdMgRnHd/qvB2NxuVe6heUUZPA2FFroLkRthD/hnyQhjRtwhKUq3eRb704xzLqjUm17/MzQy33pYcj+tJheco5Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2906002)(52536014)(76116006)(38070700005)(66946007)(26005)(86362001)(122000001)(8676002)(55016002)(508600001)(4744005)(186003)(71200400001)(7696005)(316002)(6506007)(110136005)(66446008)(8936002)(38100700002)(5660300002)(9686003)(64756008)(66556008)(33656002)(66476007)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1KNuP4YxeElzaJvd+t45bwtUTgcYgjAmS1xLjecS8SOxy0bcu1dHeGsImdqC?=
 =?us-ascii?Q?hnA3hal581/rCnrGEK313kJsqzJYxjmkVmDdWKalA//WTDfV44fFMj4yGJTw?=
 =?us-ascii?Q?wX+4/UijWeUDp66438iJpXOoqTG3PSdNFGEzESd/niv68q4KzBXv9xkPaUxG?=
 =?us-ascii?Q?6Qg1XawIq/elC52cLZk9YiSN6Ozzwdlz0vHfz+YEHVEt00t0bImE6fR0v5WO?=
 =?us-ascii?Q?08gQe3KKQ2e8MBlQtg9XYkOFGiYqB/MKOD49cUxodpvkQulAUdHR58O72NWU?=
 =?us-ascii?Q?UhULZBYvbIN3VvgVH96l4K/VL5Yo58lTJC/QHZByaQZILr3C05P/kG+N8tLB?=
 =?us-ascii?Q?B9fyF6CtKmVRHpiaJcsRmnGss8k1reG3dD6tDKTx2RXVv5Ayv6qI15YihYiz?=
 =?us-ascii?Q?QvgUoKvvnypqw8OFg1Gv97qGnzzddCqGVQuLfzhLIoL2IeGT8SkfgSotrCWs?=
 =?us-ascii?Q?dC1tw+inXOAiDRO34FflRT/iResUKXHrYHk7xks67thXAjCjGPp+YWg1X5n4?=
 =?us-ascii?Q?yz5F4fpcTPBklmL6fe9VJNHW6bIX7jcYdPS+0frRL1YAuiGebKTwH7oFXl6e?=
 =?us-ascii?Q?cTs1blBTdRoSD9xfu2tMqsvf2Bpa2BpnNveJPzDWAMaxaQ14tZNoTmHppQRb?=
 =?us-ascii?Q?xJfGNcMVEwLw7gsTVRK/wikWCr0f5ApTqEB2GN2tss3GD2RooRHPEcFwms/6?=
 =?us-ascii?Q?BupCxBulhGDLal0t7ezrNkaj3YTI1nY9/P0ppSBMitsgcbCtTnMyJUQkZHX/?=
 =?us-ascii?Q?eVFSc2ZPkhaNYXeJBrwZ2tJlKdx6PjT+6YnSEOf+AB2QE0sfik2rZFGTBfso?=
 =?us-ascii?Q?1Vzyt6OVn80FSWft9jrdyBZC8VZtzahtV6eOC9a41QFFwniUBZqz/iES9bF6?=
 =?us-ascii?Q?buEpC3Z+EEPR1JEVEBCoA2KYJhQPly4UXmKd+6gyWaverT25chHgVmiwuzTa?=
 =?us-ascii?Q?XhWEIovBxyCYnxr65Mi6HvDiS243LmRv/OPNUHiNtt+MruOx6tTeAFU9cZoB?=
 =?us-ascii?Q?GRo/vuddE/zJL24Xg04ef3LIkfB/UjyYCy5VydSUcTbATgYdWlwyIaXcezcN?=
 =?us-ascii?Q?clwReaOF0Vw3rSRW+8/st6iWAH4zbLCk7ylggrv3XFJpAgsTInRjD0MgjLuI?=
 =?us-ascii?Q?gCoVHxpbO3MbSm/Q6g3j581r1eyfUJpxOlitqbvTwplhetcifF4pUbTTgdWo?=
 =?us-ascii?Q?BhO/sqozfN/JDLdfOsuc3EDjU9dld2ISgIlaFybrHYLze3SK/4wceRAcsgdh?=
 =?us-ascii?Q?JpsbJ4yZgYcWUVJImmao3i6AGCRUad0Z+kwXFr9NvEa33iyRR9NWY7BUMP2t?=
 =?us-ascii?Q?4eC7OIKJ3jzmJj6nnqMSt2+q?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27b929ff-ee3f-43b3-add8-08d97f36c37a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2021 08:39:03.3148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fdND4z8SupMoFjYpPp54RmYNYXja1XaH7UIFlX91+F/DPyI+p+EEKc5OpHGtZOZ0HSCbi5lVszS124Vq75fqoQsMp/4MwyaB+A8AIn35DDQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1854
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Allow to enable/disable
 hw-tc-offload on PF
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Tuesday, September 14, 2021 2:13 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Allow to enable/disable hw-tc-
>offload on PF
>
>Set NETIF_F_HW_TC in netdev->hw_features so that user could
>enable/disable hw-tc-offload feature.
>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
> 1 file changed, 3 insertions(+)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
