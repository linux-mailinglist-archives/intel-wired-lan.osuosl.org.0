Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE15AF6474
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Jul 2025 23:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E33BD612AB;
	Wed,  2 Jul 2025 21:57:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p-Y6sx1l70Sn; Wed,  2 Jul 2025 21:57:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF749612B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751493430;
	bh=yEOJO5SFaVHLGykgyyUf4gkM4voVYyGhyQWMccaC64c=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XoYJ3Ih8aONQTjJNy8Wj5Uxt2W6FCMMyIbubzLI14ke/iz9laUe4kK0bWLyq2c6sg
	 s65HElJMzeafbPC8ijp3kJpY6jHrHO+tkDEC/VSCOnnHbHD9pAy6zOvUBWREv2vRIE
	 fRvvrMgCAZCdpGgG9wQucMJYK3TKSrL6NunwXjhC3NuywZQxMKsiRZEB/vRZLly4of
	 xE6amdgAzMxnaFirq3ZJ9UtpYIOXmUXCnxxPL5mwGrXLKNfDxob4Jvh48iu0F9Se8y
	 deDBCFrc6Gai3PpicVMiIqRYksw01Nems5KdWN6G55ajslTZ+1bMgSn3bnf7rpbjQP
	 84b1kEk0SR7FA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF749612B5;
	Wed,  2 Jul 2025 21:57:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 48D29193
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 21:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 44EBF4006A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 21:57:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wW-x5DtRwyEy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Jul 2025 21:57:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3C7D740B30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C7D740B30
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3C7D740B30
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 21:57:06 +0000 (UTC)
X-CSE-ConnectionGUID: 4tNNP4TcRDazqrEZsbC+Gw==
X-CSE-MsgGUID: 9OV/WwevRnKd9Y0MgbDh6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="53924850"
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; 
 d="asc'?scan'208";a="53924850"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 14:57:02 -0700
X-CSE-ConnectionGUID: mdAO7MCzRE+SYhR672eOXQ==
X-CSE-MsgGUID: AEGNojpTRRSwbLChHTpddg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; 
 d="asc'?scan'208";a="158231426"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 14:56:57 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 14:56:55 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 14:56:55 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.60)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 14:56:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T2W+FkG/E2mFkOcRM6JNDc7D697cYRNqB8i1zYzu2giYJZV+uAtrsjmWThEAkS6sbccfuF/hHu2DvefROmGeDNBIN3S+MX59iU0tbMDy+b8a+raUEIMQ5FQJ6AgKDREpEzIL4Uej1FKo70nkxzRxc8h3PBxL/q3WB5R/Snce8tURPUSzx1Ch0bQ5b7QK92fIYXcAYrMo/3A+Sus8pk8YZkBm/sDbn81MNoTb2qHNCyJvT3e/Sr0yHeBn3SO7aZeQkVpcMR+AclIHDDFIqyU2bH33JAAfRRWYwPu+CMVRCzVhMue3xX/jZ+qQmIMHk9HBaq3Nh6hTPXSH132uCJ70zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yEOJO5SFaVHLGykgyyUf4gkM4voVYyGhyQWMccaC64c=;
 b=vl3O1/ffliCb9o+B9ysar2RrBFfH2163ITvvg2ZhkUWh5Nnc7yVXHO8rGxQSIHZpwWNFpmIYwEOVRvmmW6wVKZdyJ+gRxkf2Uq/ovAaWtWGqEBlq/XatcntdPVYUruz4KQcNcQB5xvhmiQFqg+fIWoqxyrd59I261wLRfVbF649lEGWES6S0QZEyrzSToQyK7SPft+Lw8GcZgIBOEipIrYxgpWa8AA7Cw9xq6L9mI9Y+tZdM3pqki+5Q2JYe8Tu8ZOZyIJm2bfNq9o3MiDRb/HbWXp1Ve8NO/pZNBA/h3YMVb3DwIyr7fuHujdmyb6TCMi5aiDbLbx6jBTcvZR5WZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB6655.namprd11.prod.outlook.com (2603:10b6:806:26d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.19; Wed, 2 Jul
 2025 21:56:50 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8901.018; Wed, 2 Jul 2025
 21:56:50 +0000
Message-ID: <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
Date: Wed, 2 Jul 2025 14:56:49 -0700
User-Agent: Mozilla Thunderbird
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------NiiihtrTDSV3KUE0QXoTXIlX"
X-ClientProxiedBy: MW4PR04CA0214.namprd04.prod.outlook.com
 (2603:10b6:303:87::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB6655:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bf5b988-3687-4de0-e1c1-08ddb9b3594c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cTRFb2M3TWlkK3FxMlhqcUVBTUhRTVBDc0tGc3pVUGt4SzhvKzg2VG5teUt1?=
 =?utf-8?B?SGs0Z21lak9OZk4rNTNPVU9PK05XdHMzWkcwL2duZUU2MzdINzdpcy9LeWUx?=
 =?utf-8?B?a0IyNEZpemZrZDc1QUtSUEljWVNtZENPaTB4SGlqaGJoOURwUjg0UDRVQlIr?=
 =?utf-8?B?MGxaS2xCWldZMWpteFh5NGptWEZsMzFnMWUzWmswNTZEU0F2a3JidUNSNlNz?=
 =?utf-8?B?UmRTcnY5VHhWZm9Yb0hieGdlTjlBaU8yQUI1T0xOMldrN1BKS0ZKZmRCbTZp?=
 =?utf-8?B?ZU5INmxnL09DdldvcU15ZndqenJmRjN3eE12TG5aL3hFYzRqNEpobUJUMDJX?=
 =?utf-8?B?TG15dU5DVHhSYmdZby9Xa1B1OGR2SURDcXhlVk9tYkNLY2FyOFo1aWxEbEFp?=
 =?utf-8?B?MEM1VWsxaTRIRHJhTEFqYUlRQzlld1hhTUIxekgzbDVZbERpTURqRFdtTkFq?=
 =?utf-8?B?ZkhaZjFFSEc5MTUzbm1BS0g5dWFHK2p5dUZIWS85MEU1Vm81RHl2NjduZWoz?=
 =?utf-8?B?M1ZtN3E3VXd3NjFWejhTalBXOGlrTmh4ZVVjTnJGeXJBN0k2eWUzbUJMcC85?=
 =?utf-8?B?dE1YMFdBOWZUK2ZlMzBlM1FXL0Q2dGdpREQrL3NtN0ZlS21UTlNXZUhTZjIy?=
 =?utf-8?B?bWgweFlmWmY1MVFIbjZ1ZEFQNkp0bGVYNURPMy9ia28xTzlVRytJK0l6amJ4?=
 =?utf-8?B?ampWdGErbVdOSFFRMngvSmtMRmVtZUV3SU15OENzc2VRaHdXTEVRNy9rRnZ5?=
 =?utf-8?B?dW5IMmJra1lzeEV1VUxrVWIwNzFIWVRUMVpJQy81YlNURW1jczlmSGwxTjM4?=
 =?utf-8?B?dTlCMlNISTlvZmF2Tk5pUi9uQ3FIMklUa250d2QwNTlHK3N2Vmt3M2VzQk42?=
 =?utf-8?B?WmEwQmRhN2xMUXhDZWNudTdUYWdDUFhRME1UNit2cUU5dVg3QytKV3lBT3Jl?=
 =?utf-8?B?ZzRxNFk3VjhMN3hrMjI5ZUhJN3BJNTRoNU4zczNvNDdrUjI1ZVlhdktlVE1C?=
 =?utf-8?B?K2VoYjRFdGZaMXRMWHhXbjJzdDZ3MXVwaFNKY2EycVNNY2NwL2xHYXpqMWFy?=
 =?utf-8?B?MWQxamhnT0o3d2F3NU1FRUtSQy9BMHhYUWlKMFJndlV0NUpvOWpwQkVEbW1v?=
 =?utf-8?B?aXV4U1krcE05ODdpdDZlMzVQTkRzUnBpUmMvblVybW54RUhNY0FVeEk4eTlh?=
 =?utf-8?B?N1hnT3hNWTV0dmppSVhCR2lQV3FDb3Z4OHZEOFp1WmR0bGZoVjZyUlFwSnVU?=
 =?utf-8?B?aW5YWTBId3lPM0paQjFRVjRHOE9OdWV1MlBPZUhBTVRLdGpFMHhqMTFNNzFV?=
 =?utf-8?B?NVJRd0xJNnh4YzNJcVIzd3h0NTUyMUlxSmF2ZzRmeHJkKytreVB0NTRRZ3o2?=
 =?utf-8?B?Wjk4a2U5a2cyZzhwQ3dzMG51SitQS1RrUnIzZ0daZ2pLejU5UCtSUGVmNjdO?=
 =?utf-8?B?L291YUNHSWVQV3ZEblNzSGxSN0d6YldYMi85UTNWaHZ3VTVEcm9ZcXpjOTF6?=
 =?utf-8?B?OEV4OGZVWmNoWnB3WnRaQWJ1YnUzQU9tQzdzeFNUci9BRUhZTUtrVWxCbU1U?=
 =?utf-8?B?N0pMWHhuUWxLRUs2eUZiTEQ3RjZ6N3pzc3FuMHFCdm91Ujc5VjhVSlh5Qit3?=
 =?utf-8?B?QlhqWHNMTTAvUVBPTDYzV3Y4WDZtbnlrWkhaYnBFTWRXQ2dnbHpSR2ZEdXJK?=
 =?utf-8?B?VVJDSHRtN0Y3YVdMVTM3VFVrSG5DUTZtYmxrZWhleUdPN1M2WmE2VEdQdzVy?=
 =?utf-8?B?S0pTbloxbUhGN0N5eWJjZWsrVmFNRDJ3aStmQ3RMem5XeDJsZFBVMUZ5UXJK?=
 =?utf-8?B?LzYrYWU4US8yUDU5QnVtakNsSWxvQTZveXU2SGVFd2dTNktISjNoVjNQRDAy?=
 =?utf-8?B?dXJ1M21mVHdzdU4yT1N4d1NLTlU3RHU0ZncwZzRxS0Fwenp3d2JaaU5wSjNj?=
 =?utf-8?Q?Y/foJ07sDVY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3V4ZnBBMHN6RGtDalZFRm1ZMTJ3cVJWRWlMUUZJU1RycXdpak9UakdrQWQ1?=
 =?utf-8?B?NVd2dU82amlZbldUdlJxTnRlY1psU00xSFlBdzJuenFiZUpka0lIWjlzc3Bt?=
 =?utf-8?B?Q2ZabTNGY1JEcGsva3FOVXhtTVpNMjlnNVNadnl6bE5OS1kwMFJWaEhyRVJ3?=
 =?utf-8?B?WUFlc1FvMVI2REhyRzJVNmgrQlhoY0hyN0IrbW5sVm5nNCs5d0FJTlZlTHQ2?=
 =?utf-8?B?aXNML2VuUUhuWGt0UHVtUFFoRGJpNHg5NmROOGFEdHE2N1J3Q1NEdkFKSUN5?=
 =?utf-8?B?WlRZV0FhbUVYbkQ4NXdiT2Jkd2hWVmNxWnAvdHMwNnppVTM1ZkgrSHc0OWUw?=
 =?utf-8?B?bEp1MFZCUXRDMzJ2N2YxWUxBaXZFVzFhWnAxWThCcHlVZVNPUytsVmNmaENY?=
 =?utf-8?B?azROMEl3aUFqbllsdTNUKzVqSXc1Z0VWaVFFVFkvUnVOZ0J5S0RxcFpoRE9k?=
 =?utf-8?B?MEN6aFlBSDZMUVlZQUJuUkZ1NkRPSHBDZ2RHNGdhekM4UDRWS2I4UEErUzhu?=
 =?utf-8?B?TjlrT0EzeU9VbE1MMHJWTHBuYU1TNEozNFRyRW9rMi9aMG9LTWpRQkQ3KzE3?=
 =?utf-8?B?Z3hHVGFoNmFhRmViRGR6UHAzSkZNblB2WnFGaWVSVWNxdVcyUVkxaFh0SHNq?=
 =?utf-8?B?Q2h0NEJsakd5YnQ0YkVtNlZ3eEpkVXpRUjNGMGpMSk9CVHZxb2JBaUZxaGJJ?=
 =?utf-8?B?WDB2M3BFTEpPY2U1Q2hZTTZMYkFsRzd5VGc4dWtRRis1S1Y1b3JwWWE1RWJN?=
 =?utf-8?B?OWRiOVg2Y1h6NTRaSERMdWlFVUJSWlhzWU1PY0p3TUxRNGkreVlVd1NHM2dh?=
 =?utf-8?B?VWJSdTdhaW83RTF0UDFKa3ZMWGRZM2YyVnZVc2NtaWlNZFpTVFRhSHRlRGlR?=
 =?utf-8?B?TU9xdDhCWlZrK2tXQjg5TTlhSGYzMUhnWFZqZU43MGg2K1QzQWVBWFh2ZjVl?=
 =?utf-8?B?YmJTUzdoR2dGUjFzN0lGVzljMWF1RlppOElVbFFBVjlpb1hNOFNkdU9jQlZR?=
 =?utf-8?B?dkxNem9OQ0JFOHN6WW9oU1dtYml0RjNGbmptUE1zY3RINzRSaG5LYTNUU2Vh?=
 =?utf-8?B?RGNXMWMrcTZvTmJ5TTBQSzUvQko0bTFRczd0TDZka0JPL1JnVDRxYm42NE9D?=
 =?utf-8?B?Qm01MzZ0WHVISjZKM203QjZVMHFieDBySzNsS0VKcmlwTVJ5cGVqa1FhYXNr?=
 =?utf-8?B?V0p3Z21TN1Nlak43L2FJY05xN0RmTjVKVjhQU2pWS0hNMFcwaGdQVHhTc09k?=
 =?utf-8?B?QTVhNDNabDdtcVRzbWNCRVlFRmNOMFJaZGs3TXh1cHB2cTJYTTVNUGU3NGpp?=
 =?utf-8?B?My90cmloZlhsUnozeHdONFk0TGVLQXB3dU9SSlZBZ3N6RCt1TTJldWoyampm?=
 =?utf-8?B?NW1BeFlIdlg5aVVJaFJWSDdJdEQzZTlqYWtzL1dIbzdOTUo1RUVlVHhDZTgv?=
 =?utf-8?B?UDJEMG1LVndVS2J6MDlRTytYMGJQOXYxVmFmdlBWeCt6M2ltSTRzc3dRM2lB?=
 =?utf-8?B?UzdHenZUR3R2YTBxamt5ZU40NVNjNTR4aFZzNFR4VkpLMitEaEduWjhRWitm?=
 =?utf-8?B?ellZaCtFZm1PTERJZWRBRlBrQ0dCWC9zdXpzZlQvQTFKUGsyekxobkhXUVFa?=
 =?utf-8?B?OVhuMCtYM0pxdUxCYU9vZmNFWUF2Y1lIRVZQS2VTNnVxV084cDB0K2F0d09s?=
 =?utf-8?B?WC9uT254U2lQQVMvQUY0elg0NXQ2QWJWSXMvNTkweTcwUkZIakVnREZzWFZK?=
 =?utf-8?B?RHEwOHVPZDNramh4ZUV6U28zUkJKNE1vUFc5R2Yzd1g3dEhYc2F0M2tjUWRz?=
 =?utf-8?B?THRuSGNnZFlHSHk0SnhLTm10K3JHSjE2ak5LcjNnQnoyMjVMekVUZDUxT29Y?=
 =?utf-8?B?bG5FdzNsRU1odTRLbXQvSW5ZMVV5cWRkYnJEVzZkS0V4ak43YU9McnFsR1Qy?=
 =?utf-8?B?cXBIZHZpelpoaW9DeXljOHg4SFBkeTdIa2h3REE0QXRWVGN1ZlZxWTluVWpz?=
 =?utf-8?B?S0xuZ3R3UmxYVkZXT2g4UngvVzRrOG9ZVlFFSWs2U0Q1VDdpUWFHZzk3Nk44?=
 =?utf-8?B?bzVhZWMwbmpBOEIyblkrNG82S1FWbWVnZ0F1U0xaeEFDWWVzODNaVWYyV1px?=
 =?utf-8?B?R1g2Zmk1OXNpV3ZqZGF6RUdmTXY5UnFWVFhPZEd1Qk9rRXJoc3N2QTJDYkJS?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bf5b988-3687-4de0-e1c1-08ddb9b3594c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2025 21:56:50.6612 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eGc8iJSBPX8ebgObChqNfOcRLy3QNO0nrNIfuOLYk0q7hyjpbPcFYBsV2ny3DTBqkNNqsWBLcX7SzwDe4KreoImyjFz9I80LSxxGOgv22hU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6655
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751493427; x=1783029427;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=xpzXPrGmBGkSrFjdyjtEbyC+I+Hzg+rnEZNFp7ZIZlI=;
 b=YmaSnWJK7F0Vq+ARtfFDdeyQTmk35RLkhJs+5lT7xEBArEZfRj0L6C7O
 16FV9PJ+/l0IyTTmSr2dYvYXGy1YjRGmwFJ/+RNPdEUn2rxDXp1TLSM1I
 wwqcfnrCWOzoB7WUQbpCF5iD4Ww3cgmEODWOlIwTcof8PWywpo4PVq89Y
 Q9Z4yfiPk38lOj4W+UJJ/uYoAM4hOIQS733ZeEsXLAOg8txuQniqaVuSs
 wpxc97vuCaPSaFqoyWq17IkRCzoVr3seDHuTe0ZVWjN6Ne73mkSUwRRp7
 WMPC3pJnFdmTkOhZdqVLn7aUC3NsZsUUULTjF4zCziwrcjPlFyADAzQLo
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YmaSnWJK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--------------NiiihtrTDSV3KUE0QXoTXIlX
Content-Type: multipart/mixed; boundary="------------AkJqnv5apZy8H0dhKlZe5OBy";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Dumazet, Eric" <edumazet@google.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Message-ID: <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
In-Reply-To: <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>

--------------AkJqnv5apZy8H0dhKlZe5OBy
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/2/2025 2:48 AM, Jaroslav Pulchart wrote:
>>
>> On 6/30/2025 11:48 PM, Jaroslav Pulchart wrote:
>>>> On 6/30/2025 2:56 PM, Jacob Keller wrote:
>>>>> Unfortunately it looks like the fix I mentioned has landed in 6.14,=
 so
>>>>> its not a fix for your issue (since you mentioned 6.14 has failed
>>>>> testing in your system)
>>>>>
>>>>> $ git describe --first-parent --contains --match=3Dv* --exclude=3D*=
rc*
>>>>> 743bbd93cf29f653fae0e1416a31f03231689911
>>>>> v6.14~251^2~15^2~2
>>>>>
>>>>> I don't see any other relevant changes since v6.14. I can try to se=
e if
>>>>> I see similar issues with CONFIG_MEM_ALLOC_PROFILING on some test
>>>>> systems here.
>>>>
>>>> On my system I see this at boot after loading the ice module from
>>>>
>>>> $ grep -F "/ice/" /proc/allocinfo | sort -g | tail | numfmt --to=3Di=
ec>
>>>>       26K      230 drivers/net/ethernet/intel/ice/ice_irq.c:84 [ice]=

>>>> func:ice_get_irq_res
>>>>>          48K        2 drivers/net/ethernet/intel/ice/ice_arfs.c:565=
 [ice] func:ice_init_arfs
>>>>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:397 =
[ice] func:ice_vsi_alloc_ring_stats
>>>>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:416 =
[ice] func:ice_vsi_alloc_ring_stats
>>>>>          85K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1398=
 [ice] func:ice_vsi_alloc_rings
>>>>>         339K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1422=
 [ice] func:ice_vsi_alloc_rings
>>>>>         678K      226 drivers/net/ethernet/intel/ice/ice_base.c:109=
 [ice] func:ice_vsi_alloc_q_vector
>>>>>         1.1M      257 drivers/net/ethernet/intel/ice/ice_fwlog.c:40=
 [ice] func:ice_fwlog_alloc_ring_buffs
>>>>>         7.2M      114 drivers/net/ethernet/intel/ice/ice_txrx.c:493=
 [ice] func:ice_setup_rx_ring
>>>>>         896M   229264 drivers/net/ethernet/intel/ice/ice_txrx.c:680=
 [ice] func:ice_alloc_mapped_page
>>>>
>>>> Its about 1GB for the mapped pages. I don't see any increase moment =
to
>>>> moment. I've started an iperf session to simulate some traffic, and =
I'll
>>>> leave this running to see if anything changes overnight.
>>>>
>>>> Is there anything else that you can share about the traffic setup or=

>>>> otherwise that I could look into?  Your system seems to use ~2.5 x t=
he
>>>> buffer size as mine, but that might just be a smaller number of CPUs=
=2E
>>>>
>>>> Hopefully I'll get some more results overnight.
>>>
>>> The traffic is random production workloads from VMs, using standard
>>> Linux or OVS bridges. There is no specific pattern to it. I haven=E2=80=
=99t
>>> had any luck reproducing (or was not patient enough) this with iperf3=

>>> myself. The two active (UP) interfaces are in an LACP bonding setup.
>>> Here are our ethtool settings for the two member ports (em1 and p3p1)=

>>>
>>
>> I had iperf3 running overnight and the memory usage for
>> ice_alloc_mapped_pages is constant here. Mine was direct connections
>> without bridge or bonding. From your description I assume there's no X=
DP
>> happening either.
>=20
> Yes, no XDP in use.
>=20
> BTW the allocinfo after 6days uptime:
> # uptime ; sort -g /proc/allocinfo| tail -n 15
>  11:46:44 up 6 days,  2:18,  1 user,  load average: 9.24, 11.33, 15.07
>    102489024   533797 fs/dcache.c:1681 func:__d_alloc
>    106229760    25935 mm/shmem.c:1854 func:shmem_alloc_folio
>    117118192   103097 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_inode=

>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_al=
loc_page
>    162783232     7656 mm/slub.c:2452 func:alloc_slab_page
>    189906944    46364 mm/memory.c:1056 func:folio_prealloc
>    499384320   121920 mm/percpu-vm.c:95 func:pcpu_alloc_pages
>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
>    625876992    54186 mm/slub.c:2450 func:alloc_slab_page
>    838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_folio_p=
md
>   1014710272   247732 mm/filemap.c:1978 func:__filemap_get_folio
>   1056710656   257986 mm/memory.c:1054 func:folio_prealloc
>   1279262720      610 mm/khugepaged.c:1084 func:alloc_charge_folio
>   1334530048   325763 mm/readahead.c:186 func:ractl_alloc_folio
>   3341238272   412215 drivers/net/ethernet/intel/ice/ice_txrx.c:681
> [ice] func:ice_alloc_mapped_page
>=20
I have a suspicion that the issue is related to the updating of
page_count in ice_get_rx_pgcnt(). The i40e driver has a very similar
logic for page reuse but doesn't do this. It also has a counter to track
failure to re-use the Rx pages.

Commit 11c4aa074d54 ("ice: gather page_count()'s of each frag right
before XDP prog call") changed the logic to update page_count of the Rx
page just prior to the XDP call instead of at the point where we get the
page from ice_get_rx_buf(). I think this change was originally
introduced while we were trying out an experimental refactor of the
hotpath to handle fragments differently, which no longer happens since
743bbd93cf29 ("ice: put Rx buffers after being done with current
frame"), which ironically was part of this very same series..

I think this updating of page count is accidentally causing us to
miscount when we could perform page-reuse, and ultimately causes us to
leak the page somehow. I'm still investigating, but I think this might
trigger if somehow the page pgcnt - pagecnt_bias becomes >1, we don't
reuse the page.

The i40e driver stores the page count in i40e_get_rx_buffer, and I think
our updating it later can somehow get things out-of-sync.

Do you know if your traffic pattern happens to send fragmented frames? I
think iperf doesn't do that, which might be part of whats causing this
issue. I'm going to try to see if I can generate such fragmentation to
confirm. Is your MTU kept at the default ethernet size?

At the very least I'm going to propose a patch for ice similar to the
one from Joe Damato to track the rx busy page count. That might at least
help track something..

Thanks,
Jake

--------------AkJqnv5apZy8H0dhKlZe5OBy--

--------------NiiihtrTDSV3KUE0QXoTXIlX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGWrIQUDAAAAAAAKCRBqll0+bw8o6BZw
AP0Q1DPcskBkKIdzG8sPU7XXtGTaVB2TbEElgHYNaP1/ugD/c2syZL2mkHAxYnzzus3v4bvZBZ6V
DLy1bUaZynYTgAo=
=oCrg
-----END PGP SIGNATURE-----

--------------NiiihtrTDSV3KUE0QXoTXIlX--
