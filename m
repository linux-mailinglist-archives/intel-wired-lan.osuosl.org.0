Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D57440471
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 22:55:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A32AF4024E;
	Fri, 29 Oct 2021 20:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6_Y_o80kcPD; Fri, 29 Oct 2021 20:55:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC2DD40220;
	Fri, 29 Oct 2021 20:55:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 324771BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21CC640220
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fDpZtF5LT8Hn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 20:55:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 75C4640200
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:55:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="230701416"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="230701416"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 13:55:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="538845920"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga008.fm.intel.com with ESMTP; 29 Oct 2021 13:55:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 13:55:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 13:55:23 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 13:55:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NnPAUh4ugHGjhYdYWWhAUAi6a4TJQyRtKv3dnk1yQkXZqwnYowk8J4jled+sXTU0jiIeL89j/utkV3vHD8277RXzaIs+RtqUVOC5SlCFMmtdYx7rmZG6p4/qh09EgTMjxw++216XBBFZAPhbjUChe6gWCwxHGZt488pFg8fzoaq0YWcZnNoZ6R+uqmu2p/jAv59MqMUS4DayNCmMi27pA8JiI0PoF8ENHGnNOOPh+ohb+N9Ptru4EHSaHLPiuYDB/e0BsqxxASVJpwz4zLLQwoMdRo2/H4kfn43YCV6UpZBEmr1Y9X2RKhwTXvWyvwSjTPeRaxxNhTVl41qIepMHBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ztBokkOR74eFG3QGNJ15bDR5/ibCXOFgQrGlaziT/Bk=;
 b=N0NPLjQZ2sR9dU0DDUiKigtfaM20JDVu8HWKGsIPB7HLWFRRNM0eQ7J2ma423bfkn7JU/GSwToDIqvAgXmWs/H28GikpWQctfNdRl8U2YNxiE7m7hvOaqbs6oQvm4T7grGlHJBGbkL9N9tF+guTj2TRGeZZWK9EkuASshufUUanQsz6RoTrtnVK7j4t7fEr/AodDyVs9au1Ughf9IdAgA/PEmIdtzcGmOc99uldKw28UCZPdWliMnRF/Xs3tEHJ3Qu5ldHvAyEYuHH6s2IQI2xMTm8wUF16sdouRLSu0YCqL2kW19eoHLe94zGqxTQrnuvyxrsWEzCj61RV1HQlA6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ztBokkOR74eFG3QGNJ15bDR5/ibCXOFgQrGlaziT/Bk=;
 b=n/G7TfCW3f22AO6ou2nDaSR6p6zzti2B76TB3U7JT9I6qTp9q4jcp+TJsnUTGkdxWKVaee+uMWw1dYFhrwWJDlXkspN0Z/9AjbwrgH+BtpqK2kxewKXNqNSg9DSDbbI1wXw/AzYzGaDWdAe96SrpRSMxtaa7dJUANV67yD4Y68w=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4302.namprd11.prod.outlook.com (2603:10b6:208:179::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Fri, 29 Oct
 2021 20:55:22 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 20:55:22 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/2] virtchnl: Use the BIT() macro for
 capability/offload flags
Thread-Index: AQHXQ43x7YyW3Qopekq3/mIDGuseSqvrh2Ow
Date: Fri, 29 Oct 2021 20:55:22 +0000
Message-ID: <MN2PR11MB422448D2DF3C335BF08D4AC582879@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210507220911.116361-1-brett.creeley@intel.com>
 <20210507220911.116361-2-brett.creeley@intel.com>
In-Reply-To: <20210507220911.116361-2-brett.creeley@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ee97d299-e3e1-4151-2eb3-08d99b1e6cc0
x-ms-traffictypediagnostic: MN2PR11MB4302:
x-microsoft-antispam-prvs: <MN2PR11MB430204A1A4634415C225CFC082879@MN2PR11MB4302.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c0KO3D9exRL22yJHN36oWj4WzURVptzfHxt0uKtbVQu/k6DpQK4iczhvf/7Gy1CXKrIT9B7zMgpkeTXfVtiUESFP3ki4d+avJyjWKI3r7rMBdEm2gdRijZbDVxBdhidBCfz5s/O0cKSD2JXbktrWY99W8Ey0XgjaCXBsni2KzWaIpT5PYa8O6rsOGbC9Yx+PUwxyFPzq/gTdPTF2S/RJlXhDswB/CZch99AYnqLR0Rj3VIGO+xlwE17VU/aGQftCziZoPP5PSNVKvlRDZ6RzRgfWabtaX3bnEJ/K+vL+TU/qsX0eUgy2QbKDHB+3SwTj/DHYgS9X60KpLAl3MtNF0pL4R7yHrRbpRdA5KP52+bRgWrh5jYsK27DtXCJBCiKgtuoyCFDASC+iF5snuofUtoOdTXB63UozBrczxCrsuJEHcY4AZpI2HgqYyKt2e6oXxKqnKf7DRgQKtVEFV2wz5O0atS7CJhPzAO2bLbHelA+dA3/3FwbNNa3bkHf5JrHEND/Unkm9Ec20xvr6j8QNYHvmiKBMmADrsNcaL9S+PuqzvqEV1G/rMRSqh2bsGjJibkiYjPv1A9H7QE4vDjwnwfi6QR9aLX22tToPjpBdRHVq15JO86rR8J+KclHpe6Gz/prI92ZSZ4TVtxdvFHjxoX9VWO52g+RK1ujPBRr9RAZ23BaR9+UlqCFF6BcCt+sw0uS3KEGAth4nmilguAowgJ3CxDQJn3N7VAEX+ETubqY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7696005)(55016002)(9686003)(6506007)(52536014)(71200400001)(186003)(26005)(53546011)(66946007)(8936002)(2906002)(508600001)(110136005)(76116006)(66476007)(64756008)(66446008)(66556008)(316002)(4744005)(5660300002)(8676002)(83380400001)(38100700002)(122000001)(33656002)(38070700005)(86362001)(82960400001)(115813001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4bKhaDzfd/9oS+kHSKd/tNtb/x9VhQQm3NKXrFPZ2JyP0EbL/3VBk+MX/Qtv?=
 =?us-ascii?Q?naIwrFg97ic/FJ8Wg9jX7p0OPWeEyNRH/nhMYIxFBrb41QZfVcoKx0WJ8VbZ?=
 =?us-ascii?Q?mLPD9KNKtXKZAvoEHuTAngl04a1Fpi9QcbHz9BVcdPl+uKMxZMf2x3yOKBEo?=
 =?us-ascii?Q?WIC55RvQ5Y+XhdVy9x+QNw7ahKIJQy5e50XOfXR5G3olzJ3+5R3JSuFHcLZq?=
 =?us-ascii?Q?pIIblZNGh2MrnkNnGTZO7IyAApMRYu1DBXZHGcmPzScoEcXxRPhfnExWGRiI?=
 =?us-ascii?Q?HkdeE4DyHOUFis6RaxR8h7P8QQf/lfaG5qxPY+OviheTudYIPWfbp/MjvOOl?=
 =?us-ascii?Q?E+NBfbMNS4NTUfL4BwnuagtQrfp49AyPas+1nhD8s9pMPKBRnwLacWrNeXQu?=
 =?us-ascii?Q?R2CIb110oG8equZYEinGBIop2W0JEVfW0BC4YMMl4HQ5vJMKm1mDgR3hggoH?=
 =?us-ascii?Q?DFTSZtOp+3+Q5BFRzhtsZcShRjPZM+fMpRL8Fbbr70h1joi+y2KuV5o20ipU?=
 =?us-ascii?Q?vAfqtJc3HOi9+SxoemOEtzP7v5jq38EPPRdn3Ao3Fhdn7NaZFxB/ME7R1jq+?=
 =?us-ascii?Q?SGLFU+y7L64MBW10SDmx5HkEw4m/dhbEhwT8PybwyA+bY9r5YpzUbOHg3MoN?=
 =?us-ascii?Q?9IAmo8aHlHSPW0r7ivNzW6wa6LaW5nKWWMovvPVzu3ohqCScp60+26iNeW/1?=
 =?us-ascii?Q?jO2CC6nOUEPHWsEOkL+ZZY0/xO61f7apu9D/0BwDS1fAlvhNj9jcYxOLhtYS?=
 =?us-ascii?Q?4AAj0ZVAvdqrhRgckBbE2fakzs9EI3C9nD8g+qTNoCY3zmjFHz7bARGT7lZG?=
 =?us-ascii?Q?EVDK5FsHpZDYds46WnBogSVABbmrndsQOOzS7PiIYRVMxbkeDAi+g2bgf7wL?=
 =?us-ascii?Q?IaRzfCaHK8chd/QdwZHlJo7OkESB4wF5Hv78dn2O5oszIdFx/aavvNYuTPwy?=
 =?us-ascii?Q?DFybKpa31Cs+ka8UglXcXKty12PZaHZVT0+Oq4aQnIXDd4MX7fkcrZSkzXxC?=
 =?us-ascii?Q?t+ZwxDvfLGYziQRAEJKFC2rnifEyjqfJt6CogHSQ5wxZtU5zfJmDqeyYp2EV?=
 =?us-ascii?Q?GyFjXOMuIKFuDnlVxjl3vA7WnXXRWyqvX1JXsAl2eaNBnvb/tBoBAmJT4vdS?=
 =?us-ascii?Q?yr0agVFba5bffk4MKrfQaZex85lD6MkJvlhy0FQTQqG1ITAXXxYvtC/b4TZY?=
 =?us-ascii?Q?ARSdkYgVWJo+dts52DTCYSIQPGT2s/jcYJPUthe/NDy4lbi2sGyF+1rwaW8X?=
 =?us-ascii?Q?CMwhRLPr8XzGPzol4PsdWGwWbakqsKbAVt4AKpIc3uLGLtvDx8f16cTUQvMW?=
 =?us-ascii?Q?n8dT1TlZgNf2nw+2qAuh5QpCWbnie6qmS/TEGR+XvEDJEPY+ZiuUPJZWfb1w?=
 =?us-ascii?Q?nf5IxDXXfkMV5u1zxEkwJ4f0kwUKN/V+cGrADAi74Pajf7gCEOncjTE26AL1?=
 =?us-ascii?Q?5BULojz6YouVax0MuKI18NgXd5HqDGXSeMzNObqoZwJZ57T9oEOM/bVgqvWI?=
 =?us-ascii?Q?mPMI5lvxJ3Zg3dXTeZOl4e03D4LQLN3nxcDJFDHlqFHAm6vxJvWMkzd559pG?=
 =?us-ascii?Q?AwPqxQJjMY/KBee0LeZKvEEVDmIVrWurgLvij1p0It6MSSD8EjQVm3niqgWp?=
 =?us-ascii?Q?wwIcauy0rVEAIJoMfVhc/0EtHdBj5F3J8D7F/9cTDLn6d43w4MFf93xHoBGN?=
 =?us-ascii?Q?XfbMPg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee97d299-e3e1-4151-2eb3-08d99b1e6cc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 20:55:22.4414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tC2l3goOrXMYpLjTIf9RH3k9BZiU72QZ0CkBQiaQjdh6hO5EM5lyRDDPmEzhsWzjQ+BpWwfZQ8rqtHrZ5uQwFpsme4P2VWgx1Pzn1UObZq8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4302
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/2] virtchnl: Use the BIT() macro for
 capability/offload flags
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
> Creeley, Brett
> Sent: Friday, May 7, 2021 3:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 2/2] virtchnl: Use the BIT() macro for
> capability/offload flags
> 
> Currently raw hex values are used to define specific bits for each
> capability/offload in virtchnl.h. Using raw hex values makes it unclear which
> bits are used/available. Fix this by using the BIT() macro so it's immediately
> obvious which bits are used/available.
> 
> Also, move the VIRTCHNL_VF_CAP_ADV_LINK_SPEED define in the correct
> place to line up with the other bit values and add a comment for its purpose.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  include/linux/avf/virtchnl.h | 40 ++++++++++++++++++------------------
>  1 file changed, 20 insertions(+), 20 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
