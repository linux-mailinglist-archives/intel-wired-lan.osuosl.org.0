Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFDB80C50C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 10:45:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F485611CA;
	Mon, 11 Dec 2023 09:45:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F485611CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702287932;
	bh=C9Jh/jQHpntls6khJXkAal0MA4YRzisQnopHfrPAEzI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U9EfQUKRGc2f3fPvzmHiVAADjlKsaVdbynv4PFUZnrMPWvuPE2PADum1vBUe2e3/p
	 UdpgXp718D4inerEK0ZOB035Fjqfk6LXMCsbhb9nVsX+Vyap84btselq49vMBQV1Ea
	 DVexSLpiIug8OcOs8+fUnB3M4pXT044nb+vKXnPAYcltAz6dE06A+meDC7ugpHYY9c
	 2xp7/iIUE8nC5mYqfMzlHPi7Yi7iu0rldqAYOHtTSS0nynRY3FWN74RKzocAu4glQe
	 SVA1c9FOA8yK0K3ouQT+BnW0RNf0+xa+u/s+KOlr3uJ1yIuY3KXE4Tpxz4eaUNgbgx
	 4I4Kq0hmPaaIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0AmRc3dGiEgn; Mon, 11 Dec 2023 09:45:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D50BD611AB;
	Mon, 11 Dec 2023 09:45:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D50BD611AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E03311BF342
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 09:45:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C380841681
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 09:45:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C380841681
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PFLTbhy0QL2J for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 09:45:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC60741624
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 09:45:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC60741624
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="16173043"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="16173043"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 01:45:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="838963965"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="838963965"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2023 01:45:21 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 01:45:21 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 01:45:21 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Dec 2023 01:45:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c4jkvYZ2KITZgHwwXf5Q9MoNHq3sR4rvpSy3KLCYT+NZjpRRf/AyJjWBdwWPfJ2hkDmDkMwxzXZ31URIUZn9/91cVfJHf5QL0vmCapVyMPvNdNu7mHvpifIKuk6afo+vJl1xl9m6oYAhrcJD5pyaYpdj2q72uncTuLtWTohkxf0IhPrM+Ar7U5hePUhadVJtVuzxmSXhv+aOeEUe7giFJotCedDvozcnU02AtDuH84U/a2mdgx2Ucvq5pEcxej55rVlU0a4V++fhXANwwmzYfSpCPJ4jkDOrmEUPfrwU3ON8KfBhGP9aINU5IQjCASn3z4dzeqXMKe91x4jtePMUww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IC7bt6ut0mxCyiYotUxDRROCRGobU9nbIzkr0dQzs48=;
 b=I2f9h+w5mj83SYIXLNElE4qNxAk2IMgLkyidNqE/wHIHLCrwpKbIzJ6NE/Y10kADDe9GjbJzWDqacoqAmXBgtKLV9Sp+xeXkK6MFQs/pajoSkoXi3DFrPMSAMvKsimcUqOSLEP7gTE4Yk++yhm6ACX0d6+225CyDm0c3TwzJI5xf2VlJLH59i2sunUfLgG7fJCwKlOM2LHhzF2dJD9WlQkRdbmK32SaAmSD9s2WOU0Aegb7W9co7zPUPeLwxM90GrZs3hT4ao+PmmuXTMZ56lGD5p00yUSQbGy9Qh1gsRFzTwluIcqkJO1zww9uPUYM3PgG4Q/OzSAIFPBvu404VDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 CH0PR11MB5473.namprd11.prod.outlook.com (2603:10b6:610:d4::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.32; Mon, 11 Dec 2023 09:45:19 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::d315:1202:838:9b76]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::d315:1202:838:9b76%4]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 09:45:18 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-next v3 1/2] ixgbe: Refactor overtemp event handling
Thread-Index: AQHaKbbUapXDIsgTSkm9rVA3FeW0I7CfKSSAgASnxOA=
Date: Mon, 11 Dec 2023 09:45:18 +0000
Message-ID: <DM6PR11MB2731EFF4B5E7BDE8886EA913F08FA@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20231208090055.303507-1-jedrzej.jagielski@intel.com>
 <20231208090055.303507-2-jedrzej.jagielski@intel.com>
 <f63dca8f-0082-6e22-5ab5-3b940b646053@intel.com>
In-Reply-To: <f63dca8f-0082-6e22-5ab5-3b940b646053@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-Mentions: anthony.l.nguyen@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB2731:EE_|CH0PR11MB5473:EE_
x-ms-office365-filtering-correlation-id: 0d61c301-554b-459e-a9b4-08dbfa2de298
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6LObJBFIIQCZ/mSFpyQc9C9I+Ge7g0NmsAMNXsbJeSuSHOfDNVxFjTWcL24JHiNlLdwN3u8vQR4+qzstGY9F7QQHKdoUbYBTinQZM2BAA/1itqzWw5w7wbPpfXLyjiqez8ZpVs4g2+MYhbU8UvuIq74YGiqvm9o2OkSLO69aESNiOv295t+brJ2FtwW/zWgHc45OTRiqdqkIqwVgDkSMfFpawl1BOPMCH7aUmicoR0jpoXOOItedG3/GXOJ4fcj8In9VoI9cPzVirKL1R2nL/kTya1shZwZ9OTU+hd5WAmvwSA5llcVbh3jNQZ7h/H3Xa8ERYIYszXe25nAIAvwPf+YI9NgvEisbbIU3TL10cyfbNOsCI6YFFxroP6lse710mSlwHIBRwpcjaeR+4AOZnpS4eVOcEuZUhx09KV/4enlKt40c7VsiqwwFOB30JdL6ZS1o9bLqcqEbInTZQs+Gs/U8aNfnTX4agNrwjmad0tqe/M7aTNL7lAhT1kQUrFNYH7d+2eoQkddjAWBIgNAnLaMYhBWfXSfk8tXeUVHNOIl6YLyuHo+YwTOubN5Ag+p8Hl455ZjYp0iAdjRh/LPWQqyDvAEbmeZey3oXA07cKDY0gAYoIiLKAROPI9AoowRU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(396003)(366004)(376002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(9686003)(52536014)(6506007)(5660300002)(26005)(33656002)(55016003)(38070700009)(66946007)(64756008)(76116006)(6636002)(66446008)(66476007)(66556008)(2906002)(83380400001)(82960400001)(41300700001)(478600001)(7696005)(86362001)(8676002)(8936002)(4326008)(122000001)(110136005)(316002)(38100700002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VitIbXFLUGdUZTBiNkZ5a3ZqSk9nRzZLbnNQS1pVczNnSUVuTWhDNGR1Wlox?=
 =?utf-8?B?SU5IaUZyS2xGUTFoY0EwZFRYbVBXTlBhd3FtMHNZZ2F2ZmttV0FFbDNoNkt3?=
 =?utf-8?B?SnNkdVc3TmdUTjl5QWRFN2tZTW1xbzN4QS95MC9CSHF0cHlKTDU2MTJvOWZU?=
 =?utf-8?B?ZUNrQ2ZuM3pkSVdzUTIrNU1NRFJ6bGVKa2FTS1ZLZ1NzdU9GVEtZQkEwYlEx?=
 =?utf-8?B?Zk9WczN0RnZOVzRKUm9mOTRzMHJYYy95TlJrQTdqNlZzYjhBaFV5aVdxZ2lo?=
 =?utf-8?B?am40WG1ReXJxS1hXUE9wdnJ1MnVoWXBTWGNjSkllcDQwSG92MlpjS2gvNWU1?=
 =?utf-8?B?OUtjaVJUY0NnSi8vRGJTVVR6VnE1TUNGNXZrazNuMXBTVDZZZDRybnRnblZQ?=
 =?utf-8?B?Q1NkYWhMbXFWdFVQM0xYdFZVcmpmcW5uNzFQYVRISzFGbTFxVlBtckpQZk1p?=
 =?utf-8?B?MXlxeFdTeFVFTGtQUVE4Q2pja1hzeU5xbUtIRUJlNDh3YldJZFI1OFZvb0Jx?=
 =?utf-8?B?d2I0UXQ2dXpMSVd2NW0rV25QR3lUZGtRMU9VR1ludTNjNUdvUmFvU3lCdEtS?=
 =?utf-8?B?aGN0aWdpbitnb1BkRzBkTWZCK1BJc3Q4aWd2ZFNiT1NCZ1R3MnlyZlBXbEl6?=
 =?utf-8?B?Z014bEFTR3ArdlJ1TTRCQ3FNN2NiWkViSGhsaGg0c0dDNkpCRmhLSmhHMXpv?=
 =?utf-8?B?blJoNE5Xc1g3a0dxZmpKS1l5dTdzTDYxSkhzeS92MEJtdFIrdUVSeHI5djIz?=
 =?utf-8?B?dHF5ZkxCS2UwcXpkZ09aemovRlE0ZE84WjlvTGt1aVZpdnVibHpCSGRrb1Y5?=
 =?utf-8?B?NHI1YWZZK2swZ0ZXbWpLVHJhbS9MbjI1Z3RpUmtLSWt3VDVHVDc0a1ZScE9T?=
 =?utf-8?B?aHRXUklVaDJHR1ExOXEycS9jU3V1SVVRcXpIVTBjelErZE5zdERwbHBkaGVr?=
 =?utf-8?B?V0tqZ2c3WHFTMXB5TGt0dXJ0Q2dLQUV2K25BNlJJSTFkWitta0I5dEJCS1FR?=
 =?utf-8?B?Y0s5R2lEY25pMVh5bitzNHVxempFQXc2U1pEeTdmalJndk1UYmFSbDMwaDdD?=
 =?utf-8?B?VUsvRGlQVUVCQlNLS0NONjJKbThNVFVSSE95WGZ4Z1FwUmtjN3lXNGk4dWwv?=
 =?utf-8?B?MkFRMzhNN01iMHE5WHZqQ3l6YWRsT0I2U3FFWkRFODdZTWxYejRHOGQ3cDVt?=
 =?utf-8?B?V0luU21wbEJObU1kS1RUZXFNWTROOWR5QmF2QW1qaGtSRWRaZ2p0QkhBUU5v?=
 =?utf-8?B?Uk5NdXVSY0VVVGVkbU1MQzNIdTgyZ1pVNVVXOTMwYjl5Sm1WdFdkVm5DcDY1?=
 =?utf-8?B?THMzRy9qbFd5NDR4OTZyYmNJd2ZrVTNzWElHL0xIb3pZQng5SkxwUjRBcklW?=
 =?utf-8?B?TzFuUFl1Tkg5Uzk5VVJMTkhid1NaSUhKWmV6OVZkd0F0aElDMnRodHczL1hR?=
 =?utf-8?B?NnhlaC8vZ05MeGlEQTBQMy9rVUpxRFpWbEZrYTVuOStIK3FrTThZa1Fqb0d2?=
 =?utf-8?B?SHlGR0ZLeTlUZzRNUkFXbHRmaVJaTVh6QW04V3NsZFd1WUkxQVZOYTN5emdX?=
 =?utf-8?B?RjRLQnQvT3dvd3V0RWVrQWtETlRUbW1ReXdod3JqYXVMT3dRV1dHZ0RSYkhZ?=
 =?utf-8?B?V2hMd1V5aCtmYTdsZ1hkMmRUSHYzQ0pzWEkydlY5VG14T3RtVW5NalJRTGoz?=
 =?utf-8?B?L2dZbVFPYnppMnI2ZExoN1FCdW95VG84UmpqY0NKUjJCeWticU02OWM1TEtl?=
 =?utf-8?B?UllpUlM3OHRnWFRNZGVIcnRFZllRSnoxQlU2VURmblRTMWY2YjM0cUh1Nkor?=
 =?utf-8?B?UTRGYWMyS0wyQU9sUEhEQlIyVnR0WHNrajZ0d2FqWW9NYWFuZEMrK01zN3VW?=
 =?utf-8?B?aXFiWFVCU0JJY0MwUzhMenZUYnpzKzNLTmI5cGVxWmtHSW9xakpIeFB0bjBp?=
 =?utf-8?B?REhURmdJSStsWDFvMDVob2YyOHQ4WlpyOXQ2OXRMT1VIRnAzZ0x5MkhEeElF?=
 =?utf-8?B?OWlTd21VVWpFeFByNFVXWDBwdk4xaHhNdC9Tc1NGZ3ZEY0xvd3lJN0RGRnBZ?=
 =?utf-8?B?NGJDL1AxcmVoU1pqc1pLWFY0bmtZOHphYkFpRlpJSGFnYUNLWGhQcW1uRmsz?=
 =?utf-8?Q?RUwLlGMRS/wba+E0WurTJot7b?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d61c301-554b-459e-a9b4-08dbfa2de298
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2023 09:45:18.4952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2VnSpEULQmXZ6koss10AKAihWmuhfjJxboJQA/ZQ+QWb+gleJyr+UCGPKQ5vlmuDZBTBewTJYAVb5fGkUdEsUKzhbghUp6cBvLd7tRbsQ80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5473
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702287925; x=1733823925;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IC7bt6ut0mxCyiYotUxDRROCRGobU9nbIzkr0dQzs48=;
 b=gxh6ZZL2V7WxQJQHq02h1MUMZ4Qj5VFZxlWNcMJT34ratNJNRgjd7dn6
 Zgi7D32uIEvbzpTFwqUv2f195EVagUd82ECsSiajYclD2mDDlblfR1FYl
 9NMhajQcRDAS2cacm4gzn8WlZOH/zw43pW8wS7MFlApImDZQhll8SSI/q
 h86GSs/FdLhdm+rlsuIynlw1Nf6ON4VtxL8/T66SV3NLJqlbK6mx4r+ZM
 OnL1jfTIlHLKNeZAIcH/ep5goHrXDifbS7OSBg++iwuctowK1YQJjj9VI
 EusHwa3ImDKTeFfFOxLns1ak/V2mgvOz1l7dg8v0RF4rP25mYZL1IJ070
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gxh6ZZL2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/2] ixgbe: Refactor
 overtemp event handling
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com> 
Sent: Friday, December 8, 2023 11:07 AM

>On 12/8/23 10:00, Jedrzej Jagielski wrote:
>> Currently ixgbe driver is notified of overheating events
>> via internal IXGBE_ERR_OVERTEMP error code.
>> 
>> Change the approach to use freshly introduced is_overtemp
>> function parameter which set when such event occurs.
>> Add new parameter to the check_overtemp() and handle_lasi()
>> phy ops.
>> 
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> ---
>> v2: change aproach to use additional function parameter to notify when overheat
>
>on public mailing lists its best to require links to previous versions
>
>> ---
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 20 ++++----
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 33 +++++++++----
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |  2 +-
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  4 +-
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 47 ++++++++++++-------
>>   5 files changed, 67 insertions(+), 39 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> index 227415d61efc..f6200f0d1e06 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -2756,7 +2756,7 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>>   {
>>   	struct ixgbe_hw *hw = &adapter->hw;
>>   	u32 eicr = adapter->interrupt_event;
>> -	s32 rc;
>> +	bool overtemp;
>>   
>>   	if (test_bit(__IXGBE_DOWN, &adapter->state))
>>   		return;
>> @@ -2790,14 +2790,15 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>>   		}
>>   
>>   		/* Check if this is not due to overtemp */
>> -		if (hw->phy.ops.check_overtemp(hw) != IXGBE_ERR_OVERTEMP)
>> +		hw->phy.ops.check_overtemp(hw, &overtemp);
>
>you newer (at least in the scope of this patch) check return code of
>.check_overtemp(), so you could perhaps instead change it to return
>bool, and just return "true if overtemp detected

Generally I think it is good think to give a possibility to return error code,
despite here it is not used (no possibility to handle it since called from
void function, just return).
All other phy ops are also s32 type, so this one is aligned with them.

@Nguyen, Anthony L What do you think on that solution?

>
>> +		if (!overtemp)
>>   			return;
>>   
>>   		break;
>>   	case IXGBE_DEV_ID_X550EM_A_1G_T:
>>   	case IXGBE_DEV_ID_X550EM_A_1G_T_L:
>> -		rc = hw->phy.ops.check_overtemp(hw);
>> -		if (rc != IXGBE_ERR_OVERTEMP)
>> +		hw->phy.ops.check_overtemp(hw, &overtemp);
>> +		if (!overtemp)
>>   			return;
>>   		break;
>>   	default:
>> @@ -2807,6 +2808,7 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>>   			return;
>>   		break;
>>   	}
>> +
>
>I would remove chunks that are whitespace only
>
>>   	e_crit(drv, "%s\n", ixgbe_overheat_msg);
>>   
>>   	adapter->interrupt_event = 0;
>> @@ -7938,7 +7940,7 @@ static void ixgbe_service_timer(struct timer_list *t)
>
>[snip]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
