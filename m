Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D6B895304
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 14:32:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCE4A81F31;
	Tue,  2 Apr 2024 12:32:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q0iHngcm69aU; Tue,  2 Apr 2024 12:32:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CCAB81FC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712061126;
	bh=mAsjXVAVto4TJbog0NCKXQC/rmSCv4oOsFAWLipR8WM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r1ezbDimpEOsqNPQsuOkV/Hn3CRxmdDs5cF91qSjoi9ue5/X2akzF5vPNH0/SHLGG
	 Yzui9jWUT6JXhmEMMAvQAIAHGlB2cMnJeouGZ8YFwx4O05CU98ZIEljcxYlXgJntCh
	 ARHfgLEBgB+X/p6Zy2XEbCGEAHITgJ5vIQLUg7xNjrkCoJ8TTmZrtsDfgPf4dho6oU
	 AF11ZiqXtuZPh93OLItpmBDQR4+1r0/kos5x2XMcL44z8q2EjtwUxkZIg9ScAwdlvV
	 BzXZf/x0Zvj5HQx5p8DzkOgwQQAQSgXs251Tpk1mGVw1q4fKpzgszaK71010jsfWwk
	 YsujzMYREbk+g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CCAB81FC6;
	Tue,  2 Apr 2024 12:32:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B62C1BF314
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 12:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 568F581EA0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 12:32:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 87JMXCJIKboc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 12:32:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 86F7181401
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86F7181401
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86F7181401
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 12:32:02 +0000 (UTC)
X-CSE-ConnectionGUID: cJykCYuFSbSmhglIuE3xuw==
X-CSE-MsgGUID: YWx4bjxOSFyXjAMkzG1bsQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7096201"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7096201"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 05:32:00 -0700
X-CSE-ConnectionGUID: lot8+QIrSXCzpvAKFPgOgQ==
X-CSE-MsgGUID: 4cXvY1jrRECnLy9YRVeMEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="18108272"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Apr 2024 05:32:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 05:31:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 05:31:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Apr 2024 05:31:58 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Apr 2024 05:31:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eqkq+QIMbdaucPLMEx0Ty+UX9I0Ylqb69jjheQ6PzsEL+TdHlaTHo1fbNgGjLXowj+vj2u8bWXlyOUDYbyGe5ZStENFyKy3BXbWOkn69/ROSlygvSUgn6vItgiHnRnm+JQJ8GG0nUN2nwNuzTNzFTfH15kbzL0usWJRXZcb6iWYe+Iyk+jq1siDcjpJVloKaz8SFBPUyStY0bdrk7lW73tf561wrQRnrRmuigQ0qiIyctpPRhEc+pFYYFCwzpHcR9xIhEbG/FZlAQQjMvXZN3nM7fTeTrYb1Ax7CGrpQlHrOrq6KsotdlBlHTql8hE+ajhhE69BvzM/3hD/0k/6BuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mAsjXVAVto4TJbog0NCKXQC/rmSCv4oOsFAWLipR8WM=;
 b=FdIYdKm/UZGAgcx1jFOCcspx9CoiuvW19o5p9PmL6hWt8Hb7/yI01vbJCNwNqrBQbKdBto6F8V2rTLDfQvuOWXWCwlHBSOXtAysLAcVo7jrvtbyr9E2gjuYZ15RSePLzrmDuSRwCyhG+IuNz+EErt6wKy68uS6q9UKKsUhBc5xunDxCeC5XE4oF2wwzsILG5TB8QGNNuwkldzd5G3qAC5EeOf5RxGyT2JablKr6FfW6cEgxJH195AZrDnPX4Pa69WUdMS6FL1rFewUI9ipzc4EEMy5yekM7CyEQPh2I1D4ovPhZXqrmLnqDXo/u/NKCaNr/aE6XBrUIW9ThtWL1x4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by SN7PR11MB6560.namprd11.prod.outlook.com (2603:10b6:806:26c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Tue, 2 Apr
 2024 12:31:56 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::b022:a668:b398:77a4]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::b022:a668:b398:77a4%7]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 12:31:56 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v4 iwl-next 00/12] Introduce ETH56G PHY model for E825C
 products
Thread-Index: AQHagfSfyhXuhZGZmkykrlYPlfQpk7FO5u+AgAYGqLE=
Date: Tue, 2 Apr 2024 12:31:56 +0000
Message-ID: <MW4PR11MB580062A340F9A03B3780EF64863E2@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20240329161730.47777-14-karol.kolacinski@intel.com>
 <ec2aa7da-a3dc-36f2-39bc-052e9ba97de0@intel.com>
In-Reply-To: <ec2aa7da-a3dc-36f2-39bc-052e9ba97de0@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5800:EE_|SN7PR11MB6560:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /iPtlagWKIdJNfRYhkt3uaE+/c5PfUNYMynr1PuELnpiH5C0awM5FIOWgXqpsV8WARTrB51VIlRXr+jcwMEWQBf1wjPmjFuZy0Lq86FqIDJ18NLWALXMxOmsAY24zM9TJV+SLxCFegqGvwscy1j6r8Eyt9i6hUJmv3lhu8zzh1QhDr+eWEcGvLcAno53YwxY7As88nmqIR0dxiS9RctyRPf6rtccLR15gDnRzjblDl6XI6roQUFSaxpuSY/PB+rUtxuvCJ3zbSY62YA0WxwAyK/7i8VkmHriNGphJHfXfhaFAgHVNKVLqrTQn5URpK/KKV3rgp/v87zwJyiOAvRu74dVCgsJOWqjTws9+Uv9xp+CA3oL74ftH8NJ/v5g/enEKBKBRoy4/e9m19edj+BG/Ufd5a4/vt9qyPye7xG7ouKKKF82zj2rFB6L9sM4FotuhMzV+kFJ7BwIUmnVvpxTM92S//vCEMCqu3+GR81Ta0oJ7K0uom/MQxAHFS/hgK9QU++kbUdtPc0EXdiu11K6VqyGRnvET1tQUQaGOOiVTGPjNkPS1kWdHcsAKsRTszsm4WyHLZi1b80wmmKzzTVvuP5uQ4g5AX2Ztw2mQbQJfkCHgFHDxzjNzI8lOlHmGgeMtFX+YtgGN3sAVp3bIaKFBKXu8stea2tYZBgRkx8PDRk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?3w+bpPP9N9kN9KDiMTOlCDmJaQoHJs/qQzDpqvU9O3o/YC1AEJycqUifyj?=
 =?iso-8859-2?Q?mV2m6f9HRbUoqZYfyhivc8B0WnOngULKUQxG/glWzPWj4ul0pnHwpsbmjV?=
 =?iso-8859-2?Q?wjWiK/8fBm0weZq+S2KOwlNMtr+MwTaf0Ygqbi+DjstgCSphq2wyhkyiYY?=
 =?iso-8859-2?Q?p8GTqX6gn0QIC+DaKAPDiVtHNi0O1kFGEWuJEU1K21O4XTlC2IAWHJ+xIC?=
 =?iso-8859-2?Q?XA74t2KjXWJpmKaPa62eHXTvYynGnylHLKPqdspq4wQlKYm9+RsZTEMrGJ?=
 =?iso-8859-2?Q?i192JK1A97cjFC3UCfvPQJlveA9CQOi3649N7oF/HliMxNSU4qPi8hTMzr?=
 =?iso-8859-2?Q?B8bFbnB8fk8AJgi0Gub7iTviL57BVjdL+u4da9ErEdNRCx9/jQd4PL5+4o?=
 =?iso-8859-2?Q?tyLmIJg/NH7NRRwfuPvQsAaZD22S/zOLjE/0Mq67u0uwPR+0JEMvGtaAUq?=
 =?iso-8859-2?Q?com21mrL5LyAG8kAdoA5bNSWb9nCmjM7R2/4lDapzdRCCuWqUoUjT3JR4G?=
 =?iso-8859-2?Q?AjMCIqlwWFpD2ufMFzIStCwqnARjJSOgDDYceAt84+dtSqWI+ZltYWf8Kf?=
 =?iso-8859-2?Q?uwD+532lCZ1bKlbXYNNl1cotVjV0Ehzern9c4BT7ejfpsH0oXTCR/mdZ9Y?=
 =?iso-8859-2?Q?LvZVO+vlp0Vue9sto+lsrNLm5VYhwYztDnhFKmxrsVgKGXytPsgN/1QuU8?=
 =?iso-8859-2?Q?AQ0islunKgMyxXixho0eNEf4eWLnixQ95jZkjZODboKQwftaodziv9V+0C?=
 =?iso-8859-2?Q?HCVnt/Sc/viEWpgq2oniPxf62Nc/MHRTKzNzwG/x5RhZS4WTraStGwiiz6?=
 =?iso-8859-2?Q?OV/uZZ9OWyVXIzsKbrnPeke+WbPZZbfqSYBSWafQAeFwO9RhOZyJkVsWcm?=
 =?iso-8859-2?Q?uVKdSOcUQZ9fN3EyGDzv2ZQx/U8HBoZCCCTHZVc988KM8QWsHBSshROWCY?=
 =?iso-8859-2?Q?gzeUE6ao92HUcYVinXVEfYoNnZif9emCBDxfOqROyJ2lmZWWvb6C5u6mxw?=
 =?iso-8859-2?Q?fLhiVzqv/aZ8I+jagusEjc0KFI08tjuWsX69bZ4R6/ViOghxA/QxgGaw46?=
 =?iso-8859-2?Q?1WsrxgmJiiqGwVgKF+gXhPgLDsPb4pdJXf089k1W9EDWbwry1k50uslZij?=
 =?iso-8859-2?Q?MeZzRV8irgbk629EhAxI+jr1WuZJwXvXCeKObH8HVtesqGkWJYfcR1aGlj?=
 =?iso-8859-2?Q?2fWEg7fLVy6y1IzINQaLEn5k34qZSlx5kf9qq6LFxSHYP7vILaHHGnMQCJ?=
 =?iso-8859-2?Q?EQXynNMZGdSReo/mD+A/cIy2ytv+NpYqVM8ygQvqvff5Cox8jx4gddi3Om?=
 =?iso-8859-2?Q?FRH4WK3YxDsKyPxp3ecpa+DG9HtwtRs1UvyoFIXRY/HX9fEe1Tgk/rodBB?=
 =?iso-8859-2?Q?ALkHRySQSstBVgbyrMwH96B1aHacdlWC6Y+BZSukmc9FH8atEZJEQ1UV//?=
 =?iso-8859-2?Q?lwuR3jp0PQrSV3x130s50ygvy5Y1uhH8a4IZWSJj6hrx2bsHmEeAPeY5ld?=
 =?iso-8859-2?Q?cSOVymvZmnXqQJrXa4isiMimUQt/rjY+flkVk8hjYXoaw64EYUH3w/oYdB?=
 =?iso-8859-2?Q?RnwSIJvmSuZ2kFjpVqmTk6K/d8mPs/IX/LNSWijJLFbhSLB6zJQJ2WgHp3?=
 =?iso-8859-2?Q?OL+bJPC+Hj7p71soILHYcfN47uKwLvO2t/DlF2cPT/i3TK3/doP8iytg?=
 =?iso-8859-2?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90c5098d-76ca-429f-a0ab-08dc5310e258
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2024 12:31:56.1541 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HDDkykSLWsOssgmG+Vv7xF9rgzsQrpEdH5quMn74DJjpCFAXy6i9pKrfo7F8IYnjNivgm5++9jK2mOi4Ye5mJi2vGyjOrHkKEA9xW8B6lfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6560
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712061122; x=1743597122;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mAsjXVAVto4TJbog0NCKXQC/rmSCv4oOsFAWLipR8WM=;
 b=msbHXwhBe5BcZWYBoU68HTkH6IVUsyHsefjE99iBH54Y6hm+r6GlNt/g
 AxtFQ0HaJUQTtA8VeyojFR3fr24zeXk0B4LmJ3A81u5ZaJXQUyjXKESOw
 jAr9nao5mzwCIYAjkrkvp8//UTzLpUyjORtuHwgCUAIZ0VdKpL7zUUyrM
 Z/JGPqCwhsRCAmLmKXSN2/VjX4fHwdjdwutFxHlNeZLeK5UNzOoF7lwJ0
 2Ueu5X3Y3JPi5y5glJjdzkCosD+0c7gdmvGmO8580F1ztWSSg8h76Of3p
 65opZYMnTtKdrx8cfIWjP0El9vWKf2+VvHYHKXFlT4GcUqRU9zO1Jp97Z
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=msbHXwhB
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 00/12] Introduce ETH56G
 PHY model for E825C products
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Anthony,=0A=
=0A=
On 3/29/2024 9:23 AM, Anthony L Nguyen wrote:=0A=
> It hasn't been 24 hours since the v3 [1]; for larger changes, you should=
=0A=
> wait longer than that [2].=0A=
=0A=
I'm really sorry, I forgot about 24h rule.=0A=
=0A=
=0A=
> Also, where's the changelog?=0A=
=0A=
The only thing that changed between V1 and V4 was patch 07/12, which had=0A=
only minor changes and it has the changelog.=0A=
Should I also include which patches were changed in the cover letter?=0A=
=0A=
Thanks,=0A=
Karol=
