Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76CE595246
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Aug 2022 07:59:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9286F405DB;
	Tue, 16 Aug 2022 05:59:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9286F405DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660629566;
	bh=LcEJBCbu2/q3YVR5Xmesd8oACU+sXMcB9N8DEoaLrOA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nUxBbh7lt4wKYKDzAwwLmjiz6zLcor9sVrF6eQVDhQYFIH3Fc2m/bPKdQLpK16IO2
	 TCC98szqLcrhTj2D5ZoWF5jy0LL7X4NvkQhDMWV2wEmHXTVHnonuP77373n13rJmuW
	 19xJ1LuKfl1tieg6YayiTdiQntsFIBPwPkwrzaaorYOtRBrPY2J+Ay5vbXHWLhTI2I
	 HbNz6aXjBfShioPbZxQ8JwBXbIoHRi6iwH98BQEubOyI/cYOxZZVFbyxWf2T2mGW89
	 sezcZMkTZJ9eRWADWKpkasw4g8m2XSp8cvUBTAExmfVeh8CTQdx+HJTV0L/PZF69tj
	 /wybkDrYT1xfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eIcXMPqlb6Wl; Tue, 16 Aug 2022 05:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 752BF405D6;
	Tue, 16 Aug 2022 05:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 752BF405D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E81FD1BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 05:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C091160E66
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 05:59:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C091160E66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HyCJYHyueuUg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Aug 2022 05:59:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEB8760E71
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DEB8760E71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 05:59:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="290886481"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="290886481"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 22:59:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="603406827"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 15 Aug 2022 22:59:16 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 22:59:16 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 22:59:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 22:59:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 22:59:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OSYUShRxWSnveJn4NTulUTW5jrOoZu00PFp4748O9wwpXxAxh5m87JPVsoCulUORFrOr/PXEo4XDNt8S+EZ6Nf+zGVP2RmxoIe8egggBAlJqQ3rUr0SJVfEsLQ06ve7VPTkBpLAnYikTjsd5DfzYWYSRiHFAmDvho+Bj8Jh6aC0JeSW9t6P5mzlkaY/sgo/mcLibz+QW7HbNRFHG2/JtzIYLwQ0NTyRUWi2iR1EQRDyDwJHK8a/0a4plfTYNk31dwy2vfZRGrVRUpywqvF9MXiK5Z6CAY3ijpOndcnyJ+XrVWAKiittJjkwZ6fFL1lwuKFHHVbVUxdtsNE2KBkDGXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zT6CWrHC3Dlx2VT4Dp3XvENro8mbSOPrJz3ot1kbQ5I=;
 b=XJONZbIZUkyIJQI0v4IqLWjN2+uYBgyfmS/rLpUUqYi4HYoBGwUPLCVj/Ojz4yutsbCSgQHdIBb7Hc73SBT5RsfVv7HvBYtxvvS9nD3KdLdHHXbpNXs4wyT7oN9WOGbk7+C/PchSsVBn9yr/6a6AbiBxV9WK4kGRFNgCsROdWFuMjE2XGICPGwhj7maJZstXGQ5ucsoNhPaBWzOmi2uT9pgWh+i4WTAZv8d4PRycjIXpdDIlJLebjpWQ4QX2XQM7YlaOOhMoSwuXv+NMs9KiekcJ0A+ZpvjV7mXkFjmFtsXIbHh0lXBcT1tr8vY1t92tSRYtEQdJ2CiLyjMZNYKnfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3029.namprd11.prod.outlook.com (2603:10b6:a03:8e::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Tue, 16 Aug
 2022 05:59:13 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 05:59:13 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Barsehyan, Mikael" <mikael.barsehyan@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5] ice: remove non-inclusive
 language from codebase
Thread-Index: AQHYrmWyaA6t2GuSO0+SzUzKkFUAyq2xDbMg
Date: Tue, 16 Aug 2022 05:59:13 +0000
Message-ID: <BYAPR11MB33678941B872C48E72DF4707FC6B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220812160749.68579-1-mikael.barsehyan@intel.com>
In-Reply-To: <20220812160749.68579-1-mikael.barsehyan@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 46b4f299-0f48-4c9a-7282-08da7f4c71f4
x-ms-traffictypediagnostic: BYAPR11MB3029:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rS5d/Z5SAAHeYMT+F2cNJ66M3zBHOlslCAwEaTymyPlaDRXJNjYSXq0ZiY2P5/Hmt/0DjYjpuq8xQa2iNj7lw9Cnt+aWJsusz4l9kibIUSystodn3Ru6lvZUIrCa8BkGYrga8PGwsbPlXz9Y9F1Hufek4q87xxVU1ZUrrY8cq6SbtJYctbMDQHzil9v7NKYyj50VJmtuCq3o+l2fWNy0fco5nC0c6NwrzuqAxwQRmaoQ8Z+Mz/ZGjJbkYcqVfpNJ5LA1CBB0VdZLMIdki8dOQqcZugqm/jDJdXKVnwHLpUQRLGdyiOs0zkIZJ4qTLpaIPfHYsgJsFR8hG/SnwVYBreIsBWQLS6tcsota7ZNqqjeblw383n5V80suPO4PXQ9U8snZo6KE2+wNvBhgeASoeMjFceTnPkbN8TCUKsHQHcLR3FNknQZG7yZPb85AQVK9irslv05VYl86jWD5SnlFN45obiBmYn0TykbMEr51qoSfBTB7zQgEh9tZsDyAYRCyIpLK4oH1mqXd5qDKEtZ2Zs4pln3GPdWGwtlUxJ0Ev5GEjfx4sjcDcA+d3mV63q2sZf/QxCRyoMMPJ4BM8kaC8kTsHrDpA43mQe1EPKkZ4ZSQOaHBISsjwtVKMCmz1K8m1n4OuKd1GTdQwDFXW6/77mR+vDHan9SLDYedxGNLZ4RSYM0AxwXV3GkEm5NW5eALZhOouXJKMZU3nRZRG34oAeiBT45wZIzhxDKto7fd2nPEj7eCDP9gNK1ZbuBQ60solN0HIRQvYn1xT7p9HoEiQFjJK54F/dnYC9MqGr9WMY9KkksTtCXTTMGIuy8c2UED
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(346002)(39860400002)(366004)(136003)(33656002)(52536014)(8936002)(5660300002)(2906002)(4744005)(86362001)(55016003)(26005)(55236004)(66476007)(71200400001)(7696005)(186003)(38070700005)(41300700001)(82960400001)(9686003)(6506007)(122000001)(76116006)(83380400001)(478600001)(53546011)(38100700002)(64756008)(4326008)(8676002)(66556008)(107886003)(316002)(110136005)(66446008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?toHX90liXNgv2+mQDjovSIGbgIhOiUBpuE1bydGJjlCK7/50i316WMPNmxon?=
 =?us-ascii?Q?O6akixDB1VsCEklSoB3Kqkhaz58cPQqYeBCRtll2epDgXys0xZwPIvRDgveE?=
 =?us-ascii?Q?fq8Ta8H8yXrnpjaUYv/7SxyDSjk30LsHCuSdSRYfKKd2i2uIRSuQGw6BsJuP?=
 =?us-ascii?Q?lTCKp9aiTJ8ht+tjFUjnk46aVcXzu+hhHI5FbdAELX2BbtQbOo/j2dHRd0Uo?=
 =?us-ascii?Q?BSyHktoZuSlEOr/bhdvJTg5lJicAKlmpjL61yDlOGeiQaMzTr1shk2PAUSGr?=
 =?us-ascii?Q?WjZizL85s5ZAKWfOFxJsFR/hvAIedRyJsZYxGEQ3jBAt6nqxgvsit0Z+AZN3?=
 =?us-ascii?Q?eaOje6HlGKf5uHQskv2mLy19SSSXavBFlj6G1/OjS5y1/JLhDNthsblONcgY?=
 =?us-ascii?Q?VUWRQ6sLUamXWoyB5iJrxM73+hyat6S/knzolFCcJYOMDD+XvD6eexPTL88v?=
 =?us-ascii?Q?k1CEgXNui3OqJRBTCp876VJ7e+6HpXYPzulXL2+L2evyrnkYfA3gWbNLJlFK?=
 =?us-ascii?Q?vx/tYbzHDhq8aDywpKBBQLQbU6qNxzcFue8naVw2sgIRBKBV53gCw8GZRR15?=
 =?us-ascii?Q?4a4GqwQcktctqtDbroGHWZFi+IDUucNHtR3QLzRNPoSLj/w7BctlZt8T58QX?=
 =?us-ascii?Q?ngjL9hNfDAst9ZsGKaCJUfYW5RWNVrqoXKmfwXiMzMexoRc4MUQ88Gb4FLPX?=
 =?us-ascii?Q?I7ICWTpFdrHmy7GyIzJ/ZE+bbIs886U7zWSJMtyEAAgGnnLPiqHdlLMkUB3T?=
 =?us-ascii?Q?AKnnBGajN5Qs6L9CJWh0bROaIFOqNy8AU8FyqTOCLDmpuVc33KBgeCPBhWfr?=
 =?us-ascii?Q?j77Zpt/lPSku+eshQGTuIIX4sZI5hUj9fH9MWFrf0qYJQtyGO0jQySqFc6i8?=
 =?us-ascii?Q?ZupRguYxJtUnflxAGHHA8c9g0lXZ6vNG/+FRMMxxejHMitoj5sQyK/g95sz4?=
 =?us-ascii?Q?MUV7kqdG5CRNvDq4b6Ggfk39l7igr8la9mt7CaYtKGvZlJWUH54Ut1xWDH0z?=
 =?us-ascii?Q?ScAFH8zAz2qdC2yIC/9YXKrnLj5dQfIkUE6eCr7cdyRN8dCHt0v//LPzP23h?=
 =?us-ascii?Q?SXLqVZvG8xGk/e8agDwXEJXOa3JyZSdTkJx+xZzTQ8EAfeXPRbBqMb9WoZPb?=
 =?us-ascii?Q?neF7UCMXIFA1uCNobZhu7pXUlFXO3FFV0piW0+JLa2b6YJ3wSIKtoiwrWY0O?=
 =?us-ascii?Q?N5J4z2aStOBk3d+4xZ1wvm5/cinnvlqOnzsOIIyhNceO0c2JV0EAoJZpm2KP?=
 =?us-ascii?Q?29riwG0bD6iKdIn8lPe7iepUTnXLFbriQVPXLzCCwyYCk/XCr8vWESfDXkmZ?=
 =?us-ascii?Q?RozjNO8zDKi+ey0xu7ucb7QgJaOi4GALHVyZ6ACMAA1VmRvh77klQxRT9tai?=
 =?us-ascii?Q?iqUvSnqy0ztqB1ZPGHusclMkJDf6kLLzyJ2yTu1Zb/OrJdbiTzAqG7d4wDJg?=
 =?us-ascii?Q?Fx2oQLsa/E6QzE/jMoMUXfuyCD/5Jhm+HgNBd9MN+1dWUoO+jzgrgfBeJHCJ?=
 =?us-ascii?Q?RpjP+FQ0nchkAFmbaIyASkUSSFD0qFdq9sBQUR6DbkKdTpYoed8elZqp342D?=
 =?us-ascii?Q?5i0E4QvkToCqjk5UEMlkZH9Hf345D8R6DSbolKwQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46b4f299-0f48-4c9a-7282-08da7f4c71f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 05:59:13.1809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l/f0anOv8fqhAHr7432BwMspD0w5n9x8Yvzhe8bmcSIVu5Bbrak1E2KxSB0SH/K5m28GmrfUrzCiDuzTIqTC9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3029
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660629558; x=1692165558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9dWbMKVlv0HY2bfLRdyXaHyttLw5xr7jgkMr73DonHc=;
 b=EHcnmQurGgaZBJKxze1PwmeQXlvNyjtgRnlFNGVaAW26s8iNujd8C6RZ
 I6BrX6drIyNY3aWjylVpN6D0KgKXXzJdIHeZnhvuvtCUnmOOx2oPyfApx
 xhJ6YrCbXspQn5HdeYUiJcB4+B3DKzvv251ly7DXhIQVyXf2Z+n7guDCD
 q6OU2fRndcytFkTlnfxuvEz93v09SSJa16o8AY/pI3du9cUxGMIdSjnMD
 FKf9eh7ddTb/8tFszmlQHla0Q75yhIMDeOV7sN9dfxVzSD0Ck2lRRV7x7
 aBO22ZNtM/lj5Aq+Q9H0kinnpQKy6l/vkzWW7xiRYuNvmFgJaIVPM+Waw
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EHcnmQur
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5] ice: remove non-inclusive
 language from codebase
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
Cc: "Barsehyan, Mikael" <mikael.barsehyan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mikael Barsehyan
> Sent: Friday, August 12, 2022 9:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Barsehyan, Mikael <mikael.barsehyan@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v5] ice: remove non-inclusive
> language from codebase
> 
> Remove non-inclusive language from the driver where possible; replace
> "master" with "primary"; replace "slave" with "secondary".
> 
> Signed-off-by: Mikael Barsehyan <mikael.barsehyan@intel.com>
> ---
> v5: update commit message to include "slave"
> v4: replace master/slave with primary/secondary in ice_lag.c
> 
>  drivers/net/ethernet/intel/ice/ice_lag.c | 16 ++++++++--------
> drivers/net/ethernet/intel/ice/ice_lag.h |  2 +-
>  2 files changed, 9 insertions(+), 9 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
