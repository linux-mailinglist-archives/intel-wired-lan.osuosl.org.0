Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E24286E445
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 16:26:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54E6D61742;
	Fri,  1 Mar 2024 15:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lp1MID7JM-au; Fri,  1 Mar 2024 15:26:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AD8561070
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709306794;
	bh=JbqvMuYhP+dSsMY83WipJz9X2qr59x81EAYFQNL6XLA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sLk9vrS28O45UYfI2KEWSfW1o9+nWytipmOuUB/4zRL6URj/ZtuXNkIZq+ev5R+83
	 XPI9F1AjX0VlKCn5fZIlBYSelkgchokW7DhZ0YJX5Pnk0ECgll7XCG116uphCZZVVf
	 W95ZBLXSctPghSI4Km5HCnd3VFtrXMIr84i8XSnhBYz/hQw1XXiw0fYDON3VkLqfx6
	 HkCOhzpIg6hy7K+WTr0Hn6YJQq0REXxbRgPjckla5ic5jrif1YvlIlP30A01G3twxN
	 sMzgd9noPKdJKkWG+FJj8x1ojE0T7PChE8Dxb3llgK/ZsVuH5Gu2SKyqH72e+l0SxN
	 vCo3hMVt8HePA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AD8561070;
	Fri,  1 Mar 2024 15:26:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38E841BF326
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2629D82EBA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TkGhP75KdWOQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 15:26:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6D0E682998
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D0E682998
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D0E682998
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:26:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3698862"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="3698862"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 07:19:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="12772103"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 07:19:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 07:19:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 07:19:20 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 07:19:20 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 07:19:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CaGL2NxLYyvY3Gtlu6sjFkymaB+G9TeHVkq1DB2ZBEtZzYitmekDax1xX1y4z9NDS1C6mV/SY/+9CBurCVA7QJ2is2T7Dida2MQXYiROuP7Kd1orsyJtoObE3O+GQ5CwlpQcilppCb9PiPf6Nz6gk9m+1m6iuvKIyoi9fmcIuhwWj6HvvbGFnxX7xPkj+lfFf2yoUYGffMt6K1c76FBH5bGq3TvklnrfUVYDoW1VcQgIEWv7HDYd8+cHuq09cHP+ll0fJP73lJdL0mAUHZfP3jWVzEnxV0Ubur20qi35FejCbcmh6h5LbxVJs/mJre9313iDnZCnZzVBKx4UKhsJWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JbqvMuYhP+dSsMY83WipJz9X2qr59x81EAYFQNL6XLA=;
 b=Qe2c75x6nvg15QGcfHSmDHGrFMEGcQyfKUrq7Y49IRKq3dbgRhHuzRAhggN8MTFqQmXoC9+1DW7h8uXgwcQHhO1NVHSMukg5mhsA81g+DmTijPl0n/MTqLnFzsE0PakvN40YzRGH9WAD4pJPCJeRb8xw7+/cPp1iQj3XG6OO8+HtEyqssHjGIPUqCDYnAPVUFrbwXuUec4NdPqMDEnwKKEcreBuQWgpcq07FnBgi+k46d5Q5dFIDgqd0eIwCYmD3jPJgyF3dx1KVpSguoAo2e+VmiVMboQAKbFHoBm7JDW8lq5MCz6p9B2xWDEN2z7hYMO64p1IMtbfkfySXRxXL6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by PH7PR11MB8250.namprd11.prod.outlook.com (2603:10b6:510:1a8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.26; Fri, 1 Mar
 2024 15:19:16 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08%7]) with mapi id 15.20.7362.010; Fri, 1 Mar 2024
 15:19:15 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/4] ice: pass VSI pointer
 into ice_vc_isvalid_q_id
Thread-Index: AQHaYSSDNYs7vDC5FE+NocJ2Eq8OEbEjFT9Q
Date: Fri, 1 Mar 2024 15:19:15 +0000
Message-ID: <SJ0PR11MB5865A76D7F0162E3DE5790438F5E2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240216220638.2558451-1-jacob.e.keller@intel.com>
 <20240216220638.2558451-2-jacob.e.keller@intel.com>
In-Reply-To: <20240216220638.2558451-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|PH7PR11MB8250:EE_
x-ms-office365-filtering-correlation-id: f42f3ec6-913c-4dce-7e9f-08dc3a02f54a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: afPLK7YUzlY0uIA4PozHGxIER57ASkyU1uDSNpuZ2W4wwDDBZpfmB2BhIG/rIicja5fl7Hjp0yBSWhxA/1lgjqKpxKsRJfDBlGIQLXFsnxVjOUY5FQBMRuIwYegZlSIfsrpenRQ+Z3fbShAXd4sCylKJhVl3QOM3Sja+7+DndSScKzdy7P/tFejOzi9m60fe4Zcz0JlSphMlyeXo4ucmWI68RxE6mVU4zhwbmsW25pBt+Zq3nvINY9yo5Ge266ez1W1Eg6xxHNZG5vuceZMJlIAb6coRJIXGlvfyxu2dl9hEUupfMGuAIuNtEiAkhl/tDqQeZixzKVXfNjB2qjq/m9G0jlC0NT3v5LuIRbs5yNXCkFzh3ZeE24Vtke3N7zLCVBE2G59BeztauckKVaW90t12y+rQd8JMFasOjdfStiIrKocUpWDNUKspTBH1UG8GXW2tyqiqyD9/YfCBqnUBKpYC/kowgv7DqbpD1WCB5cs9aT9fwClojDUqFDN76CrihecWDZ3VGQi5mLVwDY+Grl2HvcU35tuU12yEOqexi6022MTPu6IYQQgjsdZqrchdM49YSzJY6EHq3CcccvbB27N49wvzNm+Bfdyw5I1rory7lEc6R/9uY8GnBG61lr+Zo8Rur2l7lDK8Foh6N0cUTKs/yscapvDzhn9vOjReMT9L/8hej2QmnflGYZFOkWCTqalGOUjlj8vipHJo4ve+KczA5OHFRkCXJwX3yooGq0w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sT3x4X9m6+g0T/Z9liYbLGcOHfqV7XoH8UiF2n419jEM/Mts0Wmu3rCXj45V?=
 =?us-ascii?Q?tEgfzR6awKAc8pqUCnkxvV/d6koywqYQMApGFXJjNLPFD4v6qDFIbOXfBJ6L?=
 =?us-ascii?Q?NpZO9Oj2CopXe0vXFHd3k7y3LAj41QiZwP9AhL1iv6RFno9IEXF2Jt2yB4JJ?=
 =?us-ascii?Q?5Oc/nv9WJm/bFXlGv4rWpB4I/PDfdL+EkTZl4fKR3r1NsBp4nsU9fgz/jD1U?=
 =?us-ascii?Q?L/rCjCOLCGG2e50kFH7lPSQCBBUEPB9yxBRtOqIQBw2B9PzzVsAr2rbBLjs8?=
 =?us-ascii?Q?gQrWV2JNCgw0S1Pk5Nnyko9RMvAw4lee1pRXvGFwLndTv7VLQ+b3sN4Q9iDN?=
 =?us-ascii?Q?FAMOcLl6h6/q7QCWy6KHf1cO/Hz3zlexbustqlrSw9eoWYyKqh0e3Ka0Hay9?=
 =?us-ascii?Q?4NnJFjyTkb+pa2QvvHZtqTD+BcOFjnTpMz3XASrHSZK9k+R83Iqx83kSKx5h?=
 =?us-ascii?Q?+Z7FFCRfaYzM72je0M/4rA4VfhJ8xJV6SV7D3d9kpcHkebhIqYKyvVz6IoRe?=
 =?us-ascii?Q?K+cyXuPFsWBuFv+VMWeAEdNRkHzryongUxCPDmS25L6ZG50nF2EA/JywU0Sm?=
 =?us-ascii?Q?Aq2qSMvXPXywyxjq2V0slp0w7xvwWLjXbO/nxhx1c7hiqnpGmK14brnh9upC?=
 =?us-ascii?Q?3O7jUOsqqDLdHKCx2KpVFmJ0r4sA7lpdXPp4DZfpbw2uPvrZI46v2NQkAAlo?=
 =?us-ascii?Q?yzKfMV7N3tvSlvaWCfgudjrqobW0/p+TWTIZCYlZYT5BO7N8+PzywUd3k6j5?=
 =?us-ascii?Q?xPJh5O8eBry7ZqZVVZEpW5To7iFUHEiCaYVmmTT+7/r/Nm4P/jjzyRIa0m8T?=
 =?us-ascii?Q?g/l8auEhjNj2Jnc3XoRNjiSDTke5OXXU/u3datQdWiaK6qtEYfz4KE+/JH0+?=
 =?us-ascii?Q?2hHR818tQsdcSeedl3JDDonGsNMwCLGfRrVXp1CbSSca4C7AnrjYx6qa/K9/?=
 =?us-ascii?Q?9HsGObKRk0k9HaZuXDiXhfsM84MqkMiJVlfA3JKlrLLC5lHP/Gdqhs6BCJjx?=
 =?us-ascii?Q?AzZYAHbhWlEruRH9+r83aBFzyKYQpYvl62zKfMu3fAi8+fOHo1aPF2+exf3t?=
 =?us-ascii?Q?OQD44WRQQwfoQmLzKD64djK9yl9fFDDkhYpuR3XVxsm7f+rBUtNdKfFBiNm5?=
 =?us-ascii?Q?YNpLsFyoyOtF+Ia3tkmJuVmvJwybGpBCFkK3SVm3rA6F1MvVieGuEz1uZuMj?=
 =?us-ascii?Q?jggKSboBuxN34GSlbou3PB786vZpt/uAdFaYcMipEDijlgwKcFN6nTbTxKMV?=
 =?us-ascii?Q?UU0TbPGJgMxixqgbd2PiHq46mtd8dLuMs0Rta2rmzOPu/Xu798TFvypvrb1s?=
 =?us-ascii?Q?el2hPvoWGoDAt0e+fKYtf1vdkG/QTmW2vU9TI6gtXwqs7rhaeys6dbeeSGRl?=
 =?us-ascii?Q?RDxuWz7SON4UGvGEZfxQ6eJPrlnPt51KUvFX89pvKZuXxI8oItQTtjyjQN4y?=
 =?us-ascii?Q?7/63PccXl1Qa2zgoD4ykG3lz1LqN8pQIrtm0QPiPVzCqrhnlCG4kUVhBecfe?=
 =?us-ascii?Q?n4MR985imppLuoqasj3vLzfpO1fj13/ZkvHQyYFShZuRyxUdSTTEWKXaOMhU?=
 =?us-ascii?Q?4Pb8GKE/I28qqnksDuYWKMYUx7NomD8jPKSITYIq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f42f3ec6-913c-4dce-7e9f-08dc3a02f54a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 15:19:15.8861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HUjcnMJ/U1J3hbNcBYT/Sp84HwDwj6AbgEDXJLSwn7LxkI/2DKfHuBO8bhuNQ8YePeOj1Pp34J/5GV4c3PqfnM11KR4frx/xkFGGtfr7SxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8250
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709306791; x=1740842791;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5rCWIcT8NPhBG+brY5UpiftD5GxLBw3+UIVy4DMzJck=;
 b=Mqw46Vz7bazQw5bUa7eA+sVeorQhsZWZGkUYU2AF3rfebqxYrWrBnhuD
 CK5ox4OMPhsZCImF/YY4iAmwpSb+oDclmQ0OEe1yFsowz296+M3R+Ekhe
 rgzaiK87KsFwRXITiYx13I0XgQ+07rx6Px+BN5QugB7u4Gg/G1O6CMVzp
 JKs9f57h6UeoBeqDcMyW/ShA1Kz6CAOIKXA7lw3UB8pLMtMF6yvS1pNKl
 /uvKvuSSSnoiPoHAvuXAnN6n1AeK+y1MiH7uM/Y/f6iH5Dffw/ZWRfVjT
 jjLMUoFCRX2ORbkl0nkUBdC7zFFXNz0tBK6vBVR0V3XbHktRgSh23eHXR
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Mqw46Vz7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/4] ice: pass VSI pointer
 into ice_vc_isvalid_q_id
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, February 16, 2024 11:07 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN
> <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 1/4] ice: pass VSI pointer int=
o
> ice_vc_isvalid_q_id
>=20
> The ice_vc_isvalid_q_id() function takes a VSI index and a queue ID. It l=
ooks up
> the VSI from its index, and then validates that the queue number is valid=
 for
> that VSI.
>=20
> The VSI ID passed is typically a VSI index from the VF. This VSI number i=
s
> validated by the PF to ensure that it matches the VSI associated with the=
 VF
> already.
>=20
> In every flow where ice_vc_isvalid_q_id() is called, the PF driver alread=
y has a
> pointer to the VSI associated with the VF. This pointer is obtained using
> ice_get_vf_vsi(), rather than looking up the VSI using the index sent by =
the VF.
>=20
> Since we already know which VSI to operate on, we can modify
> ice_vc_isvalid_q_id() to take a VSI pointer instead of a VSI index. Pass =
the VSI
> we found from ice_get_vf_vsi() instead of re-doing the lookup. This remov=
es
> some unnecessary computation and scanning of the VSI list.
>=20
> It also removes the last place where the driver directly used the VSI num=
ber
> from the VF. This will pave the way for refactoring to communicate relati=
ve VSI
> numbers to the VF instead of absolute numbers from the PF space.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 22 +++++++++----------
>  1 file changed, 10 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 6f2328a049bf..29449030174f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -555,17 +555,15 @@ bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


