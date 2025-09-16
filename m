Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A42B58E60
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 08:20:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FC526073E;
	Tue, 16 Sep 2025 06:20:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tpYucjajjZ5l; Tue, 16 Sep 2025 06:20:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95FE66073A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758003632;
	bh=S7rM/8R1h3mkjQ6o0PbDyY6H79gFZHv/VESgj8DKIRc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pxl7C2NvMUegbuV5gqBVmSO1yGpZ6gEqEJ2t3Lm7QgGNXNgqs8yE/J2KAkqvdWi3l
	 PfGKc06lRRw/FqKk9iHFxxwy7sXFHkcHRkQ/drbKgZZRMrccoIEuQ0WCLmtxt0158c
	 cFASubqFJAMGOqmlUn/rgGX4DaNCNBWUqxJxBwvR5nofIXR+ILhuONmmCBgCyRx8BO
	 so4r4Ic/ZzEaOHAAsXBTiDA2EETzy+LbLY9fAP2cY5588/2Uyf1bJOFvDaDun91vx9
	 mz1JUC0rkdf8v0Qs9rj842l1iQPfdc/Y4tf8cstdh8XuTKQXjEy03BbDgXJGxPjQmb
	 1AZf7PHeG9bXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95FE66073A;
	Tue, 16 Sep 2025 06:20:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A05A22F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 06:20:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7641C40670
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 06:20:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 614qCoALDwBE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 06:20:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B666240686
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B666240686
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B666240686
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 06:20:29 +0000 (UTC)
X-CSE-ConnectionGUID: ufqZxuLXR0i9b2IyI5xZ3A==
X-CSE-MsgGUID: 2SUI3dbySGKidhSfMA+PyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="59969284"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="59969284"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:20:29 -0700
X-CSE-ConnectionGUID: zHjlxXNMTOOKHY+McYE8DA==
X-CSE-MsgGUID: MqfvKiKuSTCfh/kmG3R/qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="175262723"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:20:24 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:20:20 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 23:20:20 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.35)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:20:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sUTdFTToJ39WjJZIZ4tgvGznHTJwAp684wYfUkXTEETEdgjKPXoJv9uSBZpcoy8/AovRv1Oz+GkxzS1UW0ZkAOfH2QStyANcst0ae9oS/1Y9ZczCpoSYSfXQq4afUVQ2Tlp0lvJRvQ/t4gNC/mZ8/kZomeKhJwFqV6dEmocjHGWDfyLwz2TUYMvGBxIAFZtKuodJrzzgtTKGD6Wc4s2K+aGS7L3xhIBxLUKoYw9PQpLuOjAl8/6SWzTXPyqC5naAFdlK+mThtqRd/S9uAanfOpbSfaponjmRos7lKcMzN7EMYSRV8Aa9oJ7fFNxe2AYrpvq8i1xWUZ76DvvD9ZD9dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S7rM/8R1h3mkjQ6o0PbDyY6H79gFZHv/VESgj8DKIRc=;
 b=NAsXLAe6CFjve0lcozCkzphvTr5eo3jD73GTTGppsYclLnsvB43Q0YU5Me5wCikbhhemyuCnI0IJ2188nDWIf/+AHLMY4Zyp3k9z0/ueoswrnqx5p3BR9SwDhC3b7m1WJOlPI9ZwVB5PSKQRHYnhqNZbLDz5oeGHwMDGZYPNjUoT89I6iV1iKXmr8iGF9+uE21eenp2x+mfpRZQVxPUHNFzxhj1YkQA7I6cfh0DToFYjC/1dDMpOgS8Lsw3h1f/SjPfRvusZdPt88b93G98hy83NvMUofHl9cAy6gm7Ldx0OK9yqzVXpCeZkUVhY6t5wYtceE7easWTYbmTS27YosA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM3PPF63A6024A9.namprd11.prod.outlook.com (2603:10b6:f:fc00::f27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Tue, 16 Sep
 2025 06:20:10 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.021; Tue, 16 Sep 2025
 06:20:10 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Simon Horman <horms@kernel.org>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ixgbe: initialize
 aci.lock before it's used
Thread-Index: AQHcILXnqsmN8uCKekWI2VK2SF+WbLSVUAsQ
Date: Tue, 16 Sep 2025 06:20:10 +0000
Message-ID: <IA1PR11MB62418232CB155FBD707649E98B14A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250908112629.1938159-1-jedrzej.jagielski@intel.com>
 <20250908112629.1938159-2-jedrzej.jagielski@intel.com>
In-Reply-To: <20250908112629.1938159-2-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM3PPF63A6024A9:EE_
x-ms-office365-filtering-correlation-id: d00ffeb8-c58f-4698-9b3c-08ddf4e916db
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Qgdi+fHBlRF6U4sun2YuJC4FMlOi3bKtiTu9JtAD04uZ66HPtw+fYhc14bh8?=
 =?us-ascii?Q?uVaxLroBS4MdMg5mq5kyq+Gixpg7BStD33XUX+UQuQqdm1XK7hUGNHcdY52M?=
 =?us-ascii?Q?bCDVLElkOmYDbpZsEKscOzyKpmXyDP2XGMuGgjbN2hJOpv5GJV/Utzppzbkc?=
 =?us-ascii?Q?sxiIhjJ4sCEsi1Pk3DkQZWSsI5BS74Fx2/SY+qrH1+BfMmY+0yZ3CP6MbXYN?=
 =?us-ascii?Q?ZtKrcsCKNt0jd2lFS5m7gqIXYi2c2DWOqtDmvIoYPpU9ZwrfE3hLzzjDOM4u?=
 =?us-ascii?Q?X8lpVCHAEMrvR7Kh5Mb6ifTpEd9j20ggfaLW6ezbcRCivvviA7p12kmyVIDB?=
 =?us-ascii?Q?coyIV43WPhAkTyS1Yqe+qmIE1fYthN8slpUqyzv62i2O5OQi3aFS35Uvcy2h?=
 =?us-ascii?Q?ALLAN4NFDoGYW4bC+EKGYJHwgdyw9F3snCh4qvZdNuhOMG9mMbKSTSs74EFu?=
 =?us-ascii?Q?Wsf/A+vjD/Ywg81ZWtIFN5Nm2e7liZoOzBsBb4wVSjq30vr8DKY0Xvp6KDyE?=
 =?us-ascii?Q?KNPbNMHpTQe/oPnFsRUfS8w15DwmltxrK14dcemYNfk175HXW1NlhpyBy+Fh?=
 =?us-ascii?Q?uEYohbh7qcYYpjthlRjWGFfiNo653ZR+3YGxcsfMpZ39obdtG7YoM+bZFX68?=
 =?us-ascii?Q?f9FvdQuyDvwmZT/v0DJhwro+cEdNZYPAAFoQkdXJLoqObsT/8boBMcrmWFpb?=
 =?us-ascii?Q?5Qo/CRT80qMzIi3WsPUjJYgOUI48SU6A/OGf7APh+ZqnUfg0WwzVlDCDC5wX?=
 =?us-ascii?Q?56uo832jESylKHIHbn0AbDuAolp+lsFtmM5/hMp0U522yRvQTeR66JU3OSec?=
 =?us-ascii?Q?KRXZHRYxnDrbuhF3njB+/5xfynC/vLaoB2+pbUYm0POrABxjMDCnH6s5OJsE?=
 =?us-ascii?Q?1UQ3okDIJIjRWFAkCjl1duXrzAP5Bu1d8f6ffjN84YB16Qt0Fk3gIu2Aqjri?=
 =?us-ascii?Q?P2jkTFasCuJVJ/Su+SUMZUKHWRbp6GVwvUhXn7Mc8dNGiELs1Kh5uLKvAsGW?=
 =?us-ascii?Q?G1DYUGU+gjlj6eGVk/QP5ypoxJNO51eSbj0AIFNNNKf6dRJJCwK5f8vPXk/u?=
 =?us-ascii?Q?dfE3ykgjUO1e7ja9ekYZDbgRAEhHsXiUD7xiSabTli6mUcNopKhoY7kSxyZD?=
 =?us-ascii?Q?2NSFm0YGFB6jxKLE6mgGmHbakrLwxtpGpCfOeGwoyebnyvqhvV/F5ZaR/dwj?=
 =?us-ascii?Q?8KEss5SjiC84QOAD3RCNlUkhnNwkCAOZGj6l+Vr9k74tn4Z2ydbGqSJIFRFH?=
 =?us-ascii?Q?baO1rnifTPfZAEXmzoSxV147+XcGb7Jw0ZKxKsZ4DPKE9zPbycJbjSZKg7aZ?=
 =?us-ascii?Q?PATOLOwkEVd/1GPZXAVTEgjfbGAgu5BASFLIrRROA2rpqN2P1+LelnRq9T/7?=
 =?us-ascii?Q?rsAbAfewY2oW7qxrlYbNCGs1CqIsMyQPq97G/GpudXcRnU35ERHU9huYLwx7?=
 =?us-ascii?Q?phIQVNLQA0mS1mGTnwXItJ4G5aD96DhtiTDaQLsqXAIgtfNPOp/Iv+liaYH5?=
 =?us-ascii?Q?bKAmvqMD2K45X08=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lm/lIWIq79n76srd9iFm6o9hCmpB8+AUiZ/QIUhDppDpHR4eIPZZrSf5HSO1?=
 =?us-ascii?Q?lhMs32lg8siPaYG9w2II2bpoRo+0dbYhVQxMqETL+oCgno44CgPEO/4lGB2x?=
 =?us-ascii?Q?g8Om6udTq+0xWQZxPtMrL+hxJB5x5Wuwr7BoPnYJrZiMl+jUYlCFQXpPzwe+?=
 =?us-ascii?Q?P4kWlfbJE9RBblYUsPGvkowcShc9Gb8b2dRyJrno2KUgqLf567BobYxfN1Hd?=
 =?us-ascii?Q?kg2qnTjSd95sELFq1BJKMsCAEAK5x0T2xSV5QN/23gHf9vBSxIDljdBnPFzE?=
 =?us-ascii?Q?K0Mbyy6XMEvnJL/ot70MAi6f7tQJgOkLRHvaBJh6Lmg54Kh5ZqAIwLTj48E0?=
 =?us-ascii?Q?GujdPs8MTpfJxwFvKkcQRRDJtvqBy4ptY8h0jaQON5z4r2NJOobe5L9DK4HD?=
 =?us-ascii?Q?DMZb9LHSWIDQLC7MEvQGZaAxV4H8hRLPHP2Iv5WPYy+jFcdCUOZE3fT6wQ5h?=
 =?us-ascii?Q?yTl4URjckYxaISNVXuY5XR6HQYq1IRg/FNCRxk9uyfRdqPn6yMu0cRlQlk7e?=
 =?us-ascii?Q?1TnaLq+meqpujVPuNBnCgaevSkLiz6gnmqunMhBvcn9N8SUBi1InjlAYB9ya?=
 =?us-ascii?Q?XnuIgDQC98Qb+PPKRHQ1TWiRS9txrakfubMMCJRUH6psCLxvZ6l9Cie2jBen?=
 =?us-ascii?Q?/qOiNoubFIiaiYpjsuOmTXkk4MHgEtpgzhE3DuLldxvbKNVvip51HNHBsGMZ?=
 =?us-ascii?Q?0Te1W4+8n28fBp9KEabuYBZI2iBBMGultUjYnrcnsCVjnRHP/klAapnxo6BQ?=
 =?us-ascii?Q?Ng59OsQpORkgBFNzVwdMCpIDW5dHz25Y/ITOLcYnar9AjVgMZySCqtKfF4GB?=
 =?us-ascii?Q?8MG7/RTbQgiWdcC0V4QJ5Q69PF5ymA0XxEBjPkPmxHoFhGBrpJcGd1IZSsrN?=
 =?us-ascii?Q?zQUPtsbx18/S3Ibm50oBtU9q7hmMBIS/wbtuInnUwq9JbYmQ5C6h+LxnK/8z?=
 =?us-ascii?Q?u0B02zJnT2JjWTlWXgufTU/8HDkIoEZmnLDfcfGpI/O229HioiEjiZJOPTlA?=
 =?us-ascii?Q?HL1eDEPcQEGtraiR30hV8ahnoUYDuEr72bOD2WypBNJYVPSZGAUWELse3Igr?=
 =?us-ascii?Q?EvBwTTnuF+W29ltdCClzfulcLAGLlA1/5To5IRC9qHCz/Z+KTmgE+CbZ7YR+?=
 =?us-ascii?Q?w9MUKA0g9EUDmwWeZeHc5E1o7BjnjkBFBMwwkDl8CIXGX1EqZFD1kKA1t//o?=
 =?us-ascii?Q?KN/3F/giZkmnS4sW1IbaR3GiwHtHt8G5fe9BQy42YwPz4hEbz6sjl2+PqTYr?=
 =?us-ascii?Q?SqN1Hv/TuaaOt+825vD8Vl489IkSRW/q86KdlU+rvU0zCUBtHcEuL81xmz8T?=
 =?us-ascii?Q?hkTyQB8jaDFkt+PDL2W+629VnmtA/BmwFrbs/agMNhjVrnU8Dpm+glRx+Op8?=
 =?us-ascii?Q?SWt6QJf4rDBkCWC6/gqrTCR80SgDT/Kg409v1p/ECuD0Yb0MuUTSxx4UzT3l?=
 =?us-ascii?Q?G1IDaUKGeuI/hG8BnFDf75oFaKuTUtlDJ1alfqzIYgzXwt46YNgclcd8UBPH?=
 =?us-ascii?Q?/7X4FLNbO/Yp3Rlv6lfzS+Hnt1LvlqADz0BzGTlEYOf0BSKx4m9av0tgiRJl?=
 =?us-ascii?Q?EGn4kf9gvt9wFmKJkYEocYNg++aZf1hCHJ+R2sAJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d00ffeb8-c58f-4698-9b3c-08ddf4e916db
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2025 06:20:10.4374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1gVJG5YiNuMlXN1dziswmNjIx/XaUEDvSu5uNb+qY/hS4j8uv9keif8utlD6iSXu+k3o590d1+EZ+VjGdKMnNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF63A6024A9
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758003630; x=1789539630;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hQJA/4TUDgeKS7o0sV9dBB9gn2vhSSzeeqsptbQ7R7U=;
 b=neXTOzN0DcZZSpI76IpLZPbg5hnFZ8/GdterRTWQ0d9PZYY+NFzFHg7d
 6qpwSlBprZfl8Gzz3RixLtTNj1/89Aw7nYwIcjS6+6fJe8HCvnmqnuKJ3
 HOH8FmAEr9RDBo+/Bj7pNE3IwJB/jza7lOsbK/gYjQyg4JN0xgfVDYa+y
 JGVP8A4WjRGxB+U33eRz9ZZSxG3BeJRun4AblyClqCHrLcbPWPPabRZ2V
 /RKaMvPb7+yVG587SyNr5gPH3tglPYEGhD+vB2KdeVsSCiWqaewwfFQgD
 7GfULEIH3M/24WJsGZOlFEtd+TJ1mF1aIe8VvDrrMbXjqGzopMIgHjUV9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=neXTOzN0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ixgbe: initialize
 aci.lock before it's used
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
edrzej Jagielski
> Sent: 08 September 2025 16:56
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; netdev@vger.kernel.or=
g; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Michal Swiatkowski <mi=
chal.swiatkowski@linux.intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@=
intel.com>; Simon Horman <horms@kernel.org>; Loktionov, Aleksandr <aleksand=
r.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ixgbe: initialize aci.l=
ock before it's used
>
> Currently aci.lock is initialized too late. A bunch of ACI callbacks usin=
g the lock are called prior it's initialized.
>
> Commit 337369f8ce9e ("locking/mutex: Add MUTEX_WARN_ON() into fast path")=
 highlights that issue what results in call trace.
>
> [    4.092899] DEBUG_LOCKS_WARN_ON(lock->magic !=3D lock)
> [    4.092910] WARNING: CPU: 0 PID: 578 at kernel/locking/mutex.c:154 mut=
ex_lock+0x6d/0x80
> [    4.098757] Call Trace:
> [    4.098847]  <TASK>
> [    4.098922]  ixgbe_aci_send_cmd+0x8c/0x1e0 [ixgbe]
> [    4.099108]  ? hrtimer_try_to_cancel+0x18/0x110
> [    4.099277]  ixgbe_aci_get_fw_ver+0x52/0xa0 [ixgbe]
> [    4.099460]  ixgbe_check_fw_error+0x1fc/0x2f0 [ixgbe]
> [    4.099650]  ? usleep_range_state+0x69/0xd0
> [    4.099811]  ? usleep_range_state+0x8c/0xd0
> [    4.099964]  ixgbe_probe+0x3b0/0x12d0 [ixgbe]
> [    4.100132]  local_pci_probe+0x43/0xa0
> [    4.100267]  work_for_cpu_fn+0x13/0x20
> [    4.101647]  </TASK>
>
> Move aci.lock mutex initialization to ixgbe_sw_init() before any ACI comm=
and is sent. Along with that move also related SWFW semaphore in order to r=
educe size of ixgbe_probe() and that way all locks are initialized in ixgbe=
_sw_init().
>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Fixes: 4600cdf9f5ac ("ixgbe: Enable link management in E610 device")
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 15 ++++++++-------
> 1 file changed, 8 insertions(+), 7 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
