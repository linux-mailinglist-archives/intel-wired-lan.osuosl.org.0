Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9A665756A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Dec 2022 11:44:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DCAF8125E;
	Wed, 28 Dec 2022 10:44:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DCAF8125E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672224252;
	bh=nzXWNSQ9zFxl32jNjJIm4gBGkqTWOdqnwLxF4FWdSNk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=glKvG0Fj9bENpHtlQ2McILK3JYEZwMxFUvnWsBswNboMr9leHXeZ6XFWyldZQdFpF
	 0GPIr35mWa2YJS397Wlw+hQd2FUOqIcfhMIC/KocC7FF7jhrDEN1bDaIrVDqKWsNW5
	 5JQ3NENJCoPeZTt6usbkQR+up/RZTbApR2i3QaTD52ZC9ISnz3W5kYaEpkpuggtl4I
	 42K2fTgpI29h6lhVkPQ1T7r8PpJF5W79OXP+y7GGKd+xBZuG+GFl5K0RVUJwLsxa2M
	 V+lP1vklxx/4XXCp2JoIjGKIxf9WmSzVRzIo7Bew1Qc1LgGTwjorbWFPx3p9Aoj+A6
	 8s4oQvJJQcL8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mIU8I_H6KsZZ; Wed, 28 Dec 2022 10:44:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38CD081020;
	Wed, 28 Dec 2022 10:44:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38CD081020
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E97CD1BF380
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Dec 2022 10:44:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BF5014034E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Dec 2022 10:44:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF5014034E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UTPsWHDPpjSk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Dec 2022 10:44:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 191EE4033C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 191EE4033C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Dec 2022 10:44:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="385272549"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="385272549"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 02:44:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="721752007"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="721752007"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 28 Dec 2022 02:44:01 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 28 Dec 2022 02:44:01 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 28 Dec 2022 02:44:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 28 Dec 2022 02:44:00 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 28 Dec 2022 02:44:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UZYqBsUlIvVjQVOr8caWdJgwizP1glPFu5x84Pp8+sf7LWrE612x8VoyA5AOHBBOictEjvQdRZS6zEn6CHgQOoGUa17kXi0iNPszk8JeU/UySzw7o64BOe/hm5ODLrU8EGoh0UCCxZAV3f+js2jUXyfWmRyYNlE/W1b471+2VFYUpD1d2f5CrkwEWj7Y4hSi75+IrKqONKHD4/MTKpBmeby/GyP34XqIlIFxFQVWqwnVoy8j8+iRwkxoAtEu+/BYegwmCh5TFmnUzpXKJhoQMAnFzkS7TyG5JHnTQ9J+b3vhS/n+67afgwIWNmn5enyzUgE1kBSHZx2GLSixAqQUsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RJJL7JQqKm8IIP6GVsvhjK48yoWkYtfzF5gHd1a4vvA=;
 b=YLDkkzWAt6lSLHtXqGZufiaRqJ0GiVnQoo/Nv1z3Gv6X45Isbbkt1BILpWGJQ0DpNMTVoBPFjDVSJ6DNQNhPpLnR+oFf+H7G6eFNFotz+C0PLnMxgKFuS588zk5j/pqD6fzJZI3il4Og4rlssFm+dTZ4+MxtgbwWnFkdDfKLOkiK3sbMOZ5QMEfQGQ+w4ejkD2gSHO+YawxwokDVPA+bzPMmis/NWVdhVCbN6KLVa6TjTiZfSUQvgyLMx69LfijOuRpRQe8KD9qA5z3PDY5CzXF1YSTYypGVxHpbIcthFlIAClwb/+hkdg6tepSlOv1IiQ7FAkzge/6jnEGAcS7zdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 by SN7PR11MB7139.namprd11.prod.outlook.com (2603:10b6:806:2a2::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.14; Wed, 28 Dec
 2022 10:43:58 +0000
Received: from BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::d1ba:9469:d15b:991b]) by BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::d1ba:9469:d15b:991b%9]) with mapi id 15.20.5944.016; Wed, 28 Dec 2022
 10:43:58 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] e1000e: Disable TSO on i219-LM
 card to increase speed
Thread-Index: AQHZFUALMBVKsfLhWU2iyB3X2Un/Sq54djkAgAqxnmA=
Date: Wed, 28 Dec 2022 10:43:57 +0000
Message-ID: <BL1PR11MB5288FAFB1D586D4EECAC4B7E87F29@BL1PR11MB5288.namprd11.prod.outlook.com>
References: <20221221132502.1099843-1-mateusz.palczewski@intel.com>
 <de860700-d302-5ac2-950b-4363f6a55c56@molgen.mpg.de>
In-Reply-To: <de860700-d302-5ac2-950b-4363f6a55c56@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5288:EE_|SN7PR11MB7139:EE_
x-ms-office365-filtering-correlation-id: adcbc352-c01c-437b-337d-08dae8c06cac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RLeQHrRZ3I3fQCktU8kM1M8BZ87NkbP1DbDYyne7zPiHnfLRUUceDdl2VGADz43ItlwF5/nMIKffbxF9qvc4Je8a8u3P+q72YAhKrQYXIx5JsWEGFFfPbCqf3t1iS7ckg/24eHFtPDYkax/3z7MrPg1Jog4saM95Ox5vF4dU0hAcMire2TfLdqFoZ8qb0KNwR+0wnHbsmSfycdzq8I6lU6Gm+UmP4P7/3M+s8jYWGQsebILeiO11gr/6FnXamUXrU+7dkCm7poxaBgJPUe7+/2APz70VG5LWDvtPmSfRt3vH7EF6FYHTZtgFR1jbXvwqKLbMAqrbA5uUG0IazJW49XjUBeKsqs6UEIHb2PY1mpK/bTK086xRfkgpcTQeYgvL7pXd+vq9sfyWJe4FbtfvDD5GYBvdmsHYIq2NztVAFC0DDk4y2E2mMZSDNbvcoM9hrm7fQk2rnxDqyoG5ypK+vHBzw6L3nucajG90GY9P1+GXa9tu+iDomGJpixhWlk3rmnypzukW+oml2G8I9GioT7TXKU7saOyO7qARECEnU0KunmG8aWHtoeDhxH6iRz9T5yOtY52t4Xtz+N/JNCmy+eCagvGlwXYh3ClWiieKv4pefLXJo4xw3DlS+lyU0PnQ4ixgmGL8/NZG82fAate04xj3WfvPQSKUQU3GWHsWP7gpE77bc+JTZeWY5XkvFRmhgub05IfbA0ll8k85z8SgEg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5288.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(39860400002)(396003)(376002)(366004)(451199015)(66446008)(64756008)(4326008)(41300700001)(86362001)(8676002)(66946007)(8936002)(66556008)(76116006)(55016003)(52536014)(5660300002)(66476007)(2906002)(316002)(6916009)(54906003)(83380400001)(33656002)(71200400001)(478600001)(6506007)(38070700005)(26005)(186003)(9686003)(82960400001)(122000001)(38100700002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NzNvQ0J1RnVWOXBMMWIyb0g5WGFnUmRWUGxUKzVOMDJQUnd2Ui9Cc1ptNDNR?=
 =?utf-8?B?QS84azF3amM3WHdXdEFwSVFkRWZVUFVjS0lENjY3T1Z0VXZ5enlFVC9jM2lE?=
 =?utf-8?B?dVdyc0lORnlseXZJemd5WmY3eXh3Mm1FN0lKS1ovaFFXSnhtNXZ1SmV6blJp?=
 =?utf-8?B?V3NlSGN5azNWaElzZTRrVU1ONGFNd3pQZkxEUnlTaWg5UXdmanZGMk5qVnJO?=
 =?utf-8?B?b3RQbGF6V04zWCtKUDEwZEs4Z0hBZTNjWVVkcmZaY3ZacmhpdnJiazV5TTZK?=
 =?utf-8?B?ZGhUV1ZRSmUvWTkxZ2hPK1h3L0Fmd0taZnRmSEk4ZlRONFNwYnRyY25lVTgr?=
 =?utf-8?B?RGZRVlpjd1dKRlE1amZPRFUxNFV4ZUdqWktqK3RaUWVRRllZOWYwSUFNMlNw?=
 =?utf-8?B?b2RGVDJQY3lLVEZWdEZRQncveXBoMEI1SlFIV3hXZk1VMjdLQ21JcVpUV1VE?=
 =?utf-8?B?QTZFU1pBY05oeTdEcmZRdTJuekU4dEhMOWlDWTV1VXhHMHovai94WmJTRDlt?=
 =?utf-8?B?bGtmNjVpbXcvTVJGNTBUVUNkZGdYQlNKb1JrR0syd2xaMi9VamhEbm5EVHRI?=
 =?utf-8?B?bVFHSGx6bitzTFV3YVlwd1JsNUlnTmJ2R0swUmpOZXVCcityNFdSNTBaNGNr?=
 =?utf-8?B?dm1SUmJtR1ZmK21jeEoyTVVFWW1WK28rWkpIK1FORDFnR3RQbUJyR0ZvdVla?=
 =?utf-8?B?MDRBNS9iZTQ1azNPNG9iK0VOcmlGNFhRTFkzLzVVK05UbzhDbzFqVEcycVdB?=
 =?utf-8?B?SEdPMnFMSnl1MzBoY1AvNlVCb253MzI2ZnN4MzBmbDJtbU9hRXE4dS8wUnF1?=
 =?utf-8?B?NitmRzBqR1pDUkZJakhNdWZxVGlncGJyS1lWOFRqUndGbjVUb0l1MHdYc2Fa?=
 =?utf-8?B?bysydnVTNXhIR1ZkWW5pTWxBY0tkTTUwTU5WeVlOTkx3Szk2V1BBMFUwaGxw?=
 =?utf-8?B?K0VJN253YmZwRXlJOGJpZkJCNmgzT2NzSFRKRnU0RFl6Y2hXdERiaGZVQ1h3?=
 =?utf-8?B?YUNNbkUrWGx6VFl4REFOeW1wRENGU3Fua2YxQjRCSVF5Vy84cXJlOWhnVEFz?=
 =?utf-8?B?UmMvZ0s4WExiL0hBUFlGc0F4Nm5Ja25VWENjSmNqRVpiUTlMV1o0U3RvdGNM?=
 =?utf-8?B?aGpmM2JaeEJndGQ5ZWFhb25ZK0FacXdYek1vY2NnSzZwNlpSaWl1Q2J1eEFH?=
 =?utf-8?B?RjBQUGtTYWppRk9Qd0hDZUE0UzRDdnpNREdNSGNqcUpSNEVCVFZXZ0U4S2JD?=
 =?utf-8?B?MHM5VU9UUU96TG9PNTh3VFcycGVYeENUQXl6UTVZQUJ4S3E5Mkd5czdia3pQ?=
 =?utf-8?B?NFNDNlRJaVlaYWc4T1g1L0ptNENFVWxHU3cydmRpRkVqVzlJUHpDaDI1SnpZ?=
 =?utf-8?B?T0pNNzhobDA4Nm8zWWlmNHVGM2tPU3JVN3ZRY2RtMEVHSm1ZMjFVb3lraGZU?=
 =?utf-8?B?bWpoT3N5akV0L2ZDa1dTRjduVjMxbDZBMmtDV0FGZVczT1NUbTlVeEt0MitX?=
 =?utf-8?B?R1JPR25kVGw5bXpzKzVYaEx4QXdlYW81YTNqaVNrOWdCb0JVdEtVM21MSGdK?=
 =?utf-8?B?TUFGWDU1NFNQenN5MWJiekZtMDlRWUZ3OFBSa1hiVHJ0V1N3WjlhRkhCNG1y?=
 =?utf-8?B?T1VqVVVCcDhZVXFwNTNiT2M1angrY2V6RU5Db2VsRUhsUTRkZG1aZ0lMWXhX?=
 =?utf-8?B?VURSQXlmbURkdHNUNnJzejFRN3lBeldIQkVkSUNXd1VzdlI1RmlNcGpvYzli?=
 =?utf-8?B?Qmtja0NBRjM2TDJET3cyWFB4K0RpWWlrbHM0dXJ2dVlLMVdoRWE4VFdReW52?=
 =?utf-8?B?bnpZdUZWNjFMeWZYZjgwcnFIb2hNaGFIN04wSnZReFQwd0ordFltY3U1dURo?=
 =?utf-8?B?UTNxSllMS2s3eXc0T0Z5SHJHdnJEeXd3cndRcUhnZlhtVkxBdmFrQ3EvWU5O?=
 =?utf-8?B?cXFFN3dwUmJQTnZ1Y3pjSm51cU1VanU4WHlxTVBCejVvYWc1dUc1QXhYbFF3?=
 =?utf-8?B?UEJJRDFpRzJQTVVCK0dobXNmQlA4LytMZ3ZXdFNyKy9JRXdQQjN3a1lnOFl4?=
 =?utf-8?B?RE9CY2gwRmVZcHB3Ym5hTFRGN1hMejFmR1ZVZlV5SFgxZENRbzc5anJISTVJ?=
 =?utf-8?B?TS93bUQzY09IVS9QMWsvYmZnUFB5Wk1wbU82ZFZGSEF1SllCNDV5c2lwZU1W?=
 =?utf-8?B?OVE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5288.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adcbc352-c01c-437b-337d-08dae8c06cac
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Dec 2022 10:43:58.0311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1kqyr8/DU6Md0Ja6jgozuvOpxvwMauj2jffkf8uR3HiRwnuNycv/taC6zToHft4X2Dd6tpndEz5FKqiAU4NIWSo+lpTNTfP7D3nsTfmGwno=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7139
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672224244; x=1703760244;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RJJL7JQqKm8IIP6GVsvhjK48yoWkYtfzF5gHd1a4vvA=;
 b=HN73D6vcNNbnUhX84EJHdvTSNp3PS6gkAnBn9HDkYfoC7GlvmOf1U31o
 rU0QGIDCv3cLLK63GbZ2YmKvbHreSYF1p2+gxmYlbc8pKZtk02dsUZPCH
 jlWAhgBa3Jegt++RyIQch2iXeJMsEGUxjyqNZ+CNJbK+/q1r1l7gtNItm
 gtEHd48GCwRjHCnXVjC2iUg8Re5Wl3fPNcGX00XYB20v8MWz5kCf13/JH
 8+PUDyaW2s5eGJHKbhfDMUnGibGgz7YyqouIW+H48J4XMQcy9sUpk1hc6
 i/s2OYI1jGt72pvRp4MdW53p9l5szZiGz8aSPysIxDcBFjkexafVIip4V
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HN73D6vc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] e1000e: Disable TSO on i219-LM
 card to increase speed
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
Cc: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksDQoNCnNvcnJ5IGZvciBsYXRlIHJlc3BvbmQgYnV0IEkgbmVlZGVkIHRvIGNyZWF0ZSBuZXcg
c2V0dXAgdG8gYmUgc3VyZSB0aGF0IHRoaXMgaXNzdWUgaXMgbm90IHJlbGF0ZWQgdG8gbmFtZXNw
YWNlcy4NCg0KPkRlYXIgTWF0ZXVzeiwNCj4NCj4NCj5UaGFuayB5b3UgZm9yIHRoZSBzZWNvbmQg
aXRlcmF0aW9uLg0KPg0KPkFtIDIxLjEyLjIyIHVtIDE0OjI1IHNjaHJpZWIgTWF0ZXVzeiBQYWxj
emV3c2tpOg0KPj4gV2hpbGUgdXNpbmcgaTIxOS1MTSBjYXJkIGN1cnJlbnRseSBpdCB3YXMgb25s
eSBwb3NzaWJsZSB0byBhY2hpZXZlIA0KPj4gYWJvdXQgNjAlIG9mIG1heGltdW0gc3BlZWQgZHVl
IHRvIHJlZ3Jlc3Npb24gaW50cm9kdWNlZCBpbiBMaW51eCA1LjgtcmMxLg0KPj4gVGhpcyB3YXMg
Y2F1c2VkIGJ5IFRTTyBub3QgYmVpbmcgZGlzYWJsZWQgYnkgZGVmYXVsdCBkZXNwaXRlIGNvbW1p
dA0KPj4gZjI5ODAxMDMwYWM2IGltcGxlbWVudGF0aW9uLiBGaXggdGhhdCBieSBtb3ZpbmcgdGhl
IHBhcnQgb2YgdGhlIGNvZGUgDQo+PiByZXNwb25zaWJsZSBmb3IgdGhpcyBvdXRzaWRlIG9mIGFk
YXB0ZXItPmZsYWdzICYgRkxBR19UU09fRk9SQ0UgY2hlY2suDQo+DQo+VW5mb3J0dW5hdGVseSwg
eW91IG1pc3NlZCB0byBhZGQgYWxsIHRoZSBpbmZvcm1hdGlvbiwgdGhhdCB0aGlzIGNhbuKAmXQg
YmUgcmVwcm9kdWNlZCBpbiBhbGwgc2l0dWF0aW9ucywgYW5kIHlvdSBhbHNvIGZvcmdvdCB0byBh
ZGQgdGhlIGRhdGFzaGVldCBzZWN0aW9uLCB3aGVyZSBpdOKAmXMgd3JpdHRlbiB0aGF0IFRTTyBu
ZWVkcyB0byBiZSBkaXNhYmxlZC4NCj4NCj4+IEZpeGVzOiBmMjk4MDEwMzBhYzYgKCJlMTAwMGU6
IERpc2FibGUgVFNPIGZvciBidWZmZXIgb3ZlcnJ1biANCj4+IHdvcmthcm91bmQiKQ0KPg0KPldo
eSBkb2VzDQo+DQo+ICAgICBpZiAoIShhZGFwdGVyLT5mbGFncyAmIEZMQUdfVFNPX0ZPUkNFKSkg
ew0KPiAgICAgCVvigKZdDQo+ICAgICAJaWYgKGh3LT5tYWMudHlwZSA9PSBlMTAwMF9wY2hfc3B0
KSB7DQo+DQo+bm90IHdvcmsgaW4geW91ciBzaXR1YXRpb24/IElzIGBGTEFHX1RTT19GT1JDRWAg
c2V0IGZvciBuZXR3b3JrIG5hbWVzcGFjZXM/DQo+DQoNCkkgaGF2ZSB0ZXN0ZWQgdGhpcyBvbiBu
ZXcgc2V0dXAgYW5kIHdpdGhvdXQgdGhpcyBwYXRjaCBJIHN0aWxsIHNlZSB0aGUgc3BlZWQgYmVp
bmcgYXJvdW5nIG9ubHkgfjY5MCBNYml0cy9zZWMgYW5kIGFmdGVyIGFwcGx5aW5nIGl0IHN0YWJs
ZSA5MzQgTWJpdHMvc2VjDQoNClRvIGdpdmUgbW9yZSBpbmZvcm1hdGlvbiBvbiB0aGUgc2V0dXAg
LSBJIGhhdmUgdGVzdGVkIGl0IHdpdGggaTIxOS1MTSB0aGF0IGlzIGJ1aWx0IGludG8gc2VydmVy
IHdpdGggSW50ZWwgU2t5bGFrZSBjaGlwLiBUaGUgcmVzdWx0cyBhcmUgdGhlIHNhbWUgZm9yIGNv
bm5lY3Rpb24gdXNpbmcgbmFtZXNwYWNlcyBpbiB0aGUgc2FtZSBzZXJ2ZXIgYXMgd2VsbCBhcyBo
YXZpbmcgaXQgY29ubmVjdGVkIHRvIGFub3RoZXIgc2VydmVyLg0KPkFueXdheSwgSeKAmWQgc2F5
LCBpdOKAmXMgdGhlIHdyb25nIGNvbW1pdCB0byByZWZlcmVuY2UsIGFzIGl0IGRvZXMgbm90IGlu
dHJvZHVjZSB0aGUgcGVyZm9ybWFuY2UgcmVncmVzc2lvbiB5b3UgYXJlIHNlZWluZy4NCj4NCj5B
bmQgbm93IGhhdmluZyBkdWcgaW4gbW9yZSBpbnRvIHRoaXMgY2hhbmdlLCBJIGRvIG5vdCB0aGlu
aywgaXQgY2FuIGJlIGFjY2VwdGVkIGFzIGlzLCBhcyBkaXNhYmxpbmcgVENQIFNlZ21lbnRhdGlv
biBPZmZsb2FkIChUU08pIHdvdWxkIGJlIGEgcG90ZW50aWFsIHBlcmZvcm1hbmNlIHJlZ3Jlc3Np
b24gKENQVSB1c2FnZSkgb24gYSBsb3Qgb2Ygc3lzdGVtcy4NCj4NCkNhbiBZb3UgcGxlYXNlIGVs
YWJvcmF0ZSBtb3JlIG9uIHRoYXQ/IA0KPj4gU2lnbmVkLW9mZi1ieTogTWF0ZXVzeiBQYWxjemV3
c2tpIDxtYXRldXN6LnBhbGN6ZXdza2lAaW50ZWwuY29tPg0KPj4gLS0tDQo+PiAgIHYyOiBGaXhl
ZCBjb21taXQgbWVzc2FnZSBhbmQgY29tbWVudCBpbnNpZGUgdGhlIGNvZGUNCj4+IC0tLQ0KPj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgfCAxMiArKysrKysr
Ky0tLS0NCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkNCj4+IA0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9uZXRkZXYuYyANCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRl
di5jDQo+PiBpbmRleCAwNGFjZDFhOTkyZmEuLjJmNWNmMTI1ZmY3NyAxMDA2NDQNCj4+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYw0KPj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jDQo+PiBAQCAtNTMwNywxMCAr
NTMwNyw2IEBAIHN0YXRpYyB2b2lkIGUxMDAwX3dhdGNoZG9nX3Rhc2soc3RydWN0IHdvcmtfc3Ry
dWN0ICp3b3JrKQ0KPj4gICAJCQkJCS8qIG9vcHMgKi8NCj4+ICAgCQkJCQlicmVhazsNCj4+ICAg
CQkJCX0NCj4+IC0JCQkJaWYgKGh3LT5tYWMudHlwZSA9PSBlMTAwMF9wY2hfc3B0KSB7DQo+PiAt
CQkJCQluZXRkZXYtPmZlYXR1cmVzICY9IH5ORVRJRl9GX1RTTzsNCj4+IC0JCQkJCW5ldGRldi0+
ZmVhdHVyZXMgJj0gfk5FVElGX0ZfVFNPNjsNCj4+IC0JCQkJfQ0KPj4gICAJCQl9DQo+PiAgIA0K
Pj4gICAJCQkvKiBlbmFibGUgdHJhbnNtaXRzIGluIHRoZSBoYXJkd2FyZSwgbmVlZCB0byBkbyB0
aGlzIEBAIC01MzI2LDYgDQo+PiArNTMyMiwxNCBAQCBzdGF0aWMgdm9pZCBlMTAwMF93YXRjaGRv
Z190YXNrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4+ICAgCQkJaWYgKHBoeS0+b3BzLmNm
Z19vbl9saW5rX3VwKQ0KPj4gICAJCQkJcGh5LT5vcHMuY2ZnX29uX2xpbmtfdXAoaHcpOw0KPj4g
ICANCj4+ICsJCQkvKiBEaXNhYmxlIFRTTyBmb3IgaTIxOSB0byBhdm9pZCB0cmFuc2ZlciBzcGVl
ZA0KPj4gKwkJCSAqIGJlaW5nIGNhcHBlZCBhdCA2MCUuDQo+PiArCQkJICovDQo+DQo+VGhlIHJl
c3VsdHMgb2YgdGhlIGFuYWx5c2lzIHdvdWxkIG5lZWQgdG8gYmUgYWRkZWQgaGVyZSwgYW5kIHRo
ZSBjb21tZW50IGV4dGVuZGVkLg0KPg0KPj4gKwkJCWlmIChody0+bWFjLnR5cGUgPT0gZTEwMDBf
cGNoX3NwdCkgew0KPj4gKwkJCQkJbmV0ZGV2LT5mZWF0dXJlcyAmPSB+TkVUSUZfRl9UU087DQo+
PiArCQkJCQluZXRkZXYtPmZlYXR1cmVzICY9IH5ORVRJRl9GX1RTTzY7DQo+PiArCQkJfQ0KPj4g
Kw0KPj4gICAJCQluZXRpZl93YWtlX3F1ZXVlKG5ldGRldik7DQo+PiAgIAkJCW5ldGlmX2NhcnJp
ZXJfb24obmV0ZGV2KTsNCj4+ICAgDQo+DQo+DQo+S2luZCByZWdhcmRzLA0KPg0KPlBhdWwNCj4N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
