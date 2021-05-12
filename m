Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA88F37EA69
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 May 2021 00:01:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6649684319;
	Wed, 12 May 2021 22:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zRHnWJPIqZOk; Wed, 12 May 2021 22:01:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6446A83CB3;
	Wed, 12 May 2021 22:01:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 392D81C1178
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:01:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 33D53606AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2NXxBb509Qlp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 May 2021 22:01:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 62A7E60682
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:01:06 +0000 (UTC)
IronPort-SDR: vr5Rpte6aHLpBa3Lsr0Nt0t7jP/qIhlG+lellMY4ySgTdZe2zfAELe1ppetLJ0PVRa+e0ykI7K
 O/5Xd1nr7yXw==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="197842984"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="197842984"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 15:01:05 -0700
IronPort-SDR: akzo234CMiOhWGPACXiidhRCiDFky37nVjzsVM1KTudoOhU8bE1N/oytecLDSKTPWirQpQgzau
 V9d/1Y7T3aKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="622920305"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 12 May 2021 15:01:05 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 15:01:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 12 May 2021 15:01:05 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 12 May 2021 15:01:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSRQa/E4qqqwihqYZFGNhlwhVfB9cVb2ZN+O0UKqfwIUaLj+i7arvFgA0TDoiI/ZR55x9wUKYyNOerKC+UcvZuwdX37WNS903sqjr0haBll6pwbhX1TJRvF3XA2Hx8ka3I6pn1UTmJ9Pmbh/LXESfn+K85WbAloxrg1G5y50OI/f5ehKt1SmhE8QMUguXPuSb+YtaGSFCUkKmls19wuFXwdcyxWw4gr2eqXUr0/wvcH+3+mtsEl1XW4K4oN9WLYec9TeUwcXBu99Co+hmQLClzD3evUJwivotVOy8e+NJpIqtC3RH08waVJRWy4uisVnXvq3hePNQscy7Pz3K68q7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c1nCKXvLiRz3NH2BLZkPRmLIiNKU4LQBxwvPBQselFA=;
 b=D4u8n44vGszDsQfP2NRdtBxejvT5t79Wr+56vkTtrLdVP2lH374dHF2/T4ODRFjhTEBOofVed9FxQ9JjANndQq7e8hk5zoSLz8nvsNQaSKCkYekoBk5vqvA/ZDKFOtI1usXcF1YHhHaYvyh4jAdlSFpZZXAbzo2175+i2PhqElVxw+0rC1Csst+QccSlZwHPizFMWbhm+8T5f9ezPAxWY5GdL45fK5oYIkfrZ0nujePbN7/Akz8AhBcQDRw/ogtrv20uAE6YHwMIEDj3VkZkSzAkLIs8UhiqH0dtZvmr/74KmpfPIRl3YOI0puS2qn3P3zdeOv0zdLh1SbXdiOUZng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c1nCKXvLiRz3NH2BLZkPRmLIiNKU4LQBxwvPBQselFA=;
 b=mo+Xp9RQA8EEbCqlVM1PqeHjajduFx/ALrgQAlpdVg0RXkmPVSd3FDylyNlx3MP1UWzotM9rPd03ZlS6CDL6b7S1lCZh0k9MTqoGJ+pxlKTJ3n5QNW+TnoCJ6O7hBwuuX1PGhWwsrH4Of1TyNvmvLzRkT23NuXoRdnHITqTVTvA=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB5187.namprd11.prod.outlook.com (2603:10b6:303:95::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Wed, 12 May
 2021 22:01:01 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 22:01:01 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 09/13] ice: fix incorrect payload
 indicator on PTYPE
Thread-Index: AQHXQo+niqS/vv8rfU+fkQUWlDd33Krgb2PQ
Date: Wed, 12 May 2021 22:01:01 +0000
Message-ID: <CO1PR11MB51050732386CC658FB907ED0FA529@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
 <20210506154008.12880-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-9-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6c5c9de-1f6d-4ac2-8315-08d915916e3b
x-ms-traffictypediagnostic: CO1PR11MB5187:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5187D97100D451B79D5019DAFA529@CO1PR11MB5187.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y0dzkorRYbJIk8ceTb4jIDYi/X242hGCdlE40IEGIf5hkV2UTxKyRDXB+LBAUi8gvYoniYmWbs7U8fdCyxuRjTj7YbJWdudfgtChpS89SeMb5HZAxxUiTMCtJpzrjQLnzwj7/bpmz0haAlsarGpxniurYA4RGtHL3rSA7ztjXbuKHQoHeA3dV9BHsgqjA0F0zwnA654JWRYuOphfokDE7wgoQgde224wl71aA9gPXJImNREx6bj/c0R1uH2vZsCOJbvAaUdbRQwFlzPdrS7gKBjPuIXPKzcU6BPZt3SbmvCLPTKdjxGW920lTnTNgPfF0AAmW2bUvjH+CQR9f93/GZfJNE5buxwUQGi9DciNaHpWrkbeJGUY74CzQUgajHKXdRWJh7PL16tMRiST+IPIhnTHKciOOIsflvM9LYbaZfDQcQZN866ZNBhIWEmc1S7bjrrohkG0qKvr9btmAlw65SNPIphMI7or9d7pBPKQmzKDsSMR9e01+Gexxjl/ichea5sE5r/ku2KUaCvluTt9VgQzRyy4NjzrDYZ4tQWq96xhbgF0zasNCpTsC8fCbY1ewZ7O+f+k4J5PDRanJDOPpIfRV+hTT9/OTdirMhZIdGw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(346002)(366004)(136003)(39860400002)(76116006)(38100700002)(122000001)(9686003)(71200400001)(33656002)(66946007)(55016002)(66446008)(2906002)(6506007)(53546011)(5660300002)(83380400001)(86362001)(7696005)(478600001)(26005)(8936002)(316002)(186003)(52536014)(66556008)(66476007)(110136005)(4744005)(8676002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?chX9kPkPMdWVSa5k3HcpQfJQ4ZNyeV0GQA87lVp9pJz0v6kEF44GkIV6cKpY?=
 =?us-ascii?Q?5zea2UNsuwbtsXazpGAl/RjgLu6v1tF5aKpegyut08U+3sXo3uil3ppKrjTO?=
 =?us-ascii?Q?179IuPcaaPXfaOCKBB80B+kBgoBdNUyF4k3zR40UyA0g3Sy6718YVqC4r9h3?=
 =?us-ascii?Q?Trhii1LrJ7FxUn/kzH6Wcvvl1YOy99fuqF+jWgnoidnrDOgcEv1NGpjSrCMm?=
 =?us-ascii?Q?PprL6qhNAltOdyV87FoNr4JWWf4QDL5fYLZvgXbIzOOWV/X2hsc0p/lttplq?=
 =?us-ascii?Q?6c9nnEOxJjg7kyPGzQ2NvivkmlX5snISyfnumj1dhHXY4wUvrrdPq6n//pEv?=
 =?us-ascii?Q?V6dFm8hHx0B/xd38IOk+9KA8qFjMa4lQUSTL/CvLkD1C4V//FbC50qZ9jSHe?=
 =?us-ascii?Q?KRmq7Q/me15V1nGLdk0G7aCYhHG1ArRhexKboIGiEx07P5INNBrf1tpZhYny?=
 =?us-ascii?Q?gKvByJCchTUUEQaf3FW5BJNrHc6HXzUQSkRCa3x0blaqf9l5EUvw6q5DdnoE?=
 =?us-ascii?Q?ZxPFoah9F5oALCbtsoY8lZqJz2UEuSx+Ps6PyUvAbUsRp5PMUNO6U3uLzzot?=
 =?us-ascii?Q?Hv4biqh7CTNHJzC582DEI57RqiJ3mc2GJCt1Pu2EMawoOuuy2jQYpnCmNE+Q?=
 =?us-ascii?Q?v/PGPvsNmd0gXVq7MG5VYvVAVhuw/5/6xvtY8fLcu5S50gEPj/yvWu18o6st?=
 =?us-ascii?Q?qM5/uX/cFHtl/2e8jijT09jh/Me62QKu4M9co3DFNLUysB/Rip6xdQW/g3Lz?=
 =?us-ascii?Q?S0+uETQ8T3ubLNDAD8hndsDGtXq7BJicxBj/KeN9PCgGmtD5/r2vVudFVdvh?=
 =?us-ascii?Q?fEe9PmB/k2eHkpAB2vxWNlDxjPUdsY8nNdiVl9V0oO3aJSp7F712zGuB3lx9?=
 =?us-ascii?Q?RcAE+F6fTurNcZLt5bisGBU9pj2UmEpIu9PRTAtF54M91j3x3//qlCxxYgDD?=
 =?us-ascii?Q?Ntjb2w63oHVRbbQq47ZHWqVX54Upj7wCTmuyz8gKwom5EXbvKQtf1JfMX87E?=
 =?us-ascii?Q?0o7/UVZ9du/ZTz81VoLdRLlNCa6QpeKSiFetopBcmbKQx27no16DnJQsjY5V?=
 =?us-ascii?Q?s7A0piF/ovrQLrEr3tBP838h2vWnIxS46PK8yrJLXNEhlOyBSkJ6QZSYn0Ot?=
 =?us-ascii?Q?IMcUHG2s9GBmKk4flWHtOxKNlpJluNkZFH5wMIJjsQE6DE5KiVPtUVA+V3wm?=
 =?us-ascii?Q?x23Gy4Gbu+83fG96Dx/j7VvrVFQu/OhSmCWAIgVKfoG26g3HsKH4dBaH5VDu?=
 =?us-ascii?Q?Q9MaZ6xnlnl8/0d7V5qy9went8leP564HVfWDAtqFd39YJWKB8NSdSxIkQdn?=
 =?us-ascii?Q?lcsSD3zbL2a76G0iJnbToO0R?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6c5c9de-1f6d-4ac2-8315-08d915916e3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 22:01:01.2345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SD940CCsgarlD3XQSs4+aXId/GpTVEcPpduiyqDwmxoJ+cNU5wQLo0JAXJKxSezmARP/AksoxUj4Cl8gmBBGTTeKkKxlJqr1toLqHHE02Yc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5187
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 09/13] ice: fix incorrect payload
 indicator on PTYPE
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
> Sent: Thursday, May 6, 2021 8:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S59 09/13] ice: fix incorrect payload
> indicator on PTYPE
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The entry for PTYPE 90 indicates that the payload is layer 3. This does not
> match the specification in the datasheet which indicates the packet is a MAC,
> IPv6, UDP packet, with a payload in layer 4.
> 
> Fix the lookup table to match the data sheet.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
