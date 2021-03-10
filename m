Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5F33367BE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 00:44:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A131442FF4;
	Wed, 10 Mar 2021 23:44:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dWkGvna0gOXy; Wed, 10 Mar 2021 23:44:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9559542FF2;
	Wed, 10 Mar 2021 23:44:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 965D21BF37E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 23:44:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91475605FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 23:44:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R-oCTtWNUr5T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Mar 2021 23:44:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D123C605F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 23:44:23 +0000 (UTC)
IronPort-SDR: FozwcQAUbYSzkNELnqMUGGlY9T73bxAxZPNOY28TFm06KhmS/OgdM7Z9Wbc6ud/ns0bdjGvxfq
 GFgQpmG6aYJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="208397266"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="208397266"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 15:44:23 -0800
IronPort-SDR: IVV3YF14tSk8SUDVmb53fVguPEeMTCKcM3WAlu0JS83pDP+jMXNCUNwrD6fu95O8INoE3z6TF7
 1Dhtg8GsLnjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="603304581"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga005.fm.intel.com with ESMTP; 10 Mar 2021 15:44:23 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 15:44:22 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Mar 2021 15:44:22 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Mar 2021 15:44:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jgW339q3CaSwlzFktEh/dvW4jo6hGR7IzURXqxTWdoLkt2dB6oKaiS+0H6bpDvTwnWWN+Qj/k52W74Bm76Pg1EL7NUWSSyEVy61LQNQscS30iskVtQ9kXLz2ZOdu14xS4T4DCigZHP3YGxf35DCFzU9sAXyeoRw2QPh7vSQRFDdVvN4e6u62x1s6H/xp1ECVvgSMC9mXI489+OclB4vUWUtHd6rCA6XWm9GZs0DVjV7LE81fksPBcA3OCE+9JsQLv34cli6Rzxh8SxLA9poYedPbgUQPneLmKC8JCNJOcjJn+HC+tQ3sFmCL2f7+Agti3YwpA5O96HhkqICV9ZsOVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zml+fN6fKTKM7Yn+FvQiXvmz8rSwK0ZC9Zy8oBKDQt0=;
 b=aRx+WYJQSH7/JTnzph+Mi5uc6koVv6LeWJKYToVB/xXrlIs7HgwcYnIsxRU+xt39pikkjO5GxCpVD8k3PQ7OGTXyeiZjI7sDMihCBxBcIMY/b1926TlUrmoLB1Q+haIcsPoou+ly5w43fDTc/+ClHMpicox+ZrZAUDlP2YoD+rbq8WJuHxVFnEdy3n0leRJWisebBnpy4h/jkuhN1SvDMixHG7iyGJC8RrUBFCKzapmcaGEitugTf637LJnaA6AM9H0wsB0OZBCejyTvUcIoM6j/NjDiTOrViEZvqkeD2W5gxbT99XITlRuJkLIZL2gEYwxV2nWc7rDW5MKy+VFCwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zml+fN6fKTKM7Yn+FvQiXvmz8rSwK0ZC9Zy8oBKDQt0=;
 b=fFcl21gVWdWtRqoyX4k+CCkgpPZu9wqpqdL5mlNJ0bOY3RH/T6g7fgK1K2qdMh3Z4XbIYQwTmF78DAUWl+pL3K82n8Lb0h6YQM7I59mMfbA75vceaSEFSmxA5uPBqpCJ07DiX8pnb0XpiB8TxN+Vfe3EVbAWsVzc4MdidYA1ttk=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2205.namprd11.prod.outlook.com (2603:10b6:301:59::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.19; Wed, 10 Mar
 2021 23:44:21 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Wed, 10 Mar 2021
 23:44:21 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 04/14] ice: Delay netdev
 registration
Thread-Index: AQHXD5EBNTbHOhTmUUeYnODUcSxbxap971Hw
Date: Wed, 10 Mar 2021 23:44:21 +0000
Message-ID: <CO1PR11MB5105FE8E1D7FB8A90ACD0DEAFA919@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81b71cac-0ab7-428c-b599-08d8e41e6deb
x-ms-traffictypediagnostic: MWHPR1101MB2205:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2205BE3DAC9AACA5C3699BB7FA919@MWHPR1101MB2205.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YQjlDrdns9ae3I9brLKhMFo67qfkmZ8UkO0o4hZte1okQWrnLqijgK7I8xOOkp6bEyAcvfNUJTnUdHheNgC0wmInDd+j/vpa/+SkeaA1nwZUG2sHgwlxIvRGwZsREtw1NriGB/6B+hVDRltMLyXih9wBz4sd225fWQPjRavOig6RpFd+WaEY4rI/xC5e9ym+NdtNq3Rdr0Vif3TceIdlngl21QDmhJE3hhQgZr44+4o38eh0bBBV6uBodRKOM8OBG93XQ7O5dgWpj5v8eAtJZ4s1LOqIql/UyLkjOnLf/FUeNE098KJLyoG6fL7ribd9joe332LlxnYehqJNJa/qeg2w3PBS6IIllYsXX+6kqFHba0b8ktTT7YUiYdLFFGVODrM3YUgR631kKXFR9xBQZ5aL345S1aRx4rndYTMfExAZ0l/j7p2kHd7josiAHk1lAuG7KtnhyTuoJZtYQ0VynHt5X2r/ynppbFCG71HybfRZZrPIvKjlI/7WaTmtNKP1TRBf8+ec3oGBLq4y95NCSA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(376002)(136003)(39860400002)(396003)(76116006)(66476007)(33656002)(66446008)(64756008)(66556008)(66946007)(2906002)(55016002)(71200400001)(110136005)(8936002)(7696005)(9686003)(83380400001)(26005)(316002)(186003)(86362001)(53546011)(6506007)(478600001)(8676002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?GVue+AhWdNy9tu3SEsQpeAbRACqh7LvRhc3jY/nXdq/fVFmpcuk2CO9VhCqG?=
 =?us-ascii?Q?kEMS9J5ARmrRKq9QTB93nUq4xpmg3nIU9r+j2glaF17XJ0b0oITKNAD1KUT5?=
 =?us-ascii?Q?LSY8/ubJfSuprmGOUGqOCmzcQ0XT74tKJFVKAbFz7l6LIme6/AjfGw3CQzRb?=
 =?us-ascii?Q?5KPp2G2nTtmfn7inmRfJRV0XL4maa8KX2DmRvFvr2/yDlJStIxkiD0rAOajp?=
 =?us-ascii?Q?N7DhWVAH/f85i7hygIt00FtHddXztpZ/t2bsDiIlrqyUqemOSewMU4u3dUWv?=
 =?us-ascii?Q?X2A+Cd99CqpoTaEbYTx9jwZdnZb0hFi216RDny4HXhqplntBmzXWQH4fP31D?=
 =?us-ascii?Q?59+MKIuh5f6CMQ5lxqU8MMQ/K8cez1fAnxgoItfIu+K6F71wVuEX26PPtgG4?=
 =?us-ascii?Q?W0c/FbxCsa/VjSgdzA2Y9WCaUDlRDpw1G1cOICnj7Anuvn4qeFSb3m7Y75c4?=
 =?us-ascii?Q?GCPHb2YXcWvG8FPiCs77xeuuS9vDnahQVDyGQYN0hGb3r8LnuJon9KpBwBbr?=
 =?us-ascii?Q?nsBGOfMCgZRWUyfxCJ9kaQYmusx0dQEC9c3CIoIaOZ3u+KVNa82q6Id4EcDs?=
 =?us-ascii?Q?8FLZ7c9rgOMscFFRhdQPvQLXmNq48LlqDS3Ma2Ad/iA8bIgI5Hzd0EAg+Cq7?=
 =?us-ascii?Q?gSm0AvzzJcBE81KItEP/Dw5ibKKTYgDkyiJs4YfBrGizYkUSUgPijdW1LiVY?=
 =?us-ascii?Q?pQRoVILDCSqiFYDTLCpu4E4vkZeis9ffIEP8+I1aRbgI1aeq24Zvk6C3omDs?=
 =?us-ascii?Q?qhZJ8Wu1H7KWtdNAbhQ5274gwv+z7NN2v+r3OKFqkCa3NK7J7xopFApwE4Z2?=
 =?us-ascii?Q?1zxkfzeuKbDD7xoSBlx3r6qOLhwyLV6HEZigI5q+ok2q8PH6wOfgdpeHsoR5?=
 =?us-ascii?Q?4bbNaVoj+I9cFTrNLNR/Qps22Z8qUc5yCFTj9KMsCUkGMx3n/HL1O1rYHFg7?=
 =?us-ascii?Q?IA1pgC1HDMYUXTWT36hXlJwSXmNY/aTreqPGtgQmY4zn9NPAE8t6ZipkdiKf?=
 =?us-ascii?Q?9arvgNwu8sv4C0hQMBN6oAZEFljh/aZSxXbJFOn5/re2AqEuAFi/3x0VyUS9?=
 =?us-ascii?Q?Up5QnRyApihjUL6N2RkUH4D6I3eYYmeTb9j+Z6/aXPBzmJcKowZcVtSYmSUm?=
 =?us-ascii?Q?wwA+RUD9dvvJ0mshCcxd9Tcy8WGSxqlCHdjFI7KRTxTo9cZctKDK83N4xjIT?=
 =?us-ascii?Q?veXZcbWFGZY7lJWw9hLfMydVBKZqUPbuf6vpRwVdpjjC3I40sOyEbN1KgfHN?=
 =?us-ascii?Q?eD7lA0FyNoc+lNZ8mKDptkT5C1igAO4sndWhP1Znu/4l7oS1X0shPamc8ew5?=
 =?us-ascii?Q?psmoPItqzt6Unk/3Li2zCJI2?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81b71cac-0ab7-428c-b599-08d8e41e6deb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2021 23:44:21.5727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: afpEqT7gi9jv0ZiMdURSZYyxWvCsfVbsEwQrYNu0+bczKzf7gma7Y9ajKNOxsmYUm38ylLJNq/Fq0XLOSLtIb2sCxeNNEDt1fwd8w/uELZc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2205
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 04/14] ice: Delay netdev
 registration
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
> Sent: Tuesday, March 2, 2021 10:12 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S55 04/14] ice: Delay netdev registration
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Once a netdev is registered, the corresponding network interface can be
> immediately used by userspace utilities (like say NetworkManager).
> This can be problematic if the driver technically isn't fully up yet.
> 
> Move netdev registration to the end of probe, as by this time the driver data
> structures and device will be initialized as expected.
> 
> However, delaying netdev registration causes a failure in the aRFS flow
> where netdev->reg_state == NETREG_REGISTERED condition is checked. It's
> not clear why this check was added to begin with, so remove it.
> Local testing didn't indicate any issues with this change.
> 
> The state bit check in ice_open was put in as a stop-gap measure to prevent
> a premature interface up operation. This is no longer needed, so remove it.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_arfs.c |  6 +-
> drivers/net/ethernet/intel/ice/ice_main.c | 93 +++++++++++------------
>  2 files changed, 47 insertions(+), 52 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
