Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7994B826799
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jan 2024 05:40:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 912EC416A4;
	Mon,  8 Jan 2024 04:40:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 912EC416A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704688852;
	bh=I7QsjwBtBKSFjaNLLGrF5kN6XqfWUcv262Q0pKCqy5M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fgA5g4p+VYfeOWmQ6LeooXOEYf047nVC7pE/UI3fiVQHeiP3kKSVDktflYzTIFdDM
	 WqSMz9zhdhn08JWOdFk71h0l0cpyYuBI/URUZyzPrCtUbS+PsS3MX2Rf8MqrW6Xctk
	 s0PyIplgGlRLsvWskcEh3c1AlZ5WfyBCPScl1Ul+0j7+YDctiv+lEKj4RSDAG0i3vH
	 jK1vQBg7wbLg/9D8CVIpm9gUJWy6jCqdd6LLooiCVyN0KCBihoXj4zzSY4jHhRaw8r
	 a+esmrZXR6joo6Ul0TNDdYN1sTvX98ZywH9om2ZTWMVqPvj/lLqkzpkiqfxUl1QHKR
	 8lSy9C6SETF9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWkLD7ATjq8r; Mon,  8 Jan 2024 04:40:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1C8441696;
	Mon,  8 Jan 2024 04:40:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1C8441696
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A0301BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 04:40:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4966941696
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 04:40:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4966941696
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z0WzgmIYJ9ya for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jan 2024 04:40:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6DFFE410E3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 04:40:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DFFE410E3
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="394961912"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="394961912"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2024 20:40:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="23049344"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2024 20:40:45 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Jan 2024 20:40:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Jan 2024 20:40:41 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Jan 2024 20:40:41 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Jan 2024 20:40:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kJSC/Knls1Tg2r2sWC6kXhMSeygrsaQpqRZrOVEy4nSsaO88SOI3+N8NrQnQ1NnXfo9qGMxU2019DIDrmXXvNGVr93tqXBouKjUCk50rN7JdQZPLb4eYr3B2X88lrCQlx9lgb/xhVXWvtxoIfbTMvjaQcc17wFdM/PXJelI29+aRBbBOWx2HHK8Vsak8r7exJZgnPF1BA8KYdepRQQNjC3Yr3pQLNM5YcwiMxmD6E4BOJ1j/+aBApXuX5T3todd6Y6xGX8o2oaaMNZYdS8FqEANTOjVeH3Pgc6KSVZd7p8ZMhvrOCRpI4wleL4cxjewL/cOECrX+BHKEz3/XQ6Ej0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I7QsjwBtBKSFjaNLLGrF5kN6XqfWUcv262Q0pKCqy5M=;
 b=OcROyHzWzyeBViZTj1gV3xp5SLz4lOd4Yl9nvJHp/SCxsAc+so/2z744HNA+q/5H5HIfvTnwDMi2PAVNUbpUYnDWtBEfsm4ipzioxnAtibllzwz6dVkQyCJZgBJgN25AVuoOJQ3v1a98HbpI+Tu6anf+a86EVblY0bL4FBrJiUgw8gR6JOkwyRWo/BreY5/PJNtRRAdkGesC5bUkxCvSHkfYxNV+0Izr5KfejjSv4J2Ns0wDEHvzlo7f6lbSQpz8OjbM0icaeIsyYhhkWzqXs6jnuhfGc50dJ95PeZsroB4tffDwzzK171beWIkj5cAJp/Wj+GSebnFgTEOzC0DbtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA0PR11MB8354.namprd11.prod.outlook.com (2603:10b6:208:48c::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 04:40:37 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::159c:7c99:e99e:a3b0]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::159c:7c99:e99e:a3b0%7]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 04:40:37 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add a new counter for
 Rx EIPE errors
Thread-Index: AQHaPk5Li4fclNs1HkKrzPO7YP7ldrDPXB7A
Date: Mon, 8 Jan 2024 04:40:37 +0000
Message-ID: <CYYPR11MB842918A887D780F8FCB805FBBD6B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240103141115.9509-1-jan.sokolowski@intel.com>
In-Reply-To: <20240103141115.9509-1-jan.sokolowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA0PR11MB8354:EE_
x-ms-office365-filtering-correlation-id: 438d8f8a-b770-4874-820a-08dc1003f5dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OnlCQ8F2WnPTyvmcurpCLJCX8ASslY9QCYF2R8aR57EFJkqvrdmhUNmjG2WvbCetnCgLw+staaTmfj5jZNgJiPUediSJT/juX7CAcCaMtzAtNh60mCu23b/mWFEx9+dImnOXoxF9Hc69runPCbPjA5Hf6Gkb4KGhBIX7qxUjDszHmxu37/S3KrONN9OqKE1ziqK7Ew53chiguPeVbYDHiPg45Yux4ZwA3pgBEYpV2kGJ5132KuCna4I9qQ3on3fU1S8MW1rY3YS8HOu3DYJLtK9iVDOUbOoWtuO12qU4ToRsEQwjd61hLOJSIzscYiKaz6E7rkgOCSYytVpIpwOEL9AsxklkMSlXo/eqLyblptRKPrgonawAu8C1PT3HbTELCZpEuh6G315Niql0cukGVCFZNNOYbZeH5B3vw1XlREsZGib12k92IBg4529f+EVfjdz3/6qSbqwlrBlUWNudjKRcwGwzKdw0/CKEyG5tRutFanNzw+6hY+jRtfmwRyMQS+fX9UTejfjT5EigcRu2MD/mfAg1Pgy8VFcXxdkY5+OX4i/FHbLCZhhV8tBOKQQ6yzltWZm2e/wuCECbtd9VwT4VzmoY6czXkYTCxFJ1t40QHnrkL8Gw/ivNlSUv9QpV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(136003)(366004)(346002)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(41300700001)(55016003)(53546011)(6506007)(33656002)(7696005)(83380400001)(71200400001)(38070700009)(76116006)(66946007)(2906002)(64756008)(66446008)(66476007)(66556008)(110136005)(54906003)(316002)(38100700002)(122000001)(26005)(478600001)(9686003)(55236004)(107886003)(82960400001)(86362001)(5660300002)(8936002)(4326008)(8676002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1WhJYWBSwVrb4H7DlUwaHxVnXFB4u/NNXkmPnR7KL8TwWqqOafoIu9AQ6FdB?=
 =?us-ascii?Q?tq7q19pk5lC9f4luAXiwgkAieVIFsSIq+D/hwSWM9A1OgdoIi34doISYpWoK?=
 =?us-ascii?Q?2vxI9QdMbBYNjFK+fiD0W8Hc35kDXK/lAQOQBPqZ7lhu7FATZ9BEGSpoZbu+?=
 =?us-ascii?Q?Ov2kgnxa3hxIRPyxw4PqbEpnUzF/FaPlkBkQfOmZDfTy14dANGf4cdTDUM0Z?=
 =?us-ascii?Q?+hSxY3OukA8YOCyhLhc4vDVfhg6QWyuUy1i6VrqBftWqMIR6HvN5ZpKnF8e2?=
 =?us-ascii?Q?+ronP9j/en4RZYhLeC2RDHIpRA3pc5lNB1LEpMORi+//rMXdjbd0pz//lyHe?=
 =?us-ascii?Q?diisqCzf+FFcJN1Dw4NICSIp6P20/Isip7j6Vw5s/4Scw33v6fnXgVA2bncK?=
 =?us-ascii?Q?Zd7Zmu6154HewwV6wx3RFF8X94xgRGACQLT4zGwGGBXvt0zdOEnIlZDZLy/P?=
 =?us-ascii?Q?G0AUYAI20y8gy817Pw3LT2p2vIoffGptE2spGC2abu9KPuHJIysIb3yNdnlo?=
 =?us-ascii?Q?xa/2mW2z4PkNzEJB2nCEqUh9cVh/I4mi5e1xYd3UblhRcLtDdp3HbAAc+wGd?=
 =?us-ascii?Q?W5Q7CvxJD2EnG4C+hS56jYhCJn3nanc4NdI5ig99yKuk/gGvZc7qUYTbTCnH?=
 =?us-ascii?Q?wlA5ElK5x9N0x3+MVe6AiCSXuBWKuLdEtPZ5ph++ui7D8sO+AR8FnKSMcJfs?=
 =?us-ascii?Q?4mPN7B1DhViFiwUXSruo4msAYDRE/kHnWMzoEt08A7nvVjiI1Doa8+3845yI?=
 =?us-ascii?Q?y5lyDYmqC7UyNfG6jT373pbhLYtN/zRt52h+R4GZxMG8syQ8VHbbiVMIxuRs?=
 =?us-ascii?Q?5hrjo3/RC60S4E+fa6r9EwFj8GGs76dLoXElGoSysgI80vDvqufxi3YS4YWj?=
 =?us-ascii?Q?KiANaRz8zWVCHtEZ/4weMgrgGC9D4jHmyV+ARP0SMJbtS6yMA1gsPYXktm3S?=
 =?us-ascii?Q?XARS2wu//JUVaJOF+hsn71etWeveav3eqkhKVRIthfEVF+2pg7hx+mhnFhM2?=
 =?us-ascii?Q?5ZiEzz/vM5VNPTlSP3F+5sP3oB41r0LKwxpm5JD3ZE1/y9lhoPwBNvW7zXhY?=
 =?us-ascii?Q?NoVnNNMGf7gyBSc94EyuJgmtoW4tJFavu/H11GOsuR9StMsfVzllGt1tNIVA?=
 =?us-ascii?Q?XoJTmmmNErJlM/QQNw1yhfQ8OpELwkycQawe8Jt9+Q3kmSKEo6gUi1gHN41z?=
 =?us-ascii?Q?RjbREA7i9OZRj7bd4FJOOSOW9gQ9jaCQhjSlhM3TRKR6AOhjNmbOSFDsIEjG?=
 =?us-ascii?Q?AOy6Sr6Z836yLYNXzyxUqbEJfokyo/N4IqXgCnpvhqwj4DHSl+7xnYG0EW5N?=
 =?us-ascii?Q?+chMCaff+zrcdsRi7EoWRjRCpf7OTxI6QeLfdI+f+fsJxhuxL0+X4gddpN4X?=
 =?us-ascii?Q?kJfOuwsggShAd/6EO+2wG0BXN6CccWohXOYw78/uoqsx/BJPkisU0yP5683j?=
 =?us-ascii?Q?loFTmFnVelZVCAbTXFJ5MjkMbpqSNARoLeXd7l5+CPr++q0RUfHwztIoGL2K?=
 =?us-ascii?Q?edMeitgM2Ytznb9pVS1FssjlR7mNyKj9JFHMGIRWmrEdlTRmcK7PUqeACsK6?=
 =?us-ascii?Q?/ii7hIoNSrbO/Mq0tUsLTv4mlJmbEj5AyKisxN619krOBkIc5f9V1qaLIGAn?=
 =?us-ascii?Q?nA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 438d8f8a-b770-4874-820a-08dc1003f5dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2024 04:40:37.5359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5n59mC4RGJPiTcGA/ixVRrSlP65+YoHqIgA26KCaTUKnTqxi9SjGtfHHNHNwx5mb4cmYrlWcZFyyI97XGN5ekc0InvIIfCulXd7s3KI8T9tEFIbYXVykFdv8pUa3l0vC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8354
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704688845; x=1736224845;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YBZ85xsM6sXg7usJRZeV+enc95lrZa/mAsMrEgWYpow=;
 b=ZvBzMohKmqzFq/fPmhzv04rlzP+S1SXNOisMP/HFcNwINeeb/sA8mgvQ
 x9PGn/bi4fWSFbO6p6da3oBYeaksU1jKGwNfSj4e6mI4X+DSFYptyouvG
 6a3lPydK9FNm4hz22JtLjG8YvHrQAP1OEGvzjkL3u5ab9zvci+UbVv+BM
 gP3oq+DnVrUX9TJsEHf0db3H9SsMIE+f+KeqGFlsEII8Z6JACNnU9wLW7
 /HkxSSMxhcT6Ka24r9BpHHjPY7li9ydoXQ+T32mvdcRoSqymlGEr6ZQKv
 tXFs0upYa+E5uIABPUgSSunLaiF/aJTQ74FUF9BIqE28Fc3lglNJI5xNc
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZvBzMohK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add a new counter
 for Rx EIPE errors
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
Cc: Aniruddha Paul <aniruddha.paul@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Sokolowski,
 Jan" <jan.sokolowski@intel.com>, "Glaza, Jan" <jan.glaza@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
an Sokolowski
> Sent: Wednesday, January 3, 2024 7:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Sokolowski, Jan <jan.sokolowski@intel.com>; K=
itszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Glaza, Jan <jan.glaza@in=
tel.com>; Aniruddha Paul <aniruddha.paul@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add a new counter for=
 Rx EIPE errors
>
> From: Aniruddha Paul <aniruddha.paul@intel.com>
>
> HW incorrectly reports EIPE errors on encapsulated packets
> with L2 padding inside inner packet. HW shows outer UDP/IPV4
> packet checksum errors as part of the EIPE flags of the
> Rx descriptor. These are reported only if checksum offload
> is enabled and L3/L4 parsed flag is valid in Rx descriptor.
>
> When that error is reported by HW, we don't act on it
> instead of incrementing main Rx errors statistic as it
> would normally happen.
>
> Add a new statistic to count these errors since we still want
> to print them.
>
> Signed-off-by: Aniruddha Paul <aniruddha.paul@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          | 1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 1 +
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 8 ++++++--
>  3 files changed, 8 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

