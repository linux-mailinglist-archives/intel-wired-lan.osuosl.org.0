Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5666999A7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 17:17:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F1536122E;
	Thu, 16 Feb 2023 16:17:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F1536122E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676564224;
	bh=WMZvdyZ5v/zz0IIpX3oLYtNXtAKLvsM1LdY9dXOxTWI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UP6W/HRk8OWrclleFVO03Z4fBLcIytRdSue0QL3Vy+FDjnBHZoSznQaKZC4YSQpYL
	 ABPG1asObgWXjXsOUaddZflMk5nVzh9WTgjwx30LjNMzLjIbY1VrhqFlmhEABwh0Nq
	 6CYN6+zA0bCIA3o9CJSznGiUyiKU+zVSfh7u5SHijxR8EB5IeT+razsaLeA7i3ln7g
	 xO59S+UFsXW3xu1FVkqbGIaDGU3LkEtk3HWacdUBRnYgnOGr/nbtsYOqmbs2X+cLtx
	 8yOox+m2oxMkRGyIrCXJ5lQbUQDz7d+wm3PTsQNSoF++TgacbUHf29+4RbKvoMSsUN
	 PtlrfYR+Qnw+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vZDGe-2cRkyg; Thu, 16 Feb 2023 16:17:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16D6861249;
	Thu, 16 Feb 2023 16:17:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16D6861249
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 507DB1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 04:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33F9B81FA3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 04:56:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33F9B81FA3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id euRCgQAuHX4j for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 04:56:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0551081FB0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0551081FB0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 04:56:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="359054092"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="359054092"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 20:56:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="779218417"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="779218417"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 15 Feb 2023 20:56:23 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 15 Feb 2023 20:56:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 15 Feb 2023 20:56:22 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 15 Feb 2023 20:56:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S9XZZT1WPa2BFHLn3ZyYuXPPFHzkjk1ZoRtXSMAUaFQrVBZ4Qe0O0XstGTCCdf3fBhw2OBWtPETD7DL8a3OMUK/PR5qD5KlSNtuf/uaMWPScqqd0HSOlQuI6gRAaGyOQe9aOCJxrZfWW0QJ8/glgFJVR17/mBQSq5t/EAaEhwDQwkW4Jlf+OKhdLYaVLhww2Q/HjpbFhXKdgRVz1v49abZALHO+ceOLuSVvoItUZUnnCimQnofBO1QenQDX8wZaQq8WCCLMpQ8yZGCt02ZiA3PiBEUtdA8W74ToAPG6/d9k1lZEP9RbJM32iO/KDHids0BNUCHOwXT6nO26+NSTMlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cx83NzUZfIIFuonucq7C/BEzi8Ew7ykdjpOXgyv4U+c=;
 b=cGhH7L8I8ZtNz3cIGp16QQ7D7UJFLbBsyqdWtEB43gNeF9L769bjkgALp/E7X16zMwnWk9Mjz0xRdV8+nY8oC59qtYj7chy7n5qAKBsKtFQMS8tfRFSW2YJ9uqd97QYBm42BwaPnzbUtt+jFaKJYlF+C752qTuo/JsvwNSWz4H8qXEpx37e0rrnw8f02tRGbH7VhW/HMWZNAdHGA2qcwb8elw6MUgcNEFu9prMoeynXZcR7IC6C8ron2/TolvD+xSwIxBaaAj70jzZ2nxJxZMOWwIah5N2/9UioKvjMZxV2qHYl1kGwH6KrIM+Y21OS2xEZhmZIsc/jFFwgLjTwkUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2360.namprd11.prod.outlook.com (2603:10b6:903:b9::9)
 by DS0PR11MB7406.namprd11.prod.outlook.com (2603:10b6:8:136::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Thu, 16 Feb
 2023 04:56:16 +0000
Received: from CY4PR1101MB2360.namprd11.prod.outlook.com
 ([fe80::ca4b:b3ce:b8a0:f0da]) by CY4PR1101MB2360.namprd11.prod.outlook.com
 ([fe80::ca4b:b3ce:b8a0:f0da%11]) with mapi id 15.20.6086.026; Thu, 16 Feb
 2023 04:56:15 +0000
From: "Sarkar, Tirthendu" <tirthendu.sarkar@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Thread-Topic: [PATCH intel-next v4 8/8] i40e: add support for XDP multi-buffer
 Rx
Thread-Index: AQHZQT0hbpGdu3N3TEq0KQ5WGv+W/q7QF22AgACaFoCAAFFJ8A==
Date: Thu, 16 Feb 2023 04:56:15 +0000
Message-ID: <CY4PR1101MB23604F7E72CD838A3A4CBC7390A09@CY4PR1101MB2360.namprd11.prod.outlook.com>
References: <20230215124305.76075-1-tirthendu.sarkar@intel.com>
 <20230215124305.76075-9-tirthendu.sarkar@intel.com>
 <Y+zxY07GZ8aI7LrV@lore-desk> <c78c5e12-1c5a-5215-812c-b10d4b892a1b@intel.com>
In-Reply-To: <c78c5e12-1c5a-5215-812c-b10d4b892a1b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2360:EE_|DS0PR11MB7406:EE_
x-ms-office365-filtering-correlation-id: 2d7a1be3-6fc3-4225-0cb3-08db0fda2276
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8VcW2wVwmy2dZvJssL+cfRkDfZu2edBKKzksrA5W5ot7q1rw0CnVWNqlT2oB07KO8T1QHn6yRuPXxzd78+Gz2zrnvK5W01xDNToy3eemZCRJKSKAsqokbAdyDbZK/YD0IzuYpwgxMt+CJYZ2JAm0BpvPVYbdH7GXVLoR9j3ElEHDr6yMEbg5Q57M/VEAfR2FBm9QdmHyLW5HdaIq+pqTyCz9alG3cKifN8onKnQBwzHEuGd4+Z6KUE5ez7pyXBPYulD7MQj3cuEIk1eVEo5DX5YNmJzWMa8WQEQ9TMpGLbVX5O6vx66mwVNSjTrp4xzOjK9h7OPmJJSt+d9qJZZufckBOaE473c6ovqeUut0T4bFiOSm7FT/bg324AjWIKZWGl0JQ9C20S2rPhEBcWM0yy3L3pUDbju3jGqppTvuK52pwbW15IBXOmeOjnY9AL40lHh/xEanpbLxK57mkHBm0XdvfBTl4cJ4dLA3BYSAQZi9coPu83IOiSRctwbW2neiMiMIbWg10otsCCFdo1DrG/V3f9DLbH0PfUZW+8EEri5gfTgHXBVKrLD6780ObSSK55plM6QjfZumNToRTdRpFTo/DX4DxJt3KABjMRzVBHeTOF9rJDP/QfF/iiVQf3TcosA5djQaXnsCrn1tHw7F+zXKqmaGzWTgfTInbsJukS0Gczy2QpHRZivbikgvBol8YUvGIqjmZLM2rq47VN28PbYl1gRh6cdqmE20CJPrsbJUkM0FLwK4I9m5hxJzvSr1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(136003)(346002)(39860400002)(376002)(366004)(451199018)(82960400001)(8936002)(5660300002)(33656002)(41300700001)(478600001)(966005)(52536014)(71200400001)(54906003)(76116006)(66556008)(7696005)(64756008)(8676002)(66476007)(86362001)(66946007)(110136005)(4326008)(9686003)(66446008)(6506007)(26005)(53546011)(2906002)(38070700005)(55016003)(107886003)(186003)(316002)(38100700002)(122000001)(83323001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MisvRUdnYUVlaGdFQVhGMHB5MEVmOVBCOS83cFNQTENLcUtGZkxsTzM4K0Rj?=
 =?utf-8?B?UUVsYXpJeUVMRWJvSDlXY0IyT2w2ZjRXbnF6ZkluRm8rbVJxb2NsZGNrbnM3?=
 =?utf-8?B?YzZpcDhEK05LQUVibE52eElRZURiVEd6YzBpZmlrRndCWStyaGc1cklRRDRz?=
 =?utf-8?B?TTR3NkxmKzEreC9mS3JMeGRadnRtNVF5RGduV0JlYUtPblhzR0VGT0prZHVI?=
 =?utf-8?B?dGVQQlZVT090R0VZb2FydEJ5dzh3bGZjbGppUDYrcTZpdEZxNDhybDh4ZXBT?=
 =?utf-8?B?ZG8xNDlvVXUwejZNdmZxQWdkcUdsTXFiQk9QUVdrTElyUXBXSWF3Vzh1NGZr?=
 =?utf-8?B?M2J1c0xZMHdGWnNpODJnL1lQOW04dlA0ZTVlQVdmWStzTFBCcnd0QWNRUkZx?=
 =?utf-8?B?MEJkR0ljU0JyTkttMmUzMHFxOC9tTmZuQWo0YllvUFVwdU9RcUJ4allWRFpn?=
 =?utf-8?B?N0NEdmR2SW8zbTg3ckNROWRlL2s3Qnl5bkpRSGNURkZKS256ZStpWUliVUE0?=
 =?utf-8?B?TTliamg2VE45SktreEtVTnVEZk13ZnpvYy95dzQ3MmwrTHMxOWN3bkE0L05N?=
 =?utf-8?B?dEtnNTN4RlhXL1ppSjVQWjJrV29tK0d5b3MraWRPZitMcytPcFA2USt2d3ZJ?=
 =?utf-8?B?cHp0Q3E0c3ZYTlljNzVQb2pQNGFDYWxKZzFXMlU4elpmV1BXVGVzT01KYUVl?=
 =?utf-8?B?eVBZcXNEUVBXdWdwbWxtL25aNFFUUE8vTmkrYkR3bXBwNUluaE9iY0VMeity?=
 =?utf-8?B?ZWN5a291Y3RKRFJOQnp4L2ZGMWtMYUJVVUZreFVtN1FiT2FnclhHek45R1lk?=
 =?utf-8?B?SGtET2JkVDdXT1pUZ3R2WW5XYXJYa3A4eEM5Yk9NNExYNnY2ajVBc0xPaHB3?=
 =?utf-8?B?K1hzbEYwMGFCcFhYcndPa0ZNblgzS0hmYWJQY3hZYllXVzJwZ0Zma3QyZzRt?=
 =?utf-8?B?c0c4enh4emtBOWk2QVY1VC8yV3NmTHBWeWozd3F6b2FvYzQ3S1MvaWNEd1N5?=
 =?utf-8?B?TlNUN2ExZk5NSjErTVpJd3VmUXdTY282cTA4aGVxbi94NTBFOVFwTHdaRXBq?=
 =?utf-8?B?RlEvU3VFWmZST2E5TWZadWpBRXA3VTByMXZ3K3VESk5lNnFUNmFaSjR0UDhj?=
 =?utf-8?B?Z0oxaTI4ZDNzdUs5ZzhzUzVBM0NHN1FHQlZKZkNZZTRXZ0gwQ0ZmTUsyRk9s?=
 =?utf-8?B?S1l5UmtDTjJLa1FjZGs2cEpnMFl3VXZoVFRlK081cUZVSFBMc3NpRXFLSTJZ?=
 =?utf-8?B?Snc2MlJmd08vZ1Mzc3dhOW94a1VFYnE4WlBlSXY1QlhKZGwvbE8xUzFuWnpt?=
 =?utf-8?B?WVZpN0lSQUJUd0UvTmpZRmIrTDVkV0hQTHdVTnMrei9oKzhROXpOVDRBZVpC?=
 =?utf-8?B?YmhQSlZxUTlQanlDNlZwcmJjWXJkNGZqL2lJZFREbGtSdE0xWCtzOFc4MzQv?=
 =?utf-8?B?TWFlWGNCT0tPM2syZnE0OUJuUkpnVDRKeTdsOVB6NjFqdzY5bXBkRjVRVTJZ?=
 =?utf-8?B?d2hieGMzclJVaWRDdTkvYVFuQW1vbHpYN0JzUkZZUkJiWnpRbnV1TVM3RjNQ?=
 =?utf-8?B?NHFkNTVSSUxLQ2lsVlZsV1pKNW1uUVRqZHNIbGIvWFZneTJnQ3FtaWxrQ3Fu?=
 =?utf-8?B?T2FhZ0R4aGRQdTVJZXI5bW1ZRmUyUFB5c005U3Bza2M4dWVtd0gzYUdIdjNY?=
 =?utf-8?B?RjBSTmRDWVIrN0JDR2JTUWtUbTRvRUdyd3NVcE9tR3puS0p4Z3BodGJ1ekc4?=
 =?utf-8?B?MEk2cGwrak9yK2ljZVpPbUF3WVgvZVZVc2hzVnVKL2ltTEsyU0lFQ2hXTE5C?=
 =?utf-8?B?WmVGK2xTUTNhWXlKZHQ3LzVwRW1Vc2Qvc0dFU3kwdEZUOXQ1ckhMRElFSVhz?=
 =?utf-8?B?K3ZQbXJ4RjRNa2kvenZJVFI3WGFscmhPL0VCcVNEMkgweXkvc1AyRjBHZmRS?=
 =?utf-8?B?ZmhxOXc4dGRvQTEwVm5JZ3pFRzBKbzByTEdwb2dsbmZQbm5oVzhKZHB0aWE4?=
 =?utf-8?B?bmhJOStIeHFuYXdzVG41bFhlaTBBOEJaeDV0ODFPT3A4eDF2VlV4SXdrbzFu?=
 =?utf-8?B?cmJJSzNCMmduV0NTeXpiNEcvOFBqc3RkVFZxekdZMUs3RVJYVW5BajhjcjUz?=
 =?utf-8?B?dHJTdDd4NHdqSlhYb1ZVMGQrOHNaczlEZ2htd3hFR2s2VFRIWm5PWjJ3cEdy?=
 =?utf-8?B?K1E9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d7a1be3-6fc3-4225-0cb3-08db0fda2276
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2023 04:56:15.8037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6Q9uOOvjdhcJgjLyfIXJfDy9yKbscvHWDgS3zjo1sL94p2Ob+hglD8dSdtGUyQQ3fY+ACeYcsXBFmk7yow89DC9Abk/4GSi+wEx90nyZ8NM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7406
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 16 Feb 2023 16:16:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676523383; x=1708059383;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cx83NzUZfIIFuonucq7C/BEzi8Ew7ykdjpOXgyv4U+c=;
 b=jOOYCBlZHOnuAQRNEwkA8Fiq8KTUlqH3tC5VVfybgnSvqfgBdb0/aQg6
 px6js5I9ZbAyiL7KmweL80KBnVrklHUmh9d1D4z3tOZ3OOSGyEfnsN+Rh
 u+j0ZhazvtBuTO835WMAw8p4rZMomTtaULpn6kzUn022lHwgCIcWEFyyi
 hBaGZ3vbzHc7AUfTi4pl0QUNBQtYr2uWanIEUe9RprpxB+7sWkf7tBxSg
 Y991zOK0YxlAw0TWatb/C+kr13+kuFiz80FDIaxZPkzFrtOkNIOERhAdZ
 1QCQMCiwXRawobv13xlU0opc2vbq+b33D9qJatAfgh9KDzwpmh/F0q4AI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jOOYCBlZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-next v4 8/8] i40e: add support
 for XDP multi-buffer Rx
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Thursday, February 16, 2023 5:33 AM
> Subject: Re: [PATCH intel-next v4 8/8] i40e: add support for XDP multi-buffer
> Rx
> 
> On 2/15/2023 6:51 AM, Lorenzo Bianconi wrote:
> >> This patch adds multi-buffer support for the i40e_driver.
> >>
> >
> > [...]
> >
> >>
> >>   	netdev->features &= ~NETIF_F_HW_TC;
> >>   	netdev->xdp_features = NETDEV_XDP_ACT_BASIC |
> NETDEV_XDP_ACT_REDIRECT |
> >> -			       NETDEV_XDP_ACT_XSK_ZEROCOPY;
> >> +			       NETDEV_XDP_ACT_XSK_ZEROCOPY |
> >> +			       NETDEV_XDP_ACT_RX_SG;
> >
> > Hi Tirthendu,
> >
> > I guess we should set it just for I40E_VSI_MAIN, I posted a patch yesterday
> > to fix it:
> >
> https://patchwork.kernel.org/project/netdevbpf/patch/f2b537f86b34fc176f
> bc6b3d249b46a20a87a2f3.1676405131.git.lorenzo@kernel.org/
> >
> > can you please rebase on top of it?
> 
> Jakub,
> 
> I believe you are planning on taking Lorenzo's ice [1] and i40e [2]
> patch based on the comment of taking follow-ups directly [3]?
> 
> If so, Tirthendu, I'll rebase after this is pulled by netdev, then if
> you can base on next-queue so everything will apply nicely.
> 

I have rebased it and will send the v5 once the 24hr curfew on sending patches is over.

Regards
Tirthendu

> Thanks,
> Tony
> 
> > Regards,
> > Lorenzo
> 
> [1]
> https://lore.kernel.org/all/8a4781511ab6e3cd280e944eef69158954f1a15f.167
> 6385351.git.lorenzo@kernel.org/
> [2]
> https://lore.kernel.org/all/f2b537f86b34fc176fbc6b3d249b46a20a87a2f3.1676
> 405131.git.lorenzo@kernel.org/
> [3] https://lore.kernel.org/all/20230213172358.7df0f07c@kernel.org/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
