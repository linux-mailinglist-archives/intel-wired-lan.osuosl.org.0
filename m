Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F68677FEF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 16:37:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 736B260EA4;
	Mon, 23 Jan 2023 15:37:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 736B260EA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674488247;
	bh=M+VNhLIhDzKipYqqj9iBHd66ex2XDVzRBI6nuq2gcp0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Upi3o1g47oGYn9ZjfPsBOzwwPGphd6yXcZO8eu3Rckxa7FNHzijruhCa3txwOHQ1G
	 U8bEizCAD4Jn7ADag+SJsqbfcC5E4juLXZ8YGC/T/wbulGodPsTAR7Le1qWeiyl13X
	 PuXG6Vk0XuANW7rATjMPCqNI52paTlwuL4QkWzfKhdnBslL0Cw+PSeow0S1igw9iOi
	 /BfiPXyPR5pvVnlzsZpyQNWJR3F1KkNfoHlVB/DcXGqX3FBQ5x0N9c2M/M7nKXJhq6
	 ittjvUA1Jewcgzy1sE4FJdUacdMc8k3I2EBc91xbgcYdLy0y1XNUglyqy35KqUcv+Z
	 oG/ab0Jtx/kCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kB2-NaX6wlYP; Mon, 23 Jan 2023 15:37:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A99660E8D;
	Mon, 23 Jan 2023 15:37:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A99660E8D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BAB071BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 17:44:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B1F6404AE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 17:44:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B1F6404AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yfYpzuhlabrY for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Jan 2023 17:44:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8477A404A6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8477A404A6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 17:44:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="323608186"
X-IronPort-AV: E=Sophos;i="5.97,237,1669104000"; d="scan'208";a="323608186"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2023 09:44:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="729930189"
X-IronPort-AV: E=Sophos;i="5.97,237,1669104000"; d="scan'208";a="729930189"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 22 Jan 2023 09:44:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 22 Jan 2023 09:44:38 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 22 Jan 2023 09:44:38 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 22 Jan 2023 09:44:38 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 22 Jan 2023 09:44:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B0qFh68ElKYv/rKEyF5mH+VdIN0v1fCiSerrUI1dKkYNF1zYUNX4tZ+7l/qgy/hIyiHfwQodIOCdONPDkfgqq3hpPew/GAgiDfAVg3hHJdT/oEoRWuD1UG14Oe5WMgqtqUkpqUHJN5hC+mdFORIsMwX5zTsKKNDew5YpQtHLapjsu1m6zjeDfN2cETISzJo9xIhM8trHgWvLo7i9LFLZE+P+9p3rY95kLPryUhLBZEPO3UjmX528pcC8z3C5fEJOxXJeQDUrJLUEhcRJHxluE/vKYjLA0L2uUaHt792odjGFc9ZHwTiStTX+CzxHIGVTZLP7czIa+stHs6/zmAAEkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vOiGmKUpYIpCa8sMlgq4Z+6cesss1H7IXCujIj4hJGo=;
 b=JyWZ/J1KBOaPKKEukM0UNbEAKNcLO9Gc8XM0z+Fe2Y5TXIuaovmN6qTbyPiZhW39iwOB5xFzVboDvXjQ8FWyN2hbQbB+tysmOBaz6WXS8vTV6XzYa5yyjEHVenO9FlhjHF+htvZV9FO6Dk4XeMFvzUHPU1Ib+NYbcCbCviCfRuq8M7n2ahfbGCfLK3SqKoPHi557vtFiuCJTAMBFYuyWIwcrDFZbPFXTmLz1G5NDNRM2/fB5mfH7LIwk2govCCw0ssoaBH8tl5dXNQj3q8RJLZF4Fyc10A53Bwl6QO2jXlieJJVagtkxjuC+G6B768ujjd/V6QZQnyEa3znJV22xuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB5962.namprd11.prod.outlook.com (2603:10b6:208:371::18)
 by MN0PR11MB6086.namprd11.prod.outlook.com (2603:10b6:208:3ce::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Sun, 22 Jan
 2023 17:44:36 +0000
Received: from MN0PR11MB5962.namprd11.prod.outlook.com
 ([fe80::b9d1:78a:e878:90c4]) by MN0PR11MB5962.namprd11.prod.outlook.com
 ([fe80::b9d1:78a:e878:90c4%5]) with mapi id 15.20.6002.028; Sun, 22 Jan 2023
 17:44:35 +0000
From: "D H, Siddaraju" <siddaraju.dh@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Daniel Vacek
 <neelx@redhat.com>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, "Kolacinski, Karol" <karol.kolacinski@intel.com>, 
 "Michalik, Michal" <michal.michalik@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] ice/ptp: fix the PTP worker retrying
 indefinitely if the link went down
Thread-Index: AQHZKqP/DfkgVYUDCk2u4R2vGmANSK6qu+oA
Date: Sun, 22 Jan 2023 17:44:35 +0000
Message-ID: <MN0PR11MB596276E45C799F69943010D99ACB9@MN0PR11MB5962.namprd11.prod.outlook.com>
References: <20230117181533.2350335-1-neelx@redhat.com>
 <2bdeb975-6d45-67bb-3017-f19df62fe7af@intel.com>
In-Reply-To: <2bdeb975-6d45-67bb-3017-f19df62fe7af@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB5962:EE_|MN0PR11MB6086:EE_
x-ms-office365-filtering-correlation-id: 1833f323-58bb-4744-398f-08dafca053de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JqILfzgtn4sSkOdLQ9rW6VOjraho+KgcAAaT6KG7CDxXL6hG4Xg+7nXhhUfyXN6tG12xNBMXQqemxiZHwyOrZh7YLteiXAaDOhyXeeOoZCAH6Gerk5d1isrfrlIP4giltGcQYzfnUvZZrY3bQp0la+1hp2IUf4IJhshoQWAoJ7l62e6xVuDz+IyxsigcXMezg4gd2ODQExBFotnvAlnDWC0IsOFtdLPiERXbjohi3AXBeUZuq2CRADx6THUfkdeZ5HDL/tSd+V43xNK6MgC+62lmbq4a8CeennNJS8A73htWatZlOSMn6EXhlHHkHK4uH3e8z3XbpUIh7RwuX3uDlr5bjQLR4A7ixp8CwzkV56ilWlkgjIrVklcjbOgzF1n5A6rtUj916NKH5IazFlA2l3tr9TsaL4EpyFCR9jC4lh4CpLBextAvhz/LuI1Elwg2fovvR5mYQAk1J7P91njKCjVTi2e3xWK6NxVK2jRzFjNC2TEu9kcApShNQkPtG8AbrAFt9N80ENL1ZoKTvztKwcb+DXexFRDY8upX6y5MEoWouSECHkNgLjj/yruCyXNA3S2I9cIACU0bg7n2rXuJjBnnrVn4Ai1VgwAubUWFxAR7wyrNp+t8t9xlCDKBbp48nwKlce6NEikQqiWdvvfS9cZHBGXagbjkrJ7FLd+LajoKxmWcoot3EXdN64FHv2wcse79lYvY1zxLgoLisD+bUXRv6Dq2xSB9A0MLPbFmPTA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB5962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(366004)(396003)(346002)(376002)(451199015)(52536014)(5660300002)(8936002)(4326008)(71200400001)(66476007)(8676002)(66446008)(66556008)(66946007)(64756008)(76116006)(6636002)(9686003)(38100700002)(122000001)(478600001)(54906003)(186003)(6506007)(26005)(110136005)(2906002)(7696005)(316002)(53546011)(83380400001)(82960400001)(41300700001)(38070700005)(86362001)(55016003)(921005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bzYxc2NOUFpjMG5QdjY3TVFxcVl5dDF6MUhpZ0dVWFlGRnk1WXRBek16aWsw?=
 =?utf-8?B?OTRPazZBWHJrNC80NkZNZkd4MGJxTXJjU3dJazREZXU1ODZKUGh3MUozME1z?=
 =?utf-8?B?U2ExUjJueDlUNGt5WTVHa25MOFN4VGhhNjZDQ0ZxYXpTUjkrZ3hmSzZ4TzNP?=
 =?utf-8?B?UHVqbGQyMHVUbjVDMlZxR0VHQWZOMWFQaTlMMHpoMk4vNEFsUUtndW5Bb282?=
 =?utf-8?B?Z3kwTmZVYXFCalg2cStmS0F5SkVmbEMrZEFXem14ajhtdkErQ0pSVkJVMzJk?=
 =?utf-8?B?c2JLc0FydTQrSlYrMW00L2dkUStibnlQR2xBRXFpR21mWUlGZURESi83Y3NP?=
 =?utf-8?B?SEJ2enpOVG8rM080bnQyS29iRmIyU1c5RHFVcDBsd3FNNXZRbExsSVJabnNr?=
 =?utf-8?B?VnVUMkhGZmRWSFlNMGRuaUd5YnJjNGVsWFlPejFjU0lTYTRWS0tJS1hKZDkv?=
 =?utf-8?B?bzdEKzkyaFNITmJoU3VaS3B0ak9TU1FtcFZ1SXVubVdIMStFKzJ1TUNDdEpT?=
 =?utf-8?B?T3RWa3U4Vmk1blVyZ2JjK2RhN205UkFkMTdjSU5kVTltU2h2R0g1Y0lqOXFo?=
 =?utf-8?B?VUowUHNBdWwzWDBJWUY2RnVkQktPRDNSS01wQTg5UklUaGs3WmhGUEJQWk9u?=
 =?utf-8?B?WVJZNnZFSlJPSUNlVmxJcHdIaFZiN0JYSWFuR3dWOTczUlBLdWdXWUJrbEZU?=
 =?utf-8?B?ODIxZlo2c2RZcGlHQ3UwbHZvS3hrZm1hcnRoK0M0L2h0ZkE5SkpyTzBoeWlS?=
 =?utf-8?B?Y1RkbzduOURoVDNKbmVUaEZpM2xFVjM1VFM2ZmhlSHBJc0dCM3A2QTdxd096?=
 =?utf-8?B?SG5POE9pQ2dmNk14RklHNU1TWFp0eG5NTjR1ZWZieDMvNGVDcWpXUEVoWThH?=
 =?utf-8?B?RHdVcGpJTHdxUGhwazJIVFFlZFhqdStibXdMTVNQZVZ0Z05iSWZFMmF1SStG?=
 =?utf-8?B?aHg5ODJrK3B0NXRGY1g3dTY5WUJTQTUrRkNzZE93cWd1T3RpY1BXNnJic2Z2?=
 =?utf-8?B?Z0JQRHcxWGx6VzhiSEpqeU14cWljNWZCcjFxRjlVSDMvdzRvdjhLaVpFdFo2?=
 =?utf-8?B?TjBEbE8yRWpZSkw1T3JUY2VlN0Z4ZCtzZGExOVZ0VXFETlRVQ1paMFVYOTZj?=
 =?utf-8?B?ZUtiWVhsSk9ubFpVMW5UbzZrQXpObDFTMENHbERxd3A2bWFIemxNMkJtZXdw?=
 =?utf-8?B?M0o3ZU85bVh5OWxCd2l6bkY1WmQyc2xpWDlsS3k1b0JkWmRjNkt6dVc4eFFK?=
 =?utf-8?B?MFNEQTNrUEhDSlFvVVI5WVM1UDdOMkx4WS9Ea1EvUjY5eXV5WDFtc2d2ajYz?=
 =?utf-8?B?R1h4Tll1TzBoU2JHZHJCL0dVQ1Fxb2c2TGhYZmhZdWZHWHpYUWY1YVlSbitt?=
 =?utf-8?B?QUFjcHhPKzdlSW9BSEQrTktObHRoSGVGZlJldEJTNmFtM1lhdVFDS3E4UlB4?=
 =?utf-8?B?d0ZFeE9FOElUZ2xueDRITjhsUDB3cFV6T1NLaHVKNWdkU2dVYmtYSWRrWWxZ?=
 =?utf-8?B?RkNxM09Hb1FlU1pyWnNKNWRxYnVwakJ2RVpicExuYm1VV2ZWSWMzMTlXdUY5?=
 =?utf-8?B?bTAzVTNrOTZWUGhlWXIwc0xtUWhzR1N3QVhyNFFIeHJYekFndG1nejZZQUJj?=
 =?utf-8?B?bGFIT1BpSFNUejlNVHBzTWl4UlgzL1p0V1NDKzBxbEdSTFlIL3NvQ2JVSkdI?=
 =?utf-8?B?RFJWb2daRTE5a1ZZeGlrSEIwU3U3L1NGUEZOcUJaT2lwcjdvZ1k1Q2tLUE5h?=
 =?utf-8?B?VGdUU29MaE9jL0xmdFZUTDBDdjdDb3M0MEdMZnR5VVB1NTdVR0REZTNKd3M2?=
 =?utf-8?B?SGw4WFF3Y2s5S1R5emRiN1B0MnNJZXNrSG9JYzV1b1BVUmtkS003cEdHWjJk?=
 =?utf-8?B?NzlDS1lONXo4N1puR1NibHBZZlZDM2trR0drazM3Q3B1T1RhSVBjSjN3VkJG?=
 =?utf-8?B?MWZYaGpaVUp6OXplRUNsUEthS0lnMUh1ZXZXdk04Q1NiTEFjT3BsdTZXVXhm?=
 =?utf-8?B?dXF1L29KaEVTcDZpalBvTVZINm4wcXprdTdJaGNacmZzaU8vcEJFTU5qYVJV?=
 =?utf-8?B?N1BBYUg4NFN4QmFzcEFFSk5GR1ZpazVXTnZnYVlrUi9QL01BZHU0blhVcm5C?=
 =?utf-8?Q?OPLTPUdB80JcHdeTbhSMQ+l5v?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB5962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1833f323-58bb-4744-398f-08dafca053de
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2023 17:44:35.8074 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rwyh3/Ubx3a/R4ejrF6pz1P9Hvkbh0yOlIe4CiCAWmhADN1x8rMac5bMXCOE+Orp4XRJRe2GmKgIaetdmZjTzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6086
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 23 Jan 2023 15:37:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674409481; x=1705945481;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vOiGmKUpYIpCa8sMlgq4Z+6cesss1H7IXCujIj4hJGo=;
 b=GgoHURMyLc+r2ziojBhChlwVTHgcfNT7LfholWmME2uXIRzSfxPypj6C
 ajXCGs8h0LQl9Eee1G1AtfNLVx10SYWKw39WtT8AJM8VSH4mpVRmJIhGU
 gWoZl5LvcgHStX9wHIvPOEvwe99+9PqdRwn+aPSS4xrWUtcw9E3wWlLAQ
 NOWD7ZEkzvr3He/MHfb3q9Nw45abPerpYSOKN068E5RS0AByXCBZLHvly
 peUjXp1sFIkjKDfwJAu7l1jaGzqyWj+LE57rAQfVygY0d49tr/X1qOmCv
 JvZAWwY7tfXxHIjWoJRd+m/QSBm9r8QosIVKPQI+8Y0ob6K2CtEdLlwHI
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GgoHURMy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice/ptp: fix the PTP worker retrying
 indefinitely if the link went down
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Yes Jake, ICE driver reinitializes PTP timers on link UP (especially for E82x).
ice_ptp.c-> ice_ptp_link_change-> ice_ptp_port_phy_restart-> ice_start_phy_timer_e822

-Siddaraju D H

-----Original Message-----
From: Keller, Jacob E <jacob.e.keller@intel.com> 
Sent: Wednesday, January 18, 2023 12:16 AM
To: Daniel Vacek <neelx@redhat.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Richard Cochran <richardcochran@gmail.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; D H, Siddaraju <siddaraju.dh@intel.com>; Michalik, Michal <michal.michalik@intel.com>
Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org
Subject: Re: [Intel-wired-lan] [PATCH] ice/ptp: fix the PTP worker retrying indefinitely if the link went down



On 1/17/2023 10:15 AM, Daniel Vacek wrote:
> When the link goes down the ice_ptp_tx_tstamp_work() may loop forever 
> trying to process the packets. In this case it makes sense to just drop them.
> 

Hi,

Do you have some more details on what situation caused this state? Or is this just based on code review?

It won't loop forever because if link is down for more than 2 seconds we'll discard the old timestamps which we assume are not going to arrive.

The trouble is that if a timestamp *does* arrive late, we need to ensure that we never assign the captured time to the wrong packet, and that for
E822 devices we always read the correct number of timestamps (otherwise we can get the logic for timestamp interrupt generation broken).

Consider for example this flow for e810:

1) a tx packet with a timestamp request is scheduled to hw
2) the packet begins being transmitted
3) link goes down
4) interrupt triggers, ice_ptp_tx_tstamp is run
5) link is down, so we skip reading this timestamp. Since we don't read the timestamp, we just discard the skb and we don't update the cached tx timestamp value
6) link goes up
7) 2 tx packets with a timestamp request are sent and one of them is on the same index as the packet in (1)
8) the other tx packet completes and we get an interrupt
9) the loop reads both timestamps. Since the tx packet in slot (1) doesn't match its cached value it looks "new" so the function reports the old timestamp to the wrong packet.

Consider this flow for e822:

1) 2 tx packets with a timestamp request are scheduled to hw
2) the packets begin being transmitted
3) link goes down
4) an interrupt for the Tx timestamp is triggered, but we don't read the timestamps because we have link down and we skipped the ts_read.
5) the internal e822 hardware counter is not decremented due to no reads
6) no more timestamp interrupts will be triggered by hardware until we read the appropriate number of timestamps

I am not sure if link going up will properly reset and re-initialize the Tx timestamp block but I suspect it does not. @Karol, @Siddaraju, @Michal, do you recall more details on this?

I understand the desire to avoid polling when unnecessary, but I am worried because the hardware and firmware interactions here are pretty complex and its easy to get this wrong. (see: all of the previous patches and bug fixes we've been working on... we got this wrong a LOT
already...)

Without a more concrete explanation of what this fixes I'm worried about this change :(

At a minimum I think I would only set drop_ts but not not goto skip_ts_read.

That way if we happen to have a ready timestamp (for E822) we'll still read it and avoid the miscounting from not reading a completed timestamp.

This also ensures that on e810 the cached timestamp value is updated and that we avoid the other situation.

I'd still prefer if you have a bug report or more details on the failure case. I believe even if we poll it should be no more than 2 seconds for an old timestamp that never got sent to be discarded.

> Signed-off-by: Daniel Vacek <neelx@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c 
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index d63161d73eb16..c313177ba6676 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -680,6 +680,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>  	struct ice_pf *pf;
>  	struct ice_hw *hw;
>  	u64 tstamp_ready;
> +	bool link_up;
>  	int err;
>  	u8 idx;
>  
> @@ -695,6 +696,8 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>  	if (err)
>  		return false;
>  
> +	link_up = hw->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP;
> +
>  	for_each_set_bit(idx, tx->in_use, tx->len) {
>  		struct skb_shared_hwtstamps shhwtstamps = {};
>  		u8 phy_idx = idx + tx->offset;
> @@ -702,6 +705,12 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>  		bool drop_ts = false;
>  		struct sk_buff *skb;
>  
> +		/* Drop packets if the link went down */
> +		if (!link_up) {
> +			drop_ts = true;
> +			goto skip_ts_read;
> +		}
> +
>  		/* Drop packets which have waited for more than 2 seconds */
>  		if (time_is_before_jiffies(tx->tstamps[idx].start + 2 * HZ)) {
>  			drop_ts = true;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
