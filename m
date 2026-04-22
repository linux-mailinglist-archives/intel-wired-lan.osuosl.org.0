Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDCjHYnD6Gm9PwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 14:48:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB917446273
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 14:48:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DCC442736;
	Wed, 22 Apr 2026 12:48:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EIMIFl7VJCIB; Wed, 22 Apr 2026 12:48:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59FCC42733
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776862086;
	bh=syIqhgIEIxRJR+s7dd0YnxT86aCjunOvttj8LE1v8ho=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dnq08Ybul0rxYkSn5zHxCE2hg1VOTgj2Q9rH8vzdXQn3LmaUxGFBIA9d7ghM4l+4l
	 oxDTPQ/d5tHXYMcNjHgQt+mdZio5derNSW+eq61R4YpzdkYmd+0pOb404/KstkqZ9h
	 tGJsZCsVHHWAXnBJF62zcjoEC2vM/kWL8GC2tFYVnpipUu5cKi5+NPAYbjrZyDpaEe
	 LFt77I3cXDUUB1aToeb6C6oUQAmFr6TZbOhHC8lrzgWTpVJN7Oqjoelp/FeevyITSQ
	 o8loTteIzvmuweFl+tw2NXOaWJSavcnfa1IhiDDIEHnIW5OswMQSHX2TkBGm8LfGCr
	 8YE62jELkxl6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59FCC42733;
	Wed, 22 Apr 2026 12:48:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B41E183
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:48:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D499847A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:48:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R21xyQcDcdHj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2026 12:48:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 42BF984700
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42BF984700
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 42BF984700
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:48:03 +0000 (UTC)
X-CSE-ConnectionGUID: xy1PryBTRDaw+sDe/rUihg==
X-CSE-MsgGUID: 65gCctLzRIW51r6LAurF9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="100464723"
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="100464723"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 05:48:03 -0700
X-CSE-ConnectionGUID: v/lbVKibQdiY0M6t2dKTpA==
X-CSE-MsgGUID: OY0BW9cPQaWVtavHq3dfWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="236344686"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 05:48:03 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 05:48:02 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 22 Apr 2026 05:48:02 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.34) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 05:48:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dUfsr6B4MZN7IRhG7DLi9VqHs4LeH/1V4LE7sEY3VbOn0MzpbOTHrKzZ9/GovYwOaHBqaLQzjNWxYbHq++cmU5PZLVeSnFxugbYkdWgfde22wSpvB6Vl9M90j2id8KnTRWEuK9K7IZS5Vndx593Rcx/uoHdvTJxIa0IL10jaLa5xCx4r5VZGpHV7fFfvRyz6AxwBIZEL1y0cAVMaHDq1c8dX/H6yZWmKq1aMz9QwFN9Ydmk9Y/GYw2wzulENh2hZVNzsY66LCWjW7lBeL4ng8JPkfujYA0tMzUqxeItYWHy3xipEyTG2B+F8sQ44rHsgqvhnOLa4nuGNTz2qCeSJMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=syIqhgIEIxRJR+s7dd0YnxT86aCjunOvttj8LE1v8ho=;
 b=nZ5CjH9dVAsvFJx97Re1UNsualiZWEwX/5bmi3kn4AY9/ScR8ml2UDIgKpV1gF7jSRFdArtKc2Wl43Xp4J5OcZtFksko9/SL3oIwzKmwPvUj9B7sYUScrouz63Zt5IHobnVbOvIlY0qqmLeTB5G9rVBMj267kOeXgcWP3yvjLOSzsFJpHs64WaO10sbTazuRfL5TV0Xu9inSEM00wi9wkC1Pv24FmxB7a9jv668tt8422q2n6bnVV19XxzenY7cwHGwAaAyDrBU+M8M1o3EogthzitGCIH+Sm0cuCaEejtVXNo5DZfiU3ASM4ri5vwSs3+f1+uMKeUKZ/cqlBTRoDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB5944.namprd11.prod.outlook.com (2603:10b6:510:124::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.20; Wed, 22 Apr
 2026 12:47:58 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9846.014; Wed, 22 Apr 2026
 12:47:57 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: ptp: serialize E825
 PHY timer start with PTP lock
Thread-Index: AQHc0lSi5OwpzN+VQUCL33W6r+oKZ7XrB6iQ
Date: Wed, 22 Apr 2026 12:47:57 +0000
Message-ID: <IA3PR11MB8986A77B11C5B62429BA95B7E52D2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260422123144.485930-1-grzegorz.nitka@intel.com>
 <20260422123144.485930-2-grzegorz.nitka@intel.com>
In-Reply-To: <20260422123144.485930-2-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB5944:EE_
x-ms-office365-filtering-correlation-id: ec690b32-cb42-4fdf-b7ac-08dea06d6151
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: B+6m3LxKILzJqm9xqBqOT67R3ix0dLslEiBwfYKa9yWSAwWHyXWMQYlLYxWDw0NOhTOygyEPVi/W775rw5HcXEQJ69pfSuw3Wc64gfisXnkrKvq7dWXrRPf9HtAz/asFZWqB/mkoS2Lnn94EnKIFdpqW51iAAvOXksNFN/C5cYQKu4q9ozcZElwDEUSaPws+qmVpbNMwaia/Fvqy9kmYBTzBO1hV/HcdeBgoeh3LhxfxczhLI1nIhWR5geoKDhRdmwozh73KnUb9oaEUdwteUGN60cKytcJzOq++9N88bur8OS5bl7BwSagXOTkkxaU4toLjvM1cJCAryJy3O0rULnWbsqczIzkVklc7UfN6XXKBtKerQBSu4kQXyOPKW7MQxUS3B9uMUlHEps/As/tMxf3b2/ubdlqQ4BnzZBDC5E/8BDvwfZRXQQPddecTS79SOFchIFyqCeE8Yp5Sav7OeYWIhunn2pYNsP3fBa8oX+PjWXnwffC2LFos8P1SAGjvaYqp369jjUuRITUHalnOzFMVbwpTcmv3oUv9FX1wtwHDe0QQ7aMZ7yte3W2BGrehUVvJML9vyXsFLd/uXSnefJpDa2tDls/h8NKu62/9PJcAS8bMRfpBcTOUnN58f3HfBQeZmdL4vC8P3i61TJi5gz+FE4WKbTHDsEagdTCLWmR56cpDVwlidSUYMrfK8IBX5qaM9P6fY1QV7/QH3Pq1KI8XuOM0r7HeZwpLvA2VUjFXLqjb97+WLpDFQy9ZlrEVyeskx0LM4enoT+WIHxJYgcGEJrAJ0ADiBJI3MAVG0+U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T95jLwMUcoDuICVM6QHLL2H5+MLB7dvLpaxos0Cp4PfGeCpBoQ/jQb4bb9fW?=
 =?us-ascii?Q?8ArfegRXjEhdafSWy+AnBFOTqw3y8EpitaWsf2dFptm5xBnupXqzcznmLSYM?=
 =?us-ascii?Q?LhgTTWdOR3PxeUPJfVqd+Rpk3RzoE5hPmdbnwKXBU0+D1DY8IV3fS5hvOEWf?=
 =?us-ascii?Q?8tWE8UOtI9oeKQ3Pe9kl6PxvZ4iFCn0j3wX+lqlk1Bu1L9PmcigXUJepFTMx?=
 =?us-ascii?Q?clsKI4gbalbYnJ2vkUrTqDszUciAtHZLJb5xm62h07CZmv7VWXTJZ+LnpD+I?=
 =?us-ascii?Q?dwzqpbJym9gi4RZnRKEvx1fUtY+M3fhaxWZvhQh5rDDB+AR5JDuXkqxv90yD?=
 =?us-ascii?Q?P0l9GSjzJU4L68h5K6CtY8LIl1/9GmOHX1Neuhx2x79O/KE2+gKIVNmqlXke?=
 =?us-ascii?Q?4sN7pSj37t3G4bdSUpJNG3opKq6sIWtg3hCJc7d/5s3rMRL/Tmia5NnbQ2Np?=
 =?us-ascii?Q?NNI4zPp2YKqXNyhsbG9iIDZENEOuJAAexppv1DPWjr2wWGW8tHCeuLkDEmBB?=
 =?us-ascii?Q?2D0587giEfO2FZAvT6YBMRvrw0p4Kfc/hJT4wunS2OYt0f5o2sWqmSCGFeVc?=
 =?us-ascii?Q?/WGylq47174lenAEk1cPBFY6VGyp1hMbPRgrVr1Il7CBd27vGK7sWIKnhEma?=
 =?us-ascii?Q?lFMShVwlY7Sn1f15DCrUi7RA/c6N7seo7wBTGvrMPvn2JnrZiCq5/NT9atVV?=
 =?us-ascii?Q?/XU+nZW05wOvTH15DI4eyRgRs+TVYAgPzX5W3wnGc0YECW5loYc5pr4HFhlv?=
 =?us-ascii?Q?NlL4OTNQxQh9oExgt9F++W4h2wYU3fq9E4xV990gYQkiMmVd64+TTk8xEksT?=
 =?us-ascii?Q?YciRYTH37mLv7QLne2Rq951Abat1LeXlAK1kwq44YbLCJ3K1O7nETk/NkUsZ?=
 =?us-ascii?Q?IKH0wD7oR2B5IBA/S94o5GIkp7Y/QVus9W8pyhygfyrCyKs9RD4dEiTdjxJ7?=
 =?us-ascii?Q?EE2/pxcE8r1E8rD3oQ5t0e7iDP8T6Jf8SXbX92pim8zAb9Ck2ca6DOKVaUfc?=
 =?us-ascii?Q?zMZX+yD/gglLcQ5RodlcCA9Jpu7W4T+ZUjhhMxL5fe6CS8rpRLVI29ZGBye4?=
 =?us-ascii?Q?fAPR9CjiGEKrY03ry4mSk1DpWZ82OzLqlW3I+TLAQAQKF/gXXpggoVL3j2j9?=
 =?us-ascii?Q?tU8kFu1/VRS4qGUQLLw2ZjGcvTvFu9cGzIbaJnDMMRACg8QM2gGEq9qG6eki?=
 =?us-ascii?Q?7B5JcaxfQIHDfEIx3IVH8BBM2YDKDXuX45STugiXM2bgERLJrkdcRdU/dteY?=
 =?us-ascii?Q?NbZoxORaPOCaCScsH6GU/BNPckc5Du7TFg/FUf3v8ede0W2U+EfnuE54hl9w?=
 =?us-ascii?Q?58e3iQxp0Wm1Lq4mgJkwzC1asxIqYk9NWQ7WPbFVWQdkPOPCl2621E8uKwTi?=
 =?us-ascii?Q?DmZWR0LGWcN7eL4cb/P88kqVc1csretjZgm6yVFmLAKprd6h6WB22hJZ25c/?=
 =?us-ascii?Q?dRxmW/GXdrl3qDM+kfcwskJ7h0d3K3+VXkySpYVn9ShdL6chMGVaMVcFwSOz?=
 =?us-ascii?Q?Oyv0U2Tyznr7Ja1bzLmBTe0EonO/4OayxxRwx9qGmXu7zuKt1Y/5XSwNA1X3?=
 =?us-ascii?Q?TfxtUZ1ni+1XUz/uBDz4w9CVtk5wPCZIoz7MXHHatTLXgzd4dZVwT4beqU9K?=
 =?us-ascii?Q?erRIGPEZlcK/dKMYzhwRgWXD+iJWq9mVq998fA7VHkS2EykgRjrJrC4IH+4Y?=
 =?us-ascii?Q?gfqHOLzFv4DJIqueUvEKjPzXZ2K9LPhrQ7HNgaWxJS3nmYhQUlWRq16330Vb?=
 =?us-ascii?Q?WEocIKVpyeULijLXxONv2hzH4dzb6es=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DRsG35Ad9ilDg6OfOXlp46rf6XbziY/zOynCGURwwLbFK+vFih6Gh3bxu/gCVXuSexl4rjdMdFGOyUYSYAR/JG94Ieyp88SYBZ0M/ryrzy91Xo7+MLSPSsD/ww+aVf5sKBJzjN/NFrB7l21vM6CmUqZGysqFf+CnXM/yPgwXxvDCfQ//FhBrE71vwNYT0RGJX+O5NYYRfDyBJgJkaYH8oXFRLwRTe2wv+aFWLxmnewgZ7GRd1lqtLyb5P2DyOk96j6OvynJsQB1fpxovexdKhrzUNh7M/mlnLOjUqERo1s7E2aUNWTcwup0vA7e8/KGyQE/6PPkg4rantf3/bG8Q7A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec690b32-cb42-4fdf-b7ac-08dea06d6151
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2026 12:47:57.7568 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /DkB3GOqGVXteNDTUIW4dLu9OwrtUy4XdYxLBRU1SRu0Dq2F0daH4uN1ejvUgt4J7Q84fATzJaSOIJeEXanzYMrMuIWtDrx1pFD0GPwPveE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5944
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776862084; x=1808398084;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zFpO6n9Llh0OKu8qVpjxSR7N5sv+2eymli5M2m1WzQo=;
 b=TEPXNq3Rqo0mdzQ2Ug/hlSII/wwl8SVUrTZLBNQU3K7OjUKDzObwzsKl
 QuSxUbElMez02CBN1TwmhkhbAHZrPqIc+So9WHOIxZrDhM+5yaJ6UJ6o/
 sMTssdcfBQYyU1lH6hQQYEppeZdhNk2pKE5jBlEudQydf9qjUiADycEJ0
 hiF9y5D2+ejksYBuHzi34bA4oCEmYzMB72mm3ZnVwnfwaWgC5Vaci/7Eg
 jsbw3l2SSp7UAfZLJlsn76Ty/xmp6HEvbWDigqGwIemDgTVzIlJsH9cjX
 nt/wtDkBasQTZEIX2Wop7Ntt44Wl03R6sdNsJ+5qpv3xLeukHtSr2JV0U
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TEPXNq3R
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: ptp: serialize E825
 PHY timer start with PTP lock
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: AB917446273
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Wednesday, April 22, 2026 2:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: ptp: serialize
> E825 PHY timer start with PTP lock
>=20
> ice_start_phy_timer_eth56g() programs TIMETUS registers and issues
> INIT_INCVAL without holding the global PTP semaphore.
>=20
> This allows concurrent PTP command paths to interleave with PHY timer
> start, which can make the sequence fail and leave timer initialization
> inconsistent.
>=20
> Take the PTP lock around TIMETUS registers programming and INIT_INCVAL
> command execution, and make sure the lock is released on all error
> paths.
>=20
> Keep the subsequent sync step outside of this critical section, since
> ice_sync_phy_timer_eth56g() takes the same semaphore internally.
>=20
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C
> products")
> Reviewed-by: Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

I recommend to add Cc: stable@vger.kernel.org

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 672218e5d1f9..8bb94e785f2a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -2141,16 +2141,23 @@ int ice_start_phy_timer_eth56g(struct ice_hw
> *hw, u8 port)
>  	}
>  	incval =3D (u64)hi << 32 | lo;
>=20
> +	if (!ice_ptp_lock(hw)) {
> +		dev_err(ice_hw_to_dev(hw), "Failed to acquire PTP
> semaphore\n");
> +		return -EBUSY;
> +	}
> +
>  	err =3D ice_write_40b_ptp_reg_eth56g(hw, port, PHY_REG_TIMETUS_L,
> incval);
>  	if (err)
> -		return err;
> +		goto err_ptp_unlock;
>=20
>  	err =3D ice_ptp_one_port_cmd(hw, port, ICE_PTP_INIT_INCVAL);
>  	if (err)
> -		return err;
> +		goto err_ptp_unlock;
>=20
>  	ice_ptp_exec_tmr_cmd(hw);
>=20
> +	ice_ptp_unlock(hw);
> +
>  	err =3D ice_sync_phy_timer_eth56g(hw, port);
>  	if (err)
>  		return err;
> @@ -2166,6 +2173,10 @@ int ice_start_phy_timer_eth56g(struct ice_hw
> *hw, u8 port)
>  	ice_debug(hw, ICE_DBG_PTP, "Enabled clock on PHY port %u\n",
> port);
>=20
>  	return 0;
> +
> +err_ptp_unlock:
> +	ice_ptp_unlock(hw);
> +	return err;
>  }
>=20
>  /**
> --
> 2.39.3

