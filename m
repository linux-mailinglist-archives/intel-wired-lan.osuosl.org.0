Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEzmGDgSDGoZVQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 09:33:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97890579246
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 09:33:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3940840B18;
	Tue, 19 May 2026 07:33:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hBmjoBqc2yNM; Tue, 19 May 2026 07:33:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9281E40B1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779175988;
	bh=IPSqZFnYagwXmkpDiQnlKt6oatWTE5D2S+GgwMRRdfQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NsXYdJneflWMy5aMkUKG8edEoHZH9xyP/yGlPk2IiGcWhJo18YEa7+VJCCPE2LD0O
	 FQgnawPfdqYUqgLFsu/gxV8zU9tR0LcV1U6DSwPdXnlqSIIpWWKCeA4IXep4hOvj7C
	 4kXE9toGtT3ZXYnoxyOHnJK7CuumJfbBRj5Y70dqdOV5tjRuaYzjuwtcr/JbR03FpU
	 vzPtovE3tVmfNrkwmsKxwJ4LDMP2eI2WN/ONVHWoR17v31KW5CaSAFbK7GAvCk0jT3
	 oWnqi7BvGnQMCHJViL2NecqjNK8VF5jGEckGyvN0rbgixT/n7O+6H1Y75FX5NDuBxp
	 Lo9yzOApy+ppQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9281E40B1A;
	Tue, 19 May 2026 07:33:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A0C9E265
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 07:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E0C240B17
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 07:33:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J6Hc3a8sfzxC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2026 07:33:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B233340B16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B233340B16
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B233340B16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 07:33:05 +0000 (UTC)
X-CSE-ConnectionGUID: rNR8IJbyQt2uVhHGxZzNUw==
X-CSE-MsgGUID: tSobGGV+QAKbLPBybsQUrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="80075659"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80075659"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 00:33:05 -0700
X-CSE-ConnectionGUID: 6pfFIa67QomZDKjlFlGkTw==
X-CSE-MsgGUID: tnODB6AXQM6lGBS0odwAOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="233304930"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 00:33:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 00:33:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 19 May 2026 00:33:04 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.63) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 00:33:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NgSb/6EwGWAGBGdp6YfTRVDIzif4/VlARVPlN/QYSCJLBY+dzrPbNd6np4cPOB1bAEp7w4efed2aDBdwJzLqMnhhC6lV54ezuBYSwISrs0nqfTEfMNaOGcg79NreMyX3p966BZ1RAzaw5TrojuRNY/I0XHOdSYjXZ1Jf9xq7xawzKqzyQoRzZTFkzjqZDjDybWl/aZ1ArVP1HJfedf1d+YdnseUN5+NOSLe+3BIuk/e3KvXllCw6efoptQQXHYQ0y3N5Lz6MjTNzcq1mBqogAgkUGkTc89tL8XuQGximRCskliUjm9gZkMMU5kQIxt+CqYapJpuMuEDTNdYBKy9Csw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IPSqZFnYagwXmkpDiQnlKt6oatWTE5D2S+GgwMRRdfQ=;
 b=eotY/AYCOSfkyM5dcEOMGyAa9SXRDNv2OFQSz/1KG5qU4WDFhXlYlBnnd6DL/Qce17iRktFmT7Wk4pWfVzWCw35V93f1QB0HZ6ayOttiW7D2kA6XyKxm4+BBC8BM4jj7dsNCQTBVqUGsodMw/SUyCQ8NxJ7t8aJ6M4yCcmq2R1Irzr0ME0dyNtwbbbXp+MJXVo7na819e4qqw7Vj7Ko2+VkOUJk9vKJQZ+5fJrEAdJmBuqprgYeoGH1LsWOe0DSO0Rc28nBIVfV+W+4kWEhGpSdzMjb5A4VxGTgtfSYesNlxw+fG0VHco/ubWaUl5fuxUmNFP+Ghw4303OH8nYCUmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by IA0PR11MB7840.namprd11.prod.outlook.com (2603:10b6:208:403::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Tue, 19 May
 2026 07:33:01 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.21.0048.013; Tue, 19 May 2026
 07:33:01 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/3] virtchnl, iavf, ice,
 i40e: add extended generic VF capability flags
Thread-Index: AQHc1yUHgDfZJbCO50eeG4qCHJw9KbX1xLWAgB9QXhA=
Date: Tue, 19 May 2026 07:33:00 +0000
Message-ID: <IA3PR11MB89856269B945E7827E4812F68F002@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260428143716.9653-1-marcin.szycik@linux.intel.com>
 <20260428143716.9653-4-marcin.szycik@linux.intel.com>
 <IA3PR11MB89860B13BF6848A4A96B4EDDE5342@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89860B13BF6848A4A96B4EDDE5342@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|IA0PR11MB7840:EE_
x-ms-office365-filtering-correlation-id: 095220d6-abaa-4a4a-d057-08deb578db27
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003|4143699003|11063799003;
x-microsoft-antispam-message-info: zDvC0QFs6VgNvCeashsDPMaXB2dAAwDT2IGOO+ozuHpU7XdJv4urpMGFvL2NG3oZ5E4OE/xPIsmG5Q1yB/EVVCC40spooFmfaDerDOezw1V0He3ds2toIA5Xw6jXEwdYc6EsLOAZm7QcT6PR/T1lsZMQ2d3vO/veAxUmKOOGgMLugqbtTfFHVR3wbLWYEIBVgexmYY3rkj68MHRAx48m79tcZrG0lzT7d3pXXcXr6wU4EdvvPud2x1QmIqgxYGpibsoacrCR78HugehocX/kooFQBvRK0NvWpWBrFzSWwIiGeIju86CFPnWXLgUMieQx6jkjLfr9oK1J/yk+5sjjNeYqWRVwj4B68tvTjltHnfjxScWqiCclxbvRu4yc6taCdgpeMrdaSGsHl9TyTCUbv5FgWGZqtzV+5bUVzpC6+GbHU+b6mISDWQlaKbSD0AeRsfG9gANoKH0ujDKAat+rsZMIUbOGem3Z5cT8glXljPS3C2Cs+n8FQYibbVH0GidQOLWWzpyAonpvZgyO2idh982ZVqXMs0mQTAQ0z5tQdtdF5OMp99wRQ3oSwERNv5datMV4+q5v1bVPCHp95ez8UcutqWUAW59G6RbTnlXTjEGGOnK61k0nc7HisA/tJMRO0/aQ+ZySVvMnl3egNRFd8DKUi/7sSI50CC9Jgzmy0kQINAXswrcpN34Tbybpy11XOqR3VeAGITWxSM3VL9GeWcs7475s/XsqLzFviF/ULoBoXDDtU5IxXg+Jpe2k6t6j
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003)(4143699003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Noo/clLajLkdtbdfCrqyQkooHwZ9nlcMLEuoqwGArVCUEkWSUxQyzXUwynmX?=
 =?us-ascii?Q?RwJXYvOdl/Hn2sdAMaUqx2YNZWZyWv1ghgMrTnUr/yZnrlq4Sl8R3Le9oTTu?=
 =?us-ascii?Q?hDze9c2hC53rbnXfCfW3A6iywyKycbb/Q4ZYXxE7DDvyt1oyuvk5hrJW7EsQ?=
 =?us-ascii?Q?jYFpt7QbUAglF2qx5nfCmlRkNpk2oXE3+6YI+zQpDO38C6IAaQTsnJaLmmj3?=
 =?us-ascii?Q?80Ovssea0JC2FeBl1d6V8/CRPk1ZmDJRWtRUwBnTXnQl1D6HT7adDTeb8lq6?=
 =?us-ascii?Q?TiG//6cVezBbuyjvonHqwnAxboOcPyA5uW8ijyMkWnzPZQKvGzgM7MQ9RjAr?=
 =?us-ascii?Q?9kfq0XXJHSaH1W2UDyU1Jaz+SrAoH0k6jdCsMGH7Mu535qLkV+oNlJ3X6/Qs?=
 =?us-ascii?Q?zxQ8ohDwYeIhd+5/BeYZZ+Z08aI5vuoF/Udn5nFELjEmxCDUueOACjM0DpcE?=
 =?us-ascii?Q?r4/UtgZzY5SOmMLV27QZ8Aj/cq6ln4edJOXh8aXZLe1zs8QcyUNXDBAqrEn/?=
 =?us-ascii?Q?G9cjxG0P4jqir8K1qg/QkZyDLnV3iYWcO9oqXIF62Iyf94VTM6Y44zN/VHTr?=
 =?us-ascii?Q?ALuCfuXx97BbzdWlFeKRt0DjWxm8WrdK/lVXPF4dn0ETSW9BBL3jRlJRI/Em?=
 =?us-ascii?Q?d81UZKeg8/HLBo1/6pyoGIUjOQ9RYwKr7JXEJX4GcZrTZJGMfGxTdGS2ZF6q?=
 =?us-ascii?Q?VWJfcCr4odLRdnk9dtTyrjQ46/wr+/C01Pnx7fHGhxx0BZBiefDMFuF6vIt7?=
 =?us-ascii?Q?XMLcSTF+pVbV+s3llcviTmBelRt8zDRURxkJqpgZ0u+iKOOs8JdpZbKBvrsY?=
 =?us-ascii?Q?5manmtoBKg51e/XfEFzWtsWsVChaw3dp5pIvDYsGRVYyzYFDgUiXH6KGwPkq?=
 =?us-ascii?Q?ixD/YDk2CBCNEf+fESq04M7Wr/sGcLqLiBxvH25Du9CcGOCBevFImxYd6ygM?=
 =?us-ascii?Q?hTboByGuI6UMgIe3YA6yHihHBSgNCU8o8z4YXEkFv3pDXdyWZkt0BkcCi6b6?=
 =?us-ascii?Q?IBPg+1cmwI7Xe9JcmXQ6bYjn0c/bBuPBt553sJdEh/Vocu5lDuTOj2H++v7x?=
 =?us-ascii?Q?3htIGk9krBUROyt22uKgWU5xHUxudF2xndMoXr2TUo8N2dTvoZBcI+lPu0S5?=
 =?us-ascii?Q?O2DLW/GbjpJemhC9rQQTb/lEfLOOGKmn+lwYRasyeflCJTIKsgHxn4q/Y45i?=
 =?us-ascii?Q?5Jvw8VCEitqHaoMGui+pOunj+BRYa2pHKOHHQvPYL2P4Yz67rJPmpDIAOkES?=
 =?us-ascii?Q?vOxXvKcGyGk4FGoAVl+cXyfA8P/SuVPclYVRcOVFiZqx03w58oOVxfGfqpwq?=
 =?us-ascii?Q?NuP1RWzwcdNDsL1VqNDqA1RpsI/XAg4Oi0RH6s1VkFxdofmhDsxjPE0iZzbT?=
 =?us-ascii?Q?BMr6+siebHjPvKdNtaucRcb94g+F1I/59bBeextVqxtYGXtlaPJWr8w645yV?=
 =?us-ascii?Q?24rwY3Gvj1/xBm0F3gurOBj1txqbvbRdL9oO5Rc1iFPyu1XvmlVzk/kexz1r?=
 =?us-ascii?Q?axbn9Gp9CdYCJRftyBGw4ZModJti83EU3KrbWbpj5dycTMB1F314VyFkX+Zp?=
 =?us-ascii?Q?I5PsWB0LuODY9mOf2po7rQq6QoiMkppElBoM1bDa6ATEdjZW7aelDp29E3WC?=
 =?us-ascii?Q?IW/fi2q/eY1MpkDzmb/aBZqcDLXxVZHvCGARCZ1ooEaVMH3Zdngb1V0n/UDs?=
 =?us-ascii?Q?rPGZ8ueDxJGJDVtjZD9clRBn6BrTK3g+3hXxxQ6WCOsLYqLxStDuIRjRzvjM?=
 =?us-ascii?Q?6vl9fiK2zA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BrqCU7+Jz7vykBIfkm7yK4x02ei8ocdpXFWbymzJ75ACIDxribFIqzekWO5OSvSOECW2/xkXlwkfUC4buzeY1SSYr3mSzx8rEiDUsfq7ycEiCjARtObSUYLsSFYZrhnnS117OaQZiKa/+jIVtmnv+WMZ1tg2j6HodendFrdGJX5hXalBrnoneum8TfKPabz2WuCcHYxhJEj9gXFfDug85ETto+Oo1NQJu88/9hYIA/zmqina+ptZ/fEZcBM3K2cB2z5TB1iEV+Ror9NJ6cijzrSbUBKzRZZGxPFvwqemta4AckVmYm4e9YYosd9MSVSI2dtGqHGiHXmW+89n4bL9iA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 095220d6-abaa-4a4a-d057-08deb578db27
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 07:33:01.0053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: feGnQfj8KlGEDyj8E7as7VJrS3E5USs7hhtG4wKIUCgxFZSUCRjkYrT393b3xtZvnQQQzGtiUgNfiRAnuXrA2W0IZSEMiTfrzY37XwU/YSs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7840
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779175986; x=1810711986;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TpE/eV+rpi1Pg9+vZpG7BhC/WTQTI/1aTc3GDb5ebJE=;
 b=QI9uAOy8mW93Rq9PGJuNVcASbBJeP/3nNpJQ9UC5vaj1Ey3o8Y7Csbwq
 e53qmaDM5HqP2nUvjxDu8B/1UrDwHcryHN23O3ISBtd4sTsIqLVs+INtr
 Xh+QCKcKwxZeCDcNOCqEMv42R7xVCrHX0ZCZExMZ579vvEO6Uf50waxNi
 6J6hPOzC6mIikUnuoA1kymWRIBrZ6Xglzo6tHa2pHI8QxvDXLX+4ZPMFY
 +8FI/yLnP0UwwOys7dtC/HNCnMNUGUYyk3lGUfhejaDgjtMk8uKQuZM2x
 FF3TOFFJSrslUIJwSb/IhVAkSIy7STgAPrcVlzyaP2RgIhOtelky9jDZj
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QI9uAOy8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] virtchnl, iavf, ice,
 i40e: add extended generic VF capability flags
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,m:jacob.e.keller@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,IA3PR11MB8985.namprd11.prod.outlook.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 97890579246
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Loktionov, Aleksandr
> Sent: Wednesday, April 29, 2026 11:21 AM
> To: Marcin Szycik <marcin.szycik@linux.intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Greenwalt, Paul <paul.greenwalt@intel.com>;
> Keller, Jacob E <jacob.e.keller@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] virtchnl, iavf, ice, =
i40e: add
> extended generic VF capability flags
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Marcin Szycik
> > Sent: Tuesday, April 28, 2026 4:37 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; Greenwalt, Paul
> > <paul.greenwalt@intel.com>; Keller, Jacob E
> > <jacob.e.keller@intel.com>; Marcin Szycik
> > <marcin.szycik@linux.intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next 3/3] virtchnl, iavf, ice,
> > i40e: add extended generic VF capability flags
> >
> > VF capability flags in struct virtchnl_vf_resource::vf_cap_flags have
> > all been used up, preventing new flags from being added. Note that
> > despite not all bits being defined here, they are used by out-of-tree
> > releases of Intel drivers, therefore cannot be taken.
> >
> > virtchnl message size and structure must remain unchanged to not break
> > reverse compatibility, therefore the existing virtchnl structure
> > cannot be extended with additional fields (e.g. flags2). vf_cap_flags
> > type cannot be changed to a larger one for the same reason.
> >
> > Bit 2 of vf_cap_flags was reserved for exactly this case. Its presence
> > in message initially sent from VF shall now signal that there are more
> > capability flags to be parsed. If the PF driver acknowledges that via
> > VIRTCHNL_OP_GET_VF_RESOURCES response, the VF will send a separate
> > message: VIRTCHNL_OP_GET_VF_CAPS2, containing more capability flags.
> > Note: this mechanism is similar for VIRTCHNL_OP_1588_PTP_GET_CAPS.
> >
> > The new message supports flexible size, so more flags can be added
> > without any architectural changes. Care was taken to ensure that no
> > out-of-bounds reads happen in case the bitmap is shorter in one of the
> > drivers.
> >
> > The new message includes the original 32 bits too, for consistency and
> > more straightforward parsing.
> >
> > Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf.h        |  19 ++-
> >  .../net/ethernet/intel/ice/virt/virtchnl.h    |   2 +
> >  include/linux/intel/virtchnl.h                |  55 ++++++-
> >  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  84 +++++++++++
> >  drivers/net/ethernet/intel/iavf/iavf_main.c   |  60 ++++++++
> >  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 138
> > +++++++++++++++++-
> >  .../net/ethernet/intel/ice/virt/allowlist.c   |   6 +
> >  .../net/ethernet/intel/ice/virt/virtchnl.c    |  86 +++++++++++
> >  8 files changed, 444 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> > b/drivers/net/ethernet/intel/iavf/iavf.h
> > index 64576cba3a01..5d812b0a52a3 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf.h
> > +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> > @@ -343,6 +343,7 @@ struct iavf_adapter {
> >  #define IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS		BIT_ULL(42)
> >  #define IAVF_FLAG_AQ_GET_PTP_CAPS			BIT_ULL(43)
> >  #define IAVF_FLAG_AQ_SEND_PTP_CMD			BIT_ULL(44)
>=20
> ...
>=20
> >  	case VIRTCHNL_OP_UNKNOWN:
> >  	default:
> >  		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
> > --
> > 2.49.0
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

