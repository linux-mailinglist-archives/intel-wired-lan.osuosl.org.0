Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B179396B619
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:10:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D3C680C27;
	Wed,  4 Sep 2024 09:10:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kkyGFeAbCnoB; Wed,  4 Sep 2024 09:10:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B25880C46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725441007;
	bh=xFvabwlLmKXTDxxV73KVeiCsCYcFbTtWDs//rr2zNdQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xfg6QEZo5rHHVQmYzMPloPN0f0RzjbuyRmluGMnHezMqvR1HxuzAxTfZ+I1pejppK
	 1L9X8NIoQpH9emrbIU3QgH61DROlYI9C0l5TfLYRls0796Hz56lK80vM6h2RI3G5BM
	 iH6c2GQYMBBktbgPVF0UkZL/uFP+6EvyycetiEpIrHmklRsJyyC2EpggsmAL2FWw09
	 vRaz2S14MqYMD0z27KxRgTwFTJmJ7/Rzm4leLsGQKVP/nRd83gjr1SNfSsPbBIK/qJ
	 q9JGrL/1QsAon6bM6QGx8HMfhEP55oGFlaDAIZLdblhLkiSmpLe7N+bGy84qnua4NY
	 t3n87Gmht5ZIA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B25880C46;
	Wed,  4 Sep 2024 09:10:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF8C41BF97A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA8C2607F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2PH2NLHH26Xe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:10:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0201D6069E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0201D6069E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0201D6069E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:04 +0000 (UTC)
X-CSE-ConnectionGUID: mQFcsgFkT4KpT4cqJ6ON/Q==
X-CSE-MsgGUID: uAgB01BuQHiJoBJfeKe1lQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27878111"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27878111"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:09:29 -0700
X-CSE-ConnectionGUID: lc0h794yQreq8eLmVY28tA==
X-CSE-MsgGUID: Qf1A5BwjS9y0I1I5h1nuow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="69606528"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 02:09:28 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 02:09:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nAxpT7mYcPC5LRPJYV2mb/gVLqHkvOju0T8C7qmOrRzW3Fu2Fp7KULD4vE4foPnc7xPaSzip6SED3s7vdC5wpAiM+M7psQNYdV2B9EdmsphxMnNLvFJqEQr/O3lXkR3p3QRnYmDgPtjFF47NM6ErFov9UaR8hKWPMfUziFMQA3RsbRhOteHAXqoYPPpP5X42imywz3k6VttiuJUxw81/ojT+zuo4+vFqZSn+v2VO8R12zzb+RE0vNpMohS0qO9QuOXfaFd0QfcYqynXynLWma8idfOLfciBUcIZxsEwVA6N2yyJrFBZtctPLVJp8pCS5k0OzTejykMLJiCHYlBkUNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xFvabwlLmKXTDxxV73KVeiCsCYcFbTtWDs//rr2zNdQ=;
 b=izYffUmEoblILyXSuP12S5k6ump7RNCFVIU0B14uM3/THpP/5+2sm5IvXBYSsv7mV2dHHpebmcFXD0OUF4uPkLgD+7rEWhO+IIPq+biJiwsh5vXT5jksoBB8pHWNmL6rIQwbCOSd4mENylUAdZN+Zb29HncHRyVW3I37nuQTj8YAFDFVojyqoV3UpLc5FbSsH4GNaxc2JmbpQLXH//PNeysQuTD9/aeunO2ZGz4wiuED4du+ys8VJhE/aUCWlW+8tJbaE7z6iGzmnUdOR+gRHHraalOr3O0CJfzx9mQE7dDpHgyMF214ANkhjdf+mkpxPFwCfCqOQtueFClhEelM3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 09:09:26 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 09:09:26 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 iwl-next 3/7] ice: Align E810T GPIO
 to other products
Thread-Index: AQHa+s1Tlv9DtVVze0itgJ+nXMpKILJHOdSw
Date: Wed, 4 Sep 2024 09:09:26 +0000
Message-ID: <CYYPR11MB842999BDF5E4F86C6177DFC5BD9C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240830111028.1112040-9-karol.kolacinski@intel.com>
 <20240830111028.1112040-12-karol.kolacinski@intel.com>
In-Reply-To: <20240830111028.1112040-12-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: 1a825725-93ed-49c1-2034-08dcccc14677
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?d6+Llx0c8v1EUwS5b//7B+YCB1BDyWbozzTIxyxxF8FGs1GUjdmoIwSGgxIM?=
 =?us-ascii?Q?LGqnHyUNdDwVwOzafberrqsMTsYMGb/VNWfj66Z3Da3TtVXmVaYVHtM66Us7?=
 =?us-ascii?Q?7MGx2gBxzflbZCJ4k1qSEh+8s3t9tBFq6qAu8v9DB6GBPd07o1TiyqGBSnAj?=
 =?us-ascii?Q?nhfLift4aTdGLFJ6J2Nr024M+SYcISb//WrOg/L/bpfOgga+wfqAq7jqxYIp?=
 =?us-ascii?Q?Gal+PHjbzSSr486GfqrMEzeNN4ElV9KVUT54z683y4spQmGdFCoBhwXcwHWh?=
 =?us-ascii?Q?U6XdP1P11TtYqsyCPhfNhnIrwQ+uwRpz+QXDHQ75rSvV7VVUJW9IYQTh4ne9?=
 =?us-ascii?Q?9b5+r2B49D0FCw601MVJyOO9mC0jTijn8huvSYGx3tS1tUOJwbrOkUWCyja2?=
 =?us-ascii?Q?MZm4YfLzNxYnHUEYazOqnJCPCKPBtjH9wPgG9EZs9QQMkjF+92aVPOATP5bC?=
 =?us-ascii?Q?ON3je7wjnQCSzzt5KyjJZ4ky3TnDi7GbiR9jxIsMVcBNGqo7+cRyYLBV6T7q?=
 =?us-ascii?Q?spfvPG0blPvCg9d0KqyNN87wgtpXvocflZjYLvLOYki7+uETzKcknQ71LeXZ?=
 =?us-ascii?Q?tXB3Atn4OYf55xNeRQocrRN3baDoysW8HQgxOpOxHJD8vVJB23DPDOAwPnIr?=
 =?us-ascii?Q?Zg9WjH7GcJxKzoQxi2N07RP7uVl4nJpeMY+ncejeXTQO0XfIBJQqkQipemcR?=
 =?us-ascii?Q?3tBDSAj8ejXF+4Mey0aNX5RjyLUIOMEVl2QPUwK5xFCzmuA1NEWg/dEKNbme?=
 =?us-ascii?Q?paURWmIAkLKTOQlubVJPG+zB9eUb3EVvyxEeDTXS/w5H3PHIZtjXDr9ldw0h?=
 =?us-ascii?Q?dOVmXJ7mp0WU3Pf2GoJz4rftVpir4ZjB518mAQ6/uiw94WM6EwDWkg/TL9GM?=
 =?us-ascii?Q?NWcB8UInlOdFTXSlLXp9sGiPKL862jGvqSl05ew6paarGJA/OEdqGNkp/NFp?=
 =?us-ascii?Q?YuZEAxR6YanBQmgjdrRmxrSFvZyRlUROoFtCgq6I23ZeNKbCHKq8ZsjLw3F1?=
 =?us-ascii?Q?4mpQHwM/P9RZ03czTP4NWrJO73N7aZu3CWlrJZZgo1XEh4HNrB15mTK+/qN+?=
 =?us-ascii?Q?+l1aMGbe5aVVGmu5TgdpHYC8kBHJK/rpjr8otgf6lW7ZomDbzbSEu3+/zkVU?=
 =?us-ascii?Q?4z4eXDyH3PfQshyR880Qm0A6vCl5WLaLitewneAKpWCSV4X9Yn6tA8/MPLki?=
 =?us-ascii?Q?x5Li+3TmV9kff50ZcPzrxd7fXpasLgVq8dp7LC/6IPLqgnIRWdFiTV99TW2P?=
 =?us-ascii?Q?HdUtrlLt9XCwDG0q0K58TFSdq0p/p+Ir135GR6EwcLz3VFu6emnWgPb3OH+N?=
 =?us-ascii?Q?SfIal1XMHXFWx+h+7s3CCNftPYqIgh0T1K287Jvmqbv79+DKvFEH7nzwpPBx?=
 =?us-ascii?Q?nzDmfoBBkKojfIHccy9jXYk+vmzvBge9fPGRLC3u874TgSFCnw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?O9Qypn0wOxYcf5GORBF6Ck1EWnQ0lB6KrXnaNJRBrB425w+hdGkOpqmBvghf?=
 =?us-ascii?Q?bKqHnoGE/wnN7AX0w2DzNGo3g+/6xtD8b4AkNtxNsVGzpp2Fb0Dlbq4eYbwl?=
 =?us-ascii?Q?kbMqT7tdM2ov8M8AQq/pUPUhn90ZNjBilb503Hces+0zE7EPAW7xPRqh10sO?=
 =?us-ascii?Q?bE4uxLUaK2z0auL9vDCcV4+xNX/aphRIdZWJjkwy17WhqrhA+G0GNH/TOYe1?=
 =?us-ascii?Q?eKujeEfOXg/CFqTEToRtODXJhwgehJDJX0HYnpvseH5ohKgngPmTuHkYWxn0?=
 =?us-ascii?Q?+u24MKnrDEUWxQjtxHsbeBbIV4M13R647/Q5s2X19J84djoAK6hMUHAqB86u?=
 =?us-ascii?Q?wkcfJzCVeyLQ3TLJpt9pkwsdidiYYWQQUvy9dTswEjur+EyPA38KZif6PDQX?=
 =?us-ascii?Q?Y4X4D55seGVzXR3RFrkLbZwDU8HV9a+Np/XP5QbWrVZR2IYlGiUERpJZpZ8i?=
 =?us-ascii?Q?/Qd6pOiIVf/SFZOFgXfbOZ63z+G0TxbmAnkEd1sVZIoQz6oJy9mw2x56iV4L?=
 =?us-ascii?Q?pwmkm9UM4IMbb9RO7ovQbEnyX4CRU8+Bhd6YfUzIXrDwAq7j8UGRqwR0Te3r?=
 =?us-ascii?Q?IPuFDleICCaHhpXosFFQKIOQCeUUwpE6jHT9cMv5/sLIj8WHG+IOiKACcX9a?=
 =?us-ascii?Q?7V759Uc1hCLQT0zasRQiYQzCk8QxJAFW4Wy73pUqJoHLIaLsILK1UJ72J4NN?=
 =?us-ascii?Q?KeyqLna+jNRsB1o73gznRpzR1wFi8hobVDHIrNuTcY8Hk3xMZqy65/nvqvrX?=
 =?us-ascii?Q?CGaMfMwT0J0/jSp1eeAPsInGgrborto8xF2ja/OI//C2D6bczsc1jjGL0BG9?=
 =?us-ascii?Q?y/5WHC8ct43V2rOK9WkOkEHHp8pnlJANQtkkFJ3yT0aU3gnDze16KeyWiksE?=
 =?us-ascii?Q?oz83wAoV+I0Imprj+LgazLZfsQj9aMc3sP+B6vUQtZQ4kTu1OaH9kNk6Ju2I?=
 =?us-ascii?Q?w0jXV8FGL/OxbsV+fsHAXz8us6quvoKDAfGZJItmUV13RMveCDOt3qUooVbQ?=
 =?us-ascii?Q?trhS8Ry6QrDhrejiizsEvxu8OZaFRaDRYNYODxd2xPFHhAwPW9YuZ0tfpFoP?=
 =?us-ascii?Q?hbJoDbvgIpH6eIpAF54TmElWMJlLLYH3Vjvud54WCyjrrNBgCU0wMqrpCfDV?=
 =?us-ascii?Q?R6aIbxN6rpEkspqxgIfdzeWFTlCmOzkuceazANuLrZRABaWlzUHWvazyDM6q?=
 =?us-ascii?Q?JtN5eYkrFcR8uCKKo0XrvLSQOuQD5dPlaIejIMgBV9yS8q3jAhbONMQaePlR?=
 =?us-ascii?Q?zMIJGDWq1Yg63eQ/7eEN7X+yVImUob8QglEo1K3nBrOxwpKpoQG3sJCdsZgH?=
 =?us-ascii?Q?D9o6QsVZn+o2BGQBurvPwiWi5q74Q5nC6tSyN+7APO0c7Br4tstJcmbARsdO?=
 =?us-ascii?Q?XEaWybNEu2oteZfvhMr7i31tNxtGk+BxoK9mkkQUMn5ld9viTQsuYoxQWYUq?=
 =?us-ascii?Q?RrV5MLLkl/sf6WjwTBdV3r83FThyJ/POXjX+P44AoLSqwTxVgO0LZ9gkis+v?=
 =?us-ascii?Q?YQMlKgLHvtJVkrwtEBovb2YeOj1FA8VISsyMrK7O4LQyRCfrwcHNYGFCP9aw?=
 =?us-ascii?Q?k5ic3O+FN0AJU4mdJcQcs0rbOjpJxe1F9wBDVhINe+PL4MDSs6qTgEj651B5?=
 =?us-ascii?Q?nw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a825725-93ed-49c1-2034-08dcccc14677
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 09:09:26.2117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xkT3SQyj7kJ1ISvikH6gKO3298lnMwmcTh2Vd/E9ZCFzzAphQUk3ajELfuOdEdikV1E1iTHtcr7rHHQb26X2XsGobUJuxdAtGCA/ceaNhF4vnde9x6s4VRUirbNRwKex
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725441005; x=1756977005;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k/qAR5a4u6dDGGOTuQo661gOA7o4GlbqHfoVs1VAHbI=;
 b=I88hq7CcOHXc1Id0dum9naTe3KiduFTX6dpPS3N9Lfaz/eROuC5e2fQI
 ddv69ldTGR7ZbDcocEq54wO7jjAc3AAzzEA2Ddkhifou6rAnGqWBzy70q
 bQBk60edWXif5m3vkPiRxx2WuRxF1gyqNmx6tDYp4Vr/oLWPVHL07dtWV
 R3PLEuu81Bd2YPr9vGpp+CXTlXpauAueJxk5LhVDYvvdBxlmGSkRdSS5W
 B4yi4jxI2H4MoelH/1j1tms5q+rvKY+h0r3zin33k2Wz/blsr/p5IEDrU
 S3brv5j2RCqBUhfpg/CaSCcItfy9toLmjSeKNtlf4EfglXZ77G3AILgHm
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I88hq7Cc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 3/7] ice: Align E810T GPIO
 to other products
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Friday, August 30, 2024 4:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Kitszel, P=
rzemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v4 iwl-next 3/7] ice: Align E810T GPIO =
to other products
>
> Instead of having separate PTP GPIO implementation for E810T, use existin=
g one from all other products.
>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> V1 -> V2: restored blank line and moved enable and verify assignment
>
>  drivers/net/ethernet/intel/ice/ice_gnss.c   |   4 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 464 +++++---------------
>  drivers/net/ethernet/intel/ice/ice_ptp.h    |  29 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  20 +-  drivers/net/ethern=
et/intel/ice/ice_ptp_hw.h |  43 +-
>  5 files changed, 155 insertions(+), 405 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

