Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF316DF980
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 17:14:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEA8183C03;
	Wed, 12 Apr 2023 15:14:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEA8183C03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681312494;
	bh=1oP61Jg3vKQSKtw/h4OspbPDnGKN0ppdRDUPmcKNhhQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kDCkp5EAoxBW74al6VXEJ4qWqUrxqO98lP7o/o35srnc4XIEaHTaJU1LXuelZgOVY
	 dp6OeHevdSvn3d8czIIqDlD+OPDcILs25an9k+KsfkjoU7Qu3N9jCoyXS7DUAYyTH3
	 HhYSHa+fAnBH0izyoOVeh2ckFLWfNg7UMPLvXE695YBNpTPZvdrhKMfrDhJe3GnAzA
	 rPUlcZePMi4Dmx3fzv0lghk3bW/uhNgrM53+IxoNu5kwWps6LhyToHPjWCwfLeKYgX
	 3tw1H30aEjhwh3Ka1yib0Y/9Q2ju5ECcAnt6iUiiq4EZADT+zJ1gnEeECz8D3eBiyu
	 mLAE5v289+VgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ildcM0pD2BSc; Wed, 12 Apr 2023 15:14:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BD1183BD7;
	Wed, 12 Apr 2023 15:14:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BD1183BD7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C392D1BF417
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A78C6605EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:38:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A78C6605EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oIxGO1hkf5FM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 11:38:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82059605B0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 82059605B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:38:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="345660656"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="345660656"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 04:38:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="721536829"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="721536829"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 12 Apr 2023 04:38:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 04:38:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 04:38:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 04:38:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 04:38:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QoqtuZfTc4nJMy5MWhrC7yAkhCjQPn7HDuaF/FFnt/F9HmXPnxmo24yBgs/bpLal5ceK4Qs0E1WUjrw1znFok+JyQ3J2gnvZLAUUOKvDVZu1XDr80si+GLlSnVqtSPEBfTqIvy8nsx+8SHvvfSjXZowbe/oSZp39hnxihzzXa73v9gw7IlmWhxdRhjiDbs3exEL8IWzG/+JdZgEXfCbYA7s0wYlowUdGGOrRrY7xG7EUdpjLwPZMOC7D49tBV8lu75hPBG/DjrxdiuCdpxPAKSAkLh35acSirav9RIroGA6E9y+8CNkNfk9KP+PgWJNqSF1AXhhEh2N06JU9VExXYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/hfvsYVSexZl4RoDjWHGHVyOXpHkiX7YSYgShp+G7tU=;
 b=gs6cTXonSv7NnKZGnaJlTFQ1fvssanauZ1iGEXgrYm+jPWbMPfbNaO4+eJnmxu43LnbB8tzzvp4mLKgBYCWnsysZ5N8iURwPuNSaSRdTrTsWfyvtLmYFwpiBIoqF10suI5BEayZjKll//bMLVjPm9rBpAaO28Lk2bkabtrPuJySoQCSxhPp80GYTXIL0IsCZhuzWnLgPlysRbqbtu0Jfn6A4td6hZ98H/ClOXsbs0HmbwdMXG5OBVlQgRRaylSbqKJe1UteauGLdf55eKRvxgMNlH7vn2RfUayviEAxgO+21JyUJZjPHgW8dEWAdzflFSI2d5RrUHJNY6ju9ELgaHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by DM4PR11MB6504.namprd11.prod.outlook.com (2603:10b6:8:8d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6277.35; Wed, 12 Apr 2023 11:38:36 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6277.036; Wed, 12 Apr 2023
 11:38:36 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Brouer, Jesper" <brouer@redhat.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>
Thread-Topic: [PATCH bpf-next V3 1/6] igc: enable and fix RX hash usage by
 netstack
Thread-Index: AQHZXNeYSjXaM/mM1kuNy5qWdOfXCq8nqwNw
Date: Wed, 12 Apr 2023 11:38:36 +0000
Message-ID: <PH0PR11MB58307262FA2F2D68CBDFE7F8D89B9@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <167950085059.2796265.16405349421776056766.stgit@firesoul>
 <167950087738.2796265.17812597177704199765.stgit@firesoul>
In-Reply-To: <167950087738.2796265.17812597177704199765.stgit@firesoul>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|DM4PR11MB6504:EE_
x-ms-office365-filtering-correlation-id: e23cf477-409d-47bb-96fc-08db3b4a743a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 87A8oX4i8UO8pADpC7xyyJ6fac21vwVcdYdrIN2qGDTqzmJU/bYK6TS6beyViWlz28fscVsgUAPE2FjlSg98/wZ+YP+09+sXD26cb937NmTCA7D9do/cksjSyzEKKOw9PdYH0GTK7cIviKTs4e2tFhZVzbsHO/ADQJgKyhA+DTl4M8mN0NwDG+SoT4l+fnYx3RKwVmncpjFYq1gJwcIMxF2JaV1iXpzisiuPJJ3e7+Y1rZB9fMbiQwmv4Pcbq4h1KdpjYxFAexuvHXiP/efDn9pVF+3WI4lckN/C/qC7E/fai0F3f5FTH9XfhV+2a5vr43dFpeXt+qrrS6JTrUR+IMiUlfYNtWU0mpWHOz9XPUKHW4GsBcE8QgXW5/q9Xh3BT1olOZPdIXknY0FIyLdpIXTwI25BrnRYWk8go0JEfkEn/5KfV2p4YX2eigCzPdGZKCr6OA5NyCWHrc6ffkcMCLRiB4zuxeQCUigP76wn2yGsNLw8Cw+WHDcQ3ICJ85dAdatRv+mDqxfB3VDEo1zP8nvvuc64rcYtNnIAxEiJtvHgA2d4NclQNj2ZUVyjAhfKnF2NQu89ToHoo8WR8xD2Beq4UGsse8lPo27zQgDe1zm8bvw51kQaCA4vCVTNEdkz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(376002)(346002)(396003)(451199021)(7696005)(71200400001)(54906003)(76116006)(66946007)(66556008)(66476007)(41300700001)(64756008)(8936002)(66446008)(8676002)(5660300002)(7416002)(52536014)(83380400001)(2906002)(26005)(9686003)(186003)(55236004)(6506007)(53546011)(478600001)(110136005)(82960400001)(122000001)(4326008)(38100700002)(38070700005)(86362001)(33656002)(316002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aStFMEp6ZWN5TW9nc1ZsaGE3TXhnbFlGbkpsREZaL1NzbEp0N3A5UWlrMzNG?=
 =?utf-8?B?eHp4VmIyaXBJNzZjR3BqTXRNWE40S2xKWGYyWkp5U1hIZWVtKzg3UjdOdWRi?=
 =?utf-8?B?TFJLd3R4TUw2OThSSTlYaDdpcXhCZkhGd2dOZHYzQTUycnZoeG9ycUl3MzZJ?=
 =?utf-8?B?R2NVb1B3eDlhTkRpTXRzczIzSXZscE9mdC9zS3N4dzlyczQrQnhTKzlFb3ZP?=
 =?utf-8?B?UUl0MDVnaDBVOVFLV3lpT0NjT1ozVjAyRVdLQWg5cUd2NWhlQWhmVWlVMGhY?=
 =?utf-8?B?WkRzdS9HZDZQL2xoVUhrelFwb0lISTRFejZBVHJSM1V3TEpWRDVFTFV1R04w?=
 =?utf-8?B?d0cvdmd2b2dRNUo5eEc2d25LVHFsdkpvaW5JZnR0T2lHQmYraFFuNWdhb2hX?=
 =?utf-8?B?KzRrZjRTRUp0Ym04TFhDWnFDU0dXQ0YySnJVc0MvS0g2eHJZeU1rWG9iOUJt?=
 =?utf-8?B?eUFvQlNTTm9sWndoeFN1QWlCTkcxUmVFQS9HYjZMWXBCRGZYZ0xsaGlGL1lI?=
 =?utf-8?B?eFZDUlpSaHo1WXlPbzVHcE1YMGt5aGR1bmk3MC9qSzRYY05UR1lHZFp3SEVh?=
 =?utf-8?B?VUU0NmpCSmtIMWl6aUhvZXpuQ3ZMSkp5WDJuVDhJbmhTaGJSVXZIZWh1VGFC?=
 =?utf-8?B?RndVUnBneWZMbWJMdFRiR3VKV2JVYXZUNTUvYjFXNlFpSnB6d1QwaFFLMkVY?=
 =?utf-8?B?Z0pDVzJLQmorY3RTTm12cVhpTDlTRFZjK2tqdDJ4VTQxb2orVXgzZlRQNi9l?=
 =?utf-8?B?TUt1K2lmRDRTSjV3K0doNElnUi9xWUNvb1MzaWF4bTJaREpWbmtvZ2Y3cFVW?=
 =?utf-8?B?ZEVESGtZWFJEdmtLQm9rYTRKSG1XVmVVOXBnSDRPUHRrZGJsRjE0L25xWXN6?=
 =?utf-8?B?TDgrVlpUeXRlTzR2LzN4OWR0L2ZzOGZNekwwNG8xaHg4bENRWFpxYjBMMFJy?=
 =?utf-8?B?NVcxVVlaYXEvdUViQzRBS28zd0hjTFhDZldhQ2daZm1EVGNyU3J5N3lMNTJU?=
 =?utf-8?B?OEhOM2V0bWNYczVVTUFpTi9LUUZlV0tTbTRFbDRWZGRjSVBKdWlmYXI3L3RK?=
 =?utf-8?B?dlZkaXpic0FxYTZMQ3BEVXNyYTlvTkxTNE9OS08wWVM3WTcxZm1abktrcmhK?=
 =?utf-8?B?TXUyaXJLYWNON2FiQUJYYytlTWFHbFowb2EraFRMM05IWFVLclVXTVB5cCtx?=
 =?utf-8?B?bVZyU25XZHo1STcwbmNOVG1yOFlLaGhUL1hTWjI3UkxEY25uQXNrZHQvS0x5?=
 =?utf-8?B?VTRDSy9ET2Q0WGtocUZ2dENpaU1saEdhTmtBZnRBS0hhWWVBdjBaQk1wbkgy?=
 =?utf-8?B?cXVVcng3SVhoa2JYZXp3ZU9aTDlHWUFpN0NneEhRZGhwVXlUWHVSbjZyaVRz?=
 =?utf-8?B?Qms4ZUZWNHgzaWJPMWp1ak02ek1MVkRSYWRoT01SdkEyejMxcjJNRjFJL2px?=
 =?utf-8?B?dFVyWVNOY215OUtjbVEzNm1XMUc2R0QzcitFeU51SkRjbXFCNi9EMVZpU1NX?=
 =?utf-8?B?NExXZnlERVJGVitRSWlEVkt3a1kzMUpIZXpDYno0MHNsemVYWGVOZFJNcGt6?=
 =?utf-8?B?MHV5Y3lLOE9qMTVoRitaL2JCTEhVcW9tUTRLV1h1bmlGRWlad1FzV2Z6L1Q5?=
 =?utf-8?B?elZxSVpLZXhSWjFWSG1KeHlhVVBXMUI5Nys3MG9reFl2bWg0QWk1RGpHOUdR?=
 =?utf-8?B?dDVQVWU0YlNTeHpoajJ2bnlqMmNPOWxJTnNXNzhmZVhaYnZGQmJwVkFDUGF3?=
 =?utf-8?B?UHA2RFc0MVUwSXYwNVBqLzRLSko0OHRWUlhQTFdkQUVmZ0pMZUpDeHZVV1Fw?=
 =?utf-8?B?aC85SnlYWXhhVGZmZFZVSHEzT21USkpka21tRDFZWmFRZGxaS2dBcGZnd3ZR?=
 =?utf-8?B?ME45a0t1NzFuQ08zK0NEd241WiszVjF6T1ppN0NjRDA3SUd5Ymp3d3B4cFMv?=
 =?utf-8?B?WXZrajJMWVBTT0tUcmJNUXRwUURTTjFQN1VEZVlyTklZSHVqdnNQcVNOcFhF?=
 =?utf-8?B?SVJBM1JaeHFUWTNzTnNIdzVhS0JDUE5UbG1TbjFUNkhUN2VBUjRqWmZBK3Yz?=
 =?utf-8?B?aEdwR0JscUtCN1JiQnF6dHhCNkl3UFdYZFFoeUN3eFRMYWk0c3VwTkRXMGx1?=
 =?utf-8?Q?mFSdV9feX36S3dSteHBnjrYsP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e23cf477-409d-47bb-96fc-08db3b4a743a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2023 11:38:36.6555 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /qb7EWQkQpSQCjNTnyeE9MqPedmFyAnAEbCMB5/PRSEXfCDYFk4HuSOFxHPUT6ViOjsX7ljHsP2S12c9zcsSSR2crR5DI3oeSgj4v7XI+/o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6504
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 12 Apr 2023 15:14:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681299526; x=1712835526;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/hfvsYVSexZl4RoDjWHGHVyOXpHkiX7YSYgShp+G7tU=;
 b=htk7wliu70gqKUm/T4pL8j8T9iNYjxAe5xVX4kgI0LpDMoYFo3RI0tMI
 eaeYz/WHR62LSBVp4yiju+bpJkHbXKd72cni1hEZlmVmf9p0wpK1HG7y6
 50CHR+w0w0xALYcVBiOg4y7dTiyFgP+Z/N3iG5kzwp49a9ShVsjBTyuTn
 oI9yUnTaq/ozB2D+uI1lUUeILmQIuZCoB6peaPZj9pbG5eT0iUrWVYFpo
 3Ykzy9mX0E7IFPekh4qVSZUWud+i6NR8Zz4R9UhucNAsaLnzYBH21JLUc
 85qr0UK6VQ677HkLuSlJPqfaB1rN2rX5ZFAD/VSNqEKhOtJCAToEVmWdF
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=htk7wliu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V3 1/6] igc: enable and fix
 RX hash usage by netstack
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "martin.lau@kernel.org" <martin.lau@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "ast@kernel.org" <ast@kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Stanislav Fomichev <sdf@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "Brouer, Jesper" <brouer@redhat.com>,
 "Ong, Boon Leong" <boon.leong.ong@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "hawk@kernel.org" <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thursday, March 23, 2023 12:01 AM, Jesper Dangaard Brouer <brouer@redhat.com> wrote:
>When function igc_rx_hash() was introduced in v4.20 via commit 0507ef8a0372
>("igc: Add transmit and receive fastpath and interrupt handlers"), the hardware
>wasn't configured to provide RSS hash, thus it made sense to not enable
>net_device NETIF_F_RXHASH feature bit.
>
>The NIC hardware was configured to enable RSS hash info in v5.2 via commit
>2121c2712f82 ("igc: Add multiple receive queues control supporting"), but forgot
>to set the NETIF_F_RXHASH feature bit.
>
>The original implementation of igc_rx_hash() didn't extract the associated
>pkt_hash_type, but statically set PKT_HASH_TYPE_L3. The largest portions of this
>patch are about extracting the RSS Type from the hardware and mapping this to
>enum pkt_hash_types. This was based on Foxville i225 software user manual rev-
>1.3.1 and tested on Intel Ethernet Controller I225-LM (rev 03).
>
>For UDP it's worth noting that RSS (type) hashing have been disabled both for
>IPv4 and IPv6 (see IGC_MRQC_RSS_FIELD_IPV4_UDP +
>IGC_MRQC_RSS_FIELD_IPV6_UDP) because hardware RSS doesn't handle
>fragmented pkts well when enabled (can cause out-of-order). This results in
>PKT_HASH_TYPE_L3 for UDP packets, and hash value doesn't include UDP port
>numbers. Not being PKT_HASH_TYPE_L4, have the effect that netstack will do a
>software based hash calc calling into flow_dissect, but only when code calls
>skb_get_hash(), which doesn't necessary happen for local delivery.
>
>Fixes: 2121c2712f82 ("igc: Add multiple receive queues control supporting")
>Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
>---
> drivers/net/ethernet/intel/igc/igc.h      |   28 ++++++++++++++++++++++++++
> drivers/net/ethernet/intel/igc/igc_main.c |   31 +++++++++++++++++++++++++---
>-
> 2 files changed, 55 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/igc/igc.h
>b/drivers/net/ethernet/intel/igc/igc.h
>index df3e26c0cf01..f83cbc4a1afa 100644
>--- a/drivers/net/ethernet/intel/igc/igc.h
>+++ b/drivers/net/ethernet/intel/igc/igc.h
>@@ -13,6 +13,7 @@
> #include <linux/ptp_clock_kernel.h>
> #include <linux/timecounter.h>
> #include <linux/net_tstamp.h>
>+#include <linux/bitfield.h>
>
> #include "igc_hw.h"
>
>@@ -311,6 +312,33 @@ extern char igc_driver_name[];
> #define IGC_MRQC_RSS_FIELD_IPV4_UDP	0x00400000
> #define IGC_MRQC_RSS_FIELD_IPV6_UDP	0x00800000
>
>+/* RX-desc Write-Back format RSS Type's */ enum igc_rss_type_num {
>+	IGC_RSS_TYPE_NO_HASH		= 0,
>+	IGC_RSS_TYPE_HASH_TCP_IPV4	= 1,
>+	IGC_RSS_TYPE_HASH_IPV4		= 2,
>+	IGC_RSS_TYPE_HASH_TCP_IPV6	= 3,
>+	IGC_RSS_TYPE_HASH_IPV6_EX	= 4,
>+	IGC_RSS_TYPE_HASH_IPV6		= 5,
>+	IGC_RSS_TYPE_HASH_TCP_IPV6_EX	= 6,
>+	IGC_RSS_TYPE_HASH_UDP_IPV4	= 7,
>+	IGC_RSS_TYPE_HASH_UDP_IPV6	= 8,
>+	IGC_RSS_TYPE_HASH_UDP_IPV6_EX	= 9,
>+	IGC_RSS_TYPE_MAX		= 10,
>+};
>+#define IGC_RSS_TYPE_MAX_TABLE		16
>+#define IGC_RSS_TYPE_MASK		GENMASK(3,0) /* 4-bits (3:0) = mask
>0x0F */
>+
>+/* igc_rss_type - Rx descriptor RSS type field */ static inline u32
>+igc_rss_type(const union igc_adv_rx_desc *rx_desc) {
>+	/* RSS Type 4-bits (3:0) number: 0-9 (above 9 is reserved)
>+	 * Accessing the same bits via u16 (wb.lower.lo_dword.hs_rss.pkt_info)
>+	 * is slightly slower than via u32 (wb.lower.lo_dword.data)
>+	 */
>+	return le32_get_bits(rx_desc->wb.lower.lo_dword.data,
>+IGC_RSS_TYPE_MASK); }
>+
> /* Interrupt defines */
> #define IGC_START_ITR			648 /* ~6000 ints/sec */
> #define IGC_4K_ITR			980
>diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>b/drivers/net/ethernet/intel/igc/igc_main.c
>index 2928a6c73692..f6a54feec011 100644
>--- a/drivers/net/ethernet/intel/igc/igc_main.c
>+++ b/drivers/net/ethernet/intel/igc/igc_main.c
>@@ -1677,14 +1677,36 @@ static void igc_rx_checksum(struct igc_ring *ring,
> 		   le32_to_cpu(rx_desc->wb.upper.status_error));
> }
>
>+/* Mapping HW RSS Type to enum pkt_hash_types */
>+enum pkt_hash_types igc_rss_type_table[IGC_RSS_TYPE_MAX_TABLE] = {

Hi Jesper,

Since igc_rss_type_table is used on igc_main.c only, we can make it static to
avoid following build warning:

drivers/net/ethernet/intel/igc/igc_main.c:1681:21: warning: symbol
'igc_rss_type_table' was not declared. Should it be static?

Thanks & Regards
Siang

>+	[IGC_RSS_TYPE_NO_HASH]		= PKT_HASH_TYPE_L2,
>+	[IGC_RSS_TYPE_HASH_TCP_IPV4]	= PKT_HASH_TYPE_L4,
>+	[IGC_RSS_TYPE_HASH_IPV4]	= PKT_HASH_TYPE_L3,
>+	[IGC_RSS_TYPE_HASH_TCP_IPV6]	= PKT_HASH_TYPE_L4,
>+	[IGC_RSS_TYPE_HASH_IPV6_EX]	= PKT_HASH_TYPE_L3,
>+	[IGC_RSS_TYPE_HASH_IPV6]	= PKT_HASH_TYPE_L3,
>+	[IGC_RSS_TYPE_HASH_TCP_IPV6_EX] = PKT_HASH_TYPE_L4,
>+	[IGC_RSS_TYPE_HASH_UDP_IPV4]	= PKT_HASH_TYPE_L4,
>+	[IGC_RSS_TYPE_HASH_UDP_IPV6]	= PKT_HASH_TYPE_L4,
>+	[IGC_RSS_TYPE_HASH_UDP_IPV6_EX] = PKT_HASH_TYPE_L4,
>+	[10] = PKT_HASH_TYPE_NONE, /* RSS Type above 9 "Reserved" by HW
>*/
>+	[11] = PKT_HASH_TYPE_NONE, /* keep array sized for SW bit-mask   */
>+	[12] = PKT_HASH_TYPE_NONE, /* to handle future HW revisons       */
>+	[13] = PKT_HASH_TYPE_NONE,
>+	[14] = PKT_HASH_TYPE_NONE,
>+	[15] = PKT_HASH_TYPE_NONE,
>+};
>+
> static inline void igc_rx_hash(struct igc_ring *ring,
> 			       union igc_adv_rx_desc *rx_desc,
> 			       struct sk_buff *skb)
> {
>-	if (ring->netdev->features & NETIF_F_RXHASH)
>-		skb_set_hash(skb,
>-			     le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
>-			     PKT_HASH_TYPE_L3);
>+	if (ring->netdev->features & NETIF_F_RXHASH) {
>+		u32 rss_hash = le32_to_cpu(rx_desc->wb.lower.hi_dword.rss);
>+		u32 rss_type = igc_rss_type(rx_desc);
>+
>+		skb_set_hash(skb, rss_hash, igc_rss_type_table[rss_type]);
>+	}
> }
>
> static void igc_rx_vlan(struct igc_ring *rx_ring, @@ -6543,6 +6565,7 @@ static
>int igc_probe(struct pci_dev *pdev,
> 	netdev->features |= NETIF_F_TSO;
> 	netdev->features |= NETIF_F_TSO6;
> 	netdev->features |= NETIF_F_TSO_ECN;
>+	netdev->features |= NETIF_F_RXHASH;
> 	netdev->features |= NETIF_F_RXCSUM;
> 	netdev->features |= NETIF_F_HW_CSUM;
> 	netdev->features |= NETIF_F_SCTP_CRC;
>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
