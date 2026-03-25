Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cClCM0CIw2lRrQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 08:01:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C87F32060F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 08:01:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B87740E7C;
	Wed, 25 Mar 2026 07:01:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MoxPQNOkMEfk; Wed, 25 Mar 2026 07:01:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 163B440E71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774422076;
	bh=0+a6a/EvvbcHxL0laa99kxy2Hlp/qwvRakxu/1GfXLc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1un3Y9wKzFN3R8yOIXrhqf4uLzykoZXcRc8L2CHqm5xQYBfCx60PRb6qzRTCQjTcp
	 chW8lUH/yYfcdPGGdxLPKhMsonr37TAdIsZud2M/54H0Xzx7Vpu6FTQP0kkvHpx3uP
	 96Qt4YQGcupXmo6K2h99fSH29XFcODZJA74XlWi61nKuPAtsLDtUNX5umxHSVEBx9K
	 Ta23ThugoT+rc8O0Rz7HbLakWPa6v6/PpKrxQV/EUxNGMzbp08GrDllz8CqVBM1XNS
	 0ZQmlKT5y99EdzpUDeBkQV7+GC+fiRIYRBs9pwtErPdl6/g/Y1tqBcA7ekQExx9qrN
	 IconYOP2NfcYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 163B440E71;
	Wed, 25 Mar 2026 07:01:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A7F5353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 07:01:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC17F400FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 07:01:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id My78Hy1c3pcz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 07:01:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1FBDA400CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FBDA400CB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1FBDA400CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 07:01:12 +0000 (UTC)
X-CSE-ConnectionGUID: Q3V8DrvHTPaJEg9jvbyWJw==
X-CSE-MsgGUID: 18gZEouuTJOPeK7KORDDBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="63003064"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="63003064"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 00:01:12 -0700
X-CSE-ConnectionGUID: Zj6dHBNkSj+CTdej109sTw==
X-CSE-MsgGUID: ob39bNb8T66ekQoEf33IEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="229513513"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 00:01:12 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 00:01:11 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 00:01:11 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.46) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 00:01:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U63gKisg8xEl7rMM2iGuCvtaJIB6uaXSC0dRAAtAo/CBbAP+LX0SmZ5Od2yOF8wCcWiWDAaS1o8SlWz8OFZp5sHsKo/YZjYw6P/65Be3RhijmGwLOTNFPDIRvT8RhLLHFxFV/Yy+dA/JflhdOhuOpPSFM0VKZ6DiLEaqIfHbMqCxsRnW4xVbK4NhQa5ckVz6gzj43NKFAaRkfTFx9MvwxVPcXdUyni+QB/2x/FHmr/B91S9RE7NzG2HuAfSn0May2EFBiwx2SbwgmWTMccgmwmHGOiQyZy4uAPsO/rRIVfWYcqyo9g8wSL4pkvBQ6VD8+oUI4T15XSfs1t7UC/9w3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0+a6a/EvvbcHxL0laa99kxy2Hlp/qwvRakxu/1GfXLc=;
 b=ZC3iyJ8UggpI7Ha5SAh87qUsx9BJJurt0wmgP55TUCs0t7o9925mc3yxiOaPwZiwfstcBxG7bJoihK2SHN57UCn00l2wglly1n248Q1gSxLCfC6It2yQVzSiHHAsmBi2/T6MbbnQLsZpV0tU62OwS08QwaCchkuHoG0cjXVRUL5bvLgi7c3m2Q4j/pDSWuKBc+m1Tyyq8E5L+jt933OljHA004ocfP5FUFxEjmmhBTgz8M0EVieQFWGk9e8RM+Y2eiAPeMjIpw6dO+O1HQgxk4zJqEheSbnMzWGRf+Ap7ho+VmBITcJZrP3hr27B9WqYkT9QysGeXNVitOUepk04bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA0PR11MB7159.namprd11.prod.outlook.com (2603:10b6:806:24b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 07:01:02 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Wed, 25 Mar 2026
 07:01:02 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Greenwalt, Paul" <paul.greenwalt@intel.com>
Thread-Topic: [PATCH iwl-next v2] ice: update ice_link_mode_str_high() with
 200G
Thread-Index: AQHcuqNG1ShPLlj3BkeoMsbqzAkbGLW9/1AAgADVg6A=
Date: Wed, 25 Mar 2026 07:01:02 +0000
Message-ID: <IA3PR11MB8986A390B490C2B585B436E5E549A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260323085840.3272274-1-aleksandr.loktionov@intel.com>
 <20260324181612.GE111839@horms.kernel.org>
In-Reply-To: <20260324181612.GE111839@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA0PR11MB7159:EE_
x-ms-office365-filtering-correlation-id: 59618e48-8135-4690-6825-08de8a3c46c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: jPDYE4MgI3rXXuJo1KrKork6PsW9z7Sp0fWkfYaUSNz7gHwuEzt9uZgI8UA9CzwW8gTZmsveha99CDySghL/JPXWUYBCuAzReqw7RmRlCsKIBSceSlcoseBlcbVE69MT5EEDto4ybP1jj8qwdWjzKaEUj/IOL5paAEZR/g4LGMV2k7hJTCptm3Ei5EPIPln3xGkSHSXAv2jMTV1FxfYR58rKJ0y2+d2thekQqQmFmuA0iyvJ+gsRr00QIvk/kmB3dUNc9aK9lzh2flixvM6ChTZ/sZDg4Ol1vcFxkK8p4iVBDBHdQx6SQiYve+OU31FR01YVJJnO/CMHvHlfpP0pwnlnHv6P+2K9xVkT+987jvtOiN7KVyNnHunkMB+Nvbmbfk9qYeT4A3FKeAwYH8seEH3LR0GjxIIpGrPp/6bJ51d7rFWqygscmu+zvda9PYXK4TV1ZSBYKb+HcOxfii49fdBwgM18jKjcsiQvlNyg2Rgl9nMmtUyD4AOrqbprNr2oGUkiZnhwcSikZe3Fpo6kY4LOIMta176Nibo217o6z/y45KgYlR53T+yf8GDc46NILAFFBDTtq7VaqzpoR4ARjmcrq9nRjv9bP5LW2by+tkuLIxCC8svx+W76VjfHjhatDk4RGFBFLwwQ4zAhrDYeXMlk5VBINbO3r3xOJ2OEjya6vocLyiGlqthvK0zUJst1oeCpusNef9UIjbD47jdoP2jM5adp8YM19w0yLRlf23Z6lZlXr9sdz3ZIU//ZGyCqoSl+1iSTeo2An17oqqRyMjxwg0ko+yZ0mBrR99A1yB0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Q5+XKA+4hSbe9hDvzDzWh1c7cEqPGsCvf/uXJVoD+w9bzbSPyPKbdr85aTqG?=
 =?us-ascii?Q?kPp1IlRLMMGEDPdc4zNxg4lPr9Ck9OT3DDMAEQ584an0X5pe0Jmitg0Ub9KV?=
 =?us-ascii?Q?Uh2TPRFoRdJ6hfvuHYanWbUNkmrXgi8pxnE8oO87AbJEhYNp0nfdTbGAIrNv?=
 =?us-ascii?Q?rObifqa86nWPB2wC1hR8N3nx1s89zrPSH4jbnmh9R+RCiKLftm/oquXX/zye?=
 =?us-ascii?Q?zuE/cu6NXym47gBpR+D/GTHcj/oeTJQTjMVOqKxE99inLl9j70XRkRg9AZxs?=
 =?us-ascii?Q?b3qx8+QJoU5QYYgrbVcMPyXkErxqKKfrvxMZnRm4/l+Xk7tXr+lD2Z2nslX+?=
 =?us-ascii?Q?t7LHQZeBVK1XzZQTrHO7qQCiEuTmCHlU7ieJYjbwgZdlQV2vora91wsAyHM6?=
 =?us-ascii?Q?dPX+okdztmP1C6zAibIH6JVjq5vtK/pK7zX4QeQHsnxj8nQvtWXJOS64Am5v?=
 =?us-ascii?Q?cruTKAA11Uf0G+0EUuPf72klQ3I/XNkvpOPPIfuc/295iXg+PhtaKlGvA6Ao?=
 =?us-ascii?Q?e5syiccZNOdzRfK3HLBl+r+P3aUXNQ0X1ktqmL6o6Tu2zHMSqoXZAp27XJu6?=
 =?us-ascii?Q?tpqlLk6EgHK6cwDkm4y67AxHmS4gDVzO0kURMh9mN1nmkZ5Z5XF/OYVCNpGM?=
 =?us-ascii?Q?Wc5KwgRkE0OIufTQxmMdUtHnUQAcN6k3WQqOuNllgBthYTi9QDCoa0DH8fOn?=
 =?us-ascii?Q?ClXY+8aaDN9hA9IbHPdKsTZgrWTn0IHkg99wbWP+JzO59oD3/cPfiMI0RV0b?=
 =?us-ascii?Q?33QyR4Y59BTpol8cmv9tJU8H5XK1D+0cqGFmAYJFFXh5J1lfqICs9the4Tvt?=
 =?us-ascii?Q?LEeaTzCqtFwRrJ/VYgDUeLTZmE5vPwWKfEn0hH8pCQR3QelfEiwXFhA62C3c?=
 =?us-ascii?Q?odlXjveptdwe0a6QME4F4e53X8h1sKtKvH8aPzjolpi/noqs4f9E0vA4cJLo?=
 =?us-ascii?Q?rWvRLhLx3BMbf4bXyfYnkK1IugjSj/29gjtdsTzOkYknckIvTzvj4f1mQ0Gv?=
 =?us-ascii?Q?IfUCVBcccLrZTeQSgtN0EJ+t8cIG9HKUE2IIGR54eFuSUkcM/+IDQSYjhjQx?=
 =?us-ascii?Q?vq2T5ZPjAd18XE+PQQ6Rresg6vwbTN4cSzvgubHZd5Cx2yieUmD3KFf5ySvi?=
 =?us-ascii?Q?DcJCeGHRinW/m3GRPK7Usoq2eoNUxrG3Q2tjEf87lW/kdLRH13EUUVAQBpp/?=
 =?us-ascii?Q?QGcxP9+24Y7ugIjH9yywkyXfU9kXjoEFW48MEqOwjlENIhRkaD8vm3T7l0UB?=
 =?us-ascii?Q?NjOYqUceOTXVJMgXHKLenVRhgiYZiHa5TiT8Cy6c8LD1ZGBtveqEqA45Jsr2?=
 =?us-ascii?Q?lCs9F3cB+pZWCFSRSrM61AhUuofHuALhEIkVhsm+JfBKPcz8YmGwDbyKHako?=
 =?us-ascii?Q?TXvU7ahULhuYiX5p4WA/pXyvmB6pIEMBJdZLJ02gAREJRYfO1nkW6SPfrShu?=
 =?us-ascii?Q?hs7eM/vuSQ39A6xLKIoXXiQMDYUINKFdnvxIp8oevOyiJDmScjX8gCqA70wa?=
 =?us-ascii?Q?3Bcko9Hf7OlzFTj/CUofIr/wn8UhQ5zObNhUjleiPFKd3nfCMiAwHyBiWqeN?=
 =?us-ascii?Q?sWDntcoD019P0Y/CCAvPDq8KYw4v/ktdX6LM33jZ0Cz3o6llURkUgTe2dqms?=
 =?us-ascii?Q?vaJsUYqpIhqodDkXNW5WTMxXEAH74/22IpgHS4bQH3gNKSmqpnCTJ2p2jeAX?=
 =?us-ascii?Q?woiB2+rI/8rnimIz6ieZ9YfWxXycl4pSPAMvigbTrpzOJF34iBFcENaY68UZ?=
 =?us-ascii?Q?hEukDaM5I539gJ9tar3WA5iAF8wNFj8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HRBDvq7mHiLyaM1nw6uJ+CagbmA2ZGhBFJUSQHiHI2owyRonxN9Sx1ZhI+3+2Bd8R2WzAa7wUFxQLf7dTuN9Fcq7oEkfyCNyuK5JxYykA+HjnTnTdOgkEYYftW40D0UWGAcFoQ+PWJhz+dlx/de5jCqpoROEa+TfsC6XjL4yMueeL1Aaox8LQJBnS3u9xVxqa1YeTO+ZFEEPUNWPP1ptpSmCVDBGy+Qu2OUJiXDV+ER7YD9Ju8hMlrBvXhr4dg7EcZuDgsjCqKPpBAYsBvih3GH0VIRyWi9TNYiP4cEP5Hn4Ac9TpK1iMtfKeEiTuMMuxhd4q32dE56ZYdHfU41xaA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59618e48-8135-4690-6825-08de8a3c46c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2026 07:01:02.2729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qzcfIturRu0sk3gPpNZANa6Y8tkpdCsypN32KmMHXB45b4u8l1/KWh52do8x7HMYpnh/rKhJ32gxLW34HywuEXQtdubSjklSirs1hzP+944=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB7159
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774422073; x=1805958073;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OIsndLW/onXvf65nbzSaq8s04U5PAZ45oDVy8nnCjg8=;
 b=kecPcPPW1UxoVryzBi1PqyeCXZ30im3Rt8/5lwGlXb8Vq9JFwstGPZoN
 yEw26TP+tAACKEsrF8JO/CsPRxU0Z/pq2rbBRGcML5VKat+5cTyAwNpaR
 Xm9nVIUz5V3H0tNd5Usg4KZ3PvWIprfusUAGKNQcYLN8w93NEnjJmnIT0
 9mzF93atsFia1tN/QRzPAHHRqu6rKJSiU8F7UVO/Jf5B4OOHkqKC+Xzah
 8JgZDb8RI8DtO//so1oTYx2bOsLU6++B6wygVK3+P4rXXosyiuTIByxCi
 bqv5i2Yjy8bwR8J1ZUxiiRbdIRAjqP33/d1V9N2xymm37rbl0ODWD1OaO
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kecPcPPW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: update
 ice_link_mode_str_high() with 200G
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 8C87F32060F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Tuesday, March 24, 2026 7:16 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Greenwalt, Paul
> <paul.greenwalt@intel.com>
> Subject: Re: [PATCH iwl-next v2] ice: update ice_link_mode_str_high()
> with 200G
>=20
> On Mon, Mar 23, 2026 at 09:58:40AM +0100, Aleksandr Loktionov wrote:
> > From: Paul Greenwalt <paul.greenwalt@intel.com>
> >
> > Update ice_link_mode_str_high() with strings for 200G PHY types.
> > Without these entries the ice_dump_phy_type() debug helper prints
> > nothing for phy_type_high bits [5..15], covering all 200G and
> > 400GBASE-FR8 PHY types supported by E825C hardware.
> >
> > Also add the corresponding ICE_PHY_TYPE_HIGH_* bit definitions for
> > indices 13-15 (200G_AUI8_AOC_ACC, 200G_AUI8, 400GBASE_FR8) that were
> > missing from ice_adminq_cmd.h, and update
> ICE_PHY_TYPE_HIGH_MAX_INDEX
> > from 12 to 15.  Without these definitions ice_get_phy_type_high()
> > would stop iterating at index 12, leaving the new PHY types
> invisible
> > to all code that bounds-checks against MAX_INDEX.
> >
> > Fixes: none (new hardware support)
>=20
> AFAIK this is not a valid Fixes tag.
> If it's not a fix, please simply omit the tag.
> If you want to say something about why then use free form text.
>=20
Good day, Simon
There is v3 version, please have a look

> > Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > ---
> > v1 -> v2 update ICE_PHY_TYPE_HIGH_MAX_INDEX
>=20
> ...
