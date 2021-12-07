Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4941946B6B3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Dec 2021 10:10:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4156B60E54;
	Tue,  7 Dec 2021 09:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TLbAfizPiRrj; Tue,  7 Dec 2021 09:10:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32F9460E24;
	Tue,  7 Dec 2021 09:10:05 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26A371BF326
 for <intel-wired-lan@osuosl.org>; Tue,  7 Dec 2021 09:10:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14E7C41BFE
 for <intel-wired-lan@osuosl.org>; Tue,  7 Dec 2021 09:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id movrDYBl4PAR for <intel-wired-lan@osuosl.org>;
 Tue,  7 Dec 2021 09:09:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B13B841BFB
 for <intel-wired-lan@osuosl.org>; Tue,  7 Dec 2021 09:09:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="235047832"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="235047832"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 01:09:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="748680855"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 07 Dec 2021 01:09:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 01:09:57 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 7 Dec 2021 01:09:57 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 7 Dec 2021 01:09:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RP7QtxZdploz2EUjWjNkE88n9tcOC4bU9fDR5epaadbLOD2tybeTffrfYXN5mjaF9X67zrv5+MxVUMre1/rcfA8vRppCjROktDUsWLtCxBhQ/ZySqsSs6CObWb3C1yKGuFHVCLL/Gnk68g4s+C0gXKYSc2Gp0aJLPzA2qoW25Or4NqfIhjSXhCMysIMqbftDCOM1uGjG8MXXBhH8VnX9QCb/Xsr4EwQ2ox+PlTlXHvGojFNnEgP5GD/IzeIH3FefNRPwEcvH7hjkRSVz1XdE4nO0y6qDpZ4lnGwX7BLOBC/WoRSYVBekxmAZDAojfsBpjZ627OZaBhttuxLA008LQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PoapGeoLumIAlTxo1QyZpuGfjMDrlDf9mbBF+klhMoI=;
 b=EmjDK1ob9r+49NyzRulbyuK9Y8pHDSa3XJgpM9uPlh25Nf1ypMgGHTY7m1Ws542GFVAJ8KK2eOT8ic5ddbjFRQZY3sxvgNkd6SmqBbYcU+Y++T7ALhzaESWcz6h/BP9DRAfwC3ud6FjnIBoYpk3TTxnx6w9itvIe7Uw01rZlCGxo3XVysxJIYbi05B4mrfJPI7ketWkw0wnIEiwGzGqDMKJ7GLwOL8J6ZfCZwacewboJCTY2t42cxEmAuojPkaUbeixs9jxzSZV93izhKQgXFRAZ5i29mRbegi3nApX3fl4u4bOOTRsj5dU4FMtrRyYTxEI3KhWvPBM5pgGK9OFwrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PoapGeoLumIAlTxo1QyZpuGfjMDrlDf9mbBF+klhMoI=;
 b=VkTmj7a6KNpWt7gRLM1XgbIxhLl067X9AeMTonnB0MKU/4TmK4O6+SpgmIXTDj5u+VXEUOPcWKvIZtzh2zPBDryY96kIy1AuZSpyOBXyx6mBllTbRGiKgxAB4WiO5dwDko0s8Wygxc+x3KX88aUKsJ67W7PONaesC+II0L2wJo4=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1950.namprd11.prod.outlook.com (2603:10b6:300:112::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Tue, 7 Dec
 2021 09:09:55 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898%6]) with mapi id 15.20.4755.021; Tue, 7 Dec 2021
 09:09:55 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix choosing udp header type
Thread-Index: AQHX2tRtDeLsbSgntE6QkuRJ2lXXs6wm3mdA
Date: Tue, 7 Dec 2021 09:09:55 +0000
Message-ID: <MW3PR11MB4554BA2A155AD38D882B72299C6E9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211116102426.11675-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20211116102426.11675-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9e3f054-ad7b-41ea-09ea-08d9b961562d
x-ms-traffictypediagnostic: MWHPR11MB1950:EE_
x-microsoft-antispam-prvs: <MWHPR11MB1950E2D372A21A846CDC2FD89C6E9@MWHPR11MB1950.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z4v+slKKoRCFNAFVvsFnc8gXVdAFDeVfUe4f+6jq4NEhma3qCWznWeNZMdE2wYbNQTCyyzppDC0L/tqZrYbDQ6PRtHG1sFONTBVFAk6k330BQX+h64sqzMNr6V9SqLUgauOy/ih597kuU+AwBYdsxXaK/JaE9Vh1SZSXOTn6fxTtO2t8jDTb7nj167b30SlK8Z6eAaQCmbaIUJu7Ntxr/8tlbhcf2F7W5Tyl9U8moehEbvlOZ+3UQHA70E8zu23Txgv8VD7mrgK8HEcWUWdpNBJPMZAFfwVwKmYigZoZdoUUJyN5x5XAqT2zxbmmoVrJGurIOsbdPGSqFU8olb77RA5NKdFOQsg7/nwHBH7ltXeU5jlAjHbDJU714iLNpBSLzwWukI17qrxJ6IAYp6E3par672X4ahXrKNDxoZndpQGXCH5RQSnqsqdQsRP3k3i+XHZoWrQxSq9A6v63tkoRYnSUGTLj658ZkRG+X5PV5lePWZDD4nfADA2JfrCknLRbXIasZb3gyLS04fmHBUG6c7fvOGoZjryGMDH6IMLGFJG22S2LS9FcgABXFMi1xepedaxHx/gek4Dmo3gajZ44PWtH3Og2WozvHyJmORRbebby4Cvs0n5P4Uolye0cHV0+ysfwqRTYAff2/pMQmTMf1brcGvWalY3ANLN7b6Cm8FrBEHgymtmu0fhLfCrvimWKc+b9EuT6ZUCV4K2Cp0h6Ng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(7696005)(122000001)(83380400001)(33656002)(2906002)(38070700005)(82960400001)(8936002)(8676002)(508600001)(6506007)(55016003)(5660300002)(86362001)(316002)(66946007)(110136005)(52536014)(9686003)(71200400001)(66446008)(66556008)(64756008)(76116006)(26005)(186003)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?INGNjTqp6G48kaMoiQ0Nfl4UBs1KKg1nCMmRd4/f8EP1KuEyfcBXO+isB0Jo?=
 =?us-ascii?Q?wdRmC9OCR4RJnETvG/dWmsaGr40PBMJd5PxEymDwkjA1cjPP2N5TL4+eGDzl?=
 =?us-ascii?Q?BiWfw/OBx8c0M0LHjOWBBDknQweJhCEX+SjYyyAi6vici8wDky94uLPqOXyq?=
 =?us-ascii?Q?F1+RnRy+4rLxBnTJxUhBvj1Jgi1dEmCdFJU42ePe1blwWlpT0wpKHRLngY2U?=
 =?us-ascii?Q?9VjS+F93IJXEENebEi9JP6KY3eKflmxxxxjJDo1MyY+jsOElvNSY9AMNKmzV?=
 =?us-ascii?Q?dYQ3u2Ac1aJSDRF2FGJox2gbJanaJt1KHEjtKCj44Em/hmvZmyfRfRtllVKn?=
 =?us-ascii?Q?bhV6jwkFzVixpcz4T04oVgKOWthnnrxP+ilgSAN/YSb6y9ubJpouSg6krP4T?=
 =?us-ascii?Q?pxCkVoay0TC9C5qN/5X0bSqCydL5miALPF87dAqlEs34C7iR/ECvtGUKdUyS?=
 =?us-ascii?Q?uc+IAewr5nSjxiiNdDY34s1uDPAhtKxz/vz6lbAcNzNrfMqrQLtxwYwoHOiX?=
 =?us-ascii?Q?tpGxvrF+Bse/d0BogHIDForz/YgPK1/fajGyCSJkMymjxZC3PSC287lgDXsg?=
 =?us-ascii?Q?uob7Z45FzS/ThhOKDwJtpfc5+bghy/VDFIHAaxNnnTbnQyY2vzb/a9o6RLC6?=
 =?us-ascii?Q?qYg5S60k9VslfCeWsm7akd8c79g94nByhFGU1pJeFDAaFL28qwm7UYFFm/yk?=
 =?us-ascii?Q?AYFlLa1d49u8agAFYYqhK4GITz18e/NIIHUKsBTxAijn7ex2YcuYKZD5qJEr?=
 =?us-ascii?Q?nQeFSBMOcGdz9lEJvFflXZSpmWKoRQhkqp4SG/bcb1/koNw6yC8oYoKehXVJ?=
 =?us-ascii?Q?svT6WjKdhy4oGEkXKw3IMIVV3WTUYWHVNndSZYKVZK/EjL1j+7aLhWc+GJgn?=
 =?us-ascii?Q?gTHvmPqSHAn3/hW5AdZU6jQ0qM3ANJNjxOV/84Mr9MBykfk/g1cE558TaUmW?=
 =?us-ascii?Q?z9pHVN+vlgxX0iB3YnbstxzsZFfouBg/EKlzpHXH4GMIHtYxSaZ3spLOSsPr?=
 =?us-ascii?Q?F4FHXRtgD2X/42QyqahJTU4WXAaxwJUewxNDW3yX7lcas+cDhlG67NrMq1JT?=
 =?us-ascii?Q?K4tUKm7kH/iO5krYhOVAFqad00g8/9Nd523byajrN/dEaPxp17++Wew+GM4x?=
 =?us-ascii?Q?dfh+HR7U5sJa1/wBi4f5nSiqwT4ypHODxtVsQUO8Ff1hyjG03berzbfj1zj7?=
 =?us-ascii?Q?h43D2PtKtRaB51nupt47E1Vg+FbXa7bMID7zVq7HZ3BnKAazq03ncycqi8ws?=
 =?us-ascii?Q?5/RW4qKFYSqoxB6Q8Tnc+3T5jCWilf4Vz/AVG99OjN8oIImdgtShrIXhrFqG?=
 =?us-ascii?Q?pp3+8cLLYTQlJq11zUsyiHScI+/emIEAmpz0TckdIwwW7qNtXv82WBkI+oFC?=
 =?us-ascii?Q?RqRAdLwnRZAL+4LrG2B60rgq4GnbTUuaxLCaLWQNXqsNZK89zJHON4/bNrW0?=
 =?us-ascii?Q?EZ9cmk1sn7i0YlJX3CFuVvTprkNWHblPENEnaMqZ+/cmjH7uYr+Z8Yhst5rG?=
 =?us-ascii?Q?yPpx2kW+AlTdbIejNTJFzlwCSZa/+HcPEJNZtMA6ePVckQguw/Y0U2p1q8+n?=
 =?us-ascii?Q?PrcSbfv/sDG8XvvR3wMPkH0xnrVCoMA3CP6211nAHcLo2yFXMfvUksk8Ncbt?=
 =?us-ascii?Q?nARGxs2GvCg1DcfLJEC47xAnp0l/Zm6C7D+afp6OmMPaQlGQvWlwWJ9FVcfC?=
 =?us-ascii?Q?58vV4w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9e3f054-ad7b-41ea-09ea-08d9b961562d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2021 09:09:55.7548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lzpj2w+8x4ukdtfW9xmMPQPzRygcSOKLR5pHMXjIiPGm6404hnv+m2Pp74Ve3IeMqER2P00mDOxGPPwc0EYetMG5o/crDsUlI/3dxHB8/Sw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1950
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix choosing udp header type
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
>Michal Swiatkowski
>Sent: Tuesday, November 16, 2021 3:54 PM
>To: intel-wired-lan@osuosl.org
>Subject: [Intel-wired-lan] [PATCH net] ice: fix choosing udp header type
>
>In tunnels packet there can be two UDP headers:
>- outer which for hw should be mark as ICE_UDP_OF
>- inner which for hw should be mark as ICE_UDP_ILOS or as ICE_TCP_IL if
>  inner header is of TCP type
>
>In none tunnels packet header can be:
>- UDP, which for hw should be mark as ICE_UDP_ILOS
>- TCP, which for hw should be mark as ICE_TCP_IL
>
>Change incorrect ICE_UDP_OF for none tunnel packets to ICE_UDP_ILOS.
>ICE_UDP_OF is incorrect for none tunnel packets and setting it leads to error
>from hw while adding this kind of recipe.
>
>In summary, for tunnel outer port type should always be set to ICE_UDP_OF,
>for none tunnel outer and tunnel inner it should always be set to
>ICE_UDP_ILOS.
>
>Fixes: 9e300987d4a81 ("ice: VXLAN and Geneve TC support")
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_tc_lib.c | 26 ++++++++-------------
> 1 file changed, 10 insertions(+), 16 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
