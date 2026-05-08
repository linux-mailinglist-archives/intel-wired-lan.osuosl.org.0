Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALhiMNMC/mkTlwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:35:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF214F8C7A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:35:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54BF08443E;
	Fri,  8 May 2026 15:35:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nkrVKiU11hP1; Fri,  8 May 2026 15:35:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1570384438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778254544;
	bh=spst5lxvJXixURACr4PiTzrTU+mQJfGHeHIBsIRSJBI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MbMIcv/DjpelK4PTd2DxHPIuaOY6wYy5kIwt7TIdBFNGbMhu/TRuQ9QnwRbTC22FZ
	 0OnBOYTcnRwFmU7nMP68rWowN1F426+BnbTkSuieu1DcrsASRIMXCbgEdwWTx2Qv5j
	 e3g/528MaSV+x7nLcoum5zF/uDM816TXsMYup7m48B+X51yTnMcEc+h2oKz/Xl0+uP
	 KqqqCDvLpQPK+VyGac3zHIUag/AQsmZXm1g5dfr+gMVtkZYJNDYcj0ghFNhYWiuFZ3
	 8ccFxZr0y3rjYkXethLVeKYxgj+khZk6N04Lhs6bl6YYB4OFyZSfS+W4vlbi9IssIM
	 uAjVyHrmtkbGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1570384438;
	Fri,  8 May 2026 15:35:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 69CC4317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:35:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5ADE840F1F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:35:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gySKfmZoOayl for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 15:35:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5D2ED4059B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D2ED4059B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D2ED4059B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:35:41 +0000 (UTC)
X-CSE-ConnectionGUID: qZIohTZsQc6RLp/ROFPqnw==
X-CSE-MsgGUID: t995BkaxTKC8gLCxn1tXXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="81791187"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="81791187"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:35:41 -0700
X-CSE-ConnectionGUID: BkN5ypjCQ8e11s83VadMlw==
X-CSE-MsgGUID: nJ15gvzdR1GCyveWjMcHZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="260528034"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:35:41 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:35:40 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 08:35:40 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.10) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:35:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bgOhLXR1CAjC/2O42P37Mg11bTHzztXK4lFUl8KyNS949I15gNczTCwZnGxBDVTJw0Mxe6Y4RdnqcSacFhRkchVgpo0ZZ5JRZa7MP6/EkvWT0Rs5n/SWUBYUguyz2rMHgxQBSv1MfngWsibr+X/D8RNH+C9HF5kfsl6vXzZL9FGcrBIvoUaJAIBfzQg+SjYIhxu01v9yp8l56fuOnqqmXSKqF5eRzXUQy9UJ3pP9bt7PnJ1p+p/b7IK6tCjmMKL2LwyoXEudXtj7RgXWKx5Ld1cW1MBGUIbfEGXAvh1QyeZBJbc2EKjWTkRO1XQKeIoMr1zJtv7odsek7WFON8ovdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=spst5lxvJXixURACr4PiTzrTU+mQJfGHeHIBsIRSJBI=;
 b=K8NY8JwNiFV4CR2+3qbuBygtHPqQCcGjvEvlaBhaRrgbC53a4/X9EHVwes0yhvfH9gZf7MTvX1KT5s+Jx6sqXSHoI+zruqWNgyxwfuPJ+YhnEsgzGRM7YTKMAq5G6eoQU/igHl2hHhyOZGCPwCqhKG7INYvH2aoO2XO6oKWPqCeV8nEGOgFs8qaWYfKeWV1MLsPjLMDzQAuykprcqohiUVi8aK9EmshYY8/bRm+9S2o+hSqS8GdIqvwhLFX07j4Oaqbc1rGG72a5yFg9slV7J8C/SaIpQgnepGo6gN7Ev1X7oOeDowydQwJrPojdM2LMTuW52yVirSUHpO89omWsxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.19; Fri, 8 May 2026 15:35:37 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.20.9891.016; Fri, 8 May 2026
 15:35:36 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 6/10] ice: increase OICR
 interrupt moderation rate to 20K interrupts/sec
Thread-Index: AQHcyL6yGvnMIEqx50KRtTVfjZKQMrYEbwIg
Date: Fri, 8 May 2026 15:35:36 +0000
Message-ID: <LV1PR11MB87901CA521F1C76D26E2165A903D2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-7-aleksandr.loktionov@intel.com>
In-Reply-To: <20260410074921.1254213-7-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|DS0PR11MB6544:EE_
x-ms-office365-filtering-correlation-id: 003ead75-6994-4975-3187-08dead17739b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|38070700021|56012099003|22082099003;
x-microsoft-antispam-message-info: bbdeR6bzYUCJTYq+0S7vCHcSi1NG93BldmLkUBrhYRxiRexfGmIY8EFF7USVK1x+2eqorR1O5mytx0Fujvmx2rqGDLm8/SMwxpBqe4Pbf3k9Su2wTIZKfAWz8O4HpYvYB8P3Ocen5384tZ5jhloaD5+JXIfCUQKBACSK/tGlhFz8Vouq4xO9GR24cxqrQo0OtFGmkou4BaEyhmsNFSMPBUT8bId70aPXdTt4MTUTQubEBhfkslu+HOZGJu6ASEJmLMsp+T0bsThYWNQ034c1I09cltwlR4cJ6MwRU+JH6RJtRoGgp/1pDBHXFRlkiGMS303NicLHQdvuWrJfweN6x/zkgXGY21zZhNMpdLMjUvIucmVnY7pWTfuaOx0AzDN3aZAKDdafWW8BVQndHkKv2scgJHMi5kHG0ERFrA/nlDmUVy8o8fJy8UGgP6uP+lD1LxZdEykD0Lex1qxyUm0a022KSzFzT7GKSsl3J08t8z6736TiL1RXKrPjeNd3qxzg+iugEzqc8sY5Xcp3AUoN/BEnS/lAaRIg3pRKmfI3OJo4FqCUGkUKwMjVgmaDfQ2iyTUS10TRAgJ8WY/AaKHOCxF3fTEiIOLHeR1yN9q6lZsI3e+KIzqw7K6kHCmoYrqRNEW/ecYtJr5B2TeN81iPpmrf1X6B/lL8VJTh+xtmijKRcac4/bhbi+KD0dQE1HaqayqHAzyDIksIuheNaw7DlG8EmkNPVqbCeJQBJ0YuBbSdqWXScCL8rGvtz0/aEA9B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(38070700021)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wrRogRVxNN23i2C01+7qbO/eEsJCkM7K7O2Y/80lxNGX+sG79+t9teDzo/K5?=
 =?us-ascii?Q?JE57sbJ8wiqUTL4h5cdMmLghc4dsbZJV18+RXJHwvOFe+z8JfnAFtrqON0M8?=
 =?us-ascii?Q?7tF3BAhZa2MnqA38SWgkogsUt8HDYqKfW+xeCRJyOHAniNmT7kSb/Yr98AH7?=
 =?us-ascii?Q?Ur/aNuki2kYFkoJBd3+6k7DAIauRIPa+j/BWRcyKx7SltiZ5wCuxZPFkWynH?=
 =?us-ascii?Q?JxOGG/O0JXstUqRwki9oGMnJDDxwy82W2+SaI/pI1BoeXPsgzVNzaXza0q2i?=
 =?us-ascii?Q?M4eZlHufdquRm/FQiwbSrVt5kxBj4JSw31S1JlSDJbYLNo21livR6blO11Fk?=
 =?us-ascii?Q?IQ4dWBHZKZcMie1LDnU99hVN3a/bNlgz5uRjVmviMOwtrUrc8tGhzfKtYFv5?=
 =?us-ascii?Q?+HPuN8PwTaF5BuHr65XOb+MtRtEd0Uhnh3Byh6/NbuFrmGF6xWrWC30zfCI2?=
 =?us-ascii?Q?y3eGD4dRl8gCnT1wj9jxlvWG3hVV7abWnMCm7Q2Huag7AxM/exm7jyo0z1R1?=
 =?us-ascii?Q?FNkFbgb1/KfFbYLTnyqI+Wa6nqb2jSwdLum4wPLXu4wwr92fAvwxa6eSV6xK?=
 =?us-ascii?Q?ScPVvZ75B+YiodOB8F4lsBjSEgH9ImP9c+qns7ETV7+/wbEwZT4zAatVl28+?=
 =?us-ascii?Q?Es5SIKldgpoP9YS/DKSKgcgj8wx/tp+k1KMZ+A7d8EPQ3QakFmpTue6S5krp?=
 =?us-ascii?Q?0yxUrGNbOYiBSWDtjNtTJ/XYptaJzcVyLfHk8cV9eesrk2+7v9Ac/SSB9lLB?=
 =?us-ascii?Q?DhGn/8pOm8uWheMfXN72GB5SXW8T2BC1wl13AEpCtwF2YjaAk+85svy/5JtE?=
 =?us-ascii?Q?kuyQVHTQnp+YScmyNg5mr1hAunFATRXV+YyYxeE7xGcBZj8VJ3jZDeH/XVfs?=
 =?us-ascii?Q?eiDf72upwgucJ8+Xhm1xx580YeYdpP3Xn3067/KekO0rhulAhqRJDVa8YBqt?=
 =?us-ascii?Q?DROZkt+FtuG/PO396hsnFvjJSUQ6ShhHlBqI0FAJuI9NZgvReBKaFw1hf5C3?=
 =?us-ascii?Q?qNS5E35czC6opVtFgUaBCfnhCHEZGbkaPl9cc4OGp1A6MUeW6XDRyUe7gsgZ?=
 =?us-ascii?Q?sz6CcGr41pJzgQeEwVI5+APd7iZxWyOFhclbBlN69hc3BB5jOaHk3SXCWelO?=
 =?us-ascii?Q?a1vvmdgbPo/bjtiP90+ZRDvN95cU5Kfa+V4Xpd0hShBDwLGiM6EF8k8Kj9vs?=
 =?us-ascii?Q?+L3h01dFFw/PdrgDW7nvRZZm87l4znnOMtPhpyG/H5/sWkWz+iOx4YXxevuD?=
 =?us-ascii?Q?cNT1/FcUpvMFcehtk6Dvu5jiTGXJhw9UKG9xE+1m57givP14+N9EjPx5AiCd?=
 =?us-ascii?Q?vE0Z6w7SOa4YgjNM0bKKBivmu8kN7/DtUJmOLVfkC9m4Uhl+9ayddLO50sa0?=
 =?us-ascii?Q?AyzF95vAIBWTi22XtUj9wMIBJ9qO6iWvr3Np84lwzEfvoIQcd2NfjOWqc5EI?=
 =?us-ascii?Q?yGQU1Jk+evJIacvFrjF+h2vBY21SVTHZ8eewy1XnayrCxarKlAFQydxfdJPd?=
 =?us-ascii?Q?ODtJD8v0qknKsxAKhwf+X9rfs5C6fydFDK9SiKxV/16k8RZq/he7eKdXgerr?=
 =?us-ascii?Q?Xn94PukInpMwtSI2IRgQH8ZqGtTTxZyh9Wd8efI3kDouF1YRAEdwEn53U4IM?=
 =?us-ascii?Q?DZy1BUbHv0mVH/QBirf/z+6f+rpH5xeskI39IKKCYcepuAo65bs4/xDc1/6q?=
 =?us-ascii?Q?C6RxirqAnkRLMjzm4vTFTiW++AQNwXYL8FLpKFv0UuqO3jpT+UX8kWVRLbtT?=
 =?us-ascii?Q?6CQW6LIR0g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HugqAWZh3haVNmRNt8kcrDlNym77YIzCk7sP+1M3NrcIx/nn0ceOGo/iavRA2QoBsYyH3ZrgwZWrJoCv1KVYYkCzQbLdBOxbf9l337JjrumlisfjbNipHR2pTaspT1Ywrt9P+RggT80qw+BnEXlIa4yWhEVJWYGeDuZSm7HbQizjWF/AZ0LtQtbNSkvVeQX9zRXbFfYguvbAHo3dHnQxorVO3uMRXnKoUHl76F7QIBLOaFTpHJa7sul240iXpKCyKrMqfZXxiijV5aiqabZIEz9ziGWL3xbXIyr0D6B7GWEvSj6xYQ2N5kjYQBR7jbTrUuSRmnuYo3THsADQxWxBZQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 003ead75-6994-4975-3187-08dead17739b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 15:35:36.8114 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6Uk9qkH+uzaEr69eQSFxGkTIp0r1xxLG8ehRAsCxW0Xtz/pLiYKnyIjLTtjPocmCpJm8uQg71QkFRNDTnWPokAeVFaVXp/gemH7OPvelwJ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6544
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778254541; x=1809790541;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Acf9FiPBluPeWR6gSkoUYvNiFZ3Mzsyn3tnFgymxa8o=;
 b=R/YoQN2GkbPI1NTwwYFupxH4I0hV6kK0PGWTiDV1h3PHX0uuUh/NJo2r
 4dGHhVHNE3vOJFJauPqI9vAOr84LNpy52XvGW29oJ7461FuU2TRWJpF+8
 elnIEdcqmUMmUzsEeGnWuNVS9d7hyctHyIm9N36hxSfDqjnIRY19jem7X
 wdy29Lpp9hqXBfmq2XW0pxsivZ4+xTUYplC9XDHQOcYIelGRR7v9d08Ul
 4DynuNSxADd9I4f89EDZMHNqH4SoK32lx6G8r7Ne0+ZfolEMP9I7bFOpO
 e1Io956HWgFMQJ2vZHABkYmYIhNMDZxPYE/MdrphMVsQP+91fquUFKooy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R/YoQN2G
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/10] ice: increase OICR
 interrupt moderation rate to 20K interrupts/sec
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
X-Rspamd-Queue-Id: 1FF214F8C7A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,LV1PR11MB8790.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,intel.com:email]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Friday, April 10, 2026 12:49 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 6/10] ice: increase OICR inter=
rupt moderation rate to 20K interrupts/sec
>=20
> The miscellaneous interrupt cause (OICR) is throttled to 8K interrupts pe=
r second (124 us minimum spacing). This interrupt handles VF mailbox messag=
es and Tx timestamps, so the low rate imposes a minimum=20
> latency floor on both use-cases.
>=20
> Raise the rate to 20K interrupts per second (50 us minimum
> spacing) to allow lower latency handling for Tx timestamp bursts and high=
 VF message rates.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
