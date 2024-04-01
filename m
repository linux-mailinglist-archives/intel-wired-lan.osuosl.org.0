Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8C9893B38
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Apr 2024 15:08:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3699B40578;
	Mon,  1 Apr 2024 13:08:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iSWnO_EbXKlH; Mon,  1 Apr 2024 13:08:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29A4540181
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711976886;
	bh=DMi6cFe+Bw3c2d1jpqB0z5jNQfQGpR1D2Au4aXsVA50=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Oz2F8HApgjD67oZnEeU070QJtJTJ4DXB1VPh4WXZDhCVdSNjLuGm0zFb5GBco2g3
	 hsgHFY/cgckfWbrEUm7+AaE0Nx3tAzed2TOr811rMUYqiGqtr3zxTopv5yOnSpVRyU
	 9yJ+/lKewZnCeChPLcpf+4hrXfMoFBjlYNhwBdFpo/xHqXIEm/yGMb6WD8Kmc7PtPV
	 Wspwvq/zi05DoeMwDwDeSxNob8WcMD/xBAVzW1NBewP+quvU9oFSDZH4FvPiVIlRg4
	 T4Mg4eU7erlUyS+6fNWrgCP/IZcyCvvRi73rZSyUh9gXwmnWKhiV2AY7JBpgDs3BrW
	 0y3xy42Rjt/Qw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 29A4540181;
	Mon,  1 Apr 2024 13:08:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C81221BF232
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Apr 2024 13:08:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD28A40298
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Apr 2024 13:08:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LfhAsCDyeXx6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Apr 2024 13:08:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 32B1A40181
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32B1A40181
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32B1A40181
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Apr 2024 13:08:01 +0000 (UTC)
X-CSE-ConnectionGUID: 9RfJNkLLQXigGOLhub5O1w==
X-CSE-MsgGUID: wwSp2flpS12WgJGNlej0sQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="10923916"
X-IronPort-AV: E=Sophos;i="6.07,172,1708416000"; d="scan'208";a="10923916"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 06:08:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,172,1708416000"; d="scan'208";a="22373239"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 06:08:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 06:07:59 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 06:07:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 06:07:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 06:07:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CeAUqOCVZ+moTFW103O7fEyG3Hg/cx6so/UPJevP0NkwvmZUEgv8E3pWygw7FqjElV8KB//xpu8BluKvG1b9VQhJFCumjRVjBaFmdk9rTJKduK7xEaho51nYytZxjIdW36uBKxaf5Ik+zrqyMzVXZ26NmmC9HtCBcpVtKf4zRZzvZPr8JR7x8rToI9DqGMBX3acvkbba2IMGv5EkQDhDWWGcHyC6EaOtAeAjGHoltplFDBlyCbWSusoNBRecZHlHz3ggVyuFZCuUI4eSZ3dvbQbiUKkOmGqDVJ3GrEufmtBNO54PnvV8Ptf2lRE/BQQ9Sm0bvzL06AQV0QX8hINzTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DMi6cFe+Bw3c2d1jpqB0z5jNQfQGpR1D2Au4aXsVA50=;
 b=f3KD7oXtucG90lLHO/pT2yd/8K6vzkNmo9Xdc7zk4izFcijMgildLV705ffn0l9qvjRoYpF+BeEhK3/XN61WpSF7VlhS7aPlrkRXhMX1WRgaIX136B82QsD+pwY/A+dsCoyL1UVo7bAd0ZywDuU9/ZIB0tjK73JMRVVNBmhrHfOksSkTkJDphMvb+HptDtIqxOpu3TSel7tOpspEqyslCtVy+NvEX6JQUilEeyl9rObzYzOvknLYjee3rVwaRru+n7ESzhHU4lWJZZ0k88oKIL61mCV6Y9xUGSKMYafd7ldhmf8LuQIvy87V5tcHz9owm2ALKwcB3/vicKEWAhLULw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by SJ1PR11MB6131.namprd11.prod.outlook.com (2603:10b6:a03:45e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.20; Mon, 1 Apr
 2024 13:07:56 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6a93:4191:4aa3:6f7d]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6a93:4191:4aa3:6f7d%4]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 13:07:56 +0000
From: "D, Lakshmi Sowjanya" <lakshmi.sowjanya.d@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>, "jstultz@google.com"
 <jstultz@google.com>, "giometti@enneenne.com" <giometti@enneenne.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v5 02/11] timekeeping: Add function to convert realtime
 to base clock
Thread-Index: AQHaef5Bjihn85FGzE6EBTZu2xn8QrFCSw0AgBErO+A=
Date: Mon, 1 Apr 2024 13:07:56 +0000
Message-ID: <CY8PR11MB736402AC980408384A213960C43F2@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
 <20240319130547.4195-3-lakshmi.sowjanya.d@intel.com> <87le6bhc0t.ffs@tglx>
In-Reply-To: <87le6bhc0t.ffs@tglx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|SJ1PR11MB6131:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xS8BuNYW7RmJVz04HAhm2KU30oMhx1H0eypI3HnvBazQisNMCmJsAFP1vXvBjJVAfJfbDT3PWtEA3Vz0LymaD/lnpcAyShqcCQDdYY23pJiqmUzp0ZX0WFGn3RYlxTWzI14dxANNoSd2CpIBV3n9GWIJrUM0s60mrm7NtR1kYHpMhLmRIoNLZeWqXU7tpcX13U9wH8QQU/+m5KK3vj8DIHdwMQMd70qpQcgGclgNQwFpKVW8HI9ArVzPeUv17oQ9mJEQhg3cLVbXjsfQv99gYG30ZYk0tjdZwSrBOTm/zUeEaA1i0vVkkC8F8rG+oyVgAd+Y97CopRQJdqeBph/d8wVCiU8Q+n9br9B6+FpcKTnJ/USs3Xg9xW5phMZqmWNHL8x2Nzkz7yYZVjQhIuyWUzd+oaqG6cDboE+gv+T0JnzGtDd35d5S5w/KX08NwND7PL5EpFXm9W8ayyDxK4dSxZJC9XBRwNDkgbdf41CI4Mu+/gtYXnlOk2bX6BuDEI0bEKlNwJv6EXNyiR3KT274qYVN2QezH41zulNYKY2tVPEayU/VgTMpA47LD7DEqn/zyxJFNHrpi/xzRTcX/+Lz10QJoSB5onKwqQ50eLxva39I6pOA/cgoqZGe1zRCgiRSO9zjEHkHGnmkDTSNC0cvDW/pn7BwmYvjsFXKQssWFdI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(7416005)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dcJ9dT2VPI7ZTp3iMRK0/RXvUlboM6zrVYxCYZIAmgtiUYPaXKi6b6y1w4uz?=
 =?us-ascii?Q?qLeB805pnowAHgU6BVd1cY34aucuFSv4Ua2nFN9+Ikm8XqIjbignKPLK3hHc?=
 =?us-ascii?Q?PIJfU5LE5vmxAYk4+hW0NL8gFyd4jZ31NE+e2zp/hu1FibkvyvVZc5iavU3O?=
 =?us-ascii?Q?+jph27MQB3kvfqN22HZDFmklOvAV/PhIZuAgYPO7lyYSnRVqj74N1CN6ncs9?=
 =?us-ascii?Q?Y8cQ8eRH0jOn6cDv0mzplIy9NeT/KSxetNVu7np5NOOFnfwzrGlYk4G/wZtV?=
 =?us-ascii?Q?ic566cVq6hhpFScmbgn2zbtkH0izzPNH9i8EIASx1SW99MSBPhIEwHQ+eRWF?=
 =?us-ascii?Q?cPR1rwcBDkmzB0wYhHNCzjRoJjIULOx7xTosZA8FsBABwzJbDbYWJ43u3kL8?=
 =?us-ascii?Q?8RdeY/R/fCr9vf6vwm4qGI7a9bJNrdPQnHJ676aj24nOH+AYdtWOpxrxhKJw?=
 =?us-ascii?Q?OO82Dhesbl+7uy3Sfa5kOuLPmOBHWr5GtbXzbu6Pq6rPl/7fRxalI7iTg89f?=
 =?us-ascii?Q?eoDddcu3mx7T8qgtM+pPOy422SYIG5wrLnJhbe8DUMR4H572m2+EtlNuX8pf?=
 =?us-ascii?Q?WJjP7exS187a5PSjkbzWD8jXqhCCdKh2WtN19it2yt6SckVwodUjRihbrhxK?=
 =?us-ascii?Q?TWoTBkr61/PVyTON/aonIN+/3bGR5XCtnLi9c/I761Vk5NJtVCsS4tcL8x74?=
 =?us-ascii?Q?yULPCQxL36kjkyMKpzchakx0KV+7cggwYsfgWI0ljaMG4DTweWzMbAkKq5mg?=
 =?us-ascii?Q?A51D83HRkr+ZJBVErJe+dIMiTAh19dffGKtR17U6aB7dU4/+z3pDNgRPnB33?=
 =?us-ascii?Q?dtSsaQlD9UxQPcqJXyt0KAi1IB0pCW3k02LVEtPuIB38D+12MmmXviHr3qtR?=
 =?us-ascii?Q?i+ewcZsn+ew9f5hVchjptZsEWqk4GML7riSvFKFmp0fBxru9I03FCirZ8/vO?=
 =?us-ascii?Q?YJQNaRhMRNOqhaO90IsShX9aDWzOkfm+52Xn5qz9m0AlFIOUxqls2K4nKNnw?=
 =?us-ascii?Q?UZK1uFLVyZCUTKaqZDReopyp4WtIkMeCEC0KqIu5mVyw7qJVbID98lHICzAd?=
 =?us-ascii?Q?8I/AmMEuvGEvZ9a4JoA/ytpDUquQkKrLcR9tAUqh8/uMVgYNGSKh1kshGNKl?=
 =?us-ascii?Q?75tlXJWlHcx7GpzvjYhGRsGc4VleBKljzXveck++YryNS8dUcERuiMN6mjo3?=
 =?us-ascii?Q?T1Oo98RAhdrTNxNb39FGQPXBf5RWNqj7RP6qYq+tKxd+J6y0XD6sc6zBFJVd?=
 =?us-ascii?Q?9JU/WfVhf2tZJHSM6guPzzUm0GFNzRpNj3wF8ORt1A7++HPU3TgcEDTE6hcp?=
 =?us-ascii?Q?0j3mTZd7l+8ASkckBOfgbjWL7xXjS/HRm3GjYO82Dftx2V5yHrzeLjX/CiLu?=
 =?us-ascii?Q?PxnoUDpn1hO+1PteWxmvV/8VEC6sW4vBQol7LTzbgQxqBFrCU3FosRuYaZyF?=
 =?us-ascii?Q?f8TQryeXluiubYKAr/z6yytCiNhuNGrZjpdQ0I0cVZVL86uOFowiZSED2Whl?=
 =?us-ascii?Q?AbXZXjSQOSs/E1ovZsXL34Ls5XWnAV+d/MStIbwdreOyixBeDnaXzFCpI4Z7?=
 =?us-ascii?Q?NZjiM1qJps6YJKR35LGDJJPdFoWa5kBdFXM6qAQSSmvuRwB5HBui2i2EzSPT?=
 =?us-ascii?Q?Wg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cb76629-8962-4b45-899c-08dc524cbf6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 13:07:56.1709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GEObS1EXnqmW5Lma6Qbb+5SD3Jmbe8tEfPTU4Q8Zl/lAdmvHceciDxS9jUHSj3hAMcvAAsUJK/3DVk7CzUjXuFqbuENIxfOes6ygQILYLM8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6131
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711976882; x=1743512882;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0dcBzgOlq3zIDt0FYpNMBaQtzDnPEzsRHQHDkH0YIkw=;
 b=ZxAP1fT7GMSfY5R/oyr9Hbw9BiwPB+n+R4ydm5z9pkuPXJ6HJTUstIgL
 DxU9HQyLDaJNtB4cYoc4NmipdeGf6/YywUn+RY9Q3K1p0OF2M9jq82nWt
 Q74YpCcPAxj4gqkEeOKNLzWpMUHzmRCxDSrBByszdJkJ9gBhIuFlsOlMu
 yXSKp9w6d1Wqjymg30eV+pjOreH7N2rAbKHdDgnmQ/iv36gGVdXHAhpWv
 /xnPwF44KZNkcNGvfpRYHco8z+uZUvAx/RVXJ/Mr9iGnC4tr7j9EAui8U
 vus+hx+ITBv3krx0dgDlmG6niI2GCfoAorqRkL4JaZmqGrwB/3iN8ptOX
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZxAP1fT7
Subject: Re: [Intel-wired-lan] [PATCH v5 02/11] timekeeping: Add function to
 convert realtime to base clock
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
Cc: "Hall, Christopher S" <christopher.s.hall@intel.com>, "Mohan,
 Subramanian" <subramanian.mohan@intel.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "N,
 Pandith" <pandith.n@intel.com>, "x86@kernel.org" <x86@kernel.org>, "Dong,
 Eddie" <eddie.dong@intel.com>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "alexandre.torgue@foss.st.com" <alexandre.torgue@foss.st.com>,
 "peter.hilber@opensynergy.com" <peter.hilber@opensynergy.com>, "Sangannavar,
 Mallikarjunappa" <mallikarjunappa.sangannavar@intel.com>, "Goudar,
 Basavaraj" <basavaraj.goudar@intel.com>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, "T R,
 Thejesh Reddy" <thejesh.reddy.t.r@intel.com>,
 "perex@perex.cz" <perex@perex.cz>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Thursday, March 21, 2024 8:23 PM
> To: D, Lakshmi Sowjanya <lakshmi.sowjanya.d@intel.com>;
> jstultz@google.com; giometti@enneenne.com; corbet@lwn.net; linux-
> kernel@vger.kernel.org
> Cc: x86@kernel.org; netdev@vger.kernel.org; linux-doc@vger.kernel.org; in=
tel-
> wired-lan@lists.osuosl.org; andriy.shevchenko@linux.intel.com; Dong, Eddi=
e
> <eddie.dong@intel.com>; Hall, Christopher S <christopher.s.hall@intel.com=
>;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; davem@davemloft.net;
> alexandre.torgue@foss.st.com; joabreu@synopsys.com;
> mcoquelin.stm32@gmail.com; perex@perex.cz; linux-sound@vger.kernel.org;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> peter.hilber@opensynergy.com; N, Pandith <pandith.n@intel.com>;
> Sangannavar, Mallikarjunappa <mallikarjunappa.sangannavar@intel.com>;
> Mohan, Subramanian <subramanian.mohan@intel.com>; Goudar, Basavaraj
> <basavaraj.goudar@intel.com>; T R, Thejesh Reddy
> <thejesh.reddy.t.r@intel.com>; D, Lakshmi Sowjanya
> <lakshmi.sowjanya.d@intel.com>
> Subject: Re: [PATCH v5 02/11] timekeeping: Add function to convert realti=
me to
> base clock
>=20
> On Tue, Mar 19 2024 at 18:35, lakshmi.sowjanya.d@intel.com wrote:
> > +bool ktime_real_to_base_clock(ktime_t treal, enum clocksource_ids
> > +base_id, u64 *cycles) {
> > +	struct timekeeper *tk =3D &tk_core.timekeeper;
> > +	unsigned int seq;
> > +	u64 delta;
> > +
> > +	do {
> > +		seq =3D read_seqcount_begin(&tk_core.seq);
> > +		delta =3D (u64)treal - tk->tkr_mono.base_real;
> > +		if (delta > tk->tkr_mono.clock->max_idle_ns)
> > +			return false;
>=20
> I don't think this cutoff is valid. There is no guarantee that this is li=
near unless:
>=20
>        Treal[last timekeeper update] <=3D treal < Treal[next timekeeper u=
pdate]
>=20
> Look at the dance in get_device_system_crosststamp() and
> adjust_historical_crosststamp() to see why.
>=20
> > +		*cycles =3D tk->tkr_mono.cycle_last + convert_ns_to_cs(delta);
> > +		if (!convert_cs_to_base(cycles, base_id))
> > +			return false;
> > +	} while (read_seqcount_retry(&tk_core.seq, seq));
> > +
> > +	return true;
> > +}
> > +EXPORT_SYMBOL_GPL(ktime_real_to_base_clock);
>=20
> Looking at the usage site:
>=20
> > +static bool pps_generate_next_pulse(struct pps_tio *tio, ktime_t
> > +expires) {
> > +	u64 art;
> > +
> > +	if (!ktime_real_to_base_clock(expires, CSID_X86_ART, &art)) {
> > +		pps_tio_disable(tio);
>=20
> I'm pretty sure this can happen when there is sufficient delay between th=
e check
> for (now - expires < SAFE_TIME_NS) and the delta computation in
> ktime_real_to_base_clock() if there is a timerkeeper update interleaving =
which
> brings tkr_mono.base_real in front of expires.
>=20
> Is that intentional and correct?
>=20
> If so, then it's inconsistent with the behaviour of the hrtimer
> callback:
>=20
> > +		return false;
> > +	}
> > +
> > +	pps_compv_write(tio, art - ART_HW_DELAY_CYCLES);
> > +	return true;
> > +}
> > +
> > +static enum hrtimer_restart hrtimer_callback(struct hrtimer *timer) {
> > +	struct pps_tio *tio =3D container_of(timer, struct pps_tio, timer);
> > +	ktime_t expires, now;
> > +
> > +	guard(spinlock)(&tio->lock);
> > +
> > +	expires =3D hrtimer_get_expires(timer);
> > +	now =3D ktime_get_real();
> > +
> > +	if (now - expires < SAFE_TIME_NS) {
> > +		if (!pps_generate_next_pulse(tio, expires + SAFE_TIME_NS))
> > +			return HRTIMER_NORESTART;
> > +	}
>=20
> This safe guard does not care about time being set. I'm not familiar with=
 the PPS
> logic, but is it expected that the pulse pattern will be like this:
>=20
>=20
>=20
>     ---|-----|-----|-----|----------------->
>        P     P  ^        P
>                 |
>         clock_settime(CLOCK_REALTIME, now - 2 seconds)
>=20
>         Obviously the pulse gap will be as big as the time is set
>         backwards, which might be way more than 2 seconds.
>=20
>=20
>     ---|-----|-----|-----|----------------->
>        P     P  ^  P     P
>                 |
>         clock_settime(CLOCK_REALTIME, now + 2 seconds)
>=20
> I don't see anything in this code which cares about CLOCK_REALTIME being =
set
> via clock_settime() or adjtimex().
>=20
> Aside of that I have a question about how the TIO hardware treats this
> case:
>=20
>    ktime_real_to_base_clock(expires, &art);
>=20
> -> GAP which makes @art get into the past
>=20
>    pps_compv_write(tio, art - ART_HW_DELAY_CYCLES);
>=20
> Will the hardware ignore that already expired value or just emit a pulse
> immediately? In the latter case the pulse will be at a random point in ti=
me, which
> does not sound correct.

Thanks for the review Thomas,

If an expired time is programmed to hardware, it ignores and no pulse is ge=
nerated.
There is an event counter feature in hardware, this increments on every pul=
se sent. In next version of driver, we will be monitoring this counter to d=
etect any missed pulse and disable the hardware.

Regards,
Sowjanya

>=20
> Thanks,
>=20
>         tglx
