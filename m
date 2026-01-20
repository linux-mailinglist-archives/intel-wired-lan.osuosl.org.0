Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wALzHH6gb2kLCAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 16:34:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A3D462A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 16:34:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 990BD85D34;
	Tue, 20 Jan 2026 15:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L1A3B8HEo_sB; Tue, 20 Jan 2026 15:26:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E53BD85D37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768922811;
	bh=MOf2vUw9ev7sbH6xj+kpihu9G8D9vIyAApLxMTLO6bU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cByvN/rvlT3mKsm27k6+TdlhBDU3FMxcSsk3Ny6o3PKxtvKVBkirrcWHERz/TrvoC
	 BQRuBhz5ZyKLb1+QLpGzyzRO5V6FX6b+4zasqg76Qq7mef24dZ9I9peQlI6qd/DuuE
	 rXHuwfKuEm0N3bQQcjuP4FZKT6s3EYtKa3FvSHVJLmvEIySTituM+Uowb7hvwNOETO
	 YqeqqnxhC1LuKVEbYL53iPcF896xvceb74ABBBGZNzjehFasvdo5dM/syPkMSUbH4W
	 Am4sgdkNcN0QeD8nkw7RdbtTslt+CVMUQYYxQh515btEUaGVA8MKVAOVDz0G7va+WJ
	 Tc11VjMV3GTjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E53BD85D37;
	Tue, 20 Jan 2026 15:26:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id F0AA6122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 15:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D29E16FF02
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 15:26:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w-oh0p-O0bBq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 15:26:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BE4DA6FF01
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE4DA6FF01
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE4DA6FF01
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 15:26:48 +0000 (UTC)
X-CSE-ConnectionGUID: Z+D55J9FSam5TeNKr5sntw==
X-CSE-MsgGUID: uF9QXsO9TvOSBb5kPiVYbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70188840"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70188840"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:26:47 -0800
X-CSE-ConnectionGUID: vMc6+qNeS8eNrA/4k6+Xzg==
X-CSE-MsgGUID: fFIhOqVFSP6UZaA7N7j8wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="243733675"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:26:47 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 07:26:45 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 07:26:45 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.11) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 07:26:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SGtdRGsNITIbG/skT2bXKKhu6ZM/d6MGK5OuozwYa5SkxijalPUkPnIKUuDs/kHsRyHm2838wEwIyQqDUzr/gryeNWY/gis996lSun/+KVuvh7G1GIkMb//nN2NKjqKLmm0jCxASGEq/7U18+ihPU7cN1yAn1teG7aJEztE2Q+E9VH4ALgtGVE8TH0r7cNP8Ji58IJFNaWRiaqIDWzO3S/o6smcQ8J1GtoCOCfT8itGg+F1Y43CLUrli2744Oi7JDWpbyIgeSX1Wfmpw+7RrJRGdhvlI5xtAxeAbRb+6t2FFG08R3BIiVbaTpL4JA0+nOpWVwDmO0uFhlf9/94A6Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MOf2vUw9ev7sbH6xj+kpihu9G8D9vIyAApLxMTLO6bU=;
 b=LDZ2N9E1uXgxcfVb4Rv6qgQdoEoHA78hKV+M1v+RdphMQ01RQaP/e0kc4yY0fKO1/9gbAs/DABXa89+cZC8HCb5m047KYPkm30D5bLmrqiNlNPmqUZSKMUHQbW/obe3Gbvr2WljYX+waDAMefTXlfcrryEMi/XRPD7WznGGofRhLnVPzoExKib9wmO7J7xEqRRIYA/oBIgtEvTswVFOO1zS1oBM4ButUySakMJXoXZyxsPYELciix/hCygA/YoKgir1J8NVjDUC6o1vSMU77AFbMDOV8OUffjjlJoe7MEAQ9qcF+fhaCp8cJPCEAgnDq/ZG0wlpZIFER4jipEyvt4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by PH0PR11MB4790.namprd11.prod.outlook.com (2603:10b6:510:40::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Tue, 20 Jan
 2026 15:26:42 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%5]) with mapi id 15.20.9520.011; Tue, 20 Jan 2026
 15:26:42 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Takashi Kozu <takkozu@amazon.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "enjuk@amazon.com" <enjuk@amazon.com>
Thread-Topic: [PATCH iwl-next v4 1/3] igb: prepare for RSS key get/set support
Thread-Index: AQHcifAhqRFv74WRIkC7Mc/YjgwH2bVbLTfg
Date: Tue, 20 Jan 2026 15:26:42 +0000
Message-ID: <PH7PR11MB5983DDDE8A2F05FF51672A7BF389A@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260120093441.70075-5-takkozu@amazon.com>
 <20260120093441.70075-6-takkozu@amazon.com>
In-Reply-To: <20260120093441.70075-6-takkozu@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|PH0PR11MB4790:EE_
x-ms-office365-filtering-correlation-id: 37df152c-85b9-4103-e753-08de583850a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?T4EtiavowK8FiDMApnuSXAGy78CIhATVRUbi5cqSK0z9s+pONj4vlaQVFE3L?=
 =?us-ascii?Q?dmwXUSTApFAl8r3HiYOIvwiW99JSSPIX0GovUpMkjnM2xTXRKsVuer8TGx9C?=
 =?us-ascii?Q?cHtz9G6THwvqHXzFznezDJYygEtTKY4u3SrSn/6IZNjaF1FYnGrCI9OSmcm1?=
 =?us-ascii?Q?VeAwDtEzS63yCPHcy4gKw5TlZoXTH0fnkYVNLqw6vjtktJ2RIBnY2at5wiSD?=
 =?us-ascii?Q?OS2DPxcq32/qoNtOG/XqUN8li0CojoXvW/XFCcGe1zEx4YjQZNsCAwT/QloD?=
 =?us-ascii?Q?njbZi9BvUb7EARKEYbW0CB9RGeMsbYMWd6l1usG9Jl2FqAa8yj65TIuTvQbv?=
 =?us-ascii?Q?+g/JMDZ6zvzZIouglYjykpRtiIqQl4SwMgcXg1lW/02WZ7Sb8nHIRfgC/51v?=
 =?us-ascii?Q?duOYJuKl0pFpL0OsiUDy1DYDStTfi3u7pEglS5Czg742nkICP9cUAdABZPRz?=
 =?us-ascii?Q?x8gMXtmFFRMAdeeP9bNghN37KsknVEEitiGW3pYGueMI+UhI+FBde31q8lWT?=
 =?us-ascii?Q?ugfZzN6odz4v/ldsTcRb3ZJML6DM2SQTYEdTBEAOmplqVqk0ADlQBERyZ3Af?=
 =?us-ascii?Q?ZSQyWRuAS+CPYCLz60ILYH4/0Oz31CoWIxhJNMtfEFC3I0s/wQYrSqS4ju1+?=
 =?us-ascii?Q?2Fe86IMMnqKfyYluB3mxRteg75bsmLOVdvtkKi/bsAJjZTuBvWoyIh2EJTOS?=
 =?us-ascii?Q?SegNNg3Jr1JSKoDM8pqWEPxG0MQb4u/AFpWsBaFzQ2ikKmKMDnu3lk0cSDUi?=
 =?us-ascii?Q?Gs+ic8eVHzNjd+yGIwUn3CvOBXHyomFSH8VVE8uNyJDJLY7Ve02iBVrDuyJK?=
 =?us-ascii?Q?mhgiA/2hNHVPfbBViTdNPuH+EpkHr4sq7vaxAXehgwQZn46bq536i8mFmuu6?=
 =?us-ascii?Q?sovHrfVaJnOc4wPIrm/4Yol4U1d37maYXAWzeiwadAA4Q6WUAEzCIQE9MVHj?=
 =?us-ascii?Q?EnqfMRgn1zhaR5+yO4hTOw8D/y5YLaui4Mzg2Ddh+VXWQnnBAdFa7jOgbJAw?=
 =?us-ascii?Q?A9kKYTQTddr7n2crSatPt77ZLF64JOM48rFxrAnWkWHlVkd2bn5rAV1c+HBG?=
 =?us-ascii?Q?m7ICQeVC5OEoN7IIAa6EKKk/3dxKy6m1yaT3r6rEbVWAhzKM+C09sVhNcmrG?=
 =?us-ascii?Q?xWLimmq+uERyFFPRFuc4qrnjlp+1nlU8t6g1tjJmP8YzX7grD8cAj2VMdWsa?=
 =?us-ascii?Q?YmQidIPDqRI2oaJhpgcUAw0gYSrZuk4I2n0KD8cVkAXBJvkB9+yfqw93V/go?=
 =?us-ascii?Q?ij/9N0OtTieiws4PFovTg0NVACZH7MbzijA8Hf1PAzLR+TylLc6eDD+wweGk?=
 =?us-ascii?Q?MGFYYutPDn/XbKHazdlze3rigaZlXeBHx+t1MVKLtdijpKSf5WMYUe5BF/kk?=
 =?us-ascii?Q?lPVvn9QGjp8E3sFrkQuekltGjsUzNub+rejfVug/LGfYDtSCwm7u1QAugW7D?=
 =?us-ascii?Q?80QCjndUHzo0g1Eqp2SJz/ufYOT1gKnCAk8Wsl/rWnRBQa8h5HRaBPLNZXV3?=
 =?us-ascii?Q?Hnuig4uMERhxfzr0PmqkuG9gkv0e19kN7uyhdg3eHMYDG4uh7izzIb2Hdd83?=
 =?us-ascii?Q?tOwdsr2l91fx4UjOptb0ZFxgMvtPnPDWHBHSklin2FHRkab8mimNdBDSPT0Y?=
 =?us-ascii?Q?cm6IpHyHtdroPokQjGGPM6M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t9h8kTfPA8oeaiLTF0Ypnx0O1+n5TfHDE2xoFxYhOiC4g4ICUG/lETUWi+dO?=
 =?us-ascii?Q?Kh6ZqBeRDlWMhsBVaqi1kuoFN2yx8l1qu8Im2ofcYM3CODpiv5JFex6y3J56?=
 =?us-ascii?Q?O5yEJw55R1bjFntyigAxtBa0pVB9qoCRtrQ3t9nPujTTLebt6FQZaEzPz8wQ?=
 =?us-ascii?Q?CBNf2NdejmmLyeHCAObLbRaW75/Im4pztWlK9Xnv2oNTT07skqP0F7lZ/wrK?=
 =?us-ascii?Q?ahQH0ZByvAEM4oavi/wCF+fQRTRqoiojxkXKiGLyGqwFwmX3dSxEWsiz09SN?=
 =?us-ascii?Q?SUiiVW9oZTfh3Bkdw4oq6/vtkm9ZzunWWyJ0qo5vCLIaB9T4HOIhvmTVXCE6?=
 =?us-ascii?Q?sfxljdj2ius2vxfIfGcyDMmbJoPnuo+JBWhKhVjcIePoVQmVpQb/qXjhUqBZ?=
 =?us-ascii?Q?Dlz3dAYVDdtqKIF5JxdyrwMlIZdIovCikX4oQzLxP+vfPhR4ZHjqnEvqSlsz?=
 =?us-ascii?Q?kDNDL8mvZWylm4yMpXCJ6enypJhRjbfKl+YepFCFXGFwVw60y35PSxt5YeLQ?=
 =?us-ascii?Q?NfaaU+q9VRegr5EJPNUMXf6RctGgZBzpg2t9TdwyZSw1pl5M1Uc12i4i5suv?=
 =?us-ascii?Q?QsykDOZ5kSJiKF5yk8tZACTwdZFDnp06hngWmId9cVX3MJFlY5MsIVQ+Fx0i?=
 =?us-ascii?Q?L3r8+cy65gvGb89BidqxLmAUZaRXu+f1B2/1MBzGCeirp3towrTv7lA3pK3c?=
 =?us-ascii?Q?xL3v9DTCFLSgH5VW52F4hZKyj6rHgjKYVUoTCnSzi2wv2d98UO6YO67d3MPn?=
 =?us-ascii?Q?SWlDTJLqS/1MB+CD8613kCMf3sHoPyLr5S0LFENPA9gHuitugVXa5MmIk6Xh?=
 =?us-ascii?Q?KSo4GAGBwRY75SAob1o5nrNBnLokZ4RmZes0TMX0FDvSwi1DRP24v4se1A60?=
 =?us-ascii?Q?oe6JfWwcJoUoq0CzVPv4te/wLP/jWmTBMYBEPzGDmY8Vt4O8u0FDXCXRxIx/?=
 =?us-ascii?Q?j6Me0YHUp9iXnmOujEvmJTbKqsTI04+3V3/LSUNIkKk5y6qhqsOOyAbSmNai?=
 =?us-ascii?Q?9NV3oKYGuUiv+R+VNLN7I2IoQujlP9aXiktKdk/XYa0WGflXoY9UJuOrsUZT?=
 =?us-ascii?Q?X4J4Xs0hcTMduuFB/w+Y2ovSdADd2xG61nAiC2785ZA4IatzbeztgV08R1QG?=
 =?us-ascii?Q?SwMZzke3ROCO65zVdeuFFEoeaatIBmh1TXlYzG1yY3LKaiLrWHqh1nQLY8n9?=
 =?us-ascii?Q?znYDpMjUZKO3+oIhuBURUKsxqtPTxNr7+HpbBlxbmdqAYPc2uFDRT1IrC+5u?=
 =?us-ascii?Q?qDRNK5+5y8aDTnuogjDpUxEOqeBkCxA5VSlvpsJRNvJ5gPjy05VkE7fStuAW?=
 =?us-ascii?Q?Agej+9C/Zot6XuV63hYmEyOOKthaFWQq6airk0TkmFrHSBODW/Yg0/ifFcyI?=
 =?us-ascii?Q?32G7njYrdsa16gnmtXf0P1H6nxWAimXOnP4Fh9WShpDRZvxCEhRMT3OJV273?=
 =?us-ascii?Q?4WPMNk5fLuEhJlB0Z/S25yk8rLn87kfS8Q0kvex26y6+M1xf7p9WWrUSBDEZ?=
 =?us-ascii?Q?iA3p+Diqw1Pv/hNluIxdI/+DKU43AEhJ+GJSiF7RyOWiJMiWTCZONP5ZyFI3?=
 =?us-ascii?Q?L0WRHvttr1gdQDB8lfV03dNd+3H5NsJopUsrTLhkoKF+nMjU7rTiaSveQ15u?=
 =?us-ascii?Q?1gdMMuP0LBtVoQdEi2QWGWSLyS8tzBcSGgZ2wXc44ItKoabHGlvHnY8gfeJs?=
 =?us-ascii?Q?duQmhL68a5W7vyIJgmMo5WyVPZraOYaP7XOK92qjLSGAuYNjJbZAQk2SnO6K?=
 =?us-ascii?Q?KHdyQDZXng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37df152c-85b9-4103-e753-08de583850a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2026 15:26:42.7564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8C7t7HP2A0QaDe2diI2k08xeXO+vCqrJqqn8xquus+bbUD3ouADtT62431wGju5BMOyjkr9lExuJj9hJWA+zAByNCyyY3w60ZyeUS7yTskA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4790
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768922809; x=1800458809;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eN2k7f/Q6PV2KE5uM09GFbyCsfTDDArfY1ZMM8qEENU=;
 b=dOYHqC+qUY11TvJpuSlNB4uV33CziX+cM6CZnVe8hfoaEiKfV+DyHa0b
 QJflZ/AMwzMPxZ6yhcMzlO4v7uusLHRXFp5izFm5Tvlp0D5b9Ax+hfy7w
 TvgcZ6JewxRpOwVywFYeYZhVousPnTYDg+oxI7KU9ae8dKsgnDVDtcGk5
 D4RmLQTfuecwnvsgAIotNHRsOzX4pyyBP/wi+H7Yb8mvDbLhlBTObwDgg
 6jFZduPU2WLJlLzc1v8RSsPy/FDjjfgTQAFDwzLBtFRcnM4CYvchjqTu5
 cK+YXqWWt6iJhiNiEcXWAmgaunLDoc9+I+E69ARX1+uBmUZF9Zi60MFFU
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dOYHqC+q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/3] igb: prepare for RSS
 key get/set support
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[140.211.166.138:from];
	FORGED_RECIPIENTS(0.00)[m:takkozu@amazon.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:pmenzel@molgen.mpg.de,m:enjuk@amazon.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DNSWL_BLOCKED(0.00)[198.175.65.18:received,2605:bc80:3010::136:received,40.107.209.11:received,10.64.159.141:received,140.211.166.142:received,10.7.248.11:received,140.211.166.138:from,10.22.229.23:received,2603:10b6:510:1e2::13:received];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[10.22.229.23:received,2603:10b6:510:1e2::13:received];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[140.211.166.138:from]
X-Rspamd-Queue-Id: 69A3D462A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

>-----Original Message-----
>From: Takashi Kozu <takkozu@amazon.com>=20
>Sent: Tuesday, January 20, 2026 10:35 AM
>To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
>Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn=
.ch; davem@davemloft.net; edumazet@google.com; kuba@kernel.org; pabeni@redh=
at.com; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Loktionov=
, Aleksandr <aleksandr.loktionov@intel.com>; pmenzel@molgen.mpg.de; Kwapuli=
nski, Piotr <piotr.kwapulinski@intel.com>; enjuk@amazon.com; Takashi Kozu <=
takkozu@amazon.com>
>Subject: [PATCH iwl-next v4 1/3] igb: prepare for RSS key get/set support
>
>Store the RSS key inside struct igb_adapter and introduce the
>igb_write_rss_key() helper function. This allows the driver to program the=
 E1000 registers using a persistent RSS key, instead of using a stack-local=
 buffer in igb_setup_mrqc().
>
>Signed-off-by: Takashi Kozu <takkozu@amazon.com>
>---
> drivers/net/ethernet/intel/igb/igb.h         |  3 +++
> drivers/net/ethernet/intel/igb/igb_ethtool.c | 21 ++++++++++++++++++++
> drivers/net/ethernet/intel/igb/igb_main.c    |  8 ++++----
> 3 files changed, 28 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/i=
ntel/igb/igb.h
>index 0fff1df81b7b..8c9b02058cec 100644
>--- a/drivers/net/ethernet/intel/igb/igb.h
>+++ b/drivers/net/ethernet/intel/igb/igb.h
>@@ -495,6 +495,7 @@ struct hwmon_buff {
> #define IGB_N_PEROUT	2
> #define IGB_N_SDP	4
> #define IGB_RETA_SIZE	128
>+#define IGB_RSS_KEY_SIZE	40
>=20
> enum igb_filter_match_flags {
> 	IGB_FILTER_FLAG_ETHER_TYPE =3D 0x1,
>@@ -655,6 +656,7 @@ struct igb_adapter {
> 	struct i2c_client *i2c_client;
> 	u32 rss_indir_tbl_init;
> 	u8 rss_indir_tbl[IGB_RETA_SIZE];
>+	u8 rss_key[IGB_RSS_KEY_SIZE];
>=20
> 	unsigned long link_check_timeout;
> 	int copper_tries;
>@@ -735,6 +737,7 @@ void igb_down(struct igb_adapter *);  void igb_reinit_=
locked(struct igb_adapter *);  void igb_reset(struct igb_adapter *);  int i=
gb_reinit_queues(struct igb_adapter *);
>+void igb_write_rss_key(struct igb_adapter *adapter);
> void igb_write_rss_indir_tbl(struct igb_adapter *);  int igb_set_spd_dplx=
(struct igb_adapter *, u32, u8);  int igb_setup_tx_resources(struct igb_rin=
g *); diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/n=
et/ethernet/intel/igb/igb_ethtool.c
>index b507576b28b2..a93069b761a6 100644
>--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
>+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>@@ -3019,6 +3019,27 @@ static int igb_set_rxnfc(struct net_device *dev, st=
ruct ethtool_rxnfc *cmd)
> 	return ret;
> }
>=20
>+/**
>+ * igb_write_rss_key - Program the RSS key into device registers
>+ * @adapter: board private structure
>+ *
>+ * Write the RSS key stored in adapter->rss_key to the E1000 hardware reg=
isters.
>+ * Each 32-bit chunk of the key is read using get_unaligned_le32() and=20
>+written
>+ * to the appropriate register.
>+ */
>+void igb_write_rss_key(struct igb_adapter *adapter) {
>+	struct e1000_hw *hw =3D &adapter->hw;
>+
>+	ASSERT_RTNL();
>+
>+	for (int i =3D 0; i < IGB_RSS_KEY_SIZE / 4; i++) {
>+		u32 val =3D get_unaligned_le32(&adapter->rss_key[i * 4]);
>+
>+		wr32(E1000_RSSRK(i), val);
>+	}
>+}
>+
> static int igb_get_eee(struct net_device *netdev, struct ethtool_keee *ed=
ata)  {
> 	struct igb_adapter *adapter =3D netdev_priv(netdev); diff --git a/driver=
s/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_ma=
in.c
>index dbea37269d2c..c703011b19ec 100644
>--- a/drivers/net/ethernet/intel/igb/igb_main.c
>+++ b/drivers/net/ethernet/intel/igb/igb_main.c
>@@ -4050,6 +4050,9 @@ static int igb_sw_init(struct igb_adapter *adapter)
>=20
> 	pci_read_config_word(pdev, PCI_COMMAND, &hw->bus.pci_cmd_word);
>=20
>+	/* init RSS key */
>+	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
>+
> 	/* set default ring sizes */
> 	adapter->tx_ring_count =3D IGB_DEFAULT_TXD;
> 	adapter->rx_ring_count =3D IGB_DEFAULT_RXD; @@ -4525,11 +4528,8 @@ stati=
c void igb_setup_mrqc(struct igb_adapter *adapter)
> 	struct e1000_hw *hw =3D &adapter->hw;
> 	u32 mrqc, rxcsum;
> 	u32 j, num_rx_queues;
>-	u32 rss_key[10];
>=20
>-	netdev_rss_key_fill(rss_key, sizeof(rss_key));
>-	for (j =3D 0; j < 10; j++)
>-		wr32(E1000_RSSRK(j), rss_key[j]);
>+	igb_write_rss_key(adapter);
>=20
> 	num_rx_queues =3D adapter->rss_queues;
>=20
>--
>2.52.0
Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
