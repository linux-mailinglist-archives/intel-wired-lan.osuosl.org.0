Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E41A7B3C1B0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 19:23:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E246417FC;
	Fri, 29 Aug 2025 17:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SjbvYo1LYdDt; Fri, 29 Aug 2025 17:23:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9E1C41823
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756488220;
	bh=mJ/fFz3jnJkohBQiw3PD1vninml4sDq8XP3P1YzZ+ao=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tivLx+zg4nOxHLLL0uGn/nxQ2SSl1SwA3yauo57ev5B43r9Baq/B8b54ut43z1jWe
	 kq2M1OGsWSKhKmHyTqcDOQl6IJoqyp2OTgVMU0iRS6CKEKUb0TQDXYLmfZRYUocKUV
	 Dz5VgFl0LYZzNqBk2798INB9erOcfzvgecqyfMEVX4j0pBKFYc3fb+58AYuQS8IuYx
	 GP4yjBGiHTtdmx5Rq443kOX8PHlmf6ytBik+a/qbJ0thDqJKfCDaJcbJWAtvXyaHfm
	 +Y9EafRoO80oxgepKJsFPHOJm+dzh+dLQ05epNntlNF1QCw8D5rAVRSBYgl3RntPfC
	 lYEs3ZaZogrbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9E1C41823;
	Fri, 29 Aug 2025 17:23:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3880ED2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 17:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F8C7615BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 17:23:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JJgFLTaGatAd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 17:23:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 776DA61529
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 776DA61529
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 776DA61529
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 17:23:39 +0000 (UTC)
X-CSE-ConnectionGUID: 3d5ZUtmcRTeMv0vh6zha+w==
X-CSE-MsgGUID: cDNC00X/RLa1CAdGfiBlfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11537"; a="57805254"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="57805254"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 10:23:39 -0700
X-CSE-ConnectionGUID: GUmyk/HhSiWN5WUQDBI8Mw==
X-CSE-MsgGUID: N/PI73biQjO4GMInyaMjuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="170329156"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 10:23:39 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 10:23:37 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 29 Aug 2025 10:23:37 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.67)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 10:23:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c1TXQ4EBKJ/5Q7u4rYx5SnL3c5NPOpNFhrhvg7fVemmR1pbeUQ24HgIGsAGDjtSp6fzkX4+j+dmAwsGf8B2FzfcnkE/ZP7RzP3IcL7k1tocDV+UbUWu7zbj9yTRFmz2Fdhsj+ySFuBxlSxP/GdbwiagAE3pq5AQGFCzemOpGyDNPsk3/sPYHchu9Ex40E8j+JLNRjXiVzCIUR2Nyn+R2dO+LErRSpNnjafc9GafZCSU4qdvxnYNuTayQOM4L4ahp6AlbHtufXnN6bt/JNAs289xazwOpwTslCkFossskgYBp88KyvHtPeGm3Tg28rodYX17JxWDFicwDq4Pwtwndvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mJ/fFz3jnJkohBQiw3PD1vninml4sDq8XP3P1YzZ+ao=;
 b=eqy++Uxzuqt9Dw+HcaSUlXUqjOq4VCE9IVkHsbLq66TlHH3LX7LSPVcTnOzhyQNcytaRDb4S7STzBy3EjHSfreQmKBn8uHb4HhCAgGS5i6by1sWgVjM24P18vdKas0XtWY3THmIskVseth8Z8qwXU7Zyqn7pWKKz4iPmkGrkNuwxm0R6UjcZgnU1/hjn7uHVEPI4qDU38yxvqcQQ6EEPqRvbGrbmb2FCN8FNwnM9Arb4AUW5v1aUL62Ysk/KU/Ao3TyG6QRRIRV3QzSOJsLuJDvK4nR1F3yxKvC/sZDhnfjfADRsaCrtYkxAid6R/DZLps3rP8zhMcjBGyyOoUvc6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH8PR11MB7118.namprd11.prod.outlook.com (2603:10b6:510:216::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Fri, 29 Aug
 2025 17:23:28 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9052.019; Fri, 29 Aug 2025
 17:23:27 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: fix UAF in RDMA core aux
 dev deinitialization
Thread-Index: AQHcCx66sVEbyqmQ4EijVAIkDKVMrrR5/BsQ
Date: Fri, 29 Aug 2025 17:23:27 +0000
Message-ID: <SJ1PR11MB6297415A2DAD536807C0EF609B3AA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250812001921.4076454-1-joshua.a.hay@intel.com>
In-Reply-To: <20250812001921.4076454-1-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH8PR11MB7118:EE_
x-ms-office365-filtering-correlation-id: bc5a8b12-f917-45ec-c383-08dde720c487
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?9e0PHhGBemIzA/1mmc04ZRdY3yJZP6Woa5FMGHXdfsaG8cWdOTKTkgHy83jn?=
 =?us-ascii?Q?mI3ho/GXDryFKlUWZahRlaLmAMBBNrKMouIqprjJTjqdYxf71HN09hWvLTXi?=
 =?us-ascii?Q?0q6sH+DixItnVvpGvfqb7hk7B9GhXsdqn47Oq48iYgL8+D1XTbwWVtC4ViaO?=
 =?us-ascii?Q?D/9OUajQe+SqM7/9bR5a2Rn+0QfmHEgHNzaplpXU//g8ggMCJfYCv5A3prme?=
 =?us-ascii?Q?bUBalSOvvjduel205Y8ODS2IiKuyKrGy6jmAUj9IBz4dEw+Uf2VNUupK8m/t?=
 =?us-ascii?Q?VmKGEti3H/ijaAJNT4funjGfJquK+vrtCfg0L31Np+h+dajOtrbECisUwW4d?=
 =?us-ascii?Q?yg8n8FgxcUNz9f+MSFd6JLYzROHQaVVmIfUCd51+xHyHUZBvGstgGw48SqKI?=
 =?us-ascii?Q?lTsYgCQvF1PGpiBTjByYl/O+bKJbyHJjNzKMN6pTqvFaxVYxOZl3ehOgW3Mw?=
 =?us-ascii?Q?CnRz2n+PbdGXSRa6Brcg9ur4I8p2SkIHPdJ7rqvfLmPqnTokFXlGFtaXYkyi?=
 =?us-ascii?Q?O5EILSpUNCJqXj36ruhp5ST5N3ZYOBJ7lxjhHMA8ygvDVMLPbj6WArI+11WL?=
 =?us-ascii?Q?r7Y1HVOKFgm/xlwDkOkJY9rjnilTkucFjHTJNvKtxakv81eg5Dsn8Kp1897q?=
 =?us-ascii?Q?kj3SqibM8kpd3rLl2PeB1DKgz0nth6SOXMgRQiBxajPYhaNNoo54iREYxNR9?=
 =?us-ascii?Q?K5bazexJsI7k/I9wBsR9fDYzVh7iAK18t1ys4eXlVqrZVvrmfFetZWFytdqx?=
 =?us-ascii?Q?AsXSKan+0Dx7U3jdP9rV/EiZ3/61dbGw8du+4s8pBX4Qm7ByGTcyk3p/VWON?=
 =?us-ascii?Q?fRqijC28KfiT9L3gL+Sk2MBHTTwy/ZaLG33S/IRnSk2Jb0V7C9+RKw5Xoy+9?=
 =?us-ascii?Q?7SVzHFtJciDwyeUBjrhY5iXeMlzQNFi4jz3/DmmhAkcDiM2C7T8IwOGketqn?=
 =?us-ascii?Q?w6sMe2/2Rm20DZEUPqAuz3ouh+w3yAzKyxSKLLY6Fza55bNxGcqQBUgkKjjM?=
 =?us-ascii?Q?6c127LJFl8k5y+AkgZyiNUdsEUF2+E9sMfc61/JA+t49OTmVsk4lP7HY7fEf?=
 =?us-ascii?Q?JSX9UTLtctJcRZpLL0RpKCIL8HOFAVStny+hRdMwVkZNCdOz+gZ3tfBFAaQS?=
 =?us-ascii?Q?KMe8Xr1voDEl6b8KX3WD1G+oJB0LAEIj4P7mgiYyZH5WYKHvFbY4muchn/g+?=
 =?us-ascii?Q?oTvCP4z1ILIB0Kqq2wyTY/aH9Fq9p/d6kNY36zltiBlXkVLIJsfR2g6gOlL7?=
 =?us-ascii?Q?dApdGzYTQpjYlHE3TCRy8dy9xDdJZP+dUc/xD/ZCOxoS6YqIIO59UBTmXEqF?=
 =?us-ascii?Q?Av9rle1EFLyq0FfQj0O+Z6lDJGtE3egtSFclC6h7I0HY9XAgidyFw12UKFiV?=
 =?us-ascii?Q?gdImqvLCss3ryrBYlD2TxK+qDUHXkkOlT4sNEatL/G+9JfTmroi/mwIxNpuA?=
 =?us-ascii?Q?nzpHZmAop3+liC302V8u41KZX1mAoSCQwXlqEYnTG4Apte37zybKRhL1jACM?=
 =?us-ascii?Q?lKq+R5ywJQ81Or0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CWMRZZvAPYB0AU6HECY82+aAqXuDPggq9Sc9Pze2VURHq5QA2a0CxGxtwUiS?=
 =?us-ascii?Q?nGC6VAnuZAAp6suXpbt3VOeZsFlvymmnDCUbbSElS8nJmJLpmUQRaNJeK4+a?=
 =?us-ascii?Q?6BD9PYQFuBkKs6NjxydCNSYDdLlLb+2qYkwhI3hudXGPWdrG0zFPYChuc9dN?=
 =?us-ascii?Q?/aR61Jno293DAOFXEiAUJM3rQgU1bBldigVY/AbNUtOYjIjilCUOdHcTCyi9?=
 =?us-ascii?Q?L6rxiMO0GUHb7H/zvOK8xOcLWhDd6Xts2FgPY64YphzUNnoYSfS3wa4p3ED5?=
 =?us-ascii?Q?Bd6AeuxUao07QY0VsCqM5JqH3/5Z90FrJxa6Vo3sBF/j10npFU6S8BgPX1w9?=
 =?us-ascii?Q?iKh+63viRDDhwJ+HLLSu9S1KTWC86FUeI5VTldD45ZKF7Xw9Lv5cUPiX6YqV?=
 =?us-ascii?Q?zw4p1ILTfxaqzG3v8htDko1usIexHpZ9QZYhbZHPFZqPZYOHuGKTxXachwNm?=
 =?us-ascii?Q?EIBE+Em9rYIEawpHyAcGWjKv0n7EeY/Kca5cJai/6ODaPb4oSmsQgdySyuwV?=
 =?us-ascii?Q?x18tQapDQlNXrohfz2AvFC3TWWGXZdSD2AmxKbiz8pxymZybyvAa+TbQLVs1?=
 =?us-ascii?Q?UQsBi2EaZc/nkHAhuNV5RHG5zAvx5c0AzjstLmBb2j0SRpWYZGFm+PaoMwOF?=
 =?us-ascii?Q?EYDtYQC2xWfcDLQoHRUcX2x+HfTQxPclP6OuAiTELtA7agN7TZWcRrdKisrk?=
 =?us-ascii?Q?zylSQWz9i8ypNQrXckRtxLzt2NqD62VWocCG8rW9RS4sM/pBGe4lhdy2QnJq?=
 =?us-ascii?Q?kOFKXjPw173pGHfz2wAjUJUnXGE+8rG6Cp02v9w+lNyh0Tq/Bvp8piuACFqE?=
 =?us-ascii?Q?FoAoxTaLWzUpVoS7Ed5eowxT9tVY87ASVge1/eFamKhUvcVqAWBn54eL3vSk?=
 =?us-ascii?Q?eyEJVerb7mZ9A958QnlfFaYNj76Aay3QQLGA9qEVee98G7rTqqo+c7pUP0N5?=
 =?us-ascii?Q?1CXFje1SSetoG2Jx00mJ8lOO75r8wraHwLuuZ7FFDUepK4S5fIkfC5jbXnPo?=
 =?us-ascii?Q?6A56qf0jB5cs3hiUmpYz8vNhSrvfuyaU/+duyw69+gKSNCYa6SdOWEtsb3Bg?=
 =?us-ascii?Q?LvQ1Sfs35qL2DS+pQ4g6v5GsR5PikavfsKRHx5QLs/QDSAm1P5rgU+027kEm?=
 =?us-ascii?Q?M/kv41xlMylQB+KlqGYENlQN+Rx/oUfe1/0smat9mT7n6zlZgJykE8vtyRpq?=
 =?us-ascii?Q?MEGZo+1JUPNd8nSYJIT3f4jP09AXyg7XRjdcfUjudLVNnHwFeX9Ij+/ekL3D?=
 =?us-ascii?Q?Ncq4IkL459IFnSj9pXF3wiZwI0xDgVjUKYXCTfImwZa7PzopfE8XgEkopdxI?=
 =?us-ascii?Q?Zq0LMmFP0HrCOrH7jXr+FI4yU9+nVGrmE1AM0RQj/YJ+u2V61njjNPGTGLIj?=
 =?us-ascii?Q?bUtBGFC8mQTriRm+IqyiaFDd5st6fTINEXLtgk8OUXFsI1Gt8laFrhE4S0dF?=
 =?us-ascii?Q?9quBRuN30v3iCb0BoNnP3ItZ+eFqFmg4jJyQqDJGLnFYxOb1WeZgrAA49AWw?=
 =?us-ascii?Q?ZVPXdee9dnqSJFxizlWh4ASs7ks8u06JuN+abyQM2OA2sEQWpMb9JqrUXI2w?=
 =?us-ascii?Q?SLDLKaJSjoZnPtYb+wv+/4EdbiTYDtuhAI66eKJr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc5a8b12-f917-45ec-c383-08dde720c487
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 17:23:27.8600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3WouKk+BokH+vAZ5U5PFclKTjgrtB5k+TR8WPd63fboTCqpnqB6TYKnkW9aoFCKWzqB7/0Vf4wywEIwHawsB7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7118
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756488219; x=1788024219;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/wSBK7pwNkTWvBun+s1mEN7tfZuDkF+Rpq4P/BR+aT0=;
 b=UlHbFzM3wMDXIkHZd/aZhf0Bh8igusYzvrqHb9PbN3NCDrz5pmDnf0ty
 eibIKSpwJGq8gAyE5EKuRPciBT2vacbuUS1BDLF4rAbGvcbHuKfcMyloc
 7pgM1Ws5WggBOgLYYUase1tSOLw0MADnfBjf+auGgqcwLQFnvQBaFW0n9
 5f80GH9J9HpGwmh6W0rsK0/HtrbS+VwqGn8eyF6UkpzHuMFrbzCJap385
 VOUijL/et0EOkf7i/l7bGYazgBrLbzPUeLrDAV7GQkivR006i4j8AHSH3
 LWlPV7kLrTZIdd/+5RuOtSoQuFNkAI+NcWp6L7HpBg4mZohsNMtj3KuPq
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UlHbFzM3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix UAF in RDMA core
 aux dev deinitialization
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joshua Hay
> Sent: Monday, August 11, 2025 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Zaremba, Larysa <larysa.zaremba@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix UAF in RDMA core aux=
 dev
> deinitialization
>=20
> Free the adev->id before auxiliary_device_uninit. The call to uninit trig=
gers the
> release callback, which frees the iadev memory containing the adev. The
> previous flow results in a UAF during rmmod due to the adev->id access.
>=20
> [264939.604077]
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [264939.604093] BUG: KASAN: slab-use-after-free in
> idpf_idc_deinit_core_aux_device+0xe4/0x100 [idpf] [264939.604134] Read
> of size 4 at addr ff1100109eb6eaf8 by task rmmod/17842
>=20
> ...
>=20
> [264939.604635] Allocated by task 17597:
> [264939.604643]  kasan_save_stack+0x20/0x40 [264939.604654]
> kasan_save_track+0x14/0x30 [264939.604663]  __kasan_kmalloc+0x8f/0xa0
> [264939.604672]  idpf_idc_init_aux_core_dev+0x4bd/0xb60 [idpf]
> [264939.604700]  idpf_idc_init+0x55/0xd0 [idpf] [264939.604726]
> process_one_work+0x658/0xfe0 [264939.604742]
> worker_thread+0x6e1/0xf10 [264939.604750]  kthread+0x382/0x740
> [264939.604762]  ret_from_fork+0x23a/0x310 [264939.604772]
> ret_from_fork_asm+0x1a/0x30
>=20
> [264939.604785] Freed by task 17842:
> [264939.604790]  kasan_save_stack+0x20/0x40 [264939.604799]
> kasan_save_track+0x14/0x30 [264939.604808]
> kasan_save_free_info+0x3b/0x60 [264939.604820]
> __kasan_slab_free+0x37/0x50 [264939.604830]  kfree+0xf1/0x420
> [264939.604840]  device_release+0x9c/0x210 [264939.604850]
> kobject_put+0x17c/0x4b0 [264939.604860]
> idpf_idc_deinit_core_aux_device+0x4f/0x100 [idpf] [264939.604886]
> idpf_vc_core_deinit+0xba/0x3a0 [idpf] [264939.604915]
> idpf_remove+0xb0/0x7c0 [idpf] [264939.604944]
> pci_device_remove+0xab/0x1e0 [264939.604955]
> device_release_driver_internal+0x371/0x530
> [264939.604969]  driver_detach+0xbf/0x180 [264939.604981]
> bus_remove_driver+0x11b/0x2a0 [264939.604991]
> pci_unregister_driver+0x2a/0x250 [264939.605005]
> __do_sys_delete_module.constprop.0+0x2eb/0x540
> [264939.605014]  do_syscall_64+0x64/0x2c0 [264939.605024]
> entry_SYSCALL_64_after_hwframe+0x76/0x7e
>=20
> Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create, ini=
t,
> and destroy")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
