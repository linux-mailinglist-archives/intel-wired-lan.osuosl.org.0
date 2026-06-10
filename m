Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XmDaN28qKWpuRwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 11:12:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE2F667B08
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 11:12:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=jS2BdxZU;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 455FE6086A;
	Wed, 10 Jun 2026 09:12:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mAnGxzjjNt_B; Wed, 10 Jun 2026 09:12:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FF3D6086D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781082730;
	bh=9jKqOD/dEvP0rLbekVOYk3n4MavuF7o3LK+pzhJtnDA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jS2BdxZUxjgMLGWeKaO35t4SMEUgjt5M9ENP+QR7YmniR30wwCwdDc30lbCoog8My
	 L8P67EiJ2ussLKpT4KmJVgG4hoa2A38jWeJpnM5Naq36uz7OzaiAiMJO8IISk137ef
	 DkBjgo42dDPiKnFSmJZJUsMVc1lRteGMT/evAvGeRbh8NUDvCfmTiv5HsnQ/wjZP84
	 Yt/YqQyIUDFP4aakvEKfqBNa3cPoriM4Oitt5US2q4/Orsqct0t6b35CYJBq5GyClx
	 /o4+dnIfrz9nUmiqY0RJt6gXaXtQQDhpIdj/2sCvYyKFcYA7wSpo5jpJEgl0t7V5YZ
	 4Bccw149DUJXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FF3D6086D;
	Wed, 10 Jun 2026 09:12:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CE3C6256
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 09:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE42E40A41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 09:12:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hfUBU7Byh89O for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2026 09:12:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EE43E40A3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE43E40A3A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE43E40A3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 09:12:07 +0000 (UTC)
X-CSE-ConnectionGUID: U9JdBe34TZSJOJ0Wt3cSjQ==
X-CSE-MsgGUID: No1JoAPMTEi/a36kcMrlLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="81873269"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="81873269"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 02:12:07 -0700
X-CSE-ConnectionGUID: VjF8ijTSSdqXM+5utMmL6A==
X-CSE-MsgGUID: WgFxrtpCRh+b+zYXzNeLJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="247972011"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 02:12:06 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 02:12:06 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 10 Jun 2026 02:12:06 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 02:12:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V0A/r/RE2ofYnqxaDembaZHghJ85g83OTAXgnrXhfexU5IdB1fzFEpp9I9mhzoMot0HgKv9q02c2WOaAZCYKADVu5ywtZmdG4SNMXKBYQO+7NLiQpEtij2VVkt+rWXw7pPuG6AwV8XJZalsNt4ePZb7kF/QpTv2zTlTrRBF15vPth3WzV2xI6GRLy0MzZPOiibpEACbYF0dt67DU3C3i66NELjF3D4o46F8lAna2RvwUS7+L3D+73Rbh30+ncs6aBK8tXmNNQy/zXXzOfbaAcQdLwI8tfLbanhXRCH3mmR8WSWBC5EpC5fywjSBqFuvm5TUT8ZfcA1AeoGE4ArXNEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9jKqOD/dEvP0rLbekVOYk3n4MavuF7o3LK+pzhJtnDA=;
 b=do4yYNJCIW2sfiQOop9ZE9azrvuUnOMYK0GxOJ49EjRco/t1IItieKOFOwrRrrodui+jiHc6g5ubU3uw8RqMpwa2VkyZSYpblVX+e9DPtZBEhvoC0hGL/DXFzNE52PF1CJXBat99i4/m3gQXIbv1EM30g3DrhIJuwtWk+DX6PRnfKAh2lXMejk9OFmhBNj9GspKPIChIgC7wpKDnoRZdX3cE1/ayGWMqKqfR9i2LRlRa6B0LEAo9ieoxzRIm/XfPSi8ra4RhCWm82ZrVtdoGgvCYurv2Pa9Q34CiyTVXmbNzESHdIF7BlBunQh3LCw8MHjq+9pzxCw6aNKXyogb9Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW6PR11MB8439.namprd11.prod.outlook.com (2603:10b6:303:23e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Wed, 10 Jun
 2026 09:12:03 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0092.011; Wed, 10 Jun 2026
 09:12:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Markus Elfring <Markus.Elfring@web.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Shiraz Saleem
 <shiraz.saleem@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: LKML <linux-kernel@vger.kernel.org>, "kernel-janitors@vger.kernel.org"
 <kernel-janitors@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] i40e: Use common error
 handling code in i40e_register_auxiliary_dev()
Thread-Index: AQHc+LLWeH0nKHnAxEegq/KzxDD2TbY3f8yA
Date: Wed, 10 Jun 2026 09:12:03 +0000
Message-ID: <IA3PR11MB8986B1D76AA3D9694078DB4BE51A2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <f0b4e354-9ed7-43f5-8ffe-97019e421c02@web.de>
In-Reply-To: <f0b4e354-9ed7-43f5-8ffe-97019e421c02@web.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW6PR11MB8439:EE_
x-ms-office365-filtering-correlation-id: 17c15ea5-6f84-433e-ca76-08dec6d0561b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|7416014|1800799024|18002099003|6133799003|22082099003|38070700021|921020|11063799006|56012099006;
x-microsoft-antispam-message-info: /lmJEVB371hEwWswQbGXrbO7KgCizb7Qgco1q+JzLkO5UHpDOXDVG20tsxWanKUl4LDnbefQdLScJf4dE+YnQO9s+ayyEM+MLM8/IwU6Z7+dRwDqFjtXboY1SzzSc1AgaWBfwVFiGv8jkRiCv+i2AQLIO8ZvI37mDEBZy1V7q1lMHNB2Rgq8vDW5dYP1MgFbsjOZXlrlhbxOHhVTHFn/+vxRjiuzmx4TEXhmZmbg+Ro3vi/oF3yfNtzm1GHN2oCL1LT78dnlEsS4E6q22eEDcNo5P4an4WGqM5nNTJC6RoDfNfQ4zlSTAJJx/OkO38J56X29UDrWJrEaVt1YxVIN/ZrhyvcWb8GSu29xBRyTXH7FI58gedxmXgeblYsJOJLjlRJrG3Qez2udKFzT/sB831fEV/0T/Q5h4WvBYOxqRHQaX0ZjncovamZqTFzh1qV0Zec6T9q2ow0AUV2LzXIrCikr31jthrncWS0hGvXPaZBxnmO5lMI2euer1fikS30GjFG4rVL11j3xq6O3AVkNydh05Huo/5O1Nq1rC5m1zEH+jB4kzA3m4L7FGJcsotbh7IfwDRZTc60OC5gGy4QzurixDg9ShcquILWi1O9okEO8iequffBqE3DiMxJJTafEThZ/JQImx088qCE/KxcFpiBceASPiYtXUX40rq6+O0Ew3CMH0FlFXarIh+L5MZUwOjJprj82OELUaD8PRbnbA2ZA+JZr1qTkwpbeFLjw4AjmO6UkNiuSIyJhBfSDoSsPJ5D2APU3r1kRg3PDZx+CrA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(7416014)(1800799024)(18002099003)(6133799003)(22082099003)(38070700021)(921020)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dys1N3YxalZGdTlCVmV2WlRFdm5obk9aQ2VsZXdCYlpDOXNlUEZwcng4SHRF?=
 =?utf-8?B?TlJUeWE5cU5xVEs2cUM1Y3laNytYZFFvMEdZTkhkT25rdWYwMTJDZ1BCZDdF?=
 =?utf-8?B?bGtlRXlVYTdwNUNDWjJmeTY1NDkwZHZoVnNySlUyM0IrZGNRd1VUbFBxaHlF?=
 =?utf-8?B?YTlrVzVVSWF1NzB1QWk1ZjE0S05Jbk13ODRaR1o2bEVXY3NPSnJYQ0ZxT095?=
 =?utf-8?B?WTBXQkdHdG4vUXVna0k5QW14WFR3Q0x4OEVpYTdnMUptVWxQODRDeU9jOGNT?=
 =?utf-8?B?YmtGZHY4SjhPYmdoajNaLzU2ZWZGdy9EL21CZXk1eDRHc1NlVmlTWFZ0TC81?=
 =?utf-8?B?SkkwcXovdW43Ums4amJjWjJDN3g5a1h3ZjEySEdEY0k3eHBjQWxGZGNlU0hm?=
 =?utf-8?B?ODNNRjRoVFcwWDZNZjVJVnRnWTFuL1AzU1pqM3NXUCtTZ2FORWhuTTAxekNq?=
 =?utf-8?B?UTdPeXRKak1LSGpjQ0VKT1FiRWVmU2ppVWlrMFZsRDNGQ3IzV0dydWRlL2Ux?=
 =?utf-8?B?Q2I3LzNNSnNOSXVxVW9hQ1RjT0tkLzgzZWFYbWU0WlkyelVWRG5heVdjYU5G?=
 =?utf-8?B?OFJWN2pxU3ZGbzFMRWFYQ2FXd2VZeFJXSFRaaSttdzBXb0plVEY3UlFJZ3I3?=
 =?utf-8?B?cW55OTVlbkhka2d0eDNyN09VM2xDN1VSK1h0dEhMeldNVklnVEh4dG5VTkFi?=
 =?utf-8?B?bGZSYlMyQ2FFTjdmVGZvR3I4My9CYmdjSGVzZW5aTTlNRnVQb1BWZC8zNEVl?=
 =?utf-8?B?bzNYeXd2N2lMZGF4VjhNVERkS29kY0hPd2FXYTJVdjBycjVWWXBhQ1dTa2Vu?=
 =?utf-8?B?Q3BzZGFGQmVGelVJK3o4ZVpKa3FqRzhOamRuQ3hocFYwN2hkZnpUVWYwRWNY?=
 =?utf-8?B?YW1DQmUwcDRvV093dTAzMXFCOVdnVTA3Uno0YldtMSt3N1ozN1ZyaDVNVzUr?=
 =?utf-8?B?VjJ3dEs3Qmp2RU1OTmVELzZVTU9icDFzOTh5MjhIYkNNY21KRmhJSm5zNFB1?=
 =?utf-8?B?TURDeXRlQ3lxN0toRkt3WGMvSDdQZndhSVhTK3lEUUpIU3NSbjI0TGlIQURn?=
 =?utf-8?B?dmg1alF3elk2RmFqcEo1aUJpL3hQRlpSa0FoT2dNQVplaGJVT2tuNUNNOHlV?=
 =?utf-8?B?UnA1RWRUWXZqTTYrK2tJTUlhWUFQVS9VZkp4VzhTbWxtbXF2YVFreDh4MU1z?=
 =?utf-8?B?REFkZFVINWVTQmw5ejYzQmkrcUJIUkNuS00xTC9rUE02OUZqV0Fack94dU95?=
 =?utf-8?B?YzdUVWt0YWtDSWlvTnc1dXZISkRlUUZhSHlIT1dSTFNSWVdlVUp0djNkdTBM?=
 =?utf-8?B?a1J2V28yS0djTEQzdWhOKytDNmJuUUZMZ2ZaVWpIYk9hMXpTdjMvVWNmWkhu?=
 =?utf-8?B?cEJENENxN1JteEprbXhCZDZlbklqUGZGd2pna1N2V3ZUVDNDNGlzMFJHSlJx?=
 =?utf-8?B?M1FYWExULzI1ZENycFN0WlZncU1SUWVXS054T3ZPVXc0d1owWFlRdE4xN3FY?=
 =?utf-8?B?NWZzM1pSRzZvUkcxNUZlOXUzRWFOVlRYVHp1Nk9QWmVZU0hvcUVIZGVlbW1O?=
 =?utf-8?B?T090bENLaWE5NXR2R1dEM3hRRlY0NnRwM1k4WTNIUktZcGVpTEhxVFp2cHZF?=
 =?utf-8?B?a0tNS1htaE8wVnN6SjBBZmsybkdPdUgxWWRsajUzQkxtZ2NkQXY4Y2NpRENE?=
 =?utf-8?B?ZWtPMWxIeFZrOXVFNXNOcndOTnJlaGE1SHNUcmloNjJUVGZ1T2FNd3FQSWdk?=
 =?utf-8?B?VysxTmpoV2FUb1ZLMy8wejhnUlVkdTgzWEdndkpBZzBkYVl5Q1RvTTJrOXZH?=
 =?utf-8?B?bXNuQTNiUWZXWXZqWEFGbHBSWWgzUHh4bTh6VTdSL0FiRjQwSmQ0eWtqN2pP?=
 =?utf-8?B?ZWdmaHBtcXZOOFBhVTlYRCswVk1SSWRpYzhGRXlnS1F4aGtDQ24xMHRNd2JC?=
 =?utf-8?B?THJrVzJPQjFWSkxFUWV4eHR1ZnNZWmk0ZGZKNVFialhhekd4T3lKZnhUeFBZ?=
 =?utf-8?B?c3RjemY0RUVKV2kvUkw3VGZ5eWVKRXQrZmgrYTlXRGhHellFWnAwNGovcGdI?=
 =?utf-8?B?RmdzempqRmNRZzZ0NnF2b2tJdlZIT0NyMFhCVER0OHpvVE91TTVnMGRibFM2?=
 =?utf-8?B?TEFuYlVGY0VNMndaSjV5dHRPYlpuQ3BwVWJZSWRMODd6TnN6ZXdDTXRLZDU2?=
 =?utf-8?B?TmJBL2VZR1krNDVlSytCUnF1TDBDS2p6blB2b0x4MWxQK3ZldDJJenBxV2JB?=
 =?utf-8?B?WVBjOGpJajVjQ3E2SnlIT01kZVlHNXRuMXUwcU9QZ2U2bG93czFtLzZYTEZI?=
 =?utf-8?B?VkVlMFNFTE1HYThocEZ3TTl2QWF4V0VOYnU4RUd0d2RFdndHVDE4SmZIS1gz?=
 =?utf-8?Q?MzpZn9iAT40zpvQY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gPPuf3XLDvNqZUdJPrbAzV8qAgaOukBHn1cKp2AE6D6xtxiCwHd+LNCN7DRf7RZ7dJEM7O3mJoXz26gT9Qxi9ct6hDl91s7K68SPr05hK1wLOREgOTUQk2KJvQemx7Ikbcy24wYas1dofgdV5bkJEdMBDWzSXSKos0h35AuHwg/f5I7yQt+avBq8/ZPDjxXT9aYnKunIIhR44xuQkPHwCb0CpqKgrH3aUjYIc4dmxc7K9fH15gc6BuvocbDx3bwc6ZkUlmBdZj8xRz1INiKcSsCnBH/8Rn/TPvGNjlXv0P002/tkjwoD2Dw1hw/uU6tQYrZ+b1+PQ3vnRBZ5ZF11XQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17c15ea5-6f84-433e-ca76-08dec6d0561b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2026 09:12:03.3217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UzJ4JwHl5ZSd1za4lMgSJJZFbFyYwVzimufKphYk5dPjbeMynqt1yuNNQUT6zH0bW2xQ0CWh26/0qRUckAvLZp3dilOVLeOQdSk9rwCvMjw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8439
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781082728; x=1812618728;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9jKqOD/dEvP0rLbekVOYk3n4MavuF7o3LK+pzhJtnDA=;
 b=nzyYaD3U0nvXEy+6020/ozdMlt+mAe/IFY3+yCrkoorddFepdmlUzQAP
 C9VDfy47JdO3bu8YC9arar8IyEe9IHlRwvY4SI9OSmCSt6NFtYAAkYywW
 viVnVcPZhqKJBGTzpO4uPlEhzkWBwdJyo9eTmCb5JFt4aj/S12M886LjF
 G8gxv2QOreEcIyylk/XWgvMf1HFjm1GtXiQpFeKLE9D5VXfXTVQHZZfle
 qiPhY19ci39R9dF1EoJfxLZRVauPcG33PvSWydE7v/V9J/tJBWOUjaXpH
 cV+AP7G3t1DFVLiYx3dDPR2T2gNcNadTYWkhR+5eMF8uvUvmo2YEKDC1b
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nzyYaD3U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: Use common error
 handling code in i40e_register_auxiliary_dev()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Markus.Elfring@web.de,m:netdev@vger.kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:shiraz.saleem@intel.com,m:anthony.l.nguyen@intel.com,m:linux-kernel@vger.kernel.org,m:kernel-janitors@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[web.de,lists.osuosl.org,vger.kernel.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4CE2F667B08

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWFy
a3VzIEVsZnJpbmcNCj4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDEwLCAyMDI2IDEwOjIwIEFNDQo+
IFRvOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVs
Lm9yZzsgQW5kcmV3DQo+IEx1bm4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1p
bGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47DQo+IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29v
Z2xlLmNvbT47IEpha3ViIEtpY2luc2tpDQo+IDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbyBBYmVu
aSA8cGFiZW5pQHJlZGhhdC5jb20+OyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3
LmtpdHN6ZWxAaW50ZWwuY29tPjsgU2hpcmF6IFNhbGVlbQ0KPiA8c2hpcmF6LnNhbGVlbUBpbnRl
bC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+
DQo+IENjOiBMS01MIDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPjsga2VybmVsLQ0KPiBq
YW5pdG9yc0B2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BB
VENIIG5ldC1uZXh0XSBpNDBlOiBVc2UgY29tbW9uIGVycm9yDQo+IGhhbmRsaW5nIGNvZGUgaW4g
aTQwZV9yZWdpc3Rlcl9hdXhpbGlhcnlfZGV2KCkNCj4gDQo+IEZyb206IE1hcmt1cyBFbGZyaW5n
IDxlbGZyaW5nQHVzZXJzLnNvdXJjZWZvcmdlLm5ldD4NCj4gRGF0ZTogV2VkLCAxMCBKdW4gMjAy
NiAxMDowMjo1OCArMDIwMA0KPiANCj4gVXNlIGFuIGFkZGl0aW9uYWwgbGFiZWwgc28gdGhhdCBh
IGJpdCBvZiBleGNlcHRpb24gaGFuZGxpbmcgY2FuIGJlDQo+IGJldHRlciByZXVzZWQgYXQgdGhl
IGVuZCBvZiBhbiBpZiBicmFuY2guDQo+IA0KPiBUaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1
c2luZyB0aGUgQ29jY2luZWxsZSBzb2Z0d2FyZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1hcmt1
cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNvdXJjZWZvcmdlLm5ldD4NCj4gLS0tDQo+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfY2xpZW50LmMgfCA4ICsrKystLS0tDQo+
ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jbGllbnQu
Yw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jbGllbnQuYw0KPiBp
bmRleCA4NGE5N2NhOGE2ZDguLjM4OWI4YjgzYWZiZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2NsaWVudC5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jbGllbnQuYw0KPiBAQCAtMzA0LDE1ICszMDQsMTUg
QEAgc3RhdGljIGludCBpNDBlX3JlZ2lzdGVyX2F1eGlsaWFyeV9kZXYoc3RydWN0DQo+IGk0MGVf
aW5mbyAqbGRldiwgY29uc3QgY2hhciAqbmFtZSkNCj4gIAlsZGV2LT5hdXhfZGV2ID0gYXV4X2Rl
djsNCj4gDQo+ICAJcmV0ID0gaWRhX2FsbG9jKCZpNDBlX2NsaWVudF9pZGEsIEdGUF9LRVJORUwp
Ow0KPiAtCWlmIChyZXQgPCAwKSB7DQo+IC0JCWtmcmVlKGk0MGVfYXV4X2Rldik7DQo+IC0JCXJl
dHVybiByZXQ7DQo+IC0JfQ0KPiArCWlmIChyZXQgPCAwKQ0KPiArCQlnb3RvIGZyZWVfYXV4X2Rl
djsNCj4gKw0KPiAgCWF1eF9kZXYtPmlkID0gcmV0Ow0KPiANCj4gIAlyZXQgPSBhdXhpbGlhcnlf
ZGV2aWNlX2luaXQoYXV4X2Rldik7DQo+ICAJaWYgKHJldCA8IDApIHsNCj4gIAkJaWRhX2ZyZWUo
Jmk0MGVfY2xpZW50X2lkYSwgYXV4X2Rldi0+aWQpOw0KSXQncyBub3QgbGludXgga2VybmVsIGVy
cm9yIGhhbmRsaW5nLg0KUGxlYXNlLCBlaXRoZXIgbGVhdmUgdGhlIG9yaWdpbmFsIGNvZGUgYXMt
aXMg4oCUIHRoZSB0d28tbGluZSBkdXBsaWNhdGlvbiBpcyBub3QgYSByZWFsIHByb2JsZW0uDQpP
ciBzdWJtaXQgYSBwcm9wZXIgdHdvLWxhYmVsIHJlZmFjdG9yIHdpdGggYSBjbGVhciBjb21taXQg
bWVzc2FnZS4NCg0KPiArZnJlZV9hdXhfZGV2Og0KPiAgCQlrZnJlZShpNDBlX2F1eF9kZXYpOw0K
PiAgCQlyZXR1cm4gcmV0Ow0KPiAgCX0NCj4gLS0NCj4gMi41NC4wDQoNCg==
