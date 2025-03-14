Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5683AA61C7D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 21:24:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1181C83AF2;
	Fri, 14 Mar 2025 20:24:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nVSzK1N-c3qc; Fri, 14 Mar 2025 20:24:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53DA383BCE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741983890;
	bh=pLWQVoMKIlJbbzzya5YY0LYaNtBKd34GcNLos9gcluQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UFT5P9uZG+8M62zRzNm4NafSRdAyJROX9puUpuZUoKmVd9Khcrm0N60V0Oi9KDp16
	 jVSf5pqTuw8FhgNA05Zg8hEX5ZHJkOWGB+4BXD1rjA+kdeUyIKqM51swk0QTV8to+a
	 8q00e5b4hnLOs1/eb6KlTi0gxBxyGR6PP+OJDDimwUU4vya5Wrt9EAWe0aHwKX+pTk
	 4ae6qPZqe+3cpyVOnSkGvB5NuhNS/JBQJAtlQYbq/YP7BZzXBNI9F6Gm7sd3LUbJnx
	 lSG4+lNgRnqsPHEhsEGrp+0oWYEtvW2ywGOXC/46nhFeIGT9ns6jwYCzHAkcY6T8OE
	 FDF5yw4paYHdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53DA383BCE;
	Fri, 14 Mar 2025 20:24:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 75A06C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3FC6E82024
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ErY9fmGOZznR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 20:24:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 85F0982160
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85F0982160
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 85F0982160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:42 +0000 (UTC)
X-CSE-ConnectionGUID: UGgSIKhfSx+M2WogvnbPGw==
X-CSE-MsgGUID: aC2ekGwlTqSVo7hCoQ6FcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="43186501"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="43186501"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 13:24:42 -0700
X-CSE-ConnectionGUID: mwonytN4QJ2pnsYi386DYQ==
X-CSE-MsgGUID: fiUVR3F4SgawSR9+A7oAjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="121869569"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 13:24:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 13:24:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 13:24:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 13:24:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pL83Kpx03gT7kAQVTEvMWnFEsaELilRSi56ChG1suLmimtlEc6qSyFQjGcKOliQ5N4S+iONFsdsumodC3zQnZsFYvJBFfvQ30t0WVnKD6JOkp5WndhJtw6i4r8bK8RuJWfYTiRKvLyFFeLXCT47wkdk2QFiCUkEal1G79Fv0B8YtgVT1teCXrJdaJ4Kcdh5GkuSpjkItYG04NYbYnuaKrH/i+weiIFnQnYLJJBuld9SD1S5UaF9SZ0HdtvfNYB9qqb/py3Ccc8oWlfytjNYu0mGM45FuhlXVX2e3JtXdeZWiSWO8xtOM5FiszgKFDjvbaSgxO38Qae/JgW5bR0ewtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pLWQVoMKIlJbbzzya5YY0LYaNtBKd34GcNLos9gcluQ=;
 b=ii2Q5lfLfb0F480GcUu18awK2T0cPHqfgKlFPPO5OTOvJ19KiduHqRAxLu2Hxatj4iZTRJREFpF6m6Ce/nN/wWhvH2a3A4FrYtAtjQpp/o18PmAhw91MJFdK/IgqFEvG0hPmVjhg7sATqC7NGQ8nK7uEIl52vtIt10Nyg0tgHm55aHi6k34bWarH4XETi+Syvx6ePtSqGE4xgBA10gAphV8svFGJdjKrej5CJee+m0iNGGWHRteawAkbUIM/j9X1wE42GBGe1Ryd2XqDn13KVTzifoXmvVr7xTHrR37Iti6s3UnwZS/iE9deszjeDRU3lTG3m7JwEcKkPgR5jKdx0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SN7PR11MB7468.namprd11.prod.outlook.com (2603:10b6:806:329::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Fri, 14 Mar
 2025 20:24:09 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%4]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 20:24:09 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Olech, Milena" <milena.olech@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 YiFei Zhu <zhuyifei@google.com>, Mina Almasry <almasrymina@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH v9 iwl-next 09/10] idpf: add support
 for Rx timestamping
Thread-Index: AQHblEOqEB3g/o/eS0aFmx5cxYawbbNzDhPw
Date: Fri, 14 Mar 2025 20:24:09 +0000
Message-ID: <SJ1PR11MB629780AD21A4ACBCECCBCA439BD22@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250313180417.2348593-1-milena.olech@intel.com>
 <20250313180417.2348593-10-milena.olech@intel.com>
In-Reply-To: <20250313180417.2348593-10-milena.olech@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SN7PR11MB7468:EE_
x-ms-office365-filtering-correlation-id: 5856f49f-be3b-4da3-6acc-08dd63362d07
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vfngoR1CAgAb9wwJhy8FSWVN3ArMSM/Tz/SaA3tIaBpNEN0AY920H4ChtEBt?=
 =?us-ascii?Q?wyB/093uVvVnNxcWwRCOWR2KKm3jzw3z+1I1eDBFPA3kyv0gNM4S4+CL56vX?=
 =?us-ascii?Q?gs8ToMz9qz5nvmZ7XMrM4ciKXqgLAS0vw8Vp81YpnZlMi9HKr507olSzBNMc?=
 =?us-ascii?Q?zepKsd0zJxn86TOubNlsNNp2L//Zo6vg2x+MZhWK5FlETWuhFniHIRaZYFPO?=
 =?us-ascii?Q?H6Xa1irJpAcE/hNiRd6liF9t6m79ATVGRBl5ksTTMBLimH/0/0IMqX0LkUeD?=
 =?us-ascii?Q?ZRtHSWLpqM9VgO9LhKzllZcHe/bwYStX79NDlM9XjipzaocNchGgNmCdToXg?=
 =?us-ascii?Q?4dvMYPuYE5KcmmETWyd6Wi7wmaO3i1C0cf1ltZeWoUYrXbz+pSFGw9q8KLx7?=
 =?us-ascii?Q?BPlmbllK/+iKmEcUw41vbMRXt7mclTDQ/Rwjv+bEi6C8/Wqlv53tfVN2G/Dx?=
 =?us-ascii?Q?XT5+deUIimex4HZL+WOkP1zizLL2lQCjVt3JwAz9pXzYWhqacHB5y102hmz6?=
 =?us-ascii?Q?SbqQ0hNNLTpabZNlNlm7x1iSoCsWU9wY8FEBtTybSpk9jn7ffgcXBdR4vNE8?=
 =?us-ascii?Q?qvQ5W9fkiX9tqITzeUml7nG6yckizTiA192Yvij90+q3u3r8X0tEAtXPRl0k?=
 =?us-ascii?Q?ogXvfeA1vvz4YezOU/Sck0wtk/v0raCDhGQ09tuEqoc6r7DucEKiNaptXdCa?=
 =?us-ascii?Q?gDOLrtzeS93FFgbAmYshFmjajspl43lwZy0tuKfXZawQoU5I7IKftS55kpqp?=
 =?us-ascii?Q?VCciPqOnRufCqobDvhQ6QjUvVk7DIexyBQRG9YtLBZLngzBdw3MHh72Novkq?=
 =?us-ascii?Q?GK+Nmv3v5vfG3oupgLFCxJBUzlcchdnI/kITvVufp1flIufiWa0iaFw9CYdz?=
 =?us-ascii?Q?iSq7v+NMbIhOZ3gh6ulZpATJ9MRKQ+HigsMEP/prgiov8BXGj3KJzxQIxCCs?=
 =?us-ascii?Q?8+K2D47bnkQuAeJXINtHfDyiknJQfuK/wfZDDzmIL3T+kimGIIF3Vq2bZv2U?=
 =?us-ascii?Q?q0q/Te2T4FS5GIhegvITVYENC7ldcCbOUZdsu7u0j4T26SekcHVHSi6CGTUE?=
 =?us-ascii?Q?H5HgiEAxN5QFYssn3Ro2geltvI0h/hAxaiScqndAIp3X2/6aoLgfmt8TKxCG?=
 =?us-ascii?Q?cv7Fk50Z6e4s6aV4vfT0lYJukv3fUorwF+yAPLtiIO+og5k7VM3tR3qamisK?=
 =?us-ascii?Q?m4aBS4Gn8JNWSDgnmtgq4KsuqxFr3XtoBdSWdB6u6zYIIFbAfPbtuoyXEhxH?=
 =?us-ascii?Q?1OR3/0kmBnyiPUMLeE+09AewDZ+4aqLMme0BxE471Y2gvQGkbho17oy+kxsc?=
 =?us-ascii?Q?IX+him3HCe05mjBcnnMbc1pXP4hDAaS7vd4+mcrXhreA9eLgCv4oVzMprIqB?=
 =?us-ascii?Q?gYjZDGoqXErSJ3k+my8tkm7xnkdeu6KAbgtYYrwR+lzjxvbsvwHIbu00Ho/f?=
 =?us-ascii?Q?5PMfN8rCRhDHrnKFOvm3TnyXKthohAmY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mDIdaueLF1yWyesZRb4c2qN/VMMQ7EVuV3WB5LS+fytoBY6heVnuw5Aa42e9?=
 =?us-ascii?Q?S6/AF9xTf7d4Z7rB67uKGuehTQSmAYeHwzewaK7/KkUYNxXcK2TBUHg8N5uP?=
 =?us-ascii?Q?KzNLLwDflIBYKlW8PfN5ya3LWg75tfv9tSgugQPvQKVPoRx9swoZYqVFEHLM?=
 =?us-ascii?Q?hWp4MP9e2x/iygEPLg0qIYamHgSCh+NpNMiMsl5AyBRvZ/w11UAaOI2ruD8f?=
 =?us-ascii?Q?6f/7EjMpWLRZ28Ayk3JulGg5FFeVsW+UPEXlUOS4MpUn+W9mWu7gv0HpHv+j?=
 =?us-ascii?Q?Dsn0/yt0D816Yh1rg5flSyplDszqpHk708CDEcbltbtG+0wj7vuu31ck1/Pw?=
 =?us-ascii?Q?Yaa4nV8dKPY82jlzEPZ2kJ/qrrhh26UK8PbWm3xc4T5RBaDDeo/7XPFAIOwm?=
 =?us-ascii?Q?G8xvAEd57vQQ2wfajflMxf7L8MTzcA6HVec0sfCSUErrBYn6YLLtuwAwKtE3?=
 =?us-ascii?Q?3NGNh/UcJR0WAWbH6FdRExQx60afFuXCWUECYApGi4gAKXR78Pwke6tkO8ox?=
 =?us-ascii?Q?jtxkoMNtpmDdhNntLCKck7BzOmTM7Ssgd5P2CodEyrnHgk+AVue6zhXfpXC3?=
 =?us-ascii?Q?LllLbw2wNoFN7cmZBQySXMCY5Iv3QRzxUDySq1KsZpSH3TdeqtPHAmO31Sd6?=
 =?us-ascii?Q?4316NjhDTlNM/XBFjHw7kd3PXHJiUQWs7v8mI+Y2ZRptttZ7IfKTXv4L2Nkx?=
 =?us-ascii?Q?+uA0T3WCYqm6tW5WYN+4M5xcG/vVpgfnYUzCrg54WO1PArFTwbSLpJP/20Iz?=
 =?us-ascii?Q?z3mBZYd2r6gElf7kmi9esEwFbTxURTB7Q0rY6lhgOGqIqjRi+Ig0k/1xLXEZ?=
 =?us-ascii?Q?Xf9bmPFPjJCfKHkv65FX3Idx7gHjJkCjl5eErUrhzM/hzy1PQmkdAVuM/Z3c?=
 =?us-ascii?Q?OvnTvF2sHGArakAH8BkGND+LggRE32VqJvVQmD6ldA+33hzrJJikPN7H3ABz?=
 =?us-ascii?Q?LEruPympYuS+UQlhkoLJZYzWB2Y6yE80Npe1xVyQY4M47ay//c3EBfGdLVnO?=
 =?us-ascii?Q?PN6T96cJVnmzlrNhRlf4CNFj/d5frUCwlHfsWjvHrbM112Trhf9o1A0GICOZ?=
 =?us-ascii?Q?toN0Wz67yoEK8g/Vz/fSnB98Hpgndv1H+WPsqsp2KNxWbwfjnZZp0uDwwBz/?=
 =?us-ascii?Q?MxtrZeaK2ZJDCIOznja3/D6oJ3z/RlDcO5JXiN2EDJx+cTc6AonGT8PFtcSU?=
 =?us-ascii?Q?QAKfmg3/u8OCKc5lT72rXTn0S3/4czzataJASh+F/XG4sFEQp3iIblkl1ljv?=
 =?us-ascii?Q?oZbKF8+wKFa2PQaIR4sdskmkoaLOxHF+qqfNOpfYKW65cW1gHhEiIbtORSwm?=
 =?us-ascii?Q?Wupa1+fwLMRT6TzUt9r43d+VKYq5k7G9FbwSsN578bXE8GSVhrOSCU93+GTo?=
 =?us-ascii?Q?iXRq1S8N0dik5m73bd5k+wxmiiLCb63JqEYvoavFUzgqzWsbq6wfM1HkWiLu?=
 =?us-ascii?Q?1KC7P9UrnGNochp8cGDcf1UAt3i5AKVrIn/kUkZ1G64MfE3g0X/fvaTH5cxi?=
 =?us-ascii?Q?hqqjX7rfE3vcKHh5lxIliB0y1vmE33UdbegBiphVneSu+EWMWjRiI7QTGc+0?=
 =?us-ascii?Q?asN1du1FjmoqFgOXEIEMRrkQNiG4Gk/pK2rk5OGy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5856f49f-be3b-4da3-6acc-08dd63362d07
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 20:24:09.1235 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ctvEuGiSufrpw8LT3ziKWaI3Uo8K1zvS11RaUbVQpAf97hgS1x1h+jawmyuM7zwvUG5KRGDVMR+6GQ/+kUpbRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7468
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741983883; x=1773519883;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pLWQVoMKIlJbbzzya5YY0LYaNtBKd34GcNLos9gcluQ=;
 b=dktFQKxu4/NQSim3jggUoMlN/U+ITeBBaG7Vzb1g/BJJ25Ep5VCKSleE
 xgYo8sNnSstmBuBsdWOnKfvoCtlcaP3IesADBmPK8XK7dmd73nIu9ttEo
 10w2XmXTIUn+/QplpeMlMOIgO2MsVHpvOtRwyIDUv5VzT9EFcywjkOdDy
 ijA+e48aPl5qq7gk9o163KDX3tyTFb8lFjXYrCW8U3Gm+8GC9iRhjU6pX
 ScIGtWFXEinlOYTG3rEIsbnN0Q/vhXWDm5Mch+AIn2h28EFk7JUepwhXz
 CInQXcg69U4cJ4KaixFDkvl5LJ+PY/Xs7F7vcLVCAIHOeyEK/QFfeiqnY
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dktFQKxu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 iwl-next 09/10] idpf: add support
 for Rx timestamping
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
> Milena Olech
> Sent: Thursday, March 13, 2025 11:04 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Olech, Milena <milena.olech@intel.com>;
> YiFei Zhu <zhuyifei@google.com>; Mina Almasry <almasrymina@google.com>
> Subject: [Intel-wired-lan] [PATCH v9 iwl-next 09/10] idpf: add support fo=
r Rx
> timestamping
>=20
> Add Rx timestamp function when the Rx timestamp value is read directly fr=
om
> the Rx descriptor. In order to extend the Rx timestamp value to 64 bit in=
 hot
> path, the PHC time is cached in the receive groups.
> Add supported Rx timestamp modes.
>=20
> Tested-by: YiFei Zhu <zhuyifei@google.com>
> Tested-by: Mina Almasry <almasrymina@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> 2.31.1

Tested-by: Samuel Salin <Samuel.salin@intel.com>
