Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1EA58174D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 18:22:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A33D4234D;
	Tue, 26 Jul 2022 16:22:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A33D4234D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658852523;
	bh=Kn6rRBs1Ztn0g4dDbuloTPGPBbtPaxb//6yH0sp3KB0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pcWJmDs93mC2eQrnKbYBwOQgkFOhzTBlI+xoJPThmO3VTQsB9rwoJBh8AeFyd0EhI
	 GW/bpqRcwC4YLyRIwwbUqZb+jUoLiKHrhnScFyXM8N5WqXq0cPcpAYEfloD3oGQ2LZ
	 VrxomjTKW4jvbFTaopXE2ku5u0TNNJC40VY6AZffhZxzY8FvYOe9VXjYFe3ZrssiD6
	 jDAiKw2up8gNymoxciDvM7quAhpySQrJ/k+cGXaV9U4NX9v0e/ntOzLB58r/jB4gAi
	 9rKepEfwlo1PMTmypeXjNfn76qfMDahQym/QoHLtcjTR/2rr3U7HJxx2gjmwOsFJGx
	 /RaXunPTDzVgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bY4Pi6US1tNX; Tue, 26 Jul 2022 16:22:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9274942313;
	Tue, 26 Jul 2022 16:22:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9274942313
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ADCCB1BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 16:21:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7EC9E42313
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 16:21:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EC9E42313
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zhx4wFIgdqJT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 16:21:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6825422FF
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6825422FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 16:21:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="349697836"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="349697836"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 09:21:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="550464322"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 26 Jul 2022 09:21:02 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 09:21:01 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 09:21:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 09:21:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 09:20:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JAQvD6vuERFq3ZmJSsGDiOPuzkOM/8vIKQOuazgM+KhtDIlcA6UpL8KzPnvVqRkztw2iYKlSirq69Ndfe53w0et4k6t+Ok53CcLCS7enJBfY7f4ILeXA6sqfI+Xf8HnCpMl/6KrpV1kCyeHJRV90ohNja3pVEO0vE9PDf7RxPwSbO8wZKzHCPuXPcpRoU9yUw0Oux1aB2Y6Qe3RQ4lXLg8LFp2JkRkXwvqtNqKsvJKSLNvgRBUczp7G1hWi0FO7sGbLdFeFzgdLUudxwWNTnagJ5hpm9s4x5aopBXJIbPjnYnpB/QTIWZr/STlY+UOqggluDBIMKBMnOSNFiWTLTZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Opaw1+QyXmTkPLgBeoM0PNSi4zU4eHhDbyZrRllEgaM=;
 b=IwprmH9PQgwPsVWGC6WgZHi5Hhobpjk6K7D1U2JeMdQQeq5CqyvmSFgJ1Am6sM+IBny92mcBjnUfD0tildSjjNr84/ed+kK6bJFM1Z5/5j3hL1c1AmPB6tIs5tp7OL3E+JuVRDVM3mQmu3sijgANdWPT5wQUTgBMk/SDLW6V40eQnJnGY1+QR97V0ZBRz4PLqouW9UmgAwby/X6mv02IRj9P8tT9eI5j0dkQseXo5hzrkVQmOhIfbYqRY4ZIZYR/i6G/2N9a09YlvOcxHnkrIm0D2Dox6/Ex0gXgbh/NPiAH90znXIl+kdq8j5Bak9n108aQyK5KF3xZKsC6/aTL/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by SJ0PR11MB5814.namprd11.prod.outlook.com (2603:10b6:a03:423::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Tue, 26 Jul
 2022 16:20:57 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5458.024; Tue, 26 Jul
 2022 16:20:57 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 3/3] iavf: Fix reset error
 handling
Thread-Index: AQHYm1C1RGHvNhHJk0SxpkyY6aCuja2Q4InA
Date: Tue, 26 Jul 2022 16:20:57 +0000
Message-ID: <CY4PR11MB1624A0430199E19DDCE8C526E6949@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220719091654.329774-1-jedrzej.jagielski@intel.com>
 <20220719091654.329774-3-jedrzej.jagielski@intel.com>
In-Reply-To: <20220719091654.329774-3-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b21ea0ef-e359-44fa-924a-08da6f22d26e
x-ms-traffictypediagnostic: SJ0PR11MB5814:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1TbdcGfCFGuvqGpbalxbcaAg1NTraV3f6cT3IbF7SDRnUQndheHbjf3jScScQGCiC1xkrxdRTOuqiD8QqK/9g8yH6pXu565qaiorK4EARF/zBguO6A7crEsOdTpVTHCLihKsdq9ZdH4oHAntgRKKFxeZdf7RCjI84blai67n5JWH+bBBYkapPi3EKES484jj1svQv8WkNW9kXpr6JaCGQWGCi14zy5VubpKES3axMzXEZYa6nV/Fl6H/ChC4YNUgcp3r2et2L66BHzQejsUZ2UxCh1kFcT+JmX47FZlFZYGYrAQT8Q7PPrUwkXMmmdDcTsVuFFbqClr84bzBNGs8vTxsdMBRP6EM/AGVzh1hpcOLA/9XwuBAv7uxw85uAdoa2xvgFfjOgpAoOIK8R+/vVVS1K0DIjou01tNfxMsMr4X/ID+suQglGobPrLsYHM6TxbdUAInwqfo6SyOrUZMq+uj+rT55Es9zcO4RIPVr31nImfFq+Vdc+r5LqoswZTBwwl/dRukZY/QTam9lWq3/ZLbkWm9H/mlnef9xOS3+Iao8unKwg1zPqGhwsGp8FkW4fQ7jWAZkTjK0Caaa8CAHL5ZwDRuiTFWROWfP9R4lQuktfKPvPbUJdPAoWAzRLpHCH6vAaXAyAaDRINjcHG5TeXIb1i2QCp/0o7aBGWpFCLPJ4ZT63ivMwqTG0wzVHgR95z/oRSrxXdmge/E9JBYmzvhq6byI6kPjQqFguV366GfzNhZkK4WjDGKDBgsivTBfUCEkR98oPL5LEK4ANlJV7p7M5nJZI1XAvQ/sAnBLZKegNxTe6Vhsa1QcmqcVVWYq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(376002)(39860400002)(136003)(396003)(82960400001)(9686003)(26005)(5660300002)(54906003)(53546011)(6506007)(8936002)(52536014)(107886003)(2906002)(478600001)(186003)(7696005)(110136005)(41300700001)(76116006)(33656002)(38100700002)(66946007)(83380400001)(38070700005)(71200400001)(55016003)(4326008)(86362001)(64756008)(66556008)(66446008)(122000001)(8676002)(316002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?20KyVMJcooaPYdYi9rRHT+Hu+340WBaX74mVkl+aSYLA6ybGPOx+uXoXOALd?=
 =?us-ascii?Q?LSAUqSzR/o9ZM35q91ZAfKTNC/Amr6Z8P6LCCQm1JaIPt30SwgiMMIP30rh2?=
 =?us-ascii?Q?KyQw7siTLTTimA6ueBSjXis7b3kk8LJK9+o9EgCnssqCG4xF0dabcsEnTdqZ?=
 =?us-ascii?Q?Y6tV3X0JafOB9kJN01IXGU/2Lqyp8g6AmW5F0ovYqk8rqoqciq0R4l9Os0ws?=
 =?us-ascii?Q?OQ9p2nmBmwhV9RKPf9KIXxSnjX0rszSLcFSV/7owuf/EbCLe1nYkqI6whWtx?=
 =?us-ascii?Q?K4DksEMFjklPbwDJ9FCOSzrJAtPpuR4B2e/fcDkxda8mZ8GCeWv3rxiR90Yq?=
 =?us-ascii?Q?gOd+eN35bngU1EKMcNRgbSEsgrxb5TAaGuWfPnq0pKlUd/H8aSWoZnAdGTGX?=
 =?us-ascii?Q?G9GMTXlSeT8hB79Whgs2hyKVPXdHBbqmfnlTGk9BZttB0EeO1SNhkgqNE1a3?=
 =?us-ascii?Q?f4ZzbmuXfx5p6rxW53ZMAXLQBHWcjksrZWI/VbqJW2Farp13m78Ny7tM9/Cn?=
 =?us-ascii?Q?4DR4YRV7/Tq6KfEWb7MBuKagodP7ZPagBIFKJPyxUMZ/wihXjMRMFXeczUyE?=
 =?us-ascii?Q?A9H4Z37YBeykSuY2fFYICELcfcLuAzh2CAwG5hJsjDzYXfLx7g3gPMJbvMoQ?=
 =?us-ascii?Q?DRJbKZJYQcgyKE9Pl+0hGJ+n2Z5sC4Tkq7cnEidvgI3D9ZwwsQao8ElD+r61?=
 =?us-ascii?Q?RybynsokSzt1VPjr0NuodsaxS38pWuFhFg0KfWQBxXrDqbAE3j5CWB+KO4ub?=
 =?us-ascii?Q?ET2ChznDBLusvxtPk3GJaglyNZriU6nn32RhsyiUZFHKVWnqBcH5C4rxrZWr?=
 =?us-ascii?Q?L0uoG33ispcIxr9NaQh+PtAq08KsXt54PgrxIGawcluCJdjYii52ZbtuqulN?=
 =?us-ascii?Q?GauzVAh39CGjb2x6Hf94XhR9E0uqaydr6Gj2NYqWT+ptWvA23P+sp9ijmikK?=
 =?us-ascii?Q?K36diLRmyqBL8npyJSBdsQvupaE4NxFaYE7UmSqfWSccELPpcConZ+l4hTch?=
 =?us-ascii?Q?cJzfbpx/ASak7thjxUsDwpvkB5i28hgYQZZcRkDrFF6doNTPTrzijBmkKmHz?=
 =?us-ascii?Q?mw30uOj3c8yizsgxXyWFBBFbBib2d4adl08mf1aazB1LucJmmkuLpP6Q/Q4B?=
 =?us-ascii?Q?SIRySEVKdloUPRVZrdAzrB+fzYVzJLt+JNCjdJBp2/vSYPOHqp3EOXwZgRq1?=
 =?us-ascii?Q?v66XJRTwEmurOHdFvfvIKvhovsnb2OfY7hjWjfQcoBWBL6yC23j7I8v3T5fO?=
 =?us-ascii?Q?szLJVihCAG6YhPb8BrIB6CnZZtBFGtFIdK7KTqruulqx0vs72z2JxAoE2J9n?=
 =?us-ascii?Q?OE2WOQwdZjiJb+Xahu8D3rrOm+vobl8o68r/cB2WtTm3VRe9VJDtB8Gte4Ya?=
 =?us-ascii?Q?vXSz1vNFuX585G5vK76R5YJurvigQhPfs6vK7H6yeI7y8MFNe+gp3erNHnIX?=
 =?us-ascii?Q?up/1AiQ0k7Oz27njYTb6V6Kws0eF6btW9s3u8sg8nC0cJ3/F4i/H82pfWO76?=
 =?us-ascii?Q?G4VN5HfQf9EoHOli4a0aYpR4nWjkvhJEyfxm/vgtO6TAGyadEPuy+5RN7NQo?=
 =?us-ascii?Q?aRakZ1BfmSn2HTx0dGebGSf965fGVThry+hNeDKe?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b21ea0ef-e359-44fa-924a-08da6f22d26e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2022 16:20:57.6067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /Oe8EF6fXt/Kwoqtb1fxSACkqF/SM5DUE9X/UVlck8nag0C+t3sDh2d+/GZpzVrQ6hNXO+OBGqQK2+/kj8+mIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5814
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658852510; x=1690388510;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FVwQzH78150bqQTu0WJ+Z9UYA+xN0g1uV7quZ1hdg4Y=;
 b=cA1Y6Hq8MADUs5FS6b2rKWLY92ZQ77CyOKI1FDxVLrkPYs/YzlMXeLou
 03m5zqFd9GGhksRDFytRC/W2mRI7JyVx/ys9Qq77fMA3fps/GVFq3CMaK
 HMkSwmz4TRbt4X42TSzpz3sE3NStciZ6kwLQadIPfUyoYjTcsD+hqeEXi
 xVMfbTw9V82G/vLgk9XUtajIhHx4lRXuxmH3cM3/TUv/8AOsKgaOppTJI
 l0oRkbG7Vdih4GSBzkGZ44KKECjgjxPfyL+Uryx9bQQotPTzIZ7xAZRkz
 NrLef0vOPIkdshDgy7BNaeNMAtwqOJYAKeCaID499SJARTIjFDH31+MyZ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cA1Y6Hq8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 3/3] iavf: Fix reset error
 handling
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Jagielski, 
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: wtorek, 19 lipca 2022 11:17
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 3/3] iavf: Fix reset error handling
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Do not call iavf_close in iavf_reset_task error handling. Doing so can lead to
> double call of napi_disable, which can lead to deadlock there.
> Removing VF would lead to iavf_remove task being stuck, because it requires
> crit_lock, which is held by iavf_close.
> Call iavf_disable_vf if reset fail, so that driver will clean up remaining invalid
> resources.
> During rapid VF resets, HW can fail to setup VF mailbox. Wrong error
> handling can lead to iavf_remove being stuck with:
> [ 5218.999087] iavf 0000:82:01.0: Failed to init adminq: -53 ...
> [ 5267.189211] INFO: task repro.sh:11219 blocked for more than 30 seconds.
> [ 5267.189520]       Tainted: G S          E     5.18.0-04958-ga54ce3703613-dirty
> #1
> [ 5267.189764] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"
> disables this message.
> [ 5267.190062] task:repro.sh        state:D stack:    0 pid:11219 ppid:  8162
> flags:0x00000000
> [ 5267.190347] Call Trace:
> [ 5267.190647]  <TASK>
> [ 5267.190927]  __schedule+0x460/0x9f0
> [ 5267.191264]  schedule+0x44/0xb0
> [ 5267.191563]  schedule_preempt_disabled+0x14/0x20
> [ 5267.191890]  __mutex_lock.isra.12+0x6e3/0xac0 [ 5267.192237]  ?
> iavf_remove+0xf9/0x6c0 [iavf] [ 5267.192565]  iavf_remove+0x12a/0x6c0
> [iavf] [ 5267.192911]  ? _raw_spin_unlock_irqrestore+0x1e/0x40
> [ 5267.193285]  pci_device_remove+0x36/0xb0 [ 5267.193619]
> device_release_driver_internal+0xc1/0x150
> [ 5267.193974]  pci_stop_bus_device+0x69/0x90 [ 5267.194361]
> pci_stop_and_remove_bus_device+0xe/0x20
> [ 5267.194735]  pci_iov_remove_virtfn+0xba/0x120 [ 5267.195130]
> sriov_disable+0x2f/0xe0 [ 5267.195506]  ice_free_vfs+0x7d/0x2f0 [ice] [
> 5267.196056]  ? pci_get_device+0x4f/0x70 [ 5267.196496]
> ice_sriov_configure+0x78/0x1a0 [ice] [ 5267.196995]
> sriov_numvfs_store+0xfe/0x140 [ 5267.197466]
> kernfs_fop_write_iter+0x12e/0x1c0 [ 5267.197918]
> new_sync_write+0x10c/0x190 [ 5267.198404]  vfs_write+0x24e/0x2d0 [
> 5267.198886]  ksys_write+0x5c/0xd0 [ 5267.199367]
> do_syscall_64+0x3a/0x80 [ 5267.199827]
> entry_SYSCALL_64_after_hwframe+0x46/0xb0
> [ 5267.200317] RIP: 0033:0x7f5b381205c8
> [ 5267.200814] RSP: 002b:00007fff8c7e8c78 EFLAGS: 00000246 ORIG_RAX:
> 0000000000000001 [ 5267.201981] RAX: ffffffffffffffda RBX:
> 0000000000000002 RCX: 00007f5b381205c8 [ 5267.202620] RDX:
> 0000000000000002 RSI: 00005569420ee900 RDI: 0000000000000001 [
> 5267.203426] RBP: 00005569420ee900 R08: 000000000000000a R09:
> 00007f5b38180820 [ 5267.204327] R10: 000000000000000a R11:
> 0000000000000246 R12: 00007f5b383c06e0 [ 5267.205193] R13:
> 0000000000000002 R14: 00007f5b383bb880 R15: 0000000000000002 [
> 5267.206041]  </TASK> [ 5267.206970] Kernel panic - not syncing: hung_task:
> blocked tasks
> [ 5267.207809] CPU: 48 PID: 551 Comm: khungtaskd Kdump: loaded Tainted:
> G S          E     5.18.0-04958-ga54ce3703613-dirty #1
> [ 5267.208726] Hardware name: Dell Inc. PowerEdge R730/0WCJNT, BIOS
> 2.11.0 11/02/2019 [ 5267.209623] Call Trace:
> [ 5267.210569]  <TASK>
> [ 5267.211480]  dump_stack_lvl+0x33/0x42 [ 5267.212472]
> panic+0x107/0x294 [ 5267.213467]  watchdog.cold.8+0xc/0xbb [
> 5267.214413]  ? proc_dohung_task_timeout_secs+0x30/0x30
> [ 5267.215511]  kthread+0xf4/0x120
> [ 5267.216459]  ? kthread_complete_and_exit+0x20/0x20
> [ 5267.217505]  ret_from_fork+0x22/0x30
> [ 5267.218459]  </TASK>
> 
> Fixes: f0db78928783 ("i40evf: use netdev variable in reset task")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 5f486eaf04da..877d7f1b324f 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
