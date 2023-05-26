Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30CA712224
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 May 2023 10:26:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D9D7404D3;
	Fri, 26 May 2023 08:26:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D9D7404D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685089564;
	bh=bYBy6fA+R299r8yMnYtwNuSzqJw4isaU9Ydk16HkETU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DmWK4LyJOkDVPQdiOjguDrywyO2cNKrU4lFaQYFfYRs5u5LzvQNOoPDVH702tQrOh
	 Q8C03nV83tMHqdMtt6jVJe1mr3H0FQXbi5bo+4x9z2+/mk6RscErWIrtdpYBgH1l06
	 JOqAU7HceV0g8JaK3EY0mTD4ovfh897ZrqQ/WddSA+ikIT7sBXTym8OWnM88iKN0oq
	 mYJNZiNDwaz2mSlVOaAgwrt6Qz/2MGuwKkRxEKhlB8DEalsvtQMypNzyI21J3Vobup
	 FqAuhAibZQaLUJ0RqmS5BvbEZsnsNsGjmSB1960vJvmONWcaV6qZ6TBA8VwX/BQUR6
	 mkyA9EhH9KC1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MqW4qfEJex06; Fri, 26 May 2023 08:26:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D7B340147;
	Fri, 26 May 2023 08:26:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D7B340147
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB4481BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 08:25:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B1FF76F506
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 08:25:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1FF76F506
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TJCo3PgWgPKO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 08:25:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B41266F505
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B41266F505
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 08:25:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="417634256"
X-IronPort-AV: E=Sophos;i="6.00,193,1681196400"; d="scan'208";a="417634256"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 01:25:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="817457745"
X-IronPort-AV: E=Sophos;i="6.00,193,1681196400"; d="scan'208";a="817457745"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 26 May 2023 01:25:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 26 May 2023 01:25:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 26 May 2023 01:25:47 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 26 May 2023 01:25:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fGi7Ee9JCjBxEvuznf+ceuAQ6C4k3QUbJjKqK5pCvPkoM02pfcBfHx+Z9kAro5kXuONApxBdlOc0cxDEAMgOpadZRgPAWxHOZX4z/HuAwFpcmR1cBvoDWkS2xOXldfM5uzxnTm8LANgzgpcNNI4FxL5S/vtGrvZyKjhc8JLZ8Mf6c8Mce6MnlGD6qlXtf1XJsp5flk4f3FpRO17GKXxPNjPBKDyqWRmcNlkvegptWCI0JPgmSoibzrfaj85oAqOY65IimSUpdOzoBUhQABbx/z9DLMVL7D6qiAvV4YjjtDqky4BrpAwXbJ2VXkrq2u9tDnEvQyuZVcE2kzzHcD+2HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QGjmoneEco3ZgEkIYBQw21z5Ab9EoEVHmUtjimQKYo8=;
 b=SJQqLGmJlrbwqopbZ4kHKFnyi8gYdEmutsA22K5LCzhgEDI6IX98aY0v17IwfQQLxh/EiTfEIz5znXKutIZ7baRPxqsYmKlWbWXkcxGs9Ldy71XMFvK4YdDTqEkQhAlqYoCSIm0UinrB+DQ6ylxXfTIHYQMHLFljrR4L+TDC1R3M1JJKdQpxvBi+Q1e5A1w2UoreQzvbi11I11wx5/zTmYY/7uPXPu13J8+HCiccVthYIBtkOarQXV2o3R5T65i4ETus7JNExOQ3SOWh0F+Y1WrlCjlXFwH0J6+GMjLD2d7jaJQDUINYzRPe781qNrxQZuQEYB4rokck+tndbN72ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by CH3PR11MB8186.namprd11.prod.outlook.com (2603:10b6:610:15a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.16; Fri, 26 May
 2023 08:25:44 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::788f:25cf:e3b6:cd23]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::788f:25cf:e3b6:cd23%5]) with mapi id 15.20.6433.018; Fri, 26 May 2023
 08:25:44 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Gardocki, PiotrX" <piotrx.gardocki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 1/2] iavf: add check for
 current MAC address in set_mac callback
Thread-Index: AQHZimLZqwYrAXqjUECG5TfoG+18ta9sQm/A
Date: Fri, 26 May 2023 08:25:44 +0000
Message-ID: <BL0PR11MB35211565522C038B848204768F479@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230519150029.370332-1-piotrx.gardocki@intel.com>
 <20230519150029.370332-2-piotrx.gardocki@intel.com>
In-Reply-To: <20230519150029.370332-2-piotrx.gardocki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|CH3PR11MB8186:EE_
x-ms-office365-filtering-correlation-id: 99c8baa0-0686-40d8-159d-08db5dc2ccdd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T994wLXtwBiFLIcw9EVBavJxskLsmjD3+Cw+D8gQPQWVFakca58CcPfSOlpwO4DDKl2EdtoHwO1CSKxww5T1idLzw3vFoPmV1J0n29VPA5/qTI4yRdqKmpTBKbQqgpdeALZrSWVFRFHeI6vsRWdwS/P3oh5ae0iWLfSBqwVlrq6rgC/nPruGGp01OGHZMO716AwOpwYzqRrXOAMEyeYi+1SAEpxldmIWHLFjUZCPSKg6hoRV+7Clrz1US2IqSST0rSjdzM7RyA00aUOZ1Slexw132oquZOQdftYdIsGaLc9iCVfjV6jFN1dBExAG/pDX+RB4EdXdET6JYGf0xMFq5Ch2HbTS/uMjhJ4mw4drJYpPJL1MFdOBrigNfSsqb4S2oAlDk+zoIwESDae5DPLd+eSxBSZ2K+v8E+RitnfJKytkaNys5jVePGn1Z5kEBO3M+nP3D2Ae1u2gaDYjDgyQsQ/HsPXXipcDoHosjEnrwUSHKloWGSPYRkIPjpJc83+GU/zboYQWfPgJ4qtmR6Nz4vtgDJsxkitJDVsdttfS7V1dnJyKTQNtkZ/ytVJre3AhKKP7BHp5u8wMBulNP/lj6oBMWW43G0E1SLSxUXTgrAU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(136003)(366004)(396003)(376002)(451199021)(33656002)(86362001)(38070700005)(55016003)(966005)(4326008)(54906003)(316002)(110136005)(66946007)(66556008)(66446008)(64756008)(76116006)(66476007)(478600001)(71200400001)(7696005)(8936002)(52536014)(2906002)(5660300002)(8676002)(41300700001)(38100700002)(82960400001)(122000001)(53546011)(186003)(6506007)(9686003)(66574015)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?wUvyu3ZuyF7FcebQHOzb8vGJYTO0XNri6U5WMnjKW4Fr4KTE7nUkaIs1u3?=
 =?iso-8859-2?Q?vrXitPfxZTqSRVx6Qy1mULlSn7lCFqrrsVd+a1Exk+MSEYhlQMwE9LJFHF?=
 =?iso-8859-2?Q?0MvaY7nRS4+gySXJvz2er9kyfnS8sIiICsr/1+hoGSM+so9mMs8wXrX3pA?=
 =?iso-8859-2?Q?5gJnNXj9/sVSLmq8bAZUgXspWwg9eGYfxwU8GTyPSrJe4LSsbtVyk7CESt?=
 =?iso-8859-2?Q?zg6zHe2LOX0M/k9fi7S1uz8LQu15eX2YMN3ryu+1pgmQ+ZNeOG0FZVlxg6?=
 =?iso-8859-2?Q?5Axzdp/2oE1voXkjh+atGg0el8KwTwXQ0DVmqT0DxyFJCZ1WGtsk7cNQcz?=
 =?iso-8859-2?Q?8F7Kvfy/xBmMNzBc0C85BCwJsvumdfNwPBm8uV/+jH+7amxVT7vNU46QDF?=
 =?iso-8859-2?Q?CNZ9oi1LWCg79rtHMCVXn5ZDJGpRMEdRWabUb1iQx90ku0Cz3MgiRX2Hny?=
 =?iso-8859-2?Q?qoIebtrpuk6fe3spEmam3e+g7O+2kOP/qRBnTrVh6inBslPnoYZd4+lw45?=
 =?iso-8859-2?Q?Z7ChnClKjUiVMVSZBHQbhyrh2dOXFW9vrDIGNQFNTf9oWr1dOAgSY7jjpW?=
 =?iso-8859-2?Q?8+1DI5gO/Gdfa8FO1VcYuBi8QVjBRbbAxirvDBsY4b62pv4/FOTOB9CpAe?=
 =?iso-8859-2?Q?Csxz+iFIxvZoz1kuJoXw+7wtIJj00NqdHJ5m+bfbxXCi2Mu2P/zppVyVHm?=
 =?iso-8859-2?Q?xuP3oEq4afzsJwKK6GcemgMfl1C0BwhpDDr2V+CATkMcY5Wi5KD1YyYOGW?=
 =?iso-8859-2?Q?Nd5+JlI6+TNUdNYxapqc9PCW+VV77nnI0E8maaGa8r1yc1xf5jn2jMKtLR?=
 =?iso-8859-2?Q?ucBFcZlDCKLakzWm2hhxmJ4Wbvgd6qE9gYg27QDVu5w628PFM6K+SO3UVB?=
 =?iso-8859-2?Q?kOM2DyV96s83zK0V7nBXGeMDj3nDNv8rezu4/oGWwptpCYii28LfhsbUOC?=
 =?iso-8859-2?Q?77upaTmkxVoufW+Lw8C/1F+2sJDsYu9tI5RYfpylHdsbBfimv77YYWETfy?=
 =?iso-8859-2?Q?d6h5Rn1EoC+GPIDlZ4oEYI3nRvYE6OXPpXQiXZJjHFw5U2n9OLBrX3pcSG?=
 =?iso-8859-2?Q?LXBNqhVR/+2PJr6C7NRafxD2VMo2kU1I0U2bIy2SZEIyepr8PxwycRrbuc?=
 =?iso-8859-2?Q?hmeMwMkeZsVDvS6a3wXdcz/9tPx3O22JNX5ANYpurFNsvpczCac/QeKx1O?=
 =?iso-8859-2?Q?MPQZb5lQRNXKGItzx8Jl0UXurq5sRwKan0yTHYKrWgsjMhOP7eapQeosR3?=
 =?iso-8859-2?Q?yVZ8yYtNUkWCaPrM7kUbwBgDmFKNpppU0RpbjRvr+hBow4BZNj5O+2poMo?=
 =?iso-8859-2?Q?HsdkXburg+ftMJTM2J5cNFCX+qEqJMRKUW0fr5YE1E3Hz6IqnpBCwcoZGF?=
 =?iso-8859-2?Q?VV1qovouES9ot3aM1ZVRT6W3u48g4iHT1dPn1UM6dmwBQHrY+l2A1HKbEq?=
 =?iso-8859-2?Q?p8O0DZRKj2KmvygyZ4CNKS4P7waFTyp8L9L9KFq57U8kDN5GXtSrI0TmgI?=
 =?iso-8859-2?Q?tAnte28Yc42V5ZFlAItHV4HFQrah5rCEYA501sIDKEQoQUUce4c+I+k29i?=
 =?iso-8859-2?Q?LH9AR6Unwvt+LGeTbDSBYDECmPMFuHxcNhMwXqb0QDwuyr2oHyiSl7uKkv?=
 =?iso-8859-2?Q?J03lds4wSzybo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99c8baa0-0686-40d8-159d-08db5dc2ccdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2023 08:25:44.4707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EEtIcMq00mjVEsVRaKUE5kKoZk/LjH6NjQETsbmasiVeIvWmJK2MUKZXGUEolIPPLSjMznTBPYxQ4sgYAvemDqvgvlAFD06nXIodNYaNoFM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8186
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685089556; x=1716625556;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JnjHMNIJ3KRkv5u9jzzwGRHtE85Pq6XKSyRi78Hyy7A=;
 b=UmGP7Tb/Rgmu8ItmLQfMhm2YXOe5yhGoYEMJ81HOvkyw9uFV7BqLgRyL
 n40RVUHgthgQDS1fPKzbituaYKrnrs24uSwj6sZGdFNbMfIu46ehJOk7S
 94dJGhQsRmwDUwYOt3qZMR3xHPA8aES9ilu1Cmv7MdJgPj/LGixXr82AV
 vKrS9BSWFP3BhrtvnWb+WUVS2+ZlHYqwoYRea/v0QiZy2ZZP37sXQyBaN
 tY8U8aGy3yHo/2XyZSgQXnJYVSdsUMrSBICD2CAaRHcrIWRZNdnzDHks1
 2ZdSyFbTBoTJETkWmIFy7GlRV1JQ9F0jxPBma0/nF2JVYXY9a16/pEgKE
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UmGP7Tb/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/2] iavf: add check for
 current MAC address in set_mac callback
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
iotr
> Gardocki
> Sent: pi=B1tek, 19 maja 2023 17:00
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> pmenzel@molgen.mpg.de
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/2] iavf: add check for cu=
rrent
> MAC address in set_mac callback
> =

> In some cases it is possible for kernel to come with request to change pr=
imary
> MAC address to the address that is actually already set on the given inte=
rface.
> =

> If the old and new MAC addresses are equal there is no need for going thr=
ough
> entire routine, including AdminQ and waitqueue.
> =

> This patch adds proper check to return fast from the function in these ca=
ses.
> The same check can also be found in i40e and ice drivers.
> =

> An example of such case is adding an interface to bonding channel in bala=
nce-
> alb mode:
> modprobe bonding mode=3Dbalance-alb miimon=3D100 max_bonds=3D1 ip link set
> bond0 up ifenslave bond0 <eth>
> =

> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index e18d7cacf99c..888d063478a1 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1085,6 +1085,12 @@ static int iavf_set_mac(struct net_device *netdev,
> void *p)
>  	if (!is_valid_ether_addr(addr->sa_data))
>  		return -EADDRNOTAVAIL;
> =

> +	if (ether_addr_equal(netdev->dev_addr, addr->sa_data)) {
> +		netdev_dbg(netdev, "already using mac address %pM\n",
> +			   addr->sa_data);
> +		return 0;
> +	}
> +
>  	ret =3D iavf_replace_primary_mac(adapter, addr->sa_data);
> =

>  	if (ret)
> --
> 2.34.1
> =

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
